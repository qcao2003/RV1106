cmake_minimum_required (VERSION 3.5)

project (demo)

set(CMAKE_CXX_STANDARD 11) #选择使用编程语言
#编译工具链设置
SET(CMAKE_C_COMPILER "/home/ubuntu2402/RV1106/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-gcc")
SET(CMAKE_CXX_COMPILER "/home/ubuntu2402/RV1106/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-g++")

include_directories (test_func)

aux_source_directory(test_func SRC_LIST)

add_executable(main main.c ${SRC_LIST})
