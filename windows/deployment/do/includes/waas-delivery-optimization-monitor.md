---
author: mestew
ms.author: mstewart
manager: dougeby
ms.prod: w10
ms.collection: M365-modern-desktop
ms.mktglfcycl: deploy
audience: itpro
ms.topic: include
ms.date: 04/06/2022
ms.localizationpriority: medium
---
<!--This file is shared by do/waas-delivery-optimization-setup.md and the update/update-compliance-get-started.md articles -->

## Monitor Delivery Optimization

[//]: # (How to tell if it's working? What values are reasonable; which are not? If not, which way to adjust and how? -- check PercentPeerCaching for files > minimum >= 50%)

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
| BytesFromPeers | Total bytes downloaded from peer devices (sum of bytes downloaded from LAN, Group, and Internet Peers) |
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

**Starting in Windows 10, version 2004**, `Get-DeliveryOptimizationStatus` has a new option `-PeerInfo` which returns a real-time list of the connected peers.

Starting in Windows 10, version 1803, `Get-DeliveryOptimizationPerfSnapThisMonth` returns data similar to that from `Get-DeliveryOptimizationPerfSnap` but limited to the current calendar month.

#### Manage the Delivery Optimization cache

**Starting in Windows 10, version 1903:**

`set-DeliveryOptimizationStatus -ExpireOn [date time]` extends the expiration of all files in the cache. You can set the expiration immediately for all files that are in the "caching" state. For files in progress ("downloading"), the expiration is applied once the download is complete. You can set the expiration up to one year from the current date and time.

`set-DeliveryOptimizationStatus -ExpireOn [date time] -FileID [FileID]` extends expiration for a single specific file in the cache.

You can now "pin" files to keep them persistent in the cache. You can only do this with files that are downloaded in modes 1, 2, or 3.

`set-DeliveryOptimizationStatus -Pin [True] -File ID [FileID]` keeps a specific file in the cache such that it won't be deleted until the expiration date and time (which you set with `set-DeliveryOptimizationStatus -ExpireOn [date time] -FileID [FileID]`). The file is also excluded from the cache quota calculation.

`set-DeliveryOptimizationStatus -Pin [False] -File ID [FileID]` "unpins" a file, so that it will be deleted when the expiration date and time are reached. The file is included in the cache quota calculation.

`delete-DeliveryOptimizationCache` lets you clear files from the cache and remove all persisted data related to them. You can use these options with this cmdlet:

- `-FileID` specifies a particular file to delete.
- `-IncludePinnedFiles` deletes all files that are pinned.
- `-Force` deletes the cache with no prompts.

#### Work with Delivery Optimization logs

**Starting in Windows 10, version 2004:**

- `Enable-DeliveryOptimizationVerboseLogs`
- `Disable-DeliveryOptimizationVerboseLogs`

- `Get-DeliveryOptimizationLogAnalysis [ETL Logfile path] [-ListConnections]`

With no options, this cmdlet returns these data:

- total number of files
- number of foreground files
- minimum file size for it to be cached
- number of eligible files
- number of files with peers
- number of peering files [how different from the above?]
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

If `Path` is not specified, this cmdlet reads all logs from the DoSvc log directory, which requires administrator permissions. If `Flush` is specified, the cmdlet stops DoSvc before reading logs.

Log entries are written to the PowerShell pipeline as objects. To dump logs to a text file, run `Get-DeliveryOptimizationLog | Set-Content <output file>` or something similar.

[//]: # (section on what to look for in logs, list of peers, connection failures)

[//]: # (possibly move to Troubleshooting)
