# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/antonio/Programming/Argos3/iAnt-ARGoS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/antonio/Programming/Argos3/iAnt-ARGoS/build

# Include any dependencies generated for this target.
include controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/depend.make

# Include the progress variables for this target.
include controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/progress.make

# Include the compile flags for this target's objects.
include controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/flags.make

controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/iAnt_controller.cpp.o: controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/flags.make
controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/iAnt_controller.cpp.o: ../controllers/iAnt_controller/iAnt_controller.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/antonio/Programming/Argos3/iAnt-ARGoS/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/iAnt_controller.cpp.o"
	cd /home/antonio/Programming/Argos3/iAnt-ARGoS/build/controllers/iAnt_controller && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/iAnt_controller.dir/iAnt_controller.cpp.o -c /home/antonio/Programming/Argos3/iAnt-ARGoS/controllers/iAnt_controller/iAnt_controller.cpp

controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/iAnt_controller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/iAnt_controller.dir/iAnt_controller.cpp.i"
	cd /home/antonio/Programming/Argos3/iAnt-ARGoS/build/controllers/iAnt_controller && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/antonio/Programming/Argos3/iAnt-ARGoS/controllers/iAnt_controller/iAnt_controller.cpp > CMakeFiles/iAnt_controller.dir/iAnt_controller.cpp.i

controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/iAnt_controller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/iAnt_controller.dir/iAnt_controller.cpp.s"
	cd /home/antonio/Programming/Argos3/iAnt-ARGoS/build/controllers/iAnt_controller && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/antonio/Programming/Argos3/iAnt-ARGoS/controllers/iAnt_controller/iAnt_controller.cpp -o CMakeFiles/iAnt_controller.dir/iAnt_controller.cpp.s

controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/iAnt_controller.cpp.o.requires:
.PHONY : controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/iAnt_controller.cpp.o.requires

controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/iAnt_controller.cpp.o.provides: controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/iAnt_controller.cpp.o.requires
	$(MAKE) -f controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/build.make controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/iAnt_controller.cpp.o.provides.build
.PHONY : controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/iAnt_controller.cpp.o.provides

controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/iAnt_controller.cpp.o.provides.build: controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/iAnt_controller.cpp.o

# Object files for target iAnt_controller
iAnt_controller_OBJECTS = \
"CMakeFiles/iAnt_controller.dir/iAnt_controller.cpp.o"

# External object files for target iAnt_controller
iAnt_controller_EXTERNAL_OBJECTS =

controllers/iAnt_controller/libiAnt_controller.so: controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/iAnt_controller.cpp.o
controllers/iAnt_controller/libiAnt_controller.so: controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/build.make
controllers/iAnt_controller/libiAnt_controller.so: controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libiAnt_controller.so"
	cd /home/antonio/Programming/Argos3/iAnt-ARGoS/build/controllers/iAnt_controller && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/iAnt_controller.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/build: controllers/iAnt_controller/libiAnt_controller.so
.PHONY : controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/build

controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/requires: controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/iAnt_controller.cpp.o.requires
.PHONY : controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/requires

controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/clean:
	cd /home/antonio/Programming/Argos3/iAnt-ARGoS/build/controllers/iAnt_controller && $(CMAKE_COMMAND) -P CMakeFiles/iAnt_controller.dir/cmake_clean.cmake
.PHONY : controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/clean

controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/depend:
	cd /home/antonio/Programming/Argos3/iAnt-ARGoS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/antonio/Programming/Argos3/iAnt-ARGoS /home/antonio/Programming/Argos3/iAnt-ARGoS/controllers/iAnt_controller /home/antonio/Programming/Argos3/iAnt-ARGoS/build /home/antonio/Programming/Argos3/iAnt-ARGoS/build/controllers/iAnt_controller /home/antonio/Programming/Argos3/iAnt-ARGoS/build/controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : controllers/iAnt_controller/CMakeFiles/iAnt_controller.dir/depend

