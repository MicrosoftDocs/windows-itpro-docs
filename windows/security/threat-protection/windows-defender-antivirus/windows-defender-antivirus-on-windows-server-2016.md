---
title: Windows Defender Antivirus on Windows Server 2016 and 2019
description: Enable and configure Windows Defender AV on Windows Server 2016 and 2019 
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
ms.date: 02/25/2020
ms.reviewer: 
manager: dansimp
---

# Windows Defender Antivirus on Windows Server 2016 and 2019

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Windows Defender Antivirus is available on Windows Server 2016 and Windows Server 2019. In some instances, Windows Defender Antivirus is referred to as Endpoint Protection; however, the protection engine is the same.

While the functionality, configuration, and management is largely the same for Windows Defender Antivirus on Windows 10, there are a few key differences on Windows Server 2016 or Windows Server 2019:

- In Windows Server, [automatic exclusions](configure-server-exclusions-windows-defender-antivirus.md) are applied based on your defined Server Role.
- In Windows Server, Windows Defender Antivirus will not disable itself if you are running another antivirus product.

The process of setting up and running Windows Defender Antivirus on a server platform includes several steps:

1. [Enable the interface](#enable-or-disable-the-user-interface-on-windows-server-2016-or-2019)

2. [Install Windows Defender Anvirus]()

2. [Verify Windows Defender Antivirus is running](#verify-windows-defender-is-running)

3. [Update your antimalware Security intelligence](#update-antimalware-security-intelligence)

4. (As needed) [Submit samples](#submit-samples)

5. (As needed) [Configure automatic exclusions](#configure-automatic-exclusions)

6. (If needed) [Uninstall Windows Defender Antivirus](#need-to-uninstall-windows-defender-antivirus)

## Enable the user interface on Windows Server 2016 or 2019

By default, Windows Defender Antivirus is installed and functional on Windows Server 2016 and Windows Server 2019. The user interface (GUI) is installed by default on some SKUs, but is not required because you can use PowerShell or other methods to manage Windows Defender Antivirus. And if the GUI is not installed on your server, you can add it.

### Turn on the GUI for Windows Defender Antivirus

1. Refer to [this article](https://docs.microsoft.com/windows-server/administration/server-manager/install-or-uninstall-roles-role-services-or-features#install-roles-role-services-and-features-by-using-the-add-roles-and-features-wizard), and use the **Add Roles and Features Wizard**.

2. When you get to the **Features** step of the wizard, under **Windows Defender Features**, select the **GUI for Windows Defender** option.

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

## Install Windows Defender Antivirus on Windows Server 2016 or 2019

You can use the Add Roles and Features Wizard or PowerShell to install Windows Defender Antivirus.

### Use the Add Roles and Features Wizard

1. Refer to [this article](https://docs.microsoft.com/windows-server/administration/server-manager/install-or-uninstall-roles-role-services-or-features#install-roles-role-services-and-features-by-using-the-add-roles-and-features-wizard), and use the **Add Roles and Features Wizard**.

2. When you get to the **Features** step of the wizard, select the Windows Defender Antivirus option. Also select the **GUI for Windows Defender** option.

### Use PowerShell

```PowerShell
Install-WindowsFeature -Name Windows-Defender
```

> [!TIP]
> Event messages for the antimalware engine included with Windows Defender Antivirus can be found in [Windows Defender AV Events](troubleshoot-windows-defender-antivirus.md).


## Verify Windows Defender Antivirus is running

To verify that Windows Defender Antivirus is running on your server, run the following PowerShell cmdlet:

```PowerShell
Get-Service -Name windefend
```

To verify that firewall protection is turned on, run the following PowerShell cmdlet:

```PowerShell
Get-Service -Name mpssvc
```

As an alternative to PowerShell, you can use Command Prompt to verify that Windows Defender AV is running. To do that, run the following command from a command prompt: 

```DOS
sc query Windefend
```

The `sc query` command returns information about the Windows Defender Antivirus service. When Windows Defender Antivirus is running, the `STATE` value displays `RUNNING`.

## Update antimalware Security intelligence 

In order to get updated antimalware Security intelligence, you must have the Windows Update service running. If you use an update management service, like Windows Server Update Services (WSUS), make sure that updates for Windows Defender Antivirus Security intelligence are approved for the computers you manage.

By default, Windows Update does not download and install updates automatically on Windows Server 2016 or 2019. You can change this configuration by using one of the following methods:


|Method  |Description  |
|---------|---------|
|**Windows Update** in Control Panel     |- **Install updates automatically** results in all updates being automatically installed, including Windows Defender Security intelligence updates. <br/>- **Download updates but let me choose whether to install them** allows Windows Defender to download and install Security intelligence updates automatically, but other updates are not automatically installed.       |
|**Group Policy**     | You can set up and manage Windows Update by using the settings available in Group Policy, in the following path: **Administrative Templates\Windows Components\Windows Update\Configure Automatic Updates**         |
|The **AUOptions** registry key     |The following two values allow Windows Update to automatically download and install Security intelligence updates: <br/>- **4** Install updates automatically. This value results in all updates being automatically installed, including Windows Defender Security intelligence updates. <br/>- **3** Download updates but let me choose whether to install them.  This value allows Windows Defender to download and install Security intelligence updates automatically, but other updates are not automatically installed.         |

To ensure that protection from malware is maintained, we recommend that you enable the following services:

- Windows Error Reporting service

- Windows Update service

The following table lists the services for Windows Defender Antivirus and the dependent services.

|Service Name|File Location|Description|
|--------|---------|--------|
|Windows Defender Service (Windefend)|C:\Program Files\Windows Defender\MsMpEng.exe|This is the main Windows Defender Antivirus service that needs to be running at all times.|
|Windows Error Reporting Service (Wersvc)|C:\WINDOWS\System32\svchost.exe -k WerSvcGroup|This service sends error reports back to Microsoft.|
|Windows Defender Firewall (MpsSvc)|C:\WINDOWS\system32\svchost.exe -k LocalServiceNoNetwork|We recommend leaving the Windows Defender Firewall service enabled.|
|Windows Update (Wuauserv)|C:\WINDOWS\system32\svchost.exe -k netsvcs|Windows Update is needed to get Security intelligence updates and antimalware engine updates|

## Submit Samples

To submit a file, review the [submission guide](https://docs.microsoft.com/windows/security/threat-protection/intelligence/submission-guide), and then visit the [sample submission portal](https://www.microsoft.com/wdsi/filesubmission)

Sample submission allows Microsoft to collect samples of potentially malicious software. To help provide continued and up-to-date protection, Microsoft researchers use these samples to analyze suspicious activities and produce updated antimalware Security intelligence. We collect program executable files, such as .exe files and .dll files. We do not collect files that contain personal data, like Microsoft Word documents and PDF files.

### Enable automatic sample submission

To enable automatic sample submission, start a Windows PowerShell console as an administrator, and set the **SubmitSamplesConsent** value data according to one of the following settings:

|Setting  |Description  |
|---------|---------|
|**0** Always prompt.     |The Windows Defender Antivirus service prompts you to confirm submission of all required files. This is the default setting for Windows Defender Antivirus, but is not recommended for installations on Windows Server 2016 or 2019 without a GUI.         |
|**1** Send safe samples automatically.     |The Windows Defender Antivirus service sends all files marked as "safe" and prompts for the remainder of the files.         |
|**2** Never send.      |The Windows Defender Antivirus service does not prompt and does not send any files.         |
|**3** Send all samples automatically.     |The Windows Defender Antivirus service sends all files without a prompt for confirmation.         |

## Configure automatic exclusions

To help ensure security and performance, certain exclusions are automatically added based on the roles and features you install when using Windows Defender AV on Server 2016.

See the [Configure exclusions in Windows Defender AV on Windows Server](configure-server-exclusions-windows-defender-antivirus.md) topic for more information. 

## Need to uninstall Windows Defender Antivirus?

If you are using a third-party antivirus solution and you're running into issues with that solution and Windows Defender Antivirus, you can consider uninstalling Windows Defender Antivirus. Before you do that, review the following resources:

- See the question "Should I run Microsoft security software at the same time as other security products?" on the [Windows Defender Security Intelligence Antivirus and antimalware software FAQ](https://www.microsoft.com/wdsi/help/antimalware-faq#multiple-products).

- See [Better together: Windows Defender Antivirus and Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/why-use-microsoft-antivirus). This article describes 10 advantages to using Windows Defender Antivirus together with Microsoft Defender Advanced Threat Protection.

If you determine you do want to uninstall Windows Defender Antivirus, follow these steps:

### Uninstall Windows Defender Antivirus using the Remove Roles and Features wizard

1. Refer to [this article](https://docs.microsoft.com/windows-server/administration/server-manager/install-or-uninstall-roles-role-services-or-features#remove-roles-role-services-and-features-by-using-the-remove-roles-and-features-wizard), and use the **Remove Roles and Features Wizard**. 

2. When you get to the **Features** step of the wizard, unselect the **Windows Defender Features** option. If you unselect **Windows Defender** by itself under the **Windows Defender Features** section, you will be prompted to remove the interface option **GUI for Windows Defender**. 

### Uninstall Windows Defender Antivirus using PowerShell

The following PowerShell cmdlet will also uninstall Windows Defender AV on Windows Server 2016:

```PowerShell
Uninstall-WindowsFeature -Name Windows-Defender
```

### Turn off the GUI for Windows Defender Antivirus

>[!NOTE]
>You can't uninstall the Windows Security app, but you can disable the interface with these instructions.


## Related topics

- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)

- [Configure exclusions in Windows Defender AV on Windows Server](configure-server-exclusions-windows-defender-antivirus.md) 


