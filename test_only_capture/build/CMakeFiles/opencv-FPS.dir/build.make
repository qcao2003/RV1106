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
CMAKE_SOURCE_DIR = /home/ubuntu2402/RV1106/test_only_capture

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu2402/RV1106/test_only_capture/build

# Include any dependencies generated for this target.
include CMakeFiles/opencv-FPS.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/opencv-FPS.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/opencv-FPS.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/opencv-FPS.dir/flags.make

CMakeFiles/opencv-FPS.dir/fb0.cpp.o: CMakeFiles/opencv-FPS.dir/flags.make
CMakeFiles/opencv-FPS.dir/fb0.cpp.o: /home/ubuntu2402/RV1106/test_only_capture/fb0.cpp
CMakeFiles/opencv-FPS.dir/fb0.cpp.o: CMakeFiles/opencv-FPS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ubuntu2402/RV1106/test_only_capture/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/opencv-FPS.dir/fb0.cpp.o"
	/home/ubuntu2402/RV1106/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/opencv-FPS.dir/fb0.cpp.o -MF CMakeFiles/opencv-FPS.dir/fb0.cpp.o.d -o CMakeFiles/opencv-FPS.dir/fb0.cpp.o -c /home/ubuntu2402/RV1106/test_only_capture/fb0.cpp

CMakeFiles/opencv-FPS.dir/fb0.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/opencv-FPS.dir/fb0.cpp.i"
	/home/ubuntu2402/RV1106/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu2402/RV1106/test_only_capture/fb0.cpp > CMakeFiles/opencv-FPS.dir/fb0.cpp.i

CMakeFiles/opencv-FPS.dir/fb0.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/opencv-FPS.dir/fb0.cpp.s"
	/home/ubuntu2402/RV1106/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu2402/RV1106/test_only_capture/fb0.cpp -o CMakeFiles/opencv-FPS.dir/fb0.cpp.s

# Object files for target opencv-FPS
opencv__FPS_OBJECTS = \
"CMakeFiles/opencv-FPS.dir/fb0.cpp.o"

# External object files for target opencv-FPS
opencv__FPS_EXTERNAL_OBJECTS =

opencv-FPS: CMakeFiles/opencv-FPS.dir/fb0.cpp.o
opencv-FPS: CMakeFiles/opencv-FPS.dir/build.make
opencv-FPS: /home/ubuntu2402/RV1106/opencv-mobile-4.10.0-luckfox-pico/lib/libopencv_core.a
opencv-FPS: /home/ubuntu2402/RV1106/opencv-mobile-4.10.0-luckfox-pico/lib/libopencv_features2d.a
opencv-FPS: /home/ubuntu2402/RV1106/opencv-mobile-4.10.0-luckfox-pico/lib/libopencv_highgui.a
opencv-FPS: /home/ubuntu2402/RV1106/opencv-mobile-4.10.0-luckfox-pico/lib/libopencv_imgproc.a
opencv-FPS: /home/ubuntu2402/RV1106/opencv-mobile-4.10.0-luckfox-pico/lib/libopencv_photo.a
opencv-FPS: /home/ubuntu2402/RV1106/opencv-mobile-4.10.0-luckfox-pico/lib/libopencv_video.a
opencv-FPS: /home/ubuntu2402/RV1106/opencv-mobile-4.10.0-luckfox-pico/lib/libopencv_imgproc.a
opencv-FPS: /home/ubuntu2402/RV1106/opencv-mobile-4.10.0-luckfox-pico/lib/libopencv_core.a
opencv-FPS: CMakeFiles/opencv-FPS.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ubuntu2402/RV1106/test_only_capture/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable opencv-FPS"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv-FPS.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/opencv-FPS.dir/build: opencv-FPS
.PHONY : CMakeFiles/opencv-FPS.dir/build

CMakeFiles/opencv-FPS.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/opencv-FPS.dir/cmake_clean.cmake
.PHONY : CMakeFiles/opencv-FPS.dir/clean

CMakeFiles/opencv-FPS.dir/depend:
	cd /home/ubuntu2402/RV1106/test_only_capture/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu2402/RV1106/test_only_capture /home/ubuntu2402/RV1106/test_only_capture /home/ubuntu2402/RV1106/test_only_capture/build /home/ubuntu2402/RV1106/test_only_capture/build /home/ubuntu2402/RV1106/test_only_capture/build/CMakeFiles/opencv-FPS.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/opencv-FPS.dir/depend
