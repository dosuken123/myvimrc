#!/bin/sh

source ~/.bash_profile
set -e # Fail -> Exit

echo "Which do you want to set up? 1) CE 2) EE 3) GEO"
read target

case $target in

    1)
        goce
	edition=ce
        ;;
    2)
        goee
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
g feo
g co master
g plo master

echo "Updating Source..."
cd gitlab
g feo
g co master
g plo master

echo "gdk reconfigureing..."
cd ../
gdk reconfigure

echo "gdk set_ip... edition is $edition"
g co feature/sm/add-utility-set-ip
g plo feature/sm/add-utility-set-ip
g merge master
gdk set_ip $edition

echo "gdk updating and running..."
g co master
gdk run db &
(sleep 5 && gdk update && gdk run app) &
wait
