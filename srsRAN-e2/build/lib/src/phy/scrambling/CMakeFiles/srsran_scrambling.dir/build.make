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
CMAKE_SOURCE_DIR = /home/labuser/OAIConstruct/oaic/srsRAN-e2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/labuser/OAIConstruct/oaic/srsRAN-e2/build

# Include any dependencies generated for this target.
include lib/src/phy/scrambling/CMakeFiles/srsran_scrambling.dir/depend.make

# Include the progress variables for this target.
include lib/src/phy/scrambling/CMakeFiles/srsran_scrambling.dir/progress.make

# Include the compile flags for this target's objects.
include lib/src/phy/scrambling/CMakeFiles/srsran_scrambling.dir/flags.make

lib/src/phy/scrambling/CMakeFiles/srsran_scrambling.dir/scrambling.c.o: lib/src/phy/scrambling/CMakeFiles/srsran_scrambling.dir/flags.make
lib/src/phy/scrambling/CMakeFiles/srsran_scrambling.dir/scrambling.c.o: ../lib/src/phy/scrambling/scrambling.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/labuser/OAIConstruct/oaic/srsRAN-e2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object lib/src/phy/scrambling/CMakeFiles/srsran_scrambling.dir/scrambling.c.o"
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/lib/src/phy/scrambling && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/srsran_scrambling.dir/scrambling.c.o   -c /home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/src/phy/scrambling/scrambling.c

lib/src/phy/scrambling/CMakeFiles/srsran_scrambling.dir/scrambling.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/srsran_scrambling.dir/scrambling.c.i"
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/lib/src/phy/scrambling && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/src/phy/scrambling/scrambling.c > CMakeFiles/srsran_scrambling.dir/scrambling.c.i

lib/src/phy/scrambling/CMakeFiles/srsran_scrambling.dir/scrambling.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/srsran_scrambling.dir/scrambling.c.s"
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/lib/src/phy/scrambling && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/src/phy/scrambling/scrambling.c -o CMakeFiles/srsran_scrambling.dir/scrambling.c.s

srsran_scrambling: lib/src/phy/scrambling/CMakeFiles/srsran_scrambling.dir/scrambling.c.o
srsran_scrambling: lib/src/phy/scrambling/CMakeFiles/srsran_scrambling.dir/build.make

.PHONY : srsran_scrambling

# Rule to build all files generated by this target.
lib/src/phy/scrambling/CMakeFiles/srsran_scrambling.dir/build: srsran_scrambling

.PHONY : lib/src/phy/scrambling/CMakeFiles/srsran_scrambling.dir/build

lib/src/phy/scrambling/CMakeFiles/srsran_scrambling.dir/clean:
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/lib/src/phy/scrambling && $(CMAKE_COMMAND) -P CMakeFiles/srsran_scrambling.dir/cmake_clean.cmake
.PHONY : lib/src/phy/scrambling/CMakeFiles/srsran_scrambling.dir/clean

lib/src/phy/scrambling/CMakeFiles/srsran_scrambling.dir/depend:
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/labuser/OAIConstruct/oaic/srsRAN-e2 /home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/src/phy/scrambling /home/labuser/OAIConstruct/oaic/srsRAN-e2/build /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/lib/src/phy/scrambling /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/lib/src/phy/scrambling/CMakeFiles/srsran_scrambling.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/src/phy/scrambling/CMakeFiles/srsran_scrambling.dir/depend

