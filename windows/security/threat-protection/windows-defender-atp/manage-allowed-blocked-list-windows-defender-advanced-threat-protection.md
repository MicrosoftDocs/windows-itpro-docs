---
title: Manage allowed/blocked lists
description: Create lists that control what items are  blocked or allowed during an investigation.
keywords: manage, allowed, blocked, whitelist, blacklist, block, clean, malicious
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

# Manage allowed/blocked lists

**Applies to:**


- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)


>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-automationexclusionlist-abovefoldlink)

Create a rule to define the response action to apply on entities. You can define the duration for when to apply the action as well as the scope of the machine group to apply it to.

It is where you can manage custom indicators for detection, prevention, and even exclusion.


Take advantage of the following conveniences: 


- Unified <br>
  The same list is used for prevention (blocking), detection (alerts), and AutoIR.


- Flexible<br>
    Single entry, batch import, API or direct block from the file page, all the indicators sourcing options are now available.


- Visible<br>
  Now all the indicators are available in the portal. You can now search, filter, edit and export your lists in one place.




## Create a rule
1. In the navigation pane, select **Settings** > **Allowed/blocked list**.  

2. Select the tab of the type of entity you'd like to create an indicator for. You can choose any of the following entities: 
   - File hash
   - IP address
   - URLs/Domains
   - Certificate
  
3. Click **Add indicator**.

4. For each attribute specify the following details:
   - Indicator - Specify the entity details and define the expiration of the indicator.
   - Action - Specify the action to be taken and provide a description.
   - Scope - Define the scope of the machine group.
    
5. Review the details in the Summary tab, then click **Save**.

## Manage a rule
1. In the navigation pane, select **Settings** > **Allowed/blocked list**.  

2. Select the tab of the entity type you'd like to manage.  

3. Update the details of the rule and click **Save** or click the **Delete** button if you'd like to remove the entity from the rule list.

## Import entities
You can also choose to upload a CSV file of the entity. 



## Related topics
- [Manage automation file uploads](manage-automation-file-uploads-windows-defender-advanced-threat-protection.md)
- [Manage automation folder exclusions](manage-automation-folder-exclusions-windows-defender-advanced-threat-protection.md)