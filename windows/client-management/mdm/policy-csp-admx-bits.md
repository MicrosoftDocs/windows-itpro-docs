---
title: ADMX_Bits Policy CSP
description: Learn more about the ADMX_Bits Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_Bits-Begin -->
# Policy CSP - ADMX_Bits

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_Bits-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Bits-Editable-End -->

<!-- BITS_DisableBranchCache-Begin -->
## BITS_DisableBranchCache

<!-- BITS_DisableBranchCache-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- BITS_DisableBranchCache-Applicability-End -->

<!-- BITS_DisableBranchCache-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Bits/BITS_DisableBranchCache
```
<!-- BITS_DisableBranchCache-OmaUri-End -->

<!-- BITS_DisableBranchCache-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting affects whether the BITS client is allowed to use Windows Branch Cache. If the Windows Branch Cache component is installed and enabled on a computer, BITS jobs on that computer can use Windows Branch Cache by default.

- If you enable this policy setting, the BITS client doesn't use Windows Branch Cache.

- If you disable or don't configure this policy setting, the BITS client uses Windows Branch Cache.

> [!NOTE]
> This policy setting doesn't affect the use of Windows Branch Cache by applications other than BITS. This policy setting doesn't apply to BITS transfers over SMB. This setting has no effect if the computer's administrative settings for Windows Branch Cache disable its use entirely.
<!-- BITS_DisableBranchCache-Description-End -->

<!-- BITS_DisableBranchCache-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BITS_DisableBranchCache-Editable-End -->

<!-- BITS_DisableBranchCache-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- BITS_DisableBranchCache-DFProperties-End -->

<!-- BITS_DisableBranchCache-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | BITS_DisableBranchCache |
| Friendly Name | Do not allow the BITS client to use Windows Branch Cache |
| Location | Computer Configuration |
| Path | Network > Background Intelligent Transfer Service (BITS) |
| Registry Key Name | Software\Policies\Microsoft\Windows\BITS |
| Registry Value Name | DisableBranchCache |
| ADMX File Name | Bits.admx |
<!-- BITS_DisableBranchCache-AdmxBacked-End -->

<!-- BITS_DisableBranchCache-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BITS_DisableBranchCache-Examples-End -->

<!-- BITS_DisableBranchCache-End -->

<!-- BITS_DisablePeercachingClient-Begin -->
## BITS_DisablePeercachingClient

<!-- BITS_DisablePeercachingClient-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- BITS_DisablePeercachingClient-Applicability-End -->

<!-- BITS_DisablePeercachingClient-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Bits/BITS_DisablePeercachingClient
```
<!-- BITS_DisablePeercachingClient-OmaUri-End -->

<!-- BITS_DisablePeercachingClient-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether the computer will act as a BITS peer caching client. By default, when BITS peer caching is enabled, the computer acts as both a peer caching server (offering files to its peers) and a peer caching client (downloading files from its peers).

- If you enable this policy setting, the computer will no longer use the BITS peer caching feature to download files; files will be downloaded only from the origin server. However, the computer will still make files available to its peers.

- If you disable or don't configure this policy setting, the computer attempts to download peer-enabled BITS jobs from peer computers before reverting to the origin server.

> [!NOTE]
> This policy setting has no effect if the "Allow BITS peer caching" policy setting is disabled or not configured.
<!-- BITS_DisablePeercachingClient-Description-End -->

<!-- BITS_DisablePeercachingClient-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BITS_DisablePeercachingClient-Editable-End -->

<!-- BITS_DisablePeercachingClient-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- BITS_DisablePeercachingClient-DFProperties-End -->

<!-- BITS_DisablePeercachingClient-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | BITS_DisablePeercachingClient |
| Friendly Name | Do not allow the computer to act as a BITS Peercaching client |
| Location | Computer Configuration |
| Path | Network > Background Intelligent Transfer Service (BITS) |
| Registry Key Name | Software\Policies\Microsoft\Windows\BITS |
| Registry Value Name | DisablePeerCachingClient |
| ADMX File Name | Bits.admx |
<!-- BITS_DisablePeercachingClient-AdmxBacked-End -->

<!-- BITS_DisablePeercachingClient-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BITS_DisablePeercachingClient-Examples-End -->

<!-- BITS_DisablePeercachingClient-End -->

<!-- BITS_DisablePeercachingServer-Begin -->
## BITS_DisablePeercachingServer

<!-- BITS_DisablePeercachingServer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- BITS_DisablePeercachingServer-Applicability-End -->

<!-- BITS_DisablePeercachingServer-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Bits/BITS_DisablePeercachingServer
```
<!-- BITS_DisablePeercachingServer-OmaUri-End -->

<!-- BITS_DisablePeercachingServer-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether the computer will act as a BITS peer caching server. By default, when BITS peer caching is enabled, the computer acts as both a peer caching server (offering files to its peers) and a peer caching client (downloading files from its peers).

- If you enable this policy setting, the computer will no longer cache downloaded files and offer them to its peers. However, the computer will still download files from peers.

- If you disable or don't configure this policy setting, the computer will offer downloaded and cached files to its peers.

> [!NOTE]
> This setting has no effect if the "Allow BITS peer caching" setting is disabled or not configured.
<!-- BITS_DisablePeercachingServer-Description-End -->

<!-- BITS_DisablePeercachingServer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BITS_DisablePeercachingServer-Editable-End -->

<!-- BITS_DisablePeercachingServer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- BITS_DisablePeercachingServer-DFProperties-End -->

<!-- BITS_DisablePeercachingServer-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | BITS_DisablePeercachingServer |
| Friendly Name | Do not allow the computer to act as a BITS Peercaching server |
| Location | Computer Configuration |
| Path | Network > Background Intelligent Transfer Service (BITS) |
| Registry Key Name | Software\Policies\Microsoft\Windows\BITS |
| Registry Value Name | DisablePeerCachingServer |
| ADMX File Name | Bits.admx |
<!-- BITS_DisablePeercachingServer-AdmxBacked-End -->

<!-- BITS_DisablePeercachingServer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BITS_DisablePeercachingServer-Examples-End -->

<!-- BITS_DisablePeercachingServer-End -->

<!-- BITS_EnablePeercaching-Begin -->
## BITS_EnablePeercaching

<!-- BITS_EnablePeercaching-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- BITS_EnablePeercaching-Applicability-End -->

<!-- BITS_EnablePeercaching-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Bits/BITS_EnablePeercaching
```
<!-- BITS_EnablePeercaching-OmaUri-End -->

<!-- BITS_EnablePeercaching-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines if the Background Intelligent Transfer Service (BITS) peer caching feature is enabled on a specific computer. By default, the files in a BITS job are downloaded only from the origin server specified by the job's owner.

If BITS peer caching is enabled, BITS caches downloaded files and makes them available to other BITS peers. When transferring a download job, BITS first requests the files for the job from its peers in the same IP subnet. If none of the peers in the subnet have the requested files, BITS downloads them from the origin server.

- If you enable this policy setting, BITS downloads files from peers, caches the files, and responds to content requests from peers. Using the "Do not allow the computer to act as a BITS peer caching server" and "Do not allow the computer to act as a BITS peer caching client" policy settings, it's possible to control BITS peer caching functionality at a more detailed level. However, it should be noted that the "Allow BITS peer caching" policy setting must be enabled for the other two policy settings to have any effect.

- If you disable or don't configure this policy setting, the BITS peer caching feature will be disabled, and BITS will download files directly from the origin server.
<!-- BITS_EnablePeercaching-Description-End -->

<!-- BITS_EnablePeercaching-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BITS_EnablePeercaching-Editable-End -->

<!-- BITS_EnablePeercaching-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- BITS_EnablePeercaching-DFProperties-End -->

<!-- BITS_EnablePeercaching-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | BITS_EnablePeercaching |
| Friendly Name | Allow BITS Peercaching |
| Location | Computer Configuration |
| Path | Network > Background Intelligent Transfer Service (BITS) |
| Registry Key Name | Software\Policies\Microsoft\Windows\BITS |
| Registry Value Name | EnablePeercaching |
| ADMX File Name | Bits.admx |
<!-- BITS_EnablePeercaching-AdmxBacked-End -->

<!-- BITS_EnablePeercaching-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BITS_EnablePeercaching-Examples-End -->

<!-- BITS_EnablePeercaching-End -->

<!-- BITS_MaxBandwidthServedForPeers-Begin -->
## BITS_MaxBandwidthServedForPeers

<!-- BITS_MaxBandwidthServedForPeers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- BITS_MaxBandwidthServedForPeers-Applicability-End -->

<!-- BITS_MaxBandwidthServedForPeers-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Bits/BITS_MaxBandwidthServedForPeers
```
<!-- BITS_MaxBandwidthServedForPeers-OmaUri-End -->

<!-- BITS_MaxBandwidthServedForPeers-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting limits the network bandwidth that BITS uses for peer cache transfers (this setting doesn't affect transfers from the origin server).

To prevent any negative impact to a computer caused by serving other peers, by default BITS will use up to 30 percent of the bandwidth of the slowest active network interface. For example, if a computer has both a 100 Mbps network card and a 56 Kbps modem, and both are active, BITS will use a maximum of 30 percent of 56 Kbps.

You can change the default behavior of BITS, and specify a fixed maximum bandwidth that BITS will use for peer caching.

- If you enable this policy setting, you can enter a value in bits per second (bps) between 1048576 and 4294967200 to use as the maximum network bandwidth used for peer caching.

- If you disable this policy setting or don't configure it, the default value of 30 percent of the slowest active network interface will be used.

> [!NOTE]
> This setting has no effect if the "Allow BITS peer caching" policy setting is disabled or not configured.
<!-- BITS_MaxBandwidthServedForPeers-Description-End -->

<!-- BITS_MaxBandwidthServedForPeers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BITS_MaxBandwidthServedForPeers-Editable-End -->

<!-- BITS_MaxBandwidthServedForPeers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- BITS_MaxBandwidthServedForPeers-DFProperties-End -->

<!-- BITS_MaxBandwidthServedForPeers-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | BITS_MaxBandwidthServedForPeers |
| Friendly Name | Limit the maximum network bandwidth used for Peercaching |
| Location | Computer Configuration |
| Path | Network > Background Intelligent Transfer Service (BITS) |
| Registry Key Name | Software\Policies\Microsoft\Windows\BITS |
| ADMX File Name | Bits.admx |
<!-- BITS_MaxBandwidthServedForPeers-AdmxBacked-End -->

<!-- BITS_MaxBandwidthServedForPeers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BITS_MaxBandwidthServedForPeers-Examples-End -->

<!-- BITS_MaxBandwidthServedForPeers-End -->

<!-- BITS_MaxBandwidthV2_Maintenance-Begin -->
## BITS_MaxBandwidthV2_Maintenance

<!-- BITS_MaxBandwidthV2_Maintenance-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- BITS_MaxBandwidthV2_Maintenance-Applicability-End -->

<!-- BITS_MaxBandwidthV2_Maintenance-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Bits/BITS_MaxBandwidthV2_Maintenance
```
<!-- BITS_MaxBandwidthV2_Maintenance-OmaUri-End -->

<!-- BITS_MaxBandwidthV2_Maintenance-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting limits the network bandwidth that Background Intelligent Transfer Service (BITS) uses for background transfers during the maintenance days and hours. Maintenance schedules further limit the network bandwidth that's used for background transfers.

- If you enable this policy setting, you can define a separate set of network bandwidth limits and set up a schedule for the maintenance period.

You can specify a limit to use for background jobs during a maintenance schedule. For example, if normal priority jobs are currently limited to 256 Kbps on a work schedule, you can further limit the network bandwidth of normal priority jobs to 0 Kbps from 8:00 A. M. to 10:00 A. M. on a maintenance schedule.

- If you disable or don't configure this policy setting, the limits defined for work or nonwork schedules will be used.

> [!NOTE]
> The bandwidth limits that are set for the maintenance period supersede any limits defined for work and other schedules.
<!-- BITS_MaxBandwidthV2_Maintenance-Description-End -->

<!-- BITS_MaxBandwidthV2_Maintenance-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BITS_MaxBandwidthV2_Maintenance-Editable-End -->

<!-- BITS_MaxBandwidthV2_Maintenance-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- BITS_MaxBandwidthV2_Maintenance-DFProperties-End -->

<!-- BITS_MaxBandwidthV2_Maintenance-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | BITS_MaxBandwidthV2_Maintenance |
| Friendly Name | Set up a maintenance schedule to limit the maximum network bandwidth used for BITS background transfers |
| Location | Computer Configuration |
| Path | Network > Background Intelligent Transfer Service (BITS) |
| Registry Key Name | Software\Policies\Microsoft\Windows\BITS\Throttling |
| Registry Value Name | EnableMaintenanceLimits |
| ADMX File Name | Bits.admx |
<!-- BITS_MaxBandwidthV2_Maintenance-AdmxBacked-End -->

<!-- BITS_MaxBandwidthV2_Maintenance-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BITS_MaxBandwidthV2_Maintenance-Examples-End -->

<!-- BITS_MaxBandwidthV2_Maintenance-End -->

<!-- BITS_MaxBandwidthV2_Work-Begin -->
## BITS_MaxBandwidthV2_Work

<!-- BITS_MaxBandwidthV2_Work-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- BITS_MaxBandwidthV2_Work-Applicability-End -->

<!-- BITS_MaxBandwidthV2_Work-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Bits/BITS_MaxBandwidthV2_Work
```
<!-- BITS_MaxBandwidthV2_Work-OmaUri-End -->

<!-- BITS_MaxBandwidthV2_Work-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting limits the network bandwidth that Background Intelligent Transfer Service (BITS) uses for background transfers during the work and nonwork days and hours. The work schedule is defined using a weekly calendar, which consists of days of the week and hours of the day. All hours and days that aren't defined in a work schedule are considered non-work hours.

- If you enable this policy setting, you can set up a schedule for limiting network bandwidth during both work and nonwork hours. After the work schedule is defined, you can set the bandwidth usage limits for each of the three BITS background priority levels: high, normal, and low.

You can specify a limit to use for background jobs during a work schedule. For example, you can limit the network bandwidth of low priority jobs to 128 Kbps from 8:00 A. M. to 5:00 P. M. on Monday through Friday, and then set the limit to 512 Kbps for nonwork hours.

- If you disable or don't configure this policy setting, BITS uses all available unused bandwidth for background job transfers.
<!-- BITS_MaxBandwidthV2_Work-Description-End -->

<!-- BITS_MaxBandwidthV2_Work-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BITS_MaxBandwidthV2_Work-Editable-End -->

<!-- BITS_MaxBandwidthV2_Work-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- BITS_MaxBandwidthV2_Work-DFProperties-End -->

<!-- BITS_MaxBandwidthV2_Work-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | BITS_MaxBandwidthV2_Work |
| Friendly Name | Set up a work schedule to limit the maximum network bandwidth used for BITS background transfers |
| Location | Computer Configuration |
| Path | Network > Background Intelligent Transfer Service (BITS) |
| Registry Key Name | Software\Policies\Microsoft\Windows\BITS\Throttling |
| Registry Value Name | EnableBandwidthLimits |
| ADMX File Name | Bits.admx |
<!-- BITS_MaxBandwidthV2_Work-AdmxBacked-End -->

<!-- BITS_MaxBandwidthV2_Work-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BITS_MaxBandwidthV2_Work-Examples-End -->

<!-- BITS_MaxBandwidthV2_Work-End -->

<!-- BITS_MaxCacheSize-Begin -->
## BITS_MaxCacheSize

<!-- BITS_MaxCacheSize-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- BITS_MaxCacheSize-Applicability-End -->

<!-- BITS_MaxCacheSize-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Bits/BITS_MaxCacheSize
```
<!-- BITS_MaxCacheSize-OmaUri-End -->

<!-- BITS_MaxCacheSize-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting limits the maximum amount of disk space that can be used for the BITS peer cache, as a percentage of the total system disk size. BITS will add files to the peer cache and make those files available to peers until the cache content reaches the specified cache size. By default, BITS will use 1 percent of the total system disk for the peercache.

- If you enable this policy setting, you can enter the percentage of disk space to be used for the BITS peer cache. You can enter a value between 1 percent and 80 percent.

- If you disable or don't configure this policy setting, the default size of the BITS peer cache is 1 percent of the total system disk size.

> [!NOTE]
> This policy setting has no effect if the "Allow BITS peer caching" setting is disabled or not configured.
<!-- BITS_MaxCacheSize-Description-End -->

<!-- BITS_MaxCacheSize-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BITS_MaxCacheSize-Editable-End -->

<!-- BITS_MaxCacheSize-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- BITS_MaxCacheSize-DFProperties-End -->

<!-- BITS_MaxCacheSize-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | BITS_MaxCacheSize |
| Friendly Name | Limit the BITS Peercache size |
| Location | Computer Configuration |
| Path | Network > Background Intelligent Transfer Service (BITS) |
| Registry Key Name | Software\Policies\Microsoft\Windows\BITS |
| ADMX File Name | Bits.admx |
<!-- BITS_MaxCacheSize-AdmxBacked-End -->

<!-- BITS_MaxCacheSize-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BITS_MaxCacheSize-Examples-End -->

<!-- BITS_MaxCacheSize-End -->

<!-- BITS_MaxContentAge-Begin -->
## BITS_MaxContentAge

<!-- BITS_MaxContentAge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- BITS_MaxContentAge-Applicability-End -->

<!-- BITS_MaxContentAge-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Bits/BITS_MaxContentAge
```
<!-- BITS_MaxContentAge-OmaUri-End -->

<!-- BITS_MaxContentAge-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting limits the maximum age of files in the Background Intelligent Transfer Service (BITS) peer cache. In order to make the most efficient use of disk space, by default BITS removes any files in the peer cache that haven't been accessed in the past 90 days.

- If you enable this policy setting, you can specify in days the maximum age of files in the cache. You can enter a value between 1 and 120 days.

- If you disable or don't configure this policy setting, files that haven't been accessed for the past 90 days will be removed from the peer cache.

> [!NOTE]
> This policy setting has no effect if the "Allow BITS Peercaching" policy setting is disabled or not configured.
<!-- BITS_MaxContentAge-Description-End -->

<!-- BITS_MaxContentAge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->Available in the latest Windows 10 Insider Preview Build.
<!-- BITS_MaxContentAge-Editable-End -->

<!-- BITS_MaxContentAge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- BITS_MaxContentAge-DFProperties-End -->

<!-- BITS_MaxContentAge-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | BITS_MaxContentAge |
| Friendly Name | Limit the age of files in the BITS Peercache |
| Location | Computer Configuration |
| Path | Network > Background Intelligent Transfer Service (BITS) |
| Registry Key Name | Software\Policies\Microsoft\Windows\BITS |
| ADMX File Name | Bits.admx |
<!-- BITS_MaxContentAge-AdmxBacked-End -->

<!-- BITS_MaxContentAge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BITS_MaxContentAge-Examples-End -->

<!-- BITS_MaxContentAge-End -->

<!-- BITS_MaxDownloadTime-Begin -->
## BITS_MaxDownloadTime

<!-- BITS_MaxDownloadTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- BITS_MaxDownloadTime-Applicability-End -->

<!-- BITS_MaxDownloadTime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Bits/BITS_MaxDownloadTime
```
<!-- BITS_MaxDownloadTime-OmaUri-End -->

<!-- BITS_MaxDownloadTime-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting limits the amount of time that Background Intelligent Transfer Service (BITS) will take to download the files in a BITS job.

The time limit applies only to the time that BITS is actively downloading files. When the cumulative download time exceeds this limit, the job is placed in the error state.

By default BITS uses a maximum download time of 90 days (7,776,000 seconds).

- If you enable this policy setting, you can set the maximum job download time to a specified number of seconds.

- If you disable or don't configure this policy setting, the default value of 90 days (7,776,000 seconds) will be used.
<!-- BITS_MaxDownloadTime-Description-End -->

<!-- BITS_MaxDownloadTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BITS_MaxDownloadTime-Editable-End -->

<!-- BITS_MaxDownloadTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- BITS_MaxDownloadTime-DFProperties-End -->

<!-- BITS_MaxDownloadTime-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | BITS_MaxDownloadTime |
| Friendly Name | Limit the maximum BITS job download time |
| Location | Computer Configuration |
| Path | Network > Background Intelligent Transfer Service (BITS) |
| Registry Key Name | Software\Policies\Microsoft\Windows\BITS |
| ADMX File Name | Bits.admx |
<!-- BITS_MaxDownloadTime-AdmxBacked-End -->

<!-- BITS_MaxDownloadTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BITS_MaxDownloadTime-Examples-End -->

<!-- BITS_MaxDownloadTime-End -->

<!-- BITS_MaxFilesPerJob-Begin -->
## BITS_MaxFilesPerJob

<!-- BITS_MaxFilesPerJob-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- BITS_MaxFilesPerJob-Applicability-End -->

<!-- BITS_MaxFilesPerJob-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Bits/BITS_MaxFilesPerJob
```
<!-- BITS_MaxFilesPerJob-OmaUri-End -->

<!-- BITS_MaxFilesPerJob-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting limits the number of files that a BITS job can contain. By default, a BITS job is limited to 200 files. You can use this setting to raise or lower the maximum number of files a BITS jobs can contain.

- If you enable this policy setting, BITS will limit the maximum number of files a job can contain to the specified number.

- If you disable or don't configure this policy setting, BITS will use the default value of 200 for the maximum number of files a job can contain.

> [!NOTE]
> BITS Jobs created by services and the local administrator account don't count toward this limit.
<!-- BITS_MaxFilesPerJob-Description-End -->

<!-- BITS_MaxFilesPerJob-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BITS_MaxFilesPerJob-Editable-End -->

<!-- BITS_MaxFilesPerJob-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- BITS_MaxFilesPerJob-DFProperties-End -->

<!-- BITS_MaxFilesPerJob-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | BITS_MaxFilesPerJob |
| Friendly Name | Limit the maximum number of files allowed in a BITS job |
| Location | Computer Configuration |
| Path | Network > Background Intelligent Transfer Service (BITS) |
| Registry Key Name | Software\Policies\Microsoft\Windows\BITS |
| ADMX File Name | Bits.admx |
<!-- BITS_MaxFilesPerJob-AdmxBacked-End -->

<!-- BITS_MaxFilesPerJob-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BITS_MaxFilesPerJob-Examples-End -->

<!-- BITS_MaxFilesPerJob-End -->

<!-- BITS_MaxJobsPerMachine-Begin -->
## BITS_MaxJobsPerMachine

<!-- BITS_MaxJobsPerMachine-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- BITS_MaxJobsPerMachine-Applicability-End -->

<!-- BITS_MaxJobsPerMachine-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Bits/BITS_MaxJobsPerMachine
```
<!-- BITS_MaxJobsPerMachine-OmaUri-End -->

<!-- BITS_MaxJobsPerMachine-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting limits the number of BITS jobs that can be created for all users of the computer. By default, BITS limits the total number of jobs that can be created on the computer to 300 jobs. You can use this policy setting to raise or lower the maximum number of user BITS jobs.

- If you enable this policy setting, BITS will limit the maximum number of BITS jobs to the specified number.

- If you disable or don't configure this policy setting, BITS will use the default BITS job limit of 300 jobs.

> [!NOTE]
> BITS jobs created by services and the local administrator account don't count toward this limit.
<!-- BITS_MaxJobsPerMachine-Description-End -->

<!-- BITS_MaxJobsPerMachine-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BITS_MaxJobsPerMachine-Editable-End -->

<!-- BITS_MaxJobsPerMachine-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- BITS_MaxJobsPerMachine-DFProperties-End -->

<!-- BITS_MaxJobsPerMachine-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | BITS_MaxJobsPerMachine |
| Friendly Name | Limit the maximum number of BITS jobs for this computer |
| Location | Computer Configuration |
| Path | Network > Background Intelligent Transfer Service (BITS) |
| Registry Key Name | Software\Policies\Microsoft\Windows\BITS |
| ADMX File Name | Bits.admx |
<!-- BITS_MaxJobsPerMachine-AdmxBacked-End -->

<!-- BITS_MaxJobsPerMachine-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BITS_MaxJobsPerMachine-Examples-End -->

<!-- BITS_MaxJobsPerMachine-End -->

<!-- BITS_MaxJobsPerUser-Begin -->
## BITS_MaxJobsPerUser

<!-- BITS_MaxJobsPerUser-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- BITS_MaxJobsPerUser-Applicability-End -->

<!-- BITS_MaxJobsPerUser-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Bits/BITS_MaxJobsPerUser
```
<!-- BITS_MaxJobsPerUser-OmaUri-End -->

<!-- BITS_MaxJobsPerUser-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting limits the number of BITS jobs that can be created by a user. By default, BITS limits the total number of jobs that can be created by a user to 60 jobs. You can use this setting to raise or lower the maximum number of BITS jobs a user can create.

- If you enable this policy setting, BITS will limit the maximum number of BITS jobs a user can create to the specified number.

- If you disable or don't configure this policy setting, BITS will use the default user BITS job limit of 300 jobs.

> [!NOTE]
> This limit must be lower than the setting specified in the "Maximum number of BITS jobs for this computer" policy setting, or 300 if the "Maximum number of BITS jobs for this computer" policy setting isn't configured. BITS jobs created by services and the local administrator account don't count toward this limit.
<!-- BITS_MaxJobsPerUser-Description-End -->

<!-- BITS_MaxJobsPerUser-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BITS_MaxJobsPerUser-Editable-End -->

<!-- BITS_MaxJobsPerUser-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- BITS_MaxJobsPerUser-DFProperties-End -->

<!-- BITS_MaxJobsPerUser-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | BITS_MaxJobsPerUser |
| Friendly Name | Limit the maximum number of BITS jobs for each user |
| Location | Computer Configuration |
| Path | Network > Background Intelligent Transfer Service (BITS) |
| Registry Key Name | Software\Policies\Microsoft\Windows\BITS |
| ADMX File Name | Bits.admx |
<!-- BITS_MaxJobsPerUser-AdmxBacked-End -->

<!-- BITS_MaxJobsPerUser-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BITS_MaxJobsPerUser-Examples-End -->

<!-- BITS_MaxJobsPerUser-End -->

<!-- BITS_MaxRangesPerFile-Begin -->
## BITS_MaxRangesPerFile

<!-- BITS_MaxRangesPerFile-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- BITS_MaxRangesPerFile-Applicability-End -->

<!-- BITS_MaxRangesPerFile-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Bits/BITS_MaxRangesPerFile
```
<!-- BITS_MaxRangesPerFile-OmaUri-End -->

<!-- BITS_MaxRangesPerFile-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting limits the number of ranges that can be added to a file in a BITS job. By default, files in a BITS job are limited to 500 ranges per file. You can use this setting to raise or lower the maximum number ranges per file.

- If you enable this policy setting, BITS will limit the maximum number of ranges that can be added to a file to the specified number.

- If you disable or don't configure this policy setting, BITS will limit ranges to 500 ranges per file.

> [!NOTE]
> BITS Jobs created by services and the local administrator account don't count toward this limit.
<!-- BITS_MaxRangesPerFile-Description-End -->

<!-- BITS_MaxRangesPerFile-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BITS_MaxRangesPerFile-Editable-End -->

<!-- BITS_MaxRangesPerFile-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- BITS_MaxRangesPerFile-DFProperties-End -->

<!-- BITS_MaxRangesPerFile-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | BITS_MaxRangesPerFile |
| Friendly Name | Limit the maximum number of ranges that can be added to the file in a BITS job |
| Location | Computer Configuration |
| Path | Network > Background Intelligent Transfer Service (BITS) |
| Registry Key Name | Software\Policies\Microsoft\Windows\BITS |
| ADMX File Name | Bits.admx |
<!-- BITS_MaxRangesPerFile-AdmxBacked-End -->

<!-- BITS_MaxRangesPerFile-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BITS_MaxRangesPerFile-Examples-End -->

<!-- BITS_MaxRangesPerFile-End -->

<!-- ADMX_Bits-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Bits-CspMoreInfo-End -->

<!-- ADMX_Bits-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
