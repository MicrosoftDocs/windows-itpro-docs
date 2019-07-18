---
title: Upgrade Readiness deployment script (Windows 10)
ms.reviewer: 
manager: laurawi
ms.author: greglin
description: Deployment script for Upgrade Readiness.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.topic: article
ms.collection: M365-analytics
---

# Upgrade Readiness deployment script

To automate the steps provided in [Get started with Upgrade Readiness](upgrade-readiness-get-started.md), and to troubleshoot data sharing issues, you can run the [Upgrade Readiness deployment script](https://go.microsoft.com/fwlink/?LinkID=822966&clcid=0x409), developed by Microsoft.

>[!IMPORTANT]
>Upgrade Readiness was previously called Upgrade Analytics. References to Upgrade Analytics in any scripts or online content pertain to the Upgrade Readiness solution.

For detailed information about using the Upgrade Readiness (also known as upgrade analytics) deployment script, see the [Upgrade Analytics blog](https://techcommunity.microsoft.com/t5/Windows-Analytics-Blog/New-version-of-the-Upgrade-Analytics-Deployment-Script-available/ba-p/187164?advanced=false&collapse_discussion=true&q=new%20version%20of%20the%20upgrade%20analytics%20deployment%20script%20available&search_type=thread).

> The following guidance applies to version 11.11.16 or later of the Upgrade Readiness deployment script. If you are using an older version, download the latest from the [Download Center](https://go.microsoft.com/fwlink/?LinkID=822966&clcid=0x409).

The Upgrade Readiness deployment script does the following:

1.  Sets commercial ID key + CommercialDataOptIn + RequestAllAppraiserVersions keys.
2.  Verifies that user computers can send data to Microsoft.
3.  Checks whether the computer has a pending restart.  
4.  Verifies that the latest version of KB package 10.0.x is installed (version 10.0.14348 or later is required, but version 10.0.14913 or later is recommended).
5.  If enabled, turns on verbose mode for troubleshooting.
6.  Initiates the collection of the diagnostic data that Microsoft needs to assess your organization’s upgrade readiness.
7.  If enabled, displays the script’s progress in a cmd window, providing you immediate visibility into issues (success or fail for each step) and/or writes to log file.

## Running the script

>There should be no performance impact caused by the script. The script is a light wrapper of Windows in-box components that undergo performance testing and optimization to avoid any performance impact. However, typically the script is scheduled to be run outside of working hours. 
>
>Do not run the script at each sign-on. It is recommended to run the script once every 30 days.
>
>The length of time the script takes to run on each system depends on the number of apps and drivers, and the type of hardware. Anti-virus software scanning simultaneously can increase the script run time, but the script should require no longer than 10 minutes to run, and typically the time is much shorter. If the script is observed running for an extended period of time, please run the Pilot script, and collect logs to share with Microsoft. Log files are created in the drive that is specified in the RunConfig.bat file. By default this is set to: **%SystemDrive%\UADiagnostics**.

To run the Upgrade Readiness deployment script:

1.  Download the [Upgrade Readiness deployment script](https://go.microsoft.com/fwlink/?LinkID=822966&clcid=0x409) and extract the .zip file. Inside, there are two folders: **Pilot** and **Deployment**. The **Pilot** folder contains advanced logging that can help troubleshoot issues and is intended to be run from an elevated command prompt. The **Deployment** folder offers a lightweight script intended for broad deployment through ConfigMgr or other software deployment system. We recommend manually running the Pilot version of the script on 5-10 machines to verify that everything is configured correctly. Once you have confirmed that data is flowing successfully, proceed to run the Deployment version throughout your organization.

2.  Edit the following parameters in RunConfig.bat:

    1.  Provide a storage location for log information. You can store log information on a remote file share or a local directory. If the script is blocked from creating the log file for the given path, it creates the log files in the drive with the Windows directory. Example: %SystemDrive%\\UADiagnostics

    2.  Input your commercial ID key. To find your commercial ID, first navigate to the **Solutions** tab for your workspace, and then select the solution. From there, select the **Settings** page, where you can find and copy your commercial ID:

    3.  By default, the script sends log information to both the console and the log file. To change the default behavior, use one of the following options:

        > *logMode = 0 log to console only*
        >
        > *logMode = 1 log to file and console*
        >
        > *logMode = 2 log to file only*

3.  To enable Internet Explorer data collection, set AllowIEData to IEDataOptIn. By default, AllowIEData is set to Disable. Then use one of the following options to determine what Internet Explorer data can be collected:

    > *IEOptInLevel = 0 Internet Explorer data collection is disabled*
    >
    > *IEOptInLevel = 1 Data collection is enabled for sites in the Local intranet + Trusted sites + Machine local zones*
    >
    > *IEOptInLevel = 2 Data collection is enabled for sites in the Internet + Restricted sites zones*
    >
    > *IEOptInLevel = 3 Data collection is enabled for all sites*

4. A recent version (03.02.17) of the deployment script is configured to collect and send diagnostic and debugging data to Microsoft. If you wish to disable sending diagnostic and debugging data to Microsoft, set **AppInsightsOptIn = false**. By default, **AppInsightsOptIn** is set to **true**.

    The data that is sent is the same data that is collected in the text log file that captures the events and error codes while running the script. This file is named in the following format: **UA_yyyy_mm_dd_hh_mm_ss_machineID.txt**. Log files are created in the drive that is specified in the RunConfig.bat file. By default this is set to: **%SystemDrive%\UADiagnostics**.

    This data gives us the ability to determine the status of your machines and to help troubleshoot issues. If you choose to opt-in to and send this data to Microsoft, you must also allow https traffic to be sent to the following wildcard endpoints:

    \*vortex\*.data.microsoft.com<BR>
    \*settings\*.data.microsoft.com

5. The latest version (03.28.2018) of the deployment script configures insider builds to continue to send the device name to the diagnostic data management service and the analytics portal. If you do not want to have insider builds send the device name sent to analytics and be available in the analytics portal, set **DeviceNAmeOptIn = false**. By default it is true, which preserves the behavior on previous versions of Windows. This setting only applies to insider builds. Note that the device name is also sent to AppInsights, so to ensure the device name is not sent to either place you would need to also set **AppInsightsOptIn = false**.

6.  After you finish editing the parameters in RunConfig.bat, you are ready to run the script. If you are using the Pilot version, run RunConfig.bat from an elevated command prompt. If you are using the Deployment version, use ConfigMgr or other software deployment service to run RunConfig.bat as system.

## Exit codes

The deployment script displays the following exit codes to let you know if it was successful, or if an error was encountered.

| Exit code | Suggested fix |
|-----------|--------------|
| 0 - Success | N/A |
| 1 - Unexpected error occurred while executing the script. | The files in the deployment script are likely corrupted. Download the [latest script](https://go.microsoft.com/fwlink/?LinkID=822966) from the download center and try again. |
| 2 - Error when logging to console. $logMode = 0. (console only) | Try changing the $logMode value to **1** and try again. $logMode value 1 logs to both console and file.  |
| 3 - Error when logging to console and file. $logMode = 1. | Verify that you have set the logPath parameter in RunConfig.bat, and that the configuration script has access to connect and write to this location. |
| 4 - Error when logging to file. $logMode = 2. | Verify that you have set the logPath parameter in RunConfig.bat, and that the configuration script has access to connect and write to this location. |
| 5 - Error when logging to console and file. $logMode = unknown. | Verify that you have set the logPath parameter in RunConfig.bat, and that the configuration script has access to connect and write to this location. |
| 6 - The commercialID parameter is set to unknown. | Modify the runConfig.bat file to set the CommercialID value. The value for parameter in the runconfig.bat file should match the Commercial ID key for your workspace. See [Generate your Commercial ID key](https://technet.microsoft.com/itpro/windows/deploy/upgrade-readiness-get-started#generate-your-commercial-id-key) for instructions on generating a Commercial ID key for your workspace. |
| 8 - Failure to create registry key path: **HKLM:\SOFTWARE\Microsoft\Windows \CurrentVersion\Policies\DataCollection**. The Commercial Id property is set at the following registry key path: **HKLM:\SOFTWARE\Microsoft\Windows \CurrentVersion\Policies\DataCollection** | Verify that the context under which the script in running has access to the registry key. |
| 9 - The script failed to write Commercial Id to registry.  
Error creating or updating registry key: **CommercialId** at **HKLM:\SOFTWARE\Microsoft\Windows \CurrentVersion\Policies\DataCollection** | Verify that the context under which the script in running has access to the registry key. |
| 10 - Error when writing **CommercialDataOptIn** to the registry at **HKLM:\SOFTWARE\Microsoft\Windows \CurrentVersion\Policies\DataCollection** | Verify that the deployment script is running in a context that has access to the registry key. |
| 11 - Function **SetupCommercialId** failed with an unexpected exception. The **SetupCommercialId** function updates the Commercial Id at the registry key path: **HKLM:\SOFTWARE\Microsoft\Windows \CurrentVersion\Policies\DataCollection** | Verify that the configuration script has access to this location. |
| 12 - Can’t connect to Microsoft - Vortex. Check your network/proxy settings. | **Http Get** on the end points did not return a success exit code. For Windows 10, connectivity is verified by connecting to https://v10.vortex-win.data.microsoft.com/health/keepalive. For previous operating systems, connectivity is verified by connecting to https://vortex-win.data.microsoft.com/health/keepalive. If there is an error verifying connectivity, this will prevent the collected data from being sent to Upgrade Readiness. To resolve this issue, verify that the required endpoints are correctly whitelisted. For more information, see [Enrolling devices in Windows Analytics](../update/windows-analytics-get-started.md) |
| 13 - Can’t connect to Microsoft - setting. | An error occurred connecting to https://settings.data.microsoft.com/qos. This error will prevent the collected data from being sent to Upgrade Readiness. To resolve this issue, verify that the required endpoints are correctly whitelisted. For more information, see [Enrolling devices in Windows Analytics](https://technet.microsoft.com/itpro/windows/deploy/upgrade-readiness-get-started#enable-data-sharing). Verify that the required endpoints are whitelisted correctly. See Whitelist select endpoints for more details. |
| 14 - Can’t connect to Microsoft - compatexchange. An error occurred connecting to [CompatibilityExchangeService.svc](https://compatexchange1.trafficmanager.net/CompatibilityExchangeService.svc). | This error will prevent the collected data from being sent to Upgrade Readiness. To resolve this issue, verify that the required endpoints are correctly whitelisted. For more information, see [Enrolling devices in Windows Analytics](../update/windows-analytics-get-started.md). |
| 15 - Function CheckVortexConnectivity failed with an unexpected exception. | This error will prevent the collected data from being sent to Upgrade Readiness. To resolve this issue, verify that the required endpoints are correctly whitelisted. For more information, see [Enrolling devices in Windows Analytics](../update/windows-analytics-get-started.md). Check the logs for the exception message and the HResult. |
| 16 - The computer requires a reboot before running the script. | Restart the device to complete the installation of the compatibility update and related updates. Reboot the computer before running the Upgrade Readiness deployment script. |
| 17 - Function **CheckRebootRequired** failed with an unexpected exception. | Restart the device to complete installation of the compatibility update and related updates. Check the logs for the exception message and the HResult. |
|18 - Appraiser KBs not installed or **appraiser.dll** not found. | Either the Appraiser-related updates are not installed, or the **appraiser.dll** file was not found. For more information, see appraiser diagnostic data events and fields information in the [Data collection](https://technet.microsoft.com/itpro/windows/deploy/upgrade-readiness-get-started#data-collection-and-privacy) and privacy topic. |
| 19 - Function **CheckAppraiserKB**, which checks the compatibility update KBs, failed with unexpected exception. | Check the logs for the Exception message and HResult. The script will not run further if this error is not fixed. |
| 20 - An error occurred when creating or updating the registry key **RequestAllAppraiserVersions** at **HKLM:\SOFTWARE\Microsoft\WindowsNT \CurrentVersion\AppCompatFlags\Appraiser** | The registry key is required for data collection to work correctly. Verify that the script is running in a context that has access to the registry key. |
| 21 - Function **SetRequestAllAppraiserVersions** failed with an unexpected exception. | Check the logs for the exception message and HResult. |
| 22 - **RunAppraiser** failed with unexpected exception. | Check the logs for the exception message and HResult. Check the **%windir%\System32** directory for the file **CompatTelRunner.exe**. If the file does not exist, reinstall the required compatibility updates which include this file, and check your organization's Group Policy to verify it does not remove this file. |
| 23 - Error finding system variable **%WINDIR%**. | Verify that this environment variable is configured on the computer. |
| 24 - The script failed when writing **IEDataOptIn** to the registry. An error occurred when creating registry key **IEOptInLevel** at **HKLM:\SOFTWARE\Microsoft\Windows \CurrentVersion\Policies\DataCollection** | This is a required registry key for IE data collection to work correctly. Verify that the deployment script in running in a context that has access to the registry key. Check the logs for the exception message and HResult. |
| 25 - The function **SetIEDataOptIn** failed with unexpected exception. | Check the logs for the exception message and HResult. |
| 27 - The script is not running under **System** account. | The Upgrade Readiness configuration script must be run as **System**. |
| 28 - Could not create log file at the specified **logPath**. | Make sure the deployment script has access to the location specified in the **logPath** parameter. |
| 29 - Connectivity check failed for proxy authentication. | Install cumulative updates on the device and enable the **DisableEnterpriseAuthProxy** authentication proxy setting. The **DisableEnterpriseAuthProxy** setting is enabled by default for Windows 7\. For Windows 8.1 computers, set the **DisableEnterpriseAuthProxy** setting to **0** (not disabled). For more information on authentication proxy support, see [Authentication proxy support added in new version (12.28.16) of the Upgrade Readiness deployment script](https://go.microsoft.com/fwlink/?linkid=838688). |
| 30 - Connectivity check failed. Registry key property **DisableEnterpriseAuthProxy** is not enabled. | The **DisableEnterpriseAuthProxy** setting is enabled by default for Windows 7\. For Windows 8.1 computers, set the **DisableEnterpriseAuthProxy** setting to **0** (not disabled). For more information on authentication proxy support, see [this blog post](https://go.microsoft.com/fwlink/?linkid=838688). |
| 31 - There is more than one instance of the Upgrade Readiness data collector running at the same time on this computer. Use Task Manager to check if **CompatTelRunner.exe** is running, and wait until it has completed to rerun the script. The Upgrade Readiness task is scheduled by default to run daily at 0300. |
| 32 - Appraiser version on the machine is outdated. | The configuration script detected a version of the compatibility update module that is older than the minimum required to correctly collect the data required by Upgrade Readiness solution. Use the latest version of the [compatibility update](https://docs.microsoft.com/windows/deployment/update/windows-analytics-get-started#deploy-the-compatibility-update-and-related-updates) for Windows 7 SP1/Windows 8.1. |
| 33 - **CompatTelRunner.exe** exited with an exit code | **CompatTelRunner.exe** runs the appraise task on the device. If it fails, it will provide a specific exit code. The script will return exit code 33 when **CompatTelRunner.exe** itself exits with an exit code. Check the logs for more details. Also see the **Note** following this table for additional steps to follow. |
| 34 - Function **CheckProxySettings** failed with an unexpected exception. | Check the logs for the exception message and HResult. |
| 35 - Function **CheckAuthProxy** failed with an unexpected exception. Check the logs for the exception message and HResult. |
| 36 - Function **CheckAppraiserEndPointsConnectivity** failed with an unexpected exception. | Check the logs for the exception message and HResult. |
| 37 - **Diagnose_internal.cmd** failed with an unexpected exception. | Check the logs for the exception message and HResult. |
| 38 - Function **Get-SqmID** failed with an unexpected exception. | Check the logs for the exception message and HResult. |
| 39 - For Windows 10: AllowTelemetry property is not set to 1 or higher at registry key path **HKLM:\SOFTWARE\Policies\Microsoft \Windows\DataCollection** or **HKLM:\SOFTWARE\Microsoft\Windows \CurrentVersion\Policies\DataCollection** | For Windows 10 devices, the **AllowTelemetry** property should be set to 1 or greater to enable data collection. The script will return an error if this is not true. For more information, see [Configure Windows diagnostic data in your organization](https://docs.microsoft.com/windows/configuration/configure-windows-diagnostic-data-in-your-organization). |
| 40 - Function **CheckTelemetryOptIn** failed with an unexpected exception. | Check the logs for the exception message and HResult. |
| 41 - The script failed to impersonate the currently logged on user. | The script mimics the UTC client to collect upgrade readiness data. When auth proxy is set, the UTC client impersonates the user that is logged on. The script also tries to mimic this, but the process failed. |
| 42 - Function **StartImpersonatingLoggedOnUser** failed with an unexpected exception. | Check the logs for the exception message and HResult. |
| 43 - Function **EndImpersonatingLoggedOnUser** failed with an unexpected exception. | Check the logs for the exception message and HResult. |
| 44 - Diagtrack.dll version is old, so Auth Proxy will not work. | Update the device using Windows Update or Windows Server Update Services. |
| 45 - Diagtrack.dll was not found. | Update the device using Windows Update or Windows Server Update Services. |
| 48 - **CommercialID** mentioned in RunConfig.bat should be a GUID. | Copy the commercial ID from your workspace. To find your commercial ID, first navigate to the Solutions tab for your workspace in Azure Portal, and then select the solution. From there, select the **Settings** page, where you can find and copy your commercial ID.|
| 50 - Diagtrack Service is not running. | The Diagtrack service is required to send data to Microsoft. Enable and run the "Connected User Experiences and Telemetry" service. |
| 51 - RunCensus failed with an unexpected exception. | RunCensus explitly runs the process used to collect device information. The method failed with an unexpected exception. The most common cause is incorrect setup of diagnostic data. Check the ExceptionHResult and ExceptionMessage for more details. |
| 52 - DeviceCensus.exe not found on a Windows 10 machine. | On computers running Windows 10, the process devicecensus.exe should be present in the \system32 directory. Error code 52 is returned if the process was not found. Ensure that it exists at the specified location. |
| 53 - There is a different CommercialID present at the GPO path: **HKLM:\SOFTWARE\Policies\Microsoft \Windows\DataCollection**. This will take precedence over the CommercialID provided in the script. | Provide the correct CommercialID at the GPO location. |
| 54 - Microsoft Account Sign In Assistant Service is Disabled. | This service is required for devices running Windows 10. The diagnostic data client relies on the Microsoft Account Sign In Assistant (MSA) to get the Global Device ID for the device. Without the MSA service running, the global device ID will not be generated and sent by the client and Windows Update will no longer offer feature updates to devices running Windows 10 1709 or higher. See [Feature updates are not being offered while other updates are](https://docs.microsoft.com/windows/deployment/update/windows-update-troubleshooting#feature-updates-are-not-being-offered-while-other-updates-are). |
| 55 - SetDeviceNameOptIn function failed to create registry key path: **HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection** | The function SetDeviceNameOptIn sets the registry key value which determines whether to send the device name in diagnostic data. The function tries to create the registry key path if it does not already exist. Verify that the account has the correct permissions to change or add registry keys. |
| 56 - SetDeviceNameOptIn function failed to create property AllowDeviceNameInTelemetry at registry key path: **HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection** | Verify that the account has the correct permissions to change or add registry keys.|
| 57 - SetDeviceNameOptIn function failed to update AllowDeviceNameInTelemetry property to value 1 at registry key path: **HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection** | Verify that the account has the correct permissions to change or add registry keys. |
| 58 - SetDeviceNameOptIn function failed with unexpected exception | The function SetDeviceNameOptIn failed with an unexpected exception. |
| 59 - CleanupOneSettings failed to delete LastPersistedEventTimeOrFirstBoot property at registry key path: **HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\Diagtrack** |The CleanupOneSettings function clears some of the cached values needed by the Appraiser which is the data collector on the monitored device. This helps in the download of the most recent for accurate running of the data collector. Verify that the account has the correct permissions to change or add registry keys. |
| 60 - CleanupOneSettings failed to delete registry key: **HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\ Diagnostics\Diagtrack\SettingsRequests** | Verify that the account has the correct permissions to change or add registry keys. |
| 61 - CleanupOneSettings failed with an exception | CleanupOneSettings failed with an unexpected exception. |
| 62 - AllowTelemetry property value at registry key path **HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection** is not of type REG_DWORD. It should be of type REG_DWORD. | Ensure that the **AllowTelemetry** property at path **HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection** is a REG_DWORD. |
| 63 - Diagnostic data is disabled for the device | If AllowTelemetry equals **0**, devices cannot send diagnostic data. To resolve this, set the **AllowTelemetry** value at **HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection**. |
| 64 - AllowTelemetry property value at registry key path **HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection** is not of type REG_DWORD. It should be of type REG_DWORD. | Ensure that the **AllowTelemetry** property at **HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection** is a REG_DWORD. |
| 65 - Diagnostic data is disabled for the device | If AllowTelemetry equals **0**, devices cannot send diagnostic data. To resolve this, set the **AllowTelemetry** value at **HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection**. |
| 66 - All recent data uploads for the Universal Telemetry Client failed. | Review the UtcConnectionReport in WMI in the namespace **root\cimv2\mdm\dmmap** under the **MDM_Win32CompatibilityAppraiser_UniversalTelemetryClient01** class. Only SYSTEM has access to this class. Use [PSExec](https://docs.microsoft.com/sysinternals/downloads/psexec) to execute your WMI utility as SYSTEM.  |
| 67 - CheckUtcCsp failed with an exception | There was an error reading the WIM/CIM class **MDM_Win32CompatibilityAppraiser_UniversalTelemetryClient01** in the namespace **root\cimv2\mdm\dmmap**. Review system for WMI errors. |






> [!NOTE]
> **Additional steps to follow if you receive exit code 33**
> 
> Check the exit code for any of these messages:
> 
> - CompatTelRunner.exe exited with last error code: 0x800703F1 
> - CompatTelRunner.exe exited with last error code: 0x80070005 
> - CompatTelRunner.exe exited with last error code: 0x80080005
> 
> 
> If the exit code includes any of those messages, then run these commands from an elevated command prompt:
> 
> 1. Net stop diagtrack
> 2. Net stop pcasvc
> 3. Net stop dps
> 4. Del %windir%\appcompat\programs\amcache.hve
> 5. reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags" /v AmiHivePermissionsCorrect /f
> 6. reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags" /v LogFlags /t REG_DWORD /d 4 /f
> 7. Net start diagtrack
> 8. Net start pcasvc
> 9. Net start dps
> 
> Then run the Enterprise Config script (RunConfig.bat) again. 
> 
> If the script still fails, then send mail to <strong>uasupport@microsoft.com</strong> including log files from the RunConfig.bat script. These log files are stored on the drive that is specified in the RunConfig.bat file. By default this is set to **%SystemDrive%\UADiagnostics**. The log file is named with the format **UA_yyyy_mm_dd_hh_mm_ss_machineID.txt**. There will be some additional logs generated under your **\<system drive>\Windows\Temp** directory with the names similar to **AslLog_....txt**. You should send those logs as well.

