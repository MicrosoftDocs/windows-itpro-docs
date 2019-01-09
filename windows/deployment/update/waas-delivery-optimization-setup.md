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
ms.date: 12/05/2018
---

# Set up Delivery Optimization for Windows 10 updates

**Applies to**

- Windows 10

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq)

## Plan to use Delivery Optimization

For the most efficient performance, you should set certain Delivery Optimization parameters differently if particular situations exist in your deployment, such as:

- Does your topology include multiple breakouts to the internet (i.e., a "hybrid WAN") or are there only a few devices that connect to the internet with many more that do not (a "hub and spoke" topology)?
- If you use boundary groups in your topology how many devices are present in a given group?
- What percentage of your devices are mobile?
- Do your devices have a lot of free space on their drives?


### Hybrid WAN scenario

### Hub and spoke topology

For a "hub and spoke" setup, set Download Mode to 1 or 2. This will automatically group peers.

To do this, ...

### Large number of mobile devices

If you have a mobile workforce with a great many mobile devices, set Delivery Optimization to allow uploads on battery power, while limiting the use to prevent battery drain. A setting for DOMinBatteryPercentageAllowedToUpload of 60% is a good starting point.

To do this, ...

### Plentiful free space and large numbers of devices

Many devices these days come with large internal drives. You can set Delivery Optimization to leverage this situation (especially if you have large numbers of devices) by changing the minimum file size to cache. If you have more than 30 devices, change it from the default 50 MB to 10 MB. If you have more than 100 devices (and are running Windows 10, version 1803 or later), set this value to 1 MB.

To do this, ...

## Implement Delivery Optimization
[procedural-type material; go here, click this]

### Peer[?] topology (steps for setting up Group download mode)


### Hub and spoke topology (steps for setting up peer selection)


## Monitor Delivery Optimization
How to tell if it’s working? What values are reasonable; which are not? If not, which way to adjust and how?

### Windows PowerShell cmdlets for analyzing usage
**Starting in Windows 10, version 1703**, you can use two new PowerShell cmdlets to check the performance of Delivery Optimization:

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


**Starting in Windows 10, version 1803:**

`Get-DeliveryOptimizationLog [-Path <etl file path, supports wildcards>] [-Flush]`

If `Path` is not specified, this cmdlet reads all logs from the dosvc log directory, which requires administrator permissions. If `Flush` is specified, the cmdlet stops dosvc before reading logs.
 
Log entries are written to the PowerShell pipeline as objects. To dump logs to a text file, run `Get-DeliveryOptimizationLog | Set-Content <output file>` or something similar.

`Get-DeliveryOptimizationPerfSnapThisMonth`

Returns data similar to that from `Get-DeliveryOptimizationPerfSnap` but limited to the current calendar month.

### Monitor with Update Compliance

The Update Compliance solution of Windows Analytics provides you with information about your Delivery Optimization configuration, including the observed bandwidth savings across all devices that used peer-to-peer distribution over the past 28 days.

![DO status](images/UC_workspace_DO_status.png)

For details, see [Delivery Optimization in Update Compliance](update-compliance-delivery-optimization.md).

