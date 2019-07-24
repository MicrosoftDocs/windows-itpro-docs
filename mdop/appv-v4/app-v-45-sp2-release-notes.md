---
title: App-V 4.5 SP2 Release Notes
description: App-V 4.5 SP2 Release Notes
author: dansimp
ms.assetid: 1b3a8a83-4523-4634-9f75-29bc22ca5815
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# App-V 4.5 SP2 Release Notes


To search these Release Notes, press CTRL+F.

**Important**  
Read these Release Notes thoroughly before you install the Microsoft Application Virtualization Management System. These Release Notes contain information that you need to successfully install the Application Virtualization Management System. These Release Notes contain information that is not available in the product documentation. If there is a discrepancy between these Release Notes and other Application Virtualization Management System documentation, the latest change should be considered authoritative.

 

For updated information about known issues, please visit the Microsoft TechNet Library at [App-V 4.5 SP2 Release Notes](https://go.microsoft.com/fwlink/?LinkId=184640) (https://go.microsoft.com/fwlink/?LinkId=184640).

## About Microsoft Application Virtualization 4.5 Service Pack 2


These Release Notes have been updated to reflect the changes introduced with Microsoft Application Virtualization (App-V) 4.5 Service Pack 2 (SP2). This service pack contains the following changes:

-   Support for Office 2010: App-V 4.5 SP2 now supports the virtualization of Microsoft Office 2010. For prescriptive guidance for sequencing Microsoft Office 2010 with App-V 4.5 SP2, see [Prescriptive guidance for sequencing Office 2010 in Microsoft App-V 4.6](https://go.microsoft.com/fwlink/?LinkId=191539) (https://go.microsoft.com/fwlink/?LinkId=191539).

-   Support for Database Mirroring: App-V 4.5 SP2 now supports Microsoft SQL Server Database Mirroring. For more information about configuring database mirroring in your App-V environment, see [How to Configure Microsoft SQL Server Mirroring Support for App-V](https://go.microsoft.com/fwlink/?LinkId=190880) (https://go.microsoft.com/fwlink/?LinkId=190880).

-   Customer Feedback and Hotfix Rollup: App-V 4.5 SP2 also includes a rollup of fixes to address issues found after the App-V  4.5 SP1 release. The updates address a combination of known issues and customer feedback from Microsoft internal teams, partners, and customers who are using App-V 4.5. For a full list of the updates, see article 980847 in the Microsoft Knowledge Base (KB) at [Description of Microsoft Application Virtualization 4.5 Service Pack 2](https://go.microsoft.com/fwlink/?LinkId=191540) (https://go.microsoft.com/fwlink/?LinkId=191540).

## About the Product Documentation


Comprehensive documentation for Application Virtualization (App-V) is available on Microsoft TechNet in the [Application Virtualization TechCenter Library](https://go.microsoft.com/fwlink/?LinkId=122939) (https://go.microsoft.com/fwlink/?LinkId=122939). The TechNet documentation includes the online Help for the Application Virtualization Sequencer, the Application Virtualization Clients, and the Application Virtualization Server. It also includes the Application Virtualization Planning and Deployment Guide and the Application Virtualization Operations Guide.

## Protect Against Security Vulnerabilities and Viruses


To help protect against security vulnerabilities and viruses, we recommend that you install the latest available security updates for any new software being installed. For more information, see [Microsoft Security](https://go.microsoft.com/fwlink/?LinkId=3482) (https://go.microsoft.com/fwlink/?LinkId=3482).

## Provide Feedback


You can provide feedback, make a suggestion, or report an issue with the Microsoft Application Virtualization (App-V) Management System through the community forum on the Application Virtualization TechCenter [App-V Documentation Forum](https://go.microsoft.com/fwlink/?LinkId=122917) (https://go.microsoft.com/fwlink/?LinkId=122917).

You can also send your documentation feedback directly to the App-V documentation team at <appvdocs@microsoft.com>.

## Known Issues with Application Virtualization 4.5 SP2


This section provides the most up-to-date information about issues with Microsoft Application Virtualization (App-V) 4.5 SP2. These issues do not appear in the product documentation and in some cases might contradict existing product documentation. Whenever possible, these issues will be addressed in later releases of the software.

### Guidance for installing Server Management Console

If you have to install management software on systems other than the primary Application Virtualization publishing and streaming server, the server installation supports installing the Application Virtualization Management Console and Application Virtualization Management Web service on separate servers from the primary App-V Management Server. To distribute the management components across multiple servers, Kerberos delegation must be enabled on the server where the Application Virtualization Web service is installed. For information about how to enable this support, see [How to Configure the Server to be Trusted for Delegation](https://go.microsoft.com/fwlink/?LinkId=166682) (https://go.microsoft.com/fwlink/?LinkId=166682).

### Guidance for installing or upgrading clients to App-V 4.5 SP2 by using Setup.msi

When installing or upgrading your App-V Clients to App-V 4.5 SP2 by using Setup.msi, the prerequisites are not installed automatically.

WORKAROUND   You must manually install the prerequisites before installing or upgrading the App-V Clients to App-V 4.5 SP2. For detailed procedures about how to install the prerequisites and the App-V Client, see [How to Install the Client by Using the Command Line](https://go.microsoft.com/fwlink/?LinkId=144106) (https://go.microsoft.com/fwlink/?LinkId=144106).

When this has been completed, install the App-V 4.5 SP2 Clients by using Setup.msi with administrative credentials. This file is available on the App-V 4.5 SP2 release media in the Installers\\Client folder.

When installing Microsoft Application Error Reporting, use the following command if you are installing or upgrading to the App-V 4.5 SP2 Desktop Client:

**msiexec /i dw20shared.msi APPGUID={C6FC75B9-7D86-4C44-8BDB-EAFE1F0E200D}  allusers=1 reboot=suppress REINSTALL=all REINSTALLMODE=vomus**

Alternatively, if you are installing or upgrading to the App-V 4.5 SP2 Client for Remote Desktop Services (formerly Terminal Services), use the following command:

**msiexec /i dw20shared.msi APPGUID={ECF80BBA-CA07-4A74-9ED6-E064F38AF1F5} allusers=1 reboot=suppress REINSTALL=all REINSTALLMODE=vomus**

**Note**  
-   The APPGUID parameter references the product code of the App-V Clients that you install or upgrade. The product code is unique for each Setup.msi. You can use the Orca Database Editor or a similar tool to examine Windows Installer files and determine the product code. This step is required for all installations or upgrades to App-V 4.5 SP2.

-   This step is not required if you are upgrading and have previously installed Dw20shared.msi.

 

### Improving performance when sequencing the .NET Framework

When sequencing the Microsoft .NET Framework, you might experience reduced system performance because the .NET Framework NGEN service attempts to precompile assemblies as a background task.

WORKAROUND   When sequencing the .NET Framework, disable the .NET Framework NGEN service (Mscorsvw.exe) after completing the monitoring phase. You must use the **Virtual Services** tab in the App-V Sequencer and change the startup type to **Disabled**.

### When you uninstall the Microsoft Application Virtualization Client, user settings associated with the user performing the uninstallation are deleted

When you uninstall the App-V Client, the Windows Installer removes Application Virtualization settings from the current user's profile. If your computer uses roaming profiles, do not use your personal network account to uninstall the client because it will remove settings for your virtual applications on all of your computers.

WORKAROUND   You must uninstall the App-V Client with an administrative account that is not used for running virtual applications.

### Edits made on the virtual file system and virtual registry tabs must be saved while running the Sequencing wizard

If you open a package to perform an upgrade, or if you have already run the Sequencing wizard with a new package and make changes to the package in the virtual file system or virtual registry tabs, those changes are not automatically saved.

WORKAROUND   Save the changes before re-running the wizard, to ensure that they are reflected inside the wizard’s virtual environment.

### Command-line Sequencer must be run from an elevated command prompt

When you use the command-line Sequencer, it does not prompt for elevation.

WORKAROUND   Run the command-line Sequencer by using an elevated command prompt.

### Short path variable names in OSD files can cause errors

If you receive error 450478-1F702339-0000010B "The directory name is invalid" when starting a virtual application on the client, it is possible that the variable in the OSD is set incorrectly. This can happen if the application’s installer sets a short path name during sequencing.

WORKAROUND   Remove the trailing tilde from any CSIDL variable that exists in the OSD file.

### <a href="" id="correct-syntax-for-decodepath-parameter-for-command-line-sequencer-"></a>Correct syntax for DECODEPATH parameter for command-line Sequencer

In the command-line Sequencer, when opening a package for upgrade and decoding it to the root of drive Q, the syntax for the *DECODEPATH* parameter should not include a trailing slash.

WORKAROUND   You can use **Q:** rather than **Q:\\** (omitting the trailing "\\" character).

### <a href="" id="when-upgrading-app-v-4-2-packages--you-encounter-problems-caused-by-windows-installer-files-in-the-virtual-file-system-"></a>When upgrading APP-V 4.2 packages, you encounter problems caused by Windows Installer files in the Virtual File System

When upgrading a package from APP-V 4.2, you might experience issues relating to a mismatch of Windows Installer system files that were included by default in APP-V 4.2 and the Windows Installer libraries locally installed on your Sequencing workstation. The following files are located in CSIDL\_SYSTEM\\:

Cabinet.dll

Msi.dll

Msiexec.exe

Msihnd.dll

Msimsg.dlll

WORKAROUND   Delete all of the preceding files from the package. Delete the mappings on the **VFS** tab and the actual files in the CSIDL\_SYSTEM folder in your decode path.

### <a href="" id="on-windows-xp--by-default--client-installation-logging-is-not-enabled-"></a>On Windows XP, by default, client installation logging is not enabled

When installing the client, to ensure that any install errors are captured for troubleshooting, you must enable logging by using the command line.

WORKAROUND   Add the parameter */l\*vx! log.txt* to the command line, as shown in the following example:

**setup.exe /s /v”/qn /l\*vx! log.txt”**

**msiexec.exe /i setup.msi /qn /l\*vx! log.txt**

Alternatively, you can set the registry key to the following value:

**\[HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\Installer\] "Logging"="voicewarmupx!"**

### For Kerberos authentication to work, Service Principal Names (SPNs) must be registered for IIS

When using Internet Information Services (IIS) 6.0 or IIS 7.0 for icon or OSD file retrieval and streaming of packages, to enable Kerberos authentication, the SPNs must be registered as follows:

-   On the IIS server, run the following commands by using the SETSPN.EXE Resource Kit tool. The server fully qualified domain name (FQDN) must be used.

    **Setspn -r SOFTGRID/&lt;Server FQDN&gt;**

    **Setspn -r HTTP/&lt;Server FQDN&gt;**

For more information, see [Integrated Windows Authentication (IIS 6.0)](https://go.microsoft.com/fwlink/?LinkId=131407) (https://go.microsoft.com/fwlink/?LinkId=131407).

### .NET compatibility changes

Microsoft Application Virtualization (App-V) Cumulative Update 1 or later supports sequencing the .NET Framework on Windows XP SP2 or later. Sequencing routines for .NET applications that were written for SoftGrid 4.2 might have to be updated when used with the App-V 4.5 Sequencer. For details and workarounds, see the Application Virtualization TechCenter article at [Support for .NET in Microsoft Application Virtualization 4.5](https://go.microsoft.com/fwlink/?LinkId=123412) (https://go.microsoft.com/fwlink/?LinkId=123412).

### <a href="" id="after-client-upgrade-from-app-v-4-2--some-applications-are-not-shown-"></a>After client upgrade from App-V 4.2, some applications are not shown

Check for the following error in the log: "The Application Virtualization Client could not parse the OSD file". The App-V 4.5 Client filters out applications that have an OSD file that contains an empty OS tag (&lt;OS&gt;&lt;/OS&gt;).

WORKAROUND   Delete the empty OS tag from the OSD file.

### The App-V server requires exemptions in its firewall for certain processes

For the server to stream applications correctly, the server's core processes, including the dispatcher, require access through the firewall.

WORKAROUND   Set exemptions in the server's firewall for the following processes: Sghwsvr.exe and Sghwdsptr.exe. This applies to the App-V Management Server and App-V Streaming Server.

### When the server installer is run in silent mode, it does not correctly check for MSXML6

The App-V Management Server depends on MSXML6. However, if you run the installer in silent mode—for example, by using the command **msiexec -i setup.msi /qn** on a system where MSXML6 is not already installed—the installer does not detect the missing dependency and installs anyway. Therefore, when clients attempt to refresh publishing information from the App-V Management Server, they will get errors.

WORKAROUND   Verify that MSXML6 is installed on the system before attempting a silent installation of the App-V Management Server.

### Error code 000C800 when attempting to connect to the Application Virtualization Management Console

An Application Virtualization administrator who is not a local administrator on the App-V Management Web Service server receives an error (Error code: 000C800) when attempting to connect to the App-V Management Console, and the Sftmmc.log entry indicates that access to SftMgmt.udl is denied. To successfully connect to the App-V Management Console, an administrator who does not have local administrator rights on the App-V Management Web Service server must have at least Read and Execute permissions to the SftMgmt.udl file.

Application Virtualization administrators must have Read and Execute permissions to the SftMgmt.UDL file in folder %systemdrive%\\Program Files\\Microsoft System Center App Virt Management Server\\App Virt Management Service.

### Client installer command-line parameters are ignored when used in conjunction with KEEPCURRENTSETTINGS=1

When used in conjunction with KEEPCURRENTSETTINGS=1, the following client installer command-line parameters are ignored: SWICACHESIZE, MINFREESPACEMB, ALLOWINDEPENDENTFILESTREAMING, APPLICATIONSOURCEROOT, ICONSOURCEROOT, OSDSOURCEROOT, SYSTEMEVENTLOGLEVEL, SWIGLOBALDATA, DOTIMEOUTMINUTES, SWIFSDRIVE, AUTOLOADTARGET, AUTOLOADTRIGGERS, SWIUSERDATA, and REQUIRESECURECONNECTION.

WORKAROUND   If you have settings you want to retain, use KEEPCURRENTSETTINGS=1, and then set the other parameters after deployment. The App-V ADM Template can be used to set the following client settings: APPLICATIONSOURCEROOT, ICONSOURCEROOT, OSDSOURCEROOT, AUTOLOADTARGET, AUTOLOADTRIGGERS, DOTIMEOUTMINUTES, and ALLOWINDEPENDENTFILESTREAMING. You can download the ADM Template from the Microsoft DownLoad Center at [Microsoft Application Virtualization Administrative Template (ADM Template)](https://go.microsoft.com/fwlink/?LinkId=121835) (https://go.microsoft.com/fwlink/?LinkId=121835).

### Release Notes Copyright Information

This document is provided "as-is". Information and views expressed in this document, including URL and other Internet Web site references, may change without notice. You bear the risk of using it.

Some examples depicted herein are provided for illustration only and are fictitious.  No real association or connection is intended or should be inferred.

This document does not provide you with any legal rights to any intellectual property in any Microsoft product. You may copy and use this document for your internal, reference purposes. You may modify this document for your internal, reference purposes.



Microsoft, Active Directory, ActiveSync, MS-DOS, Windows, Windows Server, and Windows Vista are trademarks of the Microsoft group of companies.

All other trademarks are property of their respective owners.

 

 





