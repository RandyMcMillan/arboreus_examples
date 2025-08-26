mkdir -p ./target;
PROJECTS=$(ls --color=never **/*/*/*/Cargo.toml);
echo $PROJECTS;#exit
for project in $PROJECTS;do this_project=$(echo $project|sed 's/Cargo.toml//g');echo "this=$this_project"; mkdir -p $this_project/target;ls -F $this_project; cargo clean --manifest-path $this_project/Cargo.toml; done
exit;
for project in $(ls --color=never **/*/*/*/Cargo.toml);do echo $project;sleep 1;cargo clean --manifest-path $project;done
for target in $(ls --color=never -d **/*/*/*/);do echo $target;ln -shf ./target $target; sleep 1;done
for project in $(ls --color=never **/*/*/*/Cargo.toml);do echo $project;sleep 1;cargo b --manifest-path $project;done
