---
title: Simulate a Windows 10 deployment in a test environment (Windows 10)
description: This topic will walk you through the process of creating a simulated environment on which to test your Windows 10 deployment using MDT.
ms.assetid: 2de86c55-ced9-4078-b280-35e0329aea9c
ms.reviewer: 
manager: dougeby
ms.author: aaroncz
keywords: deploy, script
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: mdt
audience: itpro
author: aczechowski
ms.topic: article
---

# Simulate a Windows 10 deployment in a test environment

This topic will walk you through the process of creating a simulated environment on which to test your Windows 10 deployment using MDT. When working with advanced settings and rules, especially those like database calls, it is most efficient to be able to test the settings without having to run through a complete deployment. Luckily, MDT enables you to perform a simulated deployment by running the Gather process by itself. The simulation works best when you are using a domain-joined client.

## Test environment

- A Windows 10 client named **PC0001** will be used to simulate deployment. The client is joined to the contoso.com domain and has access to the Internet to required download tools and scripts.
- It is assumed that you have performed (at least) the following procedures so that you have an MDT service account and an MDT production deployment share:
  - [Prepare for deployment with MDT](prepare-for-windows-deployment-with-mdt.md)
  - [Create a Windows 10 reference image](create-a-windows-10-reference-image.md)
  - [Deploy a Windows 10 image using MDT](deploy-a-windows-10-image-using-mdt.md)

## Simulate deployment

On **PC0001**:

1. Sign as **contoso\\Administrator**.
2. Copy the following to a PowerShell script named gather.ps1 and copy it to a directory named **C:\MDT** on PC0001.

    ```powershell
    # Check for elevation
    If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(`
        [Security.Principal.WindowsBuiltInRole] "Administrator"))
    {
        Write-Warning "Oupps, you need to run this script from an elevated PowerShell prompt!`nPlease start the PowerShell prompt as an Administrator and re-run the script."
        Write-Warning "Aborting script..."
        Break
    }
    cls
    if (Test-Path -Path "C:\MININT") {Write-Host "C:\MININT exists, deleting...";Remove-Item C:\MININT -Recurse}
    cscript.exe ZTIGather.wsf /debug:true
    # Optional, comment out if you want the script to open the log in CMTrace
    & "C:\MDT\CMTrace" C:\MININT\SMSOSD\OSDLOGS\ZTIGather.log
    ```

3. Download and install the free [Microsoft System Center 2012 R2 Configuration Manager Toolkit](https://go.microsoft.com/fwlink/p/?LinkId=734717) on PC0001 so that you have access to the Configuration Manager Trace (cmtrace.exe) tool.
4. Using Local Users and Groups (lusrmgr.msc), add the **contoso\\MDT\_BA** user account to the local **Administrators** group.
5. Sign off, and then sign on to PC0001 as **contoso\\MDT\_BA**.
6. Open the **\\\\MDT01\\MDTProduction$\\Scripts** folder and copy the following files to **C:\\MDT**:
   1.  ZTIDataAccess.vbs
   2.  ZTIGather.wsf
   3.  ZTIGather.xml
   4.  ZTIUtility.vbs
7. From the **\\\\MDT01\\MDTProduction$\\Control** folder, copy the CustomSettings.ini file to **C:\\MDT**.
8. In the **C:\\MDT** folder, create a subfolder named **X64**.
9. From the **\\\\MDT01\\MDTProduction$\\Tools\\X64** folder, copy the Microsoft.BDD.Utility.dll file to **C:\\MDT\\X64**.

   ![files.](../images/mdt-09-fig06.png)

   The C:\\MDT folder with the files added for the simulation environment.

10. Type the following at an elevated Windows PowerShell prompt:
    ``` powershell
    Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process -Force
    Set-Location C:\MDT
    .\Gather.ps1
    ```
    When prompted, press **R** to run the gather script.

11. Review the ZTIGather.log in the **C:\\MININT\\SMSOSD\\OSDLOGS** folder using CMTrace.
    **Note**  
    Warnings or errors with regard to the Wizard.hta are expected. If the log file looks okay, you are ready to try a real deployment.
 
   ![ztigather.](../images/mdt-09-fig07.png)

   The ZTIGather.log file from PC0001.

## Related topics

[Set up MDT for BitLocker](set-up-mdt-for-bitlocker.md)<br>
[Configure MDT deployment share rules](configure-mdt-deployment-share-rules.md)<br>
[Configure MDT for UserExit scripts](configure-mdt-for-userexit-scripts.md)<br>
[Use the MDT database to stage Windows 10 deployment information](use-the-mdt-database-to-stage-windows-10-deployment-information.md)<br>
[Assign applications using roles in MDT](assign-applications-using-roles-in-mdt.md)<br>
[Use web services in MDT](use-web-services-in-mdt.md)<br>
[Use Orchestrator runbooks with MDT](use-orchestrator-runbooks-with-mdt.md)
