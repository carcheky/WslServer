@echo off

REM echo  called:  %0
REM echo  drive letter:  %~d0
REM echo  path without the drive letter:  %~p0
REM echo  filename:  %~n0
REM echo  filename's suffix:  %~x0
REM echo  file attributes:  %~a0
REM echo  date+time:  %~t0
REM echo  filesize:  %~z0
REM echo  fully qualified path+filename:  %~dpnx0


SET DRIVE_LETTER=%~d0
SET CDIR=%~p0
SET PARENT_CDIR=%CDIR:~1,-1%
SET LINUX_PATH=/mnt/c/wsl/

@echo on

echo path: %~0

echo DRIVE_LETTER: %DRIVE_LETTER%
echo PARENT_CDIR: %PARENT_CDIR%
echo LINUX_PATH: %LINUX_PATH%


@echo off


wsl --distribution WslServer --user user 'cd %LINUX_PATH% && pwd'


pause