---
title: Upgrade Readiness deployment script (Windows 10)
description: Deployment script for Upgrade Readiness.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: jaimeo
ms.date: 10/29/2018
---

# Upgrade Readiness deployment script

To automate the steps provided in [Get started with Upgrade Readiness](upgrade-readiness-get-started.md), and to troubleshoot data sharing issues, you can run the [Upgrade Readiness deployment script](https://go.microsoft.com/fwlink/?LinkID=822966&clcid=0x409), developed by Microsoft.

>[!IMPORTANT]
>Upgrade Readiness was previously called Upgrade Analytics. References to Upgrade Analytics in any scripts or online content pertain to the Upgrade Readiness solution.

For detailed information about using the Upgrade Readiness (also known as upgrade analytics) deployment script, see the [Upgrade Analytics blog](https://blogs.technet.microsoft.com/upgradeanalytics/2016/09/20/new-version-of-the-upgrade-analytics-deployment-script-available/).

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

    2.  Input your commercial ID key. This can be found in your OMS workspace under Settings -> Connected Sources -> Windows Telemetry.

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

<div font-size='5pt;'>
<table border='1' cellspacing='0' cellpadding='0' width="100%">
    <tr>
        <td BGCOLOR="#a0e4fa">Exit code and meaning</td>
        <td BGCOLOR="#a0e4fa">Suggested fix</td>
    </tr>
    <tr><td>0 - Success</td>
        <td>N/A</td>
    </tr>
    <tr>
        <td>1 - Unexpected error occurred while executing the script.</td>
        <td> The files in the deployment script are likely corrupted. Download the [latest script](https://go.microsoft.com/fwlink/?LinkID=822966) from the download center and try again.</td>
    </tr>
    <tr>
        <td>2 - Error when logging to console. $logMode = 0.<BR>(console only)</td>
        <td>Try changing the $logMode value to **1** and try again.<BR>$logMode value 1 logs to both console and file.</td>
    </tr>
    <tr>
        <td>3 - Error when logging to console and file. $logMode = 1.</td>
        <td>Verify that you have set the logPath parameter in RunConfig.bat, and that the configuration script has access to connect and write to this location.</td>
    </tr>
    <tr>
        <td>4 - Error when logging to file. $logMode = 2.</td>
        <td>Verify that you have set the logPath parameter in RunConfig.bat, and that the configuration script has access to connect and write to this location.</td>
    </tr>
    <tr>
        <td>5 - Error when logging to console and file. $logMode = unknown.</td>
        <td>Verify that you have set the logPath parameter in RunConfig.bat, and that the configuration script has access to connect and write to this location.</td>
    </tr>
    <tr>
        <td>6 - The commercialID parameter is set to unknown. <BR>Modify the runConfig.bat file to set the CommercialID value.</td>
        <td>The value for parameter in the runconfig.bat file should match the Commercial ID key for your workspace. 
        <BR>See [Generate your Commercial ID key](https://technet.microsoft.com/itpro/windows/deploy/upgrade-readiness-get-started#generate-your-commercial-id-key) for instructions on generating a Commercial ID key for your workspace.</td>
    </tr>
    <tr>
        <td>8 - Failure to create registry key path: <font size='1'>**HKLM:\SOFTWARE\Microsoft\Windows
\CurrentVersion\Policies\DataCollection**</font></td>
        <td>The Commercial Id property is set at the following registry key path: <font size='1'>**HKLM:\SOFTWARE\Microsoft\Windows
\CurrentVersion\Policies\DataCollection**</font>
        <BR>Verify that the context under which the script in running has access to the registry key.</td>
    </tr>
    <tr>
        <td>9 - The script failed to write Commercial Id to registry.
        <BR>Error creating or updating registry key: **CommercialId** at <font size='1'>**HKLM:\SOFTWARE\Microsoft\Windows
\CurrentVersion\Policies\DataCollection**</font>
        </td> 
        <td>Verify that the context under which the script in running has access to the registry key.</td>
    </tr>
    <tr>
        <td>10 - Error when writing **CommercialDataOptIn** to the registry at <font size='1'>**HKLM:\SOFTWARE\Microsoft\Windows
\CurrentVersion\Policies\DataCollection**</font></td>
        <td>Verify that the deployment script is running in a context that has access to the registry key.</td>
    </tr>
    <tr>
        <td>11 - Function **SetupCommercialId** failed with an unexpected exception.</td>
        <td>The **SetupCommercialId** function updates the Commercial Id at the registry key path: <font size='1'>**HKLM:\SOFTWARE\Microsoft\Windows
\CurrentVersion\Policies\DataCollection**</font> <BR>Verify that the configuration script has access to this location.</td>
    </tr>
    <tr>
        <td>12 - Can’t connect to Microsoft - Vortex. Check your network/proxy settings.</td>
        <td>**Http Get** on the end points did not return a success exit code.<BR>
        For Windows 10, connectivity is verified by connecting to https://v10.vortex-win.data.microsoft.com/health/keepalive.<BR>
        For previous operating systems, connectivity is verified by connecting to https://vortex-win.data.microsoft.com/health/keepalive.  
        <BR>If there is an error verifying connectivity, this will prevent the collected data from being sent to Upgrade Readiness. To resolve this issue, verify that the required endpoints are correctly whitelisted. For more information, see [Enrolling devices in Windows Analytics](../update/windows-analytics-get-started.md)
    <tr>
        <td>13 - Can’t connect to Microsoft - setting. </td>
        <td>An error occurred connecting to  https://settings.data.microsoft.com/qos. This error will prevent the collected data from being sent to Upgrade Readiness. To resolve this issue, verify that the required endpoints are correctly whitelisted. For more information, see [Enrolling devices in Windows Analytics](https://technet.microsoft.com/itpro/windows/deploy/upgrade-readiness-get-started#enable-data-sharing). Verify that the required endpoints are whitelisted correctly. See Whitelist select endpoints for more details. 
14 </td>
    </tr>
    <tr>
        <td>14 - Can’t connect to Microsoft - compatexchange.</td>
        <td>An error occurred connecting to [CompatibilityExchangeService.svc](https://compatexchange1.trafficmanager.net/CompatibilityExchangeService.svc). This error will prevent the collected data from being sent to Upgrade Readiness. To resolve this issue, verify that the required endpoints are correctly whitelisted. For more information, see [Enrolling devices in Windows Analytics](../update/windows-analytics-get-started.md).</td>
    </tr>
    <tr>
        <td>15 - Function CheckVortexConnectivity failed with an unexpected exception.</td>
        <td>This error will prevent the collected data from being sent to Upgrade Readiness. To resolve this issue, verify that the required endpoints are correctly whitelisted. For more information, see [Enrolling devices in Windows Analytics](../update/windows-analytics-get-started.md). Check the logs for the exception message and the HResult.</td>
    </tr>
    <tr>
        <td>16 - The computer requires a reboot before running the script.</td>
        <td>A reboot is required to complete the installation of the compatibility update and related KBs. Reboot the computer before running the Upgrade Readiness deployment script.</td>
    </tr>
    <tr>
        <td>17 - Function **CheckRebootRequired** failed with an unexpected exception.</td>
        <td>A reboot is required to complete installation of the compatibility update and related KBs. Check the logs for the exception message and the HResult.</td>
    </tr>
    <tr>
        <td>18 - Appraiser KBs not installed or **appraiser.dll** not found.</td>
        <td>Either the Appraiser KBs are not installed, or the **appraiser.dll** file was not found. For more information, see appraiser diagnostic data events and fields information in the [Data collection](https://technet.microsoft.com/itpro/windows/deploy/upgrade-readiness-get-started#data-collection-and-privacy) and privacy topic.</td>
    </tr>
    <tr>
        <td>19 - Function **CheckAppraiserKB**, which checks the compatibility update KBs, failed with unexpected exception.</td>
        <td>Check the logs for the Exception message and HResult. The script will not run further if this error is not fixed.</td> 
    </tr>
    <tr>
        <td>20 - An error occurred when creating or updating the registry key **RequestAllAppraiserVersions** at <font size='1'>**HKLM:\SOFTWARE\Microsoft\WindowsNT
\CurrentVersion\AppCompatFlags\Appraiser**</font> </td>
        <td>The registry key is required for data collection to work correctly. Verify that the script is running in a context that has access to the registry key. </td>
    </tr>
    <tr>
        <td>21 - Function **SetRequestAllAppraiserVersions** failed with an unexpected exception.</td>
        <td>Check the logs for the exception message and HResult.</td>
    </tr>
    <tr>
        <td>22 - **RunAppraiser** failed with unexpected exception.</td>
        <td>Check the logs for the exception message and HResult. Check the **%windir%\System32** directory for the file **CompatTelRunner.exe**. If the file does not exist, reinstall the required compatibility updates which include this file, and check your organization's Group Policy to verify it does not remove this file.</td>
    </tr>
    <tr>
        <td>23 - Error finding system variable **%WINDIR%**.</td>
        <td>Verify that this environment variable is configured on the computer.</td>
    </tr>   
    <tr>
        <td>24 - The script failed when writing **IEDataOptIn** to the registry. An error occurred when creating registry key **IEOptInLevel** at <font size='1'>**HKLM:\SOFTWARE\Microsoft\Windows
\CurrentVersion\Policies\DataCollection**</font></td>
        <td>This is a required registry key for IE data collection to work correctly. Verify that the deployment script in running in a context that has access to the registry key. Check the logs for the exception message and HResult.</td>
    </tr>
    <tr>
        <td>25 - The function **SetIEDataOptIn** failed with unexpected exception.</td>
        <td>Check the logs for the exception message and HResult.</td>
    </tr>
        <tr>
        <td>27 - The script is not running under **System** account.</td>
        <td>The Upgrade Readiness configuration script must be run as **System**. </td>
    </tr>
    <tr>
        <td>28 - Could not create log file at the specified **logPath**.</td>
        <td> Make sure the deployment script has access to the location specified in the **logPath** parameter.</td>
    </tr>
    <tr>
        <td>29 - Connectivity check failed for proxy authentication. </td>
        <td>Instal cumulative updates on the computer and enable the **DisableEnterpriseAuthProxy** authentication proxy setting.
            <BR>The **DisableEnterpriseAuthProxy** setting is enabled by default for Windows 7.  
            <BR>For Windows 8.1 computers, set the **DisableEnterpriseAuthProxy** setting to **0** (not disabled). 
            <BR>For more information on authentication proxy support, see [Authentication proxy support added in new version (12.28.16) of the Upgrade Readiness deployment script](https://go.microsoft.com/fwlink/?linkid=838688).</td>
    </tr>
    <tr>
        <td>30 - Connectivity check failed. Registry key property **DisableEnterpriseAuthProxy** is not enabled.</td>
        <td>The **DisableEnterpriseAuthProxy** setting is enabled by default for Windows 7.  
        <BR>For Windows 8.1 computers, set the **DisableEnterpriseAuthProxy** setting to **0** (not disabled). 
        <BR>For more information on authentication proxy support, see [this blog post](https://go.microsoft.com/fwlink/?linkid=838688).</td>
    </tr>
    <tr>
        <td>31 - There is more than one instance of the Upgrade Readiness data collector running at the same time on this computer. </td>
        <td>Use the Windows Task Manager to check if **CompatTelRunner.exe** is running, and wait until it has completed to rerun the script. The Upgrade Readiness task is scheduled to run daily at 3 a.m.</td>
    </tr>
    <tr>
        <td>32 - Appraiser version on the machine is outdated. </td>
        <td>The configuration script detected a version of the compatibility update module that is older than the minimum required to correctly collect the data required by Upgrade Readiness solution. Use the latest version of the [compatibility update](https://docs.microsoft.com/windows/deployment/update/windows-analytics-get-started#deploy-the-compatibility-update-and-related-updates) for Windows 7 SP1/Windows 8.1.</td>
    </tr>
    <tr>
        <td>33 - **CompatTelRunner.exe** exited with an exit code </td>
        <td>**CompatTelRunner.exe** runs the appraise task on the machine. If it fails, it will provide a specific exit code. The script will return exit code 33 when **CompatTelRunner.exe** itself exits with an exit code. Check the logs for more details. Also see the **Note** following this table for additional steps to follow.</td>
    </tr>
    <tr>
        <td>34 - Function **CheckProxySettings** failed with an unexpected exception. </td>
        <td>Check the logs for the exception message and HResult.></td>
    </tr>
    <tr>
        <td>35 - Function **CheckAuthProxy** failed with an unexpected exception.</td>
        <td>Check the logs for the exception message and HResult.</td>
    </tr>
    <tr>
        <td>36 - Function **CheckAppraiserEndPointsConnectivity** failed with an unexpected exception.</td>
        <td>Check the logs for the exception message and HResult.</td>
    </tr>
    <tr>
        <td>37 - **Diagnose_internal.cmd** failed with an unexpected exception.</td>
        <td>Check the logs for the exception message and HResult.</td>
    </tr>
    <tr>
        <td>38 - Function **Get-SqmID** failed with an unexpected exception. </td>
        <td>Check the logs for the exception message and HResult.</td>
    </tr>
    <tr>
        <td>39 - For Windows 10: AllowTelemetry property is not set to 1 or higher at registry key path <font size='1'>**HKLM:\SOFTWARE\Policies\Microsoft
\Windows\DataCollection**</font>
        or <font size='1'>**HKLM:\SOFTWARE\Microsoft\Windows
\CurrentVersion\Policies\DataCollection**</font></td>
        <td>For Windows 10 machines, the **AllowTelemetry** property should be set to 1 or greater to enable data collection. The script will throw an error if this is not true. For more information, see [Configure Windows diagnostic data in your organization](https://docs.microsoft.com/windows/configuration/configure-windows-diagnostic-data-in-your-organization).</td>
    </tr>
    <tr>
        <td>40 - Function **CheckTelemetryOptIn** failed with an unexpected exception. </td>
        <td>Check the logs for the exception message and HResult.</td>
    </tr>
    <tr>
        <td>41 - The script failed to impersonate the currently logged on user. </td>
        <td>The script mimics the UTC client to collect upgrade readiness data. When auth proxy is set, the UTC client impersonates the logged on user. The script also tries to mimic this, but the process failed.</td>
    </tr>
    <tr>
        <td>42 - Function **StartImpersonatingLoggedOnUser** failed with an unexpected exception. </td> 
        <td>Check the logs for the exception message and HResult.</td>
    </tr>
    <tr>
        <td>43 - Function **EndImpersonatingLoggedOnUser** failed with an unexpected exception.</td>
        <td>Check the logs for the exception message and HResult.</td>
    </tr>
<tr>
        <td>44 - Diagtrack.dll version is old, so Auth Proxy will not work.</td>
        <td>Update the PC using Windows Update/Windows Server Update Services.</td>
    </tr>
<tr>
        <td>45 - Diagrack.dll was not found.</td>
        <td>Update the PC using Windows Update/Windows Server Update Services.</td>
    </tr>
<tr>
        <td>48 - **CommercialID** mentioned in RunConfig.bat should be a GUID.</td>
        <td>**CommercialID** is mentioned in RunConfig.bat, but it is not a GUID. Copy the commercialID from your workspace. To find the commercialID, in the OMS portal click **Upgrade Readiness > Settings**.</td>
    </tr>
<tr>
        <td>50 - Diagtrack Service is not running.</td>
        <td>Diagtrack Service is required to send data to Microsoft. Enable and run the 'Connected User Experiences and Telemetry' service. </td>
    </tr>
<tr>
        <td>51 - RunCensus failed with an unexpected exception.</td>
        <td>RunCensus explitly runs the process used to collect device information. The method failed with an unexpected exception. Check the ExceptionHResult and ExceptionMessage for more details. </td>
    </tr>
<tr>
        <td>52 - DeviceCensus.exe not found on a Windows 10 machine.</td>
        <td>On computers running Windows 10, the process devicecensus.exe should be present in the <windows directory>\system32 folder. Error code 52 is returned if the process was not found. Ensure that it exists at the specified location. </td>
    </tr>
<tr>
        <td>53 - There is a different CommercialID present at the GPO path:  <font size="1">**HKLM:\SOFTWARE\Policies\Microsoft
\Windows\DataCollection**</font>. This will take precedence over the CommercialID provided in the script.</td>
        <td>Provide the correct CommercialID at the GPO location. </td>
    </tr>
</table>
</div>


>[!NOTE]
>**Additional steps to follow if you receive exit code 33**

>Check the exit code for any of these messages:
>
>- CompatTelRunner.exe exited with last error code: 0x800703F1 
>- CompatTelRunner.exe exited with last error code: 0x80070005 
>- CompatTelRunner.exe exited with last error code: 0x80080005
> 
>
>If the exit code includes any of those messages, then run these commands from an elevated command prompt:
>
>1. Net stop diagtrack
>2. Net stop pcasvc
>3. Net stop dps
>4. Del %windir%\appcompat\programs\amcache.hve
>5. reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags" /v AmiHivePermissionsCorrect /f
>6. reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags" /v LogFlags /t REG_DWORD /d 4 /f
>7. Net start diagtrack
>8. Net start pcasvc
>9. Net start dps
>
>Then run the Enterprise Config script (RunConfig.bat) again. 
>
>If the script still fails, then send mail to **uasupport@microsoft.com** including log files from the RunConfig.bat script. These log files are stored on the drive that is specified in the RunConfig.bat file. By default this is set to **%SystemDrive%\UADiagnostics**. The log file is named with the format **UA_yyyy_mm_dd_hh_mm_ss_machineID.txt**. There will be some additional logs generated under your **<system drive>\Windows\Temp** directory with the names similar to **AslLog_....txt**. You should send those logs as well.

