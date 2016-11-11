PATH=$PATH:~/android-sdk-macosx/tools/ 
PATH=$PATH:~/android-sdk-macosx/platform-tools/ 
ANDROIDNDK_HOME=~/android-ndk-r9d/ 
PATH=$PATH:${ANDROIDNDK_HOME} 
export PATH 

alias ll='ls -lG'
alias pc='pbcopy'
alias tm='/Users/shinyamaeda/Documents/programming/dotfiles/bin/tm'
alias gosh='cd /Users/shinyamaeda/Documents/music/ShinyaMaeda'
alias gopr='cd /Users/shinyamaeda/Documents/programming'
alias goto='cd /Volumes/Macintosh\ HD/Users/maedashinya/Documents/torrent'
export PS1='\n > '

## Subversionでコミット時に読み出すエディタの指定
export SVN_EDITOR='vi'

##
# Your previous /Users/mio-macmini/.bash_profile file was backed up as /Users/mio-macmini/.bash_profile.macports-saved_2012-08-16_at_11:26:26
##

# MacPorts Installer addition on 2012-08-16_at_11:26:26: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH="$HOME/.rvm/gems/ruby-2.3.1/bin:$PATH" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

eval "$(pyenv init -)"
eval "$(plenv init -)"

# For Postgresql https://devcenter.heroku.com/articles/getting-started-with-ruby#declare-app-dependencies
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin"

#For Rails+Mysql
#MYSQL=/usr/local/mysql/bin
#export PATH=$PATH:$MYSQL
#export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

# Oct. 5th 2016 UPGRADE MEMBER SERVICE TO USE RABBITMQ INSTEAD OF KAFKA
#export M2_HOME="/Users/mio-macmini/Desktop/task/30055399_challenge/apache-maven-3.3.9"
#export M2=$M2_HOME/bin
#export PATH=$M2:$PATH
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home"
