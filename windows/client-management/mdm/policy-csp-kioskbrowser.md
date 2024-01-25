---
title: KioskBrowser Policy CSP
description: Learn more about the KioskBrowser Area in Policy CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- KioskBrowser-Begin -->
# Policy CSP - KioskBrowser

<!-- KioskBrowser-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- KioskBrowser-Editable-End -->

<!-- BlockedUrlExceptions-Begin -->
## BlockedUrlExceptions

<!-- BlockedUrlExceptions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- BlockedUrlExceptions-Applicability-End -->

<!-- BlockedUrlExceptions-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/KioskBrowser/BlockedUrlExceptions
```

```Device
./Device/Vendor/MSFT/Policy/Config/KioskBrowser/BlockedUrlExceptions
```
<!-- BlockedUrlExceptions-OmaUri-End -->

<!-- BlockedUrlExceptions-Description-Begin -->
<!-- Description-Source-DDF -->
List of exceptions to the blocked website URLs (with wildcard support). This is used to configure URLs kiosk browsers are allowed to navigate to, which are a subset of the blocked URLs.
<!-- BlockedUrlExceptions-Description-End -->

<!-- BlockedUrlExceptions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This policy only applies to the Kiosk Browser app in Microsoft Store.
<!-- BlockedUrlExceptions-Editable-End -->

<!-- BlockedUrlExceptions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- BlockedUrlExceptions-DFProperties-End -->

<!-- BlockedUrlExceptions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BlockedUrlExceptions-Examples-End -->

<!-- BlockedUrlExceptions-End -->

<!-- BlockedUrls-Begin -->
## BlockedUrls

<!-- BlockedUrls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- BlockedUrls-Applicability-End -->

<!-- BlockedUrls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/KioskBrowser/BlockedUrls
```

```Device
./Device/Vendor/MSFT/Policy/Config/KioskBrowser/BlockedUrls
```
<!-- BlockedUrls-OmaUri-End -->

<!-- BlockedUrls-Description-Begin -->
<!-- Description-Source-DDF -->
List of blocked website URLs (with wildcard support). This is used to configure blocked URLs kiosk browsers can't navigate to.
<!-- BlockedUrls-Description-End -->

<!-- BlockedUrls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This policy only applies to the Kiosk Browser app in Microsoft Store.
<!-- BlockedUrls-Editable-End -->

<!-- BlockedUrls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- BlockedUrls-DFProperties-End -->

<!-- BlockedUrls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BlockedUrls-Examples-End -->

<!-- BlockedUrls-End -->

<!-- DefaultURL-Begin -->
## DefaultURL

<!-- DefaultURL-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- DefaultURL-Applicability-End -->

<!-- DefaultURL-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/KioskBrowser/DefaultURL
```

```Device
./Device/Vendor/MSFT/Policy/Config/KioskBrowser/DefaultURL
```
<!-- DefaultURL-OmaUri-End -->

<!-- DefaultURL-Description-Begin -->
<!-- Description-Source-DDF -->
Configures the default URL kiosk browsers to navigate on launch and restart.
<!-- DefaultURL-Description-End -->

<!-- DefaultURL-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This policy only applies to the Kiosk Browser app in Microsoft Store.
<!-- DefaultURL-Editable-End -->

<!-- DefaultURL-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DefaultURL-DFProperties-End -->

<!-- DefaultURL-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DefaultURL-Examples-End -->

<!-- DefaultURL-End -->

<!-- EnableEndSessionButton-Begin -->
## EnableEndSessionButton

<!-- EnableEndSessionButton-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- EnableEndSessionButton-Applicability-End -->

<!-- EnableEndSessionButton-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/KioskBrowser/EnableEndSessionButton
```

```Device
./Device/Vendor/MSFT/Policy/Config/KioskBrowser/EnableEndSessionButton
```
<!-- EnableEndSessionButton-OmaUri-End -->

<!-- EnableEndSessionButton-Description-Begin -->
<!-- Description-Source-DDF -->
Enable/disable kiosk browser's end session button.
<!-- EnableEndSessionButton-Description-End -->

<!-- EnableEndSessionButton-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
When the policy is enabled, the Kiosk Browser app shows a button to reset the browser. When the user selects the button, the app will prompt the user for confirmation to end the session. When the user confirms, the Kiosk browser will clear all browsing data (cache, cookies, etc.) and navigate back to the default URL.
<!-- EnableEndSessionButton-Editable-End -->

<!-- EnableEndSessionButton-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- EnableEndSessionButton-DFProperties-End -->

<!-- EnableEndSessionButton-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Enable. |
| 0 (Default) | Disable. |
<!-- EnableEndSessionButton-AllowedValues-End -->

<!-- EnableEndSessionButton-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableEndSessionButton-Examples-End -->

<!-- EnableEndSessionButton-End -->

<!-- EnableHomeButton-Begin -->
## EnableHomeButton

<!-- EnableHomeButton-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- EnableHomeButton-Applicability-End -->

<!-- EnableHomeButton-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/KioskBrowser/EnableHomeButton
```

```Device
./Device/Vendor/MSFT/Policy/Config/KioskBrowser/EnableHomeButton
```
<!-- EnableHomeButton-OmaUri-End -->

<!-- EnableHomeButton-Description-Begin -->
<!-- Description-Source-DDF -->
Enable/disable kiosk browser's home button.
<!-- EnableHomeButton-Description-End -->

<!-- EnableHomeButton-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This policy only applies to the Kiosk Browser app in Microsoft Store.
<!-- EnableHomeButton-Editable-End -->

<!-- EnableHomeButton-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- EnableHomeButton-DFProperties-End -->

<!-- EnableHomeButton-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Enable. |
| 0 (Default) | Disable. |
<!-- EnableHomeButton-AllowedValues-End -->

<!-- EnableHomeButton-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableHomeButton-Examples-End -->

<!-- EnableHomeButton-End -->

<!-- EnableNavigationButtons-Begin -->
## EnableNavigationButtons

<!-- EnableNavigationButtons-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- EnableNavigationButtons-Applicability-End -->

<!-- EnableNavigationButtons-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/KioskBrowser/EnableNavigationButtons
```

```Device
./Device/Vendor/MSFT/Policy/Config/KioskBrowser/EnableNavigationButtons
```
<!-- EnableNavigationButtons-OmaUri-End -->

<!-- EnableNavigationButtons-Description-Begin -->
<!-- Description-Source-DDF -->
Enable/disable kiosk browser's navigation buttons (forward/back).
<!-- EnableNavigationButtons-Description-End -->

<!-- EnableNavigationButtons-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This policy only applies to the Kiosk Browser app in Microsoft Store.
<!-- EnableNavigationButtons-Editable-End -->

<!-- EnableNavigationButtons-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- EnableNavigationButtons-DFProperties-End -->

<!-- EnableNavigationButtons-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Enable. |
| 0 (Default) | Disable. |
<!-- EnableNavigationButtons-AllowedValues-End -->

<!-- EnableNavigationButtons-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableNavigationButtons-Examples-End -->

<!-- EnableNavigationButtons-End -->

<!-- RestartOnIdleTime-Begin -->
## RestartOnIdleTime

<!-- RestartOnIdleTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- RestartOnIdleTime-Applicability-End -->

<!-- RestartOnIdleTime-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/KioskBrowser/RestartOnIdleTime
```

```Device
./Device/Vendor/MSFT/Policy/Config/KioskBrowser/RestartOnIdleTime
```
<!-- RestartOnIdleTime-OmaUri-End -->

<!-- RestartOnIdleTime-Description-Begin -->
<!-- Description-Source-DDF -->
Amount of time in minutes the session is idle until the kiosk browser restarts in a fresh state.
<!-- RestartOnIdleTime-Description-End -->

<!-- RestartOnIdleTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The value is an int 1-1440 that specifies the number of minutes the session is idle until the kiosk browser restarts in a fresh state. The default value is empty, which means there's no idle timeout within the kiosk browser.

> [!NOTE]
> This policy only applies to the Kiosk Browser app in Microsoft Store.
<!-- RestartOnIdleTime-Editable-End -->

<!-- RestartOnIdleTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[1-1440]` |
| Default Value  | 0 |
<!-- RestartOnIdleTime-DFProperties-End -->

<!-- RestartOnIdleTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestartOnIdleTime-Examples-End -->

<!-- RestartOnIdleTime-End -->

<!-- KioskBrowser-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- KioskBrowser-CspMoreInfo-End -->

<!-- KioskBrowser-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
