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
include lib/test/common/CMakeFiles/timer_test.dir/depend.make

# Include the progress variables for this target.
include lib/test/common/CMakeFiles/timer_test.dir/progress.make

# Include the compile flags for this target's objects.
include lib/test/common/CMakeFiles/timer_test.dir/flags.make

lib/test/common/CMakeFiles/timer_test.dir/timer_test.cc.o: lib/test/common/CMakeFiles/timer_test.dir/flags.make
lib/test/common/CMakeFiles/timer_test.dir/timer_test.cc.o: ../lib/test/common/timer_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/labuser/OAIConstruct/oaic/srsRAN-e2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/test/common/CMakeFiles/timer_test.dir/timer_test.cc.o"
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/lib/test/common && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/timer_test.dir/timer_test.cc.o -c /home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/common/timer_test.cc

lib/test/common/CMakeFiles/timer_test.dir/timer_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/timer_test.dir/timer_test.cc.i"
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/lib/test/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/common/timer_test.cc > CMakeFiles/timer_test.dir/timer_test.cc.i

lib/test/common/CMakeFiles/timer_test.dir/timer_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/timer_test.dir/timer_test.cc.s"
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/lib/test/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/common/timer_test.cc -o CMakeFiles/timer_test.dir/timer_test.cc.s

# Object files for target timer_test
timer_test_OBJECTS = \
"CMakeFiles/timer_test.dir/timer_test.cc.o"

# External object files for target timer_test
timer_test_EXTERNAL_OBJECTS =

lib/test/common/timer_test: lib/test/common/CMakeFiles/timer_test.dir/timer_test.cc.o
lib/test/common/timer_test: lib/test/common/CMakeFiles/timer_test.dir/build.make
lib/test/common/timer_test: lib/src/common/libsrsran_common.a
lib/test/common/timer_test: lib/src/phy/libsrsran_phy.a
lib/test/common/timer_test: /usr/lib/x86_64-linux-gnu/libfftw3f.so
lib/test/common/timer_test: lib/src/support/libsupport.a
lib/test/common/timer_test: lib/src/srslog/libsrslog.a
lib/test/common/timer_test: /usr/lib/x86_64-linux-gnu/libmbedcrypto.so
lib/test/common/timer_test: lib/test/common/CMakeFiles/timer_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/labuser/OAIConstruct/oaic/srsRAN-e2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable timer_test"
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/lib/test/common && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/timer_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/test/common/CMakeFiles/timer_test.dir/build: lib/test/common/timer_test

.PHONY : lib/test/common/CMakeFiles/timer_test.dir/build

lib/test/common/CMakeFiles/timer_test.dir/clean:
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/lib/test/common && $(CMAKE_COMMAND) -P CMakeFiles/timer_test.dir/cmake_clean.cmake
.PHONY : lib/test/common/CMakeFiles/timer_test.dir/clean

lib/test/common/CMakeFiles/timer_test.dir/depend:
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/labuser/OAIConstruct/oaic/srsRAN-e2 /home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/common /home/labuser/OAIConstruct/oaic/srsRAN-e2/build /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/lib/test/common /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/lib/test/common/CMakeFiles/timer_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/test/common/CMakeFiles/timer_test.dir/depend

