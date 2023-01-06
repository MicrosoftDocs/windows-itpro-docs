---
title: BITS Policy CSP
description: Learn more about the BITS Area in Policy CSP
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 01/04/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- BITS-Begin -->
# Policy CSP - BITS

<!-- BITS-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BITS-Editable-End -->

<!-- BandwidthThrottlingEndTime-Begin -->
## BandwidthThrottlingEndTime

<!-- BandwidthThrottlingEndTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- BandwidthThrottlingEndTime-Applicability-End -->

<!-- BandwidthThrottlingEndTime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/BITS/BandwidthThrottlingEndTime
```
<!-- BandwidthThrottlingEndTime-OmaUri-End -->

<!-- BandwidthThrottlingEndTime-Description-Begin -->
<!-- Description-Source-DDF -->
This policy specifies the bandwidth throttling end time that Background Intelligent Transfer Service (BITS) uses for background transfers. This policy setting does not affect foreground transfers. This policy is based on the 24-hour clock. Value type is integer. Default value is 17 (5 PM). Supported value range: 0 - 23. You can specify a limit to use during a specific time interval and at all other times. For example, limit the use of network bandwidth to 10 Kbps from 8:00 A. M. to 5:00 P. M. , and use all available unused bandwidth the rest of the day's hours. Using the three policies together (BandwidthThrottlingStartTime, BandwidthThrottlingEndTime, BandwidthThrottlingTransferRate), BITS will limit its bandwidth usage to the specified values. You can specify the limit in kilobits per second (Kbps). If you specify a value less than 2 kilobits, BITS will continue to use approximately 2 kilobits. To prevent BITS transfers from occurring, specify a limit of 0. If you disable or do not configure this policy setting, BITS uses all available unused bandwidth.

**Note**:  You should base the limit on the speed of the network link, not the computer's network interface card (NIC). This policy setting does not affect peer caching transfers between peer computers (it does affect transfers from the origin server); the Limit the maximum network bandwidth used for Peercaching policy setting should be used for that purpose. Consider using this setting to prevent BITS transfers from competing for network bandwidth when the client computer has a fast network card (10Mbs), but is connected to the network via a slow link (56Kbs).
<!-- BandwidthThrottlingEndTime-Description-End -->

<!-- BandwidthThrottlingEndTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BandwidthThrottlingEndTime-Editable-End -->

<!-- BandwidthThrottlingEndTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-23]` |
| Default Value  | 17 |
<!-- BandwidthThrottlingEndTime-DFProperties-End -->

<!-- BandwidthThrottlingEndTime-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | BITS_MaxBandwidth |
| Friendly Name | Limit the maximum network bandwidth for BITS background transfers |
| Element Name | to |
| Location | Computer Configuration |
| Path | Network > Background Intelligent Transfer Service (BITS) |
| Registry Key Name | Software\Policies\Microsoft\Windows\BITS |
| ADMX File Name | Bits.admx |
<!-- BandwidthThrottlingEndTime-GpMapping-End -->

<!-- BandwidthThrottlingEndTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BandwidthThrottlingEndTime-Examples-End -->

<!-- BandwidthThrottlingEndTime-End -->

<!-- BandwidthThrottlingStartTime-Begin -->
## BandwidthThrottlingStartTime

<!-- BandwidthThrottlingStartTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- BandwidthThrottlingStartTime-Applicability-End -->

<!-- BandwidthThrottlingStartTime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/BITS/BandwidthThrottlingStartTime
```
<!-- BandwidthThrottlingStartTime-OmaUri-End -->

<!-- BandwidthThrottlingStartTime-Description-Begin -->
<!-- Description-Source-DDF -->
This policy specifies the bandwidth throttling start time that Background Intelligent Transfer Service (BITS) uses for background transfers. This policy setting does not affect foreground transfers. This policy is based on the 24-hour clock. Value type is integer. Default value is 8 (8 am). Supported value range: 0 - 23. You can specify a limit to use during a specific time interval and at all other times. For example, limit the use of network bandwidth to 10 Kbps from 8:00 A. M. to 5:00 P. M. , and use all available unused bandwidth the rest of the day's hours. Using the three policies together (BandwidthThrottlingStartTime, BandwidthThrottlingEndTime, BandwidthThrottlingTransferRate), BITS will limit its bandwidth usage to the specified values. You can specify the limit in kilobits per second (Kbps). If you specify a value less than 2 kilobits, BITS will continue to use approximately 2 kilobits. To prevent BITS transfers from occurring, specify a limit of 0. If you disable or do not configure this policy setting, BITS uses all available unused bandwidth.

**Note**:  You should base the limit on the speed of the network link, not the computer's network interface card (NIC). This policy setting does not affect peer caching transfers between peer computers (it does affect transfers from the origin server); the Limit the maximum network bandwidth used for Peercaching policy setting should be used for that purpose. Consider using this setting to prevent BITS transfers from competing for network bandwidth when the client computer has a fast network card (10Mbs), but is connected to the network via a slow link (56Kbs).
<!-- BandwidthThrottlingStartTime-Description-End -->

<!-- BandwidthThrottlingStartTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BandwidthThrottlingStartTime-Editable-End -->

<!-- BandwidthThrottlingStartTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-23]` |
| Default Value  | 8 |
<!-- BandwidthThrottlingStartTime-DFProperties-End -->

<!-- BandwidthThrottlingStartTime-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | BITS_MaxBandwidth |
| Friendly Name | Limit the maximum network bandwidth for BITS background transfers |
| Element Name | From |
| Location | Computer Configuration |
| Path | Network > Background Intelligent Transfer Service (BITS) |
| Registry Key Name | Software\Policies\Microsoft\Windows\BITS |
| ADMX File Name | Bits.admx |
<!-- BandwidthThrottlingStartTime-GpMapping-End -->

<!-- BandwidthThrottlingStartTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BandwidthThrottlingStartTime-Examples-End -->

<!-- BandwidthThrottlingStartTime-End -->

<!-- BandwidthThrottlingTransferRate-Begin -->
## BandwidthThrottlingTransferRate

<!-- BandwidthThrottlingTransferRate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- BandwidthThrottlingTransferRate-Applicability-End -->

<!-- BandwidthThrottlingTransferRate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/BITS/BandwidthThrottlingTransferRate
```
<!-- BandwidthThrottlingTransferRate-OmaUri-End -->

<!-- BandwidthThrottlingTransferRate-Description-Begin -->
<!-- Description-Source-DDF -->
This policy specifies the bandwidth throttling transfer rate in kilobits per second (Kbps) that Background Intelligent Transfer Service (BITS) uses for background transfers. This policy setting does not affect foreground transfers. Value type is integer. Default value is 1000. Supported value range: 0 - 4294967200. You can specify a limit to use during a specific time interval and at all other times. For example, limit the use of network bandwidth to 10 Kbps from 8:00 A. M. to 5:00 P. M. , and use all available unused bandwidth the rest of the day's hours. Using the three policies together (BandwidthThrottlingStartTime, BandwidthThrottlingEndTime, BandwidthThrottlingTransferRate), BITS will limit its bandwidth usage to the specified values. You can specify the limit in kilobits per second (Kbps). If you specify a value less than 2 kilobits, BITS will continue to use approximately 2 kilobits. To prevent BITS transfers from occurring, specify a limit of 0. If you disable or do not configure this policy setting, BITS uses all available unused bandwidth.

**Note**:  You should base the limit on the speed of the network link, not the computer's network interface card (NIC). This policy setting does not affect peer caching transfers between peer computers (it does affect transfers from the origin server); the Limit the maximum network bandwidth used for Peercaching policy setting should be used for that purpose. Consider using this setting to prevent BITS transfers from competing for network bandwidth when the client computer has a fast network card (10Mbs), but is connected to the network via a slow link (56Kbs).
<!-- BandwidthThrottlingTransferRate-Description-End -->

<!-- BandwidthThrottlingTransferRate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BandwidthThrottlingTransferRate-Editable-End -->

<!-- BandwidthThrottlingTransferRate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-4294967200]` |
| Default Value  | 1000 |
<!-- BandwidthThrottlingTransferRate-DFProperties-End -->

<!-- BandwidthThrottlingTransferRate-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | BITS_MaxBandwidth |
| Friendly Name | Limit the maximum network bandwidth for BITS background transfers |
| Element Name | Limit background transfer rate (Kbps) to |
| Location | Computer Configuration |
| Path | Network > Background Intelligent Transfer Service (BITS) |
| Registry Key Name | Software\Policies\Microsoft\Windows\BITS |
| ADMX File Name | Bits.admx |
<!-- BandwidthThrottlingTransferRate-GpMapping-End -->

<!-- BandwidthThrottlingTransferRate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BandwidthThrottlingTransferRate-Examples-End -->

<!-- BandwidthThrottlingTransferRate-End -->

<!-- CostedNetworkBehaviorBackgroundPriority-Begin -->
## CostedNetworkBehaviorBackgroundPriority

<!-- CostedNetworkBehaviorBackgroundPriority-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- CostedNetworkBehaviorBackgroundPriority-Applicability-End -->

<!-- CostedNetworkBehaviorBackgroundPriority-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/BITS/CostedNetworkBehaviorBackgroundPriority
```
<!-- CostedNetworkBehaviorBackgroundPriority-OmaUri-End -->

<!-- CostedNetworkBehaviorBackgroundPriority-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting defines the default behavior that the Background Intelligent Transfer Service (BITS) uses for background transfers when the system is connected to a costed network (3G, etc. ). Download behavior policies further limit the network usage of background transfers. If you enable this policy setting, you can define a default download policy for each BITS job priority. This setting does not override a download policy explicitly configured by the application that created the BITS job, but does apply to jobs that are created by specifying only a priority. For example, you can specify that background jobs are by default to transfer only when on uncosted network connections, but foreground jobs should proceed only when not roaming. The values that can be assigned are:1 - Always transfer2 - Transfer unless roaming3 - Transfer unless surcharge applies (when not roaming or overcap)4 - Transfer unless nearing limit (when not roaming or nearing cap)5 - Transfer only if unconstrained
<!-- CostedNetworkBehaviorBackgroundPriority-Description-End -->

<!-- CostedNetworkBehaviorBackgroundPriority-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CostedNetworkBehaviorBackgroundPriority-Editable-End -->

<!-- CostedNetworkBehaviorBackgroundPriority-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- CostedNetworkBehaviorBackgroundPriority-DFProperties-End -->

<!-- CostedNetworkBehaviorBackgroundPriority-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Always transfer |
| 2 | Transfer unless roaming |
| 3 | Transfer unless surcharge applies (when not roaming or over cap) |
| 4 | Transfer unless nearing limit (when not roaming or nearing cap) |
| 5 | Transfer only if unconstrained |
<!-- CostedNetworkBehaviorBackgroundPriority-AllowedValues-End -->

<!-- CostedNetworkBehaviorBackgroundPriority-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | BITS_SetTransferPolicyOnCostedNetwork |
| Friendly Name | Set default download behavior for BITS jobs on costed networks |
| Element Name | Normal |
| Location | Computer Configuration |
| Path | Network > Background Intelligent Transfer Service (BITS) |
| Registry Key Name | Software\Policies\Microsoft\Windows\BITS\TransferPolicy |
| ADMX File Name | Bits.admx |
<!-- CostedNetworkBehaviorBackgroundPriority-GpMapping-End -->

<!-- CostedNetworkBehaviorBackgroundPriority-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CostedNetworkBehaviorBackgroundPriority-Examples-End -->

<!-- CostedNetworkBehaviorBackgroundPriority-End -->

<!-- CostedNetworkBehaviorForegroundPriority-Begin -->
## CostedNetworkBehaviorForegroundPriority

<!-- CostedNetworkBehaviorForegroundPriority-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- CostedNetworkBehaviorForegroundPriority-Applicability-End -->

<!-- CostedNetworkBehaviorForegroundPriority-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/BITS/CostedNetworkBehaviorForegroundPriority
```
<!-- CostedNetworkBehaviorForegroundPriority-OmaUri-End -->

<!-- CostedNetworkBehaviorForegroundPriority-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting defines the default behavior that the foreground Intelligent Transfer Service (BITS) uses for foreground transfers when the system is connected to a costed network (3G, etc. ). Download behavior policies further limit the network usage of foreground transfers. If you enable this policy setting, you can define a default download policy for each BITS job priority. This setting does not override a download policy explicitly configured by the application that created the BITS job, but does apply to jobs that are created by specifying only a priority. For example, you can specify that foreground jobs are by default to transfer only when on uncosted network connections, but foreground jobs should proceed only when not roaming. The values that can be assigned are:1 - Always transfer2 - Transfer unless roaming3 - Transfer unless surcharge applies (when not roaming or overcap)4 - Transfer unless nearing limit (when not roaming or nearing cap)5 - Transfer only if unconstrained
<!-- CostedNetworkBehaviorForegroundPriority-Description-End -->

<!-- CostedNetworkBehaviorForegroundPriority-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CostedNetworkBehaviorForegroundPriority-Editable-End -->

<!-- CostedNetworkBehaviorForegroundPriority-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- CostedNetworkBehaviorForegroundPriority-DFProperties-End -->

<!-- CostedNetworkBehaviorForegroundPriority-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Always transfer |
| 2 | Transfer unless roaming |
| 3 | Transfer unless surcharge applies (when not roaming or over cap) |
| 4 | Transfer unless nearing limit (when not roaming or nearing cap) |
| 5 | Transfer only if unconstrained |
<!-- CostedNetworkBehaviorForegroundPriority-AllowedValues-End -->

<!-- CostedNetworkBehaviorForegroundPriority-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | BITS_SetTransferPolicyOnCostedNetwork |
| Friendly Name | Set default download behavior for BITS jobs on costed networks |
| Element Name | Foreground |
| Location | Computer Configuration |
| Path | Network > Background Intelligent Transfer Service (BITS) |
| Registry Key Name | Software\Policies\Microsoft\Windows\BITS\TransferPolicy |
| ADMX File Name | Bits.admx |
<!-- CostedNetworkBehaviorForegroundPriority-GpMapping-End -->

<!-- CostedNetworkBehaviorForegroundPriority-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CostedNetworkBehaviorForegroundPriority-Examples-End -->

<!-- CostedNetworkBehaviorForegroundPriority-End -->

<!-- JobInactivityTimeout-Begin -->
## JobInactivityTimeout

<!-- JobInactivityTimeout-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- JobInactivityTimeout-Applicability-End -->

<!-- JobInactivityTimeout-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/BITS/JobInactivityTimeout
```
<!-- JobInactivityTimeout-OmaUri-End -->

<!-- JobInactivityTimeout-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting specifies the number of days a pending BITS job can remain inactive before the job is considered abandoned. By default BITS will wait 90 days before considering an inactive job abandoned. After a job is determined to be abandoned, the job is deleted from BITS and any downloaded files for the job are deleted from the disk.

**Note**: Any property changes to the job or any successful download action will reset this timeout. Value type is integer. Default is 90 days. Supported values range: 0 - 999. Consider increasing the timeout value if computers tend to stay offline for a long period of time and still have pending jobs. Consider decreasing this value if you are concerned about orphaned jobs occupying disk space. If you disable or do not configure this policy setting, the default value of 90 (days) will be used for the inactive job timeout.
<!-- JobInactivityTimeout-Description-End -->

<!-- JobInactivityTimeout-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- JobInactivityTimeout-Editable-End -->

<!-- JobInactivityTimeout-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[1-999]` |
| Default Value  | 90 |
<!-- JobInactivityTimeout-DFProperties-End -->

<!-- JobInactivityTimeout-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | BITS_Job_Timeout |
| Friendly Name | Timeout for inactive BITS jobs |
| Element Name | Inactive Job Timeout in Days |
| Location | Computer Configuration |
| Path | Network > Background Intelligent Transfer Service (BITS) |
| Registry Key Name | Software\Policies\Microsoft\Windows\BITS |
| ADMX File Name | Bits.admx |
<!-- JobInactivityTimeout-GpMapping-End -->

<!-- JobInactivityTimeout-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- JobInactivityTimeout-Examples-End -->

<!-- JobInactivityTimeout-End -->

<!-- BITS-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- BITS-CspMoreInfo-End -->

<!-- BITS-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
