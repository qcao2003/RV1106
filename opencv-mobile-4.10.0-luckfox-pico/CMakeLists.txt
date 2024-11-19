cmake_minimum_required(VERSION 3.5) #cmake版本
project(opencv-mobile-test)
set(CMAKE_CXX_STANDARD 11) #选择使用编程语言
#编译工具链设置
SET(CMAKE_C_COMPILER "/home/ubuntu2402/RV1106/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-gcc")
SET(CMAKE_CXX_COMPILER "/home/ubuntu2402/RV1106/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-g++")
set(CMAKE_CURRENT_SOURCE_DIR "/home/ubuntu2402/RV1106")
set(OpenCV_DIR "${CMAKE_CURRENT_SOURCE_DIR}/opencv-mobile-4.10.0-luckfox-pico/lib/cmake/opencv4")
#找相关的包,通过OpenCV_DIR变量寻找OpenCVConfig.cmake文件，默认在/usr/share/OpenCV中
find_package(OpenCV REQUIRED)
#设置包含目录和链接目录
include_directories(${OpenCV_INCLUDE_DIRS})
#输出应用程序的位置
# set (EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
# 打印
message(STATUS "OpenCV_DIR: ${OpenCV_DIR}")
message(STATUS "OpenCV_INCLUDE_DIRS: ${OpenCV_INCLUDE_DIRS}")
message(STATUS "EXECUTABLE_OUTPUT_PATH: ${EXECUTABLE_OUTPUT_PATH}")
include_directories (func)

aux_source_directory(func SRC_LIST)
#添加源
add_executable(opencv-mobile-test one.cpp ${SRC_LIST})
#链接目标文件与其他库
target_link_libraries(opencv-mobile-test ${OpenCV_LIBS})
