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
CMAKE_SOURCE_DIR = /home/ubuntu2402/RV1106/test_for_cmake_uselib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu2402/RV1106/test_for_cmake_uselib/build

# Include any dependencies generated for this target.
include CMakeFiles/uselib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/uselib.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/uselib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/uselib.dir/flags.make

CMakeFiles/uselib.dir/main.c.o: CMakeFiles/uselib.dir/flags.make
CMakeFiles/uselib.dir/main.c.o: /home/ubuntu2402/RV1106/test_for_cmake_uselib/main.c
CMakeFiles/uselib.dir/main.c.o: CMakeFiles/uselib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ubuntu2402/RV1106/test_for_cmake_uselib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/uselib.dir/main.c.o"
	/home/ubuntu2402/RV1106/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/uselib.dir/main.c.o -MF CMakeFiles/uselib.dir/main.c.o.d -o CMakeFiles/uselib.dir/main.c.o -c /home/ubuntu2402/RV1106/test_for_cmake_uselib/main.c

CMakeFiles/uselib.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/uselib.dir/main.c.i"
	/home/ubuntu2402/RV1106/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu2402/RV1106/test_for_cmake_uselib/main.c > CMakeFiles/uselib.dir/main.c.i

CMakeFiles/uselib.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/uselib.dir/main.c.s"
	/home/ubuntu2402/RV1106/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu2402/RV1106/test_for_cmake_uselib/main.c -o CMakeFiles/uselib.dir/main.c.s

# Object files for target uselib
uselib_OBJECTS = \
"CMakeFiles/uselib.dir/main.c.o"

# External object files for target uselib
uselib_EXTERNAL_OBJECTS =

/home/ubuntu2402/RV1106/test_for_cmake_uselib/bin/uselib: CMakeFiles/uselib.dir/main.c.o
/home/ubuntu2402/RV1106/test_for_cmake_uselib/bin/uselib: CMakeFiles/uselib.dir/build.make
/home/ubuntu2402/RV1106/test_for_cmake_uselib/bin/uselib: /home/ubuntu2402/RV1106/test_for_cmake_uselib/lib/libfunc.so
/home/ubuntu2402/RV1106/test_for_cmake_uselib/bin/uselib: CMakeFiles/uselib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ubuntu2402/RV1106/test_for_cmake_uselib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable /home/ubuntu2402/RV1106/test_for_cmake_uselib/bin/uselib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/uselib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/uselib.dir/build: /home/ubuntu2402/RV1106/test_for_cmake_uselib/bin/uselib
.PHONY : CMakeFiles/uselib.dir/build

CMakeFiles/uselib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/uselib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/uselib.dir/clean

CMakeFiles/uselib.dir/depend:
	cd /home/ubuntu2402/RV1106/test_for_cmake_uselib/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu2402/RV1106/test_for_cmake_uselib /home/ubuntu2402/RV1106/test_for_cmake_uselib /home/ubuntu2402/RV1106/test_for_cmake_uselib/build /home/ubuntu2402/RV1106/test_for_cmake_uselib/build /home/ubuntu2402/RV1106/test_for_cmake_uselib/build/CMakeFiles/uselib.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/uselib.dir/depend
