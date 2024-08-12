---
title: ADMX_WindowsMediaPlayer Policy CSP
description: Learn more about the ADMX_WindowsMediaPlayer Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_WindowsMediaPlayer-Begin -->
# Policy CSP - ADMX_WindowsMediaPlayer

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_WindowsMediaPlayer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_WindowsMediaPlayer-Editable-End -->

<!-- ConfigureHTTPProxySettings-Begin -->
## ConfigureHTTPProxySettings

<!-- ConfigureHTTPProxySettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ConfigureHTTPProxySettings-Applicability-End -->

<!-- ConfigureHTTPProxySettings-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsMediaPlayer/ConfigureHTTPProxySettings
```
<!-- ConfigureHTTPProxySettings-OmaUri-End -->

<!-- ConfigureHTTPProxySettings-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the HTTP proxy settings for Windows Media Player.

- If you enable this policy setting, select one of the following proxy types:

- Autodetect: the proxy settings are automatically detected.

- Custom: unique proxy settings are used.

- Use browser proxy settings: browser's proxy settings are used.

If the Custom proxy type is selected, the rest of the options on the Setting tab must be specified because no default settings are used for the proxy. The options are ignored if Autodetect or Browser is selected.

The Configure button on the Network tab in the Player isn't available for the HTTP protocol and the proxy can't be configured. If the "Hide network tab" policy setting is also enabled, the entire Network tab is hidden.

This policy is ignored if the "Streaming media protocols" policy setting is enabled and HTTP isn't selected.

- If you disable this policy setting, the HTTP proxy server can't be used and the user can't configure the HTTP proxy.

- If you don't configure this policy setting, users can configure the HTTP proxy settings.
<!-- ConfigureHTTPProxySettings-Description-End -->

<!-- ConfigureHTTPProxySettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureHTTPProxySettings-Editable-End -->

<!-- ConfigureHTTPProxySettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfigureHTTPProxySettings-DFProperties-End -->

<!-- ConfigureHTTPProxySettings-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureHTTPProxySettings |
| Friendly Name | Configure HTTP Proxy |
| Location | User Configuration |
| Path | Windows Components > Windows Media Player > Networking |
| Registry Key Name | Software\Policies\Microsoft\WindowsMediaPlayer\Protocols\HTTP |
| Registry Value Name | ProxyPolicy |
| ADMX File Name | windowsmediaplayer.admx |
<!-- ConfigureHTTPProxySettings-AdmxBacked-End -->

<!-- ConfigureHTTPProxySettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureHTTPProxySettings-Examples-End -->

<!-- ConfigureHTTPProxySettings-End -->

<!-- ConfigureMMSProxySettings-Begin -->
## ConfigureMMSProxySettings

<!-- ConfigureMMSProxySettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ConfigureMMSProxySettings-Applicability-End -->

<!-- ConfigureMMSProxySettings-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsMediaPlayer/ConfigureMMSProxySettings
```
<!-- ConfigureMMSProxySettings-OmaUri-End -->

<!-- ConfigureMMSProxySettings-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the MMS proxy settings for Windows Media Player.

- If you enable this policy setting, select one of the following proxy types:

- Autodetect: the proxy settings are automatically detected.

- Custom: unique proxy settings are used.

If the Custom proxy type is selected, the rest of the options on the Setting tab must be specified; otherwise, the default settings are used. The options are ignored if Autodetect is selected.

The Configure button on the Network tab in the Player isn't available and the protocol can't be configured. If the "Hide network tab" policy setting is also enabled, the entire Network tab is hidden.

This policy setting is ignored if the "Streaming media protocols" policy setting is enabled and Multicast isn't selected.

- If you disable this policy setting, the MMS proxy server can't be used and users can't configure the MMS proxy settings.

- If you don't configure this policy setting, users can configure the MMS proxy settings.
<!-- ConfigureMMSProxySettings-Description-End -->

<!-- ConfigureMMSProxySettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureMMSProxySettings-Editable-End -->

<!-- ConfigureMMSProxySettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfigureMMSProxySettings-DFProperties-End -->

<!-- ConfigureMMSProxySettings-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureMMSProxySettings |
| Friendly Name | Configure MMS Proxy |
| Location | User Configuration |
| Path | Windows Components > Windows Media Player > Networking |
| Registry Key Name | Software\Policies\Microsoft\WindowsMediaPlayer\Protocols\MMS |
| Registry Value Name | ProxyPolicy |
| ADMX File Name | windowsmediaplayer.admx |
<!-- ConfigureMMSProxySettings-AdmxBacked-End -->

<!-- ConfigureMMSProxySettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureMMSProxySettings-Examples-End -->

<!-- ConfigureMMSProxySettings-End -->

<!-- ConfigureRTSPProxySettings-Begin -->
## ConfigureRTSPProxySettings

<!-- ConfigureRTSPProxySettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ConfigureRTSPProxySettings-Applicability-End -->

<!-- ConfigureRTSPProxySettings-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsMediaPlayer/ConfigureRTSPProxySettings
```
<!-- ConfigureRTSPProxySettings-OmaUri-End -->

<!-- ConfigureRTSPProxySettings-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the RTSP proxy settings for Windows Media Player.

- If you enable this policy setting, select one of the following proxy types:

- Autodetect: the proxy settings are automatically detected.

- Custom: unique proxy settings are used.

If the Custom proxy type is selected, the rest of the options on the Setting tab must be specified; otherwise, the default settings are used. The options are ignored if Autodetect is selected.

The Configure button on the Network tab in the Player isn't available and the protocol can't be configured. If the "Hide network tab" policy setting is also enabled, the entire Network tab is hidden.

- If you disable this policy setting, the RTSP proxy server can't be used and users can't change the RTSP proxy settings.

- If you don't configure this policy setting, users can configure the RTSP proxy settings.
<!-- ConfigureRTSPProxySettings-Description-End -->

<!-- ConfigureRTSPProxySettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureRTSPProxySettings-Editable-End -->

<!-- ConfigureRTSPProxySettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfigureRTSPProxySettings-DFProperties-End -->

<!-- ConfigureRTSPProxySettings-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureRTSPProxySettings |
| Friendly Name | Configure RTSP Proxy |
| Location | User Configuration |
| Path | Windows Components > Windows Media Player > Networking |
| Registry Key Name | Software\Policies\Microsoft\WindowsMediaPlayer\Protocols\RTSP |
| Registry Value Name | ProxyPolicy |
| ADMX File Name | windowsmediaplayer.admx |
<!-- ConfigureRTSPProxySettings-AdmxBacked-End -->

<!-- ConfigureRTSPProxySettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureRTSPProxySettings-Examples-End -->

<!-- ConfigureRTSPProxySettings-End -->

<!-- DisableAutoUpdate-Begin -->
## DisableAutoUpdate

<!-- DisableAutoUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableAutoUpdate-Applicability-End -->

<!-- DisableAutoUpdate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsMediaPlayer/DisableAutoUpdate
```
<!-- DisableAutoUpdate-OmaUri-End -->

<!-- DisableAutoUpdate-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off don't show first use dialog boxes.

- If you enable this policy setting, the Privacy Options and Installation Options dialog boxes are prevented from being displayed the first time a user starts Windows Media Player.

This policy setting prevents the dialog boxes which allow users to select privacy, file types, and other desktop options from being displayed when the Player is first started. Some of the options can be configured by using other Windows Media Player group policies.

- If you disable or don't configure this policy setting, the dialog boxes are displayed when the user starts the Player for the first time.
<!-- DisableAutoUpdate-Description-End -->

<!-- DisableAutoUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableAutoUpdate-Editable-End -->

<!-- DisableAutoUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableAutoUpdate-DFProperties-End -->

<!-- DisableAutoUpdate-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableAutoUpdate |
| Friendly Name | Prevent Automatic Updates |
| Location | Computer Configuration |
| Path | Windows Components > Windows Media Player |
| Registry Key Name | Software\Policies\Microsoft\WindowsMediaPlayer |
| Registry Value Name | DisableAutoUpdate |
| ADMX File Name | windowsmediaplayer.admx |
<!-- DisableAutoUpdate-AdmxBacked-End -->

<!-- DisableAutoUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableAutoUpdate-Examples-End -->

<!-- DisableAutoUpdate-End -->

<!-- DisableNetworkSettings-Begin -->
## DisableNetworkSettings

<!-- DisableNetworkSettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableNetworkSettings-Applicability-End -->

<!-- DisableNetworkSettings-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsMediaPlayer/DisableNetworkSettings
```
<!-- DisableNetworkSettings-OmaUri-End -->

<!-- DisableNetworkSettings-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to hide the Network tab.

- If you enable this policy setting, the Network tab in Windows Media Player is hidden. The default network settings are used unless the user has previously defined network settings for the Player.

- If you disable or don't configure this policy setting, the Network tab appears and users can use it to configure network settings.
<!-- DisableNetworkSettings-Description-End -->

<!-- DisableNetworkSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableNetworkSettings-Editable-End -->

<!-- DisableNetworkSettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableNetworkSettings-DFProperties-End -->

<!-- DisableNetworkSettings-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableNetworkSettings |
| Friendly Name | Hide Network Tab |
| Location | User Configuration |
| Path | Windows Components > Windows Media Player > Networking |
| Registry Key Name | Software\Policies\Microsoft\WindowsMediaPlayer |
| Registry Value Name | HideNetworkTab |
| ADMX File Name | windowsmediaplayer.admx |
<!-- DisableNetworkSettings-AdmxBacked-End -->

<!-- DisableNetworkSettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableNetworkSettings-Examples-End -->

<!-- DisableNetworkSettings-End -->

<!-- DisableSetupFirstUseConfiguration-Begin -->
## DisableSetupFirstUseConfiguration

<!-- DisableSetupFirstUseConfiguration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableSetupFirstUseConfiguration-Applicability-End -->

<!-- DisableSetupFirstUseConfiguration-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsMediaPlayer/DisableSetupFirstUseConfiguration
```
<!-- DisableSetupFirstUseConfiguration-OmaUri-End -->

<!-- DisableSetupFirstUseConfiguration-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent the anchor window from being displayed when Windows Media Player is in skin mode.

- If you enable this policy setting, the anchor window is hidden when the Player is in skin mode. In addition, the option on the Player tab in the Player that enables users to choose whether the anchor window displays isn't available.

- If you disable or don't configure this policy setting, users can show or hide the anchor window when the Player is in skin mode by using the Player tab in the Player.

- If you don't configure this policy setting, and the "Set and lock skin" policy setting is enabled, some options in the anchor window aren't available.
<!-- DisableSetupFirstUseConfiguration-Description-End -->

<!-- DisableSetupFirstUseConfiguration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableSetupFirstUseConfiguration-Editable-End -->

<!-- DisableSetupFirstUseConfiguration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableSetupFirstUseConfiguration-DFProperties-End -->

<!-- DisableSetupFirstUseConfiguration-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableSetupFirstUseConfiguration |
| Friendly Name | Do Not Show First Use Dialog Boxes |
| Location | Computer Configuration |
| Path | Windows Components > Windows Media Player |
| Registry Key Name | Software\Policies\Microsoft\WindowsMediaPlayer |
| Registry Value Name | GroupPrivacyAcceptance |
| ADMX File Name | windowsmediaplayer.admx |
<!-- DisableSetupFirstUseConfiguration-AdmxBacked-End -->

<!-- DisableSetupFirstUseConfiguration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableSetupFirstUseConfiguration-Examples-End -->

<!-- DisableSetupFirstUseConfiguration-End -->

<!-- DoNotShowAnchor-Begin -->
## DoNotShowAnchor

<!-- DoNotShowAnchor-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DoNotShowAnchor-Applicability-End -->

<!-- DoNotShowAnchor-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsMediaPlayer/DoNotShowAnchor
```
<!-- DoNotShowAnchor-OmaUri-End -->

<!-- DoNotShowAnchor-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents the anchor window from being displayed when Windows Media Player is in skin mode.

This policy hides the anchor window when the Player is in skin mode. In addition, the option on the Player tab in the Player that enables users to choose whether the anchor window displays isn't available.

When this policy isn't configured or disabled, users can show or hide the anchor window when the Player is in skin mode by using the Player tab in the Player.

When this policy isn't configured and the Set and Lock Skin policy is enabled, some options in the anchor window aren't available.
<!-- DoNotShowAnchor-Description-End -->

<!-- DoNotShowAnchor-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DoNotShowAnchor-Editable-End -->

<!-- DoNotShowAnchor-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DoNotShowAnchor-DFProperties-End -->

<!-- DoNotShowAnchor-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DoNotShowAnchor |
| Friendly Name | Do Not Show Anchor |
| Location | User Configuration |
| Path | Windows Components > Windows Media Player > User Interface |
| Registry Key Name | Software\Policies\Microsoft\WindowsMediaPlayer |
| Registry Value Name | DoNotShowAnchor |
| ADMX File Name | windowsmediaplayer.admx |
<!-- DoNotShowAnchor-AdmxBacked-End -->

<!-- DoNotShowAnchor-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DoNotShowAnchor-Examples-End -->

<!-- DoNotShowAnchor-End -->

<!-- DontUseFrameInterpolation-Begin -->
## DontUseFrameInterpolation

<!-- DontUseFrameInterpolation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DontUseFrameInterpolation-Applicability-End -->

<!-- DontUseFrameInterpolation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsMediaPlayer/DontUseFrameInterpolation
```
<!-- DontUseFrameInterpolation-OmaUri-End -->

<!-- DontUseFrameInterpolation-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent video smoothing from occurring.

- If you enable this policy setting, video smoothing is prevented, which can improve video playback on computers with limited resources. In addition, the Use Video Smoothing check box in the Video Acceleration Settings dialog box in the Player is cleared and isn't available.

- If you disable this policy setting, video smoothing occurs if necessary, and the Use Video Smoothing check box is selected and isn't available.

- If you don't configure this policy setting, video smoothing occurs if necessary. Users can change the setting for the Use Video Smoothing check box.

Video smoothing is available only on the Windows XP Home Edition and Windows XP Professional operating systems.
<!-- DontUseFrameInterpolation-Description-End -->

<!-- DontUseFrameInterpolation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DontUseFrameInterpolation-Editable-End -->

<!-- DontUseFrameInterpolation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DontUseFrameInterpolation-DFProperties-End -->

<!-- DontUseFrameInterpolation-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DontUseFrameInterpolation |
| Friendly Name | Prevent Video Smoothing |
| Location | Computer Configuration |
| Path | Windows Components > Windows Media Player |
| Registry Key Name | Software\Policies\Microsoft\WindowsMediaPlayer |
| Registry Value Name | DontUseFrameInterpolation |
| ADMX File Name | windowsmediaplayer.admx |
<!-- DontUseFrameInterpolation-AdmxBacked-End -->

<!-- DontUseFrameInterpolation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DontUseFrameInterpolation-Examples-End -->

<!-- DontUseFrameInterpolation-End -->

<!-- EnableScreenSaver-Begin -->
## EnableScreenSaver

<!-- EnableScreenSaver-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableScreenSaver-Applicability-End -->

<!-- EnableScreenSaver-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsMediaPlayer/EnableScreenSaver
```
<!-- EnableScreenSaver-OmaUri-End -->

<!-- EnableScreenSaver-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows a screen saver to interrupt playback.

- If you enable this policy setting, a screen saver is displayed during playback of digital media according to the options selected on the Screen Saver tab in the Display Properties dialog box in Control Panel. The Allow screen saver during playback check box on the Player tab in the Player is selected and isn't available.

- If you disable this policy setting, a screen saver doesn't interrupt playback even if users have selected a screen saver. The Allow screen saver during playback check box is cleared and isn't available.

- If you don't configure this policy setting, users can change the setting for the Allow screen saver during playback check box.
<!-- EnableScreenSaver-Description-End -->

<!-- EnableScreenSaver-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableScreenSaver-Editable-End -->

<!-- EnableScreenSaver-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableScreenSaver-DFProperties-End -->

<!-- EnableScreenSaver-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableScreenSaver |
| Friendly Name | Allow Screen Saver |
| Location | User Configuration |
| Path | Windows Components > Windows Media Player > Playback |
| Registry Key Name | Software\Policies\Microsoft\WindowsMediaPlayer |
| Registry Value Name | EnableScreenSaver |
| ADMX File Name | windowsmediaplayer.admx |
<!-- EnableScreenSaver-AdmxBacked-End -->

<!-- EnableScreenSaver-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableScreenSaver-Examples-End -->

<!-- EnableScreenSaver-End -->

<!-- HidePrivacyTab-Begin -->
## HidePrivacyTab

<!-- HidePrivacyTab-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- HidePrivacyTab-Applicability-End -->

<!-- HidePrivacyTab-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsMediaPlayer/HidePrivacyTab
```
<!-- HidePrivacyTab-OmaUri-End -->

<!-- HidePrivacyTab-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to hide the Privacy tab in Windows Media Player.

- If you enable this policy setting, the "Update my music files (WMA and MP3 files) by retrieving missing media information from the Internet" check box on the Media Library tab is available, even though the Privacy tab is hidden, unless the "Prevent music file media information retrieval" policy setting is enabled.

The default privacy settings are used for the options on the Privacy tab unless the user changed the settings previously.

- If you disable or don't configure this policy setting, the Privacy tab isn't hidden, and users can configure any privacy settings not configured by other polices.
<!-- HidePrivacyTab-Description-End -->

<!-- HidePrivacyTab-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HidePrivacyTab-Editable-End -->

<!-- HidePrivacyTab-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HidePrivacyTab-DFProperties-End -->

<!-- HidePrivacyTab-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | HidePrivacyTab |
| Friendly Name | Hide Privacy Tab |
| Location | User Configuration |
| Path | Windows Components > Windows Media Player > User Interface |
| Registry Key Name | Software\Policies\Microsoft\WindowsMediaPlayer |
| Registry Value Name | HidePrivacyTab |
| ADMX File Name | windowsmediaplayer.admx |
<!-- HidePrivacyTab-AdmxBacked-End -->

<!-- HidePrivacyTab-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HidePrivacyTab-Examples-End -->

<!-- HidePrivacyTab-End -->

<!-- HideSecurityTab-Begin -->
## HideSecurityTab

<!-- HideSecurityTab-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- HideSecurityTab-Applicability-End -->

<!-- HideSecurityTab-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsMediaPlayer/HideSecurityTab
```
<!-- HideSecurityTab-OmaUri-End -->

<!-- HideSecurityTab-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to hide the Security tab in Windows Media Player.

- If you enable this policy setting, the default security settings for the options on the Security tab are used unless the user changed the settings previously. Users can still change security and zone settings by using Internet Explorer unless these settings have been hidden or disabled by Internet Explorer policies.

- If you disable or don't configure this policy setting, users can configure the security settings on the Security tab.
<!-- HideSecurityTab-Description-End -->

<!-- HideSecurityTab-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HideSecurityTab-Editable-End -->

<!-- HideSecurityTab-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HideSecurityTab-DFProperties-End -->

<!-- HideSecurityTab-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | HideSecurityTab |
| Friendly Name | Hide Security Tab |
| Location | User Configuration |
| Path | Windows Components > Windows Media Player > User Interface |
| Registry Key Name | Software\Policies\Microsoft\WindowsMediaPlayer |
| Registry Value Name | HideSecurityTab |
| ADMX File Name | windowsmediaplayer.admx |
<!-- HideSecurityTab-AdmxBacked-End -->

<!-- HideSecurityTab-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HideSecurityTab-Examples-End -->

<!-- HideSecurityTab-End -->

<!-- NetworkBuffering-Begin -->
## NetworkBuffering

<!-- NetworkBuffering-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NetworkBuffering-Applicability-End -->

<!-- NetworkBuffering-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsMediaPlayer/NetworkBuffering
```
<!-- NetworkBuffering-OmaUri-End -->

<!-- NetworkBuffering-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify whether network buffering uses the default or a specified number of seconds.

- If you enable this policy setting, select one of the following options to specify the number of seconds streaming media is buffered before it's played.

- Custom: the number of seconds, up to 60, that streaming media is buffered.

- Default: default network buffering is used and the number of seconds that's specified is ignored.

The "Use default buffering" and "Buffer" options on the Performance tab in the Player aren't available.

- If you disable or don't configure this policy setting, users can change the buffering options on the Performance tab.
<!-- NetworkBuffering-Description-End -->

<!-- NetworkBuffering-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NetworkBuffering-Editable-End -->

<!-- NetworkBuffering-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NetworkBuffering-DFProperties-End -->

<!-- NetworkBuffering-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NetworkBuffering |
| Friendly Name | Configure Network Buffering |
| Location | User Configuration |
| Path | Windows Components > Windows Media Player > Networking |
| Registry Key Name | Software\Policies\Microsoft\WindowsMediaPlayer |
| Registry Value Name | NetworkBufferingPolicy |
| ADMX File Name | windowsmediaplayer.admx |
<!-- NetworkBuffering-AdmxBacked-End -->

<!-- NetworkBuffering-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NetworkBuffering-Examples-End -->

<!-- NetworkBuffering-End -->

<!-- PolicyCodecUpdate-Begin -->
## PolicyCodecUpdate

<!-- PolicyCodecUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PolicyCodecUpdate-Applicability-End -->

<!-- PolicyCodecUpdate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsMediaPlayer/PolicyCodecUpdate
```
<!-- PolicyCodecUpdate-OmaUri-End -->

<!-- PolicyCodecUpdate-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent Windows Media Player from downloading codecs.

- If you enable this policy setting, the Player is prevented from automatically downloading codecs to your computer. In addition, the Download codecs automatically check box on the Player tab in the Player isn't available.

- If you disable this policy setting, codecs are automatically downloaded and the Download codecs automatically check box isn't available.

- If you don't configure this policy setting, users can change the setting for the Download codecs automatically check box.
<!-- PolicyCodecUpdate-Description-End -->

<!-- PolicyCodecUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PolicyCodecUpdate-Editable-End -->

<!-- PolicyCodecUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PolicyCodecUpdate-DFProperties-End -->

<!-- PolicyCodecUpdate-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PolicyCodecUpdate |
| Friendly Name | Prevent Codec Download |
| Location | User Configuration |
| Path | Windows Components > Windows Media Player > Playback |
| Registry Key Name | Software\Policies\Microsoft\WindowsMediaPlayer |
| Registry Value Name | PreventCodecDownload |
| ADMX File Name | windowsmediaplayer.admx |
<!-- PolicyCodecUpdate-AdmxBacked-End -->

<!-- PolicyCodecUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PolicyCodecUpdate-Examples-End -->

<!-- PolicyCodecUpdate-End -->

<!-- PreventCDDVDMetadataRetrieval-Begin -->
## PreventCDDVDMetadataRetrieval

<!-- PreventCDDVDMetadataRetrieval-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PreventCDDVDMetadataRetrieval-Applicability-End -->

<!-- PreventCDDVDMetadataRetrieval-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsMediaPlayer/PreventCDDVDMetadataRetrieval
```
<!-- PreventCDDVDMetadataRetrieval-OmaUri-End -->

<!-- PreventCDDVDMetadataRetrieval-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent media information for CDs and DVDs from being retrieved from the Internet.

- If you enable this policy setting, the Player is prevented from automatically obtaining media information from the Internet for CDs and DVDs played by users. In addition, the Retrieve media information for CDs and DVDs from the Internet check box on the Privacy Options tab in the first use dialog box and on the Privacy tab in the Player aren't selected and aren't available.

- If you disable or don't configure this policy setting, users can change the setting of the Retrieve media information for CDs and DVDs from the Internet check box.
<!-- PreventCDDVDMetadataRetrieval-Description-End -->

<!-- PreventCDDVDMetadataRetrieval-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventCDDVDMetadataRetrieval-Editable-End -->

<!-- PreventCDDVDMetadataRetrieval-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreventCDDVDMetadataRetrieval-DFProperties-End -->

<!-- PreventCDDVDMetadataRetrieval-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PreventCDDVDMetadataRetrieval |
| Friendly Name | Prevent CD and DVD Media Information Retrieval |
| Location | User Configuration |
| Path | Windows Components > Windows Media Player |
| Registry Key Name | Software\Policies\Microsoft\WindowsMediaPlayer |
| Registry Value Name | PreventCDDVDMetadataRetrieval |
| ADMX File Name | windowsmediaplayer.admx |
<!-- PreventCDDVDMetadataRetrieval-AdmxBacked-End -->

<!-- PreventCDDVDMetadataRetrieval-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventCDDVDMetadataRetrieval-Examples-End -->

<!-- PreventCDDVDMetadataRetrieval-End -->

<!-- PreventLibrarySharing-Begin -->
## PreventLibrarySharing

<!-- PreventLibrarySharing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PreventLibrarySharing-Applicability-End -->

<!-- PreventLibrarySharing-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsMediaPlayer/PreventLibrarySharing
```
<!-- PreventLibrarySharing-OmaUri-End -->

<!-- PreventLibrarySharing-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent media sharing from Windows Media Player.

- If you enable this policy setting, any user on this computer is prevented from sharing digital media content from Windows Media Player with other computers and devices that are on the same network. Media sharing is disabled from Windows Media Player or from programs that depend on the Player's media sharing feature.

- If you disable or don't configure this policy setting, anyone using Windows Media Player can turn media sharing on or off.
<!-- PreventLibrarySharing-Description-End -->

<!-- PreventLibrarySharing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventLibrarySharing-Editable-End -->

<!-- PreventLibrarySharing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreventLibrarySharing-DFProperties-End -->

<!-- PreventLibrarySharing-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PreventLibrarySharing |
| Friendly Name | Prevent Media Sharing |
| Location | Computer Configuration |
| Path | Windows Components > Windows Media Player |
| Registry Key Name | Software\Policies\Microsoft\WindowsMediaPlayer |
| Registry Value Name | PreventLibrarySharing |
| ADMX File Name | windowsmediaplayer.admx |
<!-- PreventLibrarySharing-AdmxBacked-End -->

<!-- PreventLibrarySharing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventLibrarySharing-Examples-End -->

<!-- PreventLibrarySharing-End -->

<!-- PreventMusicFileMetadataRetrieval-Begin -->
## PreventMusicFileMetadataRetrieval

<!-- PreventMusicFileMetadataRetrieval-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PreventMusicFileMetadataRetrieval-Applicability-End -->

<!-- PreventMusicFileMetadataRetrieval-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsMediaPlayer/PreventMusicFileMetadataRetrieval
```
<!-- PreventMusicFileMetadataRetrieval-OmaUri-End -->

<!-- PreventMusicFileMetadataRetrieval-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent media information for music files from being retrieved from the Internet.

- If you enable this policy setting, the Player is prevented from automatically obtaining media information for music files such as Windows Media Audio (WMA) and MP3 files from the Internet. In addition, the Update my music files (WMA and MP3 files) by retrieving missing media information from the Internet check box in the first use dialog box and on the Privacy and Media Library tabs in the Player aren't selected and aren't available.

- If you disable or don't configure this policy setting, users can change the setting of the Update my music files (WMA and MP3 files) by retrieving missing media information from the Internet check box.
<!-- PreventMusicFileMetadataRetrieval-Description-End -->

<!-- PreventMusicFileMetadataRetrieval-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventMusicFileMetadataRetrieval-Editable-End -->

<!-- PreventMusicFileMetadataRetrieval-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreventMusicFileMetadataRetrieval-DFProperties-End -->

<!-- PreventMusicFileMetadataRetrieval-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PreventMusicFileMetadataRetrieval |
| Friendly Name | Prevent Music File Media Information Retrieval |
| Location | User Configuration |
| Path | Windows Components > Windows Media Player |
| Registry Key Name | Software\Policies\Microsoft\WindowsMediaPlayer |
| Registry Value Name | PreventMusicFileMetadataRetrieval |
| ADMX File Name | windowsmediaplayer.admx |
<!-- PreventMusicFileMetadataRetrieval-AdmxBacked-End -->

<!-- PreventMusicFileMetadataRetrieval-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventMusicFileMetadataRetrieval-Examples-End -->

<!-- PreventMusicFileMetadataRetrieval-End -->

<!-- PreventQuickLaunchShortcut-Begin -->
## PreventQuickLaunchShortcut

<!-- PreventQuickLaunchShortcut-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PreventQuickLaunchShortcut-Applicability-End -->

<!-- PreventQuickLaunchShortcut-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsMediaPlayer/PreventQuickLaunchShortcut
```
<!-- PreventQuickLaunchShortcut-OmaUri-End -->

<!-- PreventQuickLaunchShortcut-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent a shortcut for the Player from being added to the Quick Launch bar.

- If you enable this policy setting, the user can't add the shortcut for the Player to the Quick Launch bar.

- If you disable or don't configure this policy setting, the user can choose whether to add the shortcut for the Player to the Quick Launch bar.
<!-- PreventQuickLaunchShortcut-Description-End -->

<!-- PreventQuickLaunchShortcut-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventQuickLaunchShortcut-Editable-End -->

<!-- PreventQuickLaunchShortcut-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreventQuickLaunchShortcut-DFProperties-End -->

<!-- PreventQuickLaunchShortcut-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PreventQuickLaunchShortcut |
| Friendly Name | Prevent Quick Launch Toolbar Shortcut Creation |
| Location | Computer Configuration |
| Path | Windows Components > Windows Media Player |
| Registry Key Name | Software\Policies\Microsoft\WindowsMediaPlayer |
| Registry Value Name | QuickLaunchShortcut |
| ADMX File Name | windowsmediaplayer.admx |
<!-- PreventQuickLaunchShortcut-AdmxBacked-End -->

<!-- PreventQuickLaunchShortcut-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventQuickLaunchShortcut-Examples-End -->

<!-- PreventQuickLaunchShortcut-End -->

<!-- PreventRadioPresetsRetrieval-Begin -->
## PreventRadioPresetsRetrieval

<!-- PreventRadioPresetsRetrieval-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PreventRadioPresetsRetrieval-Applicability-End -->

<!-- PreventRadioPresetsRetrieval-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsMediaPlayer/PreventRadioPresetsRetrieval
```
<!-- PreventRadioPresetsRetrieval-OmaUri-End -->

<!-- PreventRadioPresetsRetrieval-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent radio station presets from being retrieved from the Internet.

- If you enable this policy setting, the Player is prevented from automatically retrieving radio station presets from the Internet and displaying them in Media Library. In addition, presets that exist before the policy is configured aren't be updated, and presets a user adds aren't be displayed.

- If you disable or don't configure this policy setting, the Player automatically retrieves radio station presets from the Internet.
<!-- PreventRadioPresetsRetrieval-Description-End -->

<!-- PreventRadioPresetsRetrieval-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventRadioPresetsRetrieval-Editable-End -->

<!-- PreventRadioPresetsRetrieval-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreventRadioPresetsRetrieval-DFProperties-End -->

<!-- PreventRadioPresetsRetrieval-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PreventRadioPresetsRetrieval |
| Friendly Name | Prevent Radio Station Preset Retrieval |
| Location | User Configuration |
| Path | Windows Components > Windows Media Player |
| Registry Key Name | Software\Policies\Microsoft\WindowsMediaPlayer |
| Registry Value Name | PreventRadioPresetsRetrieval |
| ADMX File Name | windowsmediaplayer.admx |
<!-- PreventRadioPresetsRetrieval-AdmxBacked-End -->

<!-- PreventRadioPresetsRetrieval-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventRadioPresetsRetrieval-Examples-End -->

<!-- PreventRadioPresetsRetrieval-End -->

<!-- PreventWMPDeskTopShortcut-Begin -->
## PreventWMPDeskTopShortcut

<!-- PreventWMPDeskTopShortcut-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PreventWMPDeskTopShortcut-Applicability-End -->

<!-- PreventWMPDeskTopShortcut-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsMediaPlayer/PreventWMPDeskTopShortcut
```
<!-- PreventWMPDeskTopShortcut-OmaUri-End -->

<!-- PreventWMPDeskTopShortcut-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent a shortcut icon for the Player from being added to the user's desktop.

- If you enable this policy setting, users can't add the Player shortcut icon to their desktops.

- If you disable or don't configure this policy setting, users can choose whether to add the Player shortcut icon to their desktops.
<!-- PreventWMPDeskTopShortcut-Description-End -->

<!-- PreventWMPDeskTopShortcut-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventWMPDeskTopShortcut-Editable-End -->

<!-- PreventWMPDeskTopShortcut-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreventWMPDeskTopShortcut-DFProperties-End -->

<!-- PreventWMPDeskTopShortcut-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PreventWMPDeskTopShortcut |
| Friendly Name | Prevent Desktop Shortcut Creation |
| Location | Computer Configuration |
| Path | Windows Components > Windows Media Player |
| Registry Key Name | Software\Policies\Microsoft\WindowsMediaPlayer |
| Registry Value Name | DesktopShortcut |
| ADMX File Name | windowsmediaplayer.admx |
<!-- PreventWMPDeskTopShortcut-AdmxBacked-End -->

<!-- PreventWMPDeskTopShortcut-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventWMPDeskTopShortcut-Examples-End -->

<!-- PreventWMPDeskTopShortcut-End -->

<!-- SkinLockDown-Begin -->
## SkinLockDown

<!-- SkinLockDown-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SkinLockDown-Applicability-End -->

<!-- SkinLockDown-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsMediaPlayer/SkinLockDown
```
<!-- SkinLockDown-OmaUri-End -->

<!-- SkinLockDown-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to set and lock Windows Media Player in skin mode, using a specified skin.

- If you enable this policy setting, the Player displays only in skin mode using the skin specified in the Skin box on the Setting tab.

You must use the complete file name for the skin (for example, skin_name.wmz), and the skin must be installed in the %programfiles%\Windows Media Player\Skins Folder on a user's computer. If the skin isn't installed on a user's computer, or if the Skin box is blank, the Player opens by using the Corporate skin. The only way to specify the Corporate skin is to leave the Skin box blank.

A user has access only to the Player features that are available with the specified skin. Users can't switch the Player to full mode and can't choose a different skin.

- If you disable or don't configure this policy setting, users can display the Player in full or skin mode and have access to all available features of the Player.
<!-- SkinLockDown-Description-End -->

<!-- SkinLockDown-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SkinLockDown-Editable-End -->

<!-- SkinLockDown-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SkinLockDown-DFProperties-End -->

<!-- SkinLockDown-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SkinLockDown |
| Friendly Name | Set and Lock Skin |
| Location | User Configuration |
| Path | Windows Components > Windows Media Player > User Interface |
| Registry Key Name | Software\Policies\Microsoft\WindowsMediaPlayer |
| Registry Value Name | SetAndLockSkin |
| ADMX File Name | windowsmediaplayer.admx |
<!-- SkinLockDown-AdmxBacked-End -->

<!-- SkinLockDown-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SkinLockDown-Examples-End -->

<!-- SkinLockDown-End -->

<!-- WindowsStreamingMediaProtocols-Begin -->
## WindowsStreamingMediaProtocols

<!-- WindowsStreamingMediaProtocols-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WindowsStreamingMediaProtocols-Applicability-End -->

<!-- WindowsStreamingMediaProtocols-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsMediaPlayer/WindowsStreamingMediaProtocols
```
<!-- WindowsStreamingMediaProtocols-OmaUri-End -->

<!-- WindowsStreamingMediaProtocols-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify that Windows Media Player can attempt to use selected protocols when receiving streaming media from a server running Windows Media Services.

- If you enable this policy setting, the protocols that are selected on the Network tab of the Player are used to receive a stream initiated through an MMS or RTSP URL from a Windows Media server. If the RSTP/UDP check box is selected, a user can specify UDP ports in the Use ports check box. If the user doesn't specify UDP ports, the Player uses default ports when using the UDP protocol. This policy setting also specifies that multicast streams can be received if the "Allow the Player to receive multicast streams" check box on the Network tab is selected.

- If you enable this policy setting, the administrator must also specify the protocols that are available to users on the Network tab. If the administrator doesn't specify any protocols, the Player can't access an MMS or RTSP URL from a Windows Media server. If the "Hide network tab" policy setting is enabled, the entire Network tab is hidden.

- If you don't configure this policy setting, users can select the protocols to use on the Network tab.

- If you disable this policy setting, the Protocols for MMS URLs and Multicast streams areas of the Network tab aren't available and the Player can't receive an MMS or RTSP stream from a Windows Media server.
<!-- WindowsStreamingMediaProtocols-Description-End -->

<!-- WindowsStreamingMediaProtocols-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WindowsStreamingMediaProtocols-Editable-End -->

<!-- WindowsStreamingMediaProtocols-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WindowsStreamingMediaProtocols-DFProperties-End -->

<!-- WindowsStreamingMediaProtocols-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WindowsStreamingMediaProtocols |
| Friendly Name | Streaming Media Protocols |
| Location | User Configuration |
| Path | Windows Components > Windows Media Player > Networking |
| Registry Key Name | Software\Policies\Microsoft\WindowsMediaPlayer\Protocols |
| Registry Value Name | WindowsMediaStreamingProtocols |
| ADMX File Name | windowsmediaplayer.admx |
<!-- WindowsStreamingMediaProtocols-AdmxBacked-End -->

<!-- WindowsStreamingMediaProtocols-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WindowsStreamingMediaProtocols-Examples-End -->

<!-- WindowsStreamingMediaProtocols-End -->

<!-- ADMX_WindowsMediaPlayer-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_WindowsMediaPlayer-CspMoreInfo-End -->

<!-- ADMX_WindowsMediaPlayer-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
