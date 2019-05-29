---
title: Delivery Optimization reference
description: Reference of all Delivery Optimization settings and descriptions of same
keywords: oms, operations management suite, wdav, updates, downloads, log analytics
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jaimeo
ms.localizationpriority: medium
ms.author: jaimeo
ms.collection: M365-modern-desktop
ms.topic: article
---

# Delivery Optimization reference

**Applies to**

- Windows 10

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq)

There are a great many details you can set in Delivery Optimization to customize it to do just what you need it to. This topic summarizes them for your reference.

## Delivery Optimization options

You can use Group Policy or an MDM solution like Intune to configure Delivery Optimization. 

You will find the Delivery Optimization settings in Group Policy under **Configuration\Policies\Administrative Templates\Windows Components\Delivery Optimization**.
In MDM, the same settings are under **.Vendor/MSFT/Policy/Config/DeliveryOptimization/**.

[//]: # (something about Intune UX--perhaps link to relevant Intune docs?)

### Summary of Delivery Optimization settings :

| Group Policy setting | MDM setting | Supported from version |
| --- | --- | --- |
| [Download mode](#download-mode) | DODownloadMode | 1511 |
| [Group ID](#group-id)  | DOGroupID | 1511 |
| [Minimum RAM (inclusive) allowed to use Peer Caching](#minimum-ram-inclusive-allowed-to-use-peer-caching) | DOMinRAMAllowedToPeer | 1703 |
| [Minimum disk size allowed to use Peer Caching](#minimum-disk-size-allowed-to-use-peer-caching) | DOMinDiskSizeAllowedToPeer | 1703 |
| [Max Cache Age](#max-cache-age) | DOMaxCacheAge | 1511 |
| [Max Cache Size](#max-cache-size)  | DOMaxCacheSize | 1511 |
| [Absolute Max Cache Size](#absolute-max-cache-size) | DOAbsoluteMaxCacheSize | 1607 |
| [Modify Cache Drive](#modify-cache-drive) | DOModifyCacheDrive | 1607 |
| [Minimum Peer Caching Content File Size](#minimum-peer-caching-content-file-size) | DOMinFileSizeToCache | 1703 |
| [Maximum Download Bandwidth](#maximum-download-bandwidth) | DOMaxDownloadBandwidth | 1607 |
| [Percentage of Maximum Download Bandwidth](#percentage-of-maximum-download-bandwidth) | DOPercentageMaxDownloadBandwidth | 1607 |
| [Max Upload Bandwidth](#max-upload-bandwidth) | DOMaxUploadBandwidth | 1607 |
| [Monthly Upload Data Cap](#monthly-upload-data-cap) | DOMonthlyUploadDataCap | 1607 |
| [Minimum Background QoS](#minimum-background-qos) | DOMinBackgroundQoS | 1607 |
| [Enable Peer Caching while the device connects via VPN](#enable-peer-caching-while-the-device-connects-via-vpn) | DOAllowVPNPeerCaching | 1709 |
| [Allow uploads while the device is on battery while under set Battery level](#allow-uploads-while-the-device-is-on-battery-while-under-set-battery-level) | DOMinBatteryPercentageAllowedToUpload | 1709 |
| [MaxForegroundDownloadBandwidth](#maximum-foreground-download-bandwidth) | DOPercentageMaxForegroundBandwidth | 1803 |
| [MaxBackgroundDownloadBandwidth](#maximum-background-download-bandwidth) | DOPercentageMaxBackgroundBandwidth | 1803 |
| [SetHoursToLimitBackgroundDownloadBandwidth](#set-business-hours-to-limit-background-download-bandwidth) | DOSetHoursToLimitBackgroundDownloadBandwidth | 1803 |
| [SetHoursToLimitForegroundDownloadBandwidth](#set-business-hours-to-limit-foreground-download-bandwidth)  |DOSetHoursToLimitForegroundDownloadBandwidth | 1803 |
| [Select a method to restrict Peer Selection](#select-a-method-to-restrict-peer-selection) |DORestrictPeerSelectionBy | 1803 |
| [Select the source of Group IDs](#select-the-source-of-group-ids) | DOGroupIDSource | 1803 |
| [Delay background download from http (in secs)](#delay-background-download-from-http-in-secs) | DODelayBackgroundDownloadFromHttp | 1803 |
| [Delay foreground download from http (in secs)](#delay-foreground-download-from-http-in-secs) | DODelayForegroundDownloadFromHttp | 1803 |
| [Delay foreground download cache server fallback (in secs)](#delay-foreground-download-cache-server-fallback-in-secs) | DelayCacheServerFallbackForeground | 1903 |
| [Delay background download cache server fallback (in secs)](#delay-background-download-cache-server-fallback-in-secs) | DelayCacheServerFallbackBackground | 1903 |

### More detail on Delivery Optimization settings:

[Group ID](#group-id), combined with Group [Download mode](#download-mode), enables administrators to create custom device groups that will share content between devices in the group.

Delivery Optimization uses locally cached updates. In cases where devices have ample local storage and you would like to cache more content, or if you have limited storage and would like to cache less, use the following settings to adjust the Delivery Optimization cache to suit your scenario:
- [Max Cache Size](#max-cache-size) and [Absolute Max Cache Size](#absolute-max-cache-size) control the amount of space the Delivery Optimization cache can use.
- [Max Cache Age](#max-cache-age) controls the retention period for each update in the cache.
- The system drive is the default location for the Delivery Optimization cache. [Modify Cache Drive](#modify-cache-drive) allows administrators to change that location.

>[!NOTE]
>It is possible to configure preferred cache devices. For more information, see [Group ID](#group-id).

All cached files have to be above a set minimum size. This size is automatically set by the Delivery Optimization cloud services, but when local storage is sufficient and the network isn't strained or congested, administrators might choose to change it to obtain increased performance. You can set the minimum size of files to cache by adjusting [Minimum Peer Caching Content File Size](#minimum-peer-caching-content-file-size).

Additional options available that control the impact Delivery Optimization has on your network include the following:
- [Maximum Download Bandwidth](#maximum-download-bandwidth) and [Percentage of Maximum Download Bandwidth](#percentage-of-maximum-download-bandwidth) control the download bandwidth used by Delivery Optimization.
- [Max Upload Bandwidth](#max-upload-bandwidth) controls the Delivery Optimization upload bandwidth usage.
- [Monthly Upload Data Cap](#monthly-upload-data-cap) controls the amount of data a client can upload to peers each month.
- [Minimum Background QoS](#minimum-background-qos) lets administrators guarantee a minimum download speed for Windows updates. This is achieved by adjusting the amount of data downloaded directly from Windows Update or WSUS servers, rather than other peers in the network.
- [Maximum Foreground Download Bandwidth](#maximum-foreground-download-bandwidth) specifies the **maximum foreground download bandwidth** that Delivery Optimization uses, across all concurrent download activities, as a percentage of available download bandwidth.
- [Maximum Background Download Bandwidth](#maximum-background-download-bandwidth) specifies the **maximum background download bandwidth** that Delivery Optimization uses, across all concurrent download activities, as a percentage of available download bandwidth.
- [Set Business Hours to Limit Background Download Bandwidth](#set-business-hours-to-limit-background-download-bandwidth) specifies the maximum background download bandwidth that Delivery Optimization uses during and outside business hours across all concurrent download activities as a percentage of available download bandwidth.
- [Set Business Hours to Limit Foreground Download Bandwidth](#set-business-hours-to-limit-foreground-download-bandwidth) specifies the maximum foreground download bandwidth that Delivery Optimization uses during and outside business hours across all concurrent download activities as a percentage of available download bandwidth.
- [Select a method to restrict Peer Selection](#select-a-method-to-restrict-peer-selection) restricts peer selection by the options you select.
- [Select the source of Group IDs](#select-the-source-of-group-ids) restricts peer selection to a specific source.
- [Delay background download from http (in secs)](#delay-background-download-from-http-in-secs) allows you to delay the use of an HTTP source in a background download that is allowed to use P2P.
- [Delay foreground download from http (in secs)](#delay-foreground-download-from-http-in-secs) allows you to delay the use of an HTTP source in a foreground (interactive) download that is allowed to use P2P.

Administrators can further customize scenarios where Delivery Optimization will be used with the following settings:
- [Minimum RAM (inclusive) allowed to use Peer Caching](#minimum-ram-inclusive-allowed-to-use-peer-caching) sets the minimum RAM required for peer caching to be enabled.
- [Minimum disk size allowed to use Peer Caching](#minimum-disk-size-allowed-to-use-peer-caching) sets the minimum disk size required for peer caching to be enabled.
- [Enable Peer Caching while the device connects via VPN](#enable-peer-caching-while-the-device-connects-via-vpn) allows clients connected through VPN to use peer caching.
- [Allow uploads while the device is on battery while under set Battery level](#allow-uploads-while-the-device-is-on-battery-while-under-set-battery-level) controls the minimum battery level required for uploads to occur. You must enable this policy to allow upload while on battery.

### Download mode

Download mode dictates which download sources clients are allowed to use when downloading Windows updates in addition to Windows Update servers. The following table shows the available download mode options and what they do. Additional technical details for these policies are available in [Policy CSP - Delivery Optimization](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-deliveryoptimization).

| Download mode option | Functionality when set |
| --- | --- |
| HTTP Only (0) | This setting disables peer-to-peer caching but still allows Delivery Optimization to download content over HTTP from the download's original source. This mode uses additional metadata provided by the Delivery Optimization cloud services for a peerless reliable and efficient download experience. |
| LAN (1 – Default) | This default operating mode for Delivery Optimization enables peer sharing on the same network. The Delivery Optimization cloud service finds other clients that connect to the Internet using the same public IP as the target client. These clients then attempts to connect to other peers on the same network by using their private subnet IP.| 
| Group (2) | When group mode is set, the group is automatically selected based on the device’s Active Directory Domain Services (AD DS) site (Windows 10, version 1607) or the domain the device is authenticated to (Windows 10, version 1511). In group mode, peering occurs across internal subnets, between devices that belong to the same group, including devices in remote offices. You can use GroupID option to create your own custom group independently of domains and AD DS sites. Starting with Windows 10, version 1803, you can use the GroupIDSource parameter to take advantage of other method to create groups dynamically. Group download mode is the recommended option for most organizations looking to achieve the best bandwidth optimization with Delivery Optimization. |
| Internet (3) | Enable Internet peer sources for Delivery Optimization. |
| Simple (99) | Simple mode disables the use of Delivery Optimization cloud services completely (for offline environments). Delivery Optimization switches to this mode automatically when the Delivery Optimization cloud services are unavailable, unreachable or when the content file size is less than 10 MB. In this mode, Delivery Optimization provides a reliable download experience, with no peer-to-peer caching. |
|Bypass (100) |	Bypass Delivery Optimization and use BITS, instead. You should only select this mode if you use WSUS and prefer to use BranchCache. You do not need to set this option if you are using SCCM. If you want to disable peer-to-peer functionality, it's best to set **DownloadMode** to **0** or **99**. |

>[!NOTE]
>Group mode is a best-effort optimization and should not be relied on for an authentication of identity of devices participating in the group.

### Group ID

By default, peer sharing on clients using the group download mode is limited to the same domain in Windows 10, version 1511, and the same domain and AD DS site in Windows 10, version 1607. By using the Group ID setting, you can optionally create a custom group that contains devices that should participate in Delivery Optimization but do not fall within those domain or AD DS site boundaries, including devices in another domain. Using Group ID, you can further restrict the default group (for example, you could create a sub-group representing an office building), or extend the group beyond the domain, allowing devices in multiple domains in your organization to be peers. This setting requires the custom group to be specified as a GUID on each device that participates in the custom group.

[//]: # (SCCM Boundary Group option; GroupID Source policy)

>[!NOTE]
>To generate a GUID using Powershell, use [```[guid]::NewGuid()```](https://blogs.technet.microsoft.com/heyscriptingguy/2013/07/25/powertip-create-a-new-guid-by-using-powershell/)
>
>This configuration is optional and not required for most implementations of Delivery Optimization.

### Select the source of Group IDs
Starting in Windows 10, version 1803, set this policy to restrict peer selection to a specific source. The options are:
- 0 = not set
- 1 = AD Site
- 2 = Authenticated domain SID
- 3 = DHCP Option ID (with this option, the client will query DHCP Option ID 234 and use the returned GUID value as the Group ID)
- 4 = DNS Suffix 

When set, the Group ID is assigned automatically from the selected source. If you set this policy, the GroupID policy will be ignored. The option set in this policy only applies to Group (2) download mode. If Group (2) isn't set as Download mode, this policy will be ignored. If you set the value to anything other than 0-4, the policy is ignored.  


### Minimum RAM (inclusive) allowed to use Peer Caching  

This setting specifies the minimum RAM size in GB required to use Peer Caching. For example if the minimum set is 1 GB, then devices with 1 GB or higher available RAM will be allowed to use Peer caching. The recommended values are 1 to 4 GB, and the default value is 4 GB.

### Minimum disk size allowed to use Peer Caching

This setting specifies the required minimum disk size (capacity in GB) for the device to use Peer Caching. The recommended values are 64 to 256 GB, and the default value is 32 GB.

>[!NOTE]
>If the [Modify Cache Drive](#modify-cache-drive) policy is set, the disk size check will apply to the new working directory specified by this policy.


### Max Cache Age

In environments configured for Delivery Optimization, you might want to set an expiration on cached updates and Windows application installation files. If so, this setting defines the maximum number of seconds each file can be held in the Delivery Optimization cache on each Windows 10 client device. The default Max Cache Age value is 259,200 seconds (3 days). Alternatively, organizations might choose to set this value to “0” which means “unlimited” to avoid peers re-downloading content. When “Unlimited” value is set, Delivery Optimization will hold the files in the cache longer and will clean up the cache as needed (for example when the cache size exceeded the maximum space allowed).

### Max Cache Size

This setting limits the maximum amount of space the Delivery Optimization cache can use as a percentage of the available drive space, from 1 to 100. For example, if you set this value to 10 on a Windows 10 client device that has 100 GB of available drive space, then Delivery Optimization will use up to 10 GB of that space. Delivery Optimization will constantly assess the available drive space and automatically clear the cache to keep the maximum cache size under the set percentage. The default value for this setting is 20.

### Absolute Max Cache Size

This setting specifies the maximum number of gigabytes the Delivery Optimization cache can use. This is different from the [**Max Cache Size**](#max-cache-size) setting, which is a percentage of available disk space. Also, if you configure this policy, it will override the [**Max Cache Size**](#max-cache-size) setting. The default value for this setting is 10 GB.

### Minimum Peer Caching Content File Size

This setting specifies the minimum content file size in MB enabled to use Peer Caching. The recommended values are from 1 to 100000 MB.

### Maximum Download Bandwidth

This setting specifies the maximum download bandwidth that can be used across all concurrent Delivery Optimization downloads in kilobytes per second (KB/s). A default value of 0 means that Delivery Optimization will dynamically adjust and optimize the maximum bandwidth used.

### Maximum Foreground Download Bandwidth

Starting in Windows 10, version 1803, specifies the maximum foreground download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth. The default value of 0 means that Delivery Optimization dynamically adjusts to use the available bandwidth for foreground downloads. However, downloads from LAN peers are not throttled even when this policy is set.

### Maximum Background Download Bandwidth

Starting in Windows 10, version 1803, specifies the maximum background download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth. The default value of 0 means that Delivery Optimization dynamically adjusts to use the available bandwidth for foreground downloads. However, downloads from LAN peers are not throttled even when this policy is set.

### Percentage of Maximum Download Bandwidth

This setting specifies the maximum download bandwidth that Delivery Optimization can use across all concurrent download activities as a percentage of available download bandwidth. The default value 0 means that Delivery Optimization dynamically adjusts to use the available bandwidth for downloads.

### Max Upload Bandwidth

This setting allows you to limit the amount of upload bandwidth individual clients can use for Delivery Optimization. Consider this setting when clients are providing content to requesting peers on the network. This option is set in kilobytes per second (KB/s). The default setting is 0, or “unlimited” which means Delivery Optimization dynamically optimizes for minimal usage of upload bandwidth; however it does not cap the upload bandwidth rate at a set rate.

### Set Business Hours to Limit Background Download Bandwidth
Starting in Windows 10, version 1803, specifies the maximum background download bandwidth that Delivery Optimization uses during and outside business hours across all concurrent download activities as a percentage of available download bandwidth.

### Set Business Hours to Limit Foreground Download Bandwidth
Starting in Windows 10, version 1803, specifies the maximum foreground download bandwidth that Delivery Optimization uses during and outside business hours across all concurrent download activities as a percentage of available download bandwidth.

### Select a method to restrict peer selection
Starting in Windows 10, version 1803, set this policy to restrict peer selection via selected option.  
Currently the only available option is **1 = Subnet mask** This option (Subnet mask) applies to both Download Modes LAN (1) and Group (2).  

### Delay background download from http (in secs)
Starting in Windows 10, version 1803, this allows you to delay the use of an HTTP source in a background download that is allowed to use peer-to-peer.

### Delay foreground download from http (in secs)
Starting in Windows 10, version 1803, allows you to delay the use of an HTTP source in a foreground (interactive) download that is allowed to use peer-to-peer.

### Delay Foreground Download Cache Server Fallback (in secs)
Starting in Windows 10, version 1903, allows you to delay the fallback from cache server to the HTTP source for foreground content download by X seconds. If you set the policy to delay foreground download from http, it will apply first (to allow downloads from peers first).

### Delay Background Download Cache Server Fallback (in secs)
Starting in Windows 10, version 1903, set this policy to delay the fallback from cache server to the HTTP source for a background content download by X seconds. If you set the policy to delay background download from http, it will apply first (to allow downloads from peers first).

### Minimum Background QoS

This value specifies the minimum download speed guarantee that a client attempts to achieve and will fulfill by downloading more kilobytes from Windows Update servers or WSUS. Simply put, the lower this value is, the more content will be sourced using peers on the network rather than Windows Update. The higher this value, the more content is received from Windows Update servers or WSUS, versus peers on the local network.

### Modify Cache Drive

This setting allows for an alternate Delivery Optimization cache location on the clients. By default, the cache is stored on the operating system drive through the %SYSTEMDRIVE% environment variable. You can set the value to an environment variable (e.g., %SYSTEMDRIVE%), a drive letter (e.g., D:), or a folder path (e.g., D:\DOCache).

### Monthly Upload Data Cap

This setting specifies the total amount of data in gigabytes that a Delivery Optimization client can upload to Internet peers per month. A value of 0 means that an unlimited amount of data can be uploaded. The default value for this setting is 20 GB.

### Enable Peer Caching while the device connects via VPN

This setting determines whether a device will be allowed to participate in Peer Caching while connected to VPN. Specify "true" to allow the device to participate in Peer Caching while connected via VPN to the domain network. This means the device can download from or upload to other domain network devices, either on VPN or on the corporate domain network.

### Allow uploads while the device is on battery while under set Battery level

This setting specifies battery levels at which a device will be allowed to upload data. Specify any value between 1 and 100 (in percentage) to allow the device to upload data to LAN and Group peers while on DC power (Battery). Uploads will automatically pause when the battery level drops below the set minimum battery level. The recommended value to set if you allow uploads on battery is 40 (for 40%).
The device can download from peers while on battery regardless of this policy.

>[!IMPORTANT]
> By default, devices **will not upload while on battery**. To enable uploads while on battery, you need to enable this policy and set the battery value under which uploads pause.


