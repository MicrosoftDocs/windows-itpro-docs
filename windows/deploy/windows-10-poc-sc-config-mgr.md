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

1. Before installing System Center Configuration Manager, we must install prerequisite services and features. Type the following commands at an elevated Windows PowerShell prompt on SRV1: 

    ```
    Install-WindowsFeature Web-Windows-Auth,Web-ISAPI-Ext,Web-Metabase,Web-WMI,BITS,RDC,NET-Framework-Features,Web-Asp-Net,Web-Asp-Net45,NET-HTTP-Activation,NET-Non-HTTP-Activ
    ```

2. Download [SQL Server 2012 SP2](https://www.microsoft.com/en-us/evalcenter/evaluate-sql-server-2014-sp2) from the Microsoft Evaluation Center as an .ISO file on the Hyper-V host computer. Save the file to the **C:\VHD** directory.
3. When you have downloaded the file **SQLServer2014SP2-FullSlipstream-x64-ENU.iso** and placed it in the C:\VHD directory, type the following command at an elevated Windows PowerShell prompt on the Hyper-V host: 

    ```
    Set-VMDvdDrive -VMName SRV1 -Path c:\VHD\SQLServer2014SP2-FullSlipstream-x64-ENU.iso
    ```

    This command mounts the .ISO file to drive D on SRV1.

4. Type the following command at an elevated Windows PowerShell prompt on SRV1 to install SQL Server 2012 SP2:

    ```
    D:\setup.exe /q /ACTION=Install /ERRORREPORTING="False" /FEATURES=SQLENGINE,RS,IS,SSMS,TOOLS,ADV_SSMS,CONN /INSTANCENAME=MSSQLSERVER /INSTANCEDIR="C:\Program Files\Microsoft SQL Server" /SQLSVCACCOUNT="NT AUTHORITY\System" /SQLSYSADMINACCOUNTS="BUILTIN\ADMINISTRATORS" /SQLSVCSTARTUPTYPE=Automatic /AGTSVCACCOUNT="NT AUTHORITY\SYSTEM" /AGTSVCSTARTUPTYPE=Automatic /RSSVCACCOUNT="NT AUTHORITY\System" /RSSVCSTARTUPTYPE=Automatic /ISSVCACCOUNT="NT AUTHORITY\System" /ISSVCSTARTUPTYPE=Disabled /ASCOLLATION="Latin1_General_CI_AS" /SQLCOLLATION="SQL_Latin1_General_CP1_CI_AS" /TCPENABLED="1" /NPENABLED="1" /IAcceptSQLServerLicenseTerms
    ```
    Installation might take several minutes. When installation is complete, the following output will be displayed:

    ```
    Microsoft (R) SQL Server 2014 12.00.5000.00
    Copyright (c) Microsoft Corporation.  All rights reserved.

    Microsoft (R) .NET Framework CasPol 2.0.50727.7905
    Copyright (c) Microsoft Corporation.  All rights reserved.

    Success
    Microsoft (R) .NET Framework CasPol 2.0.50727.7905
    Copyright (c) Microsoft Corporation.  All rights reserved.

    Success
    ```
5. Type the following command at an elevated Windows PowerShell prompt on SRV1:

    ```
    netsh firewall set portopening protocol = TCP port = 1433 name = SQLPort mode = ENABLE scope = SUBNET profile = CURRENT
    ```
5. On SRV1, temporarily disable IE Enhanced Security Configuration for Administrators by typing the following commands at an elevated Windows PowerShell prompt:

    ```
    $AdminKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}"
    Set-ItemProperty -Path $AdminKey -Name “IsInstalled” -Value 0
    Stop-Process -Name Explorer
    ```
6. Download and install the latest [Windows Assessment and Deployment Kit (ADK)](https://developer.microsoft.com/en-us/windows/hardware/windows-assessment-deployment-kit) on SRV1 using the default installation settings. The current version is the ADK for Windows 10, version 1607. Installation might require several minutes to acquire all components.   

## Install System Center Configuration Manager

1. Download [System Center Configuration Manager and Endpoint Protection](https://www.microsoft.com/en-us/evalcenter/evaluate-system-center-configuration-manager-and-endpoint-protection) on SRV1, double-click the file, enter **C:\configmgr** for **Unzip to folder**, and click **Unzip**. The C:\configmgr directory will be automatically created. Click **OK** and then close the **WinZip Self-Extractor** dialog box when finished.

2. To start installation, type the following command at an elevated command prompt:

    ```
    C:\configmgr\SMSSETUP\BIN\X64\Setup.exe
    ```
3. Provide the following in the System Center Configuration Manager Setup Wizard:
    - **Before You Begin**: Read the text and click *Next*.
    - **Getting Started**: Choose **Install a Configuration Manager primary site** and select the **Use typical installation options for a stand-alone primary site** checkbox.
        - Click **Yes** in response to the popup window.
    - **Product Key**: Choose **Install the evaluation edition of this Product**.
    - **Microsoft Software License Terms**: Read the terms and then select the **I accept these license terms** checkbox.
    - **Prerequisite Licenses**: Review license terms and select all three checkboxes on the page.
    - **Prerequisite Downloads**: Choose **Download required files** and enter **c:\windows\temp** next to **Path**. 
    - **Site and Installation Settings**: Site code: **PS1**, Site name: **Contoso**.
        - use default settings for all other options
    - **Usage Data**: Read the text and click **Next**.
    - **Service Connection Point Setup**: Accept the default settings (SRV1.contoso.com is automatically added under Select a server to use).
    - **Settings Summary**: Review settings and click **Next**.
    - **Prerequisite Check**: 

## Related Topics

 

 





