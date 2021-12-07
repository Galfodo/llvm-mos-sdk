cmake_minimum_required(VERSION 3.10)

if (NOT DEFINED LLVM_MOS)
	message(FATAL_ERROR "LLVM_MOS must be set to the LLVM binary directory.")
endif()

if (WIN32)
    set(REPLACE "\\" "/" _llvm_mos "${LLVM_MOS}")
	set(CMAKE_RC_COMPILER "${_llvm_mos}/clang.exe")
endif ()

project(llvm-mos-sdk LANGUAGES C CXX ASM)

set(CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake/modules)

# Place all binaries in {build}/bin.
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

add_subdirectory(common)
add_subdirectory(commodore)
add_subdirectory(atari)
add_subdirectory(sim)
