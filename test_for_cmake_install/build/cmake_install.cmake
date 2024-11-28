# Install script for directory: /home/ubuntu2402/RV1106/test_for_cmake_install

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/home/ubuntu2402/RV1106/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/ubuntu2402/RV1106/test_for_cmake_install/Install/bin/cmake_examples_inst_bin" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/ubuntu2402/RV1106/test_for_cmake_install/Install/bin/cmake_examples_inst_bin")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/ubuntu2402/RV1106/test_for_cmake_install/Install/bin/cmake_examples_inst_bin"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ubuntu2402/RV1106/test_for_cmake_install/Install/bin/cmake_examples_inst_bin")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/ubuntu2402/RV1106/test_for_cmake_install/Install/bin" TYPE EXECUTABLE FILES "/home/ubuntu2402/RV1106/test_for_cmake_install/build/cmake_examples_inst_bin")
  if(EXISTS "$ENV{DESTDIR}/home/ubuntu2402/RV1106/test_for_cmake_install/Install/bin/cmake_examples_inst_bin" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/ubuntu2402/RV1106/test_for_cmake_install/Install/bin/cmake_examples_inst_bin")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/ubuntu2402/RV1106/test_for_cmake_install/Install/bin/cmake_examples_inst_bin"
         OLD_RPATH "/home/ubuntu2402/RV1106/test_for_cmake_install/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/home/ubuntu2402/RV1106/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-strip" "$ENV{DESTDIR}/home/ubuntu2402/RV1106/test_for_cmake_install/Install/bin/cmake_examples_inst_bin")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/ubuntu2402/RV1106/test_for_cmake_install/build/CMakeFiles/cmake_examples_inst_bin.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/ubuntu2402/RV1106/test_for_cmake_install/Install/lib/libcmake_examples_inst.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/ubuntu2402/RV1106/test_for_cmake_install/Install/lib/libcmake_examples_inst.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/ubuntu2402/RV1106/test_for_cmake_install/Install/lib/libcmake_examples_inst.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ubuntu2402/RV1106/test_for_cmake_install/Install/lib/libcmake_examples_inst.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/ubuntu2402/RV1106/test_for_cmake_install/Install/lib" TYPE SHARED_LIBRARY FILES "/home/ubuntu2402/RV1106/test_for_cmake_install/build/libcmake_examples_inst.so")
  if(EXISTS "$ENV{DESTDIR}/home/ubuntu2402/RV1106/test_for_cmake_install/Install/lib/libcmake_examples_inst.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/ubuntu2402/RV1106/test_for_cmake_install/Install/lib/libcmake_examples_inst.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/home/ubuntu2402/RV1106/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-strip" "$ENV{DESTDIR}/home/ubuntu2402/RV1106/test_for_cmake_install/Install/lib/libcmake_examples_inst.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ubuntu2402/RV1106/test_for_cmake_install/Install/etc/cmake-examples.conf")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/ubuntu2402/RV1106/test_for_cmake_install/Install/etc" TYPE FILE FILES "/home/ubuntu2402/RV1106/test_for_cmake_install/cmake-examples.conf")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/ubuntu2402/RV1106/test_for_cmake_install/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
