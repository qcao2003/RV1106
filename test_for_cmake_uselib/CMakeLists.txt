cmake_minimum_required (VERSION 3.5)

project (demo)

set(CMAKE_CXX_STANDARD 11) #选择使用编程语言
#编译工具链设置
SET(CMAKE_C_COMPILER "/home/ubuntu2402/RV1106/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-gcc")
SET(CMAKE_CXX_COMPILER "/home/ubuntu2402/RV1106/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-g++")
#输出应用程序的位置
set (EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
# find func.h
include_directories (${PROJECT_SOURCE_DIR}/test_func)
# 找到库的位置
find_library(TESTFUNC_LIB func HINTS ${PROJECT_SOURCE_DIR}/lib)
# 添加源代码
add_executable(uselib main.c)
# 程序与库的链接
target_link_libraries (uselib ${TESTFUNC_LIB})


