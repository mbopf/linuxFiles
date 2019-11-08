#!/bin/bash
# Set environment and startup programs, for login setup
# Functions and aliases go in /etc/bashrc

# 08 June 2005 - moved most of the setup logic to .bashrc since some shells
# don't seem to source .bash_profile.

if [ -f ~/.bashrc ]
then
    source ~/.bashrc
fi
