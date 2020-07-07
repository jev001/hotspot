cmake_minimum_required(VERSION 3.7)
project(java)

include_directories(
        src/share/vm
        src/os/linux/vm
        src/cpu/x86/vm
        src/os_cpu/linux_x86/vm
        src/share/vm/precompiled)

file(GLOB_RECURSE SOURCE_FILES "*.cpp" "*.hpp" "*.c" "*.h")
add_executable(java ${SOURCE_FILES})