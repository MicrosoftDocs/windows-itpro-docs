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
author: denisebmsft
ms.author: deniseb
ms.date: 09/10/2019
ms.reviewer: 
manager: dansimp
---

# Windows Defender Antivirus on Windows Server 2016

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Windows Defender Antivirus is available on Windows Server 2016. In some instances it is referred to as Endpoint Protection - however, the protection engine is the same.

While the functionality, configuration, and management is largely the same for Windows Defender AV either on Windows 10 or Windows Server 2016, there are a few key differences:

- In Windows Server 2016, [automatic exclusions](configure-server-exclusions-windows-defender-antivirus.md) are applied based on your defined Server Role.
- In Windows Server 2016, Windows Defender AV will not disable itself if you are running another antivirus product.

This topic includes the following instructions for setting up and running Windows Defender AV on a server platform:

-   [Enable the interface](#BKMK_UsingDef)

-   [Verify Windows Defender AV is running](#BKMK_DefRun)

-   [Update antimalware Security intelligence](#BKMK_UpdateDef)

-   [Submit Samples](#BKMK_DefSamples)

-   [Configure automatic exclusions](#BKMK_DefExclusions)

## Enable or disable the interface on Windows Server 2016
By default, Windows Defender AV is installed and functional on Windows Server 2016. The user interface is installed by default on some SKUs, but is not required.

>[!NOTE]
>You can't uninstall the Windows Security app, but you can disable the interface with these instructions.

If the interface is not installed, you can add it in the **Add Roles and Features Wizard** at the **Features** step, under **Windows Defender Features** by selecting the **GUI for Windows Defender** option.

![Add roles and feature wizard showing the GUI for Windows Defender option](images/server-add-gui.png)

See the [Install or uninstall roles, role services, or features](https://docs.microsoft.com/windows-server/administration/server-manager/install-or-uninstall-roles-role-services-or-features) topic for information on using the wizard.

The following PowerShell cmdlet will also enable the interface: 

```PowerShell
Install-WindowsFeature -Name Windows-Defender-GUI
```

To hide the interface, use the **Remove Roles and Features Wizard** and deselect the **GUI for Windows Defender** option at the **Features** step, or use the following PowerShell cmdlet:


```PowerShell
Uninstall-WindowsFeature -Name Windows-Defender-GUI
```


>[!IMPORTANT]
> Windows Defender AV will still run normally without the user interface, but the user interface cannot be enabled if you disable the core **Windows Defender** feature.

## Install or uninstall Windows Defender AV on Windows Server 2016


You can also uninstall Windows Defender AV completely with the **Remove Roles and Features Wizard** by deselecting the **Windows Defender Features** option at the **Features** step in the wizard.

This is useful if you have a third-party antivirus product installed on the machine already. Multiple AV products can cause problems when installed and actively running on the same machine. See the question "Should I run Microsoft security software at the same time as other security products?" on the [Windows Defender Security Intelligence Antivirus and antimalware software FAQ](https://www.microsoft.com/wdsi/help/antimalware-faq#multiple-products).

>[!NOTE]
>Deselecting **Windows Defender** on its own under the **Windows Defender Features** section will automatically prompt you to remove the interface option **GUI for Windows Defender**. 




The following PowerShell cmdlet will also uninstall Windows Defender AV on Windows Server 2016:


```PowerShell
Uninstall-WindowsFeature -Name Windows-Defender
```

To install Windows Defender AV again, use the **Add Roles and Features Wizard** and ensure the **Windows Defender** feature is selected. You can also enable the interface by selecting the **GUID for Windows Defender** option.

You can also use the following PowerShell cmdlet to install Windows Defender AV:

```PowerShell
Install-WindowsFeature -Name Windows-Defender
```

> [!TIP]
> Event messages for the antimalware engine included with Windows Defender AV can be found in [Windows Defender AV Events](troubleshoot-windows-defender-antivirus.md).


## Verify Windows Defender is running

To verify that Windows Defender AV is running on the server, run the following PowerShell cmdlet:

```PowerShell
Get-Service -Name windefend
```

To verify that firewall protection through Windows Defender is turned on, run the following PowerShell cmdlet:

```PowerShell
Get-Service -Name mpssvc
```

As an alternative to PowerShell, you can use Command Prompt to verify that Windows Defender AV is running. To do that, run the following command from a command prompt: 

```DOS
sc query Windefend
```

The `sc query` command returns information about the Windows Defender service. If Windows Defender is running, the `STATE` value displays `RUNNING`.

## Update antimalware Security intelligence 

In order to get updated antimalware Security intelligence , you must have the Windows Update service running. If you use an update management service, like Windows Server Update Services (WSUS), make sure that updates for Windows Defender Antivirus Security intelligence are approved for the computers you manage.

By default, Windows Update does not download and install updates automatically on Windows Server 2016. You can change this configuration by using one of the following methods:

-   **Windows Update** in Control Panel.

    -   **Install updates automatically** results in all updates being automatically installed, including Windows Defender Security intelligence updates.

    -   **Download updates but let me choose whether to install them** allows Windows Defender to download and install Security intelligence updates automatically, but other updates are not automatically installed.

-   **Group Policy**. You can set up and manage Windows Update by using the settings available in Group Policy, in the following path: **Administrative Templates\Windows Components\Windows Update\Configure Automatic Updates**

-   The **AUOptions** registry key. The following two values allow Windows Update to automatically download and install Security intelligence updates.

    -   **4** Install updates automatically. This value results in all updates being automatically installed, including Windows Defender Security intelligence updates.

    -   **3** Download updates but let me choose whether to install them.  This value allows Windows Defender to download and install Security intelligence updates automatically, but other updates are not automatically installed.

To ensure that protection from malware is maintained, we recommend that you enable the following services:

-   Windows Error Reporting service

-   Windows Update service

The following table lists the services for Windows Defender and the dependent services.

|Service Name|File Location|Description|
|--------|---------|--------|
|Windows Defender Service (Windefend)|C:\Program Files\Windows Defender\MsMpEng.exe|This is the main Windows Defender Antivirus service that needs to be running at all times.|
|Windows Error Reporting Service (Wersvc)|C:\WINDOWS\System32\svchost.exe -k WerSvcGroup|This service sends error reports back to Microsoft.|
|Windows Defender Firewall (MpsSvc)|C:\WINDOWS\system32\svchost.exe -k LocalServiceNoNetwork|We recommend leaving the Windows Defender Firewall service enabled.|
|Windows Update (Wuauserv)|C:\WINDOWS\system32\svchost.exe -k netsvcs|Windows Update is needed to get Security intelligence updates and antimalware engine updates|

## Submit Samples

Sample submission allows Microsoft to collect samples of potentially malicious software. To help provide continued and up-to-date protection, Microsoft researchers use these samples to analyze suspicious activities and produce updated antimalware Security intelligence.

We collect program executable files, such as .exe files and .dll files. We do not collect files that contain personal data, like Microsoft Word documents and PDF files.

### Enable automatic sample submission

To enable automatic sample submission, start a Windows PowerShell console as an administrator, and set the **SubmitSamplesConsent** value data according to one of the following settings:

-   **0** Always prompt. The Windows Defender service prompts you to confirm submission of all required files. This is the default setting for Windows Defender, but is not recommended for Windows Server 2016 installations without a GUI.

-   **1** Send safe samples automatically. The Windows Defender service sends all files marked as "safe" and prompts for the remainder of the files.

-   **2** Never send. The Windows Defender service does not prompt and does not send any files.

-   **3** Send all samples automatically. The Windows Defender service sends all files without a prompt for confirmation.

## Configure automatic exclusions

To help ensure security and performance, certain exclusions are automatically added based on the roles and features you install when using Windows Defender AV on Server 2016.

See the [Configure exclusions in Windows Defender AV on Windows Server](configure-server-exclusions-windows-defender-antivirus.md) topic for more information. 

## Related topics

- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
- [Configure exclusions in Windows Defender AV on Windows Server](configure-server-exclusions-windows-defender-antivirus.md) 


