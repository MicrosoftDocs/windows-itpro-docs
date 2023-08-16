---
author: carmenf
ms.author: cmknox
manager: aaroncz
ms.prod: windows-client
ms.technology: itpro-deploy
ms.topic: reference
ms.date: 07/31/2023
ms.localizationpriority: medium
ms.reviewer: mstewart
Title: Monitor Delivery Optimization
Description: How to monitor Delivery Optimization


---

# Monitor Delivery Optimization

To monitor Delivery Optimization, you can use either the Windows Update for Business Delivery Optimization Report or Windows PowerShell cmdlets.

## Monitor with Windows Update for Business Delivery Optimization Report

Windows Update for Business Delivery Optimization Report provides you with information about your Delivery Optimization configuration, including the observed bandwidth savings across all devices that used peer-to-peer, Microsoft Connected Cache (MCC), HTTP source/CDN distribution over the past 28 days.

:::image type="content" source="../update/media/wufb-do-overview.png" alt-text="This screenshot shows the Windows Update for Business report, Delivery Optimization status in Update Compliance." lightbox= "../update/media/wufb-do-overview.png":::

For details, see [Windows Update for Business Delivery Optimization Report](/windows/deployment/update/wufb-reports-overview).

## Windows PowerShell cmdlets

**Starting in Windows 10, version 1703**, you can use new PowerShell cmdlets to check the performance of Delivery Optimization.

### Analyze usage

`Get-DeliveryOptimizationStatus` returns a real-time snapshot of all current Delivery Optimization jobs.

| Key | Value |
| --- | --- |
| File ID | A GUID that identifies the file being processed |
| FileSize | Size of the file |
| FileSizeInCache | Size of the file in the cache |
| TotalBytesDownloaded | The number of bytes from any source downloaded so far |
| PercentPeerCaching |The percentage of bytes downloaded from peers versus over HTTP |
| BytesFromPeers | Total bytes downloaded from peer devices (sum of bytes downloaded from LAN, Group, and Internet Peers) |
| BytesfromHTTP | Total number of bytes received over HTTP. This metric represents all HTTP sources, which includes BytesFromCacheServer |
| Status | Current state of the operation. Possible values are: **Downloading** (download in progress); **Complete** (download completed, but isn't uploading yet); **Caching** (download completed successfully and is ready to upload or uploading); **Paused** (download/upload paused by caller) |
| Priority | Priority of the download; values are **foreground** or **background** |
| BytesFromCacheServer | Total number of bytes received from cache server (MCC) |
| BytesFromLanPeers | Total number of bytes received from peers found on the LAN |
| BytesFromGroupPeers | Total number of bytes received from peers found in the group. (Note: Group mode is LAN + Group. If peers are found on the LAN, those bytes are registered in 'BytesFromLANPeers'.)  |
| BytesFromInternetPeers | Total number of bytes received from internet peers |
| BytesToLanPeers | Total number of bytes delivered from peers found on the LAN |
| BytesToGroupPeers | Total number of bytes delivered from peers found in the group |
| BytesToInternetPeers | Total number of bytes delivered from peers found on the LAN  |
| DownloadDuration | Total download time in seconds |
| HttpConnectionCount |  |
| LanConnectionCount |  |
| GroupConnectionCount |  |
| InternetConnectionCount |  |
| DownloadMode |  |
| SourceURL | Http source for the file |
| CacheHost | IP address for the cache server |
| NumPeers | Indicates the total number of peers returned from the service. |
| PredefinedCallerApplication | Indicates the last caller that initiated a request for the file. |
| ExpireOn | The target expiration date and time for the file. |
| IsPinned | A yes/no value indicating whether an item has been "pinned" in the cache (see `setDeliveryOptmizationStatus`). |

`Get-DeliveryOptimizationPerfSnap` returns a list of key performance data:

| Key | Value |
| --- | --- |
| FilesDownloaded | Number of files downloaded |
| FilesUploaded | Number of files uploaded |
| Files | |
| TotalBytesDownloaded | Total bytes downloaded |
| TotalBytesUploaded | Total bytes uploaded |
| AverageDownloadSize | Average transfer size (download); that is, the number bytes downloaded divided by the number of files |
| AverageUploadSize | Average transfer size (upload); the number of bytes uploaded divided by the number of files |
| DownloadMode | Delivery Optimization Download mode used to deliver file |
| CacheSizeBytes |  |
| TotalDiskBytes |  |
| AvailableDiskBytes |  |
| CpuUsagePct |  |
| MemUsageKB |  |
| NumberOfPeers |  |
| CacheHostConnections |  |
| CdnConnections |  |
| LanConnections |  |
| LinkLocalConnections |  |
| GroupConnections |  |
| InternetConnections |  |
| DownlinkBps |  |
| DownlinkUsageBps |  |
| UplinkBps |  |
| UplinkUsageBps |  |
| ForegroundDownloadRatePct |  |
| BackgroundDownloadRatePct |  |
| UploadRatePct |  |
| UplinkUsageBps |  |
| ForegroundDownloadRatePct |  |
| BackgroundDownloadRatePct |  |
| UploadRatePct |  |
| UploadCount |  |
| ForegroundDownloadCount |  |
| ForegroundDownloadsPending |  |
| BackgroundDownloadCount |  |
| BackgroundDownloadsPending |  |

Using the `-Verbose` option returns additional information:

- Bytes from peers (per type)
- Bytes from CDN (the number of bytes received over HTTP)
- Average number of peer connections per download

**Starting in Windows 10, version 2004**, `Get-DeliveryOptimizationStatus` has a new option `-PeerInfo`, which returns  a real-time list of potential peers per file, including which peers are successfully connected and the total bytes sent or received from each peer.

| Key | Value |
| --- | --- |
| IP | Peer device IP address |
| PeerType | The type of peer used (LAN/Group/Internet/LinkLocal), determined by the Delivery Optimization Service, except for the LinkLocal option, which uses the DNS-SD protocol. |
| ConnectionEstablished | True/False to indicate if peer is connected |
| BytesSent | Bytes sent to/from the peer on the current connection |
| BytesReceived | Bytes received to/from the peer on the current connection |
| UploadRateBytes | Average value of upload rates on the current connection, over the past 20 seconds |
| DownloadRateBytes | Average value of download rates on the current connection, over the past 20 seconds |

Starting in Windows 10, version 1803, `Get-DeliveryOptimizationPerfSnapThisMonth` returns data similar to data from `Get-DeliveryOptimizationPerfSnap` but limited to the current calendar month.

### Manage the Delivery Optimization cache

**Starting in Windows 10, version 1903:**

`set-DeliveryOptimizationStatus -ExpireOn [date time]` extends the expiration of all files in the cache. You can set the expiration immediately for all files that are in the "caching" state. For files in progress ("downloading"), the expiration is applied once the download is complete. You can set the expiration up to one year from the current date and time.

`set-DeliveryOptimizationStatus -ExpireOn [date time] -FileID [FileID]` extends expiration for a single specific file in the cache.

You can now "pin" files to keep them persistent in the cache, only with files that are downloaded in modes 1, 2, or 3.

`set-DeliveryOptimizationStatus -Pin [True] -File ID [FileID]` keeps a specific file in the cache such that it won't be deleted until the expiration date and time (which you set with `set-DeliveryOptimizationStatus -ExpireOn [date time] -FileID [FileID]`). The file is also excluded from the cache quota calculation.

`set-DeliveryOptimizationStatus -Pin [False] -File ID [FileID]` "unpins" a file, so that it will be deleted when the expiration date and time are reached. The file is included in the cache quota calculation.

`delete-DeliveryOptimizationCache` lets you clear files from the cache and remove all persisted data related to them. You can use these options with this cmdlet:

- `-FileID` specifies a particular file to delete.
- `-IncludePinnedFiles` deletes all files that are pinned.
- `-Force` deletes the cache with no prompts.

### Work with Delivery Optimization logs

**Starting in Windows 10, version 2004:**

- `Enable-DeliveryOptimizationVerboseLogs`
- `Disable-DeliveryOptimizationVerboseLogs`

- `Get-DeliveryOptimizationLogAnalysis [ETL Logfile path] [-ListConnections]`

With no options, this cmdlet returns these data:

- total number of files
- number of foreground files
- minimum file size for it to be cached
- number of eligible (larger than the minimum size for peering) files
- number of files that found peers
- number of peering files (the number of files that got at least 1 byte from peers)
- overall efficiency
- efficiency in the peered files

Using the `-ListConnections` option returns these details about peers:

- destination IP address
- peer type
- status code
- bytes sent
- bytes received
- file ID

**Starting in Windows 10, version 1803:**

`Get-DeliveryOptimizationLog [-Path <etl file path, supports wildcards>] [-Flush]`

If `Path` isn't specified, this cmdlet reads all logs from the DoSvc log directory, which requires administrator permissions. If `Flush` is specified, the cmdlet stops DoSvc before reading logs.

Log entries are written to the PowerShell pipeline as objects. To dump logs to a text file, run `Get-DeliveryOptimizationLog | Set-Content <output file>` or something similar.


**Starting in Windows 10, version 1803:**

`Get-DOConfig -Verbose`

This cmdlet lists local configuration and policies that are applied to Delivery Optimization. This includes policies that are set via Group Policies or MDM Policies. Each policy is listed with the current set value and the provider of that policy. For example:

DownloadMode:Simple
DownloadModeProvider:Mdm Provider

The provider is listed as "Default Provider" if it's using the Delivery Optimization platform configured default. 

The cmdlet returns the following data:

- BatteryPctToSeed: Corresponds to the [DOMinBatteryPercentageAllowedToUpload](waas-delivery-optimization-reference.md#allow-uploads-while-the-device-is-on-battery-while-under-set-battery-level) policy.
- WorkingDirectory: The local folder containing the Delivery Optimization cache.
- MinTotalDiskSize: Corresponds to the [DOMinDiskSizeAllowedToPeer](waas-delivery-optimization-reference.md#minimum-disk-size-allowed-to-use-peer-caching) policy.
- MinTotalRAM: Corresponds to the [DOMinRAMAllowedToPeer](waas-delivery-optimization-reference.md#minimum-ram-inclusive-allowed-to-use-peer-caching) policy.
- VpnPeerCachingAllowed: Corresponds to the [DOAllowVPNPeerCaching](waas-delivery-optimization-reference.md#enable-peer-caching-while-the-device-connects-via-vpn) policy.
- VpnKeywords: List of keywords used to identify a VPN adapter.
- SetHoursToLimitDownloadBackground: Corresponds to the [DOSetHoursToLimitBackgroundDownloadBandwidth](waas-delivery-optimization-reference.md#set-business-hours-to-limit-background-download-bandwidth) policy.
- SetHoursToLimitDownloadForeground: Corresponds to the [DOSetHoursToLimitForegroundDownloadBandwidth](waas-delivery-optimization-reference.md#set-business-hours-to-limit-foreground-download-bandwidth) policy.
- DownloadMode: Corresponds to the [DODownloadMode](waas-delivery-optimization-reference.md#download-mode) policy.
- DownBackLimitBps: Corresponds to the [DOMaxBackgroundDownloadBandwidth](waas-delivery-optimization-reference.md#maximum-background-download-bandwidth-in-kbs) policy.
- DownloadForegroundLimitBps: Corresponds to the [DOMaxForegroundDownloadBandwidth](waas-delivery-optimization-reference.md#maximum-foreground-download-bandwidth-in-kbs) policy.
- DownBackLimitPct: Corresponds to the [DOPercentageMaxBackgroundBandwidth](waas-delivery-optimization-reference.md#maximum-background-download-bandwidth) policy.
- DownloadForegroundLimitPct: Corresponds to the [DOPercentageMaxForegroundBandwidth](waas-delivery-optimization-reference.md#maximum-foreground-download-bandwidth) policy.
- MaxUploadRatePct: Corresponds to the [DOMaxUploadBandwidth](waas-delivery-optimization-reference.md#max-upload-bandwidth) policy (deprecated in Windows 10, version 2004).
- UploadLimitMonthlyGB: Corresponds to the [DOMonthlyUploadDataCap](waas-delivery-optimization-reference.md#monthly-upload-data-cap) policy.

