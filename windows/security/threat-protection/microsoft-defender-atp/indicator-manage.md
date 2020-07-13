---
title: Manage indicators
ms.reviewer: 
description: Manage indicators for a file hash, IP address, URLs, or domains that define the detection, prevention, and exclusion of entities.
keywords: import, indicator, list, ioc, csv, manage, allowed, blocked, whitelist, blacklist, block, clean, malicious, file hash, ip address, urls, domain
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

# Manage indicators

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)


>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-automationexclusionlist-abovefoldlink)


1. In the navigation pane, select **Settings** > **Indicators**.

2. Select the tab of the entity type you'd like to manage.  

3. Update the details of the indicator and click **Save** or click the **Delete** button if you'd like to remove the entity from the list.

## Import a list of IoCs

You can also choose to upload a CSV file that defines the attributes of indicators, the action to be taken, and other details.

Download the sample CSV to know the supported column attributes.

1. In the navigation pane, select **Settings** > **Indicators**.

2. Select the tab of the entity type you'd like to import indicators for.

3. Select **Import** > **Choose file**. 

4. Select **Import**. Do this for all the files you'd like to import. 

5. Select **Done**.

The following table shows the supported parameters.

Parameter |	Type	|	Description
:---|:---|:---
indicatorType | Enum | Type of the indicator. Possible values are: "FileSha1", "FileSha256", "IpAddress", "DomainName" and "Url". **Required**
indicatorValue | String | Identity of the [Indicator](ti-indicator.md) entity. **Required**
action | Enum | The action that will be taken if the indicator will be discovered in the organization. Possible values are: "Alert", "AlertAndBlock", and "Allowed". **Required**
title | String | Indicator alert title. **Required**
description | String |  Description of the indicator. **Required**
expirationTime | DateTimeOffset | The expiration time of the indicator in the following format YYYY-MM-DDTHH:MM:SS.0Z. **Optional**
severity | Enum | The severity of the indicator. Possible values are: "Informational", "Low", "Medium" and "High". **Optional**
recommendedActions | String | TI indicator alert recommended actions. **Optional**
rbacGroupNames | String | Comma-separated list of RBAC group names the indicator would be applied to. **Optional**

## Related topics
- [Create indicators](manage-indicators.md)
- [Create indicators for files](indicator-file.md)
- [Create indicators for IPs and URLs/domains](indicator-ip-domain.md)
- [Create indicators based on certificates](indicator-certificates.md)
