@ECHO OFF
echo This file must be run with Administrator privileges

CALL set-llvm-mos.bat
IF errorlevel 1 goto notfound

if exist clang-mos.exe del clang-mos.exe
if exist ld.lld del ld.lld

mklink clang-mos.exe "%LLVM_MOS%\clang.exe"
mklink ld.lld "%LLVM_MOS%\ld.lld.exe"

:notfound

