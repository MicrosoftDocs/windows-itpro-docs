---
title: Defender CSP
description: Learn more about the Defender CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 03/23/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- Defender-Begin -->
# Defender CSP

<!-- Defender-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> [ControlPolicyConflict (MDMWinsOverGP)](policy-csp-controlpolicyconflict.md) is not applicable to the Defender CSP. If using MDM, remove your current Defender group policy settings to avoid conflicts with your MDM settings.
<!-- Defender-Editable-End -->

<!-- Defender-Tree-Begin -->
The following list shows the Defender configuration service provider nodes:

- ./Device/Vendor/MSFT/Defender
  - [Configuration](#configuration)
    - [AllowDatagramProcessingOnWinServer](#configurationallowdatagramprocessingonwinserver)
    - [AllowNetworkProtectionDownLevel](#configurationallownetworkprotectiondownlevel)
    - [AllowNetworkProtectionOnWinServer](#configurationallownetworkprotectiononwinserver)
    - [ASROnlyPerRuleExclusions](#configurationasronlyperruleexclusions)
    - [DataDuplicationDirectory](#configurationdataduplicationdirectory)
    - [DataDuplicationLocalRetentionPeriod](#configurationdataduplicationlocalretentionperiod)
    - [DataDuplicationRemoteLocation](#configurationdataduplicationremotelocation)
    - [DefaultEnforcement](#configurationdefaultenforcement)
    - [DeviceControl](#configurationdevicecontrol)
      - [PolicyGroups](#configurationdevicecontrolpolicygroups)
        - [{GroupId}](#configurationdevicecontrolpolicygroupsgroupid)
          - [GroupData](#configurationdevicecontrolpolicygroupsgroupidgroupdata)
      - [PolicyRules](#configurationdevicecontrolpolicyrules)
        - [{RuleId}](#configurationdevicecontrolpolicyrulesruleid)
          - [RuleData](#configurationdevicecontrolpolicyrulesruleidruledata)
    - [DeviceControlEnabled](#configurationdevicecontrolenabled)
    - [DisableCpuThrottleOnIdleScans](#configurationdisablecputhrottleonidlescans)
    - [DisableDnsOverTcpParsing](#configurationdisablednsovertcpparsing)
    - [DisableDnsParsing](#configurationdisablednsparsing)
    - [DisableFtpParsing](#configurationdisableftpparsing)
    - [DisableGradualRelease](#configurationdisablegradualrelease)
    - [DisableHttpParsing](#configurationdisablehttpparsing)
    - [DisableInboundConnectionFiltering](#configurationdisableinboundconnectionfiltering)
    - [DisableLocalAdminMerge](#configurationdisablelocaladminmerge)
    - [DisableNetworkProtectionPerfTelemetry](#configurationdisablenetworkprotectionperftelemetry)
    - [DisableRdpParsing](#configurationdisablerdpparsing)
    - [DisableSmtpParsing](#configurationdisablesmtpparsing)
    - [DisableSshParsing](#configurationdisablesshparsing)
    - [DisableTlsParsing](#configurationdisabletlsparsing)
    - [EnableDnsSinkhole](#configurationenablednssinkhole)
    - [EnableFileHashComputation](#configurationenablefilehashcomputation)
    - [EngineUpdatesChannel](#configurationengineupdateschannel)
    - [HideExclusionsFromLocalAdmins](#configurationhideexclusionsfromlocaladmins)
    - [HideExclusionsFromLocalUsers](#configurationhideexclusionsfromlocalusers)
    - [IntelTDTEnabled](#configurationinteltdtenabled)
    - [MeteredConnectionUpdates](#configurationmeteredconnectionupdates)
    - [PassiveRemediation](#configurationpassiveremediation)
    - [PlatformUpdatesChannel](#configurationplatformupdateschannel)
    - [RandomizeScheduleTaskTimes](#configurationrandomizescheduletasktimes)
    - [ScanOnlyIfIdleEnabled](#configurationscanonlyifidleenabled)
    - [SchedulerRandomizationTime](#configurationschedulerrandomizationtime)
    - [SecuredDevicesConfiguration](#configurationsecureddevicesconfiguration)
    - [SecurityIntelligenceUpdatesChannel](#configurationsecurityintelligenceupdateschannel)
    - [SupportLogLocation](#configurationsupportloglocation)
    - [TamperProtection](#configurationtamperprotection)
    - [ThrottleForScheduledScanOnly](#configurationthrottleforscheduledscanonly)
  - [Detections](#detections)
    - [{ThreatId}](#detectionsthreatid)
      - [Category](#detectionsthreatidcategory)
      - [CurrentStatus](#detectionsthreatidcurrentstatus)
      - [ExecutionStatus](#detectionsthreatidexecutionstatus)
      - [InitialDetectionTime](#detectionsthreatidinitialdetectiontime)
      - [LastThreatStatusChangeTime](#detectionsthreatidlastthreatstatuschangetime)
      - [Name](#detectionsthreatidname)
      - [NumberOfDetections](#detectionsthreatidnumberofdetections)
      - [Severity](#detectionsthreatidseverity)
      - [URL](#detectionsthreatidurl)
  - [Health](#health)
    - [ComputerState](#healthcomputerstate)
    - [DefenderEnabled](#healthdefenderenabled)
    - [DefenderVersion](#healthdefenderversion)
    - [EngineVersion](#healthengineversion)
    - [FullScanOverdue](#healthfullscanoverdue)
    - [FullScanRequired](#healthfullscanrequired)
    - [FullScanSigVersion](#healthfullscansigversion)
    - [FullScanTime](#healthfullscantime)
    - [IsVirtualMachine](#healthisvirtualmachine)
    - [NisEnabled](#healthnisenabled)
    - [ProductStatus](#healthproductstatus)
    - [QuickScanOverdue](#healthquickscanoverdue)
    - [QuickScanSigVersion](#healthquickscansigversion)
    - [QuickScanTime](#healthquickscantime)
    - [RebootRequired](#healthrebootrequired)
    - [RtpEnabled](#healthrtpenabled)
    - [SignatureOutOfDate](#healthsignatureoutofdate)
    - [SignatureVersion](#healthsignatureversion)
    - [TamperProtectionEnabled](#healthtamperprotectionenabled)
  - [OfflineScan](#offlinescan)
  - [RollbackEngine](#rollbackengine)
  - [RollbackPlatform](#rollbackplatform)
  - [Scan](#scan)
  - [UpdateSignature](#updatesignature)
<!-- Defender-Tree-End -->

<!-- Device-Configuration-Begin -->
## Configuration

<!-- Device-Configuration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Configuration-Applicability-End -->

<!-- Device-Configuration-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration
```
<!-- Device-Configuration-OmaUri-End -->

<!-- Device-Configuration-Description-Begin -->
<!-- Description-Source-DDF -->
An interior node to group Windows Defender configuration information.
<!-- Device-Configuration-Description-End -->

<!-- Device-Configuration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-Editable-End -->

<!-- Device-Configuration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | node |
| Access Type | Get |
<!-- Device-Configuration-DFProperties-End -->

<!-- Device-Configuration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-Examples-End -->

<!-- Device-Configuration-End -->

<!-- Device-Configuration-AllowDatagramProcessingOnWinServer-Begin -->
### Configuration/AllowDatagramProcessingOnWinServer

<!-- Device-Configuration-AllowDatagramProcessingOnWinServer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-AllowDatagramProcessingOnWinServer-Applicability-End -->

<!-- Device-Configuration-AllowDatagramProcessingOnWinServer-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/AllowDatagramProcessingOnWinServer
```
<!-- Device-Configuration-AllowDatagramProcessingOnWinServer-OmaUri-End -->

<!-- Device-Configuration-AllowDatagramProcessingOnWinServer-Description-Begin -->
<!-- Description-Source-DDF -->
This settings controls whether Network Protection is allowed to enable datagram processing on Windows Server. If false, the value of DisableDatagramProcessing will be ignored and default to disabling Datagram inspection.
<!-- Device-Configuration-AllowDatagramProcessingOnWinServer-Description-End -->

<!-- Device-Configuration-AllowDatagramProcessingOnWinServer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-AllowDatagramProcessingOnWinServer-Editable-End -->

<!-- Device-Configuration-AllowDatagramProcessingOnWinServer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Configuration-AllowDatagramProcessingOnWinServer-DFProperties-End -->

<!-- Device-Configuration-AllowDatagramProcessingOnWinServer-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Datagram processing on Windows Server is enabled. |
| 0 (Default) | Datagram processing on Windows Server is disabled. |
<!-- Device-Configuration-AllowDatagramProcessingOnWinServer-AllowedValues-End -->

<!-- Device-Configuration-AllowDatagramProcessingOnWinServer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-AllowDatagramProcessingOnWinServer-Examples-End -->

<!-- Device-Configuration-AllowDatagramProcessingOnWinServer-End -->

<!-- Device-Configuration-AllowNetworkProtectionDownLevel-Begin -->
### Configuration/AllowNetworkProtectionDownLevel

<!-- Device-Configuration-AllowNetworkProtectionDownLevel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-AllowNetworkProtectionDownLevel-Applicability-End -->

<!-- Device-Configuration-AllowNetworkProtectionDownLevel-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/AllowNetworkProtectionDownLevel
```
<!-- Device-Configuration-AllowNetworkProtectionDownLevel-OmaUri-End -->

<!-- Device-Configuration-AllowNetworkProtectionDownLevel-Description-Begin -->
<!-- Description-Source-DDF -->
This settings controls whether Network Protection is allowed to be configured into block or audit mode on windows downlevel of RS3. If false, the value of EnableNetworkProtection will be ignored.
<!-- Device-Configuration-AllowNetworkProtectionDownLevel-Description-End -->

<!-- Device-Configuration-AllowNetworkProtectionDownLevel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-AllowNetworkProtectionDownLevel-Editable-End -->

<!-- Device-Configuration-AllowNetworkProtectionDownLevel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Configuration-AllowNetworkProtectionDownLevel-DFProperties-End -->

<!-- Device-Configuration-AllowNetworkProtectionDownLevel-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Network protection will be enabled downlevel. |
| 0 (Default) | Network protection will be disabled downlevel. |
<!-- Device-Configuration-AllowNetworkProtectionDownLevel-AllowedValues-End -->

<!-- Device-Configuration-AllowNetworkProtectionDownLevel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-AllowNetworkProtectionDownLevel-Examples-End -->

<!-- Device-Configuration-AllowNetworkProtectionDownLevel-End -->

<!-- Device-Configuration-AllowNetworkProtectionOnWinServer-Begin -->
### Configuration/AllowNetworkProtectionOnWinServer

<!-- Device-Configuration-AllowNetworkProtectionOnWinServer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Configuration-AllowNetworkProtectionOnWinServer-Applicability-End -->

<!-- Device-Configuration-AllowNetworkProtectionOnWinServer-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/AllowNetworkProtectionOnWinServer
```
<!-- Device-Configuration-AllowNetworkProtectionOnWinServer-OmaUri-End -->

<!-- Device-Configuration-AllowNetworkProtectionOnWinServer-Description-Begin -->
<!-- Description-Source-DDF -->
This settings controls whether Network Protection is allowed to be configured into block or audit mode on Windows Server. If false, the value of EnableNetworkProtection will be ignored.
<!-- Device-Configuration-AllowNetworkProtectionOnWinServer-Description-End -->

<!-- Device-Configuration-AllowNetworkProtectionOnWinServer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-AllowNetworkProtectionOnWinServer-Editable-End -->

<!-- Device-Configuration-AllowNetworkProtectionOnWinServer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- Device-Configuration-AllowNetworkProtectionOnWinServer-DFProperties-End -->

<!-- Device-Configuration-AllowNetworkProtectionOnWinServer-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Allow. |
| 0 | Disallow. |
<!-- Device-Configuration-AllowNetworkProtectionOnWinServer-AllowedValues-End -->

<!-- Device-Configuration-AllowNetworkProtectionOnWinServer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-AllowNetworkProtectionOnWinServer-Examples-End -->

<!-- Device-Configuration-AllowNetworkProtectionOnWinServer-End -->

<!-- Device-Configuration-ASROnlyPerRuleExclusions-Begin -->
### Configuration/ASROnlyPerRuleExclusions

<!-- Device-Configuration-ASROnlyPerRuleExclusions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Configuration-ASROnlyPerRuleExclusions-Applicability-End -->

<!-- Device-Configuration-ASROnlyPerRuleExclusions-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/ASROnlyPerRuleExclusions
```
<!-- Device-Configuration-ASROnlyPerRuleExclusions-OmaUri-End -->

<!-- Device-Configuration-ASROnlyPerRuleExclusions-Description-Begin -->
<!-- Description-Source-DDF -->
Apply ASR only per rule exclusions.
<!-- Device-Configuration-ASROnlyPerRuleExclusions-Description-End -->

<!-- Device-Configuration-ASROnlyPerRuleExclusions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-ASROnlyPerRuleExclusions-Editable-End -->

<!-- Device-Configuration-ASROnlyPerRuleExclusions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Configuration-ASROnlyPerRuleExclusions-DFProperties-End -->

<!-- Device-Configuration-ASROnlyPerRuleExclusions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-ASROnlyPerRuleExclusions-Examples-End -->

<!-- Device-Configuration-ASROnlyPerRuleExclusions-End -->

<!-- Device-Configuration-DataDuplicationDirectory-Begin -->
### Configuration/DataDuplicationDirectory

<!-- Device-Configuration-DataDuplicationDirectory-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-Configuration-DataDuplicationDirectory-Applicability-End -->

<!-- Device-Configuration-DataDuplicationDirectory-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/DataDuplicationDirectory
```
<!-- Device-Configuration-DataDuplicationDirectory-OmaUri-End -->

<!-- Device-Configuration-DataDuplicationDirectory-Description-Begin -->
<!-- Description-Source-DDF -->
Define data duplication directory for device control.
<!-- Device-Configuration-DataDuplicationDirectory-Description-End -->

<!-- Device-Configuration-DataDuplicationDirectory-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-DataDuplicationDirectory-Editable-End -->

<!-- Device-Configuration-DataDuplicationDirectory-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Configuration-DataDuplicationDirectory-DFProperties-End -->

<!-- Device-Configuration-DataDuplicationDirectory-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-DataDuplicationDirectory-Examples-End -->

<!-- Device-Configuration-DataDuplicationDirectory-End -->

<!-- Device-Configuration-DataDuplicationLocalRetentionPeriod-Begin -->
### Configuration/DataDuplicationLocalRetentionPeriod

<!-- Device-Configuration-DataDuplicationLocalRetentionPeriod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-Configuration-DataDuplicationLocalRetentionPeriod-Applicability-End -->

<!-- Device-Configuration-DataDuplicationLocalRetentionPeriod-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/DataDuplicationLocalRetentionPeriod
```
<!-- Device-Configuration-DataDuplicationLocalRetentionPeriod-OmaUri-End -->

<!-- Device-Configuration-DataDuplicationLocalRetentionPeriod-Description-Begin -->
<!-- Description-Source-DDF -->
Define the retention period in days of how much time the evidence data will be kept on the client machine should any transfer to the remote locations would occur.
<!-- Device-Configuration-DataDuplicationLocalRetentionPeriod-Description-End -->

<!-- Device-Configuration-DataDuplicationLocalRetentionPeriod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-DataDuplicationLocalRetentionPeriod-Editable-End -->

<!-- Device-Configuration-DataDuplicationLocalRetentionPeriod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[1-120]` |
| Default Value  | 60 |
<!-- Device-Configuration-DataDuplicationLocalRetentionPeriod-DFProperties-End -->

<!-- Device-Configuration-DataDuplicationLocalRetentionPeriod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-DataDuplicationLocalRetentionPeriod-Examples-End -->

<!-- Device-Configuration-DataDuplicationLocalRetentionPeriod-End -->

<!-- Device-Configuration-DataDuplicationRemoteLocation-Begin -->
### Configuration/DataDuplicationRemoteLocation

<!-- Device-Configuration-DataDuplicationRemoteLocation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-Configuration-DataDuplicationRemoteLocation-Applicability-End -->

<!-- Device-Configuration-DataDuplicationRemoteLocation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/DataDuplicationRemoteLocation
```
<!-- Device-Configuration-DataDuplicationRemoteLocation-OmaUri-End -->

<!-- Device-Configuration-DataDuplicationRemoteLocation-Description-Begin -->
<!-- Description-Source-DDF -->
Define data duplication remote location for device control.
<!-- Device-Configuration-DataDuplicationRemoteLocation-Description-End -->

<!-- Device-Configuration-DataDuplicationRemoteLocation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-DataDuplicationRemoteLocation-Editable-End -->

<!-- Device-Configuration-DataDuplicationRemoteLocation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Configuration-DataDuplicationRemoteLocation-DFProperties-End -->

<!-- Device-Configuration-DataDuplicationRemoteLocation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-DataDuplicationRemoteLocation-Examples-End -->

<!-- Device-Configuration-DataDuplicationRemoteLocation-End -->

<!-- Device-Configuration-DefaultEnforcement-Begin -->
### Configuration/DefaultEnforcement

<!-- Device-Configuration-DefaultEnforcement-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-Configuration-DefaultEnforcement-Applicability-End -->

<!-- Device-Configuration-DefaultEnforcement-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/DefaultEnforcement
```
<!-- Device-Configuration-DefaultEnforcement-OmaUri-End -->

<!-- Device-Configuration-DefaultEnforcement-Description-Begin -->
<!-- Description-Source-DDF -->
Control Device Control default enforcement. This is the enforcement applied if there are no policy rules present or at the end of the policy rules evaluation none were matched.
<!-- Device-Configuration-DefaultEnforcement-Description-End -->

<!-- Device-Configuration-DefaultEnforcement-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-DefaultEnforcement-Editable-End -->

<!-- Device-Configuration-DefaultEnforcement-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- Device-Configuration-DefaultEnforcement-DFProperties-End -->

<!-- Device-Configuration-DefaultEnforcement-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Default Allow Enforcement. |
| 2 | Default Deny Enforcement. |
<!-- Device-Configuration-DefaultEnforcement-AllowedValues-End -->

<!-- Device-Configuration-DefaultEnforcement-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-DefaultEnforcement-Examples-End -->

<!-- Device-Configuration-DefaultEnforcement-End -->

<!-- Device-Configuration-DeviceControl-Begin -->
### Configuration/DeviceControl

<!-- Device-Configuration-DeviceControl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-Configuration-DeviceControl-Applicability-End -->

<!-- Device-Configuration-DeviceControl-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/DeviceControl
```
<!-- Device-Configuration-DeviceControl-OmaUri-End -->

<!-- Device-Configuration-DeviceControl-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Configuration-DeviceControl-Description-End -->

<!-- Device-Configuration-DeviceControl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-DeviceControl-Editable-End -->

<!-- Device-Configuration-DeviceControl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | node |
| Access Type | Get |
<!-- Device-Configuration-DeviceControl-DFProperties-End -->

<!-- Device-Configuration-DeviceControl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-DeviceControl-Examples-End -->

<!-- Device-Configuration-DeviceControl-End -->

<!-- Device-Configuration-DeviceControl-PolicyGroups-Begin -->
#### Configuration/DeviceControl/PolicyGroups

<!-- Device-Configuration-DeviceControl-PolicyGroups-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-Configuration-DeviceControl-PolicyGroups-Applicability-End -->

<!-- Device-Configuration-DeviceControl-PolicyGroups-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyGroups
```
<!-- Device-Configuration-DeviceControl-PolicyGroups-OmaUri-End -->

<!-- Device-Configuration-DeviceControl-PolicyGroups-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Configuration-DeviceControl-PolicyGroups-Description-End -->

<!-- Device-Configuration-DeviceControl-PolicyGroups-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-DeviceControl-PolicyGroups-Editable-End -->

<!-- Device-Configuration-DeviceControl-PolicyGroups-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | node |
| Access Type | Get |
<!-- Device-Configuration-DeviceControl-PolicyGroups-DFProperties-End -->

<!-- Device-Configuration-DeviceControl-PolicyGroups-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-DeviceControl-PolicyGroups-Examples-End -->

<!-- Device-Configuration-DeviceControl-PolicyGroups-End -->

<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-Begin -->
##### Configuration/DeviceControl/PolicyGroups/{GroupId}

<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-Applicability-End -->

<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyGroups/{GroupId}
```
<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-OmaUri-End -->

<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-Description-End -->

<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-Editable-End -->

<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | node |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-DFProperties-End -->

<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-Examples-End -->

<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-End -->

<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-GroupData-Begin -->
###### Configuration/DeviceControl/PolicyGroups/{GroupId}/GroupData

<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-GroupData-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-GroupData-Applicability-End -->

<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-GroupData-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyGroups/{GroupId}/GroupData
```
<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-GroupData-OmaUri-End -->

<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-GroupData-Description-Begin -->
<!-- Description-Source-DDF -->
For more information, see [Microsoft Defender for Endpoint Device Control Removable Storage Access Control](/microsoft-365/security/defender-endpoint/device-control-removable-storage-access-control).
<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-GroupData-Description-End -->

<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-GroupData-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-GroupData-Editable-End -->

<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-GroupData-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-GroupData-DFProperties-End -->

<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-GroupData-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-GroupData-Examples-End -->

<!-- Device-Configuration-DeviceControl-PolicyGroups-{GroupId}-GroupData-End -->

<!-- Device-Configuration-DeviceControl-PolicyRules-Begin -->
#### Configuration/DeviceControl/PolicyRules

<!-- Device-Configuration-DeviceControl-PolicyRules-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-Configuration-DeviceControl-PolicyRules-Applicability-End -->

<!-- Device-Configuration-DeviceControl-PolicyRules-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyRules
```
<!-- Device-Configuration-DeviceControl-PolicyRules-OmaUri-End -->

<!-- Device-Configuration-DeviceControl-PolicyRules-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Configuration-DeviceControl-PolicyRules-Description-End -->

<!-- Device-Configuration-DeviceControl-PolicyRules-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-DeviceControl-PolicyRules-Editable-End -->

<!-- Device-Configuration-DeviceControl-PolicyRules-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | node |
| Access Type | Get |
<!-- Device-Configuration-DeviceControl-PolicyRules-DFProperties-End -->

<!-- Device-Configuration-DeviceControl-PolicyRules-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-DeviceControl-PolicyRules-Examples-End -->

<!-- Device-Configuration-DeviceControl-PolicyRules-End -->

<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-Begin -->
##### Configuration/DeviceControl/PolicyRules/{RuleId}

<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-Applicability-End -->

<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyRules/{RuleId}
```
<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-OmaUri-End -->

<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-Description-End -->

<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-Editable-End -->

<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | node |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-DFProperties-End -->

<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-Examples-End -->

<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-End -->

<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-RuleData-Begin -->
###### Configuration/DeviceControl/PolicyRules/{RuleId}/RuleData

<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-RuleData-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-RuleData-Applicability-End -->

<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-RuleData-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/DeviceControl/PolicyRules/{RuleId}/RuleData
```
<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-RuleData-OmaUri-End -->

<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-RuleData-Description-Begin -->
<!-- Description-Source-DDF -->
For more information, see [Microsoft Defender for Endpoint Device Control Removable Storage Access Control](/microsoft-365/security/defender-endpoint/device-control-removable-storage-access-control).
<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-RuleData-Description-End -->

<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-RuleData-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-RuleData-Editable-End -->

<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-RuleData-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-RuleData-DFProperties-End -->

<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-RuleData-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-RuleData-Examples-End -->

<!-- Device-Configuration-DeviceControl-PolicyRules-{RuleId}-RuleData-End -->

<!-- Device-Configuration-DeviceControlEnabled-Begin -->
### Configuration/DeviceControlEnabled

<!-- Device-Configuration-DeviceControlEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-Configuration-DeviceControlEnabled-Applicability-End -->

<!-- Device-Configuration-DeviceControlEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/DeviceControlEnabled
```
<!-- Device-Configuration-DeviceControlEnabled-OmaUri-End -->

<!-- Device-Configuration-DeviceControlEnabled-Description-Begin -->
<!-- Description-Source-DDF -->
Control Device Control feature.
<!-- Device-Configuration-DeviceControlEnabled-Description-End -->

<!-- Device-Configuration-DeviceControlEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-DeviceControlEnabled-Editable-End -->

<!-- Device-Configuration-DeviceControlEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Configuration-DeviceControlEnabled-DFProperties-End -->

<!-- Device-Configuration-DeviceControlEnabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | . |
| 0 (Default) | . |
<!-- Device-Configuration-DeviceControlEnabled-AllowedValues-End -->

<!-- Device-Configuration-DeviceControlEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-DeviceControlEnabled-Examples-End -->

<!-- Device-Configuration-DeviceControlEnabled-End -->

<!-- Device-Configuration-DisableCpuThrottleOnIdleScans-Begin -->
### Configuration/DisableCpuThrottleOnIdleScans

<!-- Device-Configuration-DisableCpuThrottleOnIdleScans-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-DisableCpuThrottleOnIdleScans-Applicability-End -->

<!-- Device-Configuration-DisableCpuThrottleOnIdleScans-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/DisableCpuThrottleOnIdleScans
```
<!-- Device-Configuration-DisableCpuThrottleOnIdleScans-OmaUri-End -->

<!-- Device-Configuration-DisableCpuThrottleOnIdleScans-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates whether the CPU will be throttled for scheduled scans while the device is idle. This feature is enabled by default and will not throttle the CPU for scheduled scans performed when the device is otherwise idle, regardless of what ScanAvgCPULoadFactor is set to. For all other scheduled scans this flag will have no impact and normal throttling will occur.
<!-- Device-Configuration-DisableCpuThrottleOnIdleScans-Description-End -->

<!-- Device-Configuration-DisableCpuThrottleOnIdleScans-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-DisableCpuThrottleOnIdleScans-Editable-End -->

<!-- Device-Configuration-DisableCpuThrottleOnIdleScans-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- Device-Configuration-DisableCpuThrottleOnIdleScans-DFProperties-End -->

<!-- Device-Configuration-DisableCpuThrottleOnIdleScans-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Disable CPU Throttle on idle scans. |
| 0 | Enable CPU Throttle on idle scans. |
<!-- Device-Configuration-DisableCpuThrottleOnIdleScans-AllowedValues-End -->

<!-- Device-Configuration-DisableCpuThrottleOnIdleScans-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-DisableCpuThrottleOnIdleScans-Examples-End -->

<!-- Device-Configuration-DisableCpuThrottleOnIdleScans-End -->

<!-- Device-Configuration-DisableDnsOverTcpParsing-Begin -->
### Configuration/DisableDnsOverTcpParsing

<!-- Device-Configuration-DisableDnsOverTcpParsing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-DisableDnsOverTcpParsing-Applicability-End -->

<!-- Device-Configuration-DisableDnsOverTcpParsing-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/DisableDnsOverTcpParsing
```
<!-- Device-Configuration-DisableDnsOverTcpParsing-OmaUri-End -->

<!-- Device-Configuration-DisableDnsOverTcpParsing-Description-Begin -->
<!-- Description-Source-DDF -->
This setting disables DNS over TCP Parsing for Network Protection.
<!-- Device-Configuration-DisableDnsOverTcpParsing-Description-End -->

<!-- Device-Configuration-DisableDnsOverTcpParsing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-DisableDnsOverTcpParsing-Editable-End -->

<!-- Device-Configuration-DisableDnsOverTcpParsing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Configuration-DisableDnsOverTcpParsing-DFProperties-End -->

<!-- Device-Configuration-DisableDnsOverTcpParsing-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | DNS over TCP parsing is disabled. |
| 0 (Default) | DNS over TCP parsing is enabled. |
<!-- Device-Configuration-DisableDnsOverTcpParsing-AllowedValues-End -->

<!-- Device-Configuration-DisableDnsOverTcpParsing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-DisableDnsOverTcpParsing-Examples-End -->

<!-- Device-Configuration-DisableDnsOverTcpParsing-End -->

<!-- Device-Configuration-DisableDnsParsing-Begin -->
### Configuration/DisableDnsParsing

<!-- Device-Configuration-DisableDnsParsing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-DisableDnsParsing-Applicability-End -->

<!-- Device-Configuration-DisableDnsParsing-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/DisableDnsParsing
```
<!-- Device-Configuration-DisableDnsParsing-OmaUri-End -->

<!-- Device-Configuration-DisableDnsParsing-Description-Begin -->
<!-- Description-Source-DDF -->
This setting disables DNS Parsing for Network Protection.
<!-- Device-Configuration-DisableDnsParsing-Description-End -->

<!-- Device-Configuration-DisableDnsParsing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-DisableDnsParsing-Editable-End -->

<!-- Device-Configuration-DisableDnsParsing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Configuration-DisableDnsParsing-DFProperties-End -->

<!-- Device-Configuration-DisableDnsParsing-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | DNS parsing is disabled. |
| 0 (Default) | DNS parsing is enabled. |
<!-- Device-Configuration-DisableDnsParsing-AllowedValues-End -->

<!-- Device-Configuration-DisableDnsParsing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-DisableDnsParsing-Examples-End -->

<!-- Device-Configuration-DisableDnsParsing-End -->

<!-- Device-Configuration-DisableFtpParsing-Begin -->
### Configuration/DisableFtpParsing

<!-- Device-Configuration-DisableFtpParsing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-DisableFtpParsing-Applicability-End -->

<!-- Device-Configuration-DisableFtpParsing-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/DisableFtpParsing
```
<!-- Device-Configuration-DisableFtpParsing-OmaUri-End -->

<!-- Device-Configuration-DisableFtpParsing-Description-Begin -->
<!-- Description-Source-DDF -->
This setting disables FTP Parsing for Network Protection.
<!-- Device-Configuration-DisableFtpParsing-Description-End -->

<!-- Device-Configuration-DisableFtpParsing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-DisableFtpParsing-Editable-End -->

<!-- Device-Configuration-DisableFtpParsing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Configuration-DisableFtpParsing-DFProperties-End -->

<!-- Device-Configuration-DisableFtpParsing-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | FTP parsing is disabled. |
| 0 (Default) | FTP parsing is enabled. |
<!-- Device-Configuration-DisableFtpParsing-AllowedValues-End -->

<!-- Device-Configuration-DisableFtpParsing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-DisableFtpParsing-Examples-End -->

<!-- Device-Configuration-DisableFtpParsing-End -->

<!-- Device-Configuration-DisableGradualRelease-Begin -->
### Configuration/DisableGradualRelease

<!-- Device-Configuration-DisableGradualRelease-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-DisableGradualRelease-Applicability-End -->

<!-- Device-Configuration-DisableGradualRelease-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/DisableGradualRelease
```
<!-- Device-Configuration-DisableGradualRelease-OmaUri-End -->

<!-- Device-Configuration-DisableGradualRelease-Description-Begin -->
<!-- Description-Source-DDF -->
Enable this policy to disable gradual rollout of Defender updates.
<!-- Device-Configuration-DisableGradualRelease-Description-End -->

<!-- Device-Configuration-DisableGradualRelease-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-DisableGradualRelease-Editable-End -->

<!-- Device-Configuration-DisableGradualRelease-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Configuration-DisableGradualRelease-DFProperties-End -->

<!-- Device-Configuration-DisableGradualRelease-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Gradual release is disabled. |
| 0 (Default) | Gradual release is enabled. |
<!-- Device-Configuration-DisableGradualRelease-AllowedValues-End -->

<!-- Device-Configuration-DisableGradualRelease-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-DisableGradualRelease-Examples-End -->

<!-- Device-Configuration-DisableGradualRelease-End -->

<!-- Device-Configuration-DisableHttpParsing-Begin -->
### Configuration/DisableHttpParsing

<!-- Device-Configuration-DisableHttpParsing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-DisableHttpParsing-Applicability-End -->

<!-- Device-Configuration-DisableHttpParsing-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/DisableHttpParsing
```
<!-- Device-Configuration-DisableHttpParsing-OmaUri-End -->

<!-- Device-Configuration-DisableHttpParsing-Description-Begin -->
<!-- Description-Source-DDF -->
This setting disables HTTP Parsing for Network Protection.
<!-- Device-Configuration-DisableHttpParsing-Description-End -->

<!-- Device-Configuration-DisableHttpParsing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-DisableHttpParsing-Editable-End -->

<!-- Device-Configuration-DisableHttpParsing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Configuration-DisableHttpParsing-DFProperties-End -->

<!-- Device-Configuration-DisableHttpParsing-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | HTTP parsing is disabled. |
| 0 (Default) | HTTP parsing is enabled. |
<!-- Device-Configuration-DisableHttpParsing-AllowedValues-End -->

<!-- Device-Configuration-DisableHttpParsing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-DisableHttpParsing-Examples-End -->

<!-- Device-Configuration-DisableHttpParsing-End -->

<!-- Device-Configuration-DisableInboundConnectionFiltering-Begin -->
### Configuration/DisableInboundConnectionFiltering

<!-- Device-Configuration-DisableInboundConnectionFiltering-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-DisableInboundConnectionFiltering-Applicability-End -->

<!-- Device-Configuration-DisableInboundConnectionFiltering-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/DisableInboundConnectionFiltering
```
<!-- Device-Configuration-DisableInboundConnectionFiltering-OmaUri-End -->

<!-- Device-Configuration-DisableInboundConnectionFiltering-Description-Begin -->
<!-- Description-Source-DDF -->
This setting disables Inbound connection filtering for Network Protection.
<!-- Device-Configuration-DisableInboundConnectionFiltering-Description-End -->

<!-- Device-Configuration-DisableInboundConnectionFiltering-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-DisableInboundConnectionFiltering-Editable-End -->

<!-- Device-Configuration-DisableInboundConnectionFiltering-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Configuration-DisableInboundConnectionFiltering-DFProperties-End -->

<!-- Device-Configuration-DisableInboundConnectionFiltering-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Inbound connection filtering is disabled. |
| 0 (Default) | Inbound connection filtering is enabled. |
<!-- Device-Configuration-DisableInboundConnectionFiltering-AllowedValues-End -->

<!-- Device-Configuration-DisableInboundConnectionFiltering-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-DisableInboundConnectionFiltering-Examples-End -->

<!-- Device-Configuration-DisableInboundConnectionFiltering-End -->

<!-- Device-Configuration-DisableLocalAdminMerge-Begin -->
### Configuration/DisableLocalAdminMerge

<!-- Device-Configuration-DisableLocalAdminMerge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-DisableLocalAdminMerge-Applicability-End -->

<!-- Device-Configuration-DisableLocalAdminMerge-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/DisableLocalAdminMerge
```
<!-- Device-Configuration-DisableLocalAdminMerge-OmaUri-End -->

<!-- Device-Configuration-DisableLocalAdminMerge-Description-Begin -->
<!-- Description-Source-DDF -->
When this value is set to false, it allows a local admin the ability to specify some settings for complex list type that will then merge /override the Preference settings with the Policy settings.
<!-- Device-Configuration-DisableLocalAdminMerge-Description-End -->

<!-- Device-Configuration-DisableLocalAdminMerge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-DisableLocalAdminMerge-Editable-End -->

<!-- Device-Configuration-DisableLocalAdminMerge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Configuration-DisableLocalAdminMerge-DFProperties-End -->

<!-- Device-Configuration-DisableLocalAdminMerge-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Disable Local Admin Merge. |
| 0 (Default) | Enable Local Admin Merge. |
<!-- Device-Configuration-DisableLocalAdminMerge-AllowedValues-End -->

<!-- Device-Configuration-DisableLocalAdminMerge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-DisableLocalAdminMerge-Examples-End -->

<!-- Device-Configuration-DisableLocalAdminMerge-End -->

<!-- Device-Configuration-DisableNetworkProtectionPerfTelemetry-Begin -->
### Configuration/DisableNetworkProtectionPerfTelemetry

<!-- Device-Configuration-DisableNetworkProtectionPerfTelemetry-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-DisableNetworkProtectionPerfTelemetry-Applicability-End -->

<!-- Device-Configuration-DisableNetworkProtectionPerfTelemetry-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/DisableNetworkProtectionPerfTelemetry
```
<!-- Device-Configuration-DisableNetworkProtectionPerfTelemetry-OmaUri-End -->

<!-- Device-Configuration-DisableNetworkProtectionPerfTelemetry-Description-Begin -->
<!-- Description-Source-DDF -->
This setting disables the gathering and send of performance telemetry from Network Protection.
<!-- Device-Configuration-DisableNetworkProtectionPerfTelemetry-Description-End -->

<!-- Device-Configuration-DisableNetworkProtectionPerfTelemetry-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-DisableNetworkProtectionPerfTelemetry-Editable-End -->

<!-- Device-Configuration-DisableNetworkProtectionPerfTelemetry-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Configuration-DisableNetworkProtectionPerfTelemetry-DFProperties-End -->

<!-- Device-Configuration-DisableNetworkProtectionPerfTelemetry-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Network protection telemetry is disabled. |
| 0 (Default) | Network protection telemetry is enabled. |
<!-- Device-Configuration-DisableNetworkProtectionPerfTelemetry-AllowedValues-End -->

<!-- Device-Configuration-DisableNetworkProtectionPerfTelemetry-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-DisableNetworkProtectionPerfTelemetry-Examples-End -->

<!-- Device-Configuration-DisableNetworkProtectionPerfTelemetry-End -->

<!-- Device-Configuration-DisableRdpParsing-Begin -->
### Configuration/DisableRdpParsing

<!-- Device-Configuration-DisableRdpParsing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-DisableRdpParsing-Applicability-End -->

<!-- Device-Configuration-DisableRdpParsing-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/DisableRdpParsing
```
<!-- Device-Configuration-DisableRdpParsing-OmaUri-End -->

<!-- Device-Configuration-DisableRdpParsing-Description-Begin -->
<!-- Description-Source-DDF -->
This setting disables RDP Parsing for Network Protection.
<!-- Device-Configuration-DisableRdpParsing-Description-End -->

<!-- Device-Configuration-DisableRdpParsing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-DisableRdpParsing-Editable-End -->

<!-- Device-Configuration-DisableRdpParsing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Configuration-DisableRdpParsing-DFProperties-End -->

<!-- Device-Configuration-DisableRdpParsing-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | RDP Parsing is disabled. |
| 0 (Default) | RDP Parsing is enabled. |
<!-- Device-Configuration-DisableRdpParsing-AllowedValues-End -->

<!-- Device-Configuration-DisableRdpParsing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-DisableRdpParsing-Examples-End -->

<!-- Device-Configuration-DisableRdpParsing-End -->

<!-- Device-Configuration-DisableSmtpParsing-Begin -->
### Configuration/DisableSmtpParsing

<!-- Device-Configuration-DisableSmtpParsing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-DisableSmtpParsing-Applicability-End -->

<!-- Device-Configuration-DisableSmtpParsing-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/DisableSmtpParsing
```
<!-- Device-Configuration-DisableSmtpParsing-OmaUri-End -->

<!-- Device-Configuration-DisableSmtpParsing-Description-Begin -->
<!-- Description-Source-DDF -->
This setting disables SMTP Parsing for Network Protection.
<!-- Device-Configuration-DisableSmtpParsing-Description-End -->

<!-- Device-Configuration-DisableSmtpParsing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-DisableSmtpParsing-Editable-End -->

<!-- Device-Configuration-DisableSmtpParsing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Configuration-DisableSmtpParsing-DFProperties-End -->

<!-- Device-Configuration-DisableSmtpParsing-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | SMTP parsing is disabled. |
| 0 (Default) | SMTP parsing is enabled. |
<!-- Device-Configuration-DisableSmtpParsing-AllowedValues-End -->

<!-- Device-Configuration-DisableSmtpParsing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-DisableSmtpParsing-Examples-End -->

<!-- Device-Configuration-DisableSmtpParsing-End -->

<!-- Device-Configuration-DisableSshParsing-Begin -->
### Configuration/DisableSshParsing

<!-- Device-Configuration-DisableSshParsing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-DisableSshParsing-Applicability-End -->

<!-- Device-Configuration-DisableSshParsing-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/DisableSshParsing
```
<!-- Device-Configuration-DisableSshParsing-OmaUri-End -->

<!-- Device-Configuration-DisableSshParsing-Description-Begin -->
<!-- Description-Source-DDF -->
This setting disables SSH Parsing for Network Protection.
<!-- Device-Configuration-DisableSshParsing-Description-End -->

<!-- Device-Configuration-DisableSshParsing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-DisableSshParsing-Editable-End -->

<!-- Device-Configuration-DisableSshParsing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Configuration-DisableSshParsing-DFProperties-End -->

<!-- Device-Configuration-DisableSshParsing-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | SSH parsing is disabled. |
| 0 (Default) | SSH parsing is enabled. |
<!-- Device-Configuration-DisableSshParsing-AllowedValues-End -->

<!-- Device-Configuration-DisableSshParsing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-DisableSshParsing-Examples-End -->

<!-- Device-Configuration-DisableSshParsing-End -->

<!-- Device-Configuration-DisableTlsParsing-Begin -->
### Configuration/DisableTlsParsing

<!-- Device-Configuration-DisableTlsParsing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-DisableTlsParsing-Applicability-End -->

<!-- Device-Configuration-DisableTlsParsing-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/DisableTlsParsing
```
<!-- Device-Configuration-DisableTlsParsing-OmaUri-End -->

<!-- Device-Configuration-DisableTlsParsing-Description-Begin -->
<!-- Description-Source-DDF -->
This setting disables TLS Parsing for Network Protection.
<!-- Device-Configuration-DisableTlsParsing-Description-End -->

<!-- Device-Configuration-DisableTlsParsing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-DisableTlsParsing-Editable-End -->

<!-- Device-Configuration-DisableTlsParsing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Configuration-DisableTlsParsing-DFProperties-End -->

<!-- Device-Configuration-DisableTlsParsing-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | TLS parsing is disabled. |
| 0 (Default) | TLS parsing is enabled. |
<!-- Device-Configuration-DisableTlsParsing-AllowedValues-End -->

<!-- Device-Configuration-DisableTlsParsing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-DisableTlsParsing-Examples-End -->

<!-- Device-Configuration-DisableTlsParsing-End -->

<!-- Device-Configuration-EnableDnsSinkhole-Begin -->
### Configuration/EnableDnsSinkhole

<!-- Device-Configuration-EnableDnsSinkhole-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-EnableDnsSinkhole-Applicability-End -->

<!-- Device-Configuration-EnableDnsSinkhole-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/EnableDnsSinkhole
```
<!-- Device-Configuration-EnableDnsSinkhole-OmaUri-End -->

<!-- Device-Configuration-EnableDnsSinkhole-Description-Begin -->
<!-- Description-Source-DDF -->
This setting enables the DNS Sinkhole feature for Network Protection, respecting the value of EnableNetworkProtection for block vs audit, does nothing in inspect mode.
<!-- Device-Configuration-EnableDnsSinkhole-Description-End -->

<!-- Device-Configuration-EnableDnsSinkhole-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-EnableDnsSinkhole-Editable-End -->

<!-- Device-Configuration-EnableDnsSinkhole-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- Device-Configuration-EnableDnsSinkhole-DFProperties-End -->

<!-- Device-Configuration-EnableDnsSinkhole-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | DNS Sinkhole is disabled. |
| 0 | DNS Sinkhole is enabled. |
<!-- Device-Configuration-EnableDnsSinkhole-AllowedValues-End -->

<!-- Device-Configuration-EnableDnsSinkhole-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-EnableDnsSinkhole-Examples-End -->

<!-- Device-Configuration-EnableDnsSinkhole-End -->

<!-- Device-Configuration-EnableFileHashComputation-Begin -->
### Configuration/EnableFileHashComputation

<!-- Device-Configuration-EnableFileHashComputation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Configuration-EnableFileHashComputation-Applicability-End -->

<!-- Device-Configuration-EnableFileHashComputation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/EnableFileHashComputation
```
<!-- Device-Configuration-EnableFileHashComputation-OmaUri-End -->

<!-- Device-Configuration-EnableFileHashComputation-Description-Begin -->
<!-- Description-Source-DDF -->
Enables or disables file hash computation feature. When this feature is enabled Windows defender will compute hashes for files it scans.
<!-- Device-Configuration-EnableFileHashComputation-Description-End -->

<!-- Device-Configuration-EnableFileHashComputation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-EnableFileHashComputation-Editable-End -->

<!-- Device-Configuration-EnableFileHashComputation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Configuration-EnableFileHashComputation-DFProperties-End -->

<!-- Device-Configuration-EnableFileHashComputation-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disable. |
| 1 | Enable. |
<!-- Device-Configuration-EnableFileHashComputation-AllowedValues-End -->

<!-- Device-Configuration-EnableFileHashComputation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-EnableFileHashComputation-Examples-End -->

<!-- Device-Configuration-EnableFileHashComputation-End -->

<!-- Device-Configuration-EngineUpdatesChannel-Begin -->
### Configuration/EngineUpdatesChannel

<!-- Device-Configuration-EngineUpdatesChannel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-EngineUpdatesChannel-Applicability-End -->

<!-- Device-Configuration-EngineUpdatesChannel-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/EngineUpdatesChannel
```
<!-- Device-Configuration-EngineUpdatesChannel-OmaUri-End -->

<!-- Device-Configuration-EngineUpdatesChannel-Description-Begin -->
<!-- Description-Source-DDF -->
Enable this policy to specify when devices receive Microsoft Defender engine updates during the monthly gradual rollout.
<!-- Device-Configuration-EngineUpdatesChannel-Description-End -->

<!-- Device-Configuration-EngineUpdatesChannel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-EngineUpdatesChannel-Editable-End -->

<!-- Device-Configuration-EngineUpdatesChannel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Configuration-EngineUpdatesChannel-DFProperties-End -->

<!-- Device-Configuration-EngineUpdatesChannel-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not configured (Default). The device will stay up to date automatically during the gradual release cycle. Suitable for most devices. |
| 2 | Beta Channel: Devices set to this channel will be the first to receive new updates. Select Beta Channel to participate in identifying and reporting issues to Microsoft. Devices in the Windows Insider Program are subscribed to this channel by default. For use in (manual) test environments only and a limited number of devices. |
| 3 | Current Channel (Preview): Devices set to this channel will be offered updates earliest during the monthly gradual release cycle. Suggested for pre-production/validation environments. |
| 4 | Current Channel (Staged): Devices will be offered updates after the monthly gradual release cycle. Suggested to apply to a small, representative part of your production population (~10%). |
| 5 | Current Channel (Broad): Devices will be offered updates only after the gradual release cycle completes. Suggested to apply to a broad set of devices in your production population (~10-100%). |
| 6 | Critical - Time delay: Devices will be offered updates with a 48-hour delay. Suggested for critical environments only. |
<!-- Device-Configuration-EngineUpdatesChannel-AllowedValues-End -->

<!-- Device-Configuration-EngineUpdatesChannel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-EngineUpdatesChannel-Examples-End -->

<!-- Device-Configuration-EngineUpdatesChannel-End -->

<!-- Device-Configuration-HideExclusionsFromLocalAdmins-Begin -->
### Configuration/HideExclusionsFromLocalAdmins

<!-- Device-Configuration-HideExclusionsFromLocalAdmins-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-Configuration-HideExclusionsFromLocalAdmins-Applicability-End -->

<!-- Device-Configuration-HideExclusionsFromLocalAdmins-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/HideExclusionsFromLocalAdmins
```
<!-- Device-Configuration-HideExclusionsFromLocalAdmins-OmaUri-End -->

<!-- Device-Configuration-HideExclusionsFromLocalAdmins-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting controls whether or not exclusions are visible to local admins. To control local users exclusions visibility use HideExclusionsFromLocalUsers. If HideExclusionsFromLocalAdmins is set then HideExclusionsFromLocalUsers will be implicitly set.
<!-- Device-Configuration-HideExclusionsFromLocalAdmins-Description-End -->

<!-- Device-Configuration-HideExclusionsFromLocalAdmins-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Applying this setting won't remove exclusions from the device registry, it will only prevent them from being applied/used. This is reflected in Get-MpPreference.
<!-- Device-Configuration-HideExclusionsFromLocalAdmins-Editable-End -->

<!-- Device-Configuration-HideExclusionsFromLocalAdmins-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Configuration-HideExclusionsFromLocalAdmins-DFProperties-End -->

<!-- Device-Configuration-HideExclusionsFromLocalAdmins-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | If you enable this setting, local admins will no longer be able to see the exclusion list in Windows Security App or via PowerShell. |
| 0 (Default) | If you disable or do not configure this setting, local admins will be able to see exclusions in the Windows Security App and via PowerShell. |
<!-- Device-Configuration-HideExclusionsFromLocalAdmins-AllowedValues-End -->

<!-- Device-Configuration-HideExclusionsFromLocalAdmins-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-HideExclusionsFromLocalAdmins-Examples-End -->

<!-- Device-Configuration-HideExclusionsFromLocalAdmins-End -->

<!-- Device-Configuration-HideExclusionsFromLocalUsers-Begin -->
### Configuration/HideExclusionsFromLocalUsers

<!-- Device-Configuration-HideExclusionsFromLocalUsers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-Configuration-HideExclusionsFromLocalUsers-Applicability-End -->

<!-- Device-Configuration-HideExclusionsFromLocalUsers-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/HideExclusionsFromLocalUsers
```
<!-- Device-Configuration-HideExclusionsFromLocalUsers-OmaUri-End -->

<!-- Device-Configuration-HideExclusionsFromLocalUsers-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting controls whether or not exclusions are visible to local users. If HideExclusionsFromLocalAdmins is set then this policy will be implicitly set.
<!-- Device-Configuration-HideExclusionsFromLocalUsers-Description-End -->

<!-- Device-Configuration-HideExclusionsFromLocalUsers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-HideExclusionsFromLocalUsers-Editable-End -->

<!-- Device-Configuration-HideExclusionsFromLocalUsers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Configuration-HideExclusionsFromLocalUsers-DFProperties-End -->

<!-- Device-Configuration-HideExclusionsFromLocalUsers-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | If you enable this setting, local users will no longer be able to see the exclusion list in Windows Security App or via PowerShell. |
| 0 (Default) | If you disable or do not configure this setting, local users will be able to see exclusions in the Windows Security App and via PowerShell. |
<!-- Device-Configuration-HideExclusionsFromLocalUsers-AllowedValues-End -->

<!-- Device-Configuration-HideExclusionsFromLocalUsers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-HideExclusionsFromLocalUsers-Examples-End -->

<!-- Device-Configuration-HideExclusionsFromLocalUsers-End -->

<!-- Device-Configuration-IntelTDTEnabled-Begin -->
### Configuration/IntelTDTEnabled

<!-- Device-Configuration-IntelTDTEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041] and later |
<!-- Device-Configuration-IntelTDTEnabled-Applicability-End -->

<!-- Device-Configuration-IntelTDTEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/IntelTDTEnabled
```
<!-- Device-Configuration-IntelTDTEnabled-OmaUri-End -->

<!-- Device-Configuration-IntelTDTEnabled-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting configures the Intel TDT integration level for Intel TDT-capable devices.
<!-- Device-Configuration-IntelTDTEnabled-Description-End -->

<!-- Device-Configuration-IntelTDTEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-IntelTDTEnabled-Editable-End -->

<!-- Device-Configuration-IntelTDTEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Configuration-IntelTDTEnabled-DFProperties-End -->

<!-- Device-Configuration-IntelTDTEnabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | If you do not configure this setting, the default value will be applied. The default value is controlled by Microsoft security intelligence updates. Microsoft will enable Intel TDT if there is a known threat. |
| 1 | If you configure this setting to enabled, Intel TDT integration will turn on. |
| 2 | If you configure this setting to disabled, Intel TDT integration will turn off. |
<!-- Device-Configuration-IntelTDTEnabled-AllowedValues-End -->

<!-- Device-Configuration-IntelTDTEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-IntelTDTEnabled-Examples-End -->

<!-- Device-Configuration-IntelTDTEnabled-End -->

<!-- Device-Configuration-MeteredConnectionUpdates-Begin -->
### Configuration/MeteredConnectionUpdates

<!-- Device-Configuration-MeteredConnectionUpdates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-MeteredConnectionUpdates-Applicability-End -->

<!-- Device-Configuration-MeteredConnectionUpdates-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/MeteredConnectionUpdates
```
<!-- Device-Configuration-MeteredConnectionUpdates-OmaUri-End -->

<!-- Device-Configuration-MeteredConnectionUpdates-Description-Begin -->
<!-- Description-Source-DDF -->
Allow managed devices to update through metered connections. Default is 0 - not allowed, 1 - allowed.
<!-- Device-Configuration-MeteredConnectionUpdates-Description-End -->

<!-- Device-Configuration-MeteredConnectionUpdates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-MeteredConnectionUpdates-Editable-End -->

<!-- Device-Configuration-MeteredConnectionUpdates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Configuration-MeteredConnectionUpdates-DFProperties-End -->

<!-- Device-Configuration-MeteredConnectionUpdates-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Allowed. |
| 0 (Default) | Not Allowed. |
<!-- Device-Configuration-MeteredConnectionUpdates-AllowedValues-End -->

<!-- Device-Configuration-MeteredConnectionUpdates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-MeteredConnectionUpdates-Examples-End -->

<!-- Device-Configuration-MeteredConnectionUpdates-End -->

<!-- Device-Configuration-PassiveRemediation-Begin -->
### Configuration/PassiveRemediation

<!-- Device-Configuration-PassiveRemediation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-PassiveRemediation-Applicability-End -->

<!-- Device-Configuration-PassiveRemediation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/PassiveRemediation
```
<!-- Device-Configuration-PassiveRemediation-OmaUri-End -->

<!-- Device-Configuration-PassiveRemediation-Description-Begin -->
<!-- Description-Source-DDF -->
Setting to control automatic remediation for Sense scans.
<!-- Device-Configuration-PassiveRemediation-Description-End -->

<!-- Device-Configuration-PassiveRemediation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-PassiveRemediation-Editable-End -->

<!-- Device-Configuration-PassiveRemediation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Configuration-PassiveRemediation-DFProperties-End -->

<!-- Device-Configuration-PassiveRemediation-AllowedValues-Begin -->
**Allowed values**:

| Flag | Description |
|:--|:--|
| 0x1 | PASSIVE_REMEDIATION_FLAG_SENSE_AUTO_REMEDIATION: Passive Remediation Sense AutoRemediation. |
| 0x2 | PASSIVE_REMEDIATION_FLAG_RTP_AUDIT: Passive Remediation Realtime Protection Audit. |
| 0x4 | PASSIVE_REMEDIATION_FLAG_RTP_REMEDIATION: Passive Remediation Realtime Protection Remediation. |
<!-- Device-Configuration-PassiveRemediation-AllowedValues-End -->

<!-- Device-Configuration-PassiveRemediation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-PassiveRemediation-Examples-End -->

<!-- Device-Configuration-PassiveRemediation-End -->

<!-- Device-Configuration-PlatformUpdatesChannel-Begin -->
### Configuration/PlatformUpdatesChannel

<!-- Device-Configuration-PlatformUpdatesChannel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-PlatformUpdatesChannel-Applicability-End -->

<!-- Device-Configuration-PlatformUpdatesChannel-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/PlatformUpdatesChannel
```
<!-- Device-Configuration-PlatformUpdatesChannel-OmaUri-End -->

<!-- Device-Configuration-PlatformUpdatesChannel-Description-Begin -->
<!-- Description-Source-DDF -->
Enable this policy to specify when devices receive Microsoft Defender platform updates during the monthly gradual rollout.
<!-- Device-Configuration-PlatformUpdatesChannel-Description-End -->

<!-- Device-Configuration-PlatformUpdatesChannel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-PlatformUpdatesChannel-Editable-End -->

<!-- Device-Configuration-PlatformUpdatesChannel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Configuration-PlatformUpdatesChannel-DFProperties-End -->

<!-- Device-Configuration-PlatformUpdatesChannel-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not configured (Default). The device will stay up to date automatically during the gradual release cycle. Suitable for most devices. |
| 2 | Beta Channel: Devices set to this channel will be the first to receive new updates. Select Beta Channel to participate in identifying and reporting issues to Microsoft. Devices in the Windows Insider Program are subscribed to this channel by default. For use in (manual) test environments only and a limited number of devices. |
| 3 | Current Channel (Preview): Devices set to this channel will be offered updates earliest during the monthly gradual release cycle. Suggested for pre-production/validation environments. |
| 4 | Current Channel (Staged): Devices will be offered updates after the monthly gradual release cycle. Suggested to apply to a small, representative part of your production population (~10%). |
| 5 | Current Channel (Broad): Devices will be offered updates only after the gradual release cycle completes. Suggested to apply to a broad set of devices in your production population (~10-100%). |
| 6 | Critical - Time delay: Devices will be offered updates with a 48-hour delay. Suggested for critical environments only. |
<!-- Device-Configuration-PlatformUpdatesChannel-AllowedValues-End -->

<!-- Device-Configuration-PlatformUpdatesChannel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-PlatformUpdatesChannel-Examples-End -->

<!-- Device-Configuration-PlatformUpdatesChannel-End -->

<!-- Device-Configuration-RandomizeScheduleTaskTimes-Begin -->
### Configuration/RandomizeScheduleTaskTimes

<!-- Device-Configuration-RandomizeScheduleTaskTimes-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-RandomizeScheduleTaskTimes-Applicability-End -->

<!-- Device-Configuration-RandomizeScheduleTaskTimes-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/RandomizeScheduleTaskTimes
```
<!-- Device-Configuration-RandomizeScheduleTaskTimes-OmaUri-End -->

<!-- Device-Configuration-RandomizeScheduleTaskTimes-Description-Begin -->
<!-- Description-Source-DDF -->
In Microsoft Defender Antivirus, randomize the start time of the scan to any interval from 0 to 23 hours. This can be useful in virtual machines or VDI deployments.
<!-- Device-Configuration-RandomizeScheduleTaskTimes-Description-End -->

<!-- Device-Configuration-RandomizeScheduleTaskTimes-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-RandomizeScheduleTaskTimes-Editable-End -->

<!-- Device-Configuration-RandomizeScheduleTaskTimes-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- Device-Configuration-RandomizeScheduleTaskTimes-DFProperties-End -->

<!-- Device-Configuration-RandomizeScheduleTaskTimes-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Widen or narrow the randomization period for scheduled scans. Specify a randomization window of between 1 and 23 hours by using the setting SchedulerRandomizationTime. |
| 0 | Scheduled tasks will begin at a random time within 4 hours after the time specified in Task Scheduler. |
<!-- Device-Configuration-RandomizeScheduleTaskTimes-AllowedValues-End -->

<!-- Device-Configuration-RandomizeScheduleTaskTimes-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-RandomizeScheduleTaskTimes-Examples-End -->

<!-- Device-Configuration-RandomizeScheduleTaskTimes-End -->

<!-- Device-Configuration-ScanOnlyIfIdleEnabled-Begin -->
### Configuration/ScanOnlyIfIdleEnabled

<!-- Device-Configuration-ScanOnlyIfIdleEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-ScanOnlyIfIdleEnabled-Applicability-End -->

<!-- Device-Configuration-ScanOnlyIfIdleEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/ScanOnlyIfIdleEnabled
```
<!-- Device-Configuration-ScanOnlyIfIdleEnabled-OmaUri-End -->

<!-- Device-Configuration-ScanOnlyIfIdleEnabled-Description-Begin -->
<!-- Description-Source-DDF -->
In Microsoft Defender Antivirus, this setting will run scheduled scans only if the system is idle.
<!-- Device-Configuration-ScanOnlyIfIdleEnabled-Description-End -->

<!-- Device-Configuration-ScanOnlyIfIdleEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-ScanOnlyIfIdleEnabled-Editable-End -->

<!-- Device-Configuration-ScanOnlyIfIdleEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- Device-Configuration-ScanOnlyIfIdleEnabled-DFProperties-End -->

<!-- Device-Configuration-ScanOnlyIfIdleEnabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Runs scheduled scans only if the system is idle. |
| 0 | Runs scheduled scans regardless of whether the system is idle. |
<!-- Device-Configuration-ScanOnlyIfIdleEnabled-AllowedValues-End -->

<!-- Device-Configuration-ScanOnlyIfIdleEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-ScanOnlyIfIdleEnabled-Examples-End -->

<!-- Device-Configuration-ScanOnlyIfIdleEnabled-End -->

<!-- Device-Configuration-SchedulerRandomizationTime-Begin -->
### Configuration/SchedulerRandomizationTime

<!-- Device-Configuration-SchedulerRandomizationTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-SchedulerRandomizationTime-Applicability-End -->

<!-- Device-Configuration-SchedulerRandomizationTime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/SchedulerRandomizationTime
```
<!-- Device-Configuration-SchedulerRandomizationTime-OmaUri-End -->

<!-- Device-Configuration-SchedulerRandomizationTime-Description-Begin -->
<!-- Description-Source-DDF -->
This setting allows you to configure the scheduler randomization in hours. The randomization interval is [1 - 23] hours. For more information on the randomization effect please check the RandomizeScheduleTaskTimes setting.
<!-- Device-Configuration-SchedulerRandomizationTime-Description-End -->

<!-- Device-Configuration-SchedulerRandomizationTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-SchedulerRandomizationTime-Editable-End -->

<!-- Device-Configuration-SchedulerRandomizationTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[1-23]` |
| Default Value  | 4 |
<!-- Device-Configuration-SchedulerRandomizationTime-DFProperties-End -->

<!-- Device-Configuration-SchedulerRandomizationTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-SchedulerRandomizationTime-Examples-End -->

<!-- Device-Configuration-SchedulerRandomizationTime-End -->

<!-- Device-Configuration-SecuredDevicesConfiguration-Begin -->
### Configuration/SecuredDevicesConfiguration

<!-- Device-Configuration-SecuredDevicesConfiguration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-Configuration-SecuredDevicesConfiguration-Applicability-End -->

<!-- Device-Configuration-SecuredDevicesConfiguration-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/SecuredDevicesConfiguration
```
<!-- Device-Configuration-SecuredDevicesConfiguration-OmaUri-End -->

<!-- Device-Configuration-SecuredDevicesConfiguration-Description-Begin -->
<!-- Description-Source-DDF -->
Defines what are the devices primary ids that should be secured by Defender Device Control. The primary id values should be pipe (|) separated. Example: RemovableMediaDevices|CdRomDevices. If this configuration is not set the default value will be applied, meaning all of the supported devices will be secured.
<!-- Device-Configuration-SecuredDevicesConfiguration-Description-End -->

<!-- Device-Configuration-SecuredDevicesConfiguration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-SecuredDevicesConfiguration-Editable-End -->

<!-- Device-Configuration-SecuredDevicesConfiguration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Configuration-SecuredDevicesConfiguration-DFProperties-End -->

<!-- Device-Configuration-SecuredDevicesConfiguration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-SecuredDevicesConfiguration-Examples-End -->

<!-- Device-Configuration-SecuredDevicesConfiguration-End -->

<!-- Device-Configuration-SecurityIntelligenceUpdatesChannel-Begin -->
### Configuration/SecurityIntelligenceUpdatesChannel

<!-- Device-Configuration-SecurityIntelligenceUpdatesChannel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-SecurityIntelligenceUpdatesChannel-Applicability-End -->

<!-- Device-Configuration-SecurityIntelligenceUpdatesChannel-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/SecurityIntelligenceUpdatesChannel
```
<!-- Device-Configuration-SecurityIntelligenceUpdatesChannel-OmaUri-End -->

<!-- Device-Configuration-SecurityIntelligenceUpdatesChannel-Description-Begin -->
<!-- Description-Source-DDF -->
Enable this policy to specify when devices receive Microsoft Defender security intelligence updates during the daily gradual rollout.
<!-- Device-Configuration-SecurityIntelligenceUpdatesChannel-Description-End -->

<!-- Device-Configuration-SecurityIntelligenceUpdatesChannel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-SecurityIntelligenceUpdatesChannel-Editable-End -->

<!-- Device-Configuration-SecurityIntelligenceUpdatesChannel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Configuration-SecurityIntelligenceUpdatesChannel-DFProperties-End -->

<!-- Device-Configuration-SecurityIntelligenceUpdatesChannel-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not configured (Default). The device will stay up to date automatically during the gradual release cycle. Suitable for most devices. |
| 4 | Current Channel (Staged): Devices will be offered updates after the release cycle. Suggested to apply to a small, representative part of production population (~10%). |
| 5 | Current Channel (Broad): Devices will be offered updates only after the gradual release cycle completes. Suggested to apply to a broad set of devices in your production population (~10-100%). |
<!-- Device-Configuration-SecurityIntelligenceUpdatesChannel-AllowedValues-End -->

<!-- Device-Configuration-SecurityIntelligenceUpdatesChannel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-SecurityIntelligenceUpdatesChannel-Examples-End -->

<!-- Device-Configuration-SecurityIntelligenceUpdatesChannel-End -->

<!-- Device-Configuration-SupportLogLocation-Begin -->
### Configuration/SupportLogLocation

<!-- Device-Configuration-SupportLogLocation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-SupportLogLocation-Applicability-End -->

<!-- Device-Configuration-SupportLogLocation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/SupportLogLocation
```
<!-- Device-Configuration-SupportLogLocation-OmaUri-End -->

<!-- Device-Configuration-SupportLogLocation-Description-Begin -->
<!-- Description-Source-DDF -->
The support log location setting allows the administrator to specify where the Microsoft Defender Antivirus diagnostic data collection tool (MpCmdRun.exe) will save the resulting log files. This setting is configured with an MDM solution, such as Intune, and is available for Windows 10 Enterprise.
<!-- Device-Configuration-SupportLogLocation-Description-End -->

<!-- Device-Configuration-SupportLogLocation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Intune Support Log Location setting UI supports three states:

- Not configured (default) - Doesn't have any impact on the default state of the device.
- 1 - Enabled. Enables the Support log location feature. Requires admin to set custom file path.
- 0 - Disabled. Turns off the Support log location feature.

When enabled or disabled exists on the client and admin moves the setting to not configured, it won't have any impact on the device state. To change the state to either enabled or disabled would require to be set explicitly.

More details:

- [Microsoft Defender Antivirus diagnostic data](/microsoft-365/security/defender-endpoint/collect-diagnostic-data)
- [Collect investigation package from devices](/microsoft-365/security/defender-endpoint/respond-machine-alerts#collect-investigation-package-from-devices)
<!-- Device-Configuration-SupportLogLocation-Editable-End -->

<!-- Device-Configuration-SupportLogLocation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Configuration-SupportLogLocation-DFProperties-End -->

<!-- Device-Configuration-SupportLogLocation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-SupportLogLocation-Examples-End -->

<!-- Device-Configuration-SupportLogLocation-End -->

<!-- Device-Configuration-TamperProtection-Begin -->
### Configuration/TamperProtection

<!-- Device-Configuration-TamperProtection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Configuration-TamperProtection-Applicability-End -->

<!-- Device-Configuration-TamperProtection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/TamperProtection
```
<!-- Device-Configuration-TamperProtection-OmaUri-End -->

<!-- Device-Configuration-TamperProtection-Description-Begin -->
<!-- Description-Source-DDF -->
Tamper protection helps protect important security features from unwanted changes and interference. This includes real-time protection, behavior monitoring, and more. Accepts signed string to turn the feature on or off. Settings are configured with an MDM solution, such as Intune and is available in Windows 10 Enterprise E5 or equivalent subscriptions. Send off blob to device to reset tamper protection state before setting this configuration to "not configured" or "unassigned" in Intune. The data type is a Signed blob.
<!-- Device-Configuration-TamperProtection-Description-End -->

<!-- Device-Configuration-TamperProtection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-TamperProtection-Editable-End -->

<!-- Device-Configuration-TamperProtection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Configuration-TamperProtection-DFProperties-End -->

<!-- Device-Configuration-TamperProtection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-TamperProtection-Examples-End -->

<!-- Device-Configuration-TamperProtection-End -->

<!-- Device-Configuration-ThrottleForScheduledScanOnly-Begin -->
### Configuration/ThrottleForScheduledScanOnly

<!-- Device-Configuration-ThrottleForScheduledScanOnly-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-Configuration-ThrottleForScheduledScanOnly-Applicability-End -->

<!-- Device-Configuration-ThrottleForScheduledScanOnly-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Configuration/ThrottleForScheduledScanOnly
```
<!-- Device-Configuration-ThrottleForScheduledScanOnly-OmaUri-End -->

<!-- Device-Configuration-ThrottleForScheduledScanOnly-Description-Begin -->
<!-- Description-Source-DDF -->
A CPU usage limit can be applied to scheduled scans only, or to scheduled and custom scans. The default value applies a CPU usage limit to scheduled scans only.
<!-- Device-Configuration-ThrottleForScheduledScanOnly-Description-End -->

<!-- Device-Configuration-ThrottleForScheduledScanOnly-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Configuration-ThrottleForScheduledScanOnly-Editable-End -->

<!-- Device-Configuration-ThrottleForScheduledScanOnly-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- Device-Configuration-ThrottleForScheduledScanOnly-DFProperties-End -->

<!-- Device-Configuration-ThrottleForScheduledScanOnly-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | If you enable this setting, CPU throttling will apply only to scheduled scans. |
| 0 | If you disable this setting, CPU throttling will apply to scheduled and custom scans. |
<!-- Device-Configuration-ThrottleForScheduledScanOnly-AllowedValues-End -->

<!-- Device-Configuration-ThrottleForScheduledScanOnly-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Configuration-ThrottleForScheduledScanOnly-Examples-End -->

<!-- Device-Configuration-ThrottleForScheduledScanOnly-End -->

<!-- Device-Detections-Begin -->
## Detections

<!-- Device-Detections-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Detections-Applicability-End -->

<!-- Device-Detections-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Detections
```
<!-- Device-Detections-OmaUri-End -->

<!-- Device-Detections-Description-Begin -->
<!-- Description-Source-DDF -->
An interior node to group all threats detected by Windows Defender.
<!-- Device-Detections-Description-End -->

<!-- Device-Detections-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Detections-Editable-End -->

<!-- Device-Detections-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | node |
| Access Type | Get |
<!-- Device-Detections-DFProperties-End -->

<!-- Device-Detections-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Detections-Examples-End -->

<!-- Device-Detections-End -->

<!-- Device-Detections-{ThreatId}-Begin -->
### Detections/{ThreatId}

<!-- Device-Detections-{ThreatId}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Detections-{ThreatId}-Applicability-End -->

<!-- Device-Detections-{ThreatId}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Detections/{ThreatId}
```
<!-- Device-Detections-{ThreatId}-OmaUri-End -->

<!-- Device-Detections-{ThreatId}-Description-Begin -->
<!-- Description-Source-DDF -->
The ID of a threat that has been detected by Windows Defender.
<!-- Device-Detections-{ThreatId}-Description-End -->

<!-- Device-Detections-{ThreatId}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Detections-{ThreatId}-Editable-End -->

<!-- Device-Detections-{ThreatId}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | node |
| Access Type | Get |
| Dynamic Node Naming | ClientInventory |
<!-- Device-Detections-{ThreatId}-DFProperties-End -->

<!-- Device-Detections-{ThreatId}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Detections-{ThreatId}-Examples-End -->

<!-- Device-Detections-{ThreatId}-End -->

<!-- Device-Detections-{ThreatId}-Category-Begin -->
#### Detections/{ThreatId}/Category

<!-- Device-Detections-{ThreatId}-Category-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Detections-{ThreatId}-Category-Applicability-End -->

<!-- Device-Detections-{ThreatId}-Category-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Detections/{ThreatId}/Category
```
<!-- Device-Detections-{ThreatId}-Category-OmaUri-End -->

<!-- Device-Detections-{ThreatId}-Category-Description-Begin -->
<!-- Description-Source-DDF -->
Threat category ID. Supported values:

| Value | Description |
|:--|:--|
| 0 | Invalid |
| 1 | Adware |
| 2 | Spyware |
| 3 | Password stealer |
| 4 | Trojan downloader |
| 5 | Worm |
| 6 | Backdoor |
| 7 | Remote access Trojan |
| 8 | Trojan |
| 9 | Email flooder |
| 10 | Keylogger |
| 11 | Dialer |
| 12 | Monitoring software |
| 13 | Browser modifier |
| 14 | Cookie |
| 15 | Browser plugin |
| 16 | AOL exploit |
| 17 | Nuker |
| 18 | Security disabler |
| 19 | Joke program |
| 20 | Hostile ActiveX control |
| 21 | Software bundler |
| 22 | Stealth modifier |
| 23 | Settings modifier |
| 24 | Toolbar |
| 25 | Remote control software |
| 26 | Trojan FTP |
| 27 | Potential unwanted software |
| 28 | ICQ exploit |
| 29 | Trojan telnet |
| 30 | Exploit |
| 31 | File sharing program |
| 32 | Malware creation tool |
| 33 | Remote control software |
| 34 | Tool |
| 36 | Trojan denial of service |
| 37 | Trojan dropper |
| 38 | Trojan mass mailer |
| 39 | Trojan monitoring software |
| 40 | Trojan proxy server |
| 42 | Virus |
| 43 | Known |
| 44 | Unknown |
| 45 | SPP |
| 46 | Behavior |
| 47 | Vulnerability |
| 48 | Policy |
| 49 | EUS (Enterprise Unwanted Software) |
| 50 | Ransomware |
| 51 | ASR Rule |
<!-- Device-Detections-{ThreatId}-Category-Description-End -->

<!-- Device-Detections-{ThreatId}-Category-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Detections-{ThreatId}-Category-Editable-End -->

<!-- Device-Detections-{ThreatId}-Category-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Get |
<!-- Device-Detections-{ThreatId}-Category-DFProperties-End -->

<!-- Device-Detections-{ThreatId}-Category-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Detections-{ThreatId}-Category-Examples-End -->

<!-- Device-Detections-{ThreatId}-Category-End -->

<!-- Device-Detections-{ThreatId}-CurrentStatus-Begin -->
#### Detections/{ThreatId}/CurrentStatus

<!-- Device-Detections-{ThreatId}-CurrentStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Detections-{ThreatId}-CurrentStatus-Applicability-End -->

<!-- Device-Detections-{ThreatId}-CurrentStatus-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Detections/{ThreatId}/CurrentStatus
```
<!-- Device-Detections-{ThreatId}-CurrentStatus-OmaUri-End -->

<!-- Device-Detections-{ThreatId}-CurrentStatus-Description-Begin -->
<!-- Description-Source-DDF -->
Information about the current status of the threat. The following list shows the supported values:

| Value | Description |
|:--|:--|
| 0 | Active |
| 1 | Action failed |
| 2 | Manual steps required |
| 3 | Full scan required |
| 4 | Reboot required |
| 5 | Remediated with noncritical failures |
| 6 | Quarantined |
| 7 | Removed |
| 8 | Cleaned |
| 9 | Allowed |
| 10 | No Status (Cleared) |
<!-- Device-Detections-{ThreatId}-CurrentStatus-Description-End -->

<!-- Device-Detections-{ThreatId}-CurrentStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Detections-{ThreatId}-CurrentStatus-Editable-End -->

<!-- Device-Detections-{ThreatId}-CurrentStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Get |
<!-- Device-Detections-{ThreatId}-CurrentStatus-DFProperties-End -->

<!-- Device-Detections-{ThreatId}-CurrentStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Detections-{ThreatId}-CurrentStatus-Examples-End -->

<!-- Device-Detections-{ThreatId}-CurrentStatus-End -->

<!-- Device-Detections-{ThreatId}-ExecutionStatus-Begin -->
#### Detections/{ThreatId}/ExecutionStatus

<!-- Device-Detections-{ThreatId}-ExecutionStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Detections-{ThreatId}-ExecutionStatus-Applicability-End -->

<!-- Device-Detections-{ThreatId}-ExecutionStatus-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Detections/{ThreatId}/ExecutionStatus
```
<!-- Device-Detections-{ThreatId}-ExecutionStatus-OmaUri-End -->

<!-- Device-Detections-{ThreatId}-ExecutionStatus-Description-Begin -->
<!-- Description-Source-DDF -->
Information about the execution status of the threat.
<!-- Device-Detections-{ThreatId}-ExecutionStatus-Description-End -->

<!-- Device-Detections-{ThreatId}-ExecutionStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Detections-{ThreatId}-ExecutionStatus-Editable-End -->

<!-- Device-Detections-{ThreatId}-ExecutionStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Get |
<!-- Device-Detections-{ThreatId}-ExecutionStatus-DFProperties-End -->

<!-- Device-Detections-{ThreatId}-ExecutionStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Detections-{ThreatId}-ExecutionStatus-Examples-End -->

<!-- Device-Detections-{ThreatId}-ExecutionStatus-End -->

<!-- Device-Detections-{ThreatId}-InitialDetectionTime-Begin -->
#### Detections/{ThreatId}/InitialDetectionTime

<!-- Device-Detections-{ThreatId}-InitialDetectionTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Detections-{ThreatId}-InitialDetectionTime-Applicability-End -->

<!-- Device-Detections-{ThreatId}-InitialDetectionTime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Detections/{ThreatId}/InitialDetectionTime
```
<!-- Device-Detections-{ThreatId}-InitialDetectionTime-OmaUri-End -->

<!-- Device-Detections-{ThreatId}-InitialDetectionTime-Description-Begin -->
<!-- Description-Source-DDF -->
The first time this particular threat was detected.
<!-- Device-Detections-{ThreatId}-InitialDetectionTime-Description-End -->

<!-- Device-Detections-{ThreatId}-InitialDetectionTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Detections-{ThreatId}-InitialDetectionTime-Editable-End -->

<!-- Device-Detections-{ThreatId}-InitialDetectionTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Get |
<!-- Device-Detections-{ThreatId}-InitialDetectionTime-DFProperties-End -->

<!-- Device-Detections-{ThreatId}-InitialDetectionTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Detections-{ThreatId}-InitialDetectionTime-Examples-End -->

<!-- Device-Detections-{ThreatId}-InitialDetectionTime-End -->

<!-- Device-Detections-{ThreatId}-LastThreatStatusChangeTime-Begin -->
#### Detections/{ThreatId}/LastThreatStatusChangeTime

<!-- Device-Detections-{ThreatId}-LastThreatStatusChangeTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Detections-{ThreatId}-LastThreatStatusChangeTime-Applicability-End -->

<!-- Device-Detections-{ThreatId}-LastThreatStatusChangeTime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Detections/{ThreatId}/LastThreatStatusChangeTime
```
<!-- Device-Detections-{ThreatId}-LastThreatStatusChangeTime-OmaUri-End -->

<!-- Device-Detections-{ThreatId}-LastThreatStatusChangeTime-Description-Begin -->
<!-- Description-Source-DDF -->
The last time this particular threat was changed.
<!-- Device-Detections-{ThreatId}-LastThreatStatusChangeTime-Description-End -->

<!-- Device-Detections-{ThreatId}-LastThreatStatusChangeTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Detections-{ThreatId}-LastThreatStatusChangeTime-Editable-End -->

<!-- Device-Detections-{ThreatId}-LastThreatStatusChangeTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Get |
<!-- Device-Detections-{ThreatId}-LastThreatStatusChangeTime-DFProperties-End -->

<!-- Device-Detections-{ThreatId}-LastThreatStatusChangeTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Detections-{ThreatId}-LastThreatStatusChangeTime-Examples-End -->

<!-- Device-Detections-{ThreatId}-LastThreatStatusChangeTime-End -->

<!-- Device-Detections-{ThreatId}-Name-Begin -->
#### Detections/{ThreatId}/Name

<!-- Device-Detections-{ThreatId}-Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Detections-{ThreatId}-Name-Applicability-End -->

<!-- Device-Detections-{ThreatId}-Name-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Detections/{ThreatId}/Name
```
<!-- Device-Detections-{ThreatId}-Name-OmaUri-End -->

<!-- Device-Detections-{ThreatId}-Name-Description-Begin -->
<!-- Description-Source-DDF -->
The name of the specific threat.
<!-- Device-Detections-{ThreatId}-Name-Description-End -->

<!-- Device-Detections-{ThreatId}-Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Detections-{ThreatId}-Name-Editable-End -->

<!-- Device-Detections-{ThreatId}-Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Get |
<!-- Device-Detections-{ThreatId}-Name-DFProperties-End -->

<!-- Device-Detections-{ThreatId}-Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Detections-{ThreatId}-Name-Examples-End -->

<!-- Device-Detections-{ThreatId}-Name-End -->

<!-- Device-Detections-{ThreatId}-NumberOfDetections-Begin -->
#### Detections/{ThreatId}/NumberOfDetections

<!-- Device-Detections-{ThreatId}-NumberOfDetections-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Detections-{ThreatId}-NumberOfDetections-Applicability-End -->

<!-- Device-Detections-{ThreatId}-NumberOfDetections-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Detections/{ThreatId}/NumberOfDetections
```
<!-- Device-Detections-{ThreatId}-NumberOfDetections-OmaUri-End -->

<!-- Device-Detections-{ThreatId}-NumberOfDetections-Description-Begin -->
<!-- Description-Source-DDF -->
Number of times this threat has been detected on a particular client.
<!-- Device-Detections-{ThreatId}-NumberOfDetections-Description-End -->

<!-- Device-Detections-{ThreatId}-NumberOfDetections-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Detections-{ThreatId}-NumberOfDetections-Editable-End -->

<!-- Device-Detections-{ThreatId}-NumberOfDetections-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Get |
<!-- Device-Detections-{ThreatId}-NumberOfDetections-DFProperties-End -->

<!-- Device-Detections-{ThreatId}-NumberOfDetections-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Detections-{ThreatId}-NumberOfDetections-Examples-End -->

<!-- Device-Detections-{ThreatId}-NumberOfDetections-End -->

<!-- Device-Detections-{ThreatId}-Severity-Begin -->
#### Detections/{ThreatId}/Severity

<!-- Device-Detections-{ThreatId}-Severity-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Detections-{ThreatId}-Severity-Applicability-End -->

<!-- Device-Detections-{ThreatId}-Severity-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Detections/{ThreatId}/Severity
```
<!-- Device-Detections-{ThreatId}-Severity-OmaUri-End -->

<!-- Device-Detections-{ThreatId}-Severity-Description-Begin -->
<!-- Description-Source-DDF -->
Threat severity ID. The following list shows the supported values:

| Value | Description |
|:--|:--|
| 0 | Unknown |
| 1 | Low |
| 2 | Moderate |
| 4 | High |
| 5 | Severe |
<!-- Device-Detections-{ThreatId}-Severity-Description-End -->

<!-- Device-Detections-{ThreatId}-Severity-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Detections-{ThreatId}-Severity-Editable-End -->

<!-- Device-Detections-{ThreatId}-Severity-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Get |
<!-- Device-Detections-{ThreatId}-Severity-DFProperties-End -->

<!-- Device-Detections-{ThreatId}-Severity-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Detections-{ThreatId}-Severity-Examples-End -->

<!-- Device-Detections-{ThreatId}-Severity-End -->

<!-- Device-Detections-{ThreatId}-URL-Begin -->
#### Detections/{ThreatId}/URL

<!-- Device-Detections-{ThreatId}-URL-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Detections-{ThreatId}-URL-Applicability-End -->

<!-- Device-Detections-{ThreatId}-URL-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Detections/{ThreatId}/URL
```
<!-- Device-Detections-{ThreatId}-URL-OmaUri-End -->

<!-- Device-Detections-{ThreatId}-URL-Description-Begin -->
<!-- Description-Source-DDF -->
URL link for additional threat information.
<!-- Device-Detections-{ThreatId}-URL-Description-End -->

<!-- Device-Detections-{ThreatId}-URL-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Detections-{ThreatId}-URL-Editable-End -->

<!-- Device-Detections-{ThreatId}-URL-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Get |
<!-- Device-Detections-{ThreatId}-URL-DFProperties-End -->

<!-- Device-Detections-{ThreatId}-URL-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Detections-{ThreatId}-URL-Examples-End -->

<!-- Device-Detections-{ThreatId}-URL-End -->

<!-- Device-Health-Begin -->
## Health

<!-- Device-Health-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Health-Applicability-End -->

<!-- Device-Health-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Health
```
<!-- Device-Health-OmaUri-End -->

<!-- Device-Health-Description-Begin -->
<!-- Description-Source-DDF -->
An interior node to group information about Windows Defender health status.
<!-- Device-Health-Description-End -->

<!-- Device-Health-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Health-Editable-End -->

<!-- Device-Health-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | node |
| Access Type | Get |
<!-- Device-Health-DFProperties-End -->

<!-- Device-Health-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Health-Examples-End -->

<!-- Device-Health-End -->

<!-- Device-Health-ComputerState-Begin -->
### Health/ComputerState

<!-- Device-Health-ComputerState-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Health-ComputerState-Applicability-End -->

<!-- Device-Health-ComputerState-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Health/ComputerState
```
<!-- Device-Health-ComputerState-OmaUri-End -->

<!-- Device-Health-ComputerState-Description-Begin -->
<!-- Description-Source-DDF -->
Provide the current state of the device. The following list shows the supported values:

| Value | Description |
|:--|:--|
| 0 | Clean |
| 1 | Pending full scan |
| 2 | Pending reboot |
| 4 | Pending manual steps (Windows Defender is waiting for the user to take some action, such as restarting the computer or running a full scan) |
| 8 | Pending offline scan |
| 16 | Pending critical failure (Windows Defender has failed critically and an Administrator needs to investigate and take some action, such as restarting the computer or reinstalling Windows Defender) |
<!-- Device-Health-ComputerState-Description-End -->

<!-- Device-Health-ComputerState-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Health-ComputerState-Editable-End -->

<!-- Device-Health-ComputerState-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Get |
<!-- Device-Health-ComputerState-DFProperties-End -->

<!-- Device-Health-ComputerState-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Health-ComputerState-Examples-End -->

<!-- Device-Health-ComputerState-End -->

<!-- Device-Health-DefenderEnabled-Begin -->
### Health/DefenderEnabled

<!-- Device-Health-DefenderEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Health-DefenderEnabled-Applicability-End -->

<!-- Device-Health-DefenderEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Health/DefenderEnabled
```
<!-- Device-Health-DefenderEnabled-OmaUri-End -->

<!-- Device-Health-DefenderEnabled-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates whether the Windows Defender service is running.
<!-- Device-Health-DefenderEnabled-Description-End -->

<!-- Device-Health-DefenderEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Health-DefenderEnabled-Editable-End -->

<!-- Device-Health-DefenderEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | bool |
| Access Type | Get |
<!-- Device-Health-DefenderEnabled-DFProperties-End -->

<!-- Device-Health-DefenderEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Health-DefenderEnabled-Examples-End -->

<!-- Device-Health-DefenderEnabled-End -->

<!-- Device-Health-DefenderVersion-Begin -->
### Health/DefenderVersion

<!-- Device-Health-DefenderVersion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Health-DefenderVersion-Applicability-End -->

<!-- Device-Health-DefenderVersion-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Health/DefenderVersion
```
<!-- Device-Health-DefenderVersion-OmaUri-End -->

<!-- Device-Health-DefenderVersion-Description-Begin -->
<!-- Description-Source-DDF -->
Version number of Windows Defender on the device.
<!-- Device-Health-DefenderVersion-Description-End -->

<!-- Device-Health-DefenderVersion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Health-DefenderVersion-Editable-End -->

<!-- Device-Health-DefenderVersion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Get |
<!-- Device-Health-DefenderVersion-DFProperties-End -->

<!-- Device-Health-DefenderVersion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Health-DefenderVersion-Examples-End -->

<!-- Device-Health-DefenderVersion-End -->

<!-- Device-Health-EngineVersion-Begin -->
### Health/EngineVersion

<!-- Device-Health-EngineVersion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Health-EngineVersion-Applicability-End -->

<!-- Device-Health-EngineVersion-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Health/EngineVersion
```
<!-- Device-Health-EngineVersion-OmaUri-End -->

<!-- Device-Health-EngineVersion-Description-Begin -->
<!-- Description-Source-DDF -->
Version number of the current Windows Defender engine on the device.
<!-- Device-Health-EngineVersion-Description-End -->

<!-- Device-Health-EngineVersion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Health-EngineVersion-Editable-End -->

<!-- Device-Health-EngineVersion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Get |
<!-- Device-Health-EngineVersion-DFProperties-End -->

<!-- Device-Health-EngineVersion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Health-EngineVersion-Examples-End -->

<!-- Device-Health-EngineVersion-End -->

<!-- Device-Health-FullScanOverdue-Begin -->
### Health/FullScanOverdue

<!-- Device-Health-FullScanOverdue-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Health-FullScanOverdue-Applicability-End -->

<!-- Device-Health-FullScanOverdue-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Health/FullScanOverdue
```
<!-- Device-Health-FullScanOverdue-OmaUri-End -->

<!-- Device-Health-FullScanOverdue-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates whether a Windows Defender full scan is overdue for the device. A Full scan is overdue when a scheduled Full scan did not complete successfully for 2 weeks and catchup Full scans are disabled (default).
<!-- Device-Health-FullScanOverdue-Description-End -->

<!-- Device-Health-FullScanOverdue-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Health-FullScanOverdue-Editable-End -->

<!-- Device-Health-FullScanOverdue-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | bool |
| Access Type | Get |
<!-- Device-Health-FullScanOverdue-DFProperties-End -->

<!-- Device-Health-FullScanOverdue-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Health-FullScanOverdue-Examples-End -->

<!-- Device-Health-FullScanOverdue-End -->

<!-- Device-Health-FullScanRequired-Begin -->
### Health/FullScanRequired

<!-- Device-Health-FullScanRequired-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Health-FullScanRequired-Applicability-End -->

<!-- Device-Health-FullScanRequired-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Health/FullScanRequired
```
<!-- Device-Health-FullScanRequired-OmaUri-End -->

<!-- Device-Health-FullScanRequired-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates whether a Windows Defender full scan is required.
<!-- Device-Health-FullScanRequired-Description-End -->

<!-- Device-Health-FullScanRequired-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Health-FullScanRequired-Editable-End -->

<!-- Device-Health-FullScanRequired-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | bool |
| Access Type | Get |
<!-- Device-Health-FullScanRequired-DFProperties-End -->

<!-- Device-Health-FullScanRequired-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Health-FullScanRequired-Examples-End -->

<!-- Device-Health-FullScanRequired-End -->

<!-- Device-Health-FullScanSigVersion-Begin -->
### Health/FullScanSigVersion

<!-- Device-Health-FullScanSigVersion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Health-FullScanSigVersion-Applicability-End -->

<!-- Device-Health-FullScanSigVersion-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Health/FullScanSigVersion
```
<!-- Device-Health-FullScanSigVersion-OmaUri-End -->

<!-- Device-Health-FullScanSigVersion-Description-Begin -->
<!-- Description-Source-DDF -->
Signature version used for the last full scan of the device.
<!-- Device-Health-FullScanSigVersion-Description-End -->

<!-- Device-Health-FullScanSigVersion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Health-FullScanSigVersion-Editable-End -->

<!-- Device-Health-FullScanSigVersion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Get |
<!-- Device-Health-FullScanSigVersion-DFProperties-End -->

<!-- Device-Health-FullScanSigVersion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Health-FullScanSigVersion-Examples-End -->

<!-- Device-Health-FullScanSigVersion-End -->

<!-- Device-Health-FullScanTime-Begin -->
### Health/FullScanTime

<!-- Device-Health-FullScanTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Health-FullScanTime-Applicability-End -->

<!-- Device-Health-FullScanTime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Health/FullScanTime
```
<!-- Device-Health-FullScanTime-OmaUri-End -->

<!-- Device-Health-FullScanTime-Description-Begin -->
<!-- Description-Source-DDF -->
Time of the last Windows Defender full scan of the device.
<!-- Device-Health-FullScanTime-Description-End -->

<!-- Device-Health-FullScanTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Health-FullScanTime-Editable-End -->

<!-- Device-Health-FullScanTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Get |
<!-- Device-Health-FullScanTime-DFProperties-End -->

<!-- Device-Health-FullScanTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Health-FullScanTime-Examples-End -->

<!-- Device-Health-FullScanTime-End -->

<!-- Device-Health-IsVirtualMachine-Begin -->
### Health/IsVirtualMachine

<!-- Device-Health-IsVirtualMachine-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Health-IsVirtualMachine-Applicability-End -->

<!-- Device-Health-IsVirtualMachine-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Health/IsVirtualMachine
```
<!-- Device-Health-IsVirtualMachine-OmaUri-End -->

<!-- Device-Health-IsVirtualMachine-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates whether the device is a virtual machine.
<!-- Device-Health-IsVirtualMachine-Description-End -->

<!-- Device-Health-IsVirtualMachine-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Health-IsVirtualMachine-Editable-End -->

<!-- Device-Health-IsVirtualMachine-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | bool |
| Access Type | Get |
<!-- Device-Health-IsVirtualMachine-DFProperties-End -->

<!-- Device-Health-IsVirtualMachine-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Health-IsVirtualMachine-Examples-End -->

<!-- Device-Health-IsVirtualMachine-End -->

<!-- Device-Health-NisEnabled-Begin -->
### Health/NisEnabled

<!-- Device-Health-NisEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Health-NisEnabled-Applicability-End -->

<!-- Device-Health-NisEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Health/NisEnabled
```
<!-- Device-Health-NisEnabled-OmaUri-End -->

<!-- Device-Health-NisEnabled-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates whether network protection is running.
<!-- Device-Health-NisEnabled-Description-End -->

<!-- Device-Health-NisEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Health-NisEnabled-Editable-End -->

<!-- Device-Health-NisEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | bool |
| Access Type | Get |
<!-- Device-Health-NisEnabled-DFProperties-End -->

<!-- Device-Health-NisEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Health-NisEnabled-Examples-End -->

<!-- Device-Health-NisEnabled-End -->

<!-- Device-Health-ProductStatus-Begin -->
### Health/ProductStatus

<!-- Device-Health-ProductStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-Health-ProductStatus-Applicability-End -->

<!-- Device-Health-ProductStatus-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Health/ProductStatus
```
<!-- Device-Health-ProductStatus-OmaUri-End -->

<!-- Device-Health-ProductStatus-Description-Begin -->
<!-- Description-Source-DDF -->
Provide the current state of the product. This is a bitmask flag value that can represent one or multiple product states from below list. Supported product status values:

| Value | Description |
|:--|:--|
| 0 | No status |
| 1 (1 << 0) | Service not running |
| 2 (1 << 1) | Service started without any malware protection engine |
| 4 (1 << 2) | Pending full scan due to threat action |
| 8 (1 << 3) | Pending reboot due to threat action |
| 16 (1 << 4) | ending manual steps due to threat action |
| 32 (1 << 5) | AV signatures out of date |
| 64 (1 << 6) | AS signatures out of date |
| 128 (1 << 7) | No quick scan has happened for a specified period |
| 256 (1 << 8) | No full scan has happened for a specified period |
| 512 (1 << 9) | System initiated scan in progress |
| 1024 (1 << 10) | System initiated clean in progress |
| 2048 (1 << 11) | There are samples pending submission |
| 4096 (1 << 12) | Product running in evaluation mode |
| 8192 (1 << 13) | Product running in non-genuine Windows mode |
| 16384 (1 << 14) | Product expired |
| 32768 (1 << 15) | Off-line scan required |
| 65536 (1 << 16) | Service is shutting down as part of system shutdown |
| 131072 (1 << 17) | Threat remediation failed critically |
| 262144 (1 << 18) | Threat remediation failed non-critically |
| 524288 (1 << 19) | No status flags set (well initialized state) |
| 1048576 (1 << 20) | Platform is out of date |
| 2097152 (1 << 21) | Platform update is in progress |
| 4194304 (1 << 22) | Platform is about to be outdated |
| 8388608 (1 << 23) | Signature or platform end of life is past or is impending |
| 16777216 (1 << 24) | Windows SMode signatures still in use on non-Win10S install |
<!-- Device-Health-ProductStatus-Description-End -->

<!-- Device-Health-ProductStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Health-ProductStatus-Editable-End -->

<!-- Device-Health-ProductStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Get |
<!-- Device-Health-ProductStatus-DFProperties-End -->

<!-- Device-Health-ProductStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

```xml
<SyncML xmlns="SYNCML:SYNCML1.1">
  <SyncBody>
    <Get>
      <CmdID>1</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/Defender/Health/ProductStatus</LocURI>
          </Target>
        </Item>
    </Get>
    <Final/>
  </SyncBody>
</SyncML>
```
<!-- Device-Health-ProductStatus-Examples-End -->

<!-- Device-Health-ProductStatus-End -->

<!-- Device-Health-QuickScanOverdue-Begin -->
### Health/QuickScanOverdue

<!-- Device-Health-QuickScanOverdue-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Health-QuickScanOverdue-Applicability-End -->

<!-- Device-Health-QuickScanOverdue-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Health/QuickScanOverdue
```
<!-- Device-Health-QuickScanOverdue-OmaUri-End -->

<!-- Device-Health-QuickScanOverdue-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates whether a Windows Defender quick scan is overdue for the device. A Quick scan is overdue when a scheduled Quick scan did not complete successfully for 2 weeks and catchup Quick scans are disabled (default).
<!-- Device-Health-QuickScanOverdue-Description-End -->

<!-- Device-Health-QuickScanOverdue-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Health-QuickScanOverdue-Editable-End -->

<!-- Device-Health-QuickScanOverdue-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | bool |
| Access Type | Get |
<!-- Device-Health-QuickScanOverdue-DFProperties-End -->

<!-- Device-Health-QuickScanOverdue-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Health-QuickScanOverdue-Examples-End -->

<!-- Device-Health-QuickScanOverdue-End -->

<!-- Device-Health-QuickScanSigVersion-Begin -->
### Health/QuickScanSigVersion

<!-- Device-Health-QuickScanSigVersion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Health-QuickScanSigVersion-Applicability-End -->

<!-- Device-Health-QuickScanSigVersion-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Health/QuickScanSigVersion
```
<!-- Device-Health-QuickScanSigVersion-OmaUri-End -->

<!-- Device-Health-QuickScanSigVersion-Description-Begin -->
<!-- Description-Source-DDF -->
Signature version used for the last quick scan of the device.
<!-- Device-Health-QuickScanSigVersion-Description-End -->

<!-- Device-Health-QuickScanSigVersion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Health-QuickScanSigVersion-Editable-End -->

<!-- Device-Health-QuickScanSigVersion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Get |
<!-- Device-Health-QuickScanSigVersion-DFProperties-End -->

<!-- Device-Health-QuickScanSigVersion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Health-QuickScanSigVersion-Examples-End -->

<!-- Device-Health-QuickScanSigVersion-End -->

<!-- Device-Health-QuickScanTime-Begin -->
### Health/QuickScanTime

<!-- Device-Health-QuickScanTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Health-QuickScanTime-Applicability-End -->

<!-- Device-Health-QuickScanTime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Health/QuickScanTime
```
<!-- Device-Health-QuickScanTime-OmaUri-End -->

<!-- Device-Health-QuickScanTime-Description-Begin -->
<!-- Description-Source-DDF -->
Time of the last Windows Defender quick scan of the device.
<!-- Device-Health-QuickScanTime-Description-End -->

<!-- Device-Health-QuickScanTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Health-QuickScanTime-Editable-End -->

<!-- Device-Health-QuickScanTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Get |
<!-- Device-Health-QuickScanTime-DFProperties-End -->

<!-- Device-Health-QuickScanTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Health-QuickScanTime-Examples-End -->

<!-- Device-Health-QuickScanTime-End -->

<!-- Device-Health-RebootRequired-Begin -->
### Health/RebootRequired

<!-- Device-Health-RebootRequired-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Health-RebootRequired-Applicability-End -->

<!-- Device-Health-RebootRequired-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Health/RebootRequired
```
<!-- Device-Health-RebootRequired-OmaUri-End -->

<!-- Device-Health-RebootRequired-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates whether a device reboot is needed.
<!-- Device-Health-RebootRequired-Description-End -->

<!-- Device-Health-RebootRequired-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Health-RebootRequired-Editable-End -->

<!-- Device-Health-RebootRequired-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | bool |
| Access Type | Get |
<!-- Device-Health-RebootRequired-DFProperties-End -->

<!-- Device-Health-RebootRequired-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Health-RebootRequired-Examples-End -->

<!-- Device-Health-RebootRequired-End -->

<!-- Device-Health-RtpEnabled-Begin -->
### Health/RtpEnabled

<!-- Device-Health-RtpEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Health-RtpEnabled-Applicability-End -->

<!-- Device-Health-RtpEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Health/RtpEnabled
```
<!-- Device-Health-RtpEnabled-OmaUri-End -->

<!-- Device-Health-RtpEnabled-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates whether real-time protection is running.
<!-- Device-Health-RtpEnabled-Description-End -->

<!-- Device-Health-RtpEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Health-RtpEnabled-Editable-End -->

<!-- Device-Health-RtpEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | bool |
| Access Type | Get |
<!-- Device-Health-RtpEnabled-DFProperties-End -->

<!-- Device-Health-RtpEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Health-RtpEnabled-Examples-End -->

<!-- Device-Health-RtpEnabled-End -->

<!-- Device-Health-SignatureOutOfDate-Begin -->
### Health/SignatureOutOfDate

<!-- Device-Health-SignatureOutOfDate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Health-SignatureOutOfDate-Applicability-End -->

<!-- Device-Health-SignatureOutOfDate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Health/SignatureOutOfDate
```
<!-- Device-Health-SignatureOutOfDate-OmaUri-End -->

<!-- Device-Health-SignatureOutOfDate-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates whether the Windows Defender signature is outdated.
<!-- Device-Health-SignatureOutOfDate-Description-End -->

<!-- Device-Health-SignatureOutOfDate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Health-SignatureOutOfDate-Editable-End -->

<!-- Device-Health-SignatureOutOfDate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | bool |
| Access Type | Get |
<!-- Device-Health-SignatureOutOfDate-DFProperties-End -->

<!-- Device-Health-SignatureOutOfDate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Health-SignatureOutOfDate-Examples-End -->

<!-- Device-Health-SignatureOutOfDate-End -->

<!-- Device-Health-SignatureVersion-Begin -->
### Health/SignatureVersion

<!-- Device-Health-SignatureVersion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Health-SignatureVersion-Applicability-End -->

<!-- Device-Health-SignatureVersion-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Health/SignatureVersion
```
<!-- Device-Health-SignatureVersion-OmaUri-End -->

<!-- Device-Health-SignatureVersion-Description-Begin -->
<!-- Description-Source-DDF -->
Version number of the current Windows Defender signatures on the device.
<!-- Device-Health-SignatureVersion-Description-End -->

<!-- Device-Health-SignatureVersion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Health-SignatureVersion-Editable-End -->

<!-- Device-Health-SignatureVersion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Get |
<!-- Device-Health-SignatureVersion-DFProperties-End -->

<!-- Device-Health-SignatureVersion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Health-SignatureVersion-Examples-End -->

<!-- Device-Health-SignatureVersion-End -->

<!-- Device-Health-TamperProtectionEnabled-Begin -->
### Health/TamperProtectionEnabled

<!-- Device-Health-TamperProtectionEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Health-TamperProtectionEnabled-Applicability-End -->

<!-- Device-Health-TamperProtectionEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Health/TamperProtectionEnabled
```
<!-- Device-Health-TamperProtectionEnabled-OmaUri-End -->

<!-- Device-Health-TamperProtectionEnabled-Description-Begin -->
<!-- Description-Source-DDF -->
Indicates whether the Windows Defender tamper protection feature is enabled.
<!-- Device-Health-TamperProtectionEnabled-Description-End -->

<!-- Device-Health-TamperProtectionEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Health-TamperProtectionEnabled-Editable-End -->

<!-- Device-Health-TamperProtectionEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | bool |
| Access Type | Get |
<!-- Device-Health-TamperProtectionEnabled-DFProperties-End -->

<!-- Device-Health-TamperProtectionEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Health-TamperProtectionEnabled-Examples-End -->

<!-- Device-Health-TamperProtectionEnabled-End -->

<!-- Device-OfflineScan-Begin -->
## OfflineScan

<!-- Device-OfflineScan-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-OfflineScan-Applicability-End -->

<!-- Device-OfflineScan-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/OfflineScan
```
<!-- Device-OfflineScan-OmaUri-End -->

<!-- Device-OfflineScan-Description-Begin -->
<!-- Description-Source-DDF -->
OfflineScan action starts a Microsoft Defender Offline scan on the computer where you run the command. After the next OS reboot, the device will start in Microsoft Defender Offline mode to begin the scan.
<!-- Device-OfflineScan-Description-End -->

<!-- Device-OfflineScan-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-OfflineScan-Editable-End -->

<!-- Device-OfflineScan-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Exec, Get |
| Reboot Behavior | ServerInitiated |
<!-- Device-OfflineScan-DFProperties-End -->

<!-- Device-OfflineScan-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-OfflineScan-Examples-End -->

<!-- Device-OfflineScan-End -->

<!-- Device-RollbackEngine-Begin -->
## RollbackEngine

<!-- Device-RollbackEngine-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-RollbackEngine-Applicability-End -->

<!-- Device-RollbackEngine-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/RollbackEngine
```
<!-- Device-RollbackEngine-OmaUri-End -->

<!-- Device-RollbackEngine-Description-Begin -->
<!-- Description-Source-DDF -->
RollbackEngine action rolls back Microsoft Defender engine to its last known good saved version on the computer where you run the command.
<!-- Device-RollbackEngine-Description-End -->

<!-- Device-RollbackEngine-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-RollbackEngine-Editable-End -->

<!-- Device-RollbackEngine-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Exec, Get |
| Reboot Behavior | ServerInitiated |
<!-- Device-RollbackEngine-DFProperties-End -->

<!-- Device-RollbackEngine-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-RollbackEngine-Examples-End -->

<!-- Device-RollbackEngine-End -->

<!-- Device-RollbackPlatform-Begin -->
## RollbackPlatform

<!-- Device-RollbackPlatform-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-RollbackPlatform-Applicability-End -->

<!-- Device-RollbackPlatform-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/RollbackPlatform
```
<!-- Device-RollbackPlatform-OmaUri-End -->

<!-- Device-RollbackPlatform-Description-Begin -->
<!-- Description-Source-DDF -->
RollbackPlatform action rolls back Microsoft Defender to it's last known good installation location on the computer where you run the command.
<!-- Device-RollbackPlatform-Description-End -->

<!-- Device-RollbackPlatform-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-RollbackPlatform-Editable-End -->

<!-- Device-RollbackPlatform-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Exec, Get |
| Reboot Behavior | ServerInitiated |
<!-- Device-RollbackPlatform-DFProperties-End -->

<!-- Device-RollbackPlatform-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-RollbackPlatform-Examples-End -->

<!-- Device-RollbackPlatform-End -->

<!-- Device-Scan-Begin -->
## Scan

<!-- Device-Scan-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Scan-Applicability-End -->

<!-- Device-Scan-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/Scan
```
<!-- Device-Scan-OmaUri-End -->

<!-- Device-Scan-Description-Begin -->
<!-- Description-Source-DDF -->
Node that can be used to start a Windows Defender scan on a device.
<!-- Device-Scan-Description-End -->

<!-- Device-Scan-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Scan-Editable-End -->

<!-- Device-Scan-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Exec, Get |
<!-- Device-Scan-DFProperties-End -->

<!-- Device-Scan-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Quick scan. |
| 2 | Full scan. |
<!-- Device-Scan-AllowedValues-End -->

<!-- Device-Scan-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Scan-Examples-End -->

<!-- Device-Scan-End -->

<!-- Device-UpdateSignature-Begin -->
## UpdateSignature

<!-- Device-UpdateSignature-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-UpdateSignature-Applicability-End -->

<!-- Device-UpdateSignature-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Defender/UpdateSignature
```
<!-- Device-UpdateSignature-OmaUri-End -->

<!-- Device-UpdateSignature-Description-Begin -->
<!-- Description-Source-DDF -->
Node that can be used to perform signature updates for Windows Defender.
<!-- Device-UpdateSignature-Description-End -->

<!-- Device-UpdateSignature-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-UpdateSignature-Editable-End -->

<!-- Device-UpdateSignature-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Exec, Get |
<!-- Device-UpdateSignature-DFProperties-End -->

<!-- Device-UpdateSignature-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-UpdateSignature-Examples-End -->

<!-- Device-UpdateSignature-End -->

<!-- Defender-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Defender-CspMoreInfo-End -->

<!-- Defender-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
