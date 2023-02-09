---
title: Defender Policy CSP
description: Learn more about the Defender Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 01/09/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- Defender-Begin -->
# Policy CSP - Defender

<!-- Defender-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Defender-Editable-End -->

<!-- AllowArchiveScanning-Begin -->
## AllowArchiveScanning

<!-- AllowArchiveScanning-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowArchiveScanning-Applicability-End -->

<!-- AllowArchiveScanning-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/AllowArchiveScanning
```
<!-- AllowArchiveScanning-OmaUri-End -->

<!-- AllowArchiveScanning-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure scans for malicious software and unwanted software in archive files such as . ZIP or . CAB files.

- If you enable or do not configure this setting, archive files will be scanned.

- If you disable this setting, archive files will not be scanned. However, archives are always scanned during directed scans.
<!-- AllowArchiveScanning-Description-End -->

<!-- AllowArchiveScanning-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowArchiveScanning-Editable-End -->

<!-- AllowArchiveScanning-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowArchiveScanning-DFProperties-End -->

<!-- AllowArchiveScanning-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. Turns off scanning on archived files. |
| 1 (Default) | Allowed. Scans the archive files. |
<!-- AllowArchiveScanning-AllowedValues-End -->

<!-- AllowArchiveScanning-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_DisableArchiveScanning |
| Friendly Name | Scan archive files |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | DisableArchiveScanning |
| ADMX File Name | WindowsDefender.admx |
<!-- AllowArchiveScanning-GpMapping-End -->

<!-- AllowArchiveScanning-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowArchiveScanning-Examples-End -->

<!-- AllowArchiveScanning-End -->

<!-- AllowBehaviorMonitoring-Begin -->
## AllowBehaviorMonitoring

<!-- AllowBehaviorMonitoring-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowBehaviorMonitoring-Applicability-End -->

<!-- AllowBehaviorMonitoring-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/AllowBehaviorMonitoring
```
<!-- AllowBehaviorMonitoring-OmaUri-End -->

<!-- AllowBehaviorMonitoring-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure behavior monitoring.

- If you enable or do not configure this setting, behavior monitoring will be enabled.

- If you disable this setting, behavior monitoring will be disabled.
<!-- AllowBehaviorMonitoring-Description-End -->

<!-- AllowBehaviorMonitoring-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowBehaviorMonitoring-Editable-End -->

<!-- AllowBehaviorMonitoring-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowBehaviorMonitoring-DFProperties-End -->

<!-- AllowBehaviorMonitoring-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. Turns off behavior monitoring. |
| 1 (Default) | Allowed. Turns on real-time behavior monitoring. |
<!-- AllowBehaviorMonitoring-AllowedValues-End -->

<!-- AllowBehaviorMonitoring-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | RealtimeProtection_DisableBehaviorMonitoring |
| Friendly Name | Turn on behavior monitoring |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Real-time Protection |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Real-Time Protection |
| Registry Value Name | DisableBehaviorMonitoring |
| ADMX File Name | WindowsDefender.admx |
<!-- AllowBehaviorMonitoring-GpMapping-End -->

<!-- AllowBehaviorMonitoring-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowBehaviorMonitoring-Examples-End -->

<!-- AllowBehaviorMonitoring-End -->

<!-- AllowCloudProtection-Begin -->
## AllowCloudProtection

<!-- AllowCloudProtection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowCloudProtection-Applicability-End -->

<!-- AllowCloudProtection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/AllowCloudProtection
```
<!-- AllowCloudProtection-OmaUri-End -->

<!-- AllowCloudProtection-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to join Microsoft MAPS. Microsoft MAPS is the online community that helps you choose how to respond to potential threats. The community also helps stop the spread of new malicious software infections.

You can choose to send basic or additional information about detected software. Additional information helps Microsoft create new security intelligence and help it to protect your computer. This information can include things like location of detected items on your computer if harmful software was removed. The information will be automatically collected and sent. In some instances, personal information might unintentionally be sent to Microsoft. However, Microsoft will not use this information to identify you or contact you.

Possible options are:
(0x0) Disabled (default)
(0x1) Basic membership
(0x2) Advanced membership

Basic membership will send basic information to Microsoft about software that has been detected, including where the software came from, the actions that you apply or that are applied automatically, and whether the actions were successful.

Advanced membership, in addition to basic information, will send more information to Microsoft about malicious software, spyware, and potentially unwanted software, including the location of the software, file names, how the software operates, and how it has impacted your computer.

- If you enable this setting, you will join Microsoft MAPS with the membership specified.

- If you disable or do not configure this setting, you will not join Microsoft MAPS.

In Windows 10, Basic membership is no longer available, so setting the value to 1 or 2 enrolls the device into Advanced membership.
<!-- AllowCloudProtection-Description-End -->

<!-- AllowCloudProtection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowCloudProtection-Editable-End -->

<!-- AllowCloudProtection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowCloudProtection-DFProperties-End -->

<!-- AllowCloudProtection-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. Turns off the Microsoft Active Protection Service. |
| 1 (Default) | Allowed. Turns on the Microsoft Active Protection Service. |
<!-- AllowCloudProtection-AllowedValues-End -->

<!-- AllowCloudProtection-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | SpynetReporting |
| Friendly Name | Join Microsoft MAPS |
| Element Name | Join Microsoft MAPS |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > MAPS |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Spynet |
| ADMX File Name | WindowsDefender.admx |
<!-- AllowCloudProtection-GpMapping-End -->

<!-- AllowCloudProtection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowCloudProtection-Examples-End -->

<!-- AllowCloudProtection-End -->

<!-- AllowEmailScanning-Begin -->
## AllowEmailScanning

<!-- AllowEmailScanning-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowEmailScanning-Applicability-End -->

<!-- AllowEmailScanning-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/AllowEmailScanning
```
<!-- AllowEmailScanning-OmaUri-End -->

<!-- AllowEmailScanning-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure e-mail scanning. When e-mail scanning is enabled, the engine will parse the mailbox and mail files, according to their specific format, in order to analyze the mail bodies and attachments. Several e-mail formats are currently supported, for example: pst (Outlook), dbx, mbx, mime (Outlook Express), binhex (Mac). Email scanning is not supported on modern email clients.

- If you enable this setting, e-mail scanning will be enabled.

- If you disable or do not configure this setting, e-mail scanning will be disabled.
<!-- AllowEmailScanning-Description-End -->

<!-- AllowEmailScanning-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowEmailScanning-Editable-End -->

<!-- AllowEmailScanning-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowEmailScanning-DFProperties-End -->

<!-- AllowEmailScanning-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not allowed. Turns off email scanning. |
| 1 | Allowed. Turns on email scanning. |
<!-- AllowEmailScanning-AllowedValues-End -->

<!-- AllowEmailScanning-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_DisableEmailScanning |
| Friendly Name | Turn on e-mail scanning |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | DisableEmailScanning |
| ADMX File Name | WindowsDefender.admx |
<!-- AllowEmailScanning-GpMapping-End -->

<!-- AllowEmailScanning-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowEmailScanning-Examples-End -->

<!-- AllowEmailScanning-End -->

<!-- AllowFullScanOnMappedNetworkDrives-Begin -->
## AllowFullScanOnMappedNetworkDrives

<!-- AllowFullScanOnMappedNetworkDrives-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowFullScanOnMappedNetworkDrives-Applicability-End -->

<!-- AllowFullScanOnMappedNetworkDrives-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/AllowFullScanOnMappedNetworkDrives
```
<!-- AllowFullScanOnMappedNetworkDrives-OmaUri-End -->

<!-- AllowFullScanOnMappedNetworkDrives-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure scanning mapped network drives.

- If you enable this setting, mapped network drives will be scanned.

- If you disable or do not configure this setting, mapped network drives will not be scanned.
<!-- AllowFullScanOnMappedNetworkDrives-Description-End -->

<!-- AllowFullScanOnMappedNetworkDrives-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowFullScanOnMappedNetworkDrives-Editable-End -->

<!-- AllowFullScanOnMappedNetworkDrives-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowFullScanOnMappedNetworkDrives-DFProperties-End -->

<!-- AllowFullScanOnMappedNetworkDrives-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not allowed. Disables scanning on mapped network drives. |
| 1 | Allowed. Scans mapped network drives. |
<!-- AllowFullScanOnMappedNetworkDrives-AllowedValues-End -->

<!-- AllowFullScanOnMappedNetworkDrives-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_DisableScanningMappedNetworkDrivesForFullScan |
| Friendly Name | Run full scan on mapped network drives |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | DisableScanningMappedNetworkDrivesForFullScan |
| ADMX File Name | WindowsDefender.admx |
<!-- AllowFullScanOnMappedNetworkDrives-GpMapping-End -->

<!-- AllowFullScanOnMappedNetworkDrives-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowFullScanOnMappedNetworkDrives-Examples-End -->

<!-- AllowFullScanOnMappedNetworkDrives-End -->

<!-- AllowFullScanRemovableDriveScanning-Begin -->
## AllowFullScanRemovableDriveScanning

<!-- AllowFullScanRemovableDriveScanning-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowFullScanRemovableDriveScanning-Applicability-End -->

<!-- AllowFullScanRemovableDriveScanning-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/AllowFullScanRemovableDriveScanning
```
<!-- AllowFullScanRemovableDriveScanning-OmaUri-End -->

<!-- AllowFullScanRemovableDriveScanning-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether or not to scan for malicious software and unwanted software in the contents of removable drives, such as USB flash drives, when running a full scan.

- If you enable this setting, removable drives will be scanned during any type of scan.

- If you disable or do not configure this setting, removable drives will not be scanned during a full scan. Removable drives may still be scanned during quick scan and custom scan.
<!-- AllowFullScanRemovableDriveScanning-Description-End -->

<!-- AllowFullScanRemovableDriveScanning-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowFullScanRemovableDriveScanning-Editable-End -->

<!-- AllowFullScanRemovableDriveScanning-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowFullScanRemovableDriveScanning-DFProperties-End -->

<!-- AllowFullScanRemovableDriveScanning-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. Turns off scanning on removable drives. |
| 1 (Default) | Allowed. Scans removable drives. |
<!-- AllowFullScanRemovableDriveScanning-AllowedValues-End -->

<!-- AllowFullScanRemovableDriveScanning-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_DisableRemovableDriveScanning |
| Friendly Name | Scan removable drives |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | DisableRemovableDriveScanning |
| ADMX File Name | WindowsDefender.admx |
<!-- AllowFullScanRemovableDriveScanning-GpMapping-End -->

<!-- AllowFullScanRemovableDriveScanning-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowFullScanRemovableDriveScanning-Examples-End -->

<!-- AllowFullScanRemovableDriveScanning-End -->

<!-- AllowIntrusionPreventionSystem-Begin -->
## AllowIntrusionPreventionSystem

<!-- AllowIntrusionPreventionSystem-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowIntrusionPreventionSystem-Applicability-End -->

<!-- AllowIntrusionPreventionSystem-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/AllowIntrusionPreventionSystem
```
<!-- AllowIntrusionPreventionSystem-OmaUri-End -->

<!-- AllowIntrusionPreventionSystem-Description-Begin -->
<!-- Description-Source-DDF -->
Allows or disallows Windows Defender Intrusion Prevention functionality.
<!-- AllowIntrusionPreventionSystem-Description-End -->

<!-- AllowIntrusionPreventionSystem-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowIntrusionPreventionSystem-Editable-End -->

<!-- AllowIntrusionPreventionSystem-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowIntrusionPreventionSystem-DFProperties-End -->

<!-- AllowIntrusionPreventionSystem-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowIntrusionPreventionSystem-AllowedValues-End -->

<!-- AllowIntrusionPreventionSystem-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowIntrusionPreventionSystem-Examples-End -->

<!-- AllowIntrusionPreventionSystem-End -->

<!-- AllowIOAVProtection-Begin -->
## AllowIOAVProtection

<!-- AllowIOAVProtection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowIOAVProtection-Applicability-End -->

<!-- AllowIOAVProtection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/AllowIOAVProtection
```
<!-- AllowIOAVProtection-OmaUri-End -->

<!-- AllowIOAVProtection-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure scanning for all downloaded files and attachments.

- If you enable or do not configure this setting, scanning for all downloaded files and attachments will be enabled.

- If you disable this setting, scanning for all downloaded files and attachments will be disabled.
<!-- AllowIOAVProtection-Description-End -->

<!-- AllowIOAVProtection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowIOAVProtection-Editable-End -->

<!-- AllowIOAVProtection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowIOAVProtection-DFProperties-End -->

<!-- AllowIOAVProtection-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowIOAVProtection-AllowedValues-End -->

<!-- AllowIOAVProtection-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | RealtimeProtection_DisableIOAVProtection |
| Friendly Name | Scan all downloaded files and attachments |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Real-time Protection |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Real-Time Protection |
| Registry Value Name | DisableIOAVProtection |
| ADMX File Name | WindowsDefender.admx |
<!-- AllowIOAVProtection-GpMapping-End -->

<!-- AllowIOAVProtection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowIOAVProtection-Examples-End -->

<!-- AllowIOAVProtection-End -->

<!-- AllowOnAccessProtection-Begin -->
## AllowOnAccessProtection

<!-- AllowOnAccessProtection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowOnAccessProtection-Applicability-End -->

<!-- AllowOnAccessProtection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/AllowOnAccessProtection
```
<!-- AllowOnAccessProtection-OmaUri-End -->

<!-- AllowOnAccessProtection-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure monitoring for file and program activity.

- If you enable or do not configure this setting, monitoring for file and program activity will be enabled.

- If you disable this setting, monitoring for file and program activity will be disabled.
<!-- AllowOnAccessProtection-Description-End -->

<!-- AllowOnAccessProtection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowOnAccessProtection-Editable-End -->

<!-- AllowOnAccessProtection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowOnAccessProtection-DFProperties-End -->

<!-- AllowOnAccessProtection-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowOnAccessProtection-AllowedValues-End -->

<!-- AllowOnAccessProtection-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | RealtimeProtection_DisableOnAccessProtection |
| Friendly Name | Monitor file and program activity on your computer |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Real-time Protection |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Real-Time Protection |
| Registry Value Name | DisableOnAccessProtection |
| ADMX File Name | WindowsDefender.admx |
<!-- AllowOnAccessProtection-GpMapping-End -->

<!-- AllowOnAccessProtection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowOnAccessProtection-Examples-End -->

<!-- AllowOnAccessProtection-End -->

<!-- AllowRealtimeMonitoring-Begin -->
## AllowRealtimeMonitoring

<!-- AllowRealtimeMonitoring-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowRealtimeMonitoring-Applicability-End -->

<!-- AllowRealtimeMonitoring-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/AllowRealtimeMonitoring
```
<!-- AllowRealtimeMonitoring-OmaUri-End -->

<!-- AllowRealtimeMonitoring-Description-Begin -->
<!-- Description-Source-DDF -->
Allows or disallows Windows Defender Realtime Monitoring functionality.
<!-- AllowRealtimeMonitoring-Description-End -->

<!-- AllowRealtimeMonitoring-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowRealtimeMonitoring-Editable-End -->

<!-- AllowRealtimeMonitoring-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowRealtimeMonitoring-DFProperties-End -->

<!-- AllowRealtimeMonitoring-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. Turns off the real-time monitoring service. |
| 1 (Default) | Allowed. Turns on and runs the real-time monitoring service. |
<!-- AllowRealtimeMonitoring-AllowedValues-End -->

<!-- AllowRealtimeMonitoring-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableRealtimeMonitoring |
| Friendly Name | Turn off real-time protection |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Real-time Protection |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Real-Time Protection |
| Registry Value Name | DisableRealtimeMonitoring |
| ADMX File Name | WindowsDefender.admx |
<!-- AllowRealtimeMonitoring-GpMapping-End -->

<!-- AllowRealtimeMonitoring-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowRealtimeMonitoring-Examples-End -->

<!-- AllowRealtimeMonitoring-End -->

<!-- AllowScanningNetworkFiles-Begin -->
## AllowScanningNetworkFiles

<!-- AllowScanningNetworkFiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowScanningNetworkFiles-Applicability-End -->

<!-- AllowScanningNetworkFiles-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/AllowScanningNetworkFiles
```
<!-- AllowScanningNetworkFiles-OmaUri-End -->

<!-- AllowScanningNetworkFiles-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure scanning for network files. It is recommended that you do not enable this setting.

- If you enable this setting, network files will be scanned.

- If you disable or do not configure this setting, network files will not be scanned.
<!-- AllowScanningNetworkFiles-Description-End -->

<!-- AllowScanningNetworkFiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowScanningNetworkFiles-Editable-End -->

<!-- AllowScanningNetworkFiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowScanningNetworkFiles-DFProperties-End -->

<!-- AllowScanningNetworkFiles-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not allowed. Turns off scanning of network files. |
| 1 | Allowed. Scans network files. |
<!-- AllowScanningNetworkFiles-AllowedValues-End -->

<!-- AllowScanningNetworkFiles-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_DisableScanningNetworkFiles |
| Friendly Name | Scan network files |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | DisableScanningNetworkFiles |
| ADMX File Name | WindowsDefender.admx |
<!-- AllowScanningNetworkFiles-GpMapping-End -->

<!-- AllowScanningNetworkFiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowScanningNetworkFiles-Examples-End -->

<!-- AllowScanningNetworkFiles-End -->

<!-- AllowScriptScanning-Begin -->
## AllowScriptScanning

<!-- AllowScriptScanning-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowScriptScanning-Applicability-End -->

<!-- AllowScriptScanning-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/AllowScriptScanning
```
<!-- AllowScriptScanning-OmaUri-End -->

<!-- AllowScriptScanning-Description-Begin -->
<!-- Description-Source-DDF -->
Allows or disallows Windows Defender Script Scanning functionality.
<!-- AllowScriptScanning-Description-End -->

<!-- AllowScriptScanning-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowScriptScanning-Editable-End -->

<!-- AllowScriptScanning-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowScriptScanning-DFProperties-End -->

<!-- AllowScriptScanning-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowScriptScanning-AllowedValues-End -->

<!-- AllowScriptScanning-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowScriptScanning-Examples-End -->

<!-- AllowScriptScanning-End -->

<!-- AllowUserUIAccess-Begin -->
## AllowUserUIAccess

<!-- AllowUserUIAccess-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowUserUIAccess-Applicability-End -->

<!-- AllowUserUIAccess-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/AllowUserUIAccess
```
<!-- AllowUserUIAccess-OmaUri-End -->

<!-- AllowUserUIAccess-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure whether or not to display AM UI to the users.
- If you enable this setting AM UI won't be available to users.
<!-- AllowUserUIAccess-Description-End -->

<!-- AllowUserUIAccess-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowUserUIAccess-Editable-End -->

<!-- AllowUserUIAccess-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowUserUIAccess-DFProperties-End -->

<!-- AllowUserUIAccess-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. Prevents users from accessing UI. |
| 1 (Default) | Allowed. Lets users access UI. |
<!-- AllowUserUIAccess-AllowedValues-End -->

<!-- AllowUserUIAccess-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | UX_Configuration_UILockdown |
| Friendly Name | Enable headless UI mode |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Client Interface |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\UX Configuration |
| Registry Value Name | UILockdown |
| ADMX File Name | WindowsDefender.admx |
<!-- AllowUserUIAccess-GpMapping-End -->

<!-- AllowUserUIAccess-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowUserUIAccess-Examples-End -->

<!-- AllowUserUIAccess-End -->

<!-- AttackSurfaceReductionOnlyExclusions-Begin -->
## AttackSurfaceReductionOnlyExclusions

<!-- AttackSurfaceReductionOnlyExclusions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1709 [10.0.16299] and later |
<!-- AttackSurfaceReductionOnlyExclusions-Applicability-End -->

<!-- AttackSurfaceReductionOnlyExclusions-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/AttackSurfaceReductionOnlyExclusions
```
<!-- AttackSurfaceReductionOnlyExclusions-OmaUri-End -->

<!-- AttackSurfaceReductionOnlyExclusions-Description-Begin -->
<!-- Description-Source-ADMX -->
Exclude files and paths from Attack Surface Reduction (ASR) rules.

Enabled:
Specify the folders or files and resources that should be excluded from ASR rules in the Options section.
Enter each rule on a new line as a name-value pair:
- Name column: Enter a folder path or a fully qualified resource name. For example, "C:\Windows" will exclude all files in that directory. "C:\Windows\App.exe" will exclude only that specific file in that specific folder
- Value column: Enter "0" for each item

Disabled:
No exclusions will be applied to the ASR rules.

Not configured:
Same as Disabled.

You can configure ASR rules in the Configure Attack Surface Reduction rules GP setting.
<!-- AttackSurfaceReductionOnlyExclusions-Description-End -->

<!-- AttackSurfaceReductionOnlyExclusions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AttackSurfaceReductionOnlyExclusions-Editable-End -->

<!-- AttackSurfaceReductionOnlyExclusions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `|`) |
<!-- AttackSurfaceReductionOnlyExclusions-DFProperties-End -->

<!-- AttackSurfaceReductionOnlyExclusions-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ExploitGuard_ASR_ASROnlyExclusions |
| Friendly Name | Exclude files and paths from Attack Surface Reduction Rules |
| Element Name | Exclusions from ASR rules |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Microsoft Defender Exploit Guard > Attack Surface Reduction |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR |
| ADMX File Name | WindowsDefender.admx |
<!-- AttackSurfaceReductionOnlyExclusions-GpMapping-End -->

<!-- AttackSurfaceReductionOnlyExclusions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AttackSurfaceReductionOnlyExclusions-Examples-End -->

<!-- AttackSurfaceReductionOnlyExclusions-End -->

<!-- AttackSurfaceReductionRules-Begin -->
## AttackSurfaceReductionRules

<!-- AttackSurfaceReductionRules-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1709 [10.0.16299] and later |
<!-- AttackSurfaceReductionRules-Applicability-End -->

<!-- AttackSurfaceReductionRules-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/AttackSurfaceReductionRules
```
<!-- AttackSurfaceReductionRules-OmaUri-End -->

<!-- AttackSurfaceReductionRules-Description-Begin -->
<!-- Description-Source-ADMX -->
Set the state for each Attack Surface Reduction (ASR) rule.

After enabling this setting, you can set each rule to the following in the Options section:
- Block: the rule will be applied
- Audit Mode: if the rule would normally cause an event, then it will be recorded (although the rule will not actually be applied)
- Off: the rule will not be applied
- Not Configured: the rule is enabled with default values
- Warn: the rule will be applied and the end-user will have the option to bypass the block

Unless the ASR rule is disabled, a subsample of audit events are collected for ASR rules will the value of not configured.

Enabled:
Specify the state for each ASR rule under the Options section for this setting.
Enter each rule on a new line as a name-value pair:
- Name column: Enter a valid ASR rule ID
- Value column: Enter the status ID that relates to state you want to specify for the associated rule

The following status IDs are permitted under the value column:
- 1 (Block)
- 0 (Off)
- 2 (Audit)
- 5 (Not Configured)
- 6 (Warn)

Example:
xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
0
xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
1
xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
2

Disabled:
No ASR rules will be configured.

Not configured:
Same as Disabled.

You can exclude folders or files in the "Exclude files and paths from Attack Surface Reduction Rules" GP setting.
<!-- AttackSurfaceReductionRules-Description-End -->

<!-- AttackSurfaceReductionRules-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AttackSurfaceReductionRules-Editable-End -->

<!-- AttackSurfaceReductionRules-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AttackSurfaceReductionRules-DFProperties-End -->

<!-- AttackSurfaceReductionRules-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ExploitGuard_ASR_Rules |
| Friendly Name | Configure Attack Surface Reduction rules |
| Element Name | Set the state for each ASR rule |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Microsoft Defender Exploit Guard > Attack Surface Reduction |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR |
| ADMX File Name | WindowsDefender.admx |
<!-- AttackSurfaceReductionRules-GpMapping-End -->

<!-- AttackSurfaceReductionRules-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AttackSurfaceReductionRules-Examples-End -->

<!-- AttackSurfaceReductionRules-End -->

<!-- AvgCPULoadFactor-Begin -->
## AvgCPULoadFactor

<!-- AvgCPULoadFactor-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- AvgCPULoadFactor-Applicability-End -->

<!-- AvgCPULoadFactor-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/AvgCPULoadFactor
```
<!-- AvgCPULoadFactor-OmaUri-End -->

<!-- AvgCPULoadFactor-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure the maximum percentage CPU utilization permitted during a scan. Valid values for this setting are a percentage represented by the integers 5 to 100. A value of 0 indicates that there should be no throttling of CPU utilization. The default value is 50.

- If you enable this setting, CPU utilization will not exceed the percentage specified.

- If you disable or do not configure this setting, CPU utilization will not exceed the default value.
<!-- AvgCPULoadFactor-Description-End -->

<!-- AvgCPULoadFactor-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AvgCPULoadFactor-Editable-End -->

<!-- AvgCPULoadFactor-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-100]` |
| Default Value  | 50 |
<!-- AvgCPULoadFactor-DFProperties-End -->

<!-- AvgCPULoadFactor-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_AvgCPULoadFactor |
| Friendly Name | Specify the maximum percentage of CPU utilization during a scan |
| Element Name | Specify the maximum percentage of CPU utilization during a scan |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| ADMX File Name | WindowsDefender.admx |
<!-- AvgCPULoadFactor-GpMapping-End -->

<!-- AvgCPULoadFactor-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AvgCPULoadFactor-Examples-End -->

<!-- AvgCPULoadFactor-End -->

<!-- CheckForSignaturesBeforeRunningScan-Begin -->
## CheckForSignaturesBeforeRunningScan

<!-- CheckForSignaturesBeforeRunningScan-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- CheckForSignaturesBeforeRunningScan-Applicability-End -->

<!-- CheckForSignaturesBeforeRunningScan-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/CheckForSignaturesBeforeRunningScan
```
<!-- CheckForSignaturesBeforeRunningScan-OmaUri-End -->

<!-- CheckForSignaturesBeforeRunningScan-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether a check for new virus and spyware security intelligence will occur before running a scan.

This setting applies to scheduled scans, but it has no effect on scans initiated manually from the user interface or to the ones started from the command line using "mpcmdrun -Scan".

- If you enable this setting, a check for new security intelligence will occur before running a scan.

- If you disable this setting or do not configure this setting, the scan will start using the existing security intelligence.
<!-- CheckForSignaturesBeforeRunningScan-Description-End -->

<!-- CheckForSignaturesBeforeRunningScan-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CheckForSignaturesBeforeRunningScan-Editable-End -->

<!-- CheckForSignaturesBeforeRunningScan-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- CheckForSignaturesBeforeRunningScan-DFProperties-End -->

<!-- CheckForSignaturesBeforeRunningScan-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- CheckForSignaturesBeforeRunningScan-AllowedValues-End -->

<!-- CheckForSignaturesBeforeRunningScan-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | CheckForSignaturesBeforeRunningScan |
| Friendly Name | Check for the latest virus and spyware security intelligence before running a scheduled scan |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| ADMX File Name | WindowsDefender.admx |
<!-- CheckForSignaturesBeforeRunningScan-GpMapping-End -->

<!-- CheckForSignaturesBeforeRunningScan-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CheckForSignaturesBeforeRunningScan-Examples-End -->

<!-- CheckForSignaturesBeforeRunningScan-End -->

<!-- CloudBlockLevel-Begin -->
## CloudBlockLevel

<!-- CloudBlockLevel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1709 [10.0.16299] and later |
<!-- CloudBlockLevel-Applicability-End -->

<!-- CloudBlockLevel-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/CloudBlockLevel
```
<!-- CloudBlockLevel-OmaUri-End -->

<!-- CloudBlockLevel-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting determines how aggressive Windows Defender Antivirus will be in blocking and scanning suspicious files. Value type is integer. If this setting is on, Windows Defender Antivirus will be more aggressive when identifying suspicious files to block and scan; otherwise, it will be less aggressive and therefore block and scan with less frequency. For more information about specific values that are supported, [see the Windows Defender Antivirus documentation site](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/specify-cloud-protection-level-microsoft-defender-antivirus).

> [!NOTE]
> This feature requires the Join Microsoft MAPS setting enabled in order to function.
<!-- CloudBlockLevel-Description-End -->

<!-- CloudBlockLevel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CloudBlockLevel-Editable-End -->

<!-- CloudBlockLevel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- CloudBlockLevel-DFProperties-End -->

<!-- CloudBlockLevel-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | NotConfigured. |
| 2 | High. |
| 4 | HighPlus. |
| 6 | ZeroTolerance. |
<!-- CloudBlockLevel-AllowedValues-End -->

<!-- CloudBlockLevel-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | MpEngine_MpCloudBlockLevel |
| Friendly Name | Select cloud protection level |
| Element Name | Select cloud blocking level |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > MpEngine |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\MpEngine |
| ADMX File Name | WindowsDefender.admx |
<!-- CloudBlockLevel-GpMapping-End -->

<!-- CloudBlockLevel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CloudBlockLevel-Examples-End -->

<!-- CloudBlockLevel-End -->

<!-- CloudExtendedTimeout-Begin -->
## CloudExtendedTimeout

<!-- CloudExtendedTimeout-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1709 [10.0.16299] and later |
<!-- CloudExtendedTimeout-Applicability-End -->

<!-- CloudExtendedTimeout-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/CloudExtendedTimeout
```
<!-- CloudExtendedTimeout-OmaUri-End -->

<!-- CloudExtendedTimeout-Description-Begin -->
<!-- Description-Source-DDF -->
This feature allows Windows Defender Antivirus to block a suspicious file for up to 60 seconds, and scan it in the cloud to make sure it's safe. Value type is integer, range is 0 - 50. The typical cloud check timeout is 10 seconds. To enable the extended cloud check feature, specify the extended time in seconds, up to an additional 50 seconds. For example, if the desired timeout is 60 seconds, specify 50 seconds in this setting, which will enable the extended cloud check feature, and will raise the total time to 60 seconds

> [!NOTE]
> This feature depends on three other MAPS settings the must all be enabled- Configure the 'Block at First Sight' feature; Join Microsoft MAPS; Send file samples when further analysis is required.
<!-- CloudExtendedTimeout-Description-End -->

<!-- CloudExtendedTimeout-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CloudExtendedTimeout-Editable-End -->

<!-- CloudExtendedTimeout-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-50]` |
| Default Value  | 0 |
<!-- CloudExtendedTimeout-DFProperties-End -->

<!-- CloudExtendedTimeout-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | MpEngine_MpBafsExtendedTimeout |
| Friendly Name | Configure extended cloud check |
| Element Name | Specify the extended cloud check time in seconds |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > MpEngine |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\MpEngine |
| ADMX File Name | WindowsDefender.admx |
<!-- CloudExtendedTimeout-GpMapping-End -->

<!-- CloudExtendedTimeout-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CloudExtendedTimeout-Examples-End -->

<!-- CloudExtendedTimeout-End -->

<!-- ControlledFolderAccessAllowedApplications-Begin -->
## ControlledFolderAccessAllowedApplications

<!-- ControlledFolderAccessAllowedApplications-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1709 [10.0.16299] and later |
<!-- ControlledFolderAccessAllowedApplications-Applicability-End -->

<!-- ControlledFolderAccessAllowedApplications-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/ControlledFolderAccessAllowedApplications
```
<!-- ControlledFolderAccessAllowedApplications-OmaUri-End -->

<!-- ControlledFolderAccessAllowedApplications-Description-Begin -->
<!-- Description-Source-ADMX -->
Add additional applications that should be considered "trusted" by controlled folder access.

These applications are allowed to modify or delete files in controlled folder access folders.

Microsoft Defender Antivirus automatically determines which applications should be trusted. You can configure this setting to add additional applications.

Enabled:
Specify additional allowed applications in the Options section..

Disabled:
No additional applications will be added to the trusted list.

Not configured:
Same as Disabled.

You can enable controlled folder access in the Configure controlled folder access GP setting.

Default system folders are automatically guarded, but you can add folders in the configure protected folders GP setting.
<!-- ControlledFolderAccessAllowedApplications-Description-End -->

<!-- ControlledFolderAccessAllowedApplications-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ControlledFolderAccessAllowedApplications-Editable-End -->

<!-- ControlledFolderAccessAllowedApplications-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `|`) |
<!-- ControlledFolderAccessAllowedApplications-DFProperties-End -->

<!-- ControlledFolderAccessAllowedApplications-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ExploitGuard_ControlledFolderAccess_AllowedApplications |
| Friendly Name | Configure allowed applications |
| Element Name | Enter the applications that should be trusted |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Microsoft Defender Exploit Guard > Controlled Folder Access |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\Controlled Folder Access |
| ADMX File Name | WindowsDefender.admx |
<!-- ControlledFolderAccessAllowedApplications-GpMapping-End -->

<!-- ControlledFolderAccessAllowedApplications-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ControlledFolderAccessAllowedApplications-Examples-End -->

<!-- ControlledFolderAccessAllowedApplications-End -->

<!-- ControlledFolderAccessProtectedFolders-Begin -->
## ControlledFolderAccessProtectedFolders

<!-- ControlledFolderAccessProtectedFolders-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1709 [10.0.16299] and later |
<!-- ControlledFolderAccessProtectedFolders-Applicability-End -->

<!-- ControlledFolderAccessProtectedFolders-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/ControlledFolderAccessProtectedFolders
```
<!-- ControlledFolderAccessProtectedFolders-OmaUri-End -->

<!-- ControlledFolderAccessProtectedFolders-Description-Begin -->
<!-- Description-Source-ADMX -->
Specify additional folders that should be guarded by the Controlled folder access feature.

Files in these folders cannot be modified or deleted by untrusted applications.

Default system folders are automatically protected. You can configure this setting to add additional folders.
The list of default system folders that are protected is shown in Windows Security.

Enabled:
Specify additional folders that should be protected in the Options section.

Disabled:
No additional folders will be protected.

Not configured:
Same as Disabled.

You can enable controlled folder access in the Configure controlled folder access GP setting.

Microsoft Defender Antivirus automatically determines which applications can be trusted. You can add additional trusted applications in the Configure allowed applications GP setting.
<!-- ControlledFolderAccessProtectedFolders-Description-End -->

<!-- ControlledFolderAccessProtectedFolders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ControlledFolderAccessProtectedFolders-Editable-End -->

<!-- ControlledFolderAccessProtectedFolders-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `|`) |
<!-- ControlledFolderAccessProtectedFolders-DFProperties-End -->

<!-- ControlledFolderAccessProtectedFolders-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ExploitGuard_ControlledFolderAccess_ProtectedFolders |
| Friendly Name | Configure protected folders |
| Element Name | Enter the folders that should be guarded |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Microsoft Defender Exploit Guard > Controlled Folder Access |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\Controlled Folder Access |
| ADMX File Name | WindowsDefender.admx |
<!-- ControlledFolderAccessProtectedFolders-GpMapping-End -->

<!-- ControlledFolderAccessProtectedFolders-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ControlledFolderAccessProtectedFolders-Examples-End -->

<!-- ControlledFolderAccessProtectedFolders-End -->

<!-- DaysToRetainCleanedMalware-Begin -->
## DaysToRetainCleanedMalware

<!-- DaysToRetainCleanedMalware-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1507 [10.0.10240] and later |
<!-- DaysToRetainCleanedMalware-Applicability-End -->

<!-- DaysToRetainCleanedMalware-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/DaysToRetainCleanedMalware
```
<!-- DaysToRetainCleanedMalware-OmaUri-End -->

<!-- DaysToRetainCleanedMalware-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting defines the number of days items should be kept in the Quarantine folder before being removed.

- If you enable this setting, items will be removed from the Quarantine folder after the number of days specified.

- If you disable or do not configure this setting, items will be kept in the quarantine folder indefinitely and will not be automatically removed.
<!-- DaysToRetainCleanedMalware-Description-End -->

<!-- DaysToRetainCleanedMalware-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DaysToRetainCleanedMalware-Editable-End -->

<!-- DaysToRetainCleanedMalware-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-90]` |
| Default Value  | 0 |
<!-- DaysToRetainCleanedMalware-DFProperties-End -->

<!-- DaysToRetainCleanedMalware-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Quarantine_PurgeItemsAfterDelay |
| Friendly Name | Configure removal of items from Quarantine folder |
| Element Name | Configure removal of items from Quarantine folder |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Quarantine |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Quarantine |
| ADMX File Name | WindowsDefender.admx |
<!-- DaysToRetainCleanedMalware-GpMapping-End -->

<!-- DaysToRetainCleanedMalware-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DaysToRetainCleanedMalware-Examples-End -->

<!-- DaysToRetainCleanedMalware-End -->

<!-- DisableCatchupFullScan-Begin -->
## DisableCatchupFullScan

<!-- DisableCatchupFullScan-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- DisableCatchupFullScan-Applicability-End -->

<!-- DisableCatchupFullScan-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/DisableCatchupFullScan
```
<!-- DisableCatchupFullScan-OmaUri-End -->

<!-- DisableCatchupFullScan-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure catch-up scans for scheduled full scans. A catch-up scan is a scan that is initiated because a regularly scheduled scan was missed. Usually these scheduled scans are missed because the computer was turned off at the scheduled time.

- If you enable this setting, catch-up scans for scheduled full scans will be turned on. If a computer is offline for two consecutive scheduled scans, a catch-up scan is started the next time someone logs on to the computer. If there is no scheduled scan configured, there will be no catch-up scan run.

- If you disable or do not configure this setting, catch-up scans for scheduled full scans will be turned off.
<!-- DisableCatchupFullScan-Description-End -->

<!-- DisableCatchupFullScan-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableCatchupFullScan-Editable-End -->

<!-- DisableCatchupFullScan-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- DisableCatchupFullScan-DFProperties-End -->

<!-- DisableCatchupFullScan-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Enabled. |
| 1 (Default) | Disabled. |
<!-- DisableCatchupFullScan-AllowedValues-End -->

<!-- DisableCatchupFullScan-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_DisableCatchupFullScan |
| Friendly Name | Turn on catch-up full scan |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| ADMX File Name | WindowsDefender.admx |
<!-- DisableCatchupFullScan-GpMapping-End -->

<!-- DisableCatchupFullScan-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableCatchupFullScan-Examples-End -->

<!-- DisableCatchupFullScan-End -->

<!-- DisableCatchupQuickScan-Begin -->
## DisableCatchupQuickScan

<!-- DisableCatchupQuickScan-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- DisableCatchupQuickScan-Applicability-End -->

<!-- DisableCatchupQuickScan-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/DisableCatchupQuickScan
```
<!-- DisableCatchupQuickScan-OmaUri-End -->

<!-- DisableCatchupQuickScan-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure catch-up scans for scheduled quick scans. A catch-up scan is a scan that is initiated because a regularly scheduled scan was missed. Usually these scheduled scans are missed because the computer was turned off at the scheduled time.

- If you enable this setting, catch-up scans for scheduled quick scans will be turned on. If a computer is offline for two consecutive scheduled scans, a catch-up scan is started the next time someone logs on to the computer. If there is no scheduled scan configured, there will be no catch-up scan run.

- If you disable or do not configure this setting, catch-up scans for scheduled quick scans will be turned off.
<!-- DisableCatchupQuickScan-Description-End -->

<!-- DisableCatchupQuickScan-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableCatchupQuickScan-Editable-End -->

<!-- DisableCatchupQuickScan-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- DisableCatchupQuickScan-DFProperties-End -->

<!-- DisableCatchupQuickScan-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Enabled. |
| 1 (Default) | Disabled. |
<!-- DisableCatchupQuickScan-AllowedValues-End -->

<!-- DisableCatchupQuickScan-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_DisableCatchupQuickScan |
| Friendly Name | Turn on catch-up quick scan |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| ADMX File Name | WindowsDefender.admx |
<!-- DisableCatchupQuickScan-GpMapping-End -->

<!-- DisableCatchupQuickScan-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableCatchupQuickScan-Examples-End -->

<!-- DisableCatchupQuickScan-End -->

<!-- EnableControlledFolderAccess-Begin -->
## EnableControlledFolderAccess

<!-- EnableControlledFolderAccess-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1709 [10.0.16299] and later |
<!-- EnableControlledFolderAccess-Applicability-End -->

<!-- EnableControlledFolderAccess-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/EnableControlledFolderAccess
```
<!-- EnableControlledFolderAccess-OmaUri-End -->

<!-- EnableControlledFolderAccess-Description-Begin -->
<!-- Description-Source-ADMX -->
Enable or disable controlled folder access for untrusted applications. You can choose to block, audit, or allow attempts by untrusted apps to:
- Modify or delete files in protected folders, such as the Documents folder
- Write to disk sectors

You can also choose to only block or audit writes to disk sectors while still allowing the modification or deletion of files in protected folders.

Microsoft Defender Antivirus automatically determines which applications can be trusted. You can add additional trusted applications in the Configure allowed applications GP setting.
Default system folders are automatically protected, but you can add folders in the Configure protected folders GP setting.

Block:
The following will be blocked:
- Attempts by untrusted apps to modify or delete files in protected folders
- Attempts by untrusted apps to write to disk sectors
The Windows event log will record these blocks under Applications and Services Logs > Microsoft > Windows > Windows Defender > Operational > ID 1123.

Disabled:
The following will not be blocked and will be allowed to run:
- Attempts by untrusted apps to modify or delete files in protected folders
- Attempts by untrusted apps to write to disk sectors
These attempts will not be recorded in the Windows event log.

Audit Mode:
The following will not be blocked and will be allowed to run:
- Attempts by untrusted apps to modify or delete files in protected folders
- Attempts by untrusted apps to write to disk sectors
The Windows event log will record these attempts under Applications and Services Logs > Microsoft > Windows > Windows Defender > Operational > ID 1124.

Block disk modification only:
The following will be blocked:
- Attempts by untrusted apps to write to disk sectors
The Windows event log will record these attempts under Applications and Services Logs > Microsoft > Windows > Windows Defender > Operational > ID 1123.

The following will not be blocked and will be allowed to run:
- Attempts by untrusted apps to modify or delete files in protected folders
These attempts will not be recorded in the Windows event log.

Audit disk modification only:
The following will not be blocked and will be allowed to run:
- Attempts by untrusted apps to write to disk sectors
- Attempts by untrusted apps to modify or delete files in protected folders
Only attempts to write to protected disk sectors will be recorded in the Windows event log (under Applications and Services Logs > Microsoft > Windows > Windows Defender > Operational > ID 1124).
Attempts to modify or delete files in protected folders will not be recorded.

Not configured:
Same as Disabled.
<!-- EnableControlledFolderAccess-Description-End -->

<!-- EnableControlledFolderAccess-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableControlledFolderAccess-Editable-End -->

<!-- EnableControlledFolderAccess-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- EnableControlledFolderAccess-DFProperties-End -->

<!-- EnableControlledFolderAccess-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
| 2 | Audit Mode. |
<!-- EnableControlledFolderAccess-AllowedValues-End -->

<!-- EnableControlledFolderAccess-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ExploitGuard_ControlledFolderAccess_EnableControlledFolderAccess |
| Friendly Name | Configure Controlled folder access |
| Element Name | Configure the guard my folders feature |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Microsoft Defender Exploit Guard > Controlled Folder Access |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\Controlled Folder Access |
| ADMX File Name | WindowsDefender.admx |
<!-- EnableControlledFolderAccess-GpMapping-End -->

<!-- EnableControlledFolderAccess-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableControlledFolderAccess-Examples-End -->

<!-- EnableControlledFolderAccess-End -->

<!-- EnableLowCPUPriority-Begin -->
## EnableLowCPUPriority

<!-- EnableLowCPUPriority-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- EnableLowCPUPriority-Applicability-End -->

<!-- EnableLowCPUPriority-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/EnableLowCPUPriority
```
<!-- EnableLowCPUPriority-OmaUri-End -->

<!-- EnableLowCPUPriority-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to enable or disable low CPU priority for scheduled scans.

- If you enable this setting, low CPU priority will be used during scheduled scans.

- If you disable or do not configure this setting, not changes will be made to CPU priority for scheduled scans.
<!-- EnableLowCPUPriority-Description-End -->

<!-- EnableLowCPUPriority-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableLowCPUPriority-Editable-End -->

<!-- EnableLowCPUPriority-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- EnableLowCPUPriority-DFProperties-End -->

<!-- EnableLowCPUPriority-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- EnableLowCPUPriority-AllowedValues-End -->

<!-- EnableLowCPUPriority-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_LowCpuPriority |
| Friendly Name | Configure low CPU priority for scheduled scans |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| ADMX File Name | WindowsDefender.admx |
<!-- EnableLowCPUPriority-GpMapping-End -->

<!-- EnableLowCPUPriority-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableLowCPUPriority-Examples-End -->

<!-- EnableLowCPUPriority-End -->

<!-- EnableNetworkProtection-Begin -->
## EnableNetworkProtection

<!-- EnableNetworkProtection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1709 [10.0.16299] and later |
<!-- EnableNetworkProtection-Applicability-End -->

<!-- EnableNetworkProtection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/EnableNetworkProtection
```
<!-- EnableNetworkProtection-OmaUri-End -->

<!-- EnableNetworkProtection-Description-Begin -->
<!-- Description-Source-ADMX -->
Enable or disable Microsoft Defender Exploit Guard network protection to prevent employees from using any application to access dangerous domains that may host phishing scams, exploit-hosting sites, and other malicious content on the Internet.

Enabled:
Specify the mode in the Options section:
-Block: Users and applications will not be able to access dangerous domains
-Audit Mode: Users and applications can connect to dangerous domains, however if this feature would have blocked access if it were set to Block, then a record of the event will be in the event logs.

Disabled:
Users and applications will not be blocked from connecting to dangerous domains.

Not configured:
Same as Disabled.
<!-- EnableNetworkProtection-Description-End -->

<!-- EnableNetworkProtection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableNetworkProtection-Editable-End -->

<!-- EnableNetworkProtection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- EnableNetworkProtection-DFProperties-End -->

<!-- EnableNetworkProtection-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled (block mode). |
| 2 | Enabled (audit mode). |
<!-- EnableNetworkProtection-AllowedValues-End -->

<!-- EnableNetworkProtection-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ExploitGuard_EnableNetworkProtection |
| Friendly Name | Prevent users and apps from accessing dangerous websites |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Microsoft Defender Exploit Guard > Network Protection |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\Network Protection |
| ADMX File Name | WindowsDefender.admx |
<!-- EnableNetworkProtection-GpMapping-End -->

<!-- EnableNetworkProtection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableNetworkProtection-Examples-End -->

<!-- EnableNetworkProtection-End -->

<!-- ExcludedExtensions-Begin -->
## ExcludedExtensions

<!-- ExcludedExtensions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- ExcludedExtensions-Applicability-End -->

<!-- ExcludedExtensions-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/ExcludedExtensions
```
<!-- ExcludedExtensions-OmaUri-End -->

<!-- ExcludedExtensions-Description-Begin -->
<!-- Description-Source-DDF -->
Allows an administrator to specify a list of file type extensions to ignore during a scan. Each file type in the list must be separated by a |. For example, lib|obj.
<!-- ExcludedExtensions-Description-End -->

<!-- ExcludedExtensions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ExcludedExtensions-Editable-End -->

<!-- ExcludedExtensions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `|`) |
<!-- ExcludedExtensions-DFProperties-End -->

<!-- ExcludedExtensions-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Exclusions_Extensions |
| Friendly Name | Extension Exclusions |
| Element Name | Extension Exclusions |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Exclusions |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Exclusions |
| ADMX File Name | WindowsDefender.admx |
<!-- ExcludedExtensions-GpMapping-End -->

<!-- ExcludedExtensions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ExcludedExtensions-Examples-End -->

<!-- ExcludedExtensions-End -->

<!-- ExcludedPaths-Begin -->
## ExcludedPaths

<!-- ExcludedPaths-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- ExcludedPaths-Applicability-End -->

<!-- ExcludedPaths-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/ExcludedPaths
```
<!-- ExcludedPaths-OmaUri-End -->

<!-- ExcludedPaths-Description-Begin -->
<!-- Description-Source-DDF -->
Allows an administrator to specify a list of directory paths to ignore during a scan. Each path in the list must be separated by a |. For example, C:\Example|C:\Example1.
<!-- ExcludedPaths-Description-End -->

<!-- ExcludedPaths-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ExcludedPaths-Editable-End -->

<!-- ExcludedPaths-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `|`) |
<!-- ExcludedPaths-DFProperties-End -->

<!-- ExcludedPaths-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Exclusions_Paths |
| Friendly Name | Path Exclusions |
| Element Name | Path Exclusions |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Exclusions |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Exclusions |
| ADMX File Name | WindowsDefender.admx |
<!-- ExcludedPaths-GpMapping-End -->

<!-- ExcludedPaths-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ExcludedPaths-Examples-End -->

<!-- ExcludedPaths-End -->

<!-- ExcludedProcesses-Begin -->
## ExcludedProcesses

<!-- ExcludedProcesses-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- ExcludedProcesses-Applicability-End -->

<!-- ExcludedProcesses-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/ExcludedProcesses
```
<!-- ExcludedProcesses-OmaUri-End -->

<!-- ExcludedProcesses-Description-Begin -->
<!-- Description-Source-DDF -->
Allows an administrator to specify a list of files opened by processes to ignore during a scan

> [!IMPORTANT]
> The process itself is not excluded from the scan, but can be by using the Defender/ExcludedPaths policy to exclude its path. Each file type must be separated by a |. For example, C\Example. exe|C\Example1.exe.
<!-- ExcludedProcesses-Description-End -->

<!-- ExcludedProcesses-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ExcludedProcesses-Editable-End -->

<!-- ExcludedProcesses-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `|`) |
<!-- ExcludedProcesses-DFProperties-End -->

<!-- ExcludedProcesses-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Exclusions_Processes |
| Friendly Name | Process Exclusions |
| Element Name | Process Exclusions |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Exclusions |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Exclusions |
| ADMX File Name | WindowsDefender.admx |
<!-- ExcludedProcesses-GpMapping-End -->

<!-- ExcludedProcesses-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ExcludedProcesses-Examples-End -->

<!-- ExcludedProcesses-End -->

<!-- PUAProtection-Begin -->
## PUAProtection

<!-- PUAProtection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- PUAProtection-Applicability-End -->

<!-- PUAProtection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/PUAProtection
```
<!-- PUAProtection-OmaUri-End -->

<!-- PUAProtection-Description-Begin -->
<!-- Description-Source-ADMX -->
Enable or disable detection for potentially unwanted applications. You can choose to block, audit, or allow when potentially unwanted software is being downloaded or attempts to install itself on your computer.

Enabled:
Specify the mode in the Options section:
-Block: Potentially unwanted software will be blocked.
-Audit Mode: Potentially unwanted software will not be blocked, however if this feature would have blocked access if it were set to Block, then a record of the event will be in the event logs.

Disabled:
Potentially unwanted software will not be blocked.

Not configured:
Same as Disabled.
<!-- PUAProtection-Description-End -->

<!-- PUAProtection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PUAProtection-Editable-End -->

<!-- PUAProtection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- PUAProtection-DFProperties-End -->

<!-- PUAProtection-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | PUA Protection off. Windows Defender will not protect against potentially unwanted applications. |
| 1 | PUA Protection on. Detected items are blocked. They will show in history along with other threats. |
| 2 | Audit mode. Windows Defender will detect potentially unwanted applications, but take no action. You can review information about the applications Windows Defender would have taken action against by searching for events created by Windows Defender in the Event Viewer. |
<!-- PUAProtection-AllowedValues-End -->

<!-- PUAProtection-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Root_PUAProtection |
| Friendly Name | Configure detection for potentially unwanted applications |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender |
| ADMX File Name | WindowsDefender.admx |
<!-- PUAProtection-GpMapping-End -->

<!-- PUAProtection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PUAProtection-Examples-End -->

<!-- PUAProtection-End -->

<!-- RealTimeScanDirection-Begin -->
## RealTimeScanDirection

<!-- RealTimeScanDirection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1507 [10.0.10240] and later |
<!-- RealTimeScanDirection-Applicability-End -->

<!-- RealTimeScanDirection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/RealTimeScanDirection
```
<!-- RealTimeScanDirection-OmaUri-End -->

<!-- RealTimeScanDirection-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure monitoring for incoming and outgoing files, without having to turn off monitoring entirely. It is recommended for use on servers where there is a lot of incoming and outgoing file activity but for performance reasons need to have scanning disabled for a particular scan direction. The appropriate configuration should be evaluated based on the server role.

**Note** that this configuration is only honored for NTFS volumes. For any other file system type, full monitoring of file and program activity will be present on those volumes.

The options for this setting are mutually exclusive
0 = Scan incoming and outgoing files (default)
1 = Scan incoming files only
2 = Scan outgoing files only

Any other value, or if the value does not exist, resolves to the default (0).

- If you enable this setting, the specified type of monitoring will be enabled.

- If you disable or do not configure this setting, monitoring for incoming and outgoing files will be enabled.
<!-- RealTimeScanDirection-Description-End -->

<!-- RealTimeScanDirection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RealTimeScanDirection-Editable-End -->

<!-- RealTimeScanDirection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- RealTimeScanDirection-DFProperties-End -->

<!-- RealTimeScanDirection-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Monitor all files (bi-directional). |
| 1 | Monitor incoming files. |
| 2 | Monitor outgoing files. |
<!-- RealTimeScanDirection-AllowedValues-End -->

<!-- RealTimeScanDirection-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | RealtimeProtection_RealtimeScanDirection |
| Friendly Name | Configure monitoring for incoming and outgoing file and program activity |
| Element Name | Configure monitoring for incoming and outgoing file and program activity |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Real-time Protection |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Real-Time Protection |
| ADMX File Name | WindowsDefender.admx |
<!-- RealTimeScanDirection-GpMapping-End -->

<!-- RealTimeScanDirection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RealTimeScanDirection-Examples-End -->

<!-- RealTimeScanDirection-End -->

<!-- ScanParameter-Begin -->
## ScanParameter

<!-- ScanParameter-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1507 [10.0.10240] and later |
<!-- ScanParameter-Applicability-End -->

<!-- ScanParameter-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/ScanParameter
```
<!-- ScanParameter-OmaUri-End -->

<!-- ScanParameter-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the scan type to use during a scheduled scan. Scan type options are:
1 = Quick Scan (default)
2 = Full Scan

- If you enable this setting, the scan type will be set to the specified value.

- If you disable or do not configure this setting, the default scan type will used.
<!-- ScanParameter-Description-End -->

<!-- ScanParameter-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ScanParameter-Editable-End -->

<!-- ScanParameter-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- ScanParameter-DFProperties-End -->

<!-- ScanParameter-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Quick scan. |
| 2 | Full scan. |
<!-- ScanParameter-AllowedValues-End -->

<!-- ScanParameter-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_ScanParameters |
| Friendly Name | Specify the scan type to use for a scheduled scan |
| Element Name | Specify the scan type to use for a scheduled scan |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| ADMX File Name | WindowsDefender.admx |
<!-- ScanParameter-GpMapping-End -->

<!-- ScanParameter-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ScanParameter-Examples-End -->

<!-- ScanParameter-End -->

<!-- ScheduleQuickScanTime-Begin -->
## ScheduleQuickScanTime

<!-- ScheduleQuickScanTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1507 [10.0.10240] and later |
<!-- ScheduleQuickScanTime-Applicability-End -->

<!-- ScheduleQuickScanTime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/ScheduleQuickScanTime
```
<!-- ScheduleQuickScanTime-OmaUri-End -->

<!-- ScheduleQuickScanTime-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the time of day at which to perform a daily quick scan. The time value is represented as the number of minutes past midnight (00:00). For example, 120 (0x78) is equivalent to 02:00 AM. By default, this setting is set to disabled. The schedule is based on local time on the computer where the scan is executing.

- If you enable this setting, a daily quick scan will run at the time of day specified.

- If you disable or do not configure this setting, daily quick scan controlled by this config will not be run.
<!-- ScheduleQuickScanTime-Description-End -->

<!-- ScheduleQuickScanTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ScheduleQuickScanTime-Editable-End -->

<!-- ScheduleQuickScanTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-1380]` |
| Default Value  | 120 |
<!-- ScheduleQuickScanTime-DFProperties-End -->

<!-- ScheduleQuickScanTime-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_ScheduleQuickScantime |
| Friendly Name | Specify the time for a daily quick scan |
| Element Name | Specify the time for a daily quick scan |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| ADMX File Name | WindowsDefender.admx |
<!-- ScheduleQuickScanTime-GpMapping-End -->

<!-- ScheduleQuickScanTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ScheduleQuickScanTime-Examples-End -->

<!-- ScheduleQuickScanTime-End -->

<!-- ScheduleScanDay-Begin -->
## ScheduleScanDay

<!-- ScheduleScanDay-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1507 [10.0.10240] and later |
<!-- ScheduleScanDay-Applicability-End -->

<!-- ScheduleScanDay-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/ScheduleScanDay
```
<!-- ScheduleScanDay-OmaUri-End -->

<!-- ScheduleScanDay-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the day of the week on which to perform a scheduled scan. The scan can also be configured to run every day or to never run at all.

This setting can be configured with the following ordinal number values:
(0x0) Every Day
(0x1) Sunday
(0x2) Monday
(0x3) Tuesday
(0x4) Wednesday
(0x5) Thursday
(0x6) Friday
(0x7) Saturday
(0x8) Never (default)

- If you enable this setting, a scheduled scan will run at the frequency specified.

- If you disable or do not configure this setting, a scheduled scan will run at a default frequency.
<!-- ScheduleScanDay-Description-End -->

<!-- ScheduleScanDay-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ScheduleScanDay-Editable-End -->

<!-- ScheduleScanDay-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ScheduleScanDay-DFProperties-End -->

<!-- ScheduleScanDay-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Every day. |
| 1 | Sunday. |
| 2 | Monday. |
| 3 | Tuesday. |
| 4 | Wednesday. |
| 5 | Thursday. |
| 6 | Friday. |
| 7 | Saturday. |
| 8 | No scheduled scan. |
<!-- ScheduleScanDay-AllowedValues-End -->

<!-- ScheduleScanDay-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_ScheduleDay |
| Friendly Name | Specify the day of the week to run a scheduled scan |
| Element Name | Specify the day of the week to run a scheduled scan |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| ADMX File Name | WindowsDefender.admx |
<!-- ScheduleScanDay-GpMapping-End -->

<!-- ScheduleScanDay-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ScheduleScanDay-Examples-End -->

<!-- ScheduleScanDay-End -->

<!-- ScheduleScanTime-Begin -->
## ScheduleScanTime

<!-- ScheduleScanTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1507 [10.0.10240] and later |
<!-- ScheduleScanTime-Applicability-End -->

<!-- ScheduleScanTime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/ScheduleScanTime
```
<!-- ScheduleScanTime-OmaUri-End -->

<!-- ScheduleScanTime-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the time of day at which to perform a scheduled scan. The time value is represented as the number of minutes past midnight (00:00). For example, 120 (0x78) is equivalent to 02:00 AM. By default, this setting is set to a time value of 2:00 AM. The schedule is based on local time on the computer where the scan is executing.

- If you enable this setting, a scheduled scan will run at the time of day specified.

- If you disable or do not configure this setting, a scheduled scan will run at a default time.
<!-- ScheduleScanTime-Description-End -->

<!-- ScheduleScanTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ScheduleScanTime-Editable-End -->

<!-- ScheduleScanTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-1380]` |
| Default Value  | 120 |
<!-- ScheduleScanTime-DFProperties-End -->

<!-- ScheduleScanTime-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_ScheduleTime |
| Friendly Name | Specify the time of day to run a scheduled scan |
| Element Name | Specify the time of day to run a scheduled scan |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| ADMX File Name | WindowsDefender.admx |
<!-- ScheduleScanTime-GpMapping-End -->

<!-- ScheduleScanTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ScheduleScanTime-Examples-End -->

<!-- ScheduleScanTime-End -->

<!-- SecurityIntelligenceLocation-Begin -->
## SecurityIntelligenceLocation

<!-- SecurityIntelligenceLocation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1903 [10.0.18362] and later |
<!-- SecurityIntelligenceLocation-Applicability-End -->

<!-- SecurityIntelligenceLocation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/SecurityIntelligenceLocation
```
<!-- SecurityIntelligenceLocation-OmaUri-End -->

<!-- SecurityIntelligenceLocation-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to define the security intelligence location for VDI-configured computers.

- If you disable or do not configure this setting, security intelligence will be referred from the default local source.
<!-- SecurityIntelligenceLocation-Description-End -->

<!-- SecurityIntelligenceLocation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SecurityIntelligenceLocation-Editable-End -->

<!-- SecurityIntelligenceLocation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SecurityIntelligenceLocation-DFProperties-End -->

<!-- SecurityIntelligenceLocation-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | SignatureUpdate_SharedSignaturesLocation |
| Friendly Name | Define security intelligence location for VDI clients. |
| Element Name | Define file share for downloading security intelligence updates in virtual environments |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Security Intelligence Updates |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Signature Updates |
| ADMX File Name | WindowsDefender.admx |
<!-- SecurityIntelligenceLocation-GpMapping-End -->

<!-- SecurityIntelligenceLocation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SecurityIntelligenceLocation-Examples-End -->

<!-- SecurityIntelligenceLocation-End -->

<!-- SignatureUpdateFallbackOrder-Begin -->
## SignatureUpdateFallbackOrder

<!-- SignatureUpdateFallbackOrder-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- SignatureUpdateFallbackOrder-Applicability-End -->

<!-- SignatureUpdateFallbackOrder-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/SignatureUpdateFallbackOrder
```
<!-- SignatureUpdateFallbackOrder-OmaUri-End -->

<!-- SignatureUpdateFallbackOrder-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to define the order in which different security intelligence update sources should be contacted. The value of this setting should be entered as a pipe-separated string enumerating the security intelligence update sources in order. Possible values are: "InternalDefinitionUpdateServer", "MicrosoftUpdateServer", "MMPC", and "FileShares"

For example: { InternalDefinitionUpdateServer | MicrosoftUpdateServer | MMPC }

- If you enable this setting, security intelligence update sources will be contacted in the order specified. Once security intelligence updates have been successfully downloaded from one specified source, the remaining sources in the list will not be contacted.

- If you disable or do not configure this setting, security intelligence update sources will be contacted in a default order.
<!-- SignatureUpdateFallbackOrder-Description-End -->

<!-- SignatureUpdateFallbackOrder-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SignatureUpdateFallbackOrder-Editable-End -->

<!-- SignatureUpdateFallbackOrder-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `|`) |
<!-- SignatureUpdateFallbackOrder-DFProperties-End -->

<!-- SignatureUpdateFallbackOrder-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | SignatureUpdate_FallbackOrder |
| Friendly Name | Define the order of sources for downloading security intelligence updates |
| Element Name | Define the order of sources for downloading security intelligence updates |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Security Intelligence Updates |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Signature Updates |
| ADMX File Name | WindowsDefender.admx |
<!-- SignatureUpdateFallbackOrder-GpMapping-End -->

<!-- SignatureUpdateFallbackOrder-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SignatureUpdateFallbackOrder-Examples-End -->

<!-- SignatureUpdateFallbackOrder-End -->

<!-- SignatureUpdateFileSharesSources-Begin -->
## SignatureUpdateFileSharesSources

<!-- SignatureUpdateFileSharesSources-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- SignatureUpdateFileSharesSources-Applicability-End -->

<!-- SignatureUpdateFileSharesSources-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/SignatureUpdateFileSharesSources
```
<!-- SignatureUpdateFileSharesSources-OmaUri-End -->

<!-- SignatureUpdateFileSharesSources-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure UNC file share sources for downloading security intelligence updates. Sources will be contacted in the order specified. The value of this setting should be entered as a pipe-separated string enumerating the security intelligence update sources. For example: "{\\unc1 | \\unc2 }". The list is empty by default.

- If you enable this setting, the specified sources will be contacted for security intelligence updates. Once security intelligence updates have been successfully downloaded from one specified source, the remaining sources in the list will not be contacted.

- If you disable or do not configure this setting, the list will remain empty by default and no sources will be contacted.
<!-- SignatureUpdateFileSharesSources-Description-End -->

<!-- SignatureUpdateFileSharesSources-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SignatureUpdateFileSharesSources-Editable-End -->

<!-- SignatureUpdateFileSharesSources-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `|`) |
<!-- SignatureUpdateFileSharesSources-DFProperties-End -->

<!-- SignatureUpdateFileSharesSources-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | SignatureUpdate_DefinitionUpdateFileSharesSources |
| Friendly Name | Define file shares for downloading security intelligence updates |
| Element Name | Define file shares for downloading security intelligence updates |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Security Intelligence Updates |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Signature Updates |
| ADMX File Name | WindowsDefender.admx |
<!-- SignatureUpdateFileSharesSources-GpMapping-End -->

<!-- SignatureUpdateFileSharesSources-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SignatureUpdateFileSharesSources-Examples-End -->

<!-- SignatureUpdateFileSharesSources-End -->

<!-- SignatureUpdateInterval-Begin -->
## SignatureUpdateInterval

<!-- SignatureUpdateInterval-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1507 [10.0.10240] and later |
<!-- SignatureUpdateInterval-Applicability-End -->

<!-- SignatureUpdateInterval-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/SignatureUpdateInterval
```
<!-- SignatureUpdateInterval-OmaUri-End -->

<!-- SignatureUpdateInterval-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify an interval at which to check for security intelligence updates. The time value is represented as the number of hours between update checks. Valid values range from 1 (every hour) to 24 (once per day).

- If you enable this setting, checks for security intelligence updates will occur at the interval specified.

- If you disable or do not configure this setting, checks for security intelligence updates will occur at the default interval.
<!-- SignatureUpdateInterval-Description-End -->

<!-- SignatureUpdateInterval-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SignatureUpdateInterval-Editable-End -->

<!-- SignatureUpdateInterval-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-24]` |
| Default Value  | 8 |
<!-- SignatureUpdateInterval-DFProperties-End -->

<!-- SignatureUpdateInterval-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | SignatureUpdate_SignatureUpdateInterval |
| Friendly Name | Specify the interval to check for security intelligence updates |
| Element Name | Specify the interval to check for security intelligence updates |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Security Intelligence Updates |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Signature Updates |
| ADMX File Name | WindowsDefender.admx |
<!-- SignatureUpdateInterval-GpMapping-End -->

<!-- SignatureUpdateInterval-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SignatureUpdateInterval-Examples-End -->

<!-- SignatureUpdateInterval-End -->

<!-- SubmitSamplesConsent-Begin -->
## SubmitSamplesConsent

<!-- SubmitSamplesConsent-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1507 [10.0.10240] and later |
<!-- SubmitSamplesConsent-Applicability-End -->

<!-- SubmitSamplesConsent-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/SubmitSamplesConsent
```
<!-- SubmitSamplesConsent-OmaUri-End -->

<!-- SubmitSamplesConsent-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures behaviour of samples submission when opt-in for MAPS telemetry is set.

Possible options are:
(0x0) Always prompt
(0x1) Send safe samples automatically
(0x2) Never send
(0x3) Send all samples automatically
<!-- SubmitSamplesConsent-Description-End -->

<!-- SubmitSamplesConsent-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SubmitSamplesConsent-Editable-End -->

<!-- SubmitSamplesConsent-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- SubmitSamplesConsent-DFProperties-End -->

<!-- SubmitSamplesConsent-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Always prompt. |
| 1 (Default) | Send safe samples automatically. |
| 2 | Never send. |
| 3 | Send all samples automatically. |
<!-- SubmitSamplesConsent-AllowedValues-End -->

<!-- SubmitSamplesConsent-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | SubmitSamplesConsent |
| Friendly Name | Send file samples when further analysis is required |
| Element Name | Send file samples when further analysis is required |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > MAPS |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Spynet |
| ADMX File Name | WindowsDefender.admx |
<!-- SubmitSamplesConsent-GpMapping-End -->

<!-- SubmitSamplesConsent-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SubmitSamplesConsent-Examples-End -->

<!-- SubmitSamplesConsent-End -->

<!-- ThreatSeverityDefaultAction-Begin -->
## ThreatSeverityDefaultAction

<!-- ThreatSeverityDefaultAction-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- ThreatSeverityDefaultAction-Applicability-End -->

<!-- ThreatSeverityDefaultAction-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Defender/ThreatSeverityDefaultAction
```
<!-- ThreatSeverityDefaultAction-OmaUri-End -->

<!-- ThreatSeverityDefaultAction-Description-Begin -->
<!-- Description-Source-DDF -->
Allows an administrator to specify any valid threat severity levels and the corresponding default action ID to take. This value is a list of threat severity level IDs and corresponding actions, separated by a | using the format threat level=action|threat level=action. For example, 1=6|2=2|4=10|5=3. The following list shows the supported values for threat severity levels:1 - Low severity threats2 - Moderate severity threats4 - High severity threats5 - Severe threatsThe following list shows the supported values for possible actions:2 - Quarantine. Moves files to quarantine. 3 - Remove. Removes files from system. 6 - Allow. Allows file/does none of the above actions. 8 - User defined. Requires user to make a decision on which action to take. 10 - Block. Blocks file execution.
<!-- ThreatSeverityDefaultAction-Description-End -->

<!-- ThreatSeverityDefaultAction-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ThreatSeverityDefaultAction-Editable-End -->

<!-- ThreatSeverityDefaultAction-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ThreatSeverityDefaultAction-DFProperties-End -->

<!-- ThreatSeverityDefaultAction-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Threats_ThreatSeverityDefaultAction |
| Friendly Name | Specify threat alert levels at which default action should not be taken when detected |
| Element Name | Specify threat alert levels at which default action should not be taken when detected |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Threats |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Threats |
| ADMX File Name | WindowsDefender.admx |
<!-- ThreatSeverityDefaultAction-GpMapping-End -->

<!-- ThreatSeverityDefaultAction-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ThreatSeverityDefaultAction-Examples-End -->

<!-- ThreatSeverityDefaultAction-End -->

<!-- Defender-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Defender-CspMoreInfo-End -->

<!-- Defender-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
