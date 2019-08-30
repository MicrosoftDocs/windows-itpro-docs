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
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
ROBOTS: NOINDEX
---

# Manage indicators 

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-automationexclusionlist-abovefoldlink)

Indicator of compromise (IoCs) matching is an essential feature in every endpoint protection solution. This capability is available in Microsoft Defender ATP and gives SecOps the ability to set a list of indicators for detection and for blocking (prevention and response).


Create indicators that define the detection, prevention, and exclusion of entities. You can define the action to be taken as well as the duration for when to apply the action as well as the scope of the machine group to apply it to.

Currently supported sources are the cloud detection engine of Microsoft Defender ATP, the automated investigation and remediation engine, and the endpoint prevention engine (Windows Defender AV).

**Cloud detection engine**<br>
The cloud detection engine of Microsoft Defender ATP regularly scans collected data and tries to match the indicators you set. When there is a match, action will be taken according to the settings you specified for the IoC.

**Endpoint prevention engine**<br>
The same list of indicators is honored by the prevention agent. Meaning, if Windows Defender AV is the primary AV configured, the matched indicators will be treated according to the settings. For example, if the action is "Alert and Block", Windows Defender AV will prevent file executions (block and remediate) and a corresponding alert will be raised. On the other hand, if the Action is set to "Allow", Windows Defender AV  will not detect nor block the file from being run.

>![NOTE]
>-There is a propagation time of several minutes before the blocking policy for a new hash is applied.
>- Trusted signed files will be treated differently. Microsoft Defender ATP is optimized to handle malicious files. Trying to block trusted signed files, in some cases, may have performance implications.


**Automated investigation and remediation engine**
The automated investigation and remediation behave the same. If an indicator is set to "Allow", Automated investigation and remediation will ignore a "bad" verdict for it. If set to "Block", Automated investigation and remediation will treat it as "bad".
 
In the first phase, the file hashes are fully supported, while network addresses (IP, Domain names) are partially supported (Automation and Detection).  Stay tuned as the network blocking and more IoCs become available.
 
The current actions supported are:
- Allow 
- Alert only
- Alert and block


On the top navigation you can:

- Import a list
- Add an indicator
- Customize columns to add or remove columns
- Export the entire list in CSV format
- Select the items to show per page
- Navigate between pages
- Apply filters

There are several ways to control IoCs:
- [Create an indicator from the settings page](#create-an-indicator-from-the-settings-page)
- [Create contextual IoC](respond-file-alerts.md#add-indicator-to-block-or-allow-a-file)
- [Import a list of IoCs](#import-a-list-of-iocs)
- [Use the Microsoft Defender ATP indicators API](ti-indicator.md)
- [Use partner integrated solutions](partner-applications.md)

## Before you begin

Creating IoCs must comply to the following:

>- This feature is available if your organization uses Windows Defender Antivirus and Cloud-based protection is enabled. For more information, see [Manage cloud-based protection](../windows-defender-antivirus/deploy-manage-report-windows-defender-antivirus.md).
>
>- The Antimalware client version must be 4.18.1901.x or later.
>- This feature is designed to prevent suspected malware (or potentially malicious files) from being downloaded from the web. It currently supports portable executable (PE) files, including _.exe_ and _.dll_ files. The coverage will be extended over time.
>- This response action is available for machines on Windows 10, version 1703 or later.
>- The allow or block function cannot be done on files if the file's classification exists on the device's cache prior to the allow or block action.

>[!NOTE]
> The PE file needs to be in the machine timeline for you to be able to take this action.
>
> There may be a couple of minutes of latency between the time the action is taken and the actual file being blocked.


## Create an indicator from the settings page

>[!NOTE]
>There is a limit of 5000 indicators per tenant. 

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

## Import a list of IoCs

You can also choose to upload a CSV file that defines the attributes of indicators, the action to be taken, and other details.

Download the sample CSV to know the supported column attributes.

## Related topic

- [Manage automation allowed/blocked lists](manage-automation-allowed-blocked-list.md)
