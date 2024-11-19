cmake_minimum_required (VERSION 3.5)

project (demo)

set(CMAKE_CXX_STANDARD 11) #选择使用编程语言
#编译工具链设置
SET(CMAKE_C_COMPILER "/home/ubuntu2402/RV1106/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-gcc")
SET(CMAKE_CXX_COMPILER "/home/ubuntu2402/RV1106/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-g++")

set (SRC_LIST ${PROJECT_SOURCE_DIR}/test_func/func.c)

# 生成动态库或静态库
add_library (testFunc_shared SHARED ${SRC_LIST})
add_library (testFunc_static STATIC ${SRC_LIST})
# 设置最终生成的库的名称，还有其它功能，如设置库的版本号等
set_target_properties (testFunc_shared PROPERTIES OUTPUT_NAME "func")
set_target_properties (testFunc_static PROPERTIES OUTPUT_NAME "func")
# 库文件的默认输出路径，这里设置为工程目录下的lib目录
set (LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

