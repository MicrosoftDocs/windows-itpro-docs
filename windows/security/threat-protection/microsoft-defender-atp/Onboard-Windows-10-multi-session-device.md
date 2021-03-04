---
title: Onboard Windows 10 multi-session devices in Windows Virtual Desktop
description: Read more in this article about Onboarding Windows 10 multi-session devices in Windows Virtual Desktop
keywords: Windows Virtual Desktop, WVD, microsoft defender, endpoint, onboard
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.topic: article
author: dansimp
ms.author: dansimp
ms.custom: nextgen
ms.date: 02/18/2021
ms.reviewer: 
manager: dansimp
ms.technology: mde
---

# Onboard Windows 10 multi-session devices in Windows Virtual Desktop 

Applies to: 
- Windows 10 multi-session running on Windows Virtual Desktop (WVD) 

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

> [!IMPORTANT]
> Welcome to Microsoft Defender for Endpoint, the new name for Microsoft Defender for Endpoint. Read more about this and other updates here. We'll be updating names in products and in the docs in the near future.

Microsoft Defender for Endpoint supports monitoring both VDI as well as Windows Virtual Desktop sessions. Depending on your organization's needs, you might need to implement VDI or Windows Virtual Desktop sessions to help your employees access corporate data and apps from an unmanaged device, remote location, or similar scenario. With Microsoft Defender for Endpoint, you can monitor these virtual machines for anomalous activity.

## Before you begin

See [considerations for non-persistent VDI](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints-vdi#onboard-non-persistent-virtual-desktop-infrastructure-vdi-devices-1). Although [Windows Virtual Desktop](https://docs.microsoft.com/azure/virtual-desktop/overview) does not provide non-persistence options, it does provide ways to use a Windows image that can be used to provision new hosts and redeploy machines. This increases volatility in the environment, and thus impacts what entries are created and maintained in the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)), potentially reducing visibility for your security analysts.

> [!NOTE]
> Depending on your choice of onboarding method, devices can appear in Microsoft Defender Security Center as either: 
> - Single entry for each virtual desktop 
> - Multiple entries for each virtual desktop 

Microsoft recommends onboarding Windows Virtual Desktop as a single entry per virtual desktop. This ensures that the investigation experience in the Microsoft Defender Security Center is in the context of one device based on the machine name. Organizations that frequently delete and re-deploy WVD hosts should strongly consider using this method as it prevents multiple objects for the same machine from being created in the Microsoft Defender Security Center. This can lead to confusion when investigating incidents. For test or non-volatile environments, you may opt to choose differently. 

Microsoft recommends adding the Microsoft Defender for Endpoint onboarding script to the WVD image. This way, you can be sure that this onboarding script runs immediately at first boot. It is executed as a startup script at first boot on all the WVD machines that are provisioned from the WVD golden image. However, if you are using one of the gallery images without modification, place the script in a shared location and call it from either local or domain group policy. 

> [!NOTE]
> The placement and configuration of the VDI onboarding startup script on the WVD golden image configures it as a startup script that runs when the WVD starts. It is NOT recommended to onboard the actual WVD golden image. Another consideration is the method used to run the script. It should run as early in the startup/provisioning process as possible to reduce the time between the machine being available to receive sessions and the device onboarding to the service. Below scenarios 1 & 2 take this into account.

## Scenarios
There are several ways to onboard a WVD host machine:

- Run the script in the golden image (or from a shared location) during startup.
- Use a management tool to run the script.

### Scenario 1: Using local group policy
This scenario requires placing the script in a golden image and uses local group policy to run early in the boot process.

Use the instructions in [Onboard non-persistent virtual desktop infrastructure VDI devices](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints-vdi#onboard-non-persistent-virtual-desktop-infrastructure-vdi-devices-1).

Follow the instructions for a single entry for each device.

### Scenario 2: Using domain group policy
This scenario uses a centrally located script and runs it using a domain-based group policy. You can also place the script in the golden image and run it in the same way.

#### Download the WindowsDefenderATPOnboardingPackage.zip file from the Windows Defender Security Center
1. Open the VDI configuration package .zip file (WindowsDefenderATPOnboardingPackage.zip)  
    - In the Microsoft Defender Security Center navigation pane, select **Settings** > **Onboarding**. 
    - Select Windows 10 as the operating system. 
    - In the **Deployment method** field, select VDI onboarding scripts for non-persistent endpoints. 
    - Click **Download package** and save the .zip file. 
2. Extract the contents of the .zip file to a shared, read-only location that can be accessed by the device. You should have a folder called **OptionalParamsPolicy** and the files **WindowsDefenderATPOnboardingScript.cmd** and **Onboard-NonPersistentMachine.ps1**.

#### Use Group Policy management console to run the script when the virtual machine starts
1. Open the Group Policy Management Console (GPMC), right-click the Group Policy Object (GPO) you want to configure and click **Edit**.
2. In the Group Policy Management Editor, go to **Computer configuration** > **Preferences** > **Control panel settings**. 
3. Right-click **Scheduled tasks**, click **New**, and then select **Immediate Task** (At least Windows 7). 
4. In the Task window that opens, go to the **General** tab. Under **Security options** click **Change User or Group** and type SYSTEM. Click **Check Names** and then click OK. `NT AUTHORITY\SYSTEM` appears as the user account under which the task will run. 
5. Select **Run whether user is logged on or not** and select the **Run with highest privileges** option. 
6. Go to the **Actions** tab and select **New**. Confirm that **Start a program** is selected in the **Action** field.
7. Specify the following: <br/> 
   - Action = **Start a program**
   - Program/Script = `C:\WINDOWS\system32\WindowsPowerShell\v1.0\powershell.exe` 
   - Add Arguments (optional) = `-ExecutionPolicy Bypass -command "& \\Path\To\Onboard-NonPersistentMachine.ps1"`
8. Select **OK** and close any open GPMC windows.

### Scenario 3: Onboarding using management tools

> [!TIP]
> After onboarding the device, you can choose to run a detection test to verify that the device is properly onboarded to the service. For more information, see [Run a detection test on a newly onboarded Microsoft Defender for Endpoint device](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/run-detection-test). 

If you plan to manage your machines using a management tool, you can onboard devices with Microsoft Endpoint Configuration Manager. For more information, see: [Onboard Windows 10 devices using Configuration Manager](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints-sccm) 

> [!WARNING]
> If you plan to use [Attack Surface reduction Rules](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction), the rule “[Block process creations originating from PSExec and WMI commands](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-process-creations-originating-from-psexec-and-wmi-commands)" should not be used as it is incompatible with management through Microsoft Endpoint Manager because this rule blocks WMI commands the Configuration Manager client uses to function correctly. 

## Tagging your machines when building your image 

As part of your onboarding, you may want to consider setting a machine tag to be able to differentiate WVD machines more easily in the Microsoft Security Center. For more information, see 
[Add device tags by setting a registry key value](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/machine-tags#add-device-tags-by-setting-a-registry-key-value). 

## Other recommended configuration settings 

When building your image, you may want to configure initial protection settings as well. For more information, see [Other recommended configuration settings](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints-gp#other-recommended-configuration-settings). 

In addition, if you are using FSlogix user profiles, we recommend you exclude the following files from always-on protection: 

### Exclude Files

> %ProgramFiles%\FSLogix\Apps\frxdrv.sys <br>
> %ProgramFiles%\FSLogix\Apps\frxdrvvt.sys <br>
> %ProgramFiles%\FSLogix\Apps\frxccd.sys <br>
> %TEMP%\*.VHD <br>
> %TEMP%\*.VHDX <br>
> %Windir%\TEMP\*.VHD <br>
> %Windir%\TEMP\*.VHDX <br>
> \\storageaccount.file.core.windows.net\share\*\*.VHD <br>
> \\storageaccount.file.core.windows.net\share\*\*.VHDX <br>

### Exclude Processes

> %ProgramFiles%\FSLogix\Apps\frxccd.exe <br>
> %ProgramFiles%\FSLogix\Apps\frxccds.exe <br>
> %ProgramFiles%\FSLogix\Apps\frxsvc.exe <br>

## Licensing requirements 

Windows 10 Multi-session is a client OS. Licensing requirements for Microsoft Defender for endpoint can be found at: [Licensing requirements](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/minimum-requirements#licensing-requirements).
