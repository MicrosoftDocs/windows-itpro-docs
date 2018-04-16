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
ms.date: 04/03/2018
---

# Frequently asked questions and troubleshooting Windows Analytics

This topic compiles the most common issues encountered with configuring and using Windows Analytics, as well as general questions. This FAQ, along with the [Windows Analytics Technical Community](https://techcommunity.microsoft.com/t5/Windows-Analytics/ct-p/WindowsAnalytics), are recommended resources to consult before contacting Microsoft support.

## Troubleshooting common problems

If you've followed the steps in the [Enrolling devices in Windows Analytics](windows-analytics-get-started.md) topic and are still encountering problems, you might find the solution here.

[Devices not showing up](#devices-not-showing-up)

[Device Health crash data not appearing](#device-health-crash-data-not-appearing)

[Upgrade Readiness reports outdated updates](#upgrade-readiness-reports-outdated-updates)

[Upgrade Readiness shows many "Computers with outdated KB"](#upgrade-readiness-shows-many-computers-with-outdated-kb)

[Upgrade Readiness doesn't show app inventory data on some devices](#upgrade-readiness-doesnt-show-app-inventory-data-on-some-devices)

[Upgrade Readiness doesn't show IE site discovery data from some devices](#upgrade-readiness-doesnt-show-ie-site-discovery-data-from-some-devices)

[Disable Upgrade Readiness](#disable-upgrade-readiness)

[Exporting large data sets](#exporting-large-data-sets)


### Devices not showing up

In Log Analytics, go to **Settings > Connected sources > Windows telemetry** and verify that you are subscribed to the Windows Analytics solutions you intend to use.

Even though devices can take 2-3 days after enrollment to show up due to latency in the system, you can now verify the status of your devices with a few hours of running the deployment script as described in [You can now check on the status of your computers within hours of running the deployment script](https://blogs.technet.microsoft.com/upgradeanalytics/2017/05/12/wheres-my-data/) on the Windows Analytics blog.
>[!NOTE]
> If you generate the status report and get an error message saying "Sorry! We’re not recognizing your Commercial Id," please go to **Settings > Connected sources > Windows telemetry** and unsubscribe, wait a minute and then re-subscribe to Upgrade Readiness. This is a known issue and we are working on a fix.
 
If devices are not showing up as expected, find a representative device and follow these steps to run the latest pilot version of the Upgrade Readiness deployment script on it to troubleshoot issues:

1. Download and extract the [Upgrade Readiness Deployment Script](https://www.microsoft.com/download/details.aspx?id=53327). Ensure that the **Pilot/Diagnostics** folder is included.
2. Edit the script as described in [Upgrade Readiness deployment script](../upgrade/upgrade-readiness-deployment-script.md).
3. Check that `isVerboseLogging` is set to `$true`.
4. Run the script again. Log files will be saved to the directory specified in the script.
5. Check the output of the script in the command window and/or log **UA_dateTime_machineName.txt** to ensure that all steps were completed successfully.
6. If you are still seeing errors you can't diagnose, then consider open a support case with Microsoft Support through your regular channel and provide this information.

If you want to check a large number of devices, you should run the latest script at scale from your management tool of choice (for example, System Center Configuration Manager) and check the results centrally.

If you think the issue might be related to a network proxy, check "Enable data sharing" section of the [Enrolling devices in Windows Analytics](windows-analytics-get-started.md) topic. Also see [Understanding connectivity scenarios and the deployment script](https://blogs.technet.microsoft.com/upgradeanalytics/2017/03/10/understanding-connectivity-scenarios-and-the-deployment-script/) on the Windows Analytics blog.

If you have deployed images that have not been generalized, then many of them might have the same ID and so analytics will see them as one device. If you suspect this is the issue, then you can reset the IDs on the non-generalized devices by performing these steps:
1. Net stop diagtrack
2. Reg delete hklm\software\microsoft\sqmclient /v MachineId /f
3. Net start diagtrack


### Device Health crash data not appearing

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
 
Therefore, it's important to ensure that both machine and user accounts have access to the endpoints using authentication (or to whitelist the endpoints so that outbound proxy authentication is not required). For suggested methods, see [Enrolling devices in Windows Analytics](windows-analytics-get-started.md#configuring-endpoint-access-with-proxy-servers).
 
To test access as a given user, you can run this Windows PowerShell cmdlet *while logged on as that user*: 

```powershell

$endPoints = @(
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

### Upgrade Readiness shows many "Computers with outdated KB"
If you see a large number of devices reported as shown in this screenshot of the Upgrade Readiness tile:

[![Upgrade Readiness tile showing Computers with outdated KB datum in red box](images/outdated_outdated.png)](images/outdated_outdated.png)

On Windows 7 SP1 and Windows 8.1 devices, you must deploy the compatibility update as described in [Enrolling devices in Windows Analytics](windows-analytics-get-started.md).

Note that the compatibility update retains the same KB number when a new version is released, so even if the update is installed on your devices, *they might not be running the latest version*. The compatibility update is now a critical update, so you can check that the latest version is installed from your management tool.


### Upgrade Readiness shows many "Computers with incomplete data"
If you see a large number of devices reported as shown in this screenshot of the Upgrade Readiness tile:

[![Upgrade Readiness tile showing Computers with incomplete data datum in red box](images/outdated_incomplete.png)](images/outdated_incomplete.png)

Download the latest deployment script and run it on an affected device to check for issues. See the [Upgrade Readiness deployment script](../upgrade/upgrade-readiness-deployment-script.md) topic for information about obtaining and running the script, and for a description of the error codes that can be displayed. Remember to wait up to 48-72 hours to see the results.
See ["Understanding connectivity scenarios and the deployment script"](https://blogs.technet.microsoft.com/upgradeanalytics/2017/03/10/understanding-connectivity-scenarios-and-the-deployment-script/) on the Windows Analytics blog for a summary of setting the ClientProxy for the script, which will enable the script properly check for diagnostic data endpoint connectivity.


If this becomes a recurring issue, schedule a full inventory scan monthly, as per the device enrollment guidelines for deployment at scale.



### Upgrade Readiness doesn't show app inventory data on some devices
Upgrade Readiness only collects app inventory on devices that are not yet upgraded to the target operating system version specified in the Upgrade Readiness Overview blade. This is because Upgrade Readiness targets upgrade planning (for devices not yet upgraded).


### Upgrade Readiness doesn't show IE site discovery data from some devices
Double-check that IE site discovery opt-in has been configured in the deployment script. (See the [Upgrade Readiness deployment script](../upgrade/upgrade-readiness-deployment-script.md) topic for information about obtaining and running the script, and for a description of the error codes that can be displayed. See ["Understanding connectivity scenarios and the deployment script"](https://blogs.technet.microsoft.com/upgradeanalytics/2017/03/10/understanding-connectivity-scenarios-and-the-deployment-script/) on the Windows Analytics blog for a summary of setting the ClientProxy for the script, which will enable the script properly check for diagnostic data endpoint connectivity.)

Also, on Windows 10 devices remember that IE site discovery requires data diagnostics set to the Enhanced level.
Finally, Upgrade Readiness only collects IE site discovery data on devices that are not yet upgraded to the target operating system version specified in the Upgrade Readiness Overview blade. This is because Upgrade Readiness targets upgrade planning (for devices not yet upgraded).

### Device Names don't show up on Windows 10 devices
Starting with the build currently available in the Windows Insider Program, the device name is no longer collected by default and requires a separate opt-in. For more information, see [Enrolling devices in Windows Analytics](windows-analytics-get-started.md).

### Disable Upgrade Readiness

If you want to stop using Upgrade Readiness and stop sending diagnostic data data to Microsoft, follow these steps:

1.  Unsubscribe from the Upgrade Readiness solution in the OMS portal. In the OMS portal, go to **Settings** > **Connected Sources** > **Windows Telemetry** and choose the **Unsubscribe** option.

  ![Upgrade Readiness unsubscribe](images/upgrade-analytics-unsubscribe.png)

2.  Disable the Commercial Data Opt-in Key on computers running Windows 7 SP1 or 8.1. On computers running Windows 10, set the diagnostic data level to **Security**:

  **Windows 7 and Windows 8.1**: Delete CommercialDataOptIn registry property from *HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection*
  **Windows 10**: Follow the instructions in the [Configure Windows diagnostic data in your organization](/configuration/configure-windows-diagnostic-data-in-your-organization.md) topic.

3.	If you enabled **Internet Explorer Site Discovery**, you can disable Internet Explorer data collection by setting the *IEDataOptIn* registry key to value "0".  The IEDataOptIn key can be found under: *HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection*.
4.	**Optional step:** You can also remove the “CommercialId” key from: "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection". 

### Exporting large data sets

Azure Log Analytics is optimized for advanced analytics of large data sets and can efficiently generate summaries and analytics for them. The query language is not optimized (or intended) for returning large raw data sets and has built-in limits to protect against overuse. There are times when it might be necessary to get more data than this, but that should be done sparingly since this is not the intended way to use Azure Log Analytics. The following code snippet shows how to retrieve data from UAApp one “page” at a time:

```
let snapshot = toscalar(UAApp | summarize max(TimeGenerated));
let pageSize = 100000;
let pageNumber = 0;
 
UAApp
| where TimeGenerated == snapshot and IsRollup==true and RollupLevel=="Granular" and Importance == "Low install count"
| order by AppName, AppVendor, AppVersion desc
| serialize
| where row_number(0) >= (pageSize * pageNumber)
| take pageSize
```

 

## Other common questions

### What are the requirements and costs for Windows Analytics solutions?
| Windows Analytics solution| Windows license requirements | Windows version requirements | Minimum diagnostic data requirements |
|----------------------|-----------------------------------|------------------------------|------------------------------|
| Upgrade Readiness | No additional requirements  |  Windows 7 with Service Pack 1, Windows 8.1, Windows 10 | Basic level in most cases; Enhanced level to support Windows 10 app usage data and IE site discovery |
|  Update Compliance | No additional requirements | Windows 10 | Basic level |
| Device Health  |  **Any** of the following licenses: <br>- Windows 10 Enterprise or Windows 10 Education per-device with active Software Assurance<br>- Windows 10 Enterprise E3 or E5 per-device or per-user subscription (including Microsoft 365 F1, E3, or E5)<br>- Windows 10 Education A3 or A5 (including Microsoft 365 Education A3 or A5)<br>- Windows VDA E3 or E5 per-device or per-user subscription<br>- Windows Server 2016 or later    | Windows 10 | - For Windows 10 version 1709 or later: Enhanced (Limited)<br>- For earlier versions: Enhanced

>[!NOTE]
> Regarding licensing requirements for Device Health, you do not need per-seat licensing, but only enough licenses to cover your total device usage. For example, if you have 100 E3 licenses, you can monitor 100 devices with Device Health.

Beyond the cost of Windows operating system licenses, there is no additional cost for using Windows Analytics. Within Azure Log Analytics, Windows Analytics is "zero-rated;" this means it is excluded from data limits and costs regardless of the Azure Log Analytics pricing tier you have chosen. To be more specific, Azure Log Analytics is available in different pricing tiers as described in [Pricing - Log Analytics](https://azure.microsoft.com/pricing/details/log-analytics/).
- If you are using the free tier, which has a cap on the amount of data collected per day, the Windows Analytics data will not count towards this cap. You will be able to collect all the Windows Analytics data from your devices and still have the full cap available for collecting additional data from other sources.
- If you are using a paid tier that charges per GB of data collected, the Windows Analytics data will not be charged. You will be able to collect all the Windows Analytics data from your devices and not incur any costs.

Note that different Azure Log Analytics plans have different data retention periods, and the Windows Analytics solutions inherit the workspace's data retention policy. So, for example, if your workspace is on the free plan then Windows Analytics will retain the last week's worth of "daily snapshots" that are collected in the workspace.


### How does Windows Analytics support privacy?

Windows Analytics is fully committed to privacy, centering on these tenets:

- **Transparency:** We fully document the Windows Analytics diagnostic events (see the links for additional information) so you can review them with your company’s security and compliance teams. The Diagnostic Data Viewer lets you see diagnostic data sent from a given device (see [Diagnostic Data Viewer Overview](https://docs.microsoft.com/windows/configuration/diagnostic-data-viewer-overview) for details).
- **Control:** You ultimately control the level of diagnostic data you wish to share. In Windows 10 1709 we added a new policy to Limit enhanced diagnostic data to the minimum required by Windows Analytics
- **Security:** Your data is protected with strong security and encryption
- **Trust:** Windows Analytics supports the Microsoft Online Service Terms

The following illustration shows how diagnostic data flows from individual devices through the Diagnostic Data Service, Azure Log Analytics storage, and to your Log Analytics workspace:

[![Diagram illustrating flow of diagnostic data from devices](images/WA-data-flow-v1.png)](images/WA-data-flow-v1.png)

The data flow sequence is as follows:

1.	Diagnostic data is sent from devices to the Microsoft Diagnostic Data Management service, which is hosted in the US.
2.	An IT administrator creates an Azure Log Analytics workspace. The administrator chooses the location, copies the Commercial ID (which identifies that workspace), and then pushes Commercial ID to devices they want to monitor. This is the mechanism that specifies which devices appear in which workspaces.
3.	Each day Microsoft produces a "snapshot" of IT-focused insights for each workspace in the Diagnostic Data Management service.
4.	These snapshots are copied to transient storage which is used only by Windows Analytics (also hosted in US data centers) where they are segregated by Commercial ID.
5.	The snapshots are then copied to the appropriate Azure Log Analytics workspace.
6.	If the IT administrator is using the Upgrade Readiness solution, user input from the IT administrator (specifically, the target operating system release and the importance and upgrade readiness per app) is stored in the Windows Analytics Azure Storage. (Upgrade Readiness is the only Windows Analytics solution that takes such user input.)


See these topics for additional background information about related privacy issues:

- [Configure Windows diagnostic data in your organization](https://docs.microsoft.com/windows/configuration/configure-windows-diagnostic-data-in-your-organization)
- [Windows 7, Windows 8, and Windows 8.1 Appraiser Telemetry Events, and Fields](https://go.microsoft.com/fwlink/?LinkID=822965) (link downloads a PDF file)
- [Windows 10, version 1703 basic level Windows diagnostic events and fields](https://docs.microsoft.com/windows/configuration/basic-level-windows-diagnostic-events-and-fields-1703)
- [Windows 10, version 1709 enhanced diagnostic data events and fields used by Windows Analytics](https://docs.microsoft.com/windows/configuration/enhanced-diagnostic-data-windows-analytics-events-and-fields)
- [Diagnostic Data Viewer Overview](https://docs.microsoft.com/windows/configuration/diagnostic-data-viewer-overview)
- [Licensing Terms and Documentation](https://www.microsoftvolumelicensing.com/DocumentSearch.aspx?Mode=3&DocumentTypeId=31)
- [Learn about security and privacy at Microsoft datacenters](http://www.microsoft.com/datacenters)
- [Confidence in the trusted cloud](https://azure.microsoft.com/en-us/support/trust-center/) 

### Can Windows Analytics be used without a direct client connection to the Microsoft Data Management Service?
No, the entire service is powered by Windows diagnostic data, which requires that devices have this direct connectivity.

### Can I choose the data center location?
Yes for Azure Log Analytics, but no for the Microsoft Data Management Service (which is hosted in the US).

### Why do SCCM and Upgrade Readiness show different counts of devices that are ready to upgrade?
System Center Configuration Manager (SCCM) considers a device ready to upgrade if *no installed app* has an upgrade decision of “not ready” (that is, they are all "ready" or "in progress"), while Upgrade Readiness considers a device ready to upgrade only if *all* installed apps are marked “ready”.
 
Currently, you can choose the criteria you wish to use:
- To use the SCCM criteria, create the collection of devices ready to upgrade within the SCCM console (using the analytics connector).
- To use the Upgrade Readiness criteria, export the list of ready-to-upgrade devices from the corresponding Upgrade Readiness report, and then build the SCCM collection from that spreadsheet.
