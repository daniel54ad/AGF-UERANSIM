# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /snap/cmake/1210/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1210/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sdn/AGF-UERANSIM

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sdn/AGF-UERANSIM/cmake-build-release

# Include any dependencies generated for this target.
include src/udp/CMakeFiles/udp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/udp/CMakeFiles/udp.dir/compiler_depend.make

# Include the progress variables for this target.
include src/udp/CMakeFiles/udp.dir/progress.make

# Include the compile flags for this target's objects.
include src/udp/CMakeFiles/udp.dir/flags.make

src/udp/CMakeFiles/udp.dir/server.cpp.o: src/udp/CMakeFiles/udp.dir/flags.make
src/udp/CMakeFiles/udp.dir/server.cpp.o: /home/sdn/AGF-UERANSIM/src/udp/server.cpp
src/udp/CMakeFiles/udp.dir/server.cpp.o: src/udp/CMakeFiles/udp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sdn/AGF-UERANSIM/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/udp/CMakeFiles/udp.dir/server.cpp.o"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/udp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/udp/CMakeFiles/udp.dir/server.cpp.o -MF CMakeFiles/udp.dir/server.cpp.o.d -o CMakeFiles/udp.dir/server.cpp.o -c /home/sdn/AGF-UERANSIM/src/udp/server.cpp

src/udp/CMakeFiles/udp.dir/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/udp.dir/server.cpp.i"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/udp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sdn/AGF-UERANSIM/src/udp/server.cpp > CMakeFiles/udp.dir/server.cpp.i

src/udp/CMakeFiles/udp.dir/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/udp.dir/server.cpp.s"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/udp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sdn/AGF-UERANSIM/src/udp/server.cpp -o CMakeFiles/udp.dir/server.cpp.s

src/udp/CMakeFiles/udp.dir/server_task.cpp.o: src/udp/CMakeFiles/udp.dir/flags.make
src/udp/CMakeFiles/udp.dir/server_task.cpp.o: /home/sdn/AGF-UERANSIM/src/udp/server_task.cpp
src/udp/CMakeFiles/udp.dir/server_task.cpp.o: src/udp/CMakeFiles/udp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sdn/AGF-UERANSIM/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/udp/CMakeFiles/udp.dir/server_task.cpp.o"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/udp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/udp/CMakeFiles/udp.dir/server_task.cpp.o -MF CMakeFiles/udp.dir/server_task.cpp.o.d -o CMakeFiles/udp.dir/server_task.cpp.o -c /home/sdn/AGF-UERANSIM/src/udp/server_task.cpp

src/udp/CMakeFiles/udp.dir/server_task.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/udp.dir/server_task.cpp.i"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/udp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sdn/AGF-UERANSIM/src/udp/server_task.cpp > CMakeFiles/udp.dir/server_task.cpp.i

src/udp/CMakeFiles/udp.dir/server_task.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/udp.dir/server_task.cpp.s"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/udp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sdn/AGF-UERANSIM/src/udp/server_task.cpp -o CMakeFiles/udp.dir/server_task.cpp.s

# Object files for target udp
udp_OBJECTS = \
"CMakeFiles/udp.dir/server.cpp.o" \
"CMakeFiles/udp.dir/server_task.cpp.o"

# External object files for target udp
udp_EXTERNAL_OBJECTS =

src/udp/libudp.a: src/udp/CMakeFiles/udp.dir/server.cpp.o
src/udp/libudp.a: src/udp/CMakeFiles/udp.dir/server_task.cpp.o
src/udp/libudp.a: src/udp/CMakeFiles/udp.dir/build.make
src/udp/libudp.a: src/udp/CMakeFiles/udp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sdn/AGF-UERANSIM/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libudp.a"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/udp && $(CMAKE_COMMAND) -P CMakeFiles/udp.dir/cmake_clean_target.cmake
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/udp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/udp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/udp/CMakeFiles/udp.dir/build: src/udp/libudp.a
.PHONY : src/udp/CMakeFiles/udp.dir/build

src/udp/CMakeFiles/udp.dir/clean:
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/udp && $(CMAKE_COMMAND) -P CMakeFiles/udp.dir/cmake_clean.cmake
.PHONY : src/udp/CMakeFiles/udp.dir/clean

src/udp/CMakeFiles/udp.dir/depend:
	cd /home/sdn/AGF-UERANSIM/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sdn/AGF-UERANSIM /home/sdn/AGF-UERANSIM/src/udp /home/sdn/AGF-UERANSIM/cmake-build-release /home/sdn/AGF-UERANSIM/cmake-build-release/src/udp /home/sdn/AGF-UERANSIM/cmake-build-release/src/udp/CMakeFiles/udp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/udp/CMakeFiles/udp.dir/depend

