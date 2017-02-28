---
title: Upgrade Readiness deployment script (Windows 10)
description: Deployment script for Upgrade Readiness.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
---

# Upgrade Readiness deployment script

To automate the steps provided in [Get started with Upgrade Readiness](upgrade-readiness-get-started.md), and to troubleshoot data sharing issues, you can run the [Upgrade Readiness deployment script](https://go.microsoft.com/fwlink/?LinkID=822966&clcid=0x409), developed by Microsoft.

>[!IMPORTANT]
>Upgrade Readiness was previously called Upgrade Analytics.  References to Upgrade Analytics in any scripts or online content pertain to the Upgrade Readiness solution.

For detailed information about using the Upgrade Readiness (also known as upgrade analytics) deployment script, see the [Upgrade Analytics blog](https://blogs.technet.microsoft.com/upgradeanalytics/2016/09/20/new-version-of-the-upgrade-analytics-deployment-script-available/).

> The following guidance applies to version 11.11.16 or later of the Upgrade Readiness deployment script. If you are using an older version, please download the latest from [Download Center](https://go.microsoft.com/fwlink/?LinkID=822966&clcid=0x409).

The Upgrade Readiness deployment script does the following:

1.  Sets commercial ID key + CommercialDataOptIn + RequestAllAppraiserVersions keys.
2.  Verifies that user computers can send data to Microsoft.
3.  Checks whether the computer has a pending restart.  
4.  Verifies that the latest version of KB package 10.0.x is installed (version 10.0.14348 or later is required, but version 10.0.14913 or later is recommended).
5.  If enabled, turns on verbose mode for troubleshooting.
6.  Initiates the collection of the telemetry data that Microsoft needs to assess your organization’s upgrade readiness.
7.  If enabled, displays the script’s progress in a cmd window, providing you immediate visibility into issues (success or fail for each step) and/or writes to log file.

To run the Upgrade Readiness deployment script:

1.  Download the [Upgrade Readiness deployment script](https://go.microsoft.com/fwlink/?LinkID=822966&clcid=0x409) and extract UpgradeAnalytics.zip. Inside, there are two folders: Pilot and Deployment. The Pilot folder contains advanced logging that can help troubleshoot issues and is intended to be run from an elevated command prompt. The Deployment folder offers a lightweight script intended for broad deployment through ConfigMgr or other software deployment system. We recommend manually running the Pilot version of the script on 5-10 machines to verify that everything is configured correctly.  Once you have confirmed that data is flowing successfully, proceed to run the Deployment version throughout your organization.

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

4.  After you finish editing the parameters in RunConfig.bat, you are ready to run the script.  If you are using the Pilot version, run RunConfig.bat from an elevated command prompt. If you are using the Deployment version, use ConfigMgr or other software deployment service to run RunConfig.bat as system.

The deployment script displays the following exit codes to let you know if it was successful, or if an error was encountered.

<div style='font-size:8.0pt'>

| Exit code | Meaning | Suggested fix |
|----|-------------|--------------------|
|0| Success | N/A |
|1| Unexpected error occurred while executing the script. | The files in the deployment script are likely corrupted.  Download the [latest script](https://go.microsoft.com/fwlink/?LinkID=822966&clcid=0x409) from the download center and try again. |
|2| Error when logging to console. $logMode = 0.(console only) | Try changing the $logMode value to **1** and try again.$logMode value 1 logs to both console and file. |
|3|Error when logging to console and file. $logMode = 1.|Verify that you have set the logPath parameter in RunConfig.bat, and that the configuration script has access to connect and write to this location.|
|4|Error when logging to file. $logMode = 2.|Verify that you have set the logPath parameter in RunConfig.bat, and that the configuration script has access to connect and write to this location.|
|5|Error when logging to console and file. $logMode = unknown.|Verify that you have set the logPath parameter in RunConfig.bat, and that the configuration script has access to connect and write to this location.|
|6|The commercialID parameter is set to unknown. Modify the runConfig.bat file to set the CommercialID value.|The value for parameter in the runconfig.bat file should match the Commercial ID key for your workspace. See [Generate your Commercial ID key](https://technet.microsoft.com/itpro/windows/deploy/upgrade-readiness-get-started#generate-your-commercial-id-key) for instructions on generating a Commercial ID key for your workspace.|
|8|Failure to create registry key path: **HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection**. |The Commercial Id property is set at the following registry key path: **HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection**. Verify that the context under which the script in running has access to the registry key..|
|9|The script failed to write Commercial Id to registry. Error creating or updating registry key: **CommercialId** at **HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection**. |Verify that the context under which the script in running has access to the registry key.|
|10|Error when writing **CommercialDataOptIn** to the registry at **HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection**.|Verify that the deployment script is running in a context that has access to the registry key.|
|11|Function **SetupCommercialId** failed with an unexpected exception.|The **SetupCommercialId** function updates the Commercial Id at the registry key path: **HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection**. Verify that the configuration script has access to this location.|
|12|Can’t connect to Microsoft - Vortex. Check your network/proxy settings.|**Http Get** on the end points did not return a success exit code. For Windows 10, connectivity is verified by connecting to https://v10.vortex-win.data.microsoft.com/health/keepalive. For previous operating systems, connectivity is verified by connecting to https://vortex-win.data.microsoft.com/health/keepalive.  If there is an error verifying connectivity, this will prevent the collected data from being sent to Upgrade Readiness. To resolve this issue, verify that the required endpoints are correctly whitelisted. For more information, see [Enable data sharing](https://technet.microsoft.com/en-us/itpro/windows/deploy/upgrade-readiness-get-started#enable-data-sharing).|
|13|Can’t connect to Microsoft - setting. |An error occurred connecting to  https://settings.data.microsoft.com/qos. This error will prevent the collected data from being sent to Upgrade Readiness.  To resolve this issue, verify that the required endpoints are correctly whitelisted. For more information, see [Enable data sharing](https://technet.microsoft.com/en-us/itpro/windows/deploy/upgrade-readiness-get-started#enable-data-sharing).|
|14|Can’t connect to Microsoft - compatexchange.|An error occurred connecting to https://compatexchange1.trafficmanager.net/CompatibilityExchangeService.svc . This error will prevent the collected data from being sent to Upgrade Readiness.  To resolve this issue, verify that the required endpoints are correctly whitelisted. For more information, see [Enable data sharing](https://technet.microsoft.com/en-us/itpro/windows/deploy/upgrade-readiness-get-started#enable-data-sharing).|
|15|Function CheckVortexConnectivity failed with an unexpected exception.|This error will prevent the collected data from being sent to Upgrade Readiness.  To resolve this issue, verify that the required endpoints are correctly whitelisted. For more information, see [Enable data sharing](https://technet.microsoft.com/en-us/itpro/windows/deploy/upgrade-readiness-get-started#enable-data-sharing). Check the logs for the exception message and the HResult.|
|16|The computer requires a reboot before running the script.|A reboot is required to complete the installation of the compatibility update and related KBs. Reboot the computer before running the Upgrade Readiness deployment script.|
|17|Function **CheckRebootRequired** failed with an unexpected exception.|A reboot is required to complete installation of the compatibility update and related KBs. Check the logs for the exception message and the HResult.|
|18|Appraiser KBs not installed or **appraiser.dll** not found.|Either the Appraiser KBs are not installed, or the **appraiser.dll** file was not found. For more information, see appraiser telemetry events and fields information in the [Data collection](https://technet.microsoft.com/itpro/windows/deploy/upgrade-readiness-get-started#data-collection-and-privacy) and privacy topic.|
|19|Function **CheckAppraiserKB**, which checks the compatibility update KBs, failed with unexpected exception.|Check the logs for the Exception message and HResult. The script will not run further if this error is not fixed. |
|20|An error occurred when creating or updating the registry key **RequestAllAppraiserVersions** at **HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Appraiser**. |The registry key is required for data collection to work correctly. Verify that the script is running in a context that has access to the registry key. |
|21|Function **SetRequestAllAppraiserVersions** failed with an unexpected exception.|Check the logs for the exception message and HResult.|
|22|**RunAppraiser** failed with unexpected exception.|Check the logs for the exception message and HResult. Check the **%windir%\System32*8 directory for the file **CompatTelRunner.exe**. If the file does not exist, reinstall the required compatibility updates which include this file, and check your organization's Group Policy to verify it does not remove this file.
|23|Error finding system variable **%WINDIR%**.|Verify that this environment variable is configured on the computer.
|24|The script failed when writing **IEDataOptIn** to the registry. An error occurred when creating registry key **IEOptInLevel** at **HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection**.|This is a required registry key for IE data collection to work correctly. Verify that the deployment script in running in a context that has access to the registry key. Check the logs for the exception message and HResult.|
|25|The function **SetIEDataOptIn** failed with unexpected exception.|Check the logs for the exception message and HResult.|
|26|The operating system is Server or LTSB SKU.| The script does not support Server or LTSB SKUs.|
|27|The script is not running under **System** account.|The Upgrade Readiness configuration script must be run as **System**.  |
|28|Could not create log file at the specified **logPath**.| Make sure the deployment script has access to the location specified in the **logPath** parameter.|
|29|Connectivity check failed for proxy authentication. |Install the cumulative updates on the computer and enable the **DisableEnterpriseAuthProxy** authentication proxy setting. The **DisableEnterpriseAuthProxy** setting is enabled by default for Windows 7. For Windows 8.1 computers, set the **DisableEnterpriseAuthProxy** setting to **0** (not disabled). For more information on authentication proxy support, see [this blog post](https://go.microsoft.com/fwlink/?linkid=838688).|
|30|Connectivity check failed. Registry key property **DisableEnterpriseAuthProxy** is not enabled.|The **DisableEnterpriseAuthProxy** setting is enabled by default for Windows 7.  For Windows 8.1 computers, set the **DisableEnterpriseAuthProxy** setting to **0** (not disabled). For more information on authentication proxy support, see [this blog post](https://go.microsoft.com/fwlink/?linkid=838688).|
|31|There is more than one instance of the Upgrade Readiness data collector running at the same time on this computer. |Use the Windows Task Manager to check if **CompatTelRunner.exe** is running, and wait until it has completed to rerun the script.  The Upgrade Readiness task is scheduled to run daily at 3 a.m.|
|32|Appraiser version on the machine is outdated. |The configuration script detected a version of the compatibility update module that is older than the minimum required to correctly collect the data required by Upgrade Readiness solution. Use the latest version of the [compatibility update](https://technet.microsoft.com/en-us/itpro/windows/deploy/upgrade-readiness-get-started#deploy-the-compatibility-update-and-related-kbs) for Windows 7 SP1/Windows 8.1.|
|33|**CompatTelRunner.exe** exited with an exit code |**CompatTelRunner.exe** runs the appraise task on the machine. If it fails, it will provide a specific exit code. The script will return exit code 33 when **CompatTelRunner.exe** itself exits with an exit code. Please check the logs for more details.|
|34|Function **CheckProxySettings** failed with an unexpected exception. |Check the logs for the exception message and HResult.|
|35|Function **CheckAuthProxy** failed with an unexpected exception.|Check the logs for the exception message and HResult.|
|36|Function **CheckAppraiserEndPointsConnectivity** failed with an unexpected exception.|Check the logs for the exception message and HResult.|
|37|**Diagnose_internal.cmd** failed with an unexpected exception.|Check the logs for the exception message and HResult.|
|38|Function **Get-SqmID** failed with an unexpected exception. |Check the logs for the exception message and HResult.|
|39|For Windows 10: AllowTelemetry property is not set to 1 or higher at registry key path **HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection** or **HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection**.|For Windows 10 machines, the **AllowTelemetry** property should be set to 1 or greater to enable data collection. The script will throw an error if this is not true. For more information, see [Configure Windows telemetry in your organization](https://technet.microsoft.com/itpro/windows/manage/configure-windows-telemetry-in-your-organization).|
|40|Function **CheckTelemetryOptIn** failed with an unexpected exception. |Check the logs for the exception message and HResult.|
|41|The script failed to impersonate the currently logged on user. |The script mimics the UTC client to collect upgrade readiness data. When auth proxy is set, the UTC client impersonates the logged on user. The script also tries to mimic this, but the process failed.|
|42|Function **StartImpersonatingLoggedOnUser** failed with an unexpected exception.  |Check the logs for the exception message and HResult.|
|43|Function **EndImpersonatingLoggedOnUser** failed with an unexpected exception. |Check the logs for the exception message and HResult.|

</div>




