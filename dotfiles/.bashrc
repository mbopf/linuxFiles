#!/bin/bash
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

eval `/usr/bin/dircolors --sh $HOME/.dircolors`

# Function to append a new directory to the PATH
addpath()
{
  if [ -d $1 ] 
  then
    MATCH=$(echo "$PATH" | grep "$1")
    if [ "$MATCH" = "" ]
    then
      PATH=$PATH:$1
    fi
  else
    echo "directory $1 does not exist"
  fi
}

# Function to prepend a new directory to the PATH; useful when a library needs
# to supercede commands available in the base os.
prepath()
{
  if [ -d $1 ] 
  then
    MATCH=$(echo "$PATH" | grep "$1")
    if [ "$MATCH" = "" ]
    then
      PATH=$1:$PATH
    fi
  else
    echo "directory $1 does not exist"
  fi
}

OSNAME=$(uname -s)
if [ $? != 0 ]
then
  if [ -e /bin/uname ]
  then
    OSNAME=$(/bin/uname -s)
  elif [ -e /usr/bin/uname ]
  then
    OSNAME=$(/usr/bin/uname -s)
  fi
fi
export OSNAME

HOSTNAME=$(hostname)
export HOSTNAME

# Only echo variables and process promptScripts if shell is interactive
case $- in
*i*) # interactive shell
  echo $HOSTNAME
  source $HOME/bin/promptScripts/orrFlex
  orrFlex
  ;;
*) # non-interactive shell
;;
esac

export ANT_OPTS="-Xmx512M"
export ANT_HOME="$HOME/bin/ant"
prepath ${ANT_HOME}/bin 
#    prepath /opt/anaconda3/bin
#    source /opt/anaconda3/etc/profile.d/conda.sh
#    prepath /usr/local/cuda/bin
#    export CUDA_HOME=/usr/local/cuda
#    export LD_LIBRARY_PATH=/usr/local/cuda/lib64:${LD_LIBRARY_PATH}

addpath $HOME/bin
export LC_TIME=en_DK
export EDITOR=vim

export PATH
# Source aliases
if [ -f $HOME/.bash_aliases ]; then
  source $HOME/.bash_aliases
fi

# Source functions
if [ -f $HOME/.bash_functions ]; then
  source $HOME/.bash_functions
fi

# Change umask
umask 022


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

