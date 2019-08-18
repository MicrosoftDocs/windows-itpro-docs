---
title: Manage automation allowed/blocked lists
description: Create lists that control what items are automatically blocked or allowed during an automatic investigation.
keywords: manage, automation, whitelist, blacklist, block, clean, malicious
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

# Manage automation allowed/blocked lists

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)



>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-automationexclusionlist-abovefoldlink)

Create a rule to control which entities are automatically incriminated or exonerated during Automated investigations.  

Entities added to the allowed list are considered safe and will not be analyzed during Automated investigations.

Entities added to the blocked list are considered malicious and will be remediated during Automated investigations.

You can define the conditions for when entities are identified as malicious or safe based on certain attributes such as hash values or certificates. 

## Create an allowed or blocked list
1. In the navigation pane, select **Settings** > **Automation allowed/blocked list**.  

2. Select the tab of the type of entity you'd like to create an exclusion for. Currently, you can add a rule for certificates. 

3. Select **Add allowed/blocked list rule**.

4. For each attribute specify the exclusion type, details, and their corresponding required values.
    
5. Click **Add rule**.

## Edit a list
1. In the navigation pane, select **Settings** > **Automation allowed/blocked list**.  

2. Select the tab of the entity type you'd like to edit the list from.  

3. Update the details of the rule and click **Update rule**.

## Delete a list 
1. In the navigation pane, select **Settings** > **Automation allowed/blocked list**.  

2. Select the tab of the entity type you'd like to delete the list from.

3. Select the list type by clicking the check-box beside the list type.

4. Click **Delete**.


## Related topics
- [Manage automation file uploads](manage-automation-file-uploads.md)
- [Manage indicators](manage-indicators.md)
- [Manage automation folder exclusions](manage-automation-folder-exclusions.md)
