---
title: Part 3 - Finish making the switch to Microsoft Defender ATP
description: Make the switch from Symantec to Microsoft Defender ATP
keywords: migration, windows defender advanced threat protection, atp, edr
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Migrate from Symantec - Part 3: Finish making the switch to Microsoft Defender ATP

**Welcome to Part 3 of [migrating from Symantec to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-migration.md#planning-for-migration-the-process-at-a-high-level)**. This migration phase includes the following steps:
- [Set up your device groups, device collections, and organizational units](#set-up-your-device-groups-device-collections-and-organizational-units) 
- [Deploy Microsoft Defender ATP and uninstall Symantec](#deploy-microsoft-defender-atp-and-uninstall-symantec)
- [Onboard devices to Microsoft Defender ATP](#onboard-devices-to-microsoft-defender-atp)

## Set up your device groups, device collections, and organizational units

### Device groups

[Device groups](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/machine-groups) (formerly called machine groups) enable your security operations team to configure security capabilities, such as automated investigation and remediation. Device groups are also useful for assigning access to those devices so that your security operations team can take remediation actions if needed.

1. Go to the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)).

2. In the navigation pane on the left, choose **Settings** > **Permissions** > **Device groups**.  

3. Choose **+ Add device group**.

4. Specify a name and description for the device group.

5. In the **Automation level** list, select an option. (We recommend **Full - remediate threats automatically**.) To learn more about the various automation levels, see [How threats are remediated](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations#how-threats-are-remediated).

6. Specify conditions for a matching rule to determine which devices belong to the device group. For example, you can choose a domain, OS versions, or even use [device tags](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/machine-tags). 

7. On the **User access** tab, specify roles that should have access to the devices that are included in the device group. 

8. Choose **Done**.


### Device collections


### Organizational units




## Deploy Microsoft Defender ATP and uninstall Symantec

stuff (will draw from existing content here)

[Uninstall Symantec Endpoint Protection](https://knowledge.broadcom.com/external/article/156148/uninstall-symantec-endpoint-protection.html)

## Onboard devices to Microsoft Defender ATP

You can choose from several methods to onboard devices to Microsoft Defender ATP. 

stuff (will draw from existing content here)



<br/><br/><br/><br/><br/>


**Congratulations**! You have completed your [migration from Symantec to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-migration.md#planning-for-migration-the-process-at-a-high-level)!

## Next step

After you have Microsoft Defender ATP set up and deployed, your security operations team can manage the various features and capabilities. See [Manage Microsoft Defender ATP, post migration](microsoft-defender-atp-post-migration-management.md).

