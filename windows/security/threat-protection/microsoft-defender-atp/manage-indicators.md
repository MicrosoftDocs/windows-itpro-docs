---
title: Manage indicators 
ms.reviewer: 
description: Create indicators for a file hash, IP address, URLs, or domains that define the detection, prevention, and exclusion of entities.
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
---

# Manage indicators 

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)


>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-automationexclusionlist-abovefoldlink)

Indicator of compromise (IoCs) matching is an essential feature in every endpoint protection solution. This capability gives SecOps the ability to set a list of indicators for detection and for blocking (prevention and response).

Create indicators that define the detection, prevention, and exclusion of entities. You can define the action to be taken as well as the duration for when to apply the action as well as the scope of the machine group to apply it to.

Currently supported sources are the cloud detection engine of Microsoft Defender ATP, the automated investigation and remediation engine, and the endpoint prevention engine (Microsoft Defender AV).

**Cloud detection engine**<br>
The cloud detection engine of Microsoft Defender ATP regularly scans collected data and tries to match the indicators you set. When there is a match, action will be taken according to the settings you specified for the IoC.

**Endpoint prevention engine**<br>
The same list of indicators is honored by the prevention agent. Meaning, if Microsoft Defender AV is the primary AV configured, the matched indicators will be treated according to the settings. For example, if the action is "Alert and Block", Microsoft Defender AV will prevent file executions (block and remediate) and a corresponding alert will be raised. On the other hand, if the Action is set to "Allow", Microsoft Defender AV  will not detect nor block the file from being run.

**Automated investigation and remediation engine**<BR>
The automated investigation and remediation behave the same. If an indicator is set to "Allow", Automated investigation and remediation will ignore a "bad" verdict for it. If set to "Block", Automated investigation and remediation will treat it as "bad".
 

The current supported actions are:
- Allow 
- Alert only
- Alert and block


You can create an indicator for:
- Files
- IP addresses
- URLs/domains

>[!NOTE]
>There is a limit of 15,000 indicators per tenant. 


![Image of indicators settings page](images/rules-indicators.png)


## Create indicators for files
You can prevent further propagation of an attack in your organization by banning potentially malicious files or suspected malware. If you know a potentially malicious portable executable (PE) file, you can block it. This operation will prevent it from being read, written, or executed on machines in your organization.

There are two ways you can create indicators for files:
- By creating an indicator through the settings page
- By creating a contextual indicator using the add indicator button from the file details page

### Before you begin
It's important to understand the following prerequisites prior to creating indicators for files:

- This feature is available if your organization uses Microsoft Defender Antivirus and Cloud–based protection is enabled. For more information, see [Manage cloud–based protection](../microsoft-defender-antivirus/deploy-manage-report-microsoft-defender-antivirus.md).
- The Antimalware client version must be 4.18.1901.x or later.
- Supported on machines on Windows 10, version 1703 or later.
- To start blocking files, you first need to [turn the **Block or allow** feature on](advanced-features.md) in Settings.
- This feature is designed to prevent suspected malware (or potentially malicious files) from being downloaded from the web. It currently supports portable executable (PE) files, including _.exe_ and _.dll_ files. The coverage will be extended over time.

>[!IMPORTANT]
>- The allow or block function cannot be done on files if the file's classification exists on the device's cache prior to the allow or block action 
>- Trusted signed files will be treated differently. Microsoft Defender ATP is optimized to handle malicious files. Trying to block trusted signed files, in some cases, may have performance implications.

 
>[!NOTE]
>Typically, file blocks are enforced within a couple of minutes, but can take upwards of 30 minutes.

### Create an indicator for files from the settings page

1. In the navigation pane, select **Settings** > **Indicators**.  

2. Select the **File hash** tab.

3. Select **Add indicator**.

4. Specify the following details:
   - Indicator - Specify the entity details and define the expiration of the indicator.
   - Action - Specify the action to be taken and provide a description.
   - Scope - Define the scope of the machine group.

5. Review the details in the Summary tab, then click **Save**.

### Create a contextual indicator from the file details page
One of the options when taking [response actions on a file](respond-file-alerts.md) is adding an indicator for the file. 

When you add an indicator hash for a file, you can choose to raise an alert and block the file whenever a machine in your organization attempts to run it.

Files automatically blocked by an indicator won't show up in the file's Action center, but the alerts will still be visible in the Alerts queue.

## Create indicators for IPs and URLs/domains 
Microsoft Defender ATP can block what Microsoft deems as malicious IPs/URLs, through Windows Defender SmartScreen for Microsoft browsers, and through Network Protection for non-Microsoft browsers or calls made outside of a browser.

The threat intelligence data set for this has been managed by Microsoft.

By creating indicators for IPs and URLs or domains, you can now allow or block IPs, URLs, or domains based on your own threat intelligence. You can do this through the settings page or by machine groups if you deem certain groups to be more or less at risk than others.

### Before you begin
It's important to understand the following prerequisites prior to creating indicators for IPS, URLs, or domains:
- URL/IP allow and block relies on the Microsoft Defender ATP component Network Protection to be enabled in block mode. For more information on Network Protection and configuration instructions, see [Enable network protection](enable-network-protection.md).
- The Antimalware client version must be 4.18.1906.x or later. 
- Supported on machines on Windows 10, version 1709 or later. 
- Ensure that **Custom network indicators** is enabled in **Microsoft Defender Security Center > Settings > Advanced features**. For more information, see [Advanced features](advanced-features.md).


>[!IMPORTANT]
> Only external IPs can be added to the indicator list. Indicators cannot be created for internal IPs.
> For web protection scenarios, we recommend using the built-in capabilities in Microsoft Edge. Microsoft Edge leverages [Network Protection](network-protection.md) to inspect network traffic and allows blocks for TCP, HTTP, and HTTPS (TLS). For all other processes, web protection scenarios leverage Network Protection for inspection and enforcement: <br>
> NOTE:
>- IP is supported for all three protocols
>- Encrypted URLs (full path) can only be blocked on first party browsers
>- Encrypted URLS (FQDN only) can be blocked outside of first party browsers
>- Full URL path blocks can be applied on the domain level and all unencrypted URLs
 
>[!NOTE]
>There may be up to 2 hours of latency (usually less) between the time the action is taken, and the URL and IP being blocked. 

### Create an indicator for IPs, URLs, or domains from the settings page

1. In the navigation pane, select **Settings** > **Indicators**.  

2. Select the **IP addresses or URLs/Domains** tab.

3. Select **Add indicator**.

4. Specify the following details:
   - Indicator - Specify the entity details and define the expiration of the indicator.
   - Action - Specify the action to be taken and provide a description.
   - Scope - Define the scope of the machine group.

5. Review the details in the Summary tab, then click **Save**.

## Create indicators for certificates (preview)

You can create indicators for certificates. Some common use cases include:

- Scenarios when you need to deploy blocking technologies, such as [attack surface reduction rules](attack-surface-reduction.md) and [controlled folder access](controlled-folders.md) but need to allow behaviors from signed applications by adding the certificate in the allow list.
- Blocking the use of a specific signed application across your organization. By creating an indicator to block the certificate of the application, Microsoft Defender AV will prevent file executions (block and remediate) and the Automated Investigation and Remediation behave the same.


### Before you begin

It's important to understand the following requirements prior to creating indicators for certificates:

- This feature is available if your organization uses Microsoft Defender Antivirus and Cloud–based protection is enabled. For more information, see [Manage cloud–based protection](../microsoft-defender-antivirus/deploy-manage-report-microsoft-defender-antivirus.md).
- The Antimalware client version must be  4.18.1901.x or later.
- Supported on machines on Windows 10, version 1703 or later.
- The virus and threat protection definitions must be up-to-date.
- This feature currently supports entering .CER or .PEM file extensions.

>[!IMPORTANT]
> - A valid leaf certificate is a signing certificate that has a valid certification path and must be chained to the Root Certificate Authority (CA) trusted by Microsoft.  Alternatively, a custom (self-signed) certificate can be used as long as it’s trusted by the client (Root CA certificate is installed under the Local Machine 'Trusted Root Certification Authorities').
>- The children or parent of the allow/block certificate IOCs are not included in the allow/block IoC functionality – only leaf certificates are supported.
>- Microsoft signed certificates cannot be blocked.

#### Create an indicator for certificates from the settings page:

>[!IMPORTANT]
> It can take up to 3 hours to create and remove a certificate IoC.

1. In the navigation pane, select **Settings** > **Indicators**.  

2. Select the **Certificate** tab.

3. Select **Add indicator**.

4. Specify the following details:
   - Indicator - Specify the entity details and define the expiration of the indicator.
   - Action - Specify the action to be taken and provide a description.
   - Scope - Define the scope of the machine group.

5. Review the details in the Summary tab, then click **Save**.


## Manage indicators

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



## Related topic
- [Create contextual IoC](respond-file-alerts.md#add-indicator-to-block-or-allow-a-file)
- [Use the Microsoft Defender ATP indicators API](ti-indicator.md)
- [Use partner integrated solutions](partner-applications.md)
