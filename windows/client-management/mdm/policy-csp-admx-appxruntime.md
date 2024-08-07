---
title: ADMX_AppXRuntime Policy CSP
description: Learn more about the ADMX_AppXRuntime Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_AppXRuntime-Begin -->
# Policy CSP - ADMX_AppXRuntime

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_AppXRuntime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_AppXRuntime-Editable-End -->

<!-- AppxRuntimeApplicationContentUriRules-Begin -->
## AppxRuntimeApplicationContentUriRules

<!-- AppxRuntimeApplicationContentUriRules-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AppxRuntimeApplicationContentUriRules-Applicability-End -->

<!-- AppxRuntimeApplicationContentUriRules-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_AppXRuntime/AppxRuntimeApplicationContentUriRules
```
<!-- AppxRuntimeApplicationContentUriRules-OmaUri-End -->

<!-- AppxRuntimeApplicationContentUriRules-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you turn on Content URI Rules to supplement the static Content URI Rules that were defined as part of the app manifest and apply to all Windows Store apps that use the enterpriseAuthentication capability on a computer.

- If you enable this policy setting, you can define additional Content URI Rules that all Windows Store apps that use the enterpriseAuthentication capability on a computer can use.

- If you disable or don't set this policy setting, Windows Store apps will only use the static Content URI Rules.
<!-- AppxRuntimeApplicationContentUriRules-Description-End -->

<!-- AppxRuntimeApplicationContentUriRules-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AppxRuntimeApplicationContentUriRules-Editable-End -->

<!-- AppxRuntimeApplicationContentUriRules-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AppxRuntimeApplicationContentUriRules-DFProperties-End -->

<!-- AppxRuntimeApplicationContentUriRules-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AppxRuntimeApplicationContentUriRules |
| Friendly Name | Turn on dynamic Content URI Rules for Windows store apps |
| Location | Computer Configuration |
| Path | Windows Components > App runtime |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Packages\Applications |
| Registry Value Name | EnableDynamicContentUriRules |
| ADMX File Name | AppXRuntime.admx |
<!-- AppxRuntimeApplicationContentUriRules-AdmxBacked-End -->

<!-- AppxRuntimeApplicationContentUriRules-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AppxRuntimeApplicationContentUriRules-Examples-End -->

<!-- AppxRuntimeApplicationContentUriRules-End -->

<!-- AppxRuntimeBlockFileElevation-Begin -->
## AppxRuntimeBlockFileElevation

<!-- AppxRuntimeBlockFileElevation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AppxRuntimeBlockFileElevation-Applicability-End -->

<!-- AppxRuntimeBlockFileElevation-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_AppXRuntime/AppxRuntimeBlockFileElevation
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_AppXRuntime/AppxRuntimeBlockFileElevation
```
<!-- AppxRuntimeBlockFileElevation-OmaUri-End -->

<!-- AppxRuntimeBlockFileElevation-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you control whether Windows Store apps can open files using the default desktop app for a file type. Because desktop apps run at a higher integrity level than Windows Store apps, there is a risk that a Windows Store app might compromise the system by opening a file in the default desktop app for a file type.

- If you enable this policy setting, Windows Store apps can't open files in the default desktop app for a file type; they can open files only in other Windows Store apps.

- If you disable or don't configure this policy setting, Windows Store apps can open files in the default desktop app for a file type.
<!-- AppxRuntimeBlockFileElevation-Description-End -->

<!-- AppxRuntimeBlockFileElevation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AppxRuntimeBlockFileElevation-Editable-End -->

<!-- AppxRuntimeBlockFileElevation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AppxRuntimeBlockFileElevation-DFProperties-End -->

<!-- AppxRuntimeBlockFileElevation-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AppxRuntimeBlockFileElevation |
| Friendly Name | Block launching desktop apps associated with a file. |
| Location | Computer and User Configuration |
| Path | Windows Components > App runtime |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Associations |
| Registry Value Name | BlockFileElevation |
| ADMX File Name | AppXRuntime.admx |
<!-- AppxRuntimeBlockFileElevation-AdmxBacked-End -->

<!-- AppxRuntimeBlockFileElevation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AppxRuntimeBlockFileElevation-Examples-End -->

<!-- AppxRuntimeBlockFileElevation-End -->

<!-- AppxRuntimeBlockHostedAppAccessWinRT-Begin -->
## AppxRuntimeBlockHostedAppAccessWinRT

<!-- AppxRuntimeBlockHostedAppAccessWinRT-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AppxRuntimeBlockHostedAppAccessWinRT-Applicability-End -->

<!-- AppxRuntimeBlockHostedAppAccessWinRT-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_AppXRuntime/AppxRuntimeBlockHostedAppAccessWinRT
```
<!-- AppxRuntimeBlockHostedAppAccessWinRT-OmaUri-End -->

<!-- AppxRuntimeBlockHostedAppAccessWinRT-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether Universal Windows apps with Windows Runtime API access directly from web content can be launched.

- If you enable this policy setting, Universal Windows apps which declare Windows Runtime API access in ApplicationContentUriRules section of the manifest can't be launched; Universal Windows apps which haven't declared Windows Runtime API access in the manifest aren't affected.

- If you disable or don't configure this policy setting, all Universal Windows apps can be launched.

This policy shouldn't be enabled unless recommended by Microsoft as a security response because it can cause severe app compatibility issues.
<!-- AppxRuntimeBlockHostedAppAccessWinRT-Description-End -->

<!-- AppxRuntimeBlockHostedAppAccessWinRT-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AppxRuntimeBlockHostedAppAccessWinRT-Editable-End -->

<!-- AppxRuntimeBlockHostedAppAccessWinRT-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AppxRuntimeBlockHostedAppAccessWinRT-DFProperties-End -->

<!-- AppxRuntimeBlockHostedAppAccessWinRT-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AppxRuntimeBlockHostedAppAccessWinRT |
| Friendly Name | Block launching Universal Windows apps with Windows Runtime API access from hosted content. |
| Location | Computer Configuration |
| Path | Windows Components > App runtime |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | BlockHostedAppAccessWinRT |
| ADMX File Name | AppXRuntime.admx |
<!-- AppxRuntimeBlockHostedAppAccessWinRT-AdmxBacked-End -->

<!-- AppxRuntimeBlockHostedAppAccessWinRT-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AppxRuntimeBlockHostedAppAccessWinRT-Examples-End -->

<!-- AppxRuntimeBlockHostedAppAccessWinRT-End -->

<!-- AppxRuntimeBlockProtocolElevation-Begin -->
## AppxRuntimeBlockProtocolElevation

<!-- AppxRuntimeBlockProtocolElevation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AppxRuntimeBlockProtocolElevation-Applicability-End -->

<!-- AppxRuntimeBlockProtocolElevation-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_AppXRuntime/AppxRuntimeBlockProtocolElevation
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_AppXRuntime/AppxRuntimeBlockProtocolElevation
```
<!-- AppxRuntimeBlockProtocolElevation-OmaUri-End -->

<!-- AppxRuntimeBlockProtocolElevation-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you control whether Windows Store apps can open URIs using the default desktop app for a URI scheme. Because desktop apps run at a higher integrity level than Windows Store apps, there is a risk that a URI scheme launched by a Windows Store app might compromise the system by launching a desktop app.

- If you enable this policy setting, Windows Store apps can't open URIs in the default desktop app for a URI scheme; they can open URIs only in other Windows Store apps.

- If you disable or don't configure this policy setting, Windows Store apps can open URIs in the default desktop app for a URI scheme.

> [!NOTE]
> Enabling this policy setting doesn't block Windows Store apps from opening the default desktop app for the http, https, and mailto URI schemes. The handlers for these URI schemes are hardened against URI-based vulnerabilities from untrusted sources, reducing the associated risk.
<!-- AppxRuntimeBlockProtocolElevation-Description-End -->

<!-- AppxRuntimeBlockProtocolElevation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AppxRuntimeBlockProtocolElevation-Editable-End -->

<!-- AppxRuntimeBlockProtocolElevation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AppxRuntimeBlockProtocolElevation-DFProperties-End -->

<!-- AppxRuntimeBlockProtocolElevation-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AppxRuntimeBlockProtocolElevation |
| Friendly Name | Block launching desktop apps associated with a URI scheme |
| Location | Computer and User Configuration |
| Path | Windows Components > App runtime |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Associations |
| Registry Value Name | BlockProtocolElevation |
| ADMX File Name | AppXRuntime.admx |
<!-- AppxRuntimeBlockProtocolElevation-AdmxBacked-End -->

<!-- AppxRuntimeBlockProtocolElevation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AppxRuntimeBlockProtocolElevation-Examples-End -->

<!-- AppxRuntimeBlockProtocolElevation-End -->

<!-- ADMX_AppXRuntime-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_AppXRuntime-CspMoreInfo-End -->

<!-- ADMX_AppXRuntime-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
