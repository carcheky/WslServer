@echo off
echo  called:  %0
echo  drive letter:  %~d0
echo  path without the drive letter:  %~p0
echo  filename:  %~n0
echo  filename's suffix:  %~x0
echo  file attributes:  %~a0
echo  date+time:  %~t0
echo  filesize:  %~z0
echo  fully qualified path+filename:  %~dpnx0



wsl --distribution WslServer --user user cd %~dpnx0 && pwd


pause