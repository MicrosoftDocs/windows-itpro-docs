---
title:  Create indicators for IPs and URLs/domains 
ms.reviewer: 
description: Create indicators for IPs and URLs/domains that define the detection, prevention, and exclusion of entities.
keywords: ip, url, domain, manage, allowed, blocked, whitelist, blacklist, block, clean, malicious, file hash, ip address, urls, domain
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

# Create indicators for IPs and URLs/domains 

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)


>Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-automationexclusionlist-abovefoldlink)


Defender for Endpoint can block what Microsoft deems as malicious IPs/URLs, through Windows Defender SmartScreen for Microsoft browsers, and through Network Protection for non-Microsoft browsers or calls made outside of a browser.

The threat intelligence data set for this has been managed by Microsoft.

By creating indicators for IPs and URLs or domains, you can now allow or block IPs, URLs, or domains based on your own threat intelligence. You can do this through the settings page or by machine groups if you deem certain groups to be more or less at risk than others.

> [!NOTE]
> Classless Inter-Domain Routing (CIDR) notation for IP addresses is not supported. 

### Before you begin
It's important to understand the following prerequisites prior to creating indicators for IPS, URLs, or domains:
- URL/IP allow and block relies on the Defender for Endpoint component Network Protection to be enabled in block mode. For more information on Network Protection and configuration instructions, see [Enable network protection](enable-network-protection.md).
- The Antimalware client version must be 4.18.1906.x or later. 
- Supported on machines on Windows 10, version 1709 or later. 
- Ensure that **Custom network indicators** is enabled in **Microsoft Defender Security Center > Settings > Advanced features**. For more information, see [Advanced features](advanced-features.md).


>[!IMPORTANT]
> Only external IPs can be added to the indicator list. Indicators cannot be created for internal IPs.
> For web protection scenarios, we recommend using the built-in capabilities in Microsoft Edge. Microsoft Edge leverages [Network Protection](network-protection.md) to inspect network traffic and allows blocks for TCP, HTTP, and HTTPS (TLS). For all other processes, web protection scenarios leverage Network Protection for inspection and enforcement: <br>
> NOTE:
>- IP is supported for all three protocols
>- Only single IP addresses are supported (no CIDR blocks or IP ranges)
>- Encrypted URLs (full path) can only be blocked on first party browsers
>- Encrypted URLS (FQDN only) can be blocked outside of first party browsers
>- Full URL path blocks can be applied on the domain level and all unencrypted URLs
 
>[!NOTE]
>There may be up to 2 hours of latency (usually less) between the time the action is taken, and the URL and IP being blocked. 

### Create an indicator for IPs, URLs, or domains from the settings page

1. In the navigation pane, select **Settings** > **Indicators**.  

2. Select the **IP addresses or URLs/Domains** tab.

3. Select **Add item**.

4. Specify the following details:
   - Indicator - Specify the entity details and define the expiration of the indicator.
   - Action - Specify the action to be taken and provide a description.
   - Scope - Define the scope of the machine group.

5. Review the details in the Summary tab, then click **Save**.

## Related topics
- [Create indicators](manage-indicators.md)
- [Create indicators for files](indicator-file.md)
- [Create indicators based on certificates](indicator-certificates.md)
- [Manage indicators](indicator-manage.md)
