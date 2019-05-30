---
title: Set up Delivery Optimization
description: Delivery Optimization is a new peer-to-peer distribution method in Windows 10
keywords: oms, operations management suite, wdav, updates, downloads, log analytics
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: JaimeO
ms.localizationpriority: medium
ms.author: jaimeo
ms.collection: M365-modern-desktop
ms.topic: article
---

# Set up Delivery Optimization for Windows 10 updates

**Applies to**

- Windows 10

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq)

## Recommended Delivery Optimization settings

Delivery Optimization offers a great many settings to fine-tune its behavior (see [Delivery Optimization reference](waas-delivery-optimization-reference.md) for a comprehensive list), but for the most efficient performance, there are just a few key parameters that will have the greates impact if particular situations exist in your deployment:

- Does your topology include multiple breakouts to the internet (i.e., a "hybrid WAN") or are there only a few connections to the internet, so that all requests appear to come from a single external IP address (a "hub and spoke" topology)?
- If you use boundary groups in your topology, how many devices are present in a given group?
- What percentage of your devices are mobile?
- Do your devices have a lot of free space on their drives?
- Do you have a lab scenario with many devices on AC power?

>[!NOTE]
>These scenarios (and the recommended settings for each) are not mutually exclusive. It's possible that your deployment might involve more than one of these scenarios, in which case you can employ the related settings in any combination as needed. In all cases, however, "download mode" is the most important one to set.

Quick-reference table:

| Use case | Policy | Recommended value | Reason |
| --- | --- | --- | --- |
| Hub & spoke topology | Download mode | 1 or 2 | Automatic grouping of peers to match your topology |
| Sites with > 30 devices | Minimum file size to cache | 10 MB (or 1 MB) | Leverage peers-to-peer capability in more downloads |
| Large number of mobile devices | Allow uploads on battery power | 60% | Increase # of devices that can upload while limiting battery drain |
| Labs with AC-powered devices | Content Expiration | 7 (up to 30) days | Leverage devices that can upload more for a longer period |


### Hybrid WAN scenario

For this scenario, grouping devices by domain allows devices to be included in peer downloads and uploads across VLANs. **Set Download Mode to 2 - Group**. The default group is the authenticated domain or Active Directory site. If your domain-based group is too wide, or your Active Directory sites aren’t aligned with your site network topology, then you should consider additional options for dynamically creating groups, for example by using the GroupIDSrc parameter.




To do this in Group Policy go to **Configuration\Policies\Administrative Templates\Windows Components\Delivery Optimization** and set **Download mode** to **2**.

To do this with MDM, go to **.Vendor/MSFT/Policy/Config/DeliveryOptimization/** and set DODownloadMode to 1 or 2.

### Hub and spoke topology with boundary groups

The default download mode setting is **1**; this means all devices breaking out to the internet using the same public IP will be considered as a single peer group. To prevent peer-to-peer activity across groups, you should set the download mode to **2**. If you have already defined Active Directory sites per hub or branch office, then you don't need to do anything else. If you're not using Active Directory sites, you should set *RestrictPeerSelectionBy* policies to restrict the activity to the subnet or set a different source for Groups by using the GroupIDSrc parameter. See [Select a method to restrict peer selection](waas-delivery-optimization-reference.md#select-a-method-to-restrict-peer-selection).



To do this in Group Policy go to **Configuration\Policies\Administrative Templates\Windows Components\Delivery Optimization** and set **Download mode** to **2**.

To do this with MDM, go to **.Vendor/MSFT/Policy/Config/DeliveryOptimization/** and set **DODownloadMode** to **2**.


### Large number of mobile devices

If you have a mobile workforce with a great many mobile devices, set Delivery Optimization to allow uploads on battery power, while limiting the use to prevent battery drain. A setting for **DOMinBatteryPercentageAllowedToUpload** of 60% is a good starting point, though you might want to adjust it later.

To do this in Group Policy, go to **Configuration\Policies\Administrative Templates\Windows Components\Delivery Optimization** and set **Allow uploads while the device is on battery while under set Battery level** to 60. 

To do this with MDM, go to **.Vendor/MSFT/Policy/Config/DeliveryOptimization/** and set **DOMinBatteryPercentageAllowedToUpload** to 60. 

### Plentiful free space and large numbers of devices

Many devices now come with large internal drives. You can set Delivery Optimization to take better advantage of this space (especially if you have large numbers of devices) by changing the minimum file size to cache. If you have more than 30 devices in your local network or group, change it from the default 50 MB to 10 MB. If you have more than 100 devices (and are running Windows 10, version 1803 or later), set this value to 1 MB.

[//]: # (default of 50 aimed at consumer)

To do this in Group Policy, go to **Configuration\Policies\Administrative Templates\Windows Components\Delivery Optimization** and set **Minimum Peer Caching Content File Size** to 100 (if you have more than 30 devices) or 1 (if you have more than 100 devices).

To do this with MDM, go to **.Vendor/MSFT/Policy/Config/DeliveryOptimization/** and set **DOMinFileSizeToCache** to 100 (if you have more than 30 devices) or 1 (if you have more than 100 devices).

### Lab scenario

In a lab situation, you typically have a large number of devices that are plugged in and have a lot of free disk space. By increasing the content expiration interval, you can take advantage of these devices, using them as excellent upload sources in order to upload much more content over a longer period.

To do this in Group Policy, go to **Configuration\Policies\Administrative Templates\Windows Components\Delivery Optimization** and set **Max Cache Age** to **6048000** (7 days) or more (up to 30 days).

To do this with MDM, go to **.Vendor/MSFT/Policy/Config/DeliveryOptimization/** and set DOMaxCacheAge to 7 or more (up to 30 days).

[//]: # (material about "preferred" devices; remove MinQos/MaxCacheAge; table format?)


## Monitor Delivery Optimization
[//]: # (How to tell if it’s working? What values are reasonable; which are not? If not, which way to adjust and how? -- check PercentPeerCaching for files > minimum >= 50%)

### Windows PowerShell cmdlets

**Starting in Windows 10, version 1703**, you can use new PowerShell cmdlets to check the performance of Delivery Optimization.

#### Analyze usage

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
| NumPeers | Indicates the total number of peers returned from the service. |
| PredefinedCallerApplication | Indicates the last caller that initiated a request for the file. |
| ExpireOn | The target expiration date and time for the file. |
| Pinned | A yes/no value indicating whether an item has been "pinned" in the cache (see `setDeliveryOptmizationStatus`). |
 
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
- Bytes from CDN (the number of bytes received over HTTP)
- Average number of peer connections per download 

Starting in Window 10, version 1903, `get-DeliveryOptimizationPerfSnap` has a new option `-CacheSummary` which provides a summary of the cache status.

Starting in Windows 10, version 1803, `Get-DeliveryOptimizationPerfSnapThisMonth` returns data similar to that from `Get-DeliveryOptimizationPerfSnap` but limited to the current calendar month.

#### Manage the Delivery Optimization cache

**Starting in Windows 10, version 1903:**

`set-DeliveryOptimizationStatus -ExpireOn [date time]` extends the expiration of all files in the cache. You can set the expiration immediately for all files that are in the "caching" state. For files in progress ("downloading"), the expiration is applied once the download is complete. You can set the expiration up to one year from the current date and time.

`set-DeliveryOptimizationStatus -ExpireOn [date time] -FileID [FileID]` extends expiration for a single specific file in the cache.

You can now "pin" files to keep them persistent in the cache. You can only do this with files that are downloaded in modes 1, 2, or 3.

`set-DeliveryOptimizationStatus -Pin [True] -File ID [FileID]` keeps a specific file in the cache such that it won't be deleted until the expiration date and time (which you set with `set-DeliveryOptimizationStatus -ExpireOn [date time] -FileID [FileID]`). The file is also excluded from the cache quota calculation.

`set-DeliveryOptimizationStatus -Pin [False] -File ID [FileID]` "unpins" a file, so that it will be deleted when the expiration date and time are rreached. The file is included in the cache quota calculation.

`delete-DeliveryOptimizationCache` lets you clear files from the cache and remove all persisted data related to them. You can use these options with this cmdlet:

- `-FileID` specifies a particular file to delete.
- `-IncludePinnedFiles` deletes all files that are pinned.
- `-Force` deletes the cache with no prompts.


#### Work with Delivery Optimization logs

**Starting in Windows 10, version 1803:**

`Get-DeliveryOptimizationLog [-Path <etl file path, supports wildcards>] [-Flush]`

If `Path` is not specified, this cmdlet reads all logs from the dosvc log directory, which requires administrator permissions. If `Flush` is specified, the cmdlet stops dosvc before reading logs.
 
Log entries are written to the PowerShell pipeline as objects. To dump logs to a text file, run `Get-DeliveryOptimizationLog | Set-Content <output file>` or something similar.

[//]: # (section on what to look for in logs, list of peers, connection failures)



[//]: # (possibly move to Troubleshooting)

### Monitor with Update Compliance

The Update Compliance solution of Windows Analytics provides you with information about your Delivery Optimization configuration, including the observed bandwidth savings across all devices that used peer-to-peer distribution over the past 28 days.

![DO status](images/UC_workspace_DO_status.png)

For details, see [Delivery Optimization in Update Compliance](update-compliance-delivery-optimization.md).

