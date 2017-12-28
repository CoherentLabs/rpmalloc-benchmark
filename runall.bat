@echo off
setlocal enabledelayedexpansion
REM set string=rpmalloc,tcmalloc,crt,hoard,nedmalloc
set string=rpmalloc,nedmalloc,crt
:again
for /f "tokens=1* delims=," %%x in ("%string%") do (
	set executable=bin\windows\release\x86-64\benchmark-%%x.exe
	set string=%%y
)

%executable% 1 0 0 2 10000 50000 5000 16 256
%executable% 2 0 0 2 10000 50000 5000 16 256
%executable% 3 0 0 2 10000 50000 5000 16 256
