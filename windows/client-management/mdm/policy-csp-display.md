---
title: Display Policy CSP
description: Learn more about the Display Area in Policy CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- Display-Begin -->
# Policy CSP - Display

<!-- Display-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Display-Editable-End -->

<!-- DisablePerProcessDpiForApps-Begin -->
## DisablePerProcessDpiForApps

<!-- DisablePerProcessDpiForApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- DisablePerProcessDpiForApps-Applicability-End -->

<!-- DisablePerProcessDpiForApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Display/DisablePerProcessDpiForApps
```
<!-- DisablePerProcessDpiForApps-OmaUri-End -->

<!-- DisablePerProcessDpiForApps-Description-Begin -->
<!-- Description-Source-ADMX -->
Per Process System DPI is an application compatibility feature for desktop applications that don't render properly after a display-scale factor (DPI) change. When the display scale factor of the primary display changes (which can happen when you connect or disconnect a display that has a different display scale factor (DPI), connect remotely from a device with a different display scale factor, or manually change the display scale factor), many desktop applications can display blurry. Desktop applications that haven't been updated to display properly in this scenario will be blurry until the user logs out and back in to Windows.

When you enable this policy some blurry applications will be crisp after they're restarted, without requiring the user to log out and back in to Windows.

Be aware of the following:

Per Process System DPI will only improve the rendering of desktop applications that are positioned on the primary display. Some desktop applications can still be blurry on secondary displays that have different display scale factors.

Per Process System DPI won't work for all applications as some older desktop applications will always be blurry on high DPI displays.

In some cases, you may see some odd behavior in some desktop applications. If that happens, Per Process System DPI should be disabled.

Enabling this setting lets you specify the system-wide default for desktop applications as well as per-application overrides. If you disable or don't configure this setting, Per Process System DPI won't apply to any processes on the system.
<!-- DisablePerProcessDpiForApps-Description-End -->

<!-- DisablePerProcessDpiForApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisablePerProcessDpiForApps-Editable-End -->

<!-- DisablePerProcessDpiForApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- DisablePerProcessDpiForApps-DFProperties-End -->

<!-- DisablePerProcessDpiForApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisplayPerProcessSystemDpiSettings |
| Friendly Name | Configure Per-Process System DPI settings |
| Element Name | Disable Per-Process System DPI for the following applications. Use either the full application path or the application filename and extension. Separate applications with a semicolon. |
| Location | Computer and User Configuration |
| Path | System > Display |
| Registry Key Name | Software\Policies\Microsoft\Windows\Display |
| ADMX File Name | Display.admx |
<!-- DisablePerProcessDpiForApps-GpMapping-End -->

<!-- DisablePerProcessDpiForApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisablePerProcessDpiForApps-Examples-End -->

<!-- DisablePerProcessDpiForApps-End -->

<!-- EnablePerProcessDpi-Begin -->
## EnablePerProcessDpi

<!-- EnablePerProcessDpi-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- EnablePerProcessDpi-Applicability-End -->

<!-- EnablePerProcessDpi-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Display/EnablePerProcessDpi
```

```Device
./Device/Vendor/MSFT/Policy/Config/Display/EnablePerProcessDpi
```
<!-- EnablePerProcessDpi-OmaUri-End -->

<!-- EnablePerProcessDpi-Description-Begin -->
<!-- Description-Source-ADMX -->
Per Process System DPI is an application compatibility feature for desktop applications that don't render properly after a display-scale factor (DPI) change. When the display scale factor of the primary display changes (which can happen when you connect or disconnect a display that has a different display scale factor (DPI), connect remotely from a device with a different display scale factor, or manually change the display scale factor), many desktop applications can display blurry. Desktop applications that haven't been updated to display properly in this scenario will be blurry until the user logs out and back in to Windows.

When you enable this policy some blurry applications will be crisp after they're restarted, without requiring the user to log out and back in to Windows.

Be aware of the following:

Per Process System DPI will only improve the rendering of desktop applications that are positioned on the primary display. Some desktop applications can still be blurry on secondary displays that have different display scale factors.

Per Process System DPI won't work for all applications as some older desktop applications will always be blurry on high DPI displays.

In some cases, you may see some odd behavior in some desktop applications. If that happens, Per Process System DPI should be disabled.

Enabling this setting lets you specify the system-wide default for desktop applications as well as per-application overrides. If you disable or don't configure this setting, Per Process System DPI won't apply to any processes on the system.
<!-- EnablePerProcessDpi-Description-End -->

<!-- EnablePerProcessDpi-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Per Process System DPI is an application compatibility feature for desktop applications that don't render properly after a display-scale factor (DPI) change. When the display scale factor of the primary display changes (which can happen when you connect or disconnect a display that has a different display scale factor (DPI), connect remotely from a device with a different display scale factor, or manually change the display scale factor), many desktop applications can display blurry. Desktop applications that haven't been updated to display properly in this scenario will be blurry until you sign out and back in to Windows.

When you enable this policy some blurry applications will be crisp after they're restarted, without requiring the user to sign out and back in to Windows.

Be aware of the following points:

Per Process System DPI will only improve the rendering of desktop applications that are positioned on the primary display (or any other display having the same scale factor as that of the primary display). Some desktop applications can still be blurry on secondary displays that have different display scale factors.

Per Process System DPI won't work for all applications as some older desktop applications will always be blurry on high DPI displays.

In some cases, you may see some unexpected behavior in some desktop applications that have Per-Process System DPI applied. If that happens, Per Process System DPI should be disabled.

Enabling this setting lets you specify the system-wide default for desktop applications and per-application overrides. If you disable or don't configure this setting, Per Process System DPI won't apply to any processes on the system.
<!-- EnablePerProcessDpi-Editable-End -->

<!-- EnablePerProcessDpi-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- EnablePerProcessDpi-DFProperties-End -->

<!-- EnablePerProcessDpi-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disable. |
| 1 | Enable. |
<!-- EnablePerProcessDpi-AllowedValues-End -->

<!-- EnablePerProcessDpi-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisplayPerProcessSystemDpiSettings |
| Friendly Name | Configure Per-Process System DPI settings |
| Element Name | Enable or disable Per-Process System DPI for all applications. |
| Location | Computer and User Configuration |
| Path | System > Display |
| Registry Key Name | Software\Policies\Microsoft\Windows\Display |
| ADMX File Name | Display.admx |
<!-- EnablePerProcessDpi-GpMapping-End -->

<!-- EnablePerProcessDpi-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnablePerProcessDpi-Examples-End -->

<!-- EnablePerProcessDpi-End -->

<!-- EnablePerProcessDpiForApps-Begin -->
## EnablePerProcessDpiForApps

<!-- EnablePerProcessDpiForApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- EnablePerProcessDpiForApps-Applicability-End -->

<!-- EnablePerProcessDpiForApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Display/EnablePerProcessDpiForApps
```
<!-- EnablePerProcessDpiForApps-OmaUri-End -->

<!-- EnablePerProcessDpiForApps-Description-Begin -->
<!-- Description-Source-ADMX -->
Per Process System DPI is an application compatibility feature for desktop applications that don't render properly after a display-scale factor (DPI) change. When the display scale factor of the primary display changes (which can happen when you connect or disconnect a display that has a different display scale factor (DPI), connect remotely from a device with a different display scale factor, or manually change the display scale factor), many desktop applications can display blurry. Desktop applications that haven't been updated to display properly in this scenario will be blurry until the user logs out and back in to Windows.

When you enable this policy some blurry applications will be crisp after they're restarted, without requiring the user to log out and back in to Windows.

Be aware of the following:

Per Process System DPI will only improve the rendering of desktop applications that are positioned on the primary display. Some desktop applications can still be blurry on secondary displays that have different display scale factors.

Per Process System DPI won't work for all applications as some older desktop applications will always be blurry on high DPI displays.

In some cases, you may see some odd behavior in some desktop applications. If that happens, Per Process System DPI should be disabled.

Enabling this setting lets you specify the system-wide default for desktop applications as well as per-application overrides. If you disable or don't configure this setting, Per Process System DPI won't apply to any processes on the system.
<!-- EnablePerProcessDpiForApps-Description-End -->

<!-- EnablePerProcessDpiForApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnablePerProcessDpiForApps-Editable-End -->

<!-- EnablePerProcessDpiForApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- EnablePerProcessDpiForApps-DFProperties-End -->

<!-- EnablePerProcessDpiForApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisplayPerProcessSystemDpiSettings |
| Friendly Name | Configure Per-Process System DPI settings |
| Element Name | Enable Per-Process System DPI for the following applications. Use either the full application path or the application filename and extension. Separate applications with a semicolon. |
| Location | Computer and User Configuration |
| Path | System > Display |
| Registry Key Name | Software\Policies\Microsoft\Windows\Display |
| ADMX File Name | Display.admx |
<!-- EnablePerProcessDpiForApps-GpMapping-End -->

<!-- EnablePerProcessDpiForApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnablePerProcessDpiForApps-Examples-End -->

<!-- EnablePerProcessDpiForApps-End -->

<!-- TurnOffGdiDPIScalingForApps-Begin -->
## TurnOffGdiDPIScalingForApps

<!-- TurnOffGdiDPIScalingForApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- TurnOffGdiDPIScalingForApps-Applicability-End -->

<!-- TurnOffGdiDPIScalingForApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Display/TurnOffGdiDPIScalingForApps
```
<!-- TurnOffGdiDPIScalingForApps-OmaUri-End -->

<!-- TurnOffGdiDPIScalingForApps-Description-Begin -->
<!-- Description-Source-ADMX -->
GDI DPI Scaling enables applications that aren't DPI aware to become per monitor DPI aware.

This policy setting lets you specify legacy applications that have GDI DPI Scaling turned off.

- If you enable this policy setting, GDI DPI Scaling is turned off for all applications in the list, even if they're enabled by using ApplicationCompatibility database, ApplicationCompatibility UI System (Enhanced) setting, or an application manifest.

- If you disable or don't configure this policy setting, GDI DPI Scaling might still be turned on for legacy applications.

If GDI DPI Scaling is configured to both turn off and turn on an application, the application will be turned off.
<!-- TurnOffGdiDPIScalingForApps-Description-End -->

<!-- TurnOffGdiDPIScalingForApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
GDI DPI Scaling enables applications that aren't DPI aware to become per monitor DPI aware.

This policy setting lets you specify legacy applications that have GDI DPI Scaling turned off.

If you enable this policy setting, GDI DPI Scaling is turned off for all applications in the list, even if they're enabled by using ApplicationCompatibility database, ApplicationCompatibility UI System (Enhanced) setting, or an application manifest.

If you disable or don't configure this policy setting, GDI DPI Scaling might still be turned on for legacy applications.

If GDI DPI Scaling is configured to both turn-off and turn-on an application, the application will be turned off.
<!-- TurnOffGdiDPIScalingForApps-Editable-End -->

<!-- TurnOffGdiDPIScalingForApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- TurnOffGdiDPIScalingForApps-DFProperties-End -->

<!-- TurnOffGdiDPIScalingForApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisplayTurnOffGdiDPIScaling |
| Friendly Name | Turn off GdiDPIScaling for applications |
| Element Name | Disable GDI DPI Scaling for the following applications. Use either the full application path or the application filename and extension. Separate applications with a semicolon. |
| Location | Computer Configuration |
| Path | System > Display |
| Registry Key Name | Software\Policies\Microsoft\Windows\Display |
| ADMX File Name | Display.admx |
<!-- TurnOffGdiDPIScalingForApps-GpMapping-End -->

<!-- TurnOffGdiDPIScalingForApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Validate**:

To validate on Desktop, do the following tasks:

1.   Configure the setting for an app, which has GDI DPI scaling enabled via MDM or any other supported mechanisms.
2.   Run the app and observe blurry text.
<!--/Validation-->Each cloud resource can also be paired optionally with an internal proxy server by using a trailing comma followed by the proxy address.
<!-- TurnOffGdiDPIScalingForApps-Examples-End -->

<!-- TurnOffGdiDPIScalingForApps-End -->

<!-- TurnOnGdiDPIScalingForApps-Begin -->
## TurnOnGdiDPIScalingForApps

<!-- TurnOnGdiDPIScalingForApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- TurnOnGdiDPIScalingForApps-Applicability-End -->

<!-- TurnOnGdiDPIScalingForApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Display/TurnOnGdiDPIScalingForApps
```
<!-- TurnOnGdiDPIScalingForApps-OmaUri-End -->

<!-- TurnOnGdiDPIScalingForApps-Description-Begin -->
<!-- Description-Source-ADMX -->
GDI DPI Scaling enables applications that aren't DPI aware to become per monitor DPI aware.

This policy setting lets you specify legacy applications that have GDI DPI Scaling turned on.

- If you enable this policy setting, GDI DPI Scaling is turned on for all legacy applications in the list.

- If you disable or don't configure this policy setting, GDI DPI Scaling won't be enabled for an application except when an application is enabled by using ApplicationCompatibility database, ApplicationCompatibility UI System (Enhanced) setting, or an application manifest.

If GDI DPI Scaling is configured to both turn off and turn on an application, the application will be turned off.
<!-- TurnOnGdiDPIScalingForApps-Description-End -->

<!-- TurnOnGdiDPIScalingForApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This policy setting lets you specify legacy applications that have GDI DPI Scaling turned on.

If you enable this policy setting, GDI DPI Scaling is turned on for all legacy applications in the list.

If you disable or don't configure this policy setting, GDI DPI Scaling won't be enabled for an application except when an application is enabled by using ApplicationCompatibility database, ApplicationCompatibility UI System (Enhanced) setting, or an application manifest.

If GDI DPI Scaling is configured to both turn-off and turn-on an application, the application will be turned off.
<!-- TurnOnGdiDPIScalingForApps-Editable-End -->

<!-- TurnOnGdiDPIScalingForApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- TurnOnGdiDPIScalingForApps-DFProperties-End -->

<!-- TurnOnGdiDPIScalingForApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisplayTurnOnGdiDPIScaling |
| Friendly Name | Turn on GdiDPIScaling for applications |
| Element Name | Enable GDI DPI Scaling for the following applications. Use either the full application path or the application filename and extension. Separate applications with a semicolon. |
| Location | Computer Configuration |
| Path | System > Display |
| Registry Key Name | Software\Policies\Microsoft\Windows\Display |
| ADMX File Name | Display.admx |
<!-- TurnOnGdiDPIScalingForApps-GpMapping-End -->

<!-- TurnOnGdiDPIScalingForApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Validate**:

To validate on Desktop, do the following tasks:

1. Configure the setting for an app, which uses GDI.
2. Run the app and observe crisp text.
<!-- TurnOnGdiDPIScalingForApps-Examples-End -->

<!-- TurnOnGdiDPIScalingForApps-End -->

<!-- Display-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Display-CspMoreInfo-End -->

<!-- Display-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
