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
CMAKE_SOURCE_DIR = /home/pi/dev/NfcPost

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/dev/NfcPost

# Include any dependencies generated for this target.
include CMakeFiles/NfcPost.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/NfcPost.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/NfcPost.dir/flags.make

CMakeFiles/NfcPost.dir/main.c.o: CMakeFiles/NfcPost.dir/flags.make
CMakeFiles/NfcPost.dir/main.c.o: main.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/dev/NfcPost/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/NfcPost.dir/main.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/NfcPost.dir/main.c.o   -c /home/pi/dev/NfcPost/main.c

CMakeFiles/NfcPost.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/NfcPost.dir/main.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/dev/NfcPost/main.c > CMakeFiles/NfcPost.dir/main.c.i

CMakeFiles/NfcPost.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/NfcPost.dir/main.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/dev/NfcPost/main.c -o CMakeFiles/NfcPost.dir/main.c.s

CMakeFiles/NfcPost.dir/main.c.o.requires:
.PHONY : CMakeFiles/NfcPost.dir/main.c.o.requires

CMakeFiles/NfcPost.dir/main.c.o.provides: CMakeFiles/NfcPost.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/NfcPost.dir/build.make CMakeFiles/NfcPost.dir/main.c.o.provides.build
.PHONY : CMakeFiles/NfcPost.dir/main.c.o.provides

CMakeFiles/NfcPost.dir/main.c.o.provides.build: CMakeFiles/NfcPost.dir/main.c.o

CMakeFiles/NfcPost.dir/Mifare.c.o: CMakeFiles/NfcPost.dir/flags.make
CMakeFiles/NfcPost.dir/Mifare.c.o: Mifare.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/dev/NfcPost/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/NfcPost.dir/Mifare.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/NfcPost.dir/Mifare.c.o   -c /home/pi/dev/NfcPost/Mifare.c

CMakeFiles/NfcPost.dir/Mifare.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/NfcPost.dir/Mifare.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/dev/NfcPost/Mifare.c > CMakeFiles/NfcPost.dir/Mifare.c.i

CMakeFiles/NfcPost.dir/Mifare.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/NfcPost.dir/Mifare.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/dev/NfcPost/Mifare.c -o CMakeFiles/NfcPost.dir/Mifare.c.s

CMakeFiles/NfcPost.dir/Mifare.c.o.requires:
.PHONY : CMakeFiles/NfcPost.dir/Mifare.c.o.requires

CMakeFiles/NfcPost.dir/Mifare.c.o.provides: CMakeFiles/NfcPost.dir/Mifare.c.o.requires
	$(MAKE) -f CMakeFiles/NfcPost.dir/build.make CMakeFiles/NfcPost.dir/Mifare.c.o.provides.build
.PHONY : CMakeFiles/NfcPost.dir/Mifare.c.o.provides

CMakeFiles/NfcPost.dir/Mifare.c.o.provides.build: CMakeFiles/NfcPost.dir/Mifare.c.o

CMakeFiles/NfcPost.dir/GetSerial.c.o: CMakeFiles/NfcPost.dir/flags.make
CMakeFiles/NfcPost.dir/GetSerial.c.o: GetSerial.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/dev/NfcPost/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/NfcPost.dir/GetSerial.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/NfcPost.dir/GetSerial.c.o   -c /home/pi/dev/NfcPost/GetSerial.c

CMakeFiles/NfcPost.dir/GetSerial.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/NfcPost.dir/GetSerial.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/dev/NfcPost/GetSerial.c > CMakeFiles/NfcPost.dir/GetSerial.c.i

CMakeFiles/NfcPost.dir/GetSerial.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/NfcPost.dir/GetSerial.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/dev/NfcPost/GetSerial.c -o CMakeFiles/NfcPost.dir/GetSerial.c.s

CMakeFiles/NfcPost.dir/GetSerial.c.o.requires:
.PHONY : CMakeFiles/NfcPost.dir/GetSerial.c.o.requires

CMakeFiles/NfcPost.dir/GetSerial.c.o.provides: CMakeFiles/NfcPost.dir/GetSerial.c.o.requires
	$(MAKE) -f CMakeFiles/NfcPost.dir/build.make CMakeFiles/NfcPost.dir/GetSerial.c.o.provides.build
.PHONY : CMakeFiles/NfcPost.dir/GetSerial.c.o.provides

CMakeFiles/NfcPost.dir/GetSerial.c.o.provides.build: CMakeFiles/NfcPost.dir/GetSerial.c.o

CMakeFiles/NfcPost.dir/TapPost.c.o: CMakeFiles/NfcPost.dir/flags.make
CMakeFiles/NfcPost.dir/TapPost.c.o: TapPost.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/dev/NfcPost/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/NfcPost.dir/TapPost.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/NfcPost.dir/TapPost.c.o   -c /home/pi/dev/NfcPost/TapPost.c

CMakeFiles/NfcPost.dir/TapPost.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/NfcPost.dir/TapPost.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/dev/NfcPost/TapPost.c > CMakeFiles/NfcPost.dir/TapPost.c.i

CMakeFiles/NfcPost.dir/TapPost.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/NfcPost.dir/TapPost.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/dev/NfcPost/TapPost.c -o CMakeFiles/NfcPost.dir/TapPost.c.s

CMakeFiles/NfcPost.dir/TapPost.c.o.requires:
.PHONY : CMakeFiles/NfcPost.dir/TapPost.c.o.requires

CMakeFiles/NfcPost.dir/TapPost.c.o.provides: CMakeFiles/NfcPost.dir/TapPost.c.o.requires
	$(MAKE) -f CMakeFiles/NfcPost.dir/build.make CMakeFiles/NfcPost.dir/TapPost.c.o.provides.build
.PHONY : CMakeFiles/NfcPost.dir/TapPost.c.o.provides

CMakeFiles/NfcPost.dir/TapPost.c.o.provides.build: CMakeFiles/NfcPost.dir/TapPost.c.o

CMakeFiles/NfcPost.dir/GetJsonNow.c.o: CMakeFiles/NfcPost.dir/flags.make
CMakeFiles/NfcPost.dir/GetJsonNow.c.o: GetJsonNow.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/dev/NfcPost/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/NfcPost.dir/GetJsonNow.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/NfcPost.dir/GetJsonNow.c.o   -c /home/pi/dev/NfcPost/GetJsonNow.c

CMakeFiles/NfcPost.dir/GetJsonNow.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/NfcPost.dir/GetJsonNow.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/dev/NfcPost/GetJsonNow.c > CMakeFiles/NfcPost.dir/GetJsonNow.c.i

CMakeFiles/NfcPost.dir/GetJsonNow.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/NfcPost.dir/GetJsonNow.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/dev/NfcPost/GetJsonNow.c -o CMakeFiles/NfcPost.dir/GetJsonNow.c.s

CMakeFiles/NfcPost.dir/GetJsonNow.c.o.requires:
.PHONY : CMakeFiles/NfcPost.dir/GetJsonNow.c.o.requires

CMakeFiles/NfcPost.dir/GetJsonNow.c.o.provides: CMakeFiles/NfcPost.dir/GetJsonNow.c.o.requires
	$(MAKE) -f CMakeFiles/NfcPost.dir/build.make CMakeFiles/NfcPost.dir/GetJsonNow.c.o.provides.build
.PHONY : CMakeFiles/NfcPost.dir/GetJsonNow.c.o.provides

CMakeFiles/NfcPost.dir/GetJsonNow.c.o.provides.build: CMakeFiles/NfcPost.dir/GetJsonNow.c.o

CMakeFiles/NfcPost.dir/BlinkOk.c.o: CMakeFiles/NfcPost.dir/flags.make
CMakeFiles/NfcPost.dir/BlinkOk.c.o: BlinkOk.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/dev/NfcPost/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/NfcPost.dir/BlinkOk.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/NfcPost.dir/BlinkOk.c.o   -c /home/pi/dev/NfcPost/BlinkOk.c

CMakeFiles/NfcPost.dir/BlinkOk.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/NfcPost.dir/BlinkOk.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/dev/NfcPost/BlinkOk.c > CMakeFiles/NfcPost.dir/BlinkOk.c.i

CMakeFiles/NfcPost.dir/BlinkOk.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/NfcPost.dir/BlinkOk.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/dev/NfcPost/BlinkOk.c -o CMakeFiles/NfcPost.dir/BlinkOk.c.s

CMakeFiles/NfcPost.dir/BlinkOk.c.o.requires:
.PHONY : CMakeFiles/NfcPost.dir/BlinkOk.c.o.requires

CMakeFiles/NfcPost.dir/BlinkOk.c.o.provides: CMakeFiles/NfcPost.dir/BlinkOk.c.o.requires
	$(MAKE) -f CMakeFiles/NfcPost.dir/build.make CMakeFiles/NfcPost.dir/BlinkOk.c.o.provides.build
.PHONY : CMakeFiles/NfcPost.dir/BlinkOk.c.o.provides

CMakeFiles/NfcPost.dir/BlinkOk.c.o.provides.build: CMakeFiles/NfcPost.dir/BlinkOk.c.o

CMakeFiles/NfcPost.dir/BuzzIt.c.o: CMakeFiles/NfcPost.dir/flags.make
CMakeFiles/NfcPost.dir/BuzzIt.c.o: BuzzIt.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/dev/NfcPost/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/NfcPost.dir/BuzzIt.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/NfcPost.dir/BuzzIt.c.o   -c /home/pi/dev/NfcPost/BuzzIt.c

CMakeFiles/NfcPost.dir/BuzzIt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/NfcPost.dir/BuzzIt.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/dev/NfcPost/BuzzIt.c > CMakeFiles/NfcPost.dir/BuzzIt.c.i

CMakeFiles/NfcPost.dir/BuzzIt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/NfcPost.dir/BuzzIt.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/dev/NfcPost/BuzzIt.c -o CMakeFiles/NfcPost.dir/BuzzIt.c.s

CMakeFiles/NfcPost.dir/BuzzIt.c.o.requires:
.PHONY : CMakeFiles/NfcPost.dir/BuzzIt.c.o.requires

CMakeFiles/NfcPost.dir/BuzzIt.c.o.provides: CMakeFiles/NfcPost.dir/BuzzIt.c.o.requires
	$(MAKE) -f CMakeFiles/NfcPost.dir/build.make CMakeFiles/NfcPost.dir/BuzzIt.c.o.provides.build
.PHONY : CMakeFiles/NfcPost.dir/BuzzIt.c.o.provides

CMakeFiles/NfcPost.dir/BuzzIt.c.o.provides.build: CMakeFiles/NfcPost.dir/BuzzIt.c.o

CMakeFiles/NfcPost.dir/timeStrNow.c.o: CMakeFiles/NfcPost.dir/flags.make
CMakeFiles/NfcPost.dir/timeStrNow.c.o: timeStrNow.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/dev/NfcPost/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/NfcPost.dir/timeStrNow.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/NfcPost.dir/timeStrNow.c.o   -c /home/pi/dev/NfcPost/timeStrNow.c

CMakeFiles/NfcPost.dir/timeStrNow.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/NfcPost.dir/timeStrNow.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/dev/NfcPost/timeStrNow.c > CMakeFiles/NfcPost.dir/timeStrNow.c.i

CMakeFiles/NfcPost.dir/timeStrNow.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/NfcPost.dir/timeStrNow.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/dev/NfcPost/timeStrNow.c -o CMakeFiles/NfcPost.dir/timeStrNow.c.s

CMakeFiles/NfcPost.dir/timeStrNow.c.o.requires:
.PHONY : CMakeFiles/NfcPost.dir/timeStrNow.c.o.requires

CMakeFiles/NfcPost.dir/timeStrNow.c.o.provides: CMakeFiles/NfcPost.dir/timeStrNow.c.o.requires
	$(MAKE) -f CMakeFiles/NfcPost.dir/build.make CMakeFiles/NfcPost.dir/timeStrNow.c.o.provides.build
.PHONY : CMakeFiles/NfcPost.dir/timeStrNow.c.o.provides

CMakeFiles/NfcPost.dir/timeStrNow.c.o.provides.build: CMakeFiles/NfcPost.dir/timeStrNow.c.o

CMakeFiles/NfcPost.dir/LogTap.c.o: CMakeFiles/NfcPost.dir/flags.make
CMakeFiles/NfcPost.dir/LogTap.c.o: LogTap.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/dev/NfcPost/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/NfcPost.dir/LogTap.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/NfcPost.dir/LogTap.c.o   -c /home/pi/dev/NfcPost/LogTap.c

CMakeFiles/NfcPost.dir/LogTap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/NfcPost.dir/LogTap.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/dev/NfcPost/LogTap.c > CMakeFiles/NfcPost.dir/LogTap.c.i

CMakeFiles/NfcPost.dir/LogTap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/NfcPost.dir/LogTap.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/dev/NfcPost/LogTap.c -o CMakeFiles/NfcPost.dir/LogTap.c.s

CMakeFiles/NfcPost.dir/LogTap.c.o.requires:
.PHONY : CMakeFiles/NfcPost.dir/LogTap.c.o.requires

CMakeFiles/NfcPost.dir/LogTap.c.o.provides: CMakeFiles/NfcPost.dir/LogTap.c.o.requires
	$(MAKE) -f CMakeFiles/NfcPost.dir/build.make CMakeFiles/NfcPost.dir/LogTap.c.o.provides.build
.PHONY : CMakeFiles/NfcPost.dir/LogTap.c.o.provides

CMakeFiles/NfcPost.dir/LogTap.c.o.provides.build: CMakeFiles/NfcPost.dir/LogTap.c.o

# Object files for target NfcPost
NfcPost_OBJECTS = \
"CMakeFiles/NfcPost.dir/main.c.o" \
"CMakeFiles/NfcPost.dir/Mifare.c.o" \
"CMakeFiles/NfcPost.dir/GetSerial.c.o" \
"CMakeFiles/NfcPost.dir/TapPost.c.o" \
"CMakeFiles/NfcPost.dir/GetJsonNow.c.o" \
"CMakeFiles/NfcPost.dir/BlinkOk.c.o" \
"CMakeFiles/NfcPost.dir/BuzzIt.c.o" \
"CMakeFiles/NfcPost.dir/timeStrNow.c.o" \
"CMakeFiles/NfcPost.dir/LogTap.c.o"

# External object files for target NfcPost
NfcPost_EXTERNAL_OBJECTS =

NfcPost: CMakeFiles/NfcPost.dir/main.c.o
NfcPost: CMakeFiles/NfcPost.dir/Mifare.c.o
NfcPost: CMakeFiles/NfcPost.dir/GetSerial.c.o
NfcPost: CMakeFiles/NfcPost.dir/TapPost.c.o
NfcPost: CMakeFiles/NfcPost.dir/GetJsonNow.c.o
NfcPost: CMakeFiles/NfcPost.dir/BlinkOk.c.o
NfcPost: CMakeFiles/NfcPost.dir/BuzzIt.c.o
NfcPost: CMakeFiles/NfcPost.dir/timeStrNow.c.o
NfcPost: CMakeFiles/NfcPost.dir/LogTap.c.o
NfcPost: CMakeFiles/NfcPost.dir/build.make
NfcPost: NxpRdLib_PublicRelease/build/libnxprd.a
NfcPost: CMakeFiles/NfcPost.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable NfcPost"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/NfcPost.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/NfcPost.dir/build: NfcPost
.PHONY : CMakeFiles/NfcPost.dir/build

CMakeFiles/NfcPost.dir/requires: CMakeFiles/NfcPost.dir/main.c.o.requires
CMakeFiles/NfcPost.dir/requires: CMakeFiles/NfcPost.dir/Mifare.c.o.requires
CMakeFiles/NfcPost.dir/requires: CMakeFiles/NfcPost.dir/GetSerial.c.o.requires
CMakeFiles/NfcPost.dir/requires: CMakeFiles/NfcPost.dir/TapPost.c.o.requires
CMakeFiles/NfcPost.dir/requires: CMakeFiles/NfcPost.dir/GetJsonNow.c.o.requires
CMakeFiles/NfcPost.dir/requires: CMakeFiles/NfcPost.dir/BlinkOk.c.o.requires
CMakeFiles/NfcPost.dir/requires: CMakeFiles/NfcPost.dir/BuzzIt.c.o.requires
CMakeFiles/NfcPost.dir/requires: CMakeFiles/NfcPost.dir/timeStrNow.c.o.requires
CMakeFiles/NfcPost.dir/requires: CMakeFiles/NfcPost.dir/LogTap.c.o.requires
.PHONY : CMakeFiles/NfcPost.dir/requires

CMakeFiles/NfcPost.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/NfcPost.dir/cmake_clean.cmake
.PHONY : CMakeFiles/NfcPost.dir/clean

CMakeFiles/NfcPost.dir/depend:
	cd /home/pi/dev/NfcPost && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/dev/NfcPost /home/pi/dev/NfcPost /home/pi/dev/NfcPost /home/pi/dev/NfcPost /home/pi/dev/NfcPost/CMakeFiles/NfcPost.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/NfcPost.dir/depend

