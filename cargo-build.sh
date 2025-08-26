
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

#clean all target dirs
#for project in $(ls --color=never **/*/*/*/Cargo.toml);do echo $project;sleep 0;cargo clean --manifest-path $project;done
for project in $PROJECTS;do this_project=$(echo $project|sed 's/\/Cargo.toml//g');echo "this=$this_project"; ln -s $TARGET $this_project/;ls -F $this_project; done
#for project in $PROJECTS;do this_project=$(echo $project|sed 's/Cargo.toml//g');echo "this=$this_project"; mkdir -p $this_project/target;ls -F $this_project; done
#exit;
for project in $(ls --color=never **/*/*/*/Cargo.toml);do echo $project;sleep 0;cargo b --manifest-path $project;done
