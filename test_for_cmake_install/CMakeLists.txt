cmake_minimum_required (VERSION 3.5)

project (demo)

set(CMAKE_CXX_STANDARD 11) #选择使用编程语言
#编译工具链设置
SET(CMAKE_C_COMPILER "/home/ubuntu2402/RV1106/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-gcc")
SET(CMAKE_CXX_COMPILER "/home/ubuntu2402/RV1106/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-g++")

# create a library
add_library(cmake_examples_inst SHARED test_func/func.cpp)

target_include_directories(cmake_examples_inst PUBLIC ${PROJECT_SOURCE_DIR}/test_func)

# create an executable
add_executable(cmake_examples_inst_bin main.cpp)

target_link_libraries(cmake_examples_inst_bin PRIVATE cmake_examples_inst)

# find library location in runexe
set_target_properties(cmake_examples_inst_bin PROPERTIES INSTALL_RPATH "$ORIGIN/../lib")

# Install
install(TARGETS cmake_examples_inst_bin DESTINATION ${PROJECT_SOURCE_DIR}/cmake_install_test/bin)
install (TARGETS cmake_examples_inst LIBRARY DESTINATION ${PROJECT_SOURCE_DIR}/cmake_install_test/lib)
install (FILES cmake-examples.conf DESTINATION ${PROJECT_SOURCE_DIR}/cmake_install_test/etc)