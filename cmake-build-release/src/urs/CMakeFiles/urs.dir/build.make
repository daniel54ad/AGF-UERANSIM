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
include src/urs/CMakeFiles/urs.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/urs/CMakeFiles/urs.dir/compiler_depend.make

# Include the progress variables for this target.
include src/urs/CMakeFiles/urs.dir/progress.make

# Include the compile flags for this target's objects.
include src/urs/CMakeFiles/urs.dir/flags.make

src/urs/CMakeFiles/urs.dir/rls/gnb_entity.cpp.o: src/urs/CMakeFiles/urs.dir/flags.make
src/urs/CMakeFiles/urs.dir/rls/gnb_entity.cpp.o: /home/sdn/AGF-UERANSIM/src/urs/rls/gnb_entity.cpp
src/urs/CMakeFiles/urs.dir/rls/gnb_entity.cpp.o: src/urs/CMakeFiles/urs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sdn/AGF-UERANSIM/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/urs/CMakeFiles/urs.dir/rls/gnb_entity.cpp.o"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/urs && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/urs/CMakeFiles/urs.dir/rls/gnb_entity.cpp.o -MF CMakeFiles/urs.dir/rls/gnb_entity.cpp.o.d -o CMakeFiles/urs.dir/rls/gnb_entity.cpp.o -c /home/sdn/AGF-UERANSIM/src/urs/rls/gnb_entity.cpp

src/urs/CMakeFiles/urs.dir/rls/gnb_entity.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/urs.dir/rls/gnb_entity.cpp.i"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/urs && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sdn/AGF-UERANSIM/src/urs/rls/gnb_entity.cpp > CMakeFiles/urs.dir/rls/gnb_entity.cpp.i

src/urs/CMakeFiles/urs.dir/rls/gnb_entity.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/urs.dir/rls/gnb_entity.cpp.s"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/urs && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sdn/AGF-UERANSIM/src/urs/rls/gnb_entity.cpp -o CMakeFiles/urs.dir/rls/gnb_entity.cpp.s

src/urs/CMakeFiles/urs.dir/rls/rls.cpp.o: src/urs/CMakeFiles/urs.dir/flags.make
src/urs/CMakeFiles/urs.dir/rls/rls.cpp.o: /home/sdn/AGF-UERANSIM/src/urs/rls/rls.cpp
src/urs/CMakeFiles/urs.dir/rls/rls.cpp.o: src/urs/CMakeFiles/urs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sdn/AGF-UERANSIM/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/urs/CMakeFiles/urs.dir/rls/rls.cpp.o"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/urs && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/urs/CMakeFiles/urs.dir/rls/rls.cpp.o -MF CMakeFiles/urs.dir/rls/rls.cpp.o.d -o CMakeFiles/urs.dir/rls/rls.cpp.o -c /home/sdn/AGF-UERANSIM/src/urs/rls/rls.cpp

src/urs/CMakeFiles/urs.dir/rls/rls.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/urs.dir/rls/rls.cpp.i"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/urs && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sdn/AGF-UERANSIM/src/urs/rls/rls.cpp > CMakeFiles/urs.dir/rls/rls.cpp.i

src/urs/CMakeFiles/urs.dir/rls/rls.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/urs.dir/rls/rls.cpp.s"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/urs && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sdn/AGF-UERANSIM/src/urs/rls/rls.cpp -o CMakeFiles/urs.dir/rls/rls.cpp.s

src/urs/CMakeFiles/urs.dir/rls/ue_entity.cpp.o: src/urs/CMakeFiles/urs.dir/flags.make
src/urs/CMakeFiles/urs.dir/rls/ue_entity.cpp.o: /home/sdn/AGF-UERANSIM/src/urs/rls/ue_entity.cpp
src/urs/CMakeFiles/urs.dir/rls/ue_entity.cpp.o: src/urs/CMakeFiles/urs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sdn/AGF-UERANSIM/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/urs/CMakeFiles/urs.dir/rls/ue_entity.cpp.o"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/urs && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/urs/CMakeFiles/urs.dir/rls/ue_entity.cpp.o -MF CMakeFiles/urs.dir/rls/ue_entity.cpp.o.d -o CMakeFiles/urs.dir/rls/ue_entity.cpp.o -c /home/sdn/AGF-UERANSIM/src/urs/rls/ue_entity.cpp

src/urs/CMakeFiles/urs.dir/rls/ue_entity.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/urs.dir/rls/ue_entity.cpp.i"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/urs && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sdn/AGF-UERANSIM/src/urs/rls/ue_entity.cpp > CMakeFiles/urs.dir/rls/ue_entity.cpp.i

src/urs/CMakeFiles/urs.dir/rls/ue_entity.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/urs.dir/rls/ue_entity.cpp.s"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/urs && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sdn/AGF-UERANSIM/src/urs/rls/ue_entity.cpp -o CMakeFiles/urs.dir/rls/ue_entity.cpp.s

# Object files for target urs
urs_OBJECTS = \
"CMakeFiles/urs.dir/rls/gnb_entity.cpp.o" \
"CMakeFiles/urs.dir/rls/rls.cpp.o" \
"CMakeFiles/urs.dir/rls/ue_entity.cpp.o"

# External object files for target urs
urs_EXTERNAL_OBJECTS =

src/urs/liburs.a: src/urs/CMakeFiles/urs.dir/rls/gnb_entity.cpp.o
src/urs/liburs.a: src/urs/CMakeFiles/urs.dir/rls/rls.cpp.o
src/urs/liburs.a: src/urs/CMakeFiles/urs.dir/rls/ue_entity.cpp.o
src/urs/liburs.a: src/urs/CMakeFiles/urs.dir/build.make
src/urs/liburs.a: src/urs/CMakeFiles/urs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sdn/AGF-UERANSIM/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library liburs.a"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/urs && $(CMAKE_COMMAND) -P CMakeFiles/urs.dir/cmake_clean_target.cmake
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/urs && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/urs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/urs/CMakeFiles/urs.dir/build: src/urs/liburs.a
.PHONY : src/urs/CMakeFiles/urs.dir/build

src/urs/CMakeFiles/urs.dir/clean:
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/urs && $(CMAKE_COMMAND) -P CMakeFiles/urs.dir/cmake_clean.cmake
.PHONY : src/urs/CMakeFiles/urs.dir/clean

src/urs/CMakeFiles/urs.dir/depend:
	cd /home/sdn/AGF-UERANSIM/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sdn/AGF-UERANSIM /home/sdn/AGF-UERANSIM/src/urs /home/sdn/AGF-UERANSIM/cmake-build-release /home/sdn/AGF-UERANSIM/cmake-build-release/src/urs /home/sdn/AGF-UERANSIM/cmake-build-release/src/urs/CMakeFiles/urs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/urs/CMakeFiles/urs.dir/depend

