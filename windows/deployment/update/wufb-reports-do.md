---
title: Delivery Optimization data in Windows Update for Business reports
manager: aaroncz
description: Provides information about Delivery Optimization data in Windows Update for Business reports 
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.topic: article
ms.date: 04/12/2023
ms.technology: itpro-updates
---

# Delivery Optimization data in Windows Update for Business reports
<!--7715481-->
***(Applies to: Windows 11 & Windows 10)***

[Delivery Optimization](../do/waas-delivery-optimization.md) (DO) is a Windows feature that can be used to reduce bandwidth consumption by sharing the work of downloading updates among multiple devices in your environment. You can use DO with many other deployment methods, but it's a cloud-managed solution, and access to the DO cloud services is a requirement. 

Windows Update for Business reports provides Delivery Optimization information in the following places:
- The Windows Update for Business reports [workbook](wufb-reports-workbook.md)
- [UCDOAggregatedStatus](wufb-reports-schema-ucdoaggregatedstatus.md)
- [UCDOStatus](wufb-reports-schema-ucdostatus.md)

Windows Update for Business reports doesn't include Delivery Optimization data for Windows Insider devices. 

## Delivery Optimization terms

Windows Update for Business reports uses the following Delivery Optimization terms:

- **Peer**: A device in the solution
- **Peering 'ON'** - Devices where DO peer-to-peer is enabled in one of the following modes:
   - LAN (1)
   - Group (2)
   - Internet (3)
- **Peering 'OFF'**: Devices where DO peer-to-peer is disabled, set to one of the following modes:
   - HTTP Only (0)
   - Simple Mode (99)
   - Bypass (100), deprecated in Windows 11
- **Bandwidth savings**: The percentage of bandwidth that was downloaded from alternate sources (Peers or Microsoft Connected Cache (MCC) out of the total amount of data downloaded.
   - If bandwidth savings are <= 60%, a *Warning* icon is displayed
   - When bandwidth savings are <10%, an *Error* icon is displayed.
- **Configurations**: Based on the DownloadMode configuration set via MDM, Group Policy, or end-user via the user interface.
- **P2P Device Count**: The device count is determined by the number of devices configured to use peering.
- **Microsoft Connected Cache (MCC)**: Microsoft Connected Cache is a software-only caching solution that delivers Microsoft content. For more information, see [Microsoft Connected Cache overview](../do/waas-microsoft-connected-cache.md).
- **MCC Device Count**: The device count is determined by the number of devices that have received bytes from the cache server, for supported content types.
- **Total # of Devices**: The total number of devices with activity in last 28 days.
- **LAN Bytes**: Bytes delivered from LAN peers.
- **Group Bytes**: Bytes from Group peers. If a device is using Group DownloadMode, Delivery Optimization will first look for peers on the LAN and then in the Group. Therefore, if bytes are delivered from LAN peers, they'll be calculated in 'LAN Bytes'.
- **CDN Bytes**: Bytes delivered from Content Delivery Network (CDN).
- **City**: City is determined based on the location of the device where the maximum amount of data is downloaded.
- **Country**: Country is determined based on the location of the device where the maximum amount of data is downloaded.
- **ISP**: ISP is determined based on the ISP delivering the maximum bytes to the device.

## Calculations for Delivery Optimization

There are several calculated values that appear on the Delivery Optimization report. Listed below each calculation is the table that's used for it:

**Efficiency (%) Calculations**:
 
- Bandwidth Savings (BW SAV%) = 100 * (BytesFromPeers + BytesFromGroupPeers + BytesFromCache) /
(BytesFromPeers + BytesFromGroupPeers+BytesFromCDN + BytesFromCache)
  - [UCDOAggregatedStatus](wufb-reports-schema-ucdostatus.md) table
- % P2P Efficiency = 100 * (BytesFromPeers + BytesFromGroupPeers) / (BytesFromPeers + BytesFromGroupPeers+BytesFromCDN+BytesFromCache)
  - [UCDOStatus](wufb-reports-schema-ucdostatus.md) table
- % MCC Efficiency = 100 * BytesFromCache / (BytesFromPeers + BytesFromGroupPeers+BytesFromCDN+BytesFromCache) 
  - [UCDOStatus](wufb-reports-schema-ucdostatus.md) table

**Bytes Calculations**:

- TotalBytes = BytesFromCDN + BytesFromEnterpriseCache + BytesFromPeers + BytesFromGroupPeers
  - [UCDOAggregatedStatus](wufb-reports-schema-ucdostatus.md) table
- BytesFromCDN = BytesFromCDN
  - [UCDOAggregatedStatus](wufb-reports-schema-ucdostatus.md) table
- BytesFromPeers = BytesFromLAN
  - [UCDOAggregatedStatus](wufb-reports-schema-ucdoaggregatedstatus.md) table
- BytesFromGroupPeers = BytesFromGroupPeers
  - [UCDOAggregatedStatus](wufb-reports-schema-ucdoaggregatedstatus.md) table
- BytesFromCache = BytesFromCache
  - [UCDOAggregatedStatus](wufb-reports-schema-ucdoaggregatedstatus.md) table

**Volume Calculations**:

- Volume by P2P = BytesFromPeers + BytesFromGroupPeers
  - [UCDOStatus](wufb-reports-schema-ucdostatus.md) table
- Volume by MCC = BytesFromCache
  - [UCDOStatus](wufb-reports-schema-ucdostatus.md) table
- Volume by CDN = BytesFrom CDN
  - [UCDOStatus](wufb-reports-schema-ucdostatus.md) table

## Mapping GroupID

In the **Efficiency By Group** subsection, the **GroupID** is displayed as an encoded SHA256 hash. You can create a mapping of decoded to encoded GroupIDs using the following PowerShell example:

```powershell
$text = "<myEncodedGroupID>" ;

$hashObj = [System.Security.Cryptography.HashAlgorithm]::Create('sha256') ; $dig = $hashObj.ComputeHash([System.Text.Encoding]::Unicode.GetBytes($text)) ; $digB64 = [System.Convert]::ToBase64String($dig) ; Write-Host "$text ==> $digB64"
```

In addition, you can see both the encoded and decoded GroupIDs in the Delivery Optimization logs.

```powershell
Get-DeliveryOptimizationLog -Flush | Set-Content C:\dosvc.log
```

The below two lines are together in verbose logs:

```text
2023-02-15T12:33:11.3811337Z 1514  1F4          {CGlobalConfigManager::GetGroupId} Using groupID = **<myEncodedGroupId>**
2023-02-15T12:33:11.3811432Z 1514  1F4          {CGlobalConfigManager::GetGroupId} Hashed groupID = **<myDecodedGroupId>**
```

## Sample queries

You can use the data in [UCDOAggregatedStatus](wufb-reports-schema-ucdoaggregatedstatus.md)
and [UCDOStatus](wufb-reports-schema-ucdostatus.md) to create your own queries. Create your custom queries using [Kusto Query Language (KQL)](/azure/data-explorer/kusto/query/), but note that Windows Update for Business reports uses Azure Monitor, so some operators aren't supported. The KQL documentation specifies which operators aren't supported by Azure Monitor or if they have different functionality. For more information about KQL in Azure Monitor, see [Log queries in Azure Monitor](/azure/azure-monitor/logs/log-query-overview). The following queries are examples of how you can use the data:

### Example UCDOAggregatedStatus table query

The following query is used to display the total bandwidth savings % value:

```kusto
UCDOAggregatedStatus| where TimeGenerated == _SnapshotTime
| extend LocalSourceBytes = BytesFromCache + BytesFromGroupPeers + BytesFromPeers
| summarize LocalSources_BWSAV = round((sum(0.0 + LocalSourceBytes)/ sum(LocalSourceBytes+BytesFromCDN)) * 100.0 ,2)
| extend Title = "BW SAV%" , SubTitle = "Local Sources"
```

### Example UCDOStatus table query

The following query is used to display the Top 10 GroupIDs:

```kusto
UCDOStatus  | where TimeGenerated == _SnapshotTime
| summarize sum(BytesFromCDN) ,  sum(BytesFromGroupPeers) , sum(BytesFromPeers) , sum(BytesFromCache) ,
DeviceCount = count_distinct(GlobalDeviceId) by GroupID | top 10 by DeviceCount desc 
| extend TotalBytes = (sum_BytesFromPeers + sum_BytesFromGroupPeers+sum_BytesFromCDN+sum_BytesFromCache)
| extend P2PPercentage = ((0.0 + sum_BytesFromPeers + sum_BytesFromGroupPeers)/TotalBytes ) * 100.0  
| extend  MCCPercentage = ((0.0 + sum_BytesFromCache)/ TotalBytes) * 100.0  , 
 VolumeBytesFromPeers = sum_BytesFromPeers + sum_BytesFromGroupPeers
| extend VolumeBytesFromMCC = sum_BytesFromCache , VolumeByCDN = sum_BytesFromCDN
| project  GroupID , P2PPercentage , MCCPercentage ,  VolumeBytesFromPeers , VolumeBytesFromMCC ,VolumeByCDN , DeviceCount
```

## Frequency Asked Questions

- **What time period does the Delivery Optimization data include?**
Data is generated/aggregated for the last 28 days for active devices.

- **Data is showing as 'Unknown', what does that mean?**
You may see data in the report listed as 'Unknown'. This status indicates that the Delivery Optimization DownloadMode setting is either invalid or empty.

- **How are the 'Top 10' groups identified?**
The top groups are represented by the number of devices in a particular group, for any of the four group types (GroupID, City, Country, and ISP).

- **The GroupIDs don't look familiar, why are they different?**
The GroupID values are encoded for data protection telemetry requirements. You can find more information in the 'Mapping GroupIDs' section above.

- **How can I see data for device in the office vs. out of the office?**
Today, we don't have a distinction for data that was downloaded by location. 

- **What does the data in UCDOStatus table represent?**
A row in UCDOStatus represents data downloaded by a combination of a single device ID (AzureADDeviceId) by content type (ContentType). 

- **What does the data in UCDOAggregatedStatus table represent?**
A row in UCDOAggregatedStatus represents data summarized at the tenant level (AzureADTenantID) for each content type (ContentType).
