#!/bin/bash
ROOT=$(pwd)
for DIR in $(ls --hide '*.sh' --hide '*~'); do
    cd $ROOT/$DIR
    pwd
    git fetch -ap
    for BRANCH in $(git branch -av | grep disparue | awk '{print $1}') ; do
	git branch -D $BRANCH
    done
done
