@echo off
if NOT "%LLVM_MOS%"=="" GOTO _found
pushd ..\..
set _LLVM_ROOT_DIR=%CD%\llvm-mos
echo No LLVM_MOS set
echo Trying %_LLVM_ROOT_DIR%
popd
if exist %_LLVM_ROOT_DIR%\bin\clang.exe set LLVM_MOS=%_LLVM_ROOT_DIR%\bin
if exist %_LLVM_ROOT_DIR%\build\bin\clang.exe set LLVM_MOS=%_LLVM_ROOT_DIR%\build\bin
if NOT "%LLVM_MOS%"=="" GOTO _found
echo llvm-mos not found.
exit /B 1 
:_found
echo LLVM_MOS=%LLVM_MOS%
exit /B 0
