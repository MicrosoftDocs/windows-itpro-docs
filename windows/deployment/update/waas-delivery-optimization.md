---
title: Configure Delivery Optimization for Windows 10 updates (Windows 10)
description: Delivery Optimization is a new peer-to-peer distribution method in Windows 10
keywords: oms, operations management suite, wdav, updates, downloads, log analytics
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: JaimeO
ms.localizationpriority: medium
ms.author: jaimeo
ms.date: 04/30/2018
ms.collection: M365-modern-desktop
---

# Configure Delivery Optimization for Windows 10 updates


**Applies to**

- Windows 10

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq) 

Windows updates, upgrades, and applications can contain packages with very large files. Downloading and distributing updates can consume quite a bit of network resources on the devices receiving them. You can use Delivery Optimization to reduce bandwidth consumption by sharing the work of downloading these packages among multiple devices in your deployment. Delivery Optimization can accomplish this because it is a self-organizing distributed cache that allows clients to download those packages from alternate sources (such as other peers on the network) in addition to the traditional Internet-based Windows Update servers. You can use Delivery Optimization in conjunction with stand-alone Windows Update, Windows Server Update Services (WSUS), Windows Update for Business, or System Center Configuration Manager when installation of Express Updates is enabled.  

Delivery Optimization is a cloud-managed solution. Access to the Delivery Optimization cloud services is a requirement. This means that in order to use the peer-to-peer functionality of Delivery Optimization, devices must have access to the internet.


>[!NOTE]
>WSUS can also use [BranchCache](waas-branchcache.md) for content sharing and caching. If Delivery Optimization is enabled on devices that use BranchCache, Delivery Optimization will be used instead. 

The following table lists the minimum Windows 10 version that supports Delivery Optimization:

| Device type | Minimum Windows version |
|------------------|---------------|
| Computers running Windows 10 | 1511 |
| Computers running Server Core installations of Windows Server | 1709 |
| IoT devices | 1803 |
| HoloLens devices | 1803 |


By default in Windows 10 Enterprise and Education editions, Delivery Optimization allows peer-to-peer sharing on the organization's own network only, but you can configure it differently in Group Policy and mobile device management (MDM) solutions such as Microsoft Intune.

For more details, see [Download mode](#download-mode).

## Delivery Optimization options

You can use Group Policy or an MDM solution like Intune to configure Delivery Optimization. 

You will find the Delivery Optimization settings in Group Policy under **Configuration\Policies\Administrative Templates\Windows Components\Delivery Optimization**.
In MDM, the same settings are under **.Vendor/MSFT/Policy/Config/DeliveryOptimization/**.

Several Delivery Optimization features are configurable:

| Group Policy setting | MDM setting | Supported from version |
| --- | --- | --- |
| [Download mode](#download-mode) | DODownloadMode | 1511 |
| [Group ID](#group-id)  | DOGroupID | 1511 |
| [Minimum RAM (inclusive) allowed to use Peer Caching](#minimum-ram-allowed-to-use-peer-caching) | DOMinRAMAllowedToPeer | 1703 |
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
| [Select the source of Group IDs](#select-the-source-of-group-ids) | DOGroupIdSource | 1803 |
| [Delay background download from http (in secs)](#delay-background-download-from-http-in-secs) | DODelayBackgroundDownloadFromHttp | 1803 |
| [Delay foreground download from http (in secs)](#delay-foreground-download-from-http-in-secs) | DODelayForegroundDownloadFromHttp | 1803 |

 


When configuring Delivery Optimization on Windows 10 devices, the first and most important thing to configure is the [Download mode](#download-mode), which dictates how Delivery Optimization downloads Windows updates.

While every other feature setting is optional, they offer enhanced control of the Delivery Optimization behavior.

[Group ID](#group-id), combined with Group [Download mode](#download-mode), enables administrators to create custom device groups that will share content between devices in the group.

Delivery Optimization uses locally cached updates. In cases where devices have ample local storage and you would like to cache more content, or if you have limited storage and would like to cache less, use the following settings to adjust the Delivery Optimization cache to suit your scenario:
- [Max Cache Size](#max-cache-size) and [Absolute Max Cache Size](#absolute-max-cache-size) control the amount of space the Delivery Optimization cache can use.
- [Max Cache Age](#max-cache-age) controls the retention period for each update in the cache.
- The system drive is the default location for the Delivery Optimization cache. [Modify Cache Drive](#modify-cache-drive) allows administrators to change that location.

>[!NOTE]
>It is possible to configure preferred cache devices. For more information, see [Set “preferred” cache devices for Delivery Optimization](#set-preferred-cache-devices).

All cached files have to be above a set minimum size. This size is automatically set by the Delivery Optimization cloud services, but when local storage is sufficient and the network isn't strained or congested, administrators might choose to change it to obtain increased performance. You can set the minimum size of files to cache by adjusting [Minimum Peer Caching Content File Size](#minimum-peer-caching-content-file-size).

Additional options available that control the impact Delivery Optimization has on your network include the following:
- [Maximum Download Bandwidth](#maximum-download-bandwidth) and [Percentage of Maximum Download Bandwidth](#percentage-of-maximum-download-bandwidth) control the download bandwidth used by Delivery Optimization.
- [Max Upload Bandwidth](#max-upload-bandwidth) controls the Delivery Optimization upload bandwidth usage.
- [Monthly Upload Data Cap](#monthly-upload-data-cap) controls the amount of data a client can upload to peers each month.
- [Minimum Background QoS](#minimum-background-qos) lets administrators guarantee a minimum download speed for Windows updates. This is achieved by adjusting the amount of data downloaded directly from Windows Update or WSUS servers, rather than other peers in the network.
- [Maximum Foreground Download Bandwidth](#maximum-foreground-download-bandwidth) specifies the maximum background download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth.
- [Maximum Background Download Bandwidth](#maximum-background-download-bandwidth) specifies the maximum background download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth.
- [Set Business Hours to Limit Background Download Bandwidth](#set-business-hours-to-limit-background-download-bandwidth) specifies the maximum background download bandwidth that Delivery Optimization uses during and outside business hours across all concurrent download activities as a percentage of available download bandwidth.
- [Set Business Hours to Limit Foreground Download Bandwidth](#set-business-hours-to-limit-foreground-download-bandwidth) specifies the maximum foreground download bandwidth that Delivery Optimization uses during and outside business hours across all concurrent download activities as a percentage of available download bandwidth.
- [Select a method to restrict Peer Selection](#select-a-method-to-restrict-peer-selection) restricts peer selection by the options you select.
- [Select the source of Group IDs](#select-the-source-of-group-ids) restricts peer selection to a specific source.
- [Delay background download from http (in secs)](#delay-background-download-from-http-in-secs) allows you to delay the use of an HTTP source in a background download that is allowed to use P2P.
- [Delay foreground download from http (in secs)](#delay-foreground-download-from-http-in-secs) allows you to delay the use of an HTTP source in a foreground (interactive) download that is allowed to use P2P.


Administrators can further customize scenarios where Delivery Optimization will be used with the following settings:
- [Minimum RAM (inclusive) allowed to use Peer Caching](#minimum-ram-allowed-to-use-peer-caching) sets the minimum RAM required for peer caching to be enabled.
- [Minimum disk size allowed to use Peer Caching](#minimum-disk-size-allowed-to-use-peer-caching) sets the minimum disk size required for peer caching to be enabled.
- [Enable Peer Caching while the device connects via VPN](#enable-peer-caching-while-the-device-connects-via-vpn) allows clients connected through VPN to use peer caching.
- [Allow uploads while the device is on battery while under set Battery level](#allow-uploads-while-the-device-is-on-battery-while-under-set-battery-level) controls the minimum battery level required for uploads to occur. You must enable this policy to allow upload while on battery.

### How Microsoft uses Delivery Optimization
At Microsoft, to help ensure that ongoing deployments weren’t affecting our network and taking away bandwidth for other services, Microsoft IT used a couple of different bandwidth management strategies. Delivery Optimization, peer-to-peer caching enabled through Group Policy, was piloted and then deployed to all managed devices using Group Policy. Based on recommendations from the Delivery Optimization team, we used the "group" configuration to limit sharing of content to only the devices that are members of the same Active Directory domain. The content is cached for 24 hours. More than 76 percent of content came from peer devices versus the Internet.

For more details, check out the [Adopting Windows as a Service at Microsoft](https://www.microsoft.com/itshowcase/Article/Content/851/Adopting-Windows-as-a-service-at-Microsoft) technical case study.

The following is a detailed description of every configurable feature setting. Use these details when configuring any of the settings.

### Download mode

Download mode dictates which download sources clients are allowed to use when downloading Windows updates in addition to Windows Update servers. The following table shows the available download mode options and what they do. Additional technical details for these policies are available in [Policy CSP - Delivery Optimization](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-deliveryoptimization).

| Download mode option | Functionality when set |
| --- | --- |
| HTTP Only (0) | This setting disables peer-to-peer caching but still allows Delivery Optimization to download content from Windows Update servers or WSUS servers. This mode uses additional metadata provided by the Delivery Optimization cloud services for a peerless reliable and efficient download experience. |
| LAN (1 – Default) | This default operating mode for Delivery Optimization enables peer sharing on the same network. The Delivery Optimization cloud service finds other clients that connect to the Internet using the same public IP as the target client. These clients then attempts to connect to other peers on the same network by using their private subnet IP.| 
| Group (2) | When group mode is set, the group is automatically selected based on the device’s Active Directory Domain Services (AD DS) site (Windows 10, version 1607) or the domain the device is authenticated to (Windows 10, version 1511). In group mode, peering occurs across internal subnets, between devices that belong to the same group, including devices in remote offices. You can use the GroupID option to create your own custom group independently of domains and AD DS sites. Group download mode is the recommended option for most organizations looking to achieve the best bandwidth optimization with Delivery Optimization. |
| Internet (3) | Enable Internet peer sources for Delivery Optimization. |
| Simple (99) | Simple mode disables the use of Delivery Optimization cloud services completely (for offline environments). Delivery Optimization switches to this mode automatically when the Delivery Optimization cloud services are unavailable, unreachable or when the content file size is less than 10 MB. In this mode, Delivery Optimization provides a reliable download experience, with no peer-to-peer caching. |
|Bypass (100) |	Bypass Delivery Optimization and use BITS, instead. For example, select this mode so that clients can use BranchCache. |

>[!NOTE]
>Group mode is a best-effort optimization and should not be relied on for an authentication of identity of devices participating in the group.

### Group ID

By default, peer sharing on clients using the group download mode is limited to the same domain in Windows 10, version 1511, and the same domain and AD DS site in Windows 10, version 1607. By using the Group ID setting, you can optionally create a custom group that contains devices that should participate in Delivery Optimization but do not fall within those domain or AD DS site boundaries, including devices in another domain. Using Group ID, you can further restrict the default group (for example, you could create a sub-group representing an office building), or extend the group beyond the domain, allowing devices in multiple domains in your organization to be peers. This setting requires the custom group to be specified as a GUID on each device that participates in the custom group. 

>[!NOTE]
>To generate a GUID using Powershell, use [```[guid]::NewGuid()```](https://blogs.technet.microsoft.com/heyscriptingguy/2013/07/25/powertip-create-a-new-guid-by-using-powershell/)
>
>This configuration is optional and not required for most implementations of Delivery Optimization.

<span id="minimum-ram-allowed-to-use-peer-caching"/>
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

### Select the source of Group IDs
Starting in Windows 10, version 1803, set this policy to restrict peer selection to a specific source. The options are:
- 0 = not set
- 1 = AD Site
- 2 = Authenticated domain SID
- 3 = DHCP Option ID (with this option, the client will query DHCP Option ID 234 and use the returned GUID value as the Group ID)
- 4 = DNS Suffix 

When set, the Group ID is assigned automatically from the selected source. If you set this policy, the GroupID policy will be ignored. The option set in this policy only applies to Group (2) download mode. If Group (2) isn't set as Download mode, this policy will be ignored. If you set the value to anything other than 0-4, the policy is ignored.  


### Delay background download from http (in secs)
Starting in Windows 10, version 1803, allows you to delay the use of an HTTP source in a background download that is allowed to use P2P.

### Delay foreground download from http (in secs)
Starting in Windows 10, version 1803, allows you to delay the use of an HTTP source in a foreground (interactive) download that is allowed to use P2P.

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

<span id="set-preferred-cache-devices"/>

## Set “preferred” cache devices for Delivery Optimization

In some cases, IT pros may have an interest in identifying specific devices that will be “preferred” as sources to other devices—for example, devices that have hard-wired connections, large drives that you can use as caches, or a high-end hardware profile. These preferred devices will act as a “master” for the update content related to that devices’s configuration (Delivery Optimization only caches content relative to the client downloading the content).

To specify which devices are preferred, you can set the **Max Cache Age** configuration with a value of **Unlimited** (0). As a result, these devices will be used more often as sources for other devices downloading the same files.

On devices that are not preferred, you can choose to set the following policy to prioritize data coming from local peers instead of the Internet. Set **DOMinBackgroundQoS** with a low value, for example, `64` (which is the equivalent of 64 KB/s).

## Troubleshooting steps if you don't see any bytes from peers

If you don’t see any bytes coming from peers the cause might be one of the following issues:

- Clients aren’t able to reach the Delivery Optimization cloud services.
- The cloud service doesn’t see other peers on the network. 
- Clients aren’t able to connect to peers that are offered back from the cloud service.
 
### Clients aren't able to reach the Delivery Optimization cloud services.

To fix this issue, try the following steps:

1. Start a download of an app that is larger than 50 MB from the Store (for example Candy Crush Saga).
2. Run `Get-DeliveryOptimizationStatus` from an elevated window and share the output (by setting the `DownloadMode` field to **1**).

### The cloud service doesn't see other peers on the network.

If you suspect this is the problem, try these steps:

1. Download the same app on another device on the same network.
2. Run `Get-DeliveryOptimizationPerfSnap` from an elevated window (the `NumberOfPeers` field should be non-zero).


### Clients aren't able to connect to peers offered by the cloud service

If you suspect this is the problem, run a Telnet test between two devices on the network to ensure they can connect using port 7680. To do this, follow these steps:

1. Install Telnet by running **dism /online /Enable-Feature /FeatureName:TelnetClient** from an elevated command prompt.
2. Run the test. For example, if you are on device with IP 192.168.8.12 and you are trying to test the connection to 192.168.9.17 run **telnet 192.168.9.17 7680** (the syntax is *telnet [destination IP] [port]*. You will either see a connection error or a blinking cursor like this /_. The blinking cursor means success.


## Windows PowerShell cmdlets for analyzing usage
Starting in Windows 10, version 1703, you can use two new PowerShell cmdlets to check the performance of Delivery Optimization:

`Get-DeliveryOptimizationStatus` returns a real-time snapshot of all current Delivery Optimization jobs.

| Key | Value |
| --- | --- |
| File ID | A GUID that identifies the file being processed |
| Priority | Priority of the download; values are **foreground** or **background** |
| FileSize | Size of the file |
| TotalBytesDownloaded | The number of bytes from any source downloaded so far |
| PercentPeerCaching |The percentage of bytes downloaded from peers versus over HTTP |
| BytesFromPeers | Total bytes downloaded from peer devices (sum of bytes downloaded from LAN, Group, and Internet Peers) |
| BytesfromHTTP | Total number of bytes received over HTTP |
| DownloadDuration | Total download time in seconds |
| Status | Current state of the operation. Possible values are: **Downloading** (download in progress); **Complete** (download completed, but is not uploading yet); **Caching** (download completed successfully and is ready to upload or uploading); **Paused** (download/upload paused by caller) |

Using the `-Verbose` option returns additional information:

| Key | Value |
| --- | --- |
| HTTPUrl| The URL where the download originates |
| BytesFromLANPeers | Total bytes from peer devices on the same LAN | 
| BytesFromGroupPeers | Total bytes from peer devices in the same Group | 
| BytesFrom IntPeers | Total bytes from internet peers |
| HTTPConnectionCount | Number of active connections over HTTP | 
| LANConnectionCount | Number of active connections over LAN |
| GroupConnectionCount | Number of active connections to other devices in the Group | 
| IntConnectionCount | Number of active connections to internet peers | 
| DownloadMode | Indicates the download mode (see the "Download Mode" section for details) |
 
`Get-DeliveryOptimizationPerfSnap` returns a list of key performance data:

- Number of files downloaded 
- Number of files uploaded 
- Total bytes downloaded 
- Total bytes uploaded 
- Average transfer size (download); that is, the number bytes downloaded divided by the number of files 
- Average transfer size (upload); the number of bytes uploaded divided by the number of files
- Peer efficiency; same as PercentPeerCaching

Using the `-Verbose` option returns additional information:

- Bytes from peers (per type) 
- Bytes from CDN  (the number of bytes received over HTTP)
- Average number of peer connections per download 


Starting in Windows 10, version 1803:

`Get-DeliveryOptimizationLog [-Path <etl file path, supports wildcards>] [-Flush]`

If `Path` is not specified, this cmdlet reads all logs from the dosvc log directory, which requires administrator permissions. If `Flush` is specified, the cmdlet stops dosvc before reading logs.
 
Log entries are written to the PowerShell pipeline as objects. To dump logs to a text file, run `Get-DeliveryOptimizationLog | Set-Content <output file>` or something similar.

`Get-DeliveryOptimizationPerfSnapThisMonth`

Returns data similar to that from `Get-DeliveryOptimizationPerfSnap` but limited to the current calendar month.

## Frequently asked questions

**Does Delivery Optimization work with WSUS?**: Yes. Devices will obtain the update payloads from the WSUS server, but must also have an internet connection as they communicate with the Delivery Optimization cloud service for coordination.

**Which ports does Delivery Optimization use?**: For peer-to-peer traffic, it uses 7680 or 3544 (Teredo). For client-service communication, it uses port 80/443.

**What are the requirements if I use a proxy?**: You must allow Byte Range requests. See [Proxy requirements for Windows Update](https://support.microsoft.com/help/3175743/proxy-requirements-for-windows-update) for details.

**What hostnames should I allow through my firewall to support Delivery Optimization?**: 

For communication between clients and the Delivery Optimization cloud service: **\*.do.dsp.mp.microsoft.com**.

For Delivery Optimization metadata: 

- *.dl.delivery.mp.microsoft.com
- *.emdl.ws.microsoft.com

For the payloads (optional):

- *.download.windowsupdate.com 
- *.windowsupdate.com






## Learn more

[Windows 10, Delivery Optimization, and WSUS](https://blogs.technet.microsoft.com/mniehaus/2016/08/16/windows-10-delivery-optimization-and-wsus-take-2/)


## Related topics

- [Update Windows 10 in the enterprise](index.md)
- [Overview of Windows as a service](waas-overview.md)
- [Prepare servicing strategy for Windows 10 updates](waas-servicing-strategy-windows-10-updates.md)
- [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md)
- [Assign devices to servicing channels for Windows 10 updates](waas-servicing-channels-windows-10-updates.md)
- [Optimize update delivery for Windows 10 updates](waas-optimize-windows-10-updates.md)
- [Configure BranchCache for Windows 10 updates](waas-branchcache.md)
- [Deploy updates for Windows 10 Mobile Enterprise and Windows 10 IoT Mobile](waas-mobile-updates.md) 
- [Deploy updates using Windows Update for Business](waas-manage-updates-wufb.md)
- [Configure Windows Update for Business](waas-configure-wufb.md)
- [Integrate Windows Update for Business with management solutions](waas-integrate-wufb.md)
- [Walkthrough: use Group Policy to configure Windows Update for Business](waas-wufb-group-policy.md)
- [Walkthrough: use Intune to configure Windows Update for Business](waas-wufb-intune.md)
- [Deploy Windows 10 updates using Windows Server Update Services](waas-manage-updates-wsus.md)
- [Deploy Windows 10 updates using System Center Configuration Manager](waas-manage-updates-configuration-manager.md)
- [Manage device restarts after updates](waas-restart.md)
