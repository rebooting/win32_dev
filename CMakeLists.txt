cmake_minimum_required(VERSION 3.10)
project(Win32Dev)

# Set the system name to Windows for cross-compilation
set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_SYSTEM_PROCESSOR x86)

# Specify the cross compilers (these should be available in your container)
set(CMAKE_C_COMPILER i686-w64-mingw32-gcc)
set(CMAKE_CXX_COMPILER i686-w64-mingw32-g++)
set(CMAKE_RC_COMPILER i686-w64-mingw32-windres)

# Set the target environment and search paths
set(CMAKE_FIND_ROOT_PATH /usr/i686-w64-mingw32)
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# Set C standard
set(CMAKE_C_STANDARD 11)

# Add the Windows subsystem flag to create a GUI application without console
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -mwindows")

# Add executable
add_executable(Win32Dev src/main.c)

# Set output name to include .exe extension explicitly
set_target_properties(Win32Dev PROPERTIES OUTPUT_NAME "Win32Dev" SUFFIX ".exe")