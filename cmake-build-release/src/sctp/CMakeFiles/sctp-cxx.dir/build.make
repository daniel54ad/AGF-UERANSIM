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
CMAKE_COMMAND = /snap/cmake/1204/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1204/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sdn/AGF-UERANSIM

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sdn/AGF-UERANSIM/cmake-build-release

# Include any dependencies generated for this target.
include src/sctp/CMakeFiles/sctp-cxx.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/sctp/CMakeFiles/sctp-cxx.dir/compiler_depend.make

# Include the progress variables for this target.
include src/sctp/CMakeFiles/sctp-cxx.dir/progress.make

# Include the compile flags for this target's objects.
include src/sctp/CMakeFiles/sctp-cxx.dir/flags.make

src/sctp/CMakeFiles/sctp-cxx.dir/client.cpp.o: src/sctp/CMakeFiles/sctp-cxx.dir/flags.make
src/sctp/CMakeFiles/sctp-cxx.dir/client.cpp.o: /home/sdn/AGF-UERANSIM/src/sctp/client.cpp
src/sctp/CMakeFiles/sctp-cxx.dir/client.cpp.o: src/sctp/CMakeFiles/sctp-cxx.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sdn/AGF-UERANSIM/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/sctp/CMakeFiles/sctp-cxx.dir/client.cpp.o"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/sctp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/sctp/CMakeFiles/sctp-cxx.dir/client.cpp.o -MF CMakeFiles/sctp-cxx.dir/client.cpp.o.d -o CMakeFiles/sctp-cxx.dir/client.cpp.o -c /home/sdn/AGF-UERANSIM/src/sctp/client.cpp

src/sctp/CMakeFiles/sctp-cxx.dir/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sctp-cxx.dir/client.cpp.i"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/sctp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sdn/AGF-UERANSIM/src/sctp/client.cpp > CMakeFiles/sctp-cxx.dir/client.cpp.i

src/sctp/CMakeFiles/sctp-cxx.dir/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sctp-cxx.dir/client.cpp.s"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/sctp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sdn/AGF-UERANSIM/src/sctp/client.cpp -o CMakeFiles/sctp-cxx.dir/client.cpp.s

src/sctp/CMakeFiles/sctp-cxx.dir/internal.cpp.o: src/sctp/CMakeFiles/sctp-cxx.dir/flags.make
src/sctp/CMakeFiles/sctp-cxx.dir/internal.cpp.o: /home/sdn/AGF-UERANSIM/src/sctp/internal.cpp
src/sctp/CMakeFiles/sctp-cxx.dir/internal.cpp.o: src/sctp/CMakeFiles/sctp-cxx.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sdn/AGF-UERANSIM/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/sctp/CMakeFiles/sctp-cxx.dir/internal.cpp.o"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/sctp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/sctp/CMakeFiles/sctp-cxx.dir/internal.cpp.o -MF CMakeFiles/sctp-cxx.dir/internal.cpp.o.d -o CMakeFiles/sctp-cxx.dir/internal.cpp.o -c /home/sdn/AGF-UERANSIM/src/sctp/internal.cpp

src/sctp/CMakeFiles/sctp-cxx.dir/internal.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sctp-cxx.dir/internal.cpp.i"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/sctp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sdn/AGF-UERANSIM/src/sctp/internal.cpp > CMakeFiles/sctp-cxx.dir/internal.cpp.i

src/sctp/CMakeFiles/sctp-cxx.dir/internal.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sctp-cxx.dir/internal.cpp.s"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/sctp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sdn/AGF-UERANSIM/src/sctp/internal.cpp -o CMakeFiles/sctp-cxx.dir/internal.cpp.s

src/sctp/CMakeFiles/sctp-cxx.dir/sctp.cpp.o: src/sctp/CMakeFiles/sctp-cxx.dir/flags.make
src/sctp/CMakeFiles/sctp-cxx.dir/sctp.cpp.o: /home/sdn/AGF-UERANSIM/src/sctp/sctp.cpp
src/sctp/CMakeFiles/sctp-cxx.dir/sctp.cpp.o: src/sctp/CMakeFiles/sctp-cxx.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sdn/AGF-UERANSIM/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/sctp/CMakeFiles/sctp-cxx.dir/sctp.cpp.o"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/sctp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/sctp/CMakeFiles/sctp-cxx.dir/sctp.cpp.o -MF CMakeFiles/sctp-cxx.dir/sctp.cpp.o.d -o CMakeFiles/sctp-cxx.dir/sctp.cpp.o -c /home/sdn/AGF-UERANSIM/src/sctp/sctp.cpp

src/sctp/CMakeFiles/sctp-cxx.dir/sctp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sctp-cxx.dir/sctp.cpp.i"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/sctp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sdn/AGF-UERANSIM/src/sctp/sctp.cpp > CMakeFiles/sctp-cxx.dir/sctp.cpp.i

src/sctp/CMakeFiles/sctp-cxx.dir/sctp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sctp-cxx.dir/sctp.cpp.s"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/sctp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sdn/AGF-UERANSIM/src/sctp/sctp.cpp -o CMakeFiles/sctp-cxx.dir/sctp.cpp.s

src/sctp/CMakeFiles/sctp-cxx.dir/server.cpp.o: src/sctp/CMakeFiles/sctp-cxx.dir/flags.make
src/sctp/CMakeFiles/sctp-cxx.dir/server.cpp.o: /home/sdn/AGF-UERANSIM/src/sctp/server.cpp
src/sctp/CMakeFiles/sctp-cxx.dir/server.cpp.o: src/sctp/CMakeFiles/sctp-cxx.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sdn/AGF-UERANSIM/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/sctp/CMakeFiles/sctp-cxx.dir/server.cpp.o"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/sctp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/sctp/CMakeFiles/sctp-cxx.dir/server.cpp.o -MF CMakeFiles/sctp-cxx.dir/server.cpp.o.d -o CMakeFiles/sctp-cxx.dir/server.cpp.o -c /home/sdn/AGF-UERANSIM/src/sctp/server.cpp

src/sctp/CMakeFiles/sctp-cxx.dir/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sctp-cxx.dir/server.cpp.i"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/sctp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sdn/AGF-UERANSIM/src/sctp/server.cpp > CMakeFiles/sctp-cxx.dir/server.cpp.i

src/sctp/CMakeFiles/sctp-cxx.dir/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sctp-cxx.dir/server.cpp.s"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/sctp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sdn/AGF-UERANSIM/src/sctp/server.cpp -o CMakeFiles/sctp-cxx.dir/server.cpp.s

src/sctp/CMakeFiles/sctp-cxx.dir/types.cpp.o: src/sctp/CMakeFiles/sctp-cxx.dir/flags.make
src/sctp/CMakeFiles/sctp-cxx.dir/types.cpp.o: /home/sdn/AGF-UERANSIM/src/sctp/types.cpp
src/sctp/CMakeFiles/sctp-cxx.dir/types.cpp.o: src/sctp/CMakeFiles/sctp-cxx.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sdn/AGF-UERANSIM/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/sctp/CMakeFiles/sctp-cxx.dir/types.cpp.o"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/sctp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/sctp/CMakeFiles/sctp-cxx.dir/types.cpp.o -MF CMakeFiles/sctp-cxx.dir/types.cpp.o.d -o CMakeFiles/sctp-cxx.dir/types.cpp.o -c /home/sdn/AGF-UERANSIM/src/sctp/types.cpp

src/sctp/CMakeFiles/sctp-cxx.dir/types.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sctp-cxx.dir/types.cpp.i"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/sctp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sdn/AGF-UERANSIM/src/sctp/types.cpp > CMakeFiles/sctp-cxx.dir/types.cpp.i

src/sctp/CMakeFiles/sctp-cxx.dir/types.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sctp-cxx.dir/types.cpp.s"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/sctp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sdn/AGF-UERANSIM/src/sctp/types.cpp -o CMakeFiles/sctp-cxx.dir/types.cpp.s

# Object files for target sctp-cxx
sctp__cxx_OBJECTS = \
"CMakeFiles/sctp-cxx.dir/client.cpp.o" \
"CMakeFiles/sctp-cxx.dir/internal.cpp.o" \
"CMakeFiles/sctp-cxx.dir/sctp.cpp.o" \
"CMakeFiles/sctp-cxx.dir/server.cpp.o" \
"CMakeFiles/sctp-cxx.dir/types.cpp.o"

# External object files for target sctp-cxx
sctp__cxx_EXTERNAL_OBJECTS =

src/sctp/libsctp-cxx.a: src/sctp/CMakeFiles/sctp-cxx.dir/client.cpp.o
src/sctp/libsctp-cxx.a: src/sctp/CMakeFiles/sctp-cxx.dir/internal.cpp.o
src/sctp/libsctp-cxx.a: src/sctp/CMakeFiles/sctp-cxx.dir/sctp.cpp.o
src/sctp/libsctp-cxx.a: src/sctp/CMakeFiles/sctp-cxx.dir/server.cpp.o
src/sctp/libsctp-cxx.a: src/sctp/CMakeFiles/sctp-cxx.dir/types.cpp.o
src/sctp/libsctp-cxx.a: src/sctp/CMakeFiles/sctp-cxx.dir/build.make
src/sctp/libsctp-cxx.a: src/sctp/CMakeFiles/sctp-cxx.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sdn/AGF-UERANSIM/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX static library libsctp-cxx.a"
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/sctp && $(CMAKE_COMMAND) -P CMakeFiles/sctp-cxx.dir/cmake_clean_target.cmake
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/sctp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sctp-cxx.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/sctp/CMakeFiles/sctp-cxx.dir/build: src/sctp/libsctp-cxx.a
.PHONY : src/sctp/CMakeFiles/sctp-cxx.dir/build

src/sctp/CMakeFiles/sctp-cxx.dir/clean:
	cd /home/sdn/AGF-UERANSIM/cmake-build-release/src/sctp && $(CMAKE_COMMAND) -P CMakeFiles/sctp-cxx.dir/cmake_clean.cmake
.PHONY : src/sctp/CMakeFiles/sctp-cxx.dir/clean

src/sctp/CMakeFiles/sctp-cxx.dir/depend:
	cd /home/sdn/AGF-UERANSIM/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sdn/AGF-UERANSIM /home/sdn/AGF-UERANSIM/src/sctp /home/sdn/AGF-UERANSIM/cmake-build-release /home/sdn/AGF-UERANSIM/cmake-build-release/src/sctp /home/sdn/AGF-UERANSIM/cmake-build-release/src/sctp/CMakeFiles/sctp-cxx.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/sctp/CMakeFiles/sctp-cxx.dir/depend

