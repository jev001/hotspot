#!/bin/bash
ARG=$*
echo "args ="$ARG
cmd="./configure --build=x86_64-unknown-linux-gnu --host=x86_64-unknown-linux-gnu "$ARG
echo $cmd
./$cmd
