# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/tong/workspace/src/webrtc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tong/workspace/build/webrtc

# Utility rule file for webrtc.

# Include the progress variables for this target.
include CMakeFiles/webrtc.dir/progress.make

CMakeFiles/webrtc:
	cd /home/tong/workspace/src/webrtc && build/depot_tools/ninja -C /home/tong/workspace/build/webrtc/ninja webrtc stunserver turnserver
	cd /home/tong/workspace/src/webrtc && build/update_cmake_config /home/tong/workspace/src/webrtc/build/webrtc/src /home/tong/workspace/build/webrtc/ninja /home/tong/workspace/build/webrtc/output /home/tong/workspace/install/webrtc

webrtc: CMakeFiles/webrtc
webrtc: CMakeFiles/webrtc.dir/build.make

.PHONY : webrtc

# Rule to build all files generated by this target.
CMakeFiles/webrtc.dir/build: webrtc

.PHONY : CMakeFiles/webrtc.dir/build

CMakeFiles/webrtc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/webrtc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/webrtc.dir/clean

CMakeFiles/webrtc.dir/depend:
	cd /home/tong/workspace/build/webrtc && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tong/workspace/src/webrtc /home/tong/workspace/src/webrtc /home/tong/workspace/build/webrtc /home/tong/workspace/build/webrtc /home/tong/workspace/build/webrtc/CMakeFiles/webrtc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/webrtc.dir/depend

