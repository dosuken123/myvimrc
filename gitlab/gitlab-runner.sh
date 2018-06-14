#!/bin/bash

#source ~/.bash_aliases
WORKSPACE="/home/shinya/workspace"
CE_REPO="$WORKSPACE/gdk-ce"
EE_REPO="$WORKSPACE/gdk-ee"

set -e # Fail -> Exit

echo "Which do you want to set up? 1) CE 2) EE 3) GEO"
read target

case $target in

    1)
        cd $CE_REPO
	edition=ce
        ;;
    2)
        cd $EE_REPO
	edition=ee
        ;;
    3)
        gogeo
	edition=ee-geo
        ;;
    *)
        echo "$target is invalid"
        exit 1
        ;;
esac

echo "Updating GDK..."
git fetch origin
git checkout master
git pull origin master

echo "Updating Source..."
cd gitlab
git fetch origin
git checkout master
git pull origin master

echo "gdk reconfigureing..."
cd ../
gdk reconfigure

echo "gdk set_ip... edition is $edition"
git checkout feature/sm/add-utility-set-ip
git pull origin feature/sm/add-utility-set-ip
git merge master
gdk set_ip $edition

echo "gdk updating and running..."
git checkout master
gdk run db &
(sleep 5 && gdk update && gdk run app) &
wait
