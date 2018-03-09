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
ms.date: 03/09/2018
---

# Frequently asked questions and troubleshooting Windows Analytics

This topic compiles the most common issues encountered with configuring and using Windows Analytics, as well as general questions.

## Troubleshooting common problems

If you've followed the steps in the [Enrolling devices in Windows Analytics](windows-analytics-get-started.md) topic and are still encountering problems, you might find the solution here.

[Devices not showing up](#devices-not-showing-up)

[Device Health data not appearing](#device-health-data-not-appearing)

[Upgrade Readiness reports outdated updates](#upgrade-readiness-reports-outdated-updates)

[Upgrade Readiness reports incomplete inventory](#upgrade-readiness-reports-incomplete-inventory)

[Upgrade Readiness doesn't show app inventory data on some devices](#upgrade-readiness-doesnt-show-app-inventory-data-on-some-devices)

[Upgrade Readiness doesn't show IE site discovery data from some devices](#upgrade-readiness-doesnt-show-ie-site-discovery-data-from-some-devices)


### Devices not showing up

In Log Analytics, go to **Settings > Connected sources > Windows telemetry** and verify that you are subscribed to the Windows Analytics solutions you intend to use.

Even though devices can take 2-3 days after enrollment to show up due to latency in the system, you can now verify the status of your devices with a few hours of running the deployment script as described in [You can now check on the status of your computers within hours of running the deployment script](https://blogs.technet.microsoft.com/upgradeanalytics/2017/05/12/wheres-my-data/) on the Windows Analytics blog.
 
If devices are not showing up as expected, find a representative device and rerun the latest Upgrade Readiness deployment script (TODO - merge topic form here - but clarify the last step of "contact support" should only be done if all other tshooting steps in this topic don't work). [MERGE WHAT EXACTLY FROM WHERE?]

- In the collected logs, the filename with a GUID has clear text that can be read to uncover common issues, so it's worth checking these logs prior to opening a support ticket.
- If you think the issue might be related a network proxy, check the endpoint connectivity(#Endpoint-connectivity). Also see [Understanding connectivity scenarios and the deployment script](https://blogs.technet.microsoft.com/upgradeanalytics/2017/03/10/understanding-connectivity-scenarios-and-the-deployment-script/) on the Windows Analytics blog. [WHY IS THAT BLOG POST LISTING DIFFERENT ENDPOINTS THAN WE ARE DOCUMENTING?]

### Device Health data not appearing

#### Is WER disabled?
If Windows Error Reporting (WER) is disabled or redirected on your Windows devices, then reliability information cannot be shown in Device Health.

Check these registry settings in **HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Windows Error Reporting**:

- Verify that the value "Disabled" (REG_DWORD), if set, is 0.
- Verify that the value "DontSendAdditionalData" (REG_DWORD), if set, is 0.
- Verify that the value "CorporateWERServer" (REG_SZ) is not configured.

If you need further information on Windows Error Reporting (WER) settings, see WER Settings. 

#### Endpoint connectivity

Devices must be able to reach the endpoints specified in [Enrolling devices in Windows Analytics](windows-analytics-get-started.md).

If you are using proxy server authentication, it is worth taking extra care to check the configuration. Prior to Windows 10, version 1703, WER uploads error reports in the machine context. Both user (typically authenticated) and machine (typically anonymous) contexts require access through proxy servers to the diagnostic endpoints. In Windows 10, version 1703, and later WER will attempt to use the context of the user that is logged on for proxy authentication such that only the user account requires proxy access.
 
Therefore, it's important to ensure that both machine and user accounts have access to the endpoints using authentication (or to whitelist the endpoints so that outbound proxy authentication is not required). For suggested methods, see (windows-analytics-get-started.md#Configuring endpoint access with proxy servers)
 
To test access as a given user, you can run this Windows PowerShell cmdlet *while logged on as that user*: 

```powershell

$endPoints = @(
        'v10.vortex-win.data.microsoft.com'
        'vortex-win.data.microsoft.com'
        'settings-win.data.microsoft.com'
        'adl.windows.com'
        'watson.telemetry.microsoft.com'
        'oca.telemetry.microsoft.com'
        'v10.events.data.microsoft.com'
    )

$endPoints | %{ Test-NetConnection -ComputerName $_ -Port 443 -ErrorAction Continue } | Select-Object -Property ComputerName,TcpTestSucceeded

```

If this is successful, `TcpTestSucceeded` should return `True` for each of the endpoints.

To test access in the machine context (requires administrative rights), run the above as SYSTEM using PSexec or Task Scheduler, as in this example:

```powershell

[scriptblock]$accessTest = {
    $endPoints = @(
        'v10.vortex-win.data.microsoft.com'
        'vortex-win.data.microsoft.com'
        'settings-win.data.microsoft.com'
        'adl.windows.com'
        'watson.telemetry.microsoft.com'
        'oca.telemetry.microsoft.com'
        'v10.events.data.microsoft.com'
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

```

As in the other example, if this is successful, `TcpTestSucceeded` should return `True` for each of the endpoints.

### Upgrade Readiness reports outdated updates
Currently, updates are not automatically updated by Microsoft Update, so new versions need to be downloaded from the Microsoft Update catalog and distributed via your management tool of choice. Note that the compatibility update retains the same KB number when it is updated, so even if the update is installed on your devices, *they might not be running the latest version*.


### Upgrade Readiness reports incomplete inventory
Download the latest deployment script and run it on an affected device to check for issues. If this becomes a recurring issue, schedule a full inventory scan monthly, as per the device enrollment guidelines for deployment at scale.





### Upgrade Readiness doesn't show app inventory data on some devices
Upgrade Readiness only collects app inventory on devices that are not yet upgraded to the target operating system version specified in the Upgrade Readiness Overview blade. This is because Upgrade Readiness targets upgrade planning (for devices not yet upgraded).


### Upgrade Readiness doesn't show IE site discovery data from some devices
Double-check that IE site discovery opt-in has been configured in the deployment script.
Also, on Windows 10 devices remember that IE site discovery requires data diagnostics set to the Enhanced level.
Finally, Upgrade Readiness only collects IE site discovery data on devices that are not yet upgraded to the target operating system version specified in the Upgrade Readiness Overview blade. This is because Upgrade Readiness targets upgrade planning (for devices not yet upgraded).

[comment]: # (Device names are not showing up properly? Starting with Windows 10 1803, the device name is no longer collected by default and requires a separate opt-in by setting HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection\AllowDeviceNameInTelemetry:DWORD == 1. This is done by default if you run the latest version of the deployment script, or can be set via policy. If the policy is not set, then the device name will show up as "Unknown (aka.ms/analyticsDeviceName)")

## Other common questions

### What are the requirements and costs for Windows Analytics solutions?
| Windows Analytics solution| Windows license requirements | Windows version requirements | Diagnostic data requirements |
|----------------------|-----------------------------------|------------------------------|------------------------------|
| Upgrade Readiness | [??? EDITION?]  |  Windows 7 with Service Pack 1, Windows 8, Windows 10 | Basic level in most cases; Enhanced level to support Windows 10 app usage data and IE site discovery |
|  Update Compliance | [??? EDITION?] | Windows 10 | Basic level in most cases; Enhanced level to support Windows Defender AV data if using [1607 pre-Oct-EXACTLY WHAT RELEASE IS THIS?]. |
| Device Health  | [??? EDITION?]  |  E3 or [EXACTLY WHICH E LICENSES?] | Windows 10 | Enhanced level |

>[!NOTE]
> Regarding licensing requirements for Device Health, you do not need per-seat licensing, but only enough licenses to cover your total device usage. For example, if you have 100 E3 licenses, you can monitor 100 devices with Device Health.

Beyond the cost of Windows operating system licenses, there is no additional cost for using Windows Analytics. In Azure Log Analytics, Windows Analytics is "zero-rated;" this means it is excluded from data limits and costs regardless of the Azure Log Analytics pricing tier you have chosen.

### How does Windows Analytics support privacy?

Windows Analytics is fully committed to privacy, centering on these tenets:

- **Transparency:** We fully document the Windows Analytics diagnostic events [LINK?] so you can review them with your company’s security and compliance teams. The Diagnostic Data Viewer lets you see diagnostic data sent from a given device (see [Diagnostic Data Viewer Overview](https://docs.microsoft.com/windows/configuration/diagnostic-data-viewer-overview) for details).
- **Control:** You ultimately control the level of diagnostic data you wish to share. In Windows 10 1709 we added a new policy to Limit enhanced diagnostic data to the minimum required by Windows Analytics
- **Security:** Your data is protected with strong security and encryption
- **Trust:** Windows Analytics supports the Microsoft Online Service Terms

### Can Windows Analytics be used without a direct client connection to the Microsoft Data Management Service?
No

### Can I chose the data center location?
Yes for Azure Log Analytics, but no for the Microsoft Data Management Service (which is hosted in the US).