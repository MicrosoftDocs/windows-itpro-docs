---
title: Delivery Optimization data in Windows Update for Business reports
manager: aaroncz
description: Provides information about Delivery Optimization data in Windows Update for Business reports 
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.topic: article
ms.date: 03/27/2023
ms.technology: itpro-updates
---

# Delivery Optimization data in Windows Update for Business reports
<!--7715481-->
***(Applies to: Windows 11 & Windows 10)***

[Delivery Optimization](../do/waas-delivery-optimization.md) (DO) is a Windows feature that can be used to reduce bandwidth consumption by sharing the work of downloading updates among multiple devices in your environment. You can use DO in conjunction with many other deployment methods, but it's a cloud-managed solution, and access to the DO cloud services is a requirement.

Windows Update for Business reports provides Delivery Optimization information in the following places:
- The Windows Update for Business reports [workbook](wufb-reports-workbook.md)
- [UCDOAggregatedStatus](wufb-reports-schema-ucdoaggregatedstatus.md)
- [UCDOStatus](wufb-reports-schema-ucdostatus.md)

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
**Bandwidth savings**: Out of the total consumed bandwidth, the percentage of bandwidth that was downloaded from either LAN or Group peers, and from Microsoft Connected Cache (MCC)
   - If bandwidth savings are <= 60% a *Warning* icon is displayed
   - When bandwidth savings is <10% an *Error* icon is displayed.
- **Configurations**: Based on the DownloadMode configuration set via MDM, Group Policy, or end-user via the user interface.

<!--Check this formula w PG, might be VolCDN=-->
Volume from the CDN is calculated with the following formula:
BytesFromCDN = BytesFromCDN - BytesFromEnterpriseCache
