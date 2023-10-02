---
title: Delivery Optimization reference
description: This article provides a summary of references and descriptions for all of the Delivery Optimization settings.
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: reference
author: cmknox
ms.author: carmenf
manager: aaroncz
ms.reviewer: mstewart
ms.collection: tier3
ms.localizationpriority: medium
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>	
- ✅ <a href=https://learn.microsoft.com/windows/deployment/do/waas-delivery-optimization target=_blank>Delivery Optimization</a>
ms.date: 07/31/2023
---

# Delivery Optimization reference

> **Looking for Group Policy objects?** See [Delivery Optimization reference](waas-delivery-optimization-reference.md) or the main spreadsheet available at the Download Center [for Windows 11](https://www.microsoft.com/en-us/download/details.aspx?id=104594) or [for Windows 10](https://www.microsoft.com/en-us/download/details.aspx?id=104678).

There are many configuration options you can set in Delivery Optimization to customize the content delivery experience specific to your environment needs. This article summarizes those configurations for your reference. If you just need an overview of Delivery Optimization, see [What is Delivery Optimization](waas-delivery-optimization.md). If you need information about setting up Delivery Optimization, including tips for the best settings in different scenarios, see [Set up Delivery Optimization for Windows](waas-delivery-optimization-setup.md).

## Delivery Optimization options

You can use Group Policy or an MDM solution like Intune to configure Delivery Optimization.

The Delivery Optimization settings in Group Policy are under **Configuration\Policies\Administrative Templates\Windows Components\Delivery Optimization**.
In MDM, the same settings are under **.Vendor/MSFT/Policy/Config/DeliveryOptimization/**.

### Summary of Delivery Optimization settings

| Group Policy setting | MDM setting | Supported from version | Notes |
| --- | --- | --- | ------- |
| [Download mode](#download-mode) | DODownloadMode | 1511 | Default is set to LAN(1). The Group [Download mode](#download-mode) (2) combined with [Group ID](#group-id), enables administrators to create custom device groups that will share content between devices in the group.|
| [Group ID](#group-id)  | DOGroupID | 1511 | Used with Group [Download mode](#download-mode). If not set, check [GroupIDSource](#select-the-source-of-group-ids). When GroupID or GroupIDSource policies aren't set, the GroupID is defined as the AD Site (1), Authenticated domain SID (2) or Azure AD Tenant ID (5), in that order.  |
| [Select the source of Group IDs](#select-the-source-of-group-ids) | DOGroupIDSource | 1803 | If not set, check [Group ID](#group-id). When the GroupID or GroupIDSource policies aren't set, the Group is defined as the AD Site (1), Authenticated domain SID (2) or Azure AD Tenant ID (5), in that order. |
| [Select a method to restrict peer selection](#select-a-method-to-restrict-peer-selection) | DORestrictPeerSelectionBy | 1803 | Starting in Windows 11, a new option to use 'Local discovery (DNS-SD)' is available to set via this policy. |
| [Minimum RAM (inclusive) allowed to use peer caching](#minimum-ram-inclusive-allowed-to-use-peer-caching) | DOMinRAMAllowedToPeer | 1703 | Default value is 4 GB. |
| [Minimum disk size allowed to use peer caching](#minimum-disk-size-allowed-to-use-peer-caching) | DOMinDiskSizeAllowedToPeer | 1703 | Default value is 32 GB. |
| [Max cache age](#max-cache-age) | DOMaxCacheAge | 1511 | Default value is 259,200 seconds (three days). |
| [Max cache size](#max-cache-size)  | DOMaxCacheSize | 1511 | Default value is 20%. |
| [Absolute max cache size (in GBs)](#absolute-max-cache-size) | DOAbsoluteMaxCacheSize | 1607 | Default value is 10 GB.|
| [Modify cache drive](#modify-cache-drive) | DOModifyCacheDrive | 1607 | Default to the operating system drive through the %SYSTEMDRIVE% environment variable. |
| [Minimum peer caching content file size](#minimum-peer-caching-content-file-size) | DOMinFileSizeToCache | 1703 | Default file size is 50 MB. |
| [Monthly upload data cap](#monthly-upload-data-cap) | DOMonthlyUploadDataCap | 1607 | Default value is 20 GB. |
| [Minimum background QoS](#minimum-background-qos) | DOMinBackgroundQoS | 1607 | Recommend setting this to 500 KB/s. Default value is 2500 KB/s. |
| [Enable peer caching while the device connects via VPN](#enable-peer-caching-while-the-device-connects-via-vpn) | DOAllowVPNPeerCaching | 1709 | Default is to not allow peering while on VPN. |
| [Allow uploads while the device is on battery while under set battery level](#allow-uploads-while-the-device-is-on-battery-while-under-set-battery-level) | DOMinBatteryPercentageAllowedToUpload | 1709 | Default is to not allow peering while on battery.  |
| [Maximum foreground download bandwidth (percentage)](#maximum-foreground-download-bandwidth) | DOPercentageMaxForegroundBandwidth | 1803 | Default is '0' which will dynamically adjust. |
| [Maximum background download bandwidth (percentage)](#maximum-background-download-bandwidth) | DOPercentageMaxBackgroundBandwidth | 1803 | Default is '0' which will dynamically adjust. |
| [Maximum foreground download bandwidth (in KB/s)](#maximum-foreground-download-bandwidth-in-kbs) | DOMaxForegroundDownloadBandwidth | 2004 | Default is '0' which will dynamically adjust. |
| [Maximum background download bandwidth (in KB/s)](#maximum-background-download-bandwidth-in-kbs) | DOMaxBackgroundDownloadBandwidth | 2004 | Default is '0' which will dynamically adjust. |
| [Set hours to limit background download bandwidth](#set-business-hours-to-limit-background-download-bandwidth) | DOSetHoursToLimitBackgroundDownloadBandwidth | 1803 | Default isn't set. |
| [Set hours to limit foreground download bandwidth](#set-business-hours-to-limit-foreground-download-bandwidth) |DOSetHoursToLimitForegroundDownloadBandwidth | 1803 | Default isn't set. |
| [Delay background download from HTTP (in secs)](#delay-background-download-from-http-in-secs) | DODelayBackgroundDownloadFromHttp | 1803 | Default isn't set. For peering, use this policy to delay the fallback to the HTTP source. [Learn more](#policies-to-prioritize-the-use-of-peer-to-peer-and-cache-server-sources) about the different delay options. |
| [Delay foreground download from HTTP (in secs)](#delay-foreground-download-from-http-in-secs) | DODelayForegroundDownloadFromHttp | 1803 | Default isn't set. For peering, use this policy to delay the fallback to the HTTP source. [Learn more](#policies-to-prioritize-the-use-of-peer-to-peer-and-cache-server-sources) about the different delay options.|
| [Delay foreground download Cache Server fallback (in secs)](#delay-foreground-download-cache-server-fallback-in-secs) | DelayCacheServerFallbackForeground | 1903 | Default isn't set. For Microsoft Connected Cache content, use this policy to delay the fallback to the HTTP source. [Learn more](#policies-to-prioritize-the-use-of-peer-to-peer-and-cache-server-sources) about the different delay options. |
| [Delay background download Cache Server fallback (in secs)](#delay-background-download-cache-server-fallback-in-secs) | DelayCacheServerFallbackBackground | 1903 | Default isn't set. For Microsoft Connected Cache content, use this policy to delay the fallback to the HTTP source. [Learn more](#policies-to-prioritize-the-use-of-peer-to-peer-and-cache-server-sources) about the different delay options.|
| [Cache Server Hostname](#cache-server-hostname) | DOCacheHost | 1809  | No value is set as default. |
| [Cache Server Hostname Source](#cache-server-hostname-source) | DOCacheHostSource | 2004 | No value is set as default. |
| [Maximum download bandwidth](#maximum-download-bandwidth) | DOMaxDownloadBandwidth | 1607 (deprecated in Windows 10, version 2004); use [Maximum background download bandwidth (in KB/s)](#maximum-background-download-bandwidth-in-kbs) or [Maximum foreground download bandwidth (in KB/s)](#maximum-foreground-download-bandwidth-in-kbs) instead)| Default is '0' which will dynamically adjust. |
| [Percentage of maximum download bandwidth](#percentage-of-maximum-download-bandwidth) | DOPercentageMaxDownloadBandwidth | 1607 (deprecated in Windows 10, version 2004); use [Maximum background download bandwidth (in KB/s)](#maximum-background-download-bandwidth-in-kbs)  or [Maximum foreground download bandwidth (in KB/s)](#maximum-foreground-download-bandwidth-in-kbs) instead)| Default is '0' which will dynamically adjust. |
| [Maximum upload bandwidth](#max-upload-bandwidth) | DOMaxUploadBandwidth | 1607 (deprecated in Windows 10, version 2004) | Default is '0' (unlimited). |

### More detail on Delivery Optimization settings

#### Locally cached updates

Delivery Optimization uses locally cached updates to deliver contact via peers. The more content available in the cache, the more likely that peering can be used. In cases where devices have enough local storage and you'd like to cache more content. Likewise, if you have limited storage and would prefer to cache less, use the following settings to adjust the Delivery Optimization cache to suit your scenario:

- [Max Cache Size](#max-cache-size) and [Absolute Max Cache Size](#absolute-max-cache-size) control the amount of space the Delivery Optimization cache can use.
- [Max Cache Age](#max-cache-age) controls the retention period for each update in the cache.
- The system drive is the default location for the Delivery Optimization cache. [Modify Cache Drive](#modify-cache-drive) allows administrators to change that location.

>[!NOTE]
>It is possible to configure preferred cache devices. For more information, see [Group ID](#group-id).

All cached files have to be above a set minimum size. This size is automatically set by the Delivery Optimization cloud services, but when local storage is sufficient and the network isn't strained or congested, administrators might choose to change it to obtain increased performance. You can set the minimum size of files to cache by adjusting [Minimum Peer Caching Content File Size](#minimum-peer-caching-content-file-size).

#### Impact to network

More options available that control the impact Delivery Optimization has on your network include the following settings:

- [Minimum Background QoS](#minimum-background-qos) lets administrators guarantee a minimum download speed for Windows updates. This setting adjusts the amount of data downloaded directly from HTTP sources, rather than other peers in the network.
- [Maximum Foreground Download Bandwidth](#maximum-foreground-download-bandwidth) specifies the maximum foreground download bandwidth*hat Delivery Optimization uses, across all concurrent download activities, as a percentage of available download bandwidth.
- [Maximum Background Download Bandwidth](#maximum-background-download-bandwidth) specifies the **maximum background download bandwidth** that Delivery Optimization uses, across all concurrent download activities, as a percentage of available download bandwidth.
- [Set Business Hours to Limit Background Download Bandwidth](#set-business-hours-to-limit-background-download-bandwidth) specifies the maximum background download bandwidth that Delivery Optimization uses during and outside business hours across all concurrent download activities as a percentage of available download bandwidth.
- [Set Business Hours to Limit Foreground Download Bandwidth](#set-business-hours-to-limit-foreground-download-bandwidth) specifies the maximum foreground download bandwidth that Delivery Optimization uses during and outside business hours across all concurrent download activities as a percentage of available download bandwidth.
- [Select a method to restrict Peer Selection](#select-a-method-to-restrict-peer-selection) restricts peer selection by the options you select.
- [Select the source of Group IDs](#select-the-source-of-group-ids) restricts peer selection to a specific source.

#### Policies to prioritize the use of Peer-to-Peer and Cache Server sources

When Delivery Optimization client is configured to use peers and Microsoft Connected Cache (MCC), to achieve the best possible content delivery experience, the client connects to both MCC and peers in parallel. If the desired content can't be obtained from MCC or peers, Delivery Optimization will automatically fallback to the HTTP source to get the requested content. There are four settings that allow you to prioritize peer-to-peer or MCC sources by delaying the immediate fallback to HTTP source, which is the default behavior.

##### Peer-to-peer delay fallback settings

- [Delay foreground download from HTTP (in secs)](#delay-foreground-download-from-http-in-secs) allows you to delay the use of an HTTP source in a foreground (interactive) download that is allowed to use P2P.
- [Delay background download from HTTP (in secs)](#delay-background-download-from-http-in-secs) allows you to delay the use of an HTTP source in a background download that is allowed to use P2P.

##### Microsoft Connected Cache (MCC) delay fallback settings

- [Delay foreground download Cache Server fallback (in secs)](#delay-foreground-download-cache-server-fallback-in-secs) allows you to delay the use of an HTTP source in a foreground (interactive) download that is allowed to use a cache server.
- [Delay background download from HTTP (in secs)](#delay-background-download-from-http-in-secs) allows you to delay the use of an HTTP source in a background  download that is allowed to use a cache server.

**If both peer-to-peer and MCC are configured, the peer-to-peer delay settings will take precedence over the cache server delay settings.** This setting allows Delivery Optimization to discover peers first then recognize the fallback setting for the MCC cache server.

#### System resource usage

Administrators can further customize scenarios where Delivery Optimization is used with the following settings:

- [Minimum RAM (inclusive) allowed to use Peer Caching](#minimum-ram-inclusive-allowed-to-use-peer-caching) sets the minimum RAM required for peer caching to be enabled.
- [Minimum disk size allowed to use Peer Caching](#minimum-disk-size-allowed-to-use-peer-caching) sets the minimum disk size required for peer caching to be enabled.
- [Enable Peer Caching while the device connects via VPN](#enable-peer-caching-while-the-device-connects-via-vpn) allows clients connected through VPN to use peer caching.
- [Allow uploads while the device is on battery while under set Battery level](#allow-uploads-while-the-device-is-on-battery-while-under-set-battery-level) controls the minimum battery level required for uploads to occur. You must enable this policy to allow upload while on battery.

### Download mode

MDM Setting: **DODownloadMode**

Download mode dictates which download sources clients are allowed to use when downloading Windows updates in addition to Windows Update servers. The following table shows the available download mode options and what they do. Other technical details for these policies are available in [Policy CSP - Delivery Optimization](/windows/client-management/mdm/policy-csp-deliveryoptimization).

| Download mode option | Functionality when set |
| --- | --- |
| HTTP Only (0) | This setting disables peer-to-peer caching but still allows Delivery Optimization to download content over HTTP from the download's original source or a Microsoft Connected Cache server. This mode uses additional metadata provided by the Delivery Optimization cloud services for a peerless reliable and efficient download experience. |
| LAN (**1 - Default**) | This default operating mode for Delivery Optimization enables peer sharing on the same network. The Delivery Optimization cloud service finds other clients that connect to the Internet using the same public IP as the target client. These clients then try to connect to other peers on the same network by using their private subnet IP.|
| Group (2) | When group mode is set, the group is automatically selected based on the device's Active Directory Domain Services (AD DS) site (Windows 10, version 1607) or the domain the device is authenticated to (Windows 10, version 1511). In group mode, peering occurs across internal subnets, between devices that belong to the same group, including devices in remote offices. You can use GroupID option to create your own custom group independently of domains and AD DS sites. Starting with Windows 10, version 1803, you can use the GroupIDSource parameter to take advantage of other method to create groups dynamically. Group download mode is the recommended option for most organizations looking to achieve the best bandwidth optimization with Delivery Optimization. |
| Internet (3) | Enable Internet peer sources for Delivery Optimization. |
| Simple (99) | Simple mode disables the use of Delivery Optimization cloud services completely (for offline environments). Delivery Optimization switches to this mode automatically when the Delivery Optimization cloud services are unavailable, unreachable, or when the content file size is less than 10 MB. In this mode, Delivery Optimization provides a reliable download experience over HTTP from the download's original source or a Microsoft Connected Cache server, with no peer-to-peer caching. |
| Bypass (100) | Starting in Windows 11, this option is deprecated. Don't set **Download mode** to '100' (Bypass), which can cause some content to fail to download. If you want to disable peer-to-peer functionality, set DownloadMode to (0). If your device doesn't have internet access, set Download Mode to (99). When you set Bypass (100), the download bypasses Delivery Optimization and uses BITS instead. You don't need to set this option if you're using Configuration Manager. |

> [!NOTE]
> When you use Azure Active Directory tenant, AD Site, or AD Domain as the source of group IDs, the association of devices participating in the group should not be relied on for an authentication of identity of those devices.

### Group ID

MDM Setting: **DOGroupID**

By default, peer sharing on clients using the Group download mode (option 2) is limited to the same domain in Windows 10, version 1511, and the same domain and Active Directory Domain Services site in Windows 10, version 1607. By using the Group ID setting, you can optionally create a custom group that contains devices that should participate in Delivery Optimization but don't fall within those domain or Active Directory Domain Services site boundaries, including devices in another domain. Using Group ID, you can further restrict the default group (for example, you could create a subgroup representing an office building), or extend the group beyond the domain, allowing devices in multiple domains in your organization to be peers. This setting requires the custom group to be specified as a GUID on each device that participates in the custom group.

>[!NOTE]
>To generate a GUID using Powershell, use [```[guid]::NewGuid()```](https://blogs.technet.microsoft.com/heyscriptingguy/2013/07/25/powertip-create-a-new-guid-by-using-powershell/)
>
>This configuration is optional and not required for most implementations of Delivery Optimization.

### Select the source of Group IDs

MDM Setting: **DOGroupIDSource**

Starting in Windows 10, version 1803, set this policy to restrict peer selection to a specific source, when using a GroupID policy. The options are:

- 0 = Not set
- 1 = AD Site
- 2 = Authenticated domain SID
- 3 = DHCP Option ID (with this option, the client queries DHCP Option ID 234 and use the returned GUID value as the Group ID)
- 4 = DNS Suffix
- 5 = Starting with Windows 10, version 1903, you can use the Azure AD Tenant ID as a means to define groups. To do this set the value for DOGroupIdSource to its new maximum value of 5.

When set, the Group ID is assigned automatically from the selected source. If you set this policy, the GroupID policy is ignored. The default behavior, when the GroupID or GroupIDSource policies aren't set, is to determine the Group ID using AD Site (1), Authenticated domain SID (2) or Azure AD Tenant ID (5), in that order. If GroupIDSource is set to either DHCP Option ID (3) or DNS Suffix (4) and those methods fail, the default behavior is used instead. The option set in this policy only applies to Group (2) download mode. If Group (2) isn't set as Download mode, this policy will be ignored. If you set the value to anything other than 0-5, the policy is ignored.  

### Minimum RAM (inclusive) allowed to use Peer Caching  

MDM Setting: **DOMinRAMAllowedToPeer**

This setting specifies the minimum RAM size in GB required to use Peer Caching. For example if the minimum set is 1 GB, then devices with 1 GB or higher available RAM will be allowed to use Peer caching. The recommended values are 1 to 4, and **the default value is 4 GB**.

### Minimum disk size allowed to use Peer Caching

MDM Setting: **DOMinDiskSizeAllowedToPeer**

This setting specifies the required minimum disk size (capacity in GB) for the device to use Peer Caching. The recommended values are 64 to 256, and **the default value is 32 GB**.

>[!NOTE]
>If the [Modify Cache Drive](#modify-cache-drive) policy is set, the disk size check will apply to the new working directory specified by this policy.

### Max Cache Age

MDM Setting: **DOMaxCacheAge**

In environments configured for Delivery Optimization, you might want to set an expiration on cached updates and Windows application installation files. If so, this setting defines the maximum number of seconds each file can be held in the Delivery Optimization cache on each Windows 10 client device. Alternatively, organizations might choose to set this value to "0" which means "unlimited" to avoid peers redownloading content. When "Unlimited" value is set, Delivery Optimization holds the files in the cache longer and will clean up the cache as needed (for example when the cache size exceeded the maximum space allowed). **The default value is 259,200 seconds (three days)**.

### Max Cache Size

MDM Setting: **DOMaxCacheSize**

This setting limits the maximum amount of space the Delivery Optimization cache can use as a percentage of the available drive space, from 1 to 100. For example, if you set this value to 10 on a Windows client device that has 100 GB of available drive space, then Delivery Optimization uses up to 10 GB of that space. Delivery Optimization will constantly assess the available drive space and automatically clear the cache to keep the maximum cache size under the set percentage. **The default value is 20%**.

### Absolute Max Cache Size

MDM Setting: **DOAbsoluteMaxCacheSize**

This setting specifies the maximum number of gigabytes the Delivery Optimization cache can use. This is different from the [**Max Cache Size**](#max-cache-size) setting, which is a percentage of available disk space. Also, if you configure this policy, it overrides the [**Max Cache Size**](#max-cache-size) setting. **The default value is 10 GB**.

### Minimum Peer Caching Content File Size

MDM Setting: **DOMinFileSizeToCache**

This setting specifies the minimum content file size in MB enabled to use Peer Caching. The recommended values are from 1 to 100000. **The default file size is 50 MB** to participate in peering.

### Maximum Download Bandwidth

MDM Setting: **DOMaxUploadBandwidth**

Deprecated in Windows 10, version 2004.
This setting specifies the maximum download bandwidth that can be used across all concurrent Delivery Optimization downloads in kilobytes per second (KB/s). **A default value of "0"** means that Delivery Optimization will dynamically adjust and optimize the maximum bandwidth used.


### Maximum Foreground Download Bandwidth

MDM Setting: **DOPercentageMaxForegroundBandwidth**

Starting in Windows 10, version 1803, specifies the maximum foreground download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth. **The default value of "0"** means that Delivery Optimization dynamically adjusts to use the available bandwidth for foreground downloads. However, downloads from LAN peers aren't throttled even when this policy is set.

### Maximum Background Download Bandwidth

MDM Setting: **DOPercentageMaxBackgroundBandwidth**

Starting in Windows 10, version 1803, specifies the maximum background download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth. **The default value of "0"** means that Delivery Optimization dynamically adjusts to use the available bandwidth for background downloads. However, downloads from LAN peers aren't throttled even when this policy is set.

> [!NOTE]
> It is recommended to use the absolute value download options 'DOMaxBackgroundDownloadBandwidth' and 'DOMaxForegroundDownloadBandwidth', rather than percentage-based options, for low bandwidth environments.

### Percentage of Maximum Download Bandwidth

MDM Setting: **DOPercentageMaxDownloadBandwidth**

Deprecated in Windows 10, version 2004.
This setting specifies the maximum download bandwidth that Delivery Optimization can use across all concurrent download activities as a percentage of available download bandwidth. **The default value of "0"** means that Delivery Optimization dynamically adjusts to use the available bandwidth for downloads.

### Max Upload Bandwidth

MDM Setting: **DOMaxUploadBandwidth**

Deprecated in Windows 10, version 2004.
This setting allows you to limit the number of upload bandwidth individual clients can use for Delivery Optimization. Consider this setting when clients are providing content to requesting peers on the network. This option is set in kilobytes per second (KB/s). **The default value is "0" or "unlimited"** which means Delivery Optimization dynamically optimizes for minimal usage of upload bandwidth; however it doesn't cap the upload bandwidth rate at a set rate.

### Set Business Hours to Limit Background Download Bandwidth

MDM Setting: **DOSetHoursToLimitBackgroundDownloadBandwidth**

Starting in Windows 10, version 1803, specifies the maximum background download bandwidth that Delivery Optimization uses during and outside business hours across all concurrent download activities as a percentage of available download bandwidth. **By default, this policy isn't set.**

### Set Business Hours to Limit Foreground Download Bandwidth

MDM Setting: **DOSetHoursToLimitForegroundDownloadBandwidth**

Starting in Windows 10, version 1803, specifies the maximum foreground download bandwidth that Delivery Optimization uses during and outside business hours across all concurrent download activities as a percentage of available download bandwidth. **By default, this policy isn't set.**

### Select a method to restrict peer selection

MDM Setting: **DORestrictPeerSelectionBy**

Starting in Windows 10, version 1803, set this policy to restrict peer selection via selected option. In Windows 11, the 'Local Peer Discovery' option was introduced to restrict peer discovery to the local network. Currently the available options include: 0 = NAT, 1 = Subnet mask, and 2 = Local Peer Discovery. These options apply to both Download Modes LAN (1) and Group (2) and therefore means there's no peering between subnets.

If Group mode is set, Delivery Optimization will connect to locally discovered peers that are also part of the same Group (have the same Group ID).

The Local Peer Discovery (DNS-SD) option can only be set via MDM delivered policies on Windows 11 builds. This feature can be enabled in supported Windows 10 builds by setting the `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization\DORestrictPeerSelectionBy` value to **2**.

### Delay background download from HTTP (in secs)

MDM Setting: **DODelayBackgroundDownloadFromHttp**

Starting in Windows 10, version 1803, this allows you to delay the use of an HTTP source in a background download that is allowed to use peer-to-peer. The maximum value is 4294967295 seconds. **By default, this policy isn't set.**

### Delay foreground download from HTTP (in secs)

MDM Setting: **DODelayForegroundDownloadFromHttp**

Starting in Windows 10, version 1803, allows you to delay the use of an HTTP source in a foreground (interactive) download that is allowed to use peer-to-peer. The maximum value is 4294967295 seconds. **By default, this policy isn't set.**

### Delay Foreground Download Cache Server Fallback (in secs)

MDM Setting: **DelayCacheServerFallbackForeground**

Starting in Windows 10, version 1903, allows you to delay the fallback from cache server to the HTTP source for foreground content download by X seconds. If the 'Delay foreground download from HTTP policy is set, it will apply first (to allow downloads from peers) and then this policy will be applied. **By default, this policy isn't set.**

### Delay Background Download Cache Server Fallback (in secs)

MDM Setting: **DelayCacheServerFallbackBackground**

Starting in Windows 10, version 1903, set this policy to delay the fallback from cache server to the HTTP source for a background content download by X seconds. If the 'Delay background download from HTTP' policy is set, it will apply first (to allow downloads from peers) and then this policy will be applied. **By default, this policy isn't set.**

### Minimum Background QoS

MDM Setting: **DOMinBackgroundQoS**

This value specifies the minimum download speed guarantee that a client attempts to achieve and will fulfill by downloading more kilobytes from HTTP sources. The lower this value is, the more content is sourced using peers on the network rather than HTTP sources. The higher this value, the more content is received from HTTP sources, versus peers on the local network. **The default value is 2500 KB/s.**

### Modify Cache Drive

MDM Setting: **DOModifyCacheDrive**

This setting allows for an alternate Delivery Optimization cache location on the clients. **By default, the cache is stored on the operating system drive through the %SYSTEMDRIVE% environment variable.** You can set the value to an environment variable (for example, %SYSTEMDRIVE%), a drive letter (for example, D:), or a folder path (for example, D:\DOCache).

### Monthly Upload Data Cap

MDM Setting: **DOMonthlyUploadDataCap**

This setting specifies the total amount of data in gigabytes that a Delivery Optimization client can upload to Internet peers per month. A value of "0" means that an unlimited amount of data can be uploaded. **The default value for this setting is 20 GB.**

### Enable Peer Caching while the device connects via VPN

MDM Setting: **DOAllowVPNPeerCaching**

This setting determines whether a device will be allowed to participate in Peer Caching while connected to VPN. **By default, if a VPN connection is detected, peering isn't allowed, except when the 'Local Discovery' (DNS-SD) option is chosen.** Specify "true" to allow the device to participate in Peer Caching while connected via VPN to the domain network. The device can download from or upload to other domain network devices, either on VPN or on the corporate domain network.

### Allow uploads while the device is on battery while under set Battery level

MDM Setting: **DOMinBatteryPercentageAllowedToUpload**

This setting specifies battery levels at which a device will be allowed to upload data. Specify any value between 1 and 100 (in percentage) to allow the device to upload data to LAN and Group peers while on DC power (Battery). Uploads will automatically pause when the battery level drops below the set minimum battery level. The recommended value to set if you allow uploads on battery is 40 (for 40%).
The device can download from peers while on battery regardless of this policy.

>[!IMPORTANT]
> **By default, devices will not upload while on battery**. To enable uploads while on battery, you need to enable this policy and set the battery value under which uploads pause.

### Cache Server Hostname

MDM Setting: **DOCacheHost**

Set this policy to designate one or more Microsoft Connected Cache servers to be used by Delivery Optimization. You can set one or more FQDNs or IP Addresses that are comma-separated, for example: myhost.somerandomhost.com,myhost2.somerandomhost.com,10.10.1.7. **By default, this policy has no value.** Delivery Optimization client will connect to the listed Microsoft Connected Cache servers in the order as they are listed. When multiple FQDNs or IP Addresses are listed, the Microsoft Connected Cache server priority order is determined based on the order as they are listed. If the first server fails, it will move the the next one. When the last server fails, it will fallback to the CDN.

>[!IMPORTANT]
> Any value will signify that the policy is set. For example, an empty string ("") isn't considered empty.

### Cache Server Hostname Source

MDM Setting: **DOCacheHostSource**

This policy allows you to specify how your client(s) can discover Delivery Optimization in Network Cache servers dynamically. There are two options:

- 1 = DHCP Option 235.
- 2 = DHCP Option 235 Force.

With either option, the client queries DHCP Option ID 235 and use the returned value as the Cache Server Hostname. Option 2 overrides the Cache Server Hostname policy, if set. **By default, this policy has no value.**

Set this policy to designate Delivery Optimization in Network Cache servers through a custom DHCP Option. Specify the custom DHCP option on your DHCP server as *text* type. You can add one or more values as either fully qualified domain names (FQDN) or IP addresses. To add multiple values, separate each FQDN or IP address with commas.

> [!NOTE]
> If you format the DHCP Option ID incorrectly, the client will fall back to the Cache Server Hostname policy value if that value has been set.

### Maximum Foreground Download Bandwidth (in KB/s)

MDM Setting: **DOMaxForegroundDownloadBandwidth**

Specifies the maximum foreground download bandwidth in kilobytes/second that the device can use across all concurrent download activities using Delivery Optimization.

**The default value of "0" means that Delivery Optimization dynamically adjusts to use the available bandwidth for downloads.**

### Maximum Background Download Bandwidth (in KB/s)

MDM Setting: **DOMaxBackgroundDownloadBandwidth**

Specifies the maximum background download bandwidth in kilobytes/second that the device can use across all concurrent download activities using Delivery Optimization.

**The default value "0" means that Delivery Optimization dynamically adjusts to use the available bandwidth for downloads.**
