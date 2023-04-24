---
title: DMSessionActions CSP
description: Learn how the DMSessionActions configuration service provider (CSP) is used to manage the number of sessions the client skips if the device is in a low-power state.
ms.author: vinpa
ms.topic: reference
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 06/26/2017
ms.reviewer:
manager: aaroncz
---

# DMSessionActions CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The DMSessionActions configuration service provider (CSP) is used to manage:

- the number of sessions the client skips if the device is in a low-power state.
- which CSP nodes should send an alert back to the server if there were any changes.

This CSP was added in Windows 10, version 1703.

The following example shows the DMSessionActions configuration service provider in tree format.
```
./User/Vendor/MSFT
DMSessionActions
----ProviderID
--------CheckinAlertConfiguration
------------Nodes
----------------NodeID
--------------------NodeURI
--------AlertData
--------PowerSettings
------------MaxSkippedSessionsInLowPowerState
------------MaxTimeSessionsSkippedInLowPowerState


./Device/Vendor/MSFT
DMSessionActions
----ProviderID
--------CheckinAlertConfiguration
------------Nodes
----------------NodeID
--------------------NodeURI
--------AlertData
--------PowerSettings
------------MaxSkippedSessionsInLowPowerState
------------MaxTimeSessionsSkippedInLowPowerState


./User/Vendor/MSFT
./Device/Vendor/MSFT
DMSessionActions
----ProviderID
--------CheckinAlertConfiguration
------------Nodes
----------------NodeID
--------------------NodeURI
--------AlertData
--------PowerSettings
------------MaxSkippedSessionsInLowPowerState
------------MaxTimeSessionsSkippedInLowPowerState
```

<a href="" id="vendor-msft-dmsessionactions"></a>**./Device/Vendor/MSFT/DMSessionActions or ./User/Vendor/MSFT/DMSessionActions**
Defines the root node for the DMSessionActions configuration service provider.

<a href="" id="providerid"></a>***ProviderID***
Group settings per device management (DM) server. Each group of settings is distinguished by the Provider ID of the server. It must be the same DM server Provider ID value that was supplied through the w7 APPLICATION configuration service provider XML during the enrollment process. Only one enterprise management server is supported, which means there should be only one ProviderID node under NodeCache.

Scope is dynamic. Supported operations are Get, Add, and Delete.

<a href="" id="checkinalertconfiguration"></a>***ProviderID*/CheckinAlertConfiguration**
Node for the custom configuration of alerts to be sent during MDM sync session.

<a href="" id="nodes"></a>***ProviderID*/CheckinAlertConfiguration/Nodes**
Required. Root node for URIs to be queried. Scope is dynamic.

Supported operation is Get.

<a href="" id="nodeid"></a>***ProviderID*/CheckinAlertConfiguration/Nodes/*NodeID***
Required. Information about each node is stored under NodeID as specified by the server. This value must not contain a comma. Scope is dynamic.

Supported operations are Get, Add, and Delete.

<a href="" id="nodeuri"></a>***ProviderID*/CheckinAlertConfiguration/Nodes/*NodeID*/NodeURI**
Required. The value is a complete OMA DM node URI. It can specify either an interior node or a leaf node in the device management tree. Scope is dynamic.

Value type is string.

Supported operations are Add, Get, Replace, and Delete.

<a href="" id="alertdata"></a>**AlertData**
Node to query the custom alert per server configuration

Value type is string.

Supported operation is Get.

<a href="" id="powersettings"></a>**PowerSettings**
Node for power-related configurations.

<a href="" id="maxskippedsessionsinlowpowerstate"></a>**PowerSettings/MaxSkippedSessionsInLowPowerState**
Maximum number of continuous skipped sync sessions when the device is in low-power state.

Value type is integer.

Supported operations are Add, Get, Replace, and Delete.

<a href="" id="maxtimesessionsskippedinlowpowerstate"></a>**PowerSettings/MaxTimeSessionsSkippedInLowPowerState**
Maximum time in minutes when the device can skip the check-in with the server if the device is in low-power state.

Value type is integer.

Supported operations are Add, Get, Replace, and Delete.

## Related articles

[Configuration service provider reference](index.yml)
