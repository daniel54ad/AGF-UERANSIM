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
include src/rrc/CMakeFiles/rrc.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/rrc/CMakeFiles/rrc.dir/compiler_depend.make

# Include the progress variables for this target.
include src/rrc/CMakeFiles/rrc.dir/progress.make

# Include the compile flags for this target's objects.
include src/rrc/CMakeFiles/rrc.dir/flags.make

src/rrc/CMakeFiles/rrc.dir/encode.cpp.o: src/rrc/CMakeFiles/rrc.dir/flags.make
src/rrc/CMakeFiles/rrc.dir/encode.cpp.o: /home/sdn/AGF-UERANSIM/src/rrc/encode.cpp
src/rrc/CMakeFiles/rrc.dir/encode.cpp.o: src/rrc/CMakeFiles/rrc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sdn/AGF-UERANSIM/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/rrc/CMakeFiles/rrc.dir/encode.cpp.o"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/rrc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/rrc/CMakeFiles/rrc.dir/encode.cpp.o -MF CMakeFiles/rrc.dir/encode.cpp.o.d -o CMakeFiles/rrc.dir/encode.cpp.o -c /home/sdn/AGF-UERANSIM/src/rrc/encode.cpp

src/rrc/CMakeFiles/rrc.dir/encode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rrc.dir/encode.cpp.i"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/rrc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sdn/AGF-UERANSIM/src/rrc/encode.cpp > CMakeFiles/rrc.dir/encode.cpp.i

src/rrc/CMakeFiles/rrc.dir/encode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rrc.dir/encode.cpp.s"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/rrc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sdn/AGF-UERANSIM/src/rrc/encode.cpp -o CMakeFiles/rrc.dir/encode.cpp.s

src/rrc/CMakeFiles/rrc.dir/rrc.cpp.o: src/rrc/CMakeFiles/rrc.dir/flags.make
src/rrc/CMakeFiles/rrc.dir/rrc.cpp.o: /home/sdn/AGF-UERANSIM/src/rrc/rrc.cpp
src/rrc/CMakeFiles/rrc.dir/rrc.cpp.o: src/rrc/CMakeFiles/rrc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sdn/AGF-UERANSIM/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/rrc/CMakeFiles/rrc.dir/rrc.cpp.o"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/rrc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/rrc/CMakeFiles/rrc.dir/rrc.cpp.o -MF CMakeFiles/rrc.dir/rrc.cpp.o.d -o CMakeFiles/rrc.dir/rrc.cpp.o -c /home/sdn/AGF-UERANSIM/src/rrc/rrc.cpp

src/rrc/CMakeFiles/rrc.dir/rrc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rrc.dir/rrc.cpp.i"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/rrc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sdn/AGF-UERANSIM/src/rrc/rrc.cpp > CMakeFiles/rrc.dir/rrc.cpp.i

src/rrc/CMakeFiles/rrc.dir/rrc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rrc.dir/rrc.cpp.s"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/rrc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sdn/AGF-UERANSIM/src/rrc/rrc.cpp -o CMakeFiles/rrc.dir/rrc.cpp.s

# Object files for target rrc
rrc_OBJECTS = \
"CMakeFiles/rrc.dir/encode.cpp.o" \
"CMakeFiles/rrc.dir/rrc.cpp.o"

# External object files for target rrc
rrc_EXTERNAL_OBJECTS =

src/rrc/librrc.a: src/rrc/CMakeFiles/rrc.dir/encode.cpp.o
src/rrc/librrc.a: src/rrc/CMakeFiles/rrc.dir/rrc.cpp.o
src/rrc/librrc.a: src/rrc/CMakeFiles/rrc.dir/build.make
src/rrc/librrc.a: src/rrc/CMakeFiles/rrc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sdn/AGF-UERANSIM/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library librrc.a"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/rrc && $(CMAKE_COMMAND) -P CMakeFiles/rrc.dir/cmake_clean_target.cmake
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/rrc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rrc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/rrc/CMakeFiles/rrc.dir/build: src/rrc/librrc.a
.PHONY : src/rrc/CMakeFiles/rrc.dir/build

src/rrc/CMakeFiles/rrc.dir/clean:
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/rrc && $(CMAKE_COMMAND) -P CMakeFiles/rrc.dir/cmake_clean.cmake
.PHONY : src/rrc/CMakeFiles/rrc.dir/clean

src/rrc/CMakeFiles/rrc.dir/depend:
	cd /home/sdn/AGF-UERANSIM/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sdn/AGF-UERANSIM /home/sdn/AGF-UERANSIM/src/rrc /home/sdn/AGF-UERANSIM/cmake-build-release /home/sdn/AGF-UERANSIM/cmake-build-release/src/rrc /home/sdn/AGF-UERANSIM/cmake-build-release/src/rrc/CMakeFiles/rrc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/rrc/CMakeFiles/rrc.dir/depend

