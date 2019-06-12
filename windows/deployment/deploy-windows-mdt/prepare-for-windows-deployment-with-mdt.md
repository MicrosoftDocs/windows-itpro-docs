---
title: Prepare for deployment with MDT (Windows 10)
description: This topic will walk you through the steps necessary to create the server structure required to deploy the Windows 10 operating system using the Microsoft Deployment Toolkit (MDT).
ms.assetid: 5103c418-0c61-414b-b93c-a8e8207d1226
ms.reviewer: 
manager: laurawi
ms.author: greglin
keywords: deploy, system requirements
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: mdt
author: greg-lindsay
ms.date: 07/27/2017
ms.topic: article
---

# Prepare for deployment with MDT

**Applies to**
-   Windows 10

This topic will walk you through the steps necessary to create the server structure required to deploy the Windows 10 operating system using the Microsoft Deployment Toolkit (MDT). It covers the installation of the necessary system prerequisites, the creation of shared folders and service accounts, and the configuration of security permissions in the files system and in Active Directory.

For the purposes of this topic, we will use two machines: DC01 and MDT01. DC01 is a domain controller and MDT01 is a Windows Server 2012 R2 standard server. MDT01 is a member of the domain contoso.com for the fictitious Contoso Corporation. For more details on the setup for this topic, please see [Deploy Windows 10 with the Microsoft Deployment Toolkit](deploy-windows-10-with-the-microsoft-deployment-toolkit.md#proof).

## <a href="" id="sec01"></a>System requirements

MDT requires the following components:
-   Any of the following operating systems:
    -   Windows 7
    -   Windows 8
    -   Windows 8.1
    -   Windows 10
    -   Windows Server 2008 R2
    -   Windows Server 2012
    -   Windows Server 2012 R2
-   Windows Assessment and Deployment Kit (ADK) for Windows 10
-   Windows PowerShell
-   Microsoft .NET Framework

## <a href="" id="sec02"></a>Install Windows ADK for Windows 10

These steps assume that you have the MDT01 member server installed and configured and that you have downloaded [Windows ADK for Windows 10](https://go.microsoft.com/fwlink/p/?LinkId=526803) to the E:\\Downloads\\ADK folder.
1. On MDT01, log on as Administrator in the CONTOSO domain using a password of <strong>P@ssw0rd</strong>.
2. Start the **ADK Setup** (E:\\Downloads\\ADK\\adksetup.exe), and on the first wizard page, click **Continue**.
3. On the **Select the features you want to change** page, select the features below and complete the wizard using the default settings:
   1.  Deployment Tools
   2.  Windows Preinstallation Environment (Windows PE)
   3.  User State Migration Tool (USMT)

   >[!IMPORTANT]
   >Starting with Windows 10, version 1809, Windows PE is released separately from the ADK. See [Download and install the Windows ADK](https://docs.microsoft.com/windows-hardware/get-started/adk-install) for more information.

## <a href="" id="sec03"></a>Install MDT

These steps assume that you have downloaded [MDT](https://go.microsoft.com/fwlink/p/?LinkId=618117 ) to the E:\\Downloads\\MDT folder on MDT01.

1. On MDT01, log on as Administrator in the CONTOSO domain using a password of <strong>P@ssw0rd</strong>.
2. Install **MDT** (E:\\Downloads\\MDT\\MicrosoftDeploymentToolkit\_x64.msi) with the default settings.

## <a href="" id="sec04"></a>Create the OU structure

If you do not have an organizational unit (OU) structure in your Active Directory, you should create one. In this section, you create an OU structure and a service account for MDT.
1.  On DC01, using Active Directory User and Computers, in the contoso.com domain level, create a top-level OU named **Contoso**.
2.  In the **Contoso** OU, create the following OUs:
    1.  Accounts
    2.  Computers
    3.  Groups
3.  In the **Contoso / Accounts** OU, create the following underlying OUs:
    1.  Admins
    2.  Service Accounts
    3.  Users
4.  In the **Contoso / Computers** OU, create the following underlying OUs:
    1.  Servers
    2.  Workstations
5.  In the **Contoso / Groups** OU, create the following OU:
    -   Security Groups

![figure 6](../images/mdt-05-fig07.png)

Figure 6. A sample of how the OU structure will look after all the OUs are created.

## <a href="" id="sec05"></a>Create the MDT service account

When creating a reference image, you need an account for MDT. The MDT Build Account is used for Windows Preinstallation Environment (Windows PE) to connect to MDT01.
1.  On DC01, using Active Directory User and Computers, browse to **contoso.com / Contoso / Service Accounts**.
2.  Select the **Service Accounts** OU and create the **MDT\_BA** account using the following settings:
    1.  Name: MDT\_BA
    2.  User logon name: MDT\_BA
    3.  Password: P@ssw0rd
    4.  User must change password at next logon: Clear
    5.  User cannot change password: Selected
    6.  Password never expires: Selected

## <a href="" id="sec06"></a>Create and share the logs folder

By default MDT stores the log files locally on the client. In order to capture a reference image, you will need to enable server-side logging and, to do that, you will need to have a folder in which to store the logs. For more information, see [Create a Windows 10 reference image](create-a-windows-10-reference-image.md).

1.  On MDT01, log on as **CONTOSO\\Administrator**.
2.  Create and share the **E:\\Logs** folder by running the following commands in an elevated Windows PowerShell prompt:

    ``` syntax
    New-Item -Path E:\Logs -ItemType directory
    New-SmbShare -Name Logs$ -Path E:\Logs -ChangeAccess EVERYONE
    icacls E:\Logs /grant '"MDT_BA":(OI)(CI)(M)'
    ```

![figure 7](../images/mdt-05-fig08.png)

Figure 7. The Sharing tab of the E:\\Logs folder after sharing it with PowerShell.

## <a href="" id="sec07"></a>Use CMTrace to read log files (optional)

The log files in MDT Lite Touch are formatted to be read by Configuration Manager Trace (CMTrace), which is available as part [of Microsoft System Center 2012 R2 Configuration Manager Toolkit](https://go.microsoft.com/fwlink/p/?LinkId=734717). You can use Notepad, but CMTrace formatting makes the logs easier to read.

![figure 8](../images/mdt-05-fig09.png)

Figure 8. An MDT log file opened in Notepad.

![figure 9](../images/mdt-05-fig10.png)


Figure 9. The same log file, opened in CMTrace, is much easier to read.
## Related topics

[Key features in MDT](key-features-in-mdt.md)

[MDT Lite Touch components](mdt-lite-touch-components.md)
