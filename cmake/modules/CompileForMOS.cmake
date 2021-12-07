function(compile_for_mos)

include_directories(${CMAKE_SOURCE_DIR}/common/include)

# To make ld.lld find libraries on Windows:
set(CMAKE_STATIC_LIBRARY_PREFIX "lib" PARENT_SCOPE)
set(CMAKE_STATIC_LIBRARY_SUFFIX ".a" PARENT_SCOPE)

set(CMAKE_ASM_COMPILER "${LLVM_MOS}/clang" PARENT_SCOPE)
set(CMAKE_C_COMPILER "${LLVM_MOS}/clang" PARENT_SCOPE)
set(CMAKE_CXX_COMPILER "${LLVM_MOS}/clang" PARENT_SCOPE)
set(CMAKE_AR "${LLVM_MOS}/llvm-ar" PARENT_SCOPE)
set(CMAKE_RANLIB "${LLVM_MOS}/llvm-ranlib" PARENT_SCOPE)

set(CMAKE_ASM_FLAGS "--target=mos ${LLVM_MOS_ARCH_FLAGS}" PARENT_SCOPE)
set(CMAKE_C_FLAGS "--target=mos ${LLVM_MOS_ARCH_FLAGS} -flto -Os" PARENT_SCOPE)
set(CMAKE_CXX_FLAGS "--target=mos ${LLVM_MOS_ARCH_FLAGS} -flto -Os" PARENT_SCOPE)

# We don't want extra compiler flags for the host platform to be applied in cross compilation:
set(CMAKE_ASM_FLAGS_DEBUG   "" PARENT_SCOPE)
set(CMAKE_C_FLAGS_DEBUG     "" PARENT_SCOPE)
set(CMAKE_CXX_FLAGS_DEBUG   "" PARENT_SCOPE)
set(CMAKE_ASM_FLAGS_RELEASE "" PARENT_SCOPE)
set(CMAKE_C_FLAGS_RELEASE   "" PARENT_SCOPE)
set(CMAKE_CXX_FLAGS_RELEASE "" PARENT_SCOPE)

endfunction()
