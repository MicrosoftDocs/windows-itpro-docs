---
title: Placeholder (Windows 10)
description: Deploy Windows 10 in a test lab using System Center Configuration Manager 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
---

# Deploy Windows 10 in a test lab using System Center Configuration Manager

**Applies to**

-   Windows 10

**Important**: This guide leverages the proof of concept (PoC) environment configured using procedures in [Step by step guide: Deploy Windows 10 in a test lab](windows-10-poc.md). Please complete all steps in the prerequisite guide before attempting the procedures in this guide.

If you have already completed [Deploy Windows 10 in a test lab using Microsoft Deployment Toolkit](windows-10-poc-mdt.md), you can skip some steps of this guide, such as installation of MDT.

The PoC environment is a virtual network running on Hyper-V with three virtual machines (VMs):
- **DC1**: A contoso.com domain controller, DNS server, and DHCP server.
- **SRV1**: A dual-homed contoso.com domain member server, DNS server, and default gateway providing NAT service for the PoC network.
- **PC1**: A contoso.com member computer running Windows 7, Windows 8, or Windows 8.1 that has been cloned from a physical computer on your corporate network for testing purposes.

This guide leverages the Hyper-V server role to perform procedures. If you do not complete all steps in a single session, consider using [checkpoints](https://technet.microsoft.com/library/dn818483.aspx) and [saved states](https://technet.microsoft.com/library/ee247418.aspx) to pause, resume, or restart your work.

## In this guide

Description here.

## Install prerequisites

1. On SRV1, type the following command at an elevated Windows PowerShell prompt on SRV1 to enable .NET Framework 3.5: 
    ```
    Add-WindowsFeature NET-Framework-Core
    ```
2. 

## Install System Center Configuration Manager


2. On SRV1, temporarily disable IE Enhanced Security Configuration for Administrators by typing the following commands at an elevated Windows PowerShell prompt:
    ```
    $AdminKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}"
    Set-ItemProperty -Path $AdminKey -Name “IsInstalled” -Value 0
    Stop-Process -Name Explorer
    ```
3. Download [System Center Configuration Manager and Endpoint Protection](https://www.microsoft.com/en-us/evalcenter/evaluate-system-center-configuration-manager-and-endpoint-protection) on SRV1, double-click the file, enter **C:\configmgr** for **Unzip to folder**, and click **Unzip**. The directory will be automatically created. Click **OK** and then close the WinZip Self-Extractor dialog box when finished.

```
New-Item -Path c:\setupdl -ItemType Directory
New-SmbShare -Name SetupDL$ -Path C:\setupdl -ChangeAccess EVERYONE
cmd /c c:\configmgr\SMSSETUP\BIN\X64\setupdl.exe "\\greglin-xps\SetupDL$"

Install-WindowsFeature Web-Windows-Auth
Install-WindowsFeature Web-ISAPI-Ext
Install-WindowsFeature Web-Metabase
Install-WindowsFeature Web-WMI
Install-WindowsFeature BITS
Install-WindowsFeature RDC
Install-WindowsFeature NET-Framework-Features
Install-WindowsFeature Web-Asp-Net
Install-WindowsFeature Web-Asp-Net45
Install-WindowsFeature NET-HTTP-Activation
Install-WindowsFeature NET-Non-HTTP-Activ


```

OK this is what I need to go with:
https://gallery.technet.microsoft.com/ConfigMgr-2012-R2-e52919cd


4. To start installation, type the following command at an elevated Windows PowerShell prompt:

    ```
    C:\configmgr\SMSSETUP\BIN\X64\Setup.exe
    ```
5. Provide the following in the System Center Configuration Manager Setup Wizard:
    - **Before You Begin**: Read the text and click *Next*.
    - **Getting Started**: Choose **Install a Configuration Manager primary site** and select the **Use typical installation options for a stand-alone primary site** checkbox.
        - Click **Yes** in response to the popup window.
    - **Product Key**: Choose **Install the evaluation edition of this Product**.
    - **Microsoft Software License Terms**: Read the terms and then select the I accept these license terms checkbox.
    - **Prerequisite Licenses**: Review license terms and select all three checkboxes on the page.
    - **Prerequisite Downloads**: Choose **Download required files** and enter **c:\configmgr** next to **Path**. 
    - **Site and Installation Settings**: Site code: **PS1**, Site name: **Contoso**.
        - use default settings for all other options
    - **Usage Data**: Read the text and click **Next**.
    - **Service Connection Point Setup**: Accept the default settings (SRV1.contoso.com is automatically added under Select a server to use).
    - **Settings Summary**: Review settings and click **Next**.
    - **Prerequisite Check**: 

## Related Topics

 

 





