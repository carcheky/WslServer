@echo off
pushd "%~dp0"

@echo on
echo "Desistalando WslServer anterior, espera..."
@echo off

set TARGET_DIR=%APPDATA%\WslServer
wsl --unregister WslServer
if exist %TARGET_DIR% rmdir /s /q %TARGET_DIR%

@echo on
echo "Importando Backup WslServer, espera..."
@echo off
curl https://aka.ms/wsl-ubuntu-1804 -L -o
wsl --import WslServer %APPDATA%\WslServer WslServer.tar.gz

ping 127.0.0.1 -n 6 > nul
@echo on
echo "Estableciendo WslServer por defecto, espera..."
@echo off
wsl -s WslServer

ping 127.0.0.1 -n 6 > nul

@echo on
echo "seleccionando usuario..."
@echo off
powershell C:\wsl\user\ccktools\cmd-tools\scripts\wsl\CAUTION\set-default-user.ps1

ping 127.0.0.1 -n 6 > nul
:exit
exit
::popd
@echo on
