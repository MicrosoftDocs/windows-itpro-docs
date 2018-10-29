---
title: Onboard Windows 10 machines using Mobile Device Management tools
description: Use Mobile Device Management tools to deploy the configuration package on machines so that they are onboarded to the service.
keywords: onboard machines using mdm, machine management, onboard Windows ATP machines, onboard Windows Defender Advanced Threat Protection machines, mdm
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
ms.date: 09/19/2018
---

# Onboard Windows 10 machines using Mobile Device Management tools

**Applies to:**


- Windows Defender Advanced Threat Protection (Windows Defender ATP)

>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-configureendpointsmdm-abovefoldlink)

You can use mobile device management (MDM) solutions to configure machines. Windows Defender ATP supports MDMs by providing OMA-URIs to create policies to manage machines.

For more information on using Windows Defender ATP CSP see, [WindowsAdvancedThreatProtection CSP](https://msdn.microsoft.com/library/windows/hardware/mt723296(v=vs.85).aspx) and [WindowsAdvancedThreatProtection DDF file](https://msdn.microsoft.com/library/windows/hardware/mt723297(v=vs.85).aspx).

## Before you begin
If you're using Microsoft Intune, you must have the device MDM Enrolled. Otherwise, settings will not be applied successfully. 

For more information on enabling MDM with Microsoft Intune, see [Setup Windows Device Management](https://docs.microsoft.com/intune-classic/deploy-use/set-up-windows-device-management-with-microsoft-intune).

## Onboard machines using Microsoft Intune

For more information on using Windows Defender ATP CSP see, [WindowsAdvancedThreatProtection CSP](https://msdn.microsoft.com/library/windows/hardware/mt723296(v=vs.85).aspx) and [WindowsAdvancedThreatProtection DDF file](https://msdn.microsoft.com/library/windows/hardware/mt723297(v=vs.85).aspx).

### Use the Azure Intune Portal to deploy Windows Defender Advanced Threat Protection policies on Windows 10 1607 and higher

1. Login to the [Microsoft Azure portal](https://portal.azure.com).

2. Select **Device Configuration > Profiles > Create profile**.

3. Enter a **Name** and **Description**.

4. For **Platform**, select **Windows 10 and later**.

5. For **Profile type**, select **Windows Defender ATP (Windows 10 Desktop)**.

6. Configure the settings:
    - **Onboard Configuration Package**: Browse and select the **WindowsDefenderATP.onboarding** file you downloaded. This file enables a setting so devices can report to the Windows Defender ATP service.
    - **Sample sharing for all files**: Allows samples to be collected, and shared with Windows Defender ATP. For example, if you see a suspicious file, you can submit it to Windows Defender ATP for deep analysis.
    - **Expedite telemetry reporting frequency**: For devices that are at high risk, enable this setting so it reports telemetry to the Windows Defender ATP service more frequently.
    - **Offboard Configuration Package**: If you want to remove Windows Defender ATP monitoring, you can download an offboarding package from Windows Defender Security Center, and add it. Otherwise, skip this property.
   
7. Select **OK**, and **Create** to save your changes, which creates the profile.

> [!NOTE]
> - The **Health Status for onboarded machines** policy uses read-only properties and can't be remediated.
> - Configuration of diagnostic data reporting frequency is only available for machines on Windows 10, version 1703.


>[!TIP]
> After onboarding the machine, you can choose to run a detection test to verify that a machine is properly onboarded to the service. For more information, see [Run a detection test on a newly onboarded Windows Defender ATP machine](run-detection-test-windows-defender-advanced-threat-protection.md).

## Offboard and monitor machines using Mobile Device Management tools
For security reasons, the package used to Offboard machines will expire 30 days after the date it was downloaded. Expired offboarding packages sent to a machine will be rejected. When downloading an offboarding package you will be notified of the packages expiry date and it will also be included in the package name.

> [!NOTE]
> Onboarding and offboarding policies must not be deployed on the same machine at the same time, otherwise this will cause unpredictable collisions.

1.	Get the offboarding package from [Windows Defender Security Center](https://securitycenter.windows.com/):

   a. In the navigation pane, select **Settings** > **Offboarding**.

   b. Select Windows 10 as the operating system.

   c. In the **Deployment method** field, select **Mobile Device Management / Microsoft Intune**.
    
   d. Click **Download package**, and save the .zip file.

2.	Extract the contents of the .zip file to a shared, read-only location that can be accessed by the network administrators who will deploy the package. You should have a file named *WindowsDefenderATP_valid_until_YYYY-MM-DD.offboarding*.

3. Use the Microsoft Intune custom configuration policy to deploy the following supported OMA-URI settings. For more information on Microsoft Intune policy settings see, [Windows 10 policy settings in Microsoft Intune](https://docs.microsoft.com/intune/deploy-use/windows-10-policy-settings-in-microsoft-intune).


> [!NOTE]
> The **Health Status for offboarded machines** policy uses read-only properties and can't be remediated.

> [!IMPORTANT]
> Offboarding causes the machine to stop sending sensor data to the portal but data from the machine, including reference to any alerts it has had will be retained for up to 6 months.

## Related topics
- [Onboard Windows 10 machines using Group Policy](configure-endpoints-gp-windows-defender-advanced-threat-protection.md)
- [Onboard Windows 10 machines using System Center Configuration Manager](configure-endpoints-sccm-windows-defender-advanced-threat-protection.md)
- [Onboard Windows 10 machines using a local script](configure-endpoints-script-windows-defender-advanced-threat-protection.md)
- [Onboard non-persistent virtual desktop infrastructure (VDI) machines](configure-endpoints-vdi-windows-defender-advanced-threat-protection.md)
- [Run a detection test on a newly onboarded Windows Defender ATP machine](run-detection-test-windows-defender-advanced-threat-protection.md)
- [Troubleshoot Windows Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md)
