
echo seleccionando usuario...

sleep 13

Get-ItemProperty Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Lxss\*\ DistributionName | Where-Object -Property DistributionName -eq WslServer | Set-ItemProperty -Name DefaultUid -Value ((wsl -d WslServer -u user -e id -u) | Out-String);

sleep 13
