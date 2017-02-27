---
title: Upgrade Analytics deployment script (Windows 10)
description: Deployment script for Upgrade Analytics.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
---

# Upgrade Analytics deployment script

To automate the steps provided in [Get started with Upgrade Analytics](upgrade-analytics-get-started.md), and to troubleshoot data sharing issues, you can run the [Upgrade Analytics deployment script](https://go.microsoft.com/fwlink/?LinkID=822966&clcid=0x409), developed by Microsoft.

For detailed information about using the upgrade analytics deployment script, also see the [Upgrade Analytics blog](https://blogs.technet.microsoft.com/upgradeanalytics/2016/09/20/new-version-of-the-upgrade-analytics-deployment-script-available/).

> The following guidance applies to version 11.11.16 or later of the Upgrade Analytics deployment script. If you are using an older version, please download the latest from [Download Center](https://go.microsoft.com/fwlink/?LinkID=822966&clcid=0x409).

The Upgrade Analytics deployment script does the following:

1.  Sets commercial ID key + CommercialDataOptIn + RequestAllAppraiserVersions keys.
2.  Verifies that user computers can send data to Microsoft.
3.  Checks whether the computer has a pending restart.  
4.  Verifies that the latest version of KB package 10.0.x is installed (version 10.0.14348 or later is required, but version 10.0.14913 or later is recommended).
5.  If enabled, turns on verbose mode for troubleshooting.
6.  Initiates the collection of the telemetry data that Microsoft needs to assess your organization’s upgrade readiness.
7.  If enabled, displays the script’s progress in a cmd window, providing you immediate visibility into issues (success or fail for each step) and/or writes to log file.

To run the Upgrade Analytics deployment script:

1.  Download the [Upgrade Analytics deployment script](https://go.microsoft.com/fwlink/?LinkID=822966&clcid=0x409) and extract UpgradeAnalytics.zip. Inside, there are two folders: Pilot and Deployment. The Pilot folder contains advanced logging that can help troubleshoot issues and is intended to be run from an elevated command prompt. The Deployment folder offers a lightweight script intended for broad deployment through ConfigMgr or other software deployment system. We recommend manually running the Pilot version of the script on 5-10 machines to verify that everything is configured correctly.  Once you have confirmed that data is flowing successfully, proceed to run the Deployment version throughout your organization.

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

<div id="error-codes"></div>

The deployment script displays the following exit codes to let you know if it was successful, or if an error was encountered.

<div style='font-size:10.0pt'>

<TABLE border=1 cellspacing=0 cellpadding=0>
<TR><TH BGCOLOR="#a0e4fa">Exit code<TH BGCOLOR="#a0e4fa">Meaning<TH BGCOLOR="#a0e4fa">Suggested fix
<TR><TD>0<TD>Success<TD>
<TR><TD>1<TD>Unexpected error occurred while executing the script<TD> The files in the deployment script are likely corrupted.  Download the [latest script](https://go.microsoft.com/fwlink/?LinkID=822966&clcid=0x409) from the download center and try again.
<TR><TD>2<TD>Error when logging to console. $logMode = 0.<TD> Try changing the $logMode value to **1** and try again.
<TR><TD>3<TD>Error when logging to console and file. $logMode = 1.<TD>Verify that you have set the logPath parameter in RunConfig.bat, and that the configuration script has access to connect and write to this location.
<TR><TD>4<TD>Error when logging to file. $logMode = 2.<TD>Verify that you have set the logPath parameter in RunConfig.bat, and that the configuration script has access to connect and write to this location.
<TR><TD>5<TD>Error when logging to console and file. $logMode = unknown.<TD>Verify that you have set the logPath parameter in RunConfig.bat, and that the configuration script has access to connect and write to this location.
<TR><TD>6<TD>The commercialID parameter is set to unknown. Modify the script.<TD>Set the value for CommercialID in runconfig.bat file.
<TR><TD>8<TD>Failure to create registry key path: HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection. <TD> Verify that the configuration script has access to this location.
<TR><TD>9<TD>Error when writing CommercialId to registry.<TD>Verify that the configuration script has access to this location.
<TR><TD>10<TD>Error when writing CommercialDataOptIn to registry.<TD>Verify that the configuration script has access to this location.
<TR><TD>11<TD>Function -SetupCommercialId: Unexpected failure.<TD>Verify that the configuration script has access to this location.
<TR><TD>12<TD>Can’t connect to Microsoft – Vortex. Check your network/proxy settings.<TD>Verify that the required endpoints are whitelisted correctly.
<TR><TD>13<TD>Can’t connect to Microsoft – setting. <TD>Verify that the required endpoints  are whitelisted correctly.
<TR><TD>14<TD>Can’t connect to Microsoft – compatexchange.<TD> Verify that the required endpoints are whitelisted.
<TR><TD>15<TD>Error connecting to Microsoft:Unexpected failure.<TD>
<TR><TD>16<TD>Machine requires reboot.<TD> The reboot is required to complete the installation of the compatibility update and related KBs. Reboot the machine before running the Upgrade Analytics deployment script.
<TR><TD>17<TD>Function -CheckRebootRequired: Unexpected failure.<TD>The reboot is required to complete the installation of the compatibility update and related KBs. Reboot the machine before running the Upgrade Analytics deployment script.
<TR><TD>18<TD>Outdated compatibility update KB package. Update via Windows Update/WSUS.<TD>
The configuration script detected a version of the Compatibility update module that is older than the minimum required to correctly collect the data required by Upgrade Analytics solution. Use the latest version of the Compatibility update for Windows 7 SP1/Windows 8.1.
<TR><TD>19<TD>The compatibility update failed with unexpected exception.<TD> The files in the deployment script are likely corrupted.  Download the [latest script](https://go.microsoft.com/fwlink/?LinkID=822966&clcid=0x409) from the download center and try again.
<TR><TD>20<TD>Error writing RequestAllAppraiserVersions registry key.<TD> This registry key is required for data collection to work correctly. Verify that the configuration script has access to this location.
<TR><TD>21<TD>Function – SetRequestAllAppraiserVersions: Unexpected failure.<TD>This registry key is required for data collection to work correctly. Verify that the configuration script has access to this location.
<TR><TD>22<TD>RunAppraiser failed with unexpected exception.<TD> Check %windir%\System32 directory for a file called CompatTelRunner.exe.  If the file does not exist, reinstall the required compatibility updates which include this file, and check your organization group policy to make sure it does not remove this file.
<TR><TD>23<TD>Error finding system variable %WINDIR%.<TD> Make sure that this environment variable is available on the machine.
<TR><TD>24<TD>SetIEDataOptIn failed when writing IEDataOptIn to registry.<TD> Verify that the deployment script in running in a context that has access to the registry key.
<TR><TD>25<TD>SetIEDataOptIn failed with unexpected exception.<TD> The files in the deployment script are likely corrupted.  Download the latest script from the [download center](https://go.microsoft.com/fwlink/?LinkID=822966&clcid=0x409) and try again.
<TR><TD>26<TD>The operating system is Server or LTSB SKU.<TD> The script does not support Server or LTSB SKUs.
<TR><TD>27<TD>The script is not running under System account.<TD>The Upgrade Analytics configuration script must be run as system.  
<TR><TD>28<TD>Could not create log file at the specified logPath.<TD> Make sure the deployment script has access to the location specified in the logPath parameter.
<TR><TD>29<TD> Connectivity check failed for proxy authentication. <TD> Install the cumulative updates on the machine and enable the `DisableEnterpriseAuthProxy` authentication proxy setting. The `DisableEnterpriseAuthProxy` setting is enabled by default for Windows 7.  For Windows 8.1 machines, set the `DisableEnterpriseAuthProxy` setting to **0** (not disabled). For more information on authentication proxy support, see [this blog post](https://go.microsoft.com/fwlink/?linkid=838688).
<TR><TD>30<TD>Connectivity check failed. Registry key property `DisableEnterpriseAuthProxy` is not enabled.<TD> The `DisableEnterpriseAuthProxy` setting is enabled by default for Windows 7.  For Windows 8.1 machines, set the `DisableEnterpriseAuthProxy` setting to **0** (not disabled). For more information on authentication proxy support, see [this blog post](https://go.microsoft.com/fwlink/?linkid=838688).
<TR><TD>31<TD>There is more than one instance of the Upgrade Analytics data collector running at the same time on this machine. <TD>  Use the Windows Task Manager to check if CompatTelRunner.exe is running, and wait until it has completed to rerun the script.  
**The Upgrade Analytics task is scheduled to run daily at 3 a.m.**
</TABLE>

</div>

