---
title: Frequently asked questions and troubleshooting Windows Analytics
description: Frequently asked questions about Windows Analytics and steps to take when things go wrong
keywords: windows analytics, oms, operations management suite, prerequisites, requirements, updates, upgrades, log analytics, health, FAQ, problems, troubleshooting, error
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: jaimeo
ms.author: jaimeo
ms.date: 03/07/2018
---

# Frequently asked questions and troubleshooting Windows Analytics

## Troubleshooting common problems

### Devices Not Showing Up

In Log Analytics, go to the settings/connected sources/windows telemetry and verify that you are subscribed to the Windows Analytics solutions you intend to use.

Even though devices can take a 2-3 days after enrolled to show up due to latency in the system, you can now check out the status of your devices with a few hours of running the deployment script as described in  https://blogs.technet.microsoft.com/upgradeanalytics/2017/05/12/wheres-my-data/. If you see an error message in the report saying "Sorry! We’re not recognizing your Commercial Id.", try unsubscribing and then re-subscribing to Upgrade Readiness from the OMS settings/connected sources/windows telemetry page.

If devices are not showing up as expected, find a representative device and rerun the latest Upgrade Readiness deployment script (TODO - merge topic form here - but clarify the last step of "contact support" should only be done if all other tshooting steps in this topic don't work). Some additional notes to fold in:
	• In the collected logs, the file name with a GUID has clear text that can be read to uncover common issues, so it's worth looking through this for "self-help" before opening a support ticket.
	• Troubleshooting network proxy issues is one of the trickiest things to pin down since it's a common trap that can't be determined purely from the device. See https://blogs.technet.microsoft.com/upgradeanalytics/2017/03/10/understanding-connectivity-scenarios-and-the-deployment-script/.



### Upgrade Readiness reports outdated updates
Currently, updates are not auto-updated by Microsoft Update; so new versions need to be downloaded from the Microsoft Update catalog and distributed via your management tool of choice. Note that the compatibility update retains the same KB number when it is updated, so even if the update is installed on your devices, they might not be running the latest version.


### Upgrade Readiness reports incomplete inventory
Download the latest deployment script and run it on an affected device to check for issues. If this becomes a recurring issue, make sure to schedule a full inventory scan monthly, as per the device enrollment guidelines for deployment at scale.


### Device Health Data Not Showing Up
Check for disabled Windows Error Reporting (WER)
If WER is disabled or redirected on your Windows devices, then reliability information cannot be shown in Device Health. 
Check these Registry settings in HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Windows Error Reporting: 
	• Verify that the value "Disabled" (REG_DWORD), if set, is 0.
	• Verify that the value "DontSendAdditionalData" (REG_DWORD), if set, is 0.
	• Verify that the value "CorporateWERServer" (REG_SZ) is not configured.
If you need further information on Windows Error Reporting (WER) settings, see WER Settings. 
Endpoint connectivity
Devices must be able to reach the endpoints specified in the device configuration topic.
Note 
If your deployment includes devices running Windows 10 versions prior to Windows 10, version 1703, you must exclude authentication for the endpoints listed in Step 3 of the "Device Health prerequisites" section of this topic. Windows Error Reporting did not support authenticating proxies until Windows 10, version 1703. (for more information, see Configure Windows diagnostic data in your organization. 
If you are using proxy server authentication, it is worth taking extra care to check the configuration. Prior to Windows 10, version 1703, WER uploads error reports in the machine context. Both user (typically authenticated) and machine (typically anonymous) contexts require access through proxy servers to the diagnostic endpoints. In Windows 10, version 1703, and later WER will attempt to use the context of the user that is logged on for proxy authentication such that only the user account requires proxy access. 
Therefore, it's important to ensure that both machine and user accounts have access to the endpoints using authentication (or to whitelist the endpoints so that outbound proxy authentication is not required). 
To test access as a given user, you can run this Windows PowerShell cmdlet while logged on as that user: 
PowerShell Copy 

$endPoints = @(
        'watson.telemetry.microsoft.com'
        'oca.telemetry.microsoft.com'
    )
$endPoints | %{ Test-NetConnection -ComputerName $_ -Port 443 -ErrorAction Continue } | Select-Object -Property ComputerName,TcpTestSucceeded
If this is successful, TcpTestSucceeded should return True for each of the endpoints. 
To test access in the machine context (requires administrative rights), run the above as SYSTEM using PSexec or Task Scheduler, as in this example: 
PowerShell Copy 

[scriptblock]$accessTest = {
    $endPoints = @(
        'watson.telemetry.microsoft.com'
        'oca.telemetry.microsoft.com'
    )
$endPoints | %{ Test-NetConnection -ComputerName $_ -Port 443 -ErrorAction Continue } | Select-Object -Property ComputerName,TcpTestSucceeded
}
$scriptFullPath = Join-Path $env:ProgramData "TestAccessToMicrosoftEndpoints.ps1"
$outputFileFullPath = Join-Path $env:ProgramData "TestAccessToMicrosoftEndpoints_Output.txt"
$accessTest.ToString() > $scriptFullPath
$null > $outputFileFullPath
$taskAction = New-ScheduledTaskAction -Execute 'powershell.exe' -Argument "-ExecutionPolicy Bypass -Command `"&{$scriptFullPath > $outputFileFullPath}`"" 
$taskTrigger = New-ScheduledTaskTrigger -Once -At (Get-Date).Addseconds(10)
$task = Register-ScheduledTask -User 'NT AUTHORITY\SYSTEM' -TaskName 'MicrosoftTelemetryAccessTest' -Trigger $taskTrigger -Action $taskAction -Force
Start-Sleep -Seconds 120
Unregister-ScheduledTask -TaskName $task.TaskName -Confirm:$false
Get-Content $outputFileFullPath
As in the other example, if this is successful, TcpTestSucceeded should return True for each of the endpoints


### Upgrade Readiness doesn't show app inventory data on some devices
Note: Upgrade Readiness only collects app inventory on devices that are not yet upgraded to the target OS version specified in the Upgrade Readiness Overview blade. This is because Upgrade Readiness targets upgrade planning (for devices not yet upgraded).


### Upgrade Readiness doesn't show IE site discovery data from some devices
Please double check that IE site discovery opt-in has been configured in the deployment script.
Also, on Windows 10 devices remember that IE site discovery requires enhanced telemetry.
Finally, Upgrade Readiness only collects IE site discovery data on devices that are not yet upgraded to the target OS version specified in the Upgrade Readiness Overview blade. This is because Upgrade Readiness targets upgrade planning (for devices not yet upgraded).

[comment]: # (Device names are not showing up properly? Starting with Windows 10 1803, the device name is no longer collected by default and requires a separate opt-in by setting HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection\AllowDeviceNameInTelemetry:DWORD == 1. This is done by default if you run the latest version of the deployment script, or can be set via policy. If the policy is not set, then the device name will show up as "Unknown (aka.ms/analyticsDeviceName)")

