---
title: Windows Defender Antivirus on Windows Server 2016
description: Enable and configure Windows Defender AV on Windows Server 2016 
keywords: windows defender, server, scep, system center endpoint protection, server 2016, current branch, server 2012
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: iaanw
ms.author: iawilt
ms.date: 08/25/2017
---


# Windows Defender Antivirus on Windows Server 2016


**Applies to:**

- Windows Server 2016

**Audience**

- Enterprise security administrators
- Network administrators


**Manageability available with**

- Group Policy
- System Center Configuration Manager 
- PowerShell
- Windows Management Instrumentation (WMI)


Windows Defender Antivirus is available on Windows Server 2016. In some instances it is referred to as Endpoint Protection - however, the protection engine is the same.

While the functionality, configuration, and management is largely the same for Windows Defender AV either on Windows 10 or Windows Server 2016, there are a few key differences:

- In Windows Server 2016, [automatic exclusions](configure-server-exclusions-windows-defender-antivirus.md) are applied based on your defined Server Role.
- In Windows Server 2016, Windows Defender AV will not disable itself if you are running another antivirus product.

This topic includes the following instructions for setting up and running Windows Defender AV on a server platform:

-   [Enable the interface](#BKMK_UsingDef)

-   [Verify Windows Defender AV is running](#BKMK_DefRun)

-   [Update antimalware definitions](#BKMK_UpdateDef)

-   [Submit Samples](#BKMK_DefSamples)

-   [Configure automatic exclusions](#BKMK_DefExclusions)

<a name="BKMK_UsingDef"></a>
## Enable the interface
By default, Windows Defender AV is installed and functional on Windows Server 2016. The user interface is installed by default on some SKUs. 

You can enable or disable the interface by using the **Add Roles and Features Wizard** or PowerShellCmdlets, as described in the [Install or uninstall roles, role services, or features](https://docs.microsoft.com/en-us/windows-server/administration/server-manager/install-or-uninstall-roles-role-services-or-features) topic.

The following PowerShell cmdlet will enable the interface: 

```PowerShell
Install-WindowsFeature -Name Windows-Defender-GUI
```

The following cmdlet will disable the interface:

```PS
Uninstall-WindowsFeature -Name Windows-Server-Antimalware
```

> [!TIP]
> Event messages for the antimalware engine included with Windows Defender AV can be found in [Windows Defender AV Events](troubleshoot-windows-defender-antivirus.md).


<a name="BKMK_DefRun"></a>
## Verify Windows Defender is running
To verify that Windows Defender AV is running on the server, run the following command from a command prompt: 

```DOS
sc query Windefend
```

The `sc query` command returns information about the Windows Defender service. If Windows Defender is running, the `STATE` value displays `RUNNING`.

<a name="BKMK_UpdateDef"></a>
## Update antimalware definitions
In order to get updated antimalware definitions, you must have the Windows Update service running. If you use an update management service, like Windows Server Update Services (WSUS), make sure that updates for Windows Defender AV definitions are approved for the computers you manage.

By default, Windows Update does not download and install updates automatically on Windows Server 2016. You can change this configuration by using one of the following methods:

-   **Windows Update** in Control Panel.

    -   **Install updates automatically** results in all updates being automatically installed, including Windows Defender definition updates.

    -   **Download updates but let me choose whether to install them** allows Windows Defender to download and install definition updates automatically, but other updates are not automatically installed.

-   **Group Policy**. You can set up and manage Windows Update by using the settings available in Group Policy, in the following path: **Administrative Templates\Windows Components\Windows Update\Configure Automatic Updates**

-   The **AUOptions** registry key. The following two values allow Windows Update to automatically download and install definition updates.

    -   **4** Install updates automatically. This value results in all updates being automatically installed, including Windows Defender definition updates.

    -   **3** Download updates but let me choose whether to install them.  This value allows Windows Defender to download and install definition updates automatically, but other updates are not automatically installed.

To ensure that protection from malware is maintained, we recommend that you enable the following services:

-   Windows Defender Network Inspection service

-   Windows Error Reporting service

-   Windows Update service

The following table lists the services for Windows Defender and the dependent services.

|Service Name|File Location|Description|
|--------|---------|--------|
|Windows Defender Service (Windefend)|C:\Program Files\Windows Defender\MsMpEng.exe|This is the main Windows Defender Antivirus service that needs to be running at all times.|
|Windows Defender Network Inspection Service (Wdnissvc)|C:\Program Files\Windows Defender\NisSrv.exe|This service is invoked when Windows Defender Antivirus encounters a trigger to load it.|
|Windows Error Reporting Service (Wersvc)|C:\WINDOWS\System32\svchost.exe -k WerSvcGroup|This service sends error reports back to Microsoft.|
|Windows Firewall (MpsSvc)|C:\WINDOWS\system32\svchost.exe -k LocalServiceNoNetwork|We recommend leaving the Windows Firewall service enabled.|
|Windows Update (Wuauserv)|C:\WINDOWS\system32\svchost.exe -k netsvcs|Windows Update is needed to get definition updates and antimalware engine updates|



<a name="BKMK_DefSamples"></a>
## Submit Samples
Sample submission allows Microsoft to collect samples of potentially malicious software. To help provide continued and up-to-date protection, Microsoft researchers use these samples to analyze suspicious activities and produce updated antimalware definitions.

We collect program executable files, such as .exe files and .dll files. We do not collect files that contain personal data, like Microsoft Word documents and PDF files.

### Enable automatic sample submission

-   To enable automatic sample submission, start a Windows PowerShell console as an administrator, and set the **SubmitSamplesConsent** value data according to one of the following settings:

    -   **0** Always prompt. The Windows Defender service prompts you to confirm submission of all required files. This is the default setting for Windows Defender, but is not recommended for Windows Server 2016 installations without a GUI.

    -   **1** Send safe samples automatically. The Windows Defender service sends all files marked as "safe" and prompts for the remainder of the files.

    -   **2** Never send. The Windows Defender service does not prompt and does not send any files.

    -   **3** Send all samples automatically. The Windows Defender service sends all files without a prompt for confirmation.

<a name="BKMK_DefExclusions"></a>
## Configure automatic exclusions
To help ensure security and performance, certain exclusions are automatically added based on the roles and features you install when using Windows Defender AV on Server 2016.

See the [Configure exclusions in Windows Defender AV on Windows Server](configure-server-exclusions-windows-defender-antivirus.md) topic for more information. 



## Related topics

- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
- [Configure exclusions in Windows Defender AV on Windows Server](configure-server-exclusions-windows-defender-antivirus.md) 


