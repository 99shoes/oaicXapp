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
include srsue/src/CMakeFiles/srsue.dir/depend.make

# Include the progress variables for this target.
include srsue/src/CMakeFiles/srsue.dir/progress.make

# Include the compile flags for this target's objects.
include srsue/src/CMakeFiles/srsue.dir/flags.make

srsue/src/CMakeFiles/srsue.dir/main.cc.o: srsue/src/CMakeFiles/srsue.dir/flags.make
srsue/src/CMakeFiles/srsue.dir/main.cc.o: ../srsue/src/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/labuser/OAIConstruct/oaic/srsRAN-e2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object srsue/src/CMakeFiles/srsue.dir/main.cc.o"
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/srsue/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/srsue.dir/main.cc.o -c /home/labuser/OAIConstruct/oaic/srsRAN-e2/srsue/src/main.cc

srsue/src/CMakeFiles/srsue.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/srsue.dir/main.cc.i"
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/srsue/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/labuser/OAIConstruct/oaic/srsRAN-e2/srsue/src/main.cc > CMakeFiles/srsue.dir/main.cc.i

srsue/src/CMakeFiles/srsue.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/srsue.dir/main.cc.s"
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/srsue/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/labuser/OAIConstruct/oaic/srsRAN-e2/srsue/src/main.cc -o CMakeFiles/srsue.dir/main.cc.s

srsue/src/CMakeFiles/srsue.dir/ue.cc.o: srsue/src/CMakeFiles/srsue.dir/flags.make
srsue/src/CMakeFiles/srsue.dir/ue.cc.o: ../srsue/src/ue.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/labuser/OAIConstruct/oaic/srsRAN-e2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object srsue/src/CMakeFiles/srsue.dir/ue.cc.o"
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/srsue/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/srsue.dir/ue.cc.o -c /home/labuser/OAIConstruct/oaic/srsRAN-e2/srsue/src/ue.cc

srsue/src/CMakeFiles/srsue.dir/ue.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/srsue.dir/ue.cc.i"
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/srsue/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/labuser/OAIConstruct/oaic/srsRAN-e2/srsue/src/ue.cc > CMakeFiles/srsue.dir/ue.cc.i

srsue/src/CMakeFiles/srsue.dir/ue.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/srsue.dir/ue.cc.s"
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/srsue/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/labuser/OAIConstruct/oaic/srsRAN-e2/srsue/src/ue.cc -o CMakeFiles/srsue.dir/ue.cc.s

srsue/src/CMakeFiles/srsue.dir/metrics_stdout.cc.o: srsue/src/CMakeFiles/srsue.dir/flags.make
srsue/src/CMakeFiles/srsue.dir/metrics_stdout.cc.o: ../srsue/src/metrics_stdout.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/labuser/OAIConstruct/oaic/srsRAN-e2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object srsue/src/CMakeFiles/srsue.dir/metrics_stdout.cc.o"
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/srsue/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/srsue.dir/metrics_stdout.cc.o -c /home/labuser/OAIConstruct/oaic/srsRAN-e2/srsue/src/metrics_stdout.cc

srsue/src/CMakeFiles/srsue.dir/metrics_stdout.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/srsue.dir/metrics_stdout.cc.i"
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/srsue/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/labuser/OAIConstruct/oaic/srsRAN-e2/srsue/src/metrics_stdout.cc > CMakeFiles/srsue.dir/metrics_stdout.cc.i

srsue/src/CMakeFiles/srsue.dir/metrics_stdout.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/srsue.dir/metrics_stdout.cc.s"
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/srsue/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/labuser/OAIConstruct/oaic/srsRAN-e2/srsue/src/metrics_stdout.cc -o CMakeFiles/srsue.dir/metrics_stdout.cc.s

srsue/src/CMakeFiles/srsue.dir/metrics_csv.cc.o: srsue/src/CMakeFiles/srsue.dir/flags.make
srsue/src/CMakeFiles/srsue.dir/metrics_csv.cc.o: ../srsue/src/metrics_csv.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/labuser/OAIConstruct/oaic/srsRAN-e2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object srsue/src/CMakeFiles/srsue.dir/metrics_csv.cc.o"
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/srsue/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/srsue.dir/metrics_csv.cc.o -c /home/labuser/OAIConstruct/oaic/srsRAN-e2/srsue/src/metrics_csv.cc

srsue/src/CMakeFiles/srsue.dir/metrics_csv.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/srsue.dir/metrics_csv.cc.i"
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/srsue/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/labuser/OAIConstruct/oaic/srsRAN-e2/srsue/src/metrics_csv.cc > CMakeFiles/srsue.dir/metrics_csv.cc.i

srsue/src/CMakeFiles/srsue.dir/metrics_csv.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/srsue.dir/metrics_csv.cc.s"
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/srsue/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/labuser/OAIConstruct/oaic/srsRAN-e2/srsue/src/metrics_csv.cc -o CMakeFiles/srsue.dir/metrics_csv.cc.s

srsue/src/CMakeFiles/srsue.dir/metrics_json.cc.o: srsue/src/CMakeFiles/srsue.dir/flags.make
srsue/src/CMakeFiles/srsue.dir/metrics_json.cc.o: ../srsue/src/metrics_json.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/labuser/OAIConstruct/oaic/srsRAN-e2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object srsue/src/CMakeFiles/srsue.dir/metrics_json.cc.o"
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/srsue/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/srsue.dir/metrics_json.cc.o -c /home/labuser/OAIConstruct/oaic/srsRAN-e2/srsue/src/metrics_json.cc

srsue/src/CMakeFiles/srsue.dir/metrics_json.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/srsue.dir/metrics_json.cc.i"
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/srsue/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/labuser/OAIConstruct/oaic/srsRAN-e2/srsue/src/metrics_json.cc > CMakeFiles/srsue.dir/metrics_json.cc.i

srsue/src/CMakeFiles/srsue.dir/metrics_json.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/srsue.dir/metrics_json.cc.s"
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/srsue/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/labuser/OAIConstruct/oaic/srsRAN-e2/srsue/src/metrics_json.cc -o CMakeFiles/srsue.dir/metrics_json.cc.s

# Object files for target srsue
srsue_OBJECTS = \
"CMakeFiles/srsue.dir/main.cc.o" \
"CMakeFiles/srsue.dir/ue.cc.o" \
"CMakeFiles/srsue.dir/metrics_stdout.cc.o" \
"CMakeFiles/srsue.dir/metrics_csv.cc.o" \
"CMakeFiles/srsue.dir/metrics_json.cc.o"

# External object files for target srsue
srsue_EXTERNAL_OBJECTS =

srsue/src/srsue: srsue/src/CMakeFiles/srsue.dir/main.cc.o
srsue/src/srsue: srsue/src/CMakeFiles/srsue.dir/ue.cc.o
srsue/src/srsue: srsue/src/CMakeFiles/srsue.dir/metrics_stdout.cc.o
srsue/src/srsue: srsue/src/CMakeFiles/srsue.dir/metrics_csv.cc.o
srsue/src/srsue: srsue/src/CMakeFiles/srsue.dir/metrics_json.cc.o
srsue/src/srsue: srsue/src/CMakeFiles/srsue.dir/build.make
srsue/src/srsue: srsue/src/phy/libsrsue_phy.a
srsue/src/srsue: srsue/src/stack/libsrsue_stack.a
srsue/src/srsue: srsue/src/stack/upper/libsrsue_upper.a
srsue/src/srsue: srsue/src/stack/mac/libsrsue_mac.a
srsue/src/srsue: srsue/src/stack/rrc/libsrsue_rrc.a
srsue/src/srsue: lib/src/srslog/libsrslog.a
srsue/src/srsue: lib/src/system/libsystem.a
srsue/src/srsue: srsue/src/stack/libsrsue_nr_stack.a
srsue/src/srsue: srsue/src/stack/rrc/libsrsue_rrc_nr.a
srsue/src/srsue: srsue/src/stack/mac_nr/libsrsue_mac_nr.a
srsue/src/srsue: lib/src/common/libsrsran_common.a
srsue/src/srsue: lib/src/mac/libsrsran_mac.a
srsue/src/srsue: lib/src/phy/libsrsran_phy.a
srsue/src/srsue: lib/src/radio/libsrsran_radio.a
srsue/src/srsue: lib/src/gtpu/libsrsran_gtpu.a
srsue/src/srsue: lib/src/rlc/libsrsran_rlc.a
srsue/src/srsue: lib/src/pdcp/libsrsran_pdcp.a
srsue/src/srsue: lib/src/asn1/librrc_asn1.a
srsue/src/srsue: lib/src/srslog/libsrslog.a
srsue/src/srsue: lib/src/support/libsupport.a
srsue/src/srsue: lib/src/system/libsystem.a
srsue/src/srsue: lib/src/asn1/librrc_nr_asn1.a
srsue/src/srsue: lib/src/asn1/libngap_nr_asn1.a
srsue/src/srsue: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
srsue/src/srsue: lib/src/asn1/libnas_5g_msg.a
srsue/src/srsue: srsue/src/stack/mac_common/libsrsue_mac_common.a
srsue/src/srsue: lib/src/phy/rf/libsrsran_rf.so.21.10.0
srsue/src/srsue: lib/src/phy/rf/libsrsran_rf_utils.a
srsue/src/srsue: /usr/lib/x86_64-linux-gnu/libuhd.so
srsue/src/srsue: /usr/lib/x86_64-linux-gnu/libzmq.so
srsue/src/srsue: lib/src/asn1/libsrsran_asn1.a
srsue/src/srsue: lib/src/asn1/libasn1_utils.a
srsue/src/srsue: lib/src/common/libsrsran_common.a
srsue/src/srsue: lib/src/srslog/libsrslog.a
srsue/src/srsue: lib/src/phy/libsrsran_phy.a
srsue/src/srsue: /usr/lib/x86_64-linux-gnu/libfftw3f.so
srsue/src/srsue: lib/src/support/libsupport.a
srsue/src/srsue: /usr/lib/x86_64-linux-gnu/libmbedcrypto.so
srsue/src/srsue: srsue/src/CMakeFiles/srsue.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/labuser/OAIConstruct/oaic/srsRAN-e2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable srsue"
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/srsue/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/srsue.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
srsue/src/CMakeFiles/srsue.dir/build: srsue/src/srsue

.PHONY : srsue/src/CMakeFiles/srsue.dir/build

srsue/src/CMakeFiles/srsue.dir/clean:
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/srsue/src && $(CMAKE_COMMAND) -P CMakeFiles/srsue.dir/cmake_clean.cmake
.PHONY : srsue/src/CMakeFiles/srsue.dir/clean

srsue/src/CMakeFiles/srsue.dir/depend:
	cd /home/labuser/OAIConstruct/oaic/srsRAN-e2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/labuser/OAIConstruct/oaic/srsRAN-e2 /home/labuser/OAIConstruct/oaic/srsRAN-e2/srsue/src /home/labuser/OAIConstruct/oaic/srsRAN-e2/build /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/srsue/src /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/srsue/src/CMakeFiles/srsue.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : srsue/src/CMakeFiles/srsue.dir/depend

