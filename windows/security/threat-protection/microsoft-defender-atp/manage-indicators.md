---
title: Manage indicators 
ms.reviewer: 
description: Create indicators for a file hash, IP address, URLs or domains that define the detection, prevention, and exclusion of entities.
keywords: manage, allowed, blocked, whitelist, blacklist, block, clean, malicious, file hash, ip address, urls, domain
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: mjcaparas
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Manage indicators 

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-automationexclusionlist-abovefoldlink)

Create indicators that define the detection, prevention, and exclusion of entities. You can define the action to be taken as well as the duration for when to apply the action as well as the scope of the machine group to apply it to.

On the top navigation you can:

- Import a list
- Add an indicator
- Customize columns to add or remove columns
- Export the entire list in CSV format
- Select the items to show per page
- Navigate between pages
- Apply filters

## Create an indicator

1. In the navigation pane, select **Settings** > **Indicators**.  

2. Select the tab of the type of entity you'd like to create an indicator for. You can choose any of the following entities:
   - File hash
   - IP address
   - URLs/Domains
  
3. Click **Add indicator**.

4. For each attribute specify the following details:
   - Indicator - Specify the entity details and define the expiration of the indicator.
   - Action - Specify the action to be taken and provide a description.
   - Scope - Define the scope of the machine group.

5. Review the details in the Summary tab, then click **Save**.


>[!NOTE]
>Blocking IPs, domains, or URLs is currently available on limited preview only.
>This requires sending your custom list to [network protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/enable-network-protection) to be enforced which is an option that will be generally available soon.
>As it is not yet generally available, when Automated investigations finds this indicator during an investigation it will use the allowed/block list as the basis of its decision to automatically remediate (blocked list) or skip (allowed list) the entity.

## Manage indicators

1. In the navigation pane, select **Settings** > **Indicators**.

2. Select the tab of the entity type you'd like to manage.  

3. Update the details of the indicator and click **Save** or click the **Delete** button if you'd like to remove the entity from the list.

## Import a list

You can also choose to upload a CSV file that defines the attributes of indicators, the action to be taken, and other details.

Download the sample CSV to know the supported column attributes.

## Related topic

- [Manage automation allowed/blocked lists](manage-automation-allowed-blocked-list.md)
