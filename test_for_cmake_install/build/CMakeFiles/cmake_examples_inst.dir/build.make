# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu2402/RV1106/test_for_cmake_install

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu2402/RV1106/test_for_cmake_install/build

# Include any dependencies generated for this target.
include CMakeFiles/cmake_examples_inst.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/cmake_examples_inst.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cmake_examples_inst.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cmake_examples_inst.dir/flags.make

CMakeFiles/cmake_examples_inst.dir/test_func/func.cpp.o: CMakeFiles/cmake_examples_inst.dir/flags.make
CMakeFiles/cmake_examples_inst.dir/test_func/func.cpp.o: /home/ubuntu2402/RV1106/test_for_cmake_install/test_func/func.cpp
CMakeFiles/cmake_examples_inst.dir/test_func/func.cpp.o: CMakeFiles/cmake_examples_inst.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ubuntu2402/RV1106/test_for_cmake_install/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cmake_examples_inst.dir/test_func/func.cpp.o"
	/home/ubuntu2402/RV1106/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cmake_examples_inst.dir/test_func/func.cpp.o -MF CMakeFiles/cmake_examples_inst.dir/test_func/func.cpp.o.d -o CMakeFiles/cmake_examples_inst.dir/test_func/func.cpp.o -c /home/ubuntu2402/RV1106/test_for_cmake_install/test_func/func.cpp

CMakeFiles/cmake_examples_inst.dir/test_func/func.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/cmake_examples_inst.dir/test_func/func.cpp.i"
	/home/ubuntu2402/RV1106/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu2402/RV1106/test_for_cmake_install/test_func/func.cpp > CMakeFiles/cmake_examples_inst.dir/test_func/func.cpp.i

CMakeFiles/cmake_examples_inst.dir/test_func/func.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/cmake_examples_inst.dir/test_func/func.cpp.s"
	/home/ubuntu2402/RV1106/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu2402/RV1106/test_for_cmake_install/test_func/func.cpp -o CMakeFiles/cmake_examples_inst.dir/test_func/func.cpp.s

# Object files for target cmake_examples_inst
cmake_examples_inst_OBJECTS = \
"CMakeFiles/cmake_examples_inst.dir/test_func/func.cpp.o"

# External object files for target cmake_examples_inst
cmake_examples_inst_EXTERNAL_OBJECTS =

libcmake_examples_inst.so: CMakeFiles/cmake_examples_inst.dir/test_func/func.cpp.o
libcmake_examples_inst.so: CMakeFiles/cmake_examples_inst.dir/build.make
libcmake_examples_inst.so: CMakeFiles/cmake_examples_inst.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ubuntu2402/RV1106/test_for_cmake_install/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libcmake_examples_inst.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cmake_examples_inst.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cmake_examples_inst.dir/build: libcmake_examples_inst.so
.PHONY : CMakeFiles/cmake_examples_inst.dir/build

CMakeFiles/cmake_examples_inst.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cmake_examples_inst.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cmake_examples_inst.dir/clean

CMakeFiles/cmake_examples_inst.dir/depend:
	cd /home/ubuntu2402/RV1106/test_for_cmake_install/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu2402/RV1106/test_for_cmake_install /home/ubuntu2402/RV1106/test_for_cmake_install /home/ubuntu2402/RV1106/test_for_cmake_install/build /home/ubuntu2402/RV1106/test_for_cmake_install/build /home/ubuntu2402/RV1106/test_for_cmake_install/build/CMakeFiles/cmake_examples_inst.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/cmake_examples_inst.dir/depend

