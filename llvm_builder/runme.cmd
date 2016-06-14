@setlocal
@echo on

@if not "%VS120COMNTOOLS%"=="" set vcvarsall=%VS120COMNTOOLS%\..\..\VC\vcvarsall.bat
call "%vcvarsall%"

:: XXX: This presumes LLVM 3.8.0 is installed in the default dir.  Modify accordingly.
@set LLVM_VERSION=3.9.0
@set LLVM_DIR=%ProgramFiles(x86)%\LLVM

@set Path=%LLVM_DIR%\bin;%Path%
@set Path=%LLVM_DIR%\lib\clang\%LLVM_VERSION%\lib\windows;%Path%

@if exist main.exe del main.exe
clang-cl /Zi /MD main.cpp -fsanitize=address /link

@endlocal
