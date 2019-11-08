#!/bin/bash

# Simple functions that can't be aliases in bash
notes()
{  vi ~/notes/$1
}

#########################
# Slurm display commands
#########################
vo() {
    if [ "$1" == "" ]; then
        echo "tfo requires the processId as a parameter"
    else
        vim slurmOut/slurm_$1.out
    fi
}

to() {
    if [ "$1" == "" ]; then
        echo "tfo requires the processId as a parameter"
    else
        tail slurmOut/slurm_$1.out
    fi
}

ve() {
    if [ "$1" == "" ]; then
        echo "tfo requires the processId as a parameter"
    else
        vim slurmOut/slurm_$1.error
    fi
}

te() {
    if [ "$1" == "" ]; then
        echo "tfo requires the processId as a parameter"
    else
        tail slurmOut/slurm_$1.error
    fi
}

tfo() {
    if [ "$1" == "" ]; then
    echo "tfo requires the processId as a parameter"
    else
        tail -f slurmOut/slurm_$1.out
    fi
}

vl() {
    FILE=`\ls slurmOut/ | sort -r | head -1`
    vim slurmOut/$FILE
}

tl() {
    FILE=`\ls slurmOut/ | sort -r | head -1`
    tail slurmOut/$FILE
}

tfl() {
    FILE=`\ls slurmOut/ | sort -r | head -1`
    tail -f slurmOut/$FILE
}

