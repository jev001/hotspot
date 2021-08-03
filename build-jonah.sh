#!/bin/bash

#export LANG="en_US.UTF-8"
export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF8

build_dir=`readlink -f ~/local/jdk/build`
echo "链接本地目录. 加速编译 http://openjdk.java.net/groups/build/doc/building.html#Disk%20Speed"
echo "ln -s $build_dir `readlink -f $(dirname $0)`/build"
ln -s $build_dir `readlink -f $(dirname $0)`/build
cmd="./build-with-wsl.sh --enable-debug --with-boot-jdk="`readlink -f ~/scripts/jdk-14.0.2/`
echo "cmd="$cmd
./$cmd
