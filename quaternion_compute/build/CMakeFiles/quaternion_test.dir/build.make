# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ros/haoyu/quaternion_compute

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ros/haoyu/quaternion_compute/build

# Include any dependencies generated for this target.
include CMakeFiles/quaternion_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/quaternion_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/quaternion_test.dir/flags.make

CMakeFiles/quaternion_test.dir/src/quaternion.o: CMakeFiles/quaternion_test.dir/flags.make
CMakeFiles/quaternion_test.dir/src/quaternion.o: ../src/quaternion.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ros/haoyu/quaternion_compute/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/quaternion_test.dir/src/quaternion.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/quaternion_test.dir/src/quaternion.o -c /home/ros/haoyu/quaternion_compute/src/quaternion.cpp

CMakeFiles/quaternion_test.dir/src/quaternion.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/quaternion_test.dir/src/quaternion.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ros/haoyu/quaternion_compute/src/quaternion.cpp > CMakeFiles/quaternion_test.dir/src/quaternion.i

CMakeFiles/quaternion_test.dir/src/quaternion.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/quaternion_test.dir/src/quaternion.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ros/haoyu/quaternion_compute/src/quaternion.cpp -o CMakeFiles/quaternion_test.dir/src/quaternion.s

CMakeFiles/quaternion_test.dir/src/quaternion.o.requires:

.PHONY : CMakeFiles/quaternion_test.dir/src/quaternion.o.requires

CMakeFiles/quaternion_test.dir/src/quaternion.o.provides: CMakeFiles/quaternion_test.dir/src/quaternion.o.requires
	$(MAKE) -f CMakeFiles/quaternion_test.dir/build.make CMakeFiles/quaternion_test.dir/src/quaternion.o.provides.build
.PHONY : CMakeFiles/quaternion_test.dir/src/quaternion.o.provides

CMakeFiles/quaternion_test.dir/src/quaternion.o.provides.build: CMakeFiles/quaternion_test.dir/src/quaternion.o


CMakeFiles/quaternion_test.dir/src/demo.o: CMakeFiles/quaternion_test.dir/flags.make
CMakeFiles/quaternion_test.dir/src/demo.o: ../src/demo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ros/haoyu/quaternion_compute/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/quaternion_test.dir/src/demo.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/quaternion_test.dir/src/demo.o -c /home/ros/haoyu/quaternion_compute/src/demo.cpp

CMakeFiles/quaternion_test.dir/src/demo.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/quaternion_test.dir/src/demo.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ros/haoyu/quaternion_compute/src/demo.cpp > CMakeFiles/quaternion_test.dir/src/demo.i

CMakeFiles/quaternion_test.dir/src/demo.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/quaternion_test.dir/src/demo.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ros/haoyu/quaternion_compute/src/demo.cpp -o CMakeFiles/quaternion_test.dir/src/demo.s

CMakeFiles/quaternion_test.dir/src/demo.o.requires:

.PHONY : CMakeFiles/quaternion_test.dir/src/demo.o.requires

CMakeFiles/quaternion_test.dir/src/demo.o.provides: CMakeFiles/quaternion_test.dir/src/demo.o.requires
	$(MAKE) -f CMakeFiles/quaternion_test.dir/build.make CMakeFiles/quaternion_test.dir/src/demo.o.provides.build
.PHONY : CMakeFiles/quaternion_test.dir/src/demo.o.provides

CMakeFiles/quaternion_test.dir/src/demo.o.provides.build: CMakeFiles/quaternion_test.dir/src/demo.o


# Object files for target quaternion_test
quaternion_test_OBJECTS = \
"CMakeFiles/quaternion_test.dir/src/quaternion.o" \
"CMakeFiles/quaternion_test.dir/src/demo.o"

# External object files for target quaternion_test
quaternion_test_EXTERNAL_OBJECTS =

quaternion_test: CMakeFiles/quaternion_test.dir/src/quaternion.o
quaternion_test: CMakeFiles/quaternion_test.dir/src/demo.o
quaternion_test: CMakeFiles/quaternion_test.dir/build.make
quaternion_test: CMakeFiles/quaternion_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ros/haoyu/quaternion_compute/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable quaternion_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/quaternion_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/quaternion_test.dir/build: quaternion_test

.PHONY : CMakeFiles/quaternion_test.dir/build

CMakeFiles/quaternion_test.dir/requires: CMakeFiles/quaternion_test.dir/src/quaternion.o.requires
CMakeFiles/quaternion_test.dir/requires: CMakeFiles/quaternion_test.dir/src/demo.o.requires

.PHONY : CMakeFiles/quaternion_test.dir/requires

CMakeFiles/quaternion_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/quaternion_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/quaternion_test.dir/clean

CMakeFiles/quaternion_test.dir/depend:
	cd /home/ros/haoyu/quaternion_compute/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ros/haoyu/quaternion_compute /home/ros/haoyu/quaternion_compute /home/ros/haoyu/quaternion_compute/build /home/ros/haoyu/quaternion_compute/build /home/ros/haoyu/quaternion_compute/build/CMakeFiles/quaternion_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/quaternion_test.dir/depend

