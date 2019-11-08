#!/bin/bash

alias cp='cp -i'
alias la='"ls" -ACFx --color=auto'
alias lla='"ls" -aFl --color=auto'
alias ll='"ls" -Fl --color=auto'
alias ls='"ls" -CFx --color=auto'
alias lt='ls -tFl '
alias lat='lla -tFl '
alias lath='lla -dt `"ls" -at | head`'
                                                                                
#####################
# General aliases
#####################
#alias .='echo $PWD'
alias ant='$ANT_HOME/bin/ant'
alias br='vim ~/.bashrc; source ~/.bashrc'
alias ba='vim ~/.bash_aliases; source ~/.bash_aliases'
alias bf='vim ~/.bash_functions; source ~/.bash_functions'
alias bp='vim ~/.bash_profile; source ~/.bash_profile'
alias colors='eval $(dircolors ~mbopf/bin/promptScripts/ls_colors)'
alias cp='cp -ip'
alias cstat='vim /qdrive/NLM/status/currentStatus.txt'
alias df='df -h'
alias dh='du -h'
alias ds='du -s * | sort -rn'
alias enl2='enscript -r2G -fCourier7 --color -Ejava'
alias enl2h='enscript -r2G -fCourier7 --color -Ehtml'
alias enl2js='enscript -r2G -fCourier7 --color -Ejavascript'
alias enl2p='enscript -r2G -fCourier7 --color -Epython'
alias enph='enscript -G -fCourier9 --color=ifh -Ehtml -T 2'
alias enph='enscript -G -fCourier9 --color -Ehtml'
alias enpj='enscript -G -fCourier9 --color -Ejava'
alias enpjs='enscript -G -fCourier9 --color -Ejavascript'
alias enpp='enscript -G -fCourier9 --color -Epython'
alias enps='enscript -G -fCourier9 --color -Esql'
alias enl2s='enscript -r2G -fCourier7 --color -Esql'
alias fdate="find . -type f -printf '%T@ %Tb %Td %TY %p\n' | sort -rn | cut -f2- -d' ' | less"
alias fdl="find . -type f -printf '%T@ %Tb %Td %TY %p\n' | sort -rn | cut -f2- -d' ' | less"
alias fdh="find . -type f -printf '%T@ %Tb %Td %TY %p\n' | sort -rn | cut -f2- -d' ' | head"
alias finddir="find . -type d"
alias grep='grep --color=auto'
alias h='history'
alias h2='history 20'
alias h4='history 40'
alias less='less -R'
alias mv='mv -i'
alias nslookup6='nslookup -query=AAAA'
alias sbio='ssh -X biowulf.nih.gov'
alias shel='ssh -X helix.nih.gov'
alias sc='ssh -X ceb'
alias scs='ssh -X ceb-stage'
alias sl='ssh -X ceb-long32-lx'
alias ssl='ssh -X ceb-slurm'
alias svm='ssh -X ceb-bopf-vm'
alias sba='source ~/.bash_aliases'
alias sbp='source ~/.bash_profile'
alias sbr='source ~/.bashrc'
alias xmodcaps="xmodmap -e 'keycode 66 = NoSymbol'"

#####################
# WebMIRS/NLM aliases
#####################
alias wm='cd ~/projects/webmirs'
alias wms='cd ~/projects/webmirs/src'
alias wmw='cd ~/projects/wmWebFiles'
                                                                                
#####################
# IRU aliases
#####################
alias ir='cd ~/projects/IRU'
alias irs='cd ~/projects/IRU/src/gov/nih/nlm/iru'

#####################
# Data aliases
#####################
alias dad='cd ~/data/dumps'
alias dnr='cd ~/data/NCI/rawIMS'
alias dnv='cd ~/data/NCI/versions'

################################
# Maternal Dataset aliases
################################
alias mfd='cd /qdrive/projects/MFD'

################################
# Pediatric TB project aliases
################################
alias ptb='cd ~/projects/PedTB'
alias ptbc='cd ~/projects/PedTB/data/forms/completed'
alias ptbd='cd ~/projects/PedTB/data/'
alias ptbs='cd ~/projects/PedTB/src/'
alias ptbsf='cd /amit-project/ped_tb/savedForms'
alias ptbt='cd ~/projects/PedTB/data/forms/templates'
alias ptbw='cd ~/projects/PedTB/web'

######################
# Repository Aliases #
######################
alias ia='cd /nci/iru/alts'
alias iah='cd /nci/iru/alts/histology'
alias iac='cd /nci/iru/alts/cervigram'
alias ig='cd /nci/iru/guanacaste'
alias igc='cd /nci/iru/guanacaste/cervigram'
alias igd='cd /nci/iru/guanacaste/denvu'
alias igh='cd /nci/iru/guanacaste/histology'
alias ii='cd /nci/iru/italianLung'
alias iih='cd /nci/iru/italianLung/histology'
alias ioh='cd /nci/iru/oklahoma/histology'
alias ioht='cd /nci/test/oklahoma/histology'

alias pac='cd /nci/productionscan/alts/image'
alias pgc='cd /nci/productionscan/guanacaste/image'

################################
# DL directory aliases #
################################
alias smb='cd /slurm_storage/mbopf/projects'
alias atg='cd /slurm_storage/mbopf/projects/AttGAN'
alias seg='cd /slurm_storage/mbopf/projects/SegAN'
alias bseg='cd /slurm_storage/mbopf/projects/brainSegAN'
alias mseg='cd /slurm_storage/mbopf/projects/mikeSegan'
alias sega='cd /slurm_storage/public/AMIT/projects/SegAN'
alias cgan='cd /slurm_storage/public/AMIT/projects/compare_gan'
alias elnk='cd /slurm_storage/public/AMIT/projects/Keras-GAN'
alias elnp='cd /slurm_storage/public/AMIT/projects/PyTorch-GAN'
alias cifar='cd /slurm_storage/mbopf/projects/models/tutorials/image/cifar10'

######################
# Python
######################
#alias condact='conda activate '
#alias conde='conda deactivate'
#alias condenv='conda info --envs'

######################
# Git
######################
alias gits="git status -s ."
alias gitsa="git status -s"
alias gitsl="git status --long"

