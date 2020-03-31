$TARGET_DIR=$env:APPDATA+'\WslServer'
echo $TARGET_DIR

wsl --unregister WslServer
if( $TARGET_DIR -eq $env:APPDATA+'\WslServer' ){
    rmdir /s /q $TARGET_DIR
}

curl https://aka.ms/wsl-ubuntu-1804 -L -o install.zip
powershell -Command Expand-Archive -Force install.zip

if( $TARGET_DIR -eq $null ){
    mkdir $TARGET_DIR
}

wsl --import WslServer $TARGET_DIR .\install\install.tar.gz
wsl -s WslServer
wsl --upgrade WslServer

:exit
del install.zip
rd /s /q install
pause
popd