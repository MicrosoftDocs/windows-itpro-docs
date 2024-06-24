---
title: DeliveryOptimization Policy CSP
description: Learn more about the DeliveryOptimization Area in Policy CSP.
ms.date: 06/19/2024
---

<!-- Auto-Generated CSP Document -->

<!-- DeliveryOptimization-Begin -->
# Policy CSP - DeliveryOptimization

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

[!INCLUDE [Windows Insider tip](includes/mdm-insider-csp-note.md)]

<!-- DeliveryOptimization-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DeliveryOptimization-Editable-End -->

<!-- DOAbsoluteMaxCacheSize-Begin -->
## DOAbsoluteMaxCacheSize

<!-- DOAbsoluteMaxCacheSize-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- DOAbsoluteMaxCacheSize-Applicability-End -->

<!-- DOAbsoluteMaxCacheSize-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DOAbsoluteMaxCacheSize
```
<!-- DOAbsoluteMaxCacheSize-OmaUri-End -->

<!-- DOAbsoluteMaxCacheSize-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the maximum size in GB of Delivery Optimization cache.

This policy overrides the DOMaxCacheSize policy.

The value 0 (zero) means "unlimited" cache; Delivery Optimization will clear the cache when the device runs low on disk space.
<!-- DOAbsoluteMaxCacheSize-Description-End -->

<!-- DOAbsoluteMaxCacheSize-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DOAbsoluteMaxCacheSize-Editable-End -->

<!-- DOAbsoluteMaxCacheSize-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-4294967295]` |
| Default Value  | 0 |
<!-- DOAbsoluteMaxCacheSize-DFProperties-End -->

<!-- DOAbsoluteMaxCacheSize-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AbsoluteMaxCacheSize |
| Friendly Name | Absolute Max Cache Size (in GB) |
| Element Name | Absolute Max Cache Size (in GB) |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DOAbsoluteMaxCacheSize-GpMapping-End -->

<!-- DOAbsoluteMaxCacheSize-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DOAbsoluteMaxCacheSize-Examples-End -->

<!-- DOAbsoluteMaxCacheSize-End -->

<!-- DOAllowVPNPeerCaching-Begin -->
## DOAllowVPNPeerCaching

<!-- DOAllowVPNPeerCaching-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DOAllowVPNPeerCaching-Applicability-End -->

<!-- DOAllowVPNPeerCaching-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DOAllowVPNPeerCaching
```
<!-- DOAllowVPNPeerCaching-OmaUri-End -->

<!-- DOAllowVPNPeerCaching-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Specifies whether the device is allowed to participate in Peer Caching while connected via VPN to the domain network. This means the device can download from or upload to other domain network devices, either on VPN or on the corporate domain network.
<!-- DOAllowVPNPeerCaching-Description-End -->

<!-- DOAllowVPNPeerCaching-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DOAllowVPNPeerCaching-Editable-End -->

<!-- DOAllowVPNPeerCaching-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DOAllowVPNPeerCaching-DFProperties-End -->

<!-- DOAllowVPNPeerCaching-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not allowed. |
| 1 | Allowed. |
<!-- DOAllowVPNPeerCaching-AllowedValues-End -->

<!-- DOAllowVPNPeerCaching-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowVPNPeerCaching |
| Friendly Name | Enable Peer Caching while the device connects via VPN |
| Element Name | Enable Peer Caching while the device connects via VPN. |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DOAllowVPNPeerCaching-GpMapping-End -->

<!-- DOAllowVPNPeerCaching-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DOAllowVPNPeerCaching-Examples-End -->

<!-- DOAllowVPNPeerCaching-End -->

<!-- DOCacheHost-Begin -->
## DOCacheHost

<!-- DOCacheHost-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DOCacheHost-Applicability-End -->

<!-- DOCacheHost-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DOCacheHost
```
<!-- DOCacheHost-OmaUri-End -->

<!-- DOCacheHost-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy allows you to set one or more Microsoft Connected Cache servers that will be used by your client(s).

One or more values can be added as either fully qualified domain names (FQDN) or IP addresses. To add multiple values, separate each FQDN or IP address by commas.
<!-- DOCacheHost-Description-End -->

<!-- DOCacheHost-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Clients don't talk to multiple Microsoft Connected Cache (MCC) servers at the same time. If you configure a list of MCC servers in this policy, the clients will round robin until they successfully connect to an MCC server. The clients have no way to determine if the MCC server has the content or not. If the MCC server doesn't have the content, it caches the content as it is handing the content back to the client.
<!-- DOCacheHost-Editable-End -->

<!-- DOCacheHost-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `,`) |
<!-- DOCacheHost-DFProperties-End -->

<!-- DOCacheHost-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | CacheHost |
| Friendly Name | Cache Server Hostname |
| Element Name | Cache Server. |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DOCacheHost-GpMapping-End -->

<!-- DOCacheHost-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DOCacheHost-Examples-End -->

<!-- DOCacheHost-End -->

<!-- DOCacheHostSource-Begin -->
## DOCacheHostSource

<!-- DOCacheHostSource-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- DOCacheHostSource-Applicability-End -->

<!-- DOCacheHostSource-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DOCacheHostSource
```
<!-- DOCacheHostSource-OmaUri-End -->

<!-- DOCacheHostSource-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy allows you to specify how your client(s) can discover Microsoft Connected Cache servers dynamically.

Options available are:

0 = Disable DNS-SD.

1 = DHCP Option 235.

2 = DHCP Option 235 Force.

If this policy isn't configured, the client will attempt to automatically find a cache server using DNS-SD. If set to 0, the client won't use DNS-SD to automatically find a cache server. If set to 1 or 2, the client will query DHCP Option ID 235 and use the returned value as the Cache Server Hostname. Option 2 overrides the Cache Server Hostname policy, if configured.
<!-- DOCacheHostSource-Description-End -->

<!-- DOCacheHostSource-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> If the DHCP Option ID is formatted incorrectly, the client will fall back to the [Cache Server Hostname](#docachehost) policy value if that value has been set.
<!-- DOCacheHostSource-Editable-End -->

<!-- DOCacheHostSource-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-4294967295]` |
| Default Value  | 0 |
<!-- DOCacheHostSource-DFProperties-End -->

<!-- DOCacheHostSource-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | CacheHostSource |
| Friendly Name | Cache Server Hostname Source |
| Element Name | Cache Server Hostname Source. |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DOCacheHostSource-GpMapping-End -->

<!-- DOCacheHostSource-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DOCacheHostSource-Examples-End -->

<!-- DOCacheHostSource-End -->

<!-- DODelayBackgroundDownloadFromHttp-Begin -->
## DODelayBackgroundDownloadFromHttp

<!-- DODelayBackgroundDownloadFromHttp-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- DODelayBackgroundDownloadFromHttp-Applicability-End -->

<!-- DODelayBackgroundDownloadFromHttp-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DODelayBackgroundDownloadFromHttp
```
<!-- DODelayBackgroundDownloadFromHttp-OmaUri-End -->

<!-- DODelayBackgroundDownloadFromHttp-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy allows you to delay the use of an HTTP source in a background download that's allowed to use P2P.

After the max delay has reached, the download will resume using HTTP, either downloading the entire payload or complementing the bytes that couldn't be downloaded from Peers.

Note that a download that's waiting for peer sources, will appear to be stuck for the end user.

The recommended value is 1 hour (3600).
<!-- DODelayBackgroundDownloadFromHttp-Description-End -->

<!-- DODelayBackgroundDownloadFromHttp-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DODelayBackgroundDownloadFromHttp-Editable-End -->

<!-- DODelayBackgroundDownloadFromHttp-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-4294967295]` |
| Default Value  | 0 |
<!-- DODelayBackgroundDownloadFromHttp-DFProperties-End -->

<!-- DODelayBackgroundDownloadFromHttp-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DelayBackgroundDownloadFromHttp |
| Friendly Name | Delay background download from http (in secs) |
| Element Name | Delay background download from http (in secs) |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DODelayBackgroundDownloadFromHttp-GpMapping-End -->

<!-- DODelayBackgroundDownloadFromHttp-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DODelayBackgroundDownloadFromHttp-Examples-End -->

<!-- DODelayBackgroundDownloadFromHttp-End -->

<!-- DODelayCacheServerFallbackBackground-Begin -->
## DODelayCacheServerFallbackBackground

<!-- DODelayCacheServerFallbackBackground-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- DODelayCacheServerFallbackBackground-Applicability-End -->

<!-- DODelayCacheServerFallbackBackground-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DODelayCacheServerFallbackBackground
```
<!-- DODelayCacheServerFallbackBackground-OmaUri-End -->

<!-- DODelayCacheServerFallbackBackground-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Specifies the time in seconds to delay the fallback from Cache Server to the HTTP source for a background content download. Note that the DODelayBackgroundDownloadFromHttp policy takes precedence over this policy to allow downloads from peers first.
<!-- DODelayCacheServerFallbackBackground-Description-End -->

<!-- DODelayCacheServerFallbackBackground-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DODelayCacheServerFallbackBackground-Editable-End -->

<!-- DODelayCacheServerFallbackBackground-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-2592000]` |
| Default Value  | 0 |
<!-- DODelayCacheServerFallbackBackground-DFProperties-End -->

<!-- DODelayCacheServerFallbackBackground-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DelayCacheServerFallbackBackground |
| Friendly Name | Delay Background download Cache Server fallback (in seconds) |
| Element Name | Delay Background download Cache Server fallback (in secs) |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DODelayCacheServerFallbackBackground-GpMapping-End -->

<!-- DODelayCacheServerFallbackBackground-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DODelayCacheServerFallbackBackground-Examples-End -->

<!-- DODelayCacheServerFallbackBackground-End -->

<!-- DODelayCacheServerFallbackForeground-Begin -->
## DODelayCacheServerFallbackForeground

<!-- DODelayCacheServerFallbackForeground-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- DODelayCacheServerFallbackForeground-Applicability-End -->

<!-- DODelayCacheServerFallbackForeground-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DODelayCacheServerFallbackForeground
```
<!-- DODelayCacheServerFallbackForeground-OmaUri-End -->

<!-- DODelayCacheServerFallbackForeground-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Specifies the time in seconds to delay the fallback from Cache Server to the HTTP source for foreground content download. Note that the DODelayForegroundDownloadFromHttp policy takes precedence over this policy to allow downloads from peers first.
<!-- DODelayCacheServerFallbackForeground-Description-End -->

<!-- DODelayCacheServerFallbackForeground-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DODelayCacheServerFallbackForeground-Editable-End -->

<!-- DODelayCacheServerFallbackForeground-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-2592000]` |
| Default Value  | 0 |
<!-- DODelayCacheServerFallbackForeground-DFProperties-End -->

<!-- DODelayCacheServerFallbackForeground-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DelayCacheServerFallbackForeground |
| Friendly Name | Delay Foreground download Cache Server fallback (in seconds) |
| Element Name | Delay Foreground download Cache Server fallback (in secs) |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DODelayCacheServerFallbackForeground-GpMapping-End -->

<!-- DODelayCacheServerFallbackForeground-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DODelayCacheServerFallbackForeground-Examples-End -->

<!-- DODelayCacheServerFallbackForeground-End -->

<!-- DODelayForegroundDownloadFromHttp-Begin -->
## DODelayForegroundDownloadFromHttp

<!-- DODelayForegroundDownloadFromHttp-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- DODelayForegroundDownloadFromHttp-Applicability-End -->

<!-- DODelayForegroundDownloadFromHttp-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DODelayForegroundDownloadFromHttp
```
<!-- DODelayForegroundDownloadFromHttp-OmaUri-End -->

<!-- DODelayForegroundDownloadFromHttp-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy allows you to delay the use of an HTTP source in a foreground (interactive) download that's allowed to use P2P.

After the max delay has reached, the download will resume using HTTP, either downloading the entire payload or complementing the bytes that couldn't be downloaded from Peers.

Note that a download that's waiting for peer sources, will appear to be stuck for the end user.

The recommended value is 1 minute (60).
<!-- DODelayForegroundDownloadFromHttp-Description-End -->

<!-- DODelayForegroundDownloadFromHttp-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DODelayForegroundDownloadFromHttp-Editable-End -->

<!-- DODelayForegroundDownloadFromHttp-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-4294967295]` |
| Default Value  | 0 |
<!-- DODelayForegroundDownloadFromHttp-DFProperties-End -->

<!-- DODelayForegroundDownloadFromHttp-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DelayForegroundDownloadFromHttp |
| Friendly Name | Delay Foreground download from http (in secs) |
| Element Name | Delay Foreground download from http (in secs) |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DODelayForegroundDownloadFromHttp-GpMapping-End -->

<!-- DODelayForegroundDownloadFromHttp-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DODelayForegroundDownloadFromHttp-Examples-End -->

<!-- DODelayForegroundDownloadFromHttp-End -->

<!-- DODisallowCacheServerDownloadsOnVPN-Begin -->
## DODisallowCacheServerDownloadsOnVPN

<!-- DODisallowCacheServerDownloadsOnVPN-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621.2361] and later <br> ✅ Windows Insider Preview |
<!-- DODisallowCacheServerDownloadsOnVPN-Applicability-End -->

<!-- DODisallowCacheServerDownloadsOnVPN-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DODisallowCacheServerDownloadsOnVPN
```
<!-- DODisallowCacheServerDownloadsOnVPN-OmaUri-End -->

<!-- DODisallowCacheServerDownloadsOnVPN-Description-Begin -->
<!-- Description-Source-DDF -->
Disallow downloads from Microsoft Connected Cache servers when the device connects via VPN. By default, the device is allowed to download from Microsoft Connected Cache when connected via VPN.
<!-- DODisallowCacheServerDownloadsOnVPN-Description-End -->

<!-- DODisallowCacheServerDownloadsOnVPN-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DODisallowCacheServerDownloadsOnVPN-Editable-End -->

<!-- DODisallowCacheServerDownloadsOnVPN-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DODisallowCacheServerDownloadsOnVPN-DFProperties-End -->

<!-- DODisallowCacheServerDownloadsOnVPN-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allowed. |
| 1 | Not allowed. |
<!-- DODisallowCacheServerDownloadsOnVPN-AllowedValues-End -->

<!-- DODisallowCacheServerDownloadsOnVPN-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowCacheHostWithVPN |
| Path | DeliveryOptimization > AT > WindowsComponents > DeliveryOptimizationCat |
| Element Name | DisallowCacheServerDownloadsOnVPN |
<!-- DODisallowCacheServerDownloadsOnVPN-GpMapping-End -->

<!-- DODisallowCacheServerDownloadsOnVPN-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DODisallowCacheServerDownloadsOnVPN-Examples-End -->

<!-- DODisallowCacheServerDownloadsOnVPN-End -->

<!-- DODownloadMode-Begin -->
## DODownloadMode

<!-- DODownloadMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- DODownloadMode-Applicability-End -->

<!-- DODownloadMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DODownloadMode
```
<!-- DODownloadMode-OmaUri-End -->

<!-- DODownloadMode-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Specifies the download method that Delivery Optimization can use in downloads of Windows Updates, Apps and App updates. The default value is 1.
<!-- DODownloadMode-Description-End -->

<!-- DODownloadMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> The Delivery Optimization service on the clients checks to see if there are peers and/or an MCC server which contains the content and determines the best source for the content.
<!-- DODownloadMode-Editable-End -->

<!-- DODownloadMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DODownloadMode-DFProperties-End -->

<!-- DODownloadMode-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | HTTP only, no peering. |
| 1 | HTTP blended with peering behind the same NAT. |
| 2 | When this option is selected, peering will cross NATs. To create a custom group use Group ID in combination with Mode 2. |
| 3 | HTTP blended with Internet peering. |
| 99 | Simple download mode with no peering. Delivery Optimization downloads using HTTP only and doesn't attempt to contact the Delivery Optimization cloud services. Added in Windows 10, version 1607. |
| 100 | Bypass mode. Windows 10: Don't use Delivery Optimization and use BITS instead. Windows 11: Deprecated, use Simple mode instead. |
<!-- DODownloadMode-AllowedValues-End -->

<!-- DODownloadMode-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DownloadMode |
| Friendly Name | Download Mode |
| Element Name | Download Mode. |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DODownloadMode-GpMapping-End -->

<!-- DODownloadMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DODownloadMode-Examples-End -->

<!-- DODownloadMode-End -->

<!-- DOGroupId-Begin -->
## DOGroupId

<!-- DOGroupId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- DOGroupId-Applicability-End -->

<!-- DOGroupId-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DOGroupId
```
<!-- DOGroupId-OmaUri-End -->

<!-- DOGroupId-Description-Begin -->
<!-- Description-Source-ADMX -->
Group ID must be set as a GUID. This Policy specifies an arbitrary group ID that the device belongs to.

Use this if you need to create a single group for Local Network Peering for branches that are on different domains or aren't on the same LAN.

Note this is a best effort optimization and shouldn't be relied on for an authentication of identity.
<!-- DOGroupId-Description-End -->

<!-- DOGroupId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DOGroupId-Editable-End -->

<!-- DOGroupId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DOGroupId-DFProperties-End -->

<!-- DOGroupId-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | GroupId |
| Friendly Name | Group ID |
| Element Name | Group ID. |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DOGroupId-GpMapping-End -->

<!-- DOGroupId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DOGroupId-Examples-End -->

<!-- DOGroupId-End -->

<!-- DOGroupIdSource-Begin -->
## DOGroupIdSource

<!-- DOGroupIdSource-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- DOGroupIdSource-Applicability-End -->

<!-- DOGroupIdSource-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DOGroupIdSource
```
<!-- DOGroupIdSource-OmaUri-End -->

<!-- DOGroupIdSource-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Set this policy to restrict peer selection to a specific source. Available options are: 1 = AD Site, 2 = Authenticated domain SID, 3 = DHCP Option ID, 4 = DNS Suffix, 5 = Microsoft Entra ID. When set, the Group ID will be assigned automatically from the selected source. This policy is ignored if the GroupID policy is also set. The options set in this policy only apply to Group (2) download mode. If Group (2) isn't set as Download mode, this policy will be ignored. For option 3 - DHCP Option ID, the client will query DHCP Option ID 234 and use the returned GUID value as the Group ID. Starting with Windows 10, version 1903, you can use the Microsoft Entra tenant ID as a means to define groups. To do this, set the value of DOGroupIdSource to 5.
<!-- DOGroupIdSource-Description-End -->

<!-- DOGroupIdSource-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> The default behavior, when neither the DOGroupId or DOGroupIdSource policies are set, is to determine the Group ID using AD Site (1), Authenticated domain SID (2) or Microsoft Entra tenant ID (5), in that order. If DOGroupIdSource is set to either DHCP Option ID (3) or DNS Suffix (4) and those methods fail, the default behavior is used instead.
<!-- DOGroupIdSource-Editable-End -->

<!-- DOGroupIdSource-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DOGroupIdSource-DFProperties-End -->

<!-- DOGroupIdSource-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Unset. |
| 1 | AD site. |
| 2 | Authenticated domain SID. |
| 3 | DHCP user option. |
| 4 | DNS suffix. |
| 5 | Microsoft Entra ID. |
<!-- DOGroupIdSource-AllowedValues-End -->

<!-- DOGroupIdSource-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | GroupIdSource |
| Friendly Name | Select the source of Group IDs |
| Element Name | Source of Group IDs. |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DOGroupIdSource-GpMapping-End -->

<!-- DOGroupIdSource-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DOGroupIdSource-Examples-End -->

<!-- DOGroupIdSource-End -->

<!-- DOMaxBackgroundDownloadBandwidth-Begin -->
## DOMaxBackgroundDownloadBandwidth

<!-- DOMaxBackgroundDownloadBandwidth-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- DOMaxBackgroundDownloadBandwidth-Applicability-End -->

<!-- DOMaxBackgroundDownloadBandwidth-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DOMaxBackgroundDownloadBandwidth
```
<!-- DOMaxBackgroundDownloadBandwidth-OmaUri-End -->

<!-- DOMaxBackgroundDownloadBandwidth-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the maximum background download bandwidth in KiloBytes/second that the device can use across all concurrent download activities using Delivery Optimization.

The default value 0 (zero) means that Delivery Optimization dynamically adjusts to use the available bandwidth for downloads.
<!-- DOMaxBackgroundDownloadBandwidth-Description-End -->

<!-- DOMaxBackgroundDownloadBandwidth-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DOMaxBackgroundDownloadBandwidth-Editable-End -->

<!-- DOMaxBackgroundDownloadBandwidth-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-4294967295]` |
| Default Value  | 0 |
<!-- DOMaxBackgroundDownloadBandwidth-DFProperties-End -->

<!-- DOMaxBackgroundDownloadBandwidth-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | MaxBackgroundDownloadBandwidth |
| Friendly Name | Maximum Background Download Bandwidth (in KB/s) |
| Element Name | Maximum Background Download Bandwidth (in KB/s) |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DOMaxBackgroundDownloadBandwidth-GpMapping-End -->

<!-- DOMaxBackgroundDownloadBandwidth-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DOMaxBackgroundDownloadBandwidth-Examples-End -->

<!-- DOMaxBackgroundDownloadBandwidth-End -->

<!-- DOMaxCacheAge-Begin -->
## DOMaxCacheAge

<!-- DOMaxCacheAge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- DOMaxCacheAge-Applicability-End -->

<!-- DOMaxCacheAge-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DOMaxCacheAge
```
<!-- DOMaxCacheAge-OmaUri-End -->

<!-- DOMaxCacheAge-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Specifies the maximum time in seconds that each file is held in the Delivery Optimization cache after downloading successfully. The value 0 (zero) means unlimited; Delivery Optimization will hold the files in the cache longer and make the files available for uploads to other devices, as long as the cache size hasn't exceeded. The value 0 is new in Windows 10, version 1607. The default value is 604800 seconds (7 days).
<!-- DOMaxCacheAge-Description-End -->

<!-- DOMaxCacheAge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DOMaxCacheAge-Editable-End -->

<!-- DOMaxCacheAge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-4294967295]` |
| Default Value  | 0 |
<!-- DOMaxCacheAge-DFProperties-End -->

<!-- DOMaxCacheAge-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | MaxCacheAge |
| Friendly Name | Max Cache Age (in seconds) |
| Element Name | Max Cache Age (in seconds) |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DOMaxCacheAge-GpMapping-End -->

<!-- DOMaxCacheAge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DOMaxCacheAge-Examples-End -->

<!-- DOMaxCacheAge-End -->

<!-- DOMaxCacheSize-Begin -->
## DOMaxCacheSize

<!-- DOMaxCacheSize-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- DOMaxCacheSize-Applicability-End -->

<!-- DOMaxCacheSize-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DOMaxCacheSize
```
<!-- DOMaxCacheSize-OmaUri-End -->

<!-- DOMaxCacheSize-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Specifies the maximum cache size that Delivery Optimization can utilize, as a percentage of disk size (1-100). The default value is 20.
<!-- DOMaxCacheSize-Description-End -->

<!-- DOMaxCacheSize-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DOMaxCacheSize-Editable-End -->

<!-- DOMaxCacheSize-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[1-100]` |
| Default Value  | 0 |
<!-- DOMaxCacheSize-DFProperties-End -->

<!-- DOMaxCacheSize-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | MaxCacheSize |
| Friendly Name | Max Cache Size (percentage) |
| Element Name | Max Cache Size (Percentage) |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DOMaxCacheSize-GpMapping-End -->

<!-- DOMaxCacheSize-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DOMaxCacheSize-Examples-End -->

<!-- DOMaxCacheSize-End -->

<!-- DOMaxForegroundDownloadBandwidth-Begin -->
## DOMaxForegroundDownloadBandwidth

<!-- DOMaxForegroundDownloadBandwidth-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- DOMaxForegroundDownloadBandwidth-Applicability-End -->

<!-- DOMaxForegroundDownloadBandwidth-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DOMaxForegroundDownloadBandwidth
```
<!-- DOMaxForegroundDownloadBandwidth-OmaUri-End -->

<!-- DOMaxForegroundDownloadBandwidth-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the maximum foreground download bandwidth in KiloBytes/second that the device can use across all concurrent download activities using Delivery Optimization.

The default value 0 (zero) means that Delivery Optimization dynamically adjusts to use the available bandwidth for downloads.
<!-- DOMaxForegroundDownloadBandwidth-Description-End -->

<!-- DOMaxForegroundDownloadBandwidth-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DOMaxForegroundDownloadBandwidth-Editable-End -->

<!-- DOMaxForegroundDownloadBandwidth-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-4294967295]` |
| Default Value  | 0 |
<!-- DOMaxForegroundDownloadBandwidth-DFProperties-End -->

<!-- DOMaxForegroundDownloadBandwidth-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | MaxForegroundDownloadBandwidth |
| Friendly Name | Maximum Foreground Download Bandwidth (in KB/s) |
| Element Name | Maximum Foreground Download Bandwidth (in KB/s) |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DOMaxForegroundDownloadBandwidth-GpMapping-End -->

<!-- DOMaxForegroundDownloadBandwidth-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DOMaxForegroundDownloadBandwidth-Examples-End -->

<!-- DOMaxForegroundDownloadBandwidth-End -->

<!-- DOMinBackgroundQos-Begin -->
## DOMinBackgroundQos

<!-- DOMinBackgroundQos-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- DOMinBackgroundQos-Applicability-End -->

<!-- DOMinBackgroundQos-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DOMinBackgroundQos
```
<!-- DOMinBackgroundQos-OmaUri-End -->

<!-- DOMinBackgroundQos-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Specifies the minimum download QoS (Quality of Service or speed) in KiloBytes/sec for background downloads. This policy affects the blending of peer and HTTP sources. Delivery Optimization complements the download from the HTTP source to achieve the minimum QoS value set. The default value is 20480 (20 MB/s).
<!-- DOMinBackgroundQos-Description-End -->

<!-- DOMinBackgroundQos-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DOMinBackgroundQos-Editable-End -->

<!-- DOMinBackgroundQos-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[1-4294967295]` |
| Default Value  | 0 |
<!-- DOMinBackgroundQos-DFProperties-End -->

<!-- DOMinBackgroundQos-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | MinBackgroundQos |
| Friendly Name | Minimum Background QoS (in KB/s) |
| Element Name | Minimum Background QoS (in KB/s) |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DOMinBackgroundQos-GpMapping-End -->

<!-- DOMinBackgroundQos-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DOMinBackgroundQos-Examples-End -->

<!-- DOMinBackgroundQos-End -->

<!-- DOMinBatteryPercentageAllowedToUpload-Begin -->
## DOMinBatteryPercentageAllowedToUpload

<!-- DOMinBatteryPercentageAllowedToUpload-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DOMinBatteryPercentageAllowedToUpload-Applicability-End -->

<!-- DOMinBatteryPercentageAllowedToUpload-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DOMinBatteryPercentageAllowedToUpload
```
<!-- DOMinBatteryPercentageAllowedToUpload-OmaUri-End -->

<!-- DOMinBatteryPercentageAllowedToUpload-Description-Begin -->
<!-- Description-Source-ADMX -->
Specify any value between 1 and 100 (in percentage) to allow the device to upload data to LAN and Group peers while on DC power (Battery).

The recommended value to set if you allow uploads on battery is 40 (for 40%). The device can download from peers while on battery regardless of this policy.

The value 0 means "not-limited"; The cloud service set default value will be used.
<!-- DOMinBatteryPercentageAllowedToUpload-Description-End -->

<!-- DOMinBatteryPercentageAllowedToUpload-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DOMinBatteryPercentageAllowedToUpload-Editable-End -->

<!-- DOMinBatteryPercentageAllowedToUpload-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-100]` |
| Default Value  | 0 |
<!-- DOMinBatteryPercentageAllowedToUpload-DFProperties-End -->

<!-- DOMinBatteryPercentageAllowedToUpload-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | MinBatteryPercentageAllowedToUpload |
| Friendly Name | Allow uploads while the device is on battery while under set Battery level (percentage) |
| Element Name | Minimum battery level (Percentage) |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DOMinBatteryPercentageAllowedToUpload-GpMapping-End -->

<!-- DOMinBatteryPercentageAllowedToUpload-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DOMinBatteryPercentageAllowedToUpload-Examples-End -->

<!-- DOMinBatteryPercentageAllowedToUpload-End -->

<!-- DOMinDiskSizeAllowedToPeer-Begin -->
## DOMinDiskSizeAllowedToPeer

<!-- DOMinDiskSizeAllowedToPeer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DOMinDiskSizeAllowedToPeer-Applicability-End -->

<!-- DOMinDiskSizeAllowedToPeer-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DOMinDiskSizeAllowedToPeer
```
<!-- DOMinDiskSizeAllowedToPeer-OmaUri-End -->

<!-- DOMinDiskSizeAllowedToPeer-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the required minimum disk size (capacity in GB) for the device to use Peer Caching. The cloud service set default value will be used.

Recommended values: 64 GB to 256 GB.

> [!NOTE]
> If the DOModifyCacheDrive policy is set, the disk size check will apply to the new working directory specified by this policy.
<!-- DOMinDiskSizeAllowedToPeer-Description-End -->

<!-- DOMinDiskSizeAllowedToPeer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DOMinDiskSizeAllowedToPeer-Editable-End -->

<!-- DOMinDiskSizeAllowedToPeer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[1-100000]` |
| Default Value  | 0 |
<!-- DOMinDiskSizeAllowedToPeer-DFProperties-End -->

<!-- DOMinDiskSizeAllowedToPeer-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | MinDiskSizeAllowedToPeer |
| Friendly Name | Minimum disk size allowed to use Peer Caching (in GB) |
| Element Name | Minimum disk size allowed to use Peer Caching (in GB) |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DOMinDiskSizeAllowedToPeer-GpMapping-End -->

<!-- DOMinDiskSizeAllowedToPeer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DOMinDiskSizeAllowedToPeer-Examples-End -->

<!-- DOMinDiskSizeAllowedToPeer-End -->

<!-- DOMinFileSizeToCache-Begin -->
## DOMinFileSizeToCache

<!-- DOMinFileSizeToCache-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DOMinFileSizeToCache-Applicability-End -->

<!-- DOMinFileSizeToCache-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DOMinFileSizeToCache
```
<!-- DOMinFileSizeToCache-OmaUri-End -->

<!-- DOMinFileSizeToCache-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Specifies the minimum content file size in MB enabled to use Peer Caching. Recommended values: 1 MB to 100,000 MB. The default value is 100 MB.
<!-- DOMinFileSizeToCache-Description-End -->

<!-- DOMinFileSizeToCache-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DOMinFileSizeToCache-Editable-End -->

<!-- DOMinFileSizeToCache-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[1-100000]` |
| Default Value  | 0 |
<!-- DOMinFileSizeToCache-DFProperties-End -->

<!-- DOMinFileSizeToCache-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | MinFileSizeToCache |
| Friendly Name | Minimum Peer Caching Content File Size (in MB) |
| Element Name | Minimum Peer Caching Content File Size (in MB) |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DOMinFileSizeToCache-GpMapping-End -->

<!-- DOMinFileSizeToCache-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DOMinFileSizeToCache-Examples-End -->

<!-- DOMinFileSizeToCache-End -->

<!-- DOMinRAMAllowedToPeer-Begin -->
## DOMinRAMAllowedToPeer

<!-- DOMinRAMAllowedToPeer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DOMinRAMAllowedToPeer-Applicability-End -->

<!-- DOMinRAMAllowedToPeer-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DOMinRAMAllowedToPeer
```
<!-- DOMinRAMAllowedToPeer-OmaUri-End -->

<!-- DOMinRAMAllowedToPeer-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Specifies the minimum RAM size in GB required to use Peer Caching. For example, if the minimum set is 1 GB, then devices with 1 GB or higher available RAM will be allowed to use Peer caching. Recommended values: 1 GB to 4 GB. The default value is 4 GB.
<!-- DOMinRAMAllowedToPeer-Description-End -->

<!-- DOMinRAMAllowedToPeer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DOMinRAMAllowedToPeer-Editable-End -->

<!-- DOMinRAMAllowedToPeer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[1-100000]` |
| Default Value  | 0 |
<!-- DOMinRAMAllowedToPeer-DFProperties-End -->

<!-- DOMinRAMAllowedToPeer-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | MinRAMAllowedToPeer |
| Friendly Name | Minimum RAM capacity (inclusive) required to enable use of Peer Caching (in GB) |
| Element Name | Minimum RAM capacity (inclusive) required to enable use of Peer Caching (in GB) |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DOMinRAMAllowedToPeer-GpMapping-End -->

<!-- DOMinRAMAllowedToPeer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DOMinRAMAllowedToPeer-Examples-End -->

<!-- DOMinRAMAllowedToPeer-End -->

<!-- DOModifyCacheDrive-Begin -->
## DOModifyCacheDrive

<!-- DOModifyCacheDrive-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- DOModifyCacheDrive-Applicability-End -->

<!-- DOModifyCacheDrive-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DOModifyCacheDrive
```
<!-- DOModifyCacheDrive-OmaUri-End -->

<!-- DOModifyCacheDrive-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the drive Delivery Optimization shall use for its cache.

By default, %SystemDrive% is used to store the cache. The drive location can be specified using environment variables, drive letter or using a full path.
<!-- DOModifyCacheDrive-Description-End -->

<!-- DOModifyCacheDrive-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DOModifyCacheDrive-Editable-End -->

<!-- DOModifyCacheDrive-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DOModifyCacheDrive-DFProperties-End -->

<!-- DOModifyCacheDrive-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ModifyCacheDrive |
| Friendly Name | Modify Cache Drive |
| Element Name | Modify Cache Drive. |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DOModifyCacheDrive-GpMapping-End -->

<!-- DOModifyCacheDrive-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DOModifyCacheDrive-Examples-End -->

<!-- DOModifyCacheDrive-End -->

<!-- DOMonthlyUploadDataCap-Begin -->
## DOMonthlyUploadDataCap

<!-- DOMonthlyUploadDataCap-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- DOMonthlyUploadDataCap-Applicability-End -->

<!-- DOMonthlyUploadDataCap-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DOMonthlyUploadDataCap
```
<!-- DOMonthlyUploadDataCap-OmaUri-End -->

<!-- DOMonthlyUploadDataCap-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Specifies the maximum total bytes in GB that Delivery Optimization is allowed to upload to Internet peers in each calendar month. The value 0 (zero) means unlimited; No monthly upload limit's applied if 0 is set. The default value is 5120 (5 TB).
<!-- DOMonthlyUploadDataCap-Description-End -->

<!-- DOMonthlyUploadDataCap-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DOMonthlyUploadDataCap-Editable-End -->

<!-- DOMonthlyUploadDataCap-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-4294967295]` |
| Default Value  | 0 |
<!-- DOMonthlyUploadDataCap-DFProperties-End -->

<!-- DOMonthlyUploadDataCap-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | MonthlyUploadDataCap |
| Friendly Name | Monthly Upload Data Cap (in GB) |
| Element Name | Monthly Upload Data Cap (in GB) |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DOMonthlyUploadDataCap-GpMapping-End -->

<!-- DOMonthlyUploadDataCap-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DOMonthlyUploadDataCap-Examples-End -->

<!-- DOMonthlyUploadDataCap-End -->

<!-- DOPercentageMaxBackgroundBandwidth-Begin -->
## DOPercentageMaxBackgroundBandwidth

<!-- DOPercentageMaxBackgroundBandwidth-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- DOPercentageMaxBackgroundBandwidth-Applicability-End -->

<!-- DOPercentageMaxBackgroundBandwidth-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DOPercentageMaxBackgroundBandwidth
```
<!-- DOPercentageMaxBackgroundBandwidth-OmaUri-End -->

<!-- DOPercentageMaxBackgroundBandwidth-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the maximum background download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth.

The default value 0 (zero) means that Delivery Optimization dynamically adjusts to use the available bandwidth for background downloads.
<!-- DOPercentageMaxBackgroundBandwidth-Description-End -->

<!-- DOPercentageMaxBackgroundBandwidth-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

Downloads from LAN peers won't be throttled even when this policy is set.
<!-- DOPercentageMaxBackgroundBandwidth-Editable-End -->

<!-- DOPercentageMaxBackgroundBandwidth-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-100]` |
| Default Value  | 0 |
<!-- DOPercentageMaxBackgroundBandwidth-DFProperties-End -->

<!-- DOPercentageMaxBackgroundBandwidth-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | PercentageMaxBackgroundBandwidth |
| Friendly Name | Maximum Background Download Bandwidth (percentage) |
| Element Name | Maximum Background Download Bandwidth (Percentage) |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DOPercentageMaxBackgroundBandwidth-GpMapping-End -->

<!-- DOPercentageMaxBackgroundBandwidth-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DOPercentageMaxBackgroundBandwidth-Examples-End -->

<!-- DOPercentageMaxBackgroundBandwidth-End -->

<!-- DOPercentageMaxForegroundBandwidth-Begin -->
## DOPercentageMaxForegroundBandwidth

<!-- DOPercentageMaxForegroundBandwidth-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- DOPercentageMaxForegroundBandwidth-Applicability-End -->

<!-- DOPercentageMaxForegroundBandwidth-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DOPercentageMaxForegroundBandwidth
```
<!-- DOPercentageMaxForegroundBandwidth-OmaUri-End -->

<!-- DOPercentageMaxForegroundBandwidth-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the maximum foreground download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth.

The default value 0 (zero) means that Delivery Optimization dynamically adjusts to use the available bandwidth for foreground downloads.
<!-- DOPercentageMaxForegroundBandwidth-Description-End -->

<!-- DOPercentageMaxForegroundBandwidth-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DOPercentageMaxForegroundBandwidth-Editable-End -->

<!-- DOPercentageMaxForegroundBandwidth-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-100]` |
| Default Value  | 0 |
<!-- DOPercentageMaxForegroundBandwidth-DFProperties-End -->

<!-- DOPercentageMaxForegroundBandwidth-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | PercentageMaxForegroundBandwidth |
| Friendly Name | Maximum Foreground Download Bandwidth (percentage) |
| Element Name | Maximum Foreground Download Bandwidth (Percentage) |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DOPercentageMaxForegroundBandwidth-GpMapping-End -->

<!-- DOPercentageMaxForegroundBandwidth-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DOPercentageMaxForegroundBandwidth-Examples-End -->

<!-- DOPercentageMaxForegroundBandwidth-End -->

<!-- DORestrictPeerSelectionBy-Begin -->
## DORestrictPeerSelectionBy

<!-- DORestrictPeerSelectionBy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- DORestrictPeerSelectionBy-Applicability-End -->

<!-- DORestrictPeerSelectionBy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DORestrictPeerSelectionBy
```
<!-- DORestrictPeerSelectionBy-OmaUri-End -->

<!-- DORestrictPeerSelectionBy-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Set this policy to restrict peer selection via selected option. Options available are: 1=Subnet mask, 2 = Local discovery (DNS-SD). These options apply to both Download Mode LAN (1) and Group (2).
<!-- DORestrictPeerSelectionBy-Description-End -->

<!-- DORestrictPeerSelectionBy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
If Group mode is set, Delivery Optimization will connect to locally discovered peers that are also part of the same Group (have the same Group ID).

In Windows 11 the 'Local Peer Discovery' option was introduced to restrict peer discovery to the local network. The default value in Windows 11 is set to 'Local Peer Discovery'. The Local Peer Discovery (DNS-SD) option can only be set via MDM delivered policies on Windows 11 builds.
<!-- DORestrictPeerSelectionBy-Editable-End -->

<!-- DORestrictPeerSelectionBy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DORestrictPeerSelectionBy-DFProperties-End -->

<!-- DORestrictPeerSelectionBy-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | None. |
| 1 | Subnet mask. |
| 2 | Local peer discovery (DNS-SD). |
<!-- DORestrictPeerSelectionBy-AllowedValues-End -->

<!-- DORestrictPeerSelectionBy-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | RestrictPeerSelectionBy |
| Friendly Name | Select a method to restrict Peer Selection |
| Element Name | Restrict Peer Selection By. |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DORestrictPeerSelectionBy-GpMapping-End -->

<!-- DORestrictPeerSelectionBy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DORestrictPeerSelectionBy-Examples-End -->

<!-- DORestrictPeerSelectionBy-End -->

<!-- DOSetHoursToLimitBackgroundDownloadBandwidth-Begin -->
## DOSetHoursToLimitBackgroundDownloadBandwidth

<!-- DOSetHoursToLimitBackgroundDownloadBandwidth-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- DOSetHoursToLimitBackgroundDownloadBandwidth-Applicability-End -->

<!-- DOSetHoursToLimitBackgroundDownloadBandwidth-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DOSetHoursToLimitBackgroundDownloadBandwidth
```
<!-- DOSetHoursToLimitBackgroundDownloadBandwidth-OmaUri-End -->

<!-- DOSetHoursToLimitBackgroundDownloadBandwidth-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the maximum background download bandwidth that Delivery Optimization uses during and outside business hours across all concurrent download activities as a percentage of available download bandwidth.
<!-- DOSetHoursToLimitBackgroundDownloadBandwidth-Description-End -->

<!-- DOSetHoursToLimitBackgroundDownloadBandwidth-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DOSetHoursToLimitBackgroundDownloadBandwidth-Editable-End -->

<!-- DOSetHoursToLimitBackgroundDownloadBandwidth-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DOSetHoursToLimitBackgroundDownloadBandwidth-DFProperties-End -->

<!-- DOSetHoursToLimitBackgroundDownloadBandwidth-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SetHoursToLimitBackgroundDownloadBandwidth |
| Friendly Name | Set Business Hours to Limit Background Download Bandwidth |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DOSetHoursToLimitBackgroundDownloadBandwidth-AdmxBacked-End -->

<!-- DOSetHoursToLimitBackgroundDownloadBandwidth-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DOSetHoursToLimitBackgroundDownloadBandwidth-Examples-End -->

<!-- DOSetHoursToLimitBackgroundDownloadBandwidth-End -->

<!-- DOSetHoursToLimitForegroundDownloadBandwidth-Begin -->
## DOSetHoursToLimitForegroundDownloadBandwidth

<!-- DOSetHoursToLimitForegroundDownloadBandwidth-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- DOSetHoursToLimitForegroundDownloadBandwidth-Applicability-End -->

<!-- DOSetHoursToLimitForegroundDownloadBandwidth-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DOSetHoursToLimitForegroundDownloadBandwidth
```
<!-- DOSetHoursToLimitForegroundDownloadBandwidth-OmaUri-End -->

<!-- DOSetHoursToLimitForegroundDownloadBandwidth-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the maximum foreground download bandwidth that Delivery Optimization uses during and outside business hours across all concurrent download activities as a percentage of available download bandwidth.
<!-- DOSetHoursToLimitForegroundDownloadBandwidth-Description-End -->

<!-- DOSetHoursToLimitForegroundDownloadBandwidth-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This policy allows an IT Admin to define the following details:

-  Business hours range (for example 06:00 to 18:00)
-  % of throttle for background traffic during business hours
-  % of throttle for background traffic outside of business hours
<!-- DOSetHoursToLimitForegroundDownloadBandwidth-Editable-End -->

<!-- DOSetHoursToLimitForegroundDownloadBandwidth-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DOSetHoursToLimitForegroundDownloadBandwidth-DFProperties-End -->

<!-- DOSetHoursToLimitForegroundDownloadBandwidth-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SetHoursToLimitForegroundDownloadBandwidth |
| Friendly Name | Set Business Hours to Limit Foreground Download Bandwidth |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DOSetHoursToLimitForegroundDownloadBandwidth-AdmxBacked-End -->

<!-- DOSetHoursToLimitForegroundDownloadBandwidth-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DOSetHoursToLimitForegroundDownloadBandwidth-Examples-End -->

<!-- DOSetHoursToLimitForegroundDownloadBandwidth-End -->

<!-- DOVpnKeywords-Begin -->
## DOVpnKeywords

<!-- DOVpnKeywords-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621.2361] and later <br> ✅ Windows Insider Preview |
<!-- DOVpnKeywords-Applicability-End -->

<!-- DOVpnKeywords-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeliveryOptimization/DOVpnKeywords
```
<!-- DOVpnKeywords-OmaUri-End -->

<!-- DOVpnKeywords-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy allows you to set one or more keywords used to recognize VPN connections. To add multiple keywords, separate them with commas.
<!-- DOVpnKeywords-Description-End -->

<!-- DOVpnKeywords-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DOVpnKeywords-Editable-End -->

<!-- DOVpnKeywords-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `,`) |
<!-- DOVpnKeywords-DFProperties-End -->

<!-- DOVpnKeywords-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | VpnKeywords |
| Friendly Name | VPN Keywords |
| Element Name | VPN Keywords. |
| Location | Computer Configuration |
| Path | Windows Components > Delivery Optimization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization |
| ADMX File Name | DeliveryOptimization.admx |
<!-- DOVpnKeywords-GpMapping-End -->

<!-- DOVpnKeywords-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DOVpnKeywords-Examples-End -->

<!-- DOVpnKeywords-End -->

<!-- DeliveryOptimization-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- DeliveryOptimization-CspMoreInfo-End -->

<!-- DeliveryOptimization-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
