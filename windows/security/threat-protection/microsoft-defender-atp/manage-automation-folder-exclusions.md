---
title: Manage automation folder exclusions
description: Add automation folder exclusions to control the files that are excluded from an automated investigation. 
keywords: manage, automation, exclusion, whitelist, blacklist, block, clean, malicious
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Manage automation folder exclusions 

**Applies to:**


- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)



>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-automationexclusionfolder-abovefoldlink)

Automation folder exclusions allow you to specify folders that the Automated investigation will skip. 

You can control the following attributes about the folder that you'd like to be skipped:
- Folders 
- Extensions of the files
- File names


**Folders**<br>
You can specify a folder and its subfolders to be skipped. 

> [!NOTE]
> Wild cards are not yet supported.

**Extensions**<br>
You can specify the extensions to exclude in a specific directory. The extensions are a way to prevent an attacker from using an excluded folder to hide an exploit. The extensions explicitly define which files to ignore. 

**File names**<br>
You can specify the file names that you want to be excluded in a specific directory. The names are a way to prevent an attacker from using an excluded folder to hide an exploit. The names explicitly define which files to ignore. 



## Add an automation folder exclusion
1. In the navigation pane, select **Settings** > **Automation folder exclusions**.  

2. Click **New folder exclusion**.  

3. Enter the folder details:

    - Folder
    - Extensions
    - File names
    - Description
    

4. Click **Save**.

## Edit an automation folder exclusion 
1. In the navigation pane, select **Settings** > **Automation folder exclusions**. 

2. Click **Edit** on the folder exclusion.  

3. Update the details of the rule and click **Save**.

## Remove an automation folder exclusion 
1. In the navigation pane, select **Settings** > **Automation folder exclusions**.  
2. Click **Remove exclusion**. 


## Related topics
- [Manage automation allowed/blocked lists](manage-automation-allowed-blocked-list.md)
- [Manage automation file uploads](manage-automation-file-uploads.md)
