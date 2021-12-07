@echo off
call  set-llvm-mos.bat
if errorlevel 1 goto end

setlocal
set PATH=%LLVM_MOS%;%PATH%
del ..\build\CMakeCache.txt 2>NUL

cmake -DLLVM_MOS=%LLVM_MOS% -G Ninja -B ..\build -S ..
endlocal

:end
