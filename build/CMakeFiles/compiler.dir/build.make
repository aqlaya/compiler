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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/alkuraish/Desktop/compiler/source

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alkuraish/Desktop/compiler/build

# Include any dependencies generated for this target.
include CMakeFiles/compiler.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/compiler.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/compiler.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/compiler.dir/flags.make

CMakeFiles/compiler.dir/declare_set.cpp.o: CMakeFiles/compiler.dir/flags.make
CMakeFiles/compiler.dir/declare_set.cpp.o: /home/alkuraish/Desktop/compiler/source/declare_set.cpp
CMakeFiles/compiler.dir/declare_set.cpp.o: CMakeFiles/compiler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alkuraish/Desktop/compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/compiler.dir/declare_set.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/compiler.dir/declare_set.cpp.o -MF CMakeFiles/compiler.dir/declare_set.cpp.o.d -o CMakeFiles/compiler.dir/declare_set.cpp.o -c /home/alkuraish/Desktop/compiler/source/declare_set.cpp

CMakeFiles/compiler.dir/declare_set.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/compiler.dir/declare_set.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alkuraish/Desktop/compiler/source/declare_set.cpp > CMakeFiles/compiler.dir/declare_set.cpp.i

CMakeFiles/compiler.dir/declare_set.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/compiler.dir/declare_set.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alkuraish/Desktop/compiler/source/declare_set.cpp -o CMakeFiles/compiler.dir/declare_set.cpp.s

CMakeFiles/compiler.dir/main.cpp.o: CMakeFiles/compiler.dir/flags.make
CMakeFiles/compiler.dir/main.cpp.o: /home/alkuraish/Desktop/compiler/source/main.cpp
CMakeFiles/compiler.dir/main.cpp.o: CMakeFiles/compiler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alkuraish/Desktop/compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/compiler.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/compiler.dir/main.cpp.o -MF CMakeFiles/compiler.dir/main.cpp.o.d -o CMakeFiles/compiler.dir/main.cpp.o -c /home/alkuraish/Desktop/compiler/source/main.cpp

CMakeFiles/compiler.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/compiler.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alkuraish/Desktop/compiler/source/main.cpp > CMakeFiles/compiler.dir/main.cpp.i

CMakeFiles/compiler.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/compiler.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alkuraish/Desktop/compiler/source/main.cpp -o CMakeFiles/compiler.dir/main.cpp.s

CMakeFiles/compiler.dir/rec_file.cpp.o: CMakeFiles/compiler.dir/flags.make
CMakeFiles/compiler.dir/rec_file.cpp.o: /home/alkuraish/Desktop/compiler/source/rec_file.cpp
CMakeFiles/compiler.dir/rec_file.cpp.o: CMakeFiles/compiler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alkuraish/Desktop/compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/compiler.dir/rec_file.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/compiler.dir/rec_file.cpp.o -MF CMakeFiles/compiler.dir/rec_file.cpp.o.d -o CMakeFiles/compiler.dir/rec_file.cpp.o -c /home/alkuraish/Desktop/compiler/source/rec_file.cpp

CMakeFiles/compiler.dir/rec_file.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/compiler.dir/rec_file.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alkuraish/Desktop/compiler/source/rec_file.cpp > CMakeFiles/compiler.dir/rec_file.cpp.i

CMakeFiles/compiler.dir/rec_file.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/compiler.dir/rec_file.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alkuraish/Desktop/compiler/source/rec_file.cpp -o CMakeFiles/compiler.dir/rec_file.cpp.s

CMakeFiles/compiler.dir/syntax_tree.cpp.o: CMakeFiles/compiler.dir/flags.make
CMakeFiles/compiler.dir/syntax_tree.cpp.o: /home/alkuraish/Desktop/compiler/source/syntax_tree.cpp
CMakeFiles/compiler.dir/syntax_tree.cpp.o: CMakeFiles/compiler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alkuraish/Desktop/compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/compiler.dir/syntax_tree.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/compiler.dir/syntax_tree.cpp.o -MF CMakeFiles/compiler.dir/syntax_tree.cpp.o.d -o CMakeFiles/compiler.dir/syntax_tree.cpp.o -c /home/alkuraish/Desktop/compiler/source/syntax_tree.cpp

CMakeFiles/compiler.dir/syntax_tree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/compiler.dir/syntax_tree.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alkuraish/Desktop/compiler/source/syntax_tree.cpp > CMakeFiles/compiler.dir/syntax_tree.cpp.i

CMakeFiles/compiler.dir/syntax_tree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/compiler.dir/syntax_tree.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alkuraish/Desktop/compiler/source/syntax_tree.cpp -o CMakeFiles/compiler.dir/syntax_tree.cpp.s

CMakeFiles/compiler.dir/tokenization.cpp.o: CMakeFiles/compiler.dir/flags.make
CMakeFiles/compiler.dir/tokenization.cpp.o: /home/alkuraish/Desktop/compiler/source/tokenization.cpp
CMakeFiles/compiler.dir/tokenization.cpp.o: CMakeFiles/compiler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alkuraish/Desktop/compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/compiler.dir/tokenization.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/compiler.dir/tokenization.cpp.o -MF CMakeFiles/compiler.dir/tokenization.cpp.o.d -o CMakeFiles/compiler.dir/tokenization.cpp.o -c /home/alkuraish/Desktop/compiler/source/tokenization.cpp

CMakeFiles/compiler.dir/tokenization.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/compiler.dir/tokenization.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alkuraish/Desktop/compiler/source/tokenization.cpp > CMakeFiles/compiler.dir/tokenization.cpp.i

CMakeFiles/compiler.dir/tokenization.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/compiler.dir/tokenization.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alkuraish/Desktop/compiler/source/tokenization.cpp -o CMakeFiles/compiler.dir/tokenization.cpp.s

CMakeFiles/compiler.dir/handle.cpp.o: CMakeFiles/compiler.dir/flags.make
CMakeFiles/compiler.dir/handle.cpp.o: /home/alkuraish/Desktop/compiler/source/handle.cpp
CMakeFiles/compiler.dir/handle.cpp.o: CMakeFiles/compiler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alkuraish/Desktop/compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/compiler.dir/handle.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/compiler.dir/handle.cpp.o -MF CMakeFiles/compiler.dir/handle.cpp.o.d -o CMakeFiles/compiler.dir/handle.cpp.o -c /home/alkuraish/Desktop/compiler/source/handle.cpp

CMakeFiles/compiler.dir/handle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/compiler.dir/handle.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alkuraish/Desktop/compiler/source/handle.cpp > CMakeFiles/compiler.dir/handle.cpp.i

CMakeFiles/compiler.dir/handle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/compiler.dir/handle.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alkuraish/Desktop/compiler/source/handle.cpp -o CMakeFiles/compiler.dir/handle.cpp.s

# Object files for target compiler
compiler_OBJECTS = \
"CMakeFiles/compiler.dir/declare_set.cpp.o" \
"CMakeFiles/compiler.dir/main.cpp.o" \
"CMakeFiles/compiler.dir/rec_file.cpp.o" \
"CMakeFiles/compiler.dir/syntax_tree.cpp.o" \
"CMakeFiles/compiler.dir/tokenization.cpp.o" \
"CMakeFiles/compiler.dir/handle.cpp.o"

# External object files for target compiler
compiler_EXTERNAL_OBJECTS =

compiler: CMakeFiles/compiler.dir/declare_set.cpp.o
compiler: CMakeFiles/compiler.dir/main.cpp.o
compiler: CMakeFiles/compiler.dir/rec_file.cpp.o
compiler: CMakeFiles/compiler.dir/syntax_tree.cpp.o
compiler: CMakeFiles/compiler.dir/tokenization.cpp.o
compiler: CMakeFiles/compiler.dir/handle.cpp.o
compiler: CMakeFiles/compiler.dir/build.make
compiler: CMakeFiles/compiler.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alkuraish/Desktop/compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable compiler"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/compiler.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/compiler.dir/build: compiler
.PHONY : CMakeFiles/compiler.dir/build

CMakeFiles/compiler.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/compiler.dir/cmake_clean.cmake
.PHONY : CMakeFiles/compiler.dir/clean

CMakeFiles/compiler.dir/depend:
	cd /home/alkuraish/Desktop/compiler/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alkuraish/Desktop/compiler/source /home/alkuraish/Desktop/compiler/source /home/alkuraish/Desktop/compiler/build /home/alkuraish/Desktop/compiler/build /home/alkuraish/Desktop/compiler/build/CMakeFiles/compiler.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/compiler.dir/depend
