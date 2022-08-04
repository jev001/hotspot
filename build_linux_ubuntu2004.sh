#!/bin/bash

# 安装JDK-14作为BOOT-JDK
# wget https://download.java.net/java/GA/jdk14/076bab302c7b4508975440c56f6cc26a/36/GPL/openjdk-14_linux-x64_bin.tar.gz

# 设置编译JDK使用的BOOT_JDK, 目前编译的版本是jdk15所以推荐使用jdk14,最好是JDK14版本。遇见过JDK15编译的时候会出现在 -Werror
BOOT_JDK=/home/ubuntu/downloads/jdk-14

# 安装linux下的依赖
sudo apt-get install libx11-dev libxext-dev libxrender-dev libxrandr-dev libxtst-dev libxt-dev libcups2-dev libfontconfig1-dev libasound2-dev


# --disable-warnings-as-errors 当遇见了 -Werror的出现时修复使用
# ./configure --enable-debug --disable-warnings-as-errors --with-boot-jdk=/home/ubuntu/downloads/jdk-14
./configure --enable-debug --disable-warnings-as-errors --with-boot-jdk=$BOOT_JDK