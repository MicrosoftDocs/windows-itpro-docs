---
title: ADMX_WCM Policy CSP
description: Learn more about the ADMX_WCM Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_WCM-Begin -->
# Policy CSP - ADMX_WCM

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_WCM-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_WCM-Editable-End -->

<!-- WCM_DisablePowerManagement-Begin -->
## WCM_DisablePowerManagement

<!-- WCM_DisablePowerManagement-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WCM_DisablePowerManagement-Applicability-End -->

<!-- WCM_DisablePowerManagement-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WCM/WCM_DisablePowerManagement
```
<!-- WCM_DisablePowerManagement-OmaUri-End -->

<!-- WCM_DisablePowerManagement-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies that power management is disabled when the machine enters connected standby mode.

- If this policy setting is enabled, Windows Connection Manager doesn't manage adapter radios to reduce power consumption when the machine enters connected standby mode.

- If this policy setting isn't configured or is disabled, power management is enabled when the machine enters connected standby mode.
<!-- WCM_DisablePowerManagement-Description-End -->

<!-- WCM_DisablePowerManagement-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WCM_DisablePowerManagement-Editable-End -->

<!-- WCM_DisablePowerManagement-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WCM_DisablePowerManagement-DFProperties-End -->

<!-- WCM_DisablePowerManagement-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WCM_DisablePowerManagement |
| Friendly Name | Disable power management in connected standby mode |
| Location | Computer Configuration |
| Path | Network > Windows Connection Manager |
| Registry Key Name | Software\Policies\Microsoft\Windows\WcmSvc\GroupPolicy |
| Registry Value Name | fDisablePowerManagement |
| ADMX File Name | WCM.admx |
<!-- WCM_DisablePowerManagement-AdmxBacked-End -->

<!-- WCM_DisablePowerManagement-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WCM_DisablePowerManagement-Examples-End -->

<!-- WCM_DisablePowerManagement-End -->

<!-- WCM_EnableSoftDisconnect-Begin -->
## WCM_EnableSoftDisconnect

<!-- WCM_EnableSoftDisconnect-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WCM_EnableSoftDisconnect-Applicability-End -->

<!-- WCM_EnableSoftDisconnect-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WCM/WCM_EnableSoftDisconnect
```
<!-- WCM_EnableSoftDisconnect-OmaUri-End -->

<!-- WCM_EnableSoftDisconnect-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether Windows will soft-disconnect a computer from a network.

- If this policy setting is enabled or not configured, Windows will soft-disconnect a computer from a network when it determines that the computer should no longer be connected to a network.

- If this policy setting is disabled, Windows will disconnect a computer from a network immediately when it determines that the computer should no longer be connected to a network.

When soft disconnect is enabled:

- When Windows decides that the computer should no longer be connected to a network, it waits for traffic to settle on that network. The existing TCP session will continue uninterrupted.

- Windows then checks the traffic level on the network periodically. If the traffic level is above a certain threshold, no further action is taken. The computer stays connected to the network and continues to use it. For example, if the network connection is currently being used to download files from the Internet, the files will continue to be downloaded using that network connection.

- When the network traffic drops below this threshold, the computer will be disconnected from the network. Apps that keep a network connection active even when they're not actively using it (for example, email apps) might lose their connection. If this happens, these apps should re-establish their connection over a different network.

This policy setting depends on other group policy settings. For example, if 'Minimize the number of simultaneous connections to the Internet or a Windows Domain' is disabled, Windows won't disconnect from any networks.
<!-- WCM_EnableSoftDisconnect-Description-End -->

<!-- WCM_EnableSoftDisconnect-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WCM_EnableSoftDisconnect-Editable-End -->

<!-- WCM_EnableSoftDisconnect-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WCM_EnableSoftDisconnect-DFProperties-End -->

<!-- WCM_EnableSoftDisconnect-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WCM_EnableSoftDisconnect |
| Friendly Name | Enable Windows to soft-disconnect a computer from a network |
| Location | Computer Configuration |
| Path | Network > Windows Connection Manager |
| Registry Key Name | Software\Policies\Microsoft\Windows\WcmSvc\GroupPolicy |
| Registry Value Name | fSoftDisconnectConnections |
| ADMX File Name | WCM.admx |
<!-- WCM_EnableSoftDisconnect-AdmxBacked-End -->

<!-- WCM_EnableSoftDisconnect-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WCM_EnableSoftDisconnect-Examples-End -->

<!-- WCM_EnableSoftDisconnect-End -->

<!-- WCM_MinimizeConnections-Begin -->
## WCM_MinimizeConnections

<!-- WCM_MinimizeConnections-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WCM_MinimizeConnections-Applicability-End -->

<!-- WCM_MinimizeConnections-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WCM/WCM_MinimizeConnections
```
<!-- WCM_MinimizeConnections-OmaUri-End -->

<!-- WCM_MinimizeConnections-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines if a computer can have multiple connections to the internet or to a Windows domain. If multiple connections are allowed, it then determines how network traffic will be routed.

- If this policy setting is set to 0, a computer can have simultaneous connections to the internet, to a Windows domain, or to both. Internet traffic can be routed over any connection - including a cellular connection and any metered network. This was previously the Disabled state for this policy setting. This option was first available in Windows 8.

- If this policy setting is set to 1, any new automatic internet connection is blocked when the computer has at least one active internet connection to a preferred type of network. Here's the order of preference (from most preferred to least preferred): Ethernet, WLAN, then cellular. Ethernet is always preferred when connected. Users can still manually connect to any network. This was previously the Enabled state for this policy setting. This option was first available in Windows 8.

- If this policy setting is set to 2, the behavior is similar to 1. However, if a cellular data connection is available, it will always stay connected for services that require a cellular connection. When the user is connected to a WLAN or Ethernet connection, no internet traffic will be routed over the cellular connection. This option was first available in Windows 10 (Version 1703).

- If this policy setting is set to 3, the behavior is similar to 2. However, if there's an Ethernet connection, Windows won't allow users to connect to a WLAN manually. A WLAN can only be connected (automatically or manually) when there's no Ethernet connection.

This policy setting is related to the "Enable Windows to soft-disconnect a computer from a network" policy setting.
<!-- WCM_MinimizeConnections-Description-End -->

<!-- WCM_MinimizeConnections-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WCM_MinimizeConnections-Editable-End -->

<!-- WCM_MinimizeConnections-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WCM_MinimizeConnections-DFProperties-End -->

<!-- WCM_MinimizeConnections-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WCM_MinimizeConnections |
| Friendly Name | Minimize the number of simultaneous connections to the Internet or a Windows Domain |
| Location | Computer Configuration |
| Path | Network > Windows Connection Manager |
| Registry Key Name | Software\Policies\Microsoft\Windows\WcmSvc\GroupPolicy |
| ADMX File Name | WCM.admx |
<!-- WCM_MinimizeConnections-AdmxBacked-End -->

<!-- WCM_MinimizeConnections-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WCM_MinimizeConnections-Examples-End -->

<!-- WCM_MinimizeConnections-End -->

<!-- ADMX_WCM-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_WCM-CspMoreInfo-End -->

<!-- ADMX_WCM-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
