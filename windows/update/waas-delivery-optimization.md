---
title: Configure Delivery Optimization for Windows 10 updates (Windows 10)
description: Delivery Optimization is a new peer-to-peer distribution method in Windows 10
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: DaniHalfin
localizationpriority: high
---

# Configure Delivery Optimization for Windows 10 updates


**Applies to**

- Windows 10

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq) 

Delivery Optimization is a self-organizing distributed cache solution for businesses looking to reduce bandwidth consumption for operating system updates, operating system upgrades, and applications by allowing clients to download those elements from alternate sources (such as other peers on the network) in addition to the traditional Internet-based Windows Update servers. You can use Delivery Optimization in conjunction with stand-alone Windows Update, Windows Server Update Services (WSUS), and Windows Update for Business. This functionality is similar to BranchCache in other systems, such as System Center Configuration Manager. 

Delivery Optimization is a cloud managed solution. Having access to the Delivery Optimization cloud services, is a requirement for it to be enabled. This mean that in order to utilize the peer-to-peer functionality of Delivery Optimization, machines need to have access to the internet.

For more details, see [Download mode](#download-mode).

>[!NOTE]
>WSUS can also use [BranchCache](waas-branchcache.md) for content sharing and caching. If Delivery Optimization is enabled on devices that use BranchCache, Delivery Optimization will be used instead. 

By default in Windows 10 Enterprise and Education, Delivery Optimization allows peer-to-peer sharing on the organization's own network only, but you can configure it differently in Group Policy and mobile device management (MDM) solutions such as Microsoft Intune.

## Delivery Optimization options

You can use Group Policy or an MDM solution like Intune to configure Delivery Optimization. 

You will find the Delivery Optimization settings in Group Policy under **Configuration\Policies\Administrative Templates\Windows Components\Delivery Optimization**.
In MDM, the same settings are under **.Vendor/MSFT/Policy/Config/DeliveryOptimization/**.

Several Delivery Optimization features are configurable:

| Group Policy setting | MDM setting |
| --- | --- |
| [Download mode](#download-mode) | DODownloadMode |
| [Group ID](#group-id)  | DOGroupID |
| [Max Cache Age](#max-cache-age) | DOMaxCacheAge |
| [Max Cache Size](#max-cache-size)  | DOMaxCacheSize |
| [Absolute Max Cache Size](#absolute-max-cache-size) | DOAbsoluteMaxCacheSize |
| [Modify Cache Drive](#modify-cache-drive) | DOModifyCacheDrive |
| [Maximum Download Bandwidth](#maximum-download-bandwidth) | DOMaxDownloadBandwidth |
| [Percentage of Maximum Download Bandwidth](#percentage-of-maximum-download-bandwidth) | DOPercentageMaxDownloadBandwidth |
| [Max Upload Bandwidth](#max-upload-bandwidth) | DOMaxUploadBandwidth |
| [Monthly Upload Data Cap](#monthly-upload-data-cap) | DOMonthlyUploadDataCap |
| [Minimum Background QoS](#minimum-background-qos) | DOMinBackgroundQoS |

When configuring Delivery Optimization on Windows 10 devices, the first and most important thing to configure, would be [Download mode](#download-mode). Download mode dictates how Delivery Optimization downloads Windows updates.

While every other feature setting is optional, they offer enhanced control of the Delivery Optimization behavior.

[Group ID](#group-id), combined with Group [Download mode](#download-mode), enables administrators to create custom device groups that will share content between devices in the group.

Delivery Optimization uses locally cached updates. In cases where devices have ample local storage and you would like to cache more content, or if you have limited storage and would like to cache less, use the settings below to adjust the Delivery Optimization cache to suit your scenario:
- [Max Cache Size](#max-cache-size) and [Absolute Max Cache Size](#absolute-max-cache-size) control the amount of space the Delivery Optimization cache can use.
- [Max Cache Age](#max-cache-age) controls the retention period for each update in the cache.
- The system drive is the default location for the Delivery Optimization cache. [Modify Cache Drive](#modify-cache-drive) allows administrators to change that location.

>[!NOTE]
>It is possible to configure preferred cache devices. For more information, see [Set “preferred” cache devices for Delivery Optimization](#set-preferred-cache-devices).

There are additional options available to robustly control the impact Delivery Optimization has on your network:
- [Maximum Download Bandwidth](#maximum-download-bandwidth) and [Percentage of Maximum Download Bandwidth](#percentage-of-maximum-download-bandwidth) controls the download bandwidth used by Delivery Optimization.
- [Max Upload Bandwidth](#max-upload-bandwidth) controls the Delivery Optimization upload bandwidth usage.
- [Monthly Upload Data Cap](#monthly-upload-data-cap) controls the amount of data a client can upload to peers per month.
- [Minimum Background QoS](#minimum-background-qos) lets administrators guarantee a minimum download speed for Windows updates. This is achieved by adjusting the amount of data downloaded directly from Windows Update or WSUS servers, rather than other peers in the network.

Provided below is a detailed description of every configurable feature setting. Use these details when configuring any of the above settings.

### Download mode

Download mode dictates which download sources clients are allowed to use when downloading Windows updates in addition to Windows Update servers.  The following table shows the available download mode options and what they do.

| Download mode option | Functionality when set |
| --- | --- |
| HTTP Only (0) | This setting disables peer-to-peer caching but still allows Delivery Optimization to download content from Windows Update servers or WSUS servers. This mode uses additional metadata provided by the Delivery Optimization cloud services for a peerless reliable and efficient download experience. |
| LAN (1 – Default) | This default operating mode for Delivery Optimization enables peer sharing on the same network. | 
| Group (2) | When group mode is set, the group is automatically selected based on the device’s Active Directory Domain Services (AD DS) site (Windows 10, version 1607) or the domain the device is authenticated to (Windows 10, version 1511). In group mode, peering occurs across internal subnets, between devices that belong to the same group, including devices in remote offices. You can use the GroupID option to create your own custom group independently of domains and AD DS sites. Group download mode is the recommended option for most organizations looking to achieve the best bandwidth optimization with Delivery Optimization. |
| Internet (3) | Enable Internet peer sources for Delivery Optimization. |
| Simple (99) | Simple mode disables the use of Delivery Optimization cloud services completely (for offline environments). Delivery Optimization switches to this mode automatically when the Delivery Optimization cloud services are unavailable, unreachable or when the content file size is less than 10 MB. In this mode, Delivery Optimization provides a reliable download experience, with no peer-to-peer caching. |
|Bypass (100) |	Bypass Delivery Optimization and use BITS, instead. For example, select this mode so that clients can use BranchCache. |

>[!NOTE]
>Group mode is a best effort optimization and should not be relied on for an authentication of identity of devices participating in the group.

### Group ID

By default, peer sharing on clients using the group download mode is limited to the same domain in Windows 10, version 1511, and the same domain and AD DS site in Windows 10, version 1607. By using the Group ID setting, you can optionally create a custom group that contains devices that should participate in Delivery Optimization but do not fall within those domain or AD DS site boundaries, including devices in another domain. Using Group ID, you can further restrict the default group (for example create a sub-group representing an office building), or extend the group beyond the domain, allowing devices in multiple domains in your organization to peer. This setting requires the custom group to be specified as a GUID on each device that participates in the custom group. 

>[!NOTE]
>This configuration is optional and not required for most implementations of Delivery Optimization.
    
### Max Cache Age

In environments configured for Delivery Optimization, you may want to set an expiration on cached updates and Windows application installation files. If so, this setting defines the maximum number of seconds each file can be held in the Delivery Optimization cache on each Windows 10 client computer. The default Max Cache Age value is 259,200 seconds (3 days). Alternatively, organizations may choose to set this value to “0” which means “unlimited” to avoid peers re-downloading content. When “Unlimited” value is set, Delivery Optimization will hold the files in the cache longer and will clean up the cache as needed (for example when the cache size exceeded the maximum space allowed).

### Max Cache Size

This setting limits the maximum amount of space the Delivery Optimization cache can use as a percentage of the available drive space, from 1 to 100. For example, if you set this value to 10 on a Windows 10 client computer that has 100 GB of available drive space, then Delivery Optimization will use up to 10 GB of that space. Delivery Optimization will constantly assess the available drive space and automatically clear the cache to keep the maximum cache size under the set percentage. The default value for this setting is 20.

### Absolute Max Cache Size

This setting specifies the maximum number of gigabytes the Delivery Optimization cache can use. This is different from the **DOMaxCacheSize** setting, which is a percentage of available disk space. Also, if you configure this policy, it will override the **DOMaxCacheSize** setting. The default value for this setting is 10 GB.

### Maximum Download Bandwidth

This setting specifies the maximum download bandwidth that can be used across all concurrent Delivery Optimization downloads in kilobytes per second (KB/s). A default value of 0 means that Delivery Optimization will dynamically adjust and optimize the maximum bandwidth used.

### Percentage of Maximum Download Bandwidth

This setting specifies the maximum download bandwidth that Delivery Optimization can use across all concurrent download activities as a percentage of available download bandwidth. The default value 0 means that Delivery Optimization dynamically adjusts to use the available bandwidth for downloads.

### Max Upload Bandwidth

This setting allows you to limit the amount of upload bandwidth individual clients can use for Delivery Optimization. Consider this setting when clients are providing content to requesting peers on the network. This option is set in kilobytes per second (KB/s). The default setting is 0, or “unlimited” which means Delivery Optimization dynamically optimizes for minimal usage of upload bandwidth; however it does not cap the upload bandwidth rate at a set rate.

### Minimum Background QoS

This value specifies the minimum download speed guarantee that a client attempts to achieve and will fulfill by downloading more bytes from Windows Update servers or WSUS. Simply put, the lower this value is, the more content will be sourced using peers on the network rather than Windows Update. The higher this value, the more content is received from Windows Update servers or WSUS, versus peers on the local network.

### Modify Cache Drive

This setting allows for an alternate Delivery Optimization cache location on the clients. By default, the cache is stored on the operating system drive through the %SYSTEMDRIVE% environment variable. You can set the value to an environment variable (e.g., %SYSTEMDRIVE%), a drive letter (e.g., D:), or a folder path (e.g., D:\DOCache).

### Monthly Upload Data Cap

This setting specifies the total amount of data in gigabytes that a Delivery Optimization client can upload to Internet peers per month. A value of 0 means that an unlimited amount of data can be uploaded. The default value for this setting is 20 GB.
    
<span id="set-preferred-cache-devices"/>
## Set “preferred” cache devices for Delivery Optimization

In some cases, IT pros may have an interest in identifying specific devices that will be “preferred” as sources to other devices—for example, devices that have hard-wired connections, large drives that you can use as caches, or a high-end hardware profile. These preferred devices will act as a “master” for the update content related to that devices’s configuration (Delivery Optimization only caches content relative to the client downloading the content).

To specify which devices are preferred, you can set the **Max Cache Age** configuration with a value of **Unlimited** (0). As a result, these devices will be used more often as sources for other devices downloading the same files.

On devices that are not preferred, you can choose to set the following policy to prioritize data coming from local peers instead of the Internet:

-  Set **DOMinBackgroundQoS** with a low value, for example `65536` which is the equivalent of 64 KB/s.

## Learn more

[Windows 10, Delivery Optimization, and WSUS](https://blogs.technet.microsoft.com/mniehaus/2016/08/16/windows-10-delivery-optimization-and-wsus-take-2/)


## Related topics

- [Update Windows 10 in the enterprise](index.md)
- [Overview of Windows as a service](waas-overview.md)
- [Prepare servicing strategy for Windows 10 updates](waas-servicing-strategy-windows-10-updates.md)
- [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md)
- [Assign devices to servicing branches for Windows 10 updates](waas-servicing-branches-windows-10-updates.md)
- [Optimize update delivery for Windows 10 updates](waas-optimize-windows-10-updates.md)
- [Configure BranchCache for Windows 10 updates](waas-branchcache.md)
- [Manage updates for Windows 10 Mobile Enterprise and Windows 10 IoT Mobile](waas-mobile-updates.md) 
- [Manage updates using Windows Update for Business](waas-manage-updates-wufb.md)
- [Configure Windows Update for Business](waas-configure-wufb.md)
- [Integrate Windows Update for Business with management solutions](waas-integrate-wufb.md)
- [Walkthrough: use Group Policy to configure Windows Update for Business](waas-wufb-group-policy.md)
- [Walkthrough: use Intune to configure Windows Update for Business](waas-wufb-intune.md)
- [Manage Windows 10 updates using Windows Server Update Services](waas-manage-updates-wsus.md)
- [Manage Windows 10 updates using System Center Configuration Manager](waas-manage-updates-configuration-manager.md)
- [Manage device restarts after updates](waas-restart.md)
