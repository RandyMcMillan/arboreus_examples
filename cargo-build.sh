#!/usr/bin/env bash

echo "pwd=`pwd`"
TARGET=`pwd`/target
echo TARGET=$TARGET
mkdir -p $TARGET;
PROJECTS=$(ls --color=never **/*/*/*/Cargo.toml);
echo $PROJECTS;#exit
if [ "$1" == "--clean" ]; then
    for project in $(ls --color=never **/*/*/*/Cargo.toml);do \
        echo $project;\
        sleep 0;\
        cargo clean --manifest-path $project;\
    done
fi
if [ "$1" == "--sleep" ]; then
if [ "$2" != "" ]; then
    SLEEP=$2
else
    SLEEP=0
fi
fi
for project in $PROJECTS;do this_project=$(echo $project|sed 's/\/Cargo.toml//g');echo "this=$this_project"; sleep $SLEEP;ln -shf $TARGET $this_project;ls -F $this_project; done
#for project in $PROJECTS;do this_project=$(echo $project|sed 's/Cargo.toml//g');echo "this=$this_project"; mkdir -p $this_project/target;ls -F $this_project; done
#exit;
for project in $PROJECTS;do this_project=$(echo $project|sed 's/\/Cargo.toml//g');echo "this=$this_project"; sleep $SLEEP;pushd $this_project && ./Build_iOS.sh; popd || true; done
for project in $(ls --color=never **/*/*/*/Cargo.toml);do echo $project;sleep $SLEEP;cargo b --manifest-path $project;done
