---
title: Browser Policy CSP
description: Learn more about the Browser Area in Policy CSP.
ms.date: 09/11/2024
---

<!-- Auto-Generated CSP Document -->

<!-- Browser-Begin -->
# Policy CSP - Browser

<!-- Browser-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> These settings are for the previous version of Microsoft Edge (version 45 and earlier) and are deprecated. These settings will be removed in a future Windows release. Microsoft recommends updating your version of Microsoft Edge to version 77 or later and use the ADMX Ingestion function for management. Learn more about how to [Configure Microsoft Edge using Mobile Device Management](/deployedge/configure-edge-with-mdm).
<!-- Browser-Editable-End -->

<!-- AllowAddressBarDropdown-Begin -->
## AllowAddressBarDropdown

<!-- AllowAddressBarDropdown-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowAddressBarDropdown-Applicability-End -->

<!-- AllowAddressBarDropdown-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/AllowAddressBarDropdown
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/AllowAddressBarDropdown
```
<!-- AllowAddressBarDropdown-OmaUri-End -->

<!-- AllowAddressBarDropdown-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you decide whether the Address bar drop-down functionality is available in Microsoft Edge. We recommend disabling this setting if you want to minimize network connections from Microsoft Edge to Microsoft services.

> [!NOTE]
> Disabling this setting turns off the Address bar drop-down functionality. Therefore, because search suggestions are shown in the drop-down, this setting takes precedence over the "Configure search suggestions in Address bar" setting.

- If you enable or don't configure this setting, employees can see the Address bar drop-down functionality in Microsoft Edge.

- If you disable this setting, employees won't see the Address bar drop-down functionality in Microsoft Edge. This setting also disables the user-defined setting, "Show search and site suggestions as I type".
<!-- AllowAddressBarDropdown-Description-End -->

<!-- AllowAddressBarDropdown-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowAddressBarDropdown-Editable-End -->

<!-- AllowAddressBarDropdown-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowAddressBarDropdown-DFProperties-End -->

<!-- AllowAddressBarDropdown-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Prevented/not allowed. Hide the Address bar drop-down functionality and disable the Show search and site suggestions as I type toggle in Settings. |
| 1 (Default) | Allowed. Show the Address bar drop-down list and make it available. |
<!-- AllowAddressBarDropdown-AllowedValues-End -->

<!-- AllowAddressBarDropdown-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowAddressBarDropdown |
| Friendly Name | Allow Address bar drop-down list suggestions |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\ServiceUI |
| Registry Value Name | ShowOneBox |
| ADMX File Name | MicrosoftEdge.admx |
<!-- AllowAddressBarDropdown-GpMapping-End -->

<!-- AllowAddressBarDropdown-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowAddressBarDropdown-Examples-End -->

<!-- AllowAddressBarDropdown-End -->

<!-- AllowAutofill-Begin -->
## AllowAutofill

<!-- AllowAutofill-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowAutofill-Applicability-End -->

<!-- AllowAutofill-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/AllowAutofill
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/AllowAutofill
```
<!-- AllowAutofill-OmaUri-End -->

<!-- AllowAutofill-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you decide whether employees can use Autofill to automatically fill in form fields while using Microsoft Edge. By default, employees can choose whether to use Autofill.

- If you enable this setting, employees can use Autofill to automatically fill in forms while using Microsoft Edge.

- If you disable this setting, employees can't use Autofill to automatically fill in forms while using Microsoft Edge.

- If you don't configure this setting, employees can choose whether to use Autofill to automatically fill in forms while using Microsoft Edge.
<!-- AllowAutofill-Description-End -->

<!-- AllowAutofill-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowAutofill-Editable-End -->

<!-- AllowAutofill-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowAutofill-DFProperties-End -->

<!-- AllowAutofill-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Prevented/Not allowed. |
| 1 | Allowed. |
<!-- AllowAutofill-AllowedValues-End -->

<!-- AllowAutofill-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowAutofill |
| Friendly Name | Configure Autofill |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Main |
| Registry Value Name | Use FormSuggest |
| ADMX File Name | MicrosoftEdge.admx |
<!-- AllowAutofill-GpMapping-End -->

<!-- AllowAutofill-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Verify**:
To verify AllowAutofill is set to 0 (not allowed):

1. Open Microsoft Edge.
2. In the upper-right corner of the browser, click **…**.
3. Click **Settings** in the dropdown list, and select **View Advanced Settings**.
4. Verify the setting **Save form entries** is grayed out.
<!-- AllowAutofill-Examples-End -->

<!-- AllowAutofill-End -->

<!-- AllowBrowser-Begin -->
## AllowBrowser

> [!NOTE]
> This policy is deprecated and may be removed in a future release.

<!-- AllowBrowser-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | Not applicable | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowBrowser-Applicability-End -->

<!-- AllowBrowser-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/AllowBrowser
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/AllowBrowser
```
<!-- AllowBrowser-OmaUri-End -->

<!-- AllowBrowser-Description-Begin -->
<!-- Description-Source-DDF -->
This policy is deprecated.
<!-- AllowBrowser-Description-End -->

<!-- AllowBrowser-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowBrowser-Editable-End -->

<!-- AllowBrowser-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowBrowser-DFProperties-End -->

<!-- AllowBrowser-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowBrowser-AllowedValues-End -->

<!-- AllowBrowser-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowBrowser-Examples-End -->

<!-- AllowBrowser-End -->

<!-- AllowConfigurationUpdateForBooksLibrary-Begin -->
## AllowConfigurationUpdateForBooksLibrary

<!-- AllowConfigurationUpdateForBooksLibrary-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- AllowConfigurationUpdateForBooksLibrary-Applicability-End -->

<!-- AllowConfigurationUpdateForBooksLibrary-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/AllowConfigurationUpdateForBooksLibrary
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/AllowConfigurationUpdateForBooksLibrary
```
<!-- AllowConfigurationUpdateForBooksLibrary-OmaUri-End -->

<!-- AllowConfigurationUpdateForBooksLibrary-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting lets you decide whether Microsoft Edge can automatically update the configuration data for the Books Library.
<!-- AllowConfigurationUpdateForBooksLibrary-Description-End -->

<!-- AllowConfigurationUpdateForBooksLibrary-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowConfigurationUpdateForBooksLibrary-Editable-End -->

<!-- AllowConfigurationUpdateForBooksLibrary-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowConfigurationUpdateForBooksLibrary-DFProperties-End -->

<!-- AllowConfigurationUpdateForBooksLibrary-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Prevented/Not allowed. |
| 1 (Default) | Allowed. Microsoft Edge updates the configuration data for the Books Library automatically. |
<!-- AllowConfigurationUpdateForBooksLibrary-AllowedValues-End -->

<!-- AllowConfigurationUpdateForBooksLibrary-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowConfigurationUpdateForBooksLibrary-Examples-End -->

<!-- AllowConfigurationUpdateForBooksLibrary-End -->

<!-- AllowCookies-Begin -->
## AllowCookies

<!-- AllowCookies-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowCookies-Applicability-End -->

<!-- AllowCookies-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/AllowCookies
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/AllowCookies
```
<!-- AllowCookies-OmaUri-End -->

<!-- AllowCookies-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting lets you configure how to work with cookies.

- If you enable this setting, you must also decide whether to:

Allow all cookies (default): Allows all cookies from all websites.

Block all cookies: Blocks all cookies from all websites.

Block only 3rd-party cookies: Blocks only cookies from 3rd-party websites.

- If you disable or don't configure this setting, all cookies are allowed from all sites.
<!-- AllowCookies-Description-End -->

<!-- AllowCookies-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowCookies-Editable-End -->

<!-- AllowCookies-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 2 |
<!-- AllowCookies-DFProperties-End -->

<!-- AllowCookies-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Block all cookies from all sites. |
| 1 | Block only cookies from third party websites. |
| 2 (Default) | Allow all cookies from all sites. |
<!-- AllowCookies-AllowedValues-End -->

<!-- AllowCookies-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Cookies |
| Friendly Name | Configure cookies |
| Element Name | Configure Cookies. |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Main |
| ADMX File Name | MicrosoftEdge.admx |
<!-- AllowCookies-GpMapping-End -->

<!-- AllowCookies-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Verify**:
To verify AllowCookies is set to 0 (not allowed):

1.  Open Microsoft Edge.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the dropdown list, and select **View Advanced Settings**.
4.  Verify the setting **Cookies** is disabled.
<!-- AllowCookies-Examples-End -->

<!-- AllowCookies-End -->

<!-- AllowDeveloperTools-Begin -->
## AllowDeveloperTools

<!-- AllowDeveloperTools-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- AllowDeveloperTools-Applicability-End -->

<!-- AllowDeveloperTools-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/AllowDeveloperTools
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/AllowDeveloperTools
```
<!-- AllowDeveloperTools-OmaUri-End -->

<!-- AllowDeveloperTools-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you decide whether F12 Developer Tools are available on Microsoft Edge.

- If you enable or don't configure this setting, the F12 Developer Tools are available in Microsoft Edge.

- If you disable this setting, the F12 Developer Tools aren't available in Microsoft Edge.
<!-- AllowDeveloperTools-Description-End -->

<!-- AllowDeveloperTools-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowDeveloperTools-Editable-End -->

<!-- AllowDeveloperTools-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowDeveloperTools-DFProperties-End -->

<!-- AllowDeveloperTools-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Prevented/Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowDeveloperTools-AllowedValues-End -->

<!-- AllowDeveloperTools-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowDeveloperTools |
| Friendly Name | Allow Developer Tools |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\F12 |
| Registry Value Name | AllowDeveloperTools |
| ADMX File Name | MicrosoftEdge.admx |
<!-- AllowDeveloperTools-GpMapping-End -->

<!-- AllowDeveloperTools-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowDeveloperTools-Examples-End -->

<!-- AllowDeveloperTools-End -->

<!-- AllowDoNotTrack-Begin -->
## AllowDoNotTrack

<!-- AllowDoNotTrack-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowDoNotTrack-Applicability-End -->

<!-- AllowDoNotTrack-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/AllowDoNotTrack
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/AllowDoNotTrack
```
<!-- AllowDoNotTrack-OmaUri-End -->

<!-- AllowDoNotTrack-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you decide whether employees can send Do Not Track requests to websites that ask for tracking info. By default, Do Not Track requests aren't sent, but employees can choose to turn on and send requests.

- If you enable this setting, Do Not Tracker requests are always sent to websites asking for tracking info.

- If you disable this setting, Do Not Track requests are never sent to websites asking for tracking info.

- If you don't configure this setting, employees can choose whether to send Do Not Track requests to websites asking for tracking info.
<!-- AllowDoNotTrack-Description-End -->

<!-- AllowDoNotTrack-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowDoNotTrack-Editable-End -->

<!-- AllowDoNotTrack-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowDoNotTrack-DFProperties-End -->

<!-- AllowDoNotTrack-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Never send tracking information. |
| 1 | Send tracking information. |
<!-- AllowDoNotTrack-AllowedValues-End -->

<!-- AllowDoNotTrack-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowDoNotTrack |
| Friendly Name | Configure Do Not Track |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Main |
| Registry Value Name | DoNotTrack |
| ADMX File Name | MicrosoftEdge.admx |
<!-- AllowDoNotTrack-GpMapping-End -->

<!-- AllowDoNotTrack-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Verify**:
To verify AllowDoNotTrack is set to 0 (not allowed):

1.  Open Microsoft Edge.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the dropdown list, and select **View Advanced Settings**.
4.  Verify the setting **Send Do Not Track requests** is grayed out.
<!-- AllowDoNotTrack-Examples-End -->

<!-- AllowDoNotTrack-End -->

<!-- AllowExtensions-Begin -->
## AllowExtensions

<!-- AllowExtensions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowExtensions-Applicability-End -->

<!-- AllowExtensions-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/AllowExtensions
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/AllowExtensions
```
<!-- AllowExtensions-OmaUri-End -->

<!-- AllowExtensions-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting lets you decide whether employees can load extensions in Microsoft Edge.

- If you enable or don't configure this setting, employees can use Microsoft Edge Extensions.

- If you disable this setting, employees can't use Microsoft Edge Extensions.
<!-- AllowExtensions-Description-End -->

<!-- AllowExtensions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowExtensions-Editable-End -->

<!-- AllowExtensions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowExtensions-DFProperties-End -->

<!-- AllowExtensions-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Prevented/Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowExtensions-AllowedValues-End -->

<!-- AllowExtensions-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowExtensions |
| Friendly Name | Allow Extensions |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Extensions |
| Registry Value Name | ExtensionsEnabled |
| ADMX File Name | MicrosoftEdge.admx |
<!-- AllowExtensions-GpMapping-End -->

<!-- AllowExtensions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowExtensions-Examples-End -->

<!-- AllowExtensions-End -->

<!-- AllowFlash-Begin -->
## AllowFlash

<!-- AllowFlash-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowFlash-Applicability-End -->

<!-- AllowFlash-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/AllowFlash
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/AllowFlash
```
<!-- AllowFlash-OmaUri-End -->

<!-- AllowFlash-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting lets you decide whether employees can run Adobe Flash in Microsoft Edge.

- If you enable or don't configure this setting, employees can use Adobe Flash.

- If you disable this setting, employees can't use Adobe Flash.
<!-- AllowFlash-Description-End -->

<!-- AllowFlash-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowFlash-Editable-End -->

<!-- AllowFlash-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowFlash-DFProperties-End -->

<!-- AllowFlash-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Prevented/Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowFlash-AllowedValues-End -->

<!-- AllowFlash-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowFlash |
| Friendly Name | Allow Adobe Flash |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Addons |
| Registry Value Name | FlashPlayerEnabled |
| ADMX File Name | MicrosoftEdge.admx |
<!-- AllowFlash-GpMapping-End -->

<!-- AllowFlash-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowFlash-Examples-End -->

<!-- AllowFlash-End -->

<!-- AllowFlashClickToRun-Begin -->
## AllowFlashClickToRun

<!-- AllowFlashClickToRun-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowFlashClickToRun-Applicability-End -->

<!-- AllowFlashClickToRun-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/AllowFlashClickToRun
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/AllowFlashClickToRun
```
<!-- AllowFlashClickToRun-OmaUri-End -->

<!-- AllowFlashClickToRun-Description-Begin -->
<!-- Description-Source-ADMX -->
If you enable or don't configure the Adobe Flash Click-to-Run setting, Microsoft Edge will require a user to click the Click-to-Run button, to click the content, or for the site to appear on the auto-allowed list, before loading and running the content.

Sites get onto the auto-allowed list based on user feedback, specifically by how often the content is allowed to load and run.
<!-- AllowFlashClickToRun-Description-End -->

<!-- AllowFlashClickToRun-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowFlashClickToRun-Editable-End -->

<!-- AllowFlashClickToRun-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowFlashClickToRun-DFProperties-End -->

<!-- AllowFlashClickToRun-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Load and run Adobe Flash content automatically. |
| 1 (Default) | Does not load or run Adobe Flash content automatically. Requires action from the user. |
<!-- AllowFlashClickToRun-AllowedValues-End -->

<!-- AllowFlashClickToRun-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowFlashClickToRun |
| Friendly Name | Configure the Adobe Flash Click-to-Run setting |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Security |
| Registry Value Name | FlashClickToRunMode |
| ADMX File Name | MicrosoftEdge.admx |
<!-- AllowFlashClickToRun-GpMapping-End -->

<!-- AllowFlashClickToRun-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowFlashClickToRun-Examples-End -->

<!-- AllowFlashClickToRun-End -->

<!-- AllowFullScreenMode-Begin -->
## AllowFullScreenMode

<!-- AllowFullScreenMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- AllowFullScreenMode-Applicability-End -->

<!-- AllowFullScreenMode-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/AllowFullScreenMode
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/AllowFullScreenMode
```
<!-- AllowFullScreenMode-OmaUri-End -->

<!-- AllowFullScreenMode-Description-Begin -->
<!-- Description-Source-ADMX -->
With this policy, you can specify whether to allow full-screen mode, which shows only the web content and hides the Microsoft Edge UI.

If enabled or not configured, full-screen mode is available for use in Microsoft Edge. Your users and extensions must have the proper permissions.

If disabled, full-screen mode is unavailable for use in Microsoft Edge.
<!-- AllowFullScreenMode-Description-End -->

<!-- AllowFullScreenMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowFullScreenMode-Editable-End -->

<!-- AllowFullScreenMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowFullScreenMode-DFProperties-End -->

<!-- AllowFullScreenMode-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Prevented/Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowFullScreenMode-AllowedValues-End -->

<!-- AllowFullScreenMode-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowFullScreenMode |
| Friendly Name | Allow FullScreen Mode |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Main |
| Registry Value Name | AllowFullScreenMode |
| ADMX File Name | MicrosoftEdge.admx |
<!-- AllowFullScreenMode-GpMapping-End -->

<!-- AllowFullScreenMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowFullScreenMode-Examples-End -->

<!-- AllowFullScreenMode-End -->

<!-- AllowInPrivate-Begin -->
## AllowInPrivate

<!-- AllowInPrivate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- AllowInPrivate-Applicability-End -->

<!-- AllowInPrivate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/AllowInPrivate
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/AllowInPrivate
```
<!-- AllowInPrivate-OmaUri-End -->

<!-- AllowInPrivate-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you decide whether employees can browse using InPrivate website browsing.

- If you enable or don't configure this setting, employees can use InPrivate website browsing.

- If you disable this setting, employees can't use InPrivate website browsing.
<!-- AllowInPrivate-Description-End -->

<!-- AllowInPrivate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowInPrivate-Editable-End -->

<!-- AllowInPrivate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowInPrivate-DFProperties-End -->

<!-- AllowInPrivate-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Prevented/Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowInPrivate-AllowedValues-End -->

<!-- AllowInPrivate-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowInPrivate |
| Friendly Name | Allow InPrivate browsing |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Main |
| Registry Value Name | AllowInPrivate |
| ADMX File Name | MicrosoftEdge.admx |
<!-- AllowInPrivate-GpMapping-End -->

<!-- AllowInPrivate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowInPrivate-Examples-End -->

<!-- AllowInPrivate-End -->

<!-- AllowMicrosoftCompatibilityList-Begin -->
## AllowMicrosoftCompatibilityList

<!-- AllowMicrosoftCompatibilityList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowMicrosoftCompatibilityList-Applicability-End -->

<!-- AllowMicrosoftCompatibilityList-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/AllowMicrosoftCompatibilityList
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/AllowMicrosoftCompatibilityList
```
<!-- AllowMicrosoftCompatibilityList-OmaUri-End -->

<!-- AllowMicrosoftCompatibilityList-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you decide whether to use the Microsoft Compatibility List (a Microsoft-provided list that helps sites with known compatibility issues to display properly) in Microsoft Edge. By default, the Microsoft Compatibility List is enabled and can be viewed by visiting about:compat.

- If you enable or don't configure this setting, Microsoft Edge periodically downloads the latest version of the list from Microsoft, applying the updates during browser navigation. Visiting any site on the Microsoft Compatibility List prompts the employee to use Internet Explorer 11, where the site is automatically rendered as though it's in whatever version of IE is necessary for it to appear properly.

- If you disable this setting, the Microsoft Compatibility List isn't used during browser navigation.
<!-- AllowMicrosoftCompatibilityList-Description-End -->

<!-- AllowMicrosoftCompatibilityList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowMicrosoftCompatibilityList-Editable-End -->

<!-- AllowMicrosoftCompatibilityList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowMicrosoftCompatibilityList-DFProperties-End -->

<!-- AllowMicrosoftCompatibilityList-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Prevented/Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowMicrosoftCompatibilityList-AllowedValues-End -->

<!-- AllowMicrosoftCompatibilityList-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowCVList |
| Friendly Name | Allow Microsoft Compatibility List |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\BrowserEmulation |
| Registry Value Name | MSCompatibilityMode |
| ADMX File Name | MicrosoftEdge.admx |
<!-- AllowMicrosoftCompatibilityList-GpMapping-End -->

<!-- AllowMicrosoftCompatibilityList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowMicrosoftCompatibilityList-Examples-End -->

<!-- AllowMicrosoftCompatibilityList-End -->

<!-- AllowPasswordManager-Begin -->
## AllowPasswordManager

<!-- AllowPasswordManager-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- AllowPasswordManager-Applicability-End -->

<!-- AllowPasswordManager-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/AllowPasswordManager
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/AllowPasswordManager
```
<!-- AllowPasswordManager-OmaUri-End -->

<!-- AllowPasswordManager-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you decide whether employees can save their passwords locally, using Password Manager. By default, Password Manager is turned on.

- If you enable this setting, employees can use Password Manager to save their passwords locally.

- If you disable this setting, employees can't use Password Manager to save their passwords locally.

- If you don't configure this setting, employees can choose whether to use Password Manager to save their passwords locally.
<!-- AllowPasswordManager-Description-End -->

<!-- AllowPasswordManager-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowPasswordManager-Editable-End -->

<!-- AllowPasswordManager-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowPasswordManager-DFProperties-End -->

<!-- AllowPasswordManager-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowPasswordManager-AllowedValues-End -->

<!-- AllowPasswordManager-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowPasswordManager |
| Friendly Name | Configure Password Manager |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Main |
| Registry Value Name | FormSuggest Passwords |
| ADMX File Name | MicrosoftEdge.admx |
<!-- AllowPasswordManager-GpMapping-End -->

<!-- AllowPasswordManager-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Verify**:
To verify AllowPasswordManager is set to 0 (not allowed):

1. Click or tap **More** (…) and select **Settings** > **View Advanced settings**.
2. Verify the settings **Save Password** is disabled.
<!-- AllowPasswordManager-Examples-End -->

<!-- AllowPasswordManager-End -->

<!-- AllowPopups-Begin -->
## AllowPopups

<!-- AllowPopups-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowPopups-Applicability-End -->

<!-- AllowPopups-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/AllowPopups
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/AllowPopups
```
<!-- AllowPopups-OmaUri-End -->

<!-- AllowPopups-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you decide whether to turn on Pop-up Blocker. By default, Pop-up Blocker is turned on.

- If you enable this setting, Pop-up Blocker is turned on, stopping pop-up windows from appearing.

- If you disable this setting, Pop-up Blocker is turned off, letting pop-ups windows appear.

- If you don't configure this setting, employees can choose whether to use Pop-up Blocker.
<!-- AllowPopups-Description-End -->

<!-- AllowPopups-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowPopups-Editable-End -->

<!-- AllowPopups-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowPopups-DFProperties-End -->

<!-- AllowPopups-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Turn off Pop-up Blocker letting pop-up windows open. |
| 1 | Turn on Pop-up Blocker stopping pop-up windows from opening. |
<!-- AllowPopups-AllowedValues-End -->

<!-- AllowPopups-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowPopups |
| Friendly Name | Configure Pop-up Blocker |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Main |
| Registry Value Name | AllowPopups |
| ADMX File Name | MicrosoftEdge.admx |
<!-- AllowPopups-GpMapping-End -->

<!-- AllowPopups-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Verify**:
To verify AllowPopups is set to 0 (not allowed):

1. Click or tap **More** (…) and select **Settings** > **View Advanced settings**.
2.  Verify whether the setting **Block pop-ups** is disabled.
<!-- AllowPopups-Examples-End -->

<!-- AllowPopups-End -->

<!-- AllowPrelaunch-Begin -->
## AllowPrelaunch

<!-- AllowPrelaunch-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- AllowPrelaunch-Applicability-End -->

<!-- AllowPrelaunch-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/AllowPrelaunch
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/AllowPrelaunch
```
<!-- AllowPrelaunch-OmaUri-End -->

<!-- AllowPrelaunch-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you decide whether Microsoft Edge can pre-launch during Windows sign in, when the system is idle, and each time Microsoft Edge is closed. By default this setting is to allow pre-launch.

If you allow pre-launch, disable, or don't configure this policy setting, Microsoft Edge pre-launches during Windows sign in, when the system is idle, and each time Microsoft Edge is closed; minimizing the amount of time required to start up Microsoft Edge.

If you prevent pre-launch, Microsoft Edge won't pre-launch during Windows sign in, when the system is idle, or each time Microsoft Edge is closed.
<!-- AllowPrelaunch-Description-End -->

<!-- AllowPrelaunch-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowPrelaunch-Editable-End -->

<!-- AllowPrelaunch-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowPrelaunch-DFProperties-End -->

<!-- AllowPrelaunch-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Prevented/Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowPrelaunch-AllowedValues-End -->

<!-- AllowPrelaunch-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowPrelaunch |
| Friendly Name | Allow Microsoft Edge to pre-launch at Windows startup, when the system is idle, and each time Microsoft Edge is closed |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Main |
| ADMX File Name | MicrosoftEdge.admx |
<!-- AllowPrelaunch-GpMapping-End -->

<!-- AllowPrelaunch-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowPrelaunch-Examples-End -->

<!-- AllowPrelaunch-End -->

<!-- AllowPrinting-Begin -->
## AllowPrinting

<!-- AllowPrinting-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- AllowPrinting-Applicability-End -->

<!-- AllowPrinting-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/AllowPrinting
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/AllowPrinting
```
<!-- AllowPrinting-OmaUri-End -->

<!-- AllowPrinting-Description-Begin -->
<!-- Description-Source-ADMX -->
With this policy, you can restrict whether printing web content in Microsoft Edge is allowed.

If enabled, printing is allowed.

If disabled, printing isn't allowed.
<!-- AllowPrinting-Description-End -->

<!-- AllowPrinting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowPrinting-Editable-End -->

<!-- AllowPrinting-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowPrinting-DFProperties-End -->

<!-- AllowPrinting-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Prevented/Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowPrinting-AllowedValues-End -->

<!-- AllowPrinting-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowPrinting |
| Friendly Name | Allow printing |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Main |
| Registry Value Name | AllowPrinting |
| ADMX File Name | MicrosoftEdge.admx |
<!-- AllowPrinting-GpMapping-End -->

<!-- AllowPrinting-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowPrinting-Examples-End -->

<!-- AllowPrinting-End -->

<!-- AllowSavingHistory-Begin -->
## AllowSavingHistory

<!-- AllowSavingHistory-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- AllowSavingHistory-Applicability-End -->

<!-- AllowSavingHistory-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/AllowSavingHistory
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/AllowSavingHistory
```
<!-- AllowSavingHistory-OmaUri-End -->

<!-- AllowSavingHistory-Description-Begin -->
<!-- Description-Source-ADMX -->
Microsoft Edge saves your user's browsing history, which is made up of info about the websites they visit, on their devices.

If enabled or not configured, the browsing history is saved and visible in the History pane.

If disabled, the browsing history stops saving and isn't visible in the History pane. If browsing history exists before this policy was disabled, the previous browsing history remains visible in the History pane. This policy, when disabled, doesn't stop roaming of existing history or history coming from other roamed devices.
<!-- AllowSavingHistory-Description-End -->

<!-- AllowSavingHistory-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowSavingHistory-Editable-End -->

<!-- AllowSavingHistory-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowSavingHistory-DFProperties-End -->

<!-- AllowSavingHistory-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Prevented/Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowSavingHistory-AllowedValues-End -->

<!-- AllowSavingHistory-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowSavingHistory |
| Friendly Name | Allow Saving History |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Main |
| Registry Value Name | AllowSavingHistory |
| ADMX File Name | MicrosoftEdge.admx |
<!-- AllowSavingHistory-GpMapping-End -->

<!-- AllowSavingHistory-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSavingHistory-Examples-End -->

<!-- AllowSavingHistory-End -->

<!-- AllowSearchEngineCustomization-Begin -->
## AllowSearchEngineCustomization

<!-- AllowSearchEngineCustomization-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowSearchEngineCustomization-Applicability-End -->

<!-- AllowSearchEngineCustomization-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/AllowSearchEngineCustomization
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/AllowSearchEngineCustomization
```
<!-- AllowSearchEngineCustomization-OmaUri-End -->

<!-- AllowSearchEngineCustomization-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you decide whether users can change their search engine.

- If you disable this setting, users can't add new search engines or change the default used in the address bar.

Important.

This setting can only be used with domain-joined or MDM-enrolled devices. For more info, see the Microsoft browser extension policy (aka.ms/browserpolicy).

- If you enable or don't configure this policy, users can add new search engines and change the default used in the address bar from within Microsoft Edge Settings.

- If you disable this setting, users can't add search engines or change the default used in the address bar.
<!-- AllowSearchEngineCustomization-Description-End -->

<!-- AllowSearchEngineCustomization-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowSearchEngineCustomization-Editable-End -->

<!-- AllowSearchEngineCustomization-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowSearchEngineCustomization-DFProperties-End -->

<!-- AllowSearchEngineCustomization-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Prevented/Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowSearchEngineCustomization-AllowedValues-End -->

<!-- AllowSearchEngineCustomization-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowSearchEngineCustomization |
| Friendly Name | Allow search engine customization |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Protected - It is a violation of Windows Policy to modify. See aka.ms/browserpolicy |
| Registry Value Name | AllowSearchEngineCustomization |
| ADMX File Name | MicrosoftEdge.admx |
<!-- AllowSearchEngineCustomization-GpMapping-End -->

<!-- AllowSearchEngineCustomization-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSearchEngineCustomization-Examples-End -->

<!-- AllowSearchEngineCustomization-End -->

<!-- AllowSearchSuggestionsinAddressBar-Begin -->
## AllowSearchSuggestionsinAddressBar

<!-- AllowSearchSuggestionsinAddressBar-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowSearchSuggestionsinAddressBar-Applicability-End -->

<!-- AllowSearchSuggestionsinAddressBar-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/AllowSearchSuggestionsinAddressBar
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/AllowSearchSuggestionsinAddressBar
```
<!-- AllowSearchSuggestionsinAddressBar-OmaUri-End -->

<!-- AllowSearchSuggestionsinAddressBar-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you decide whether search suggestions appear in the Address bar of Microsoft Edge. By default, employees can choose whether search suggestions appear in the Address bar of Microsoft Edge.

- If you enable this setting, employees can see search suggestions in the Address bar of Microsoft Edge.

- If you disable this setting, employees can't see search suggestions in the Address bar of Microsoft Edge.

- If you don't configure this setting, employees can choose whether search suggestions appear in the Address bar of Microsoft Edge.
<!-- AllowSearchSuggestionsinAddressBar-Description-End -->

<!-- AllowSearchSuggestionsinAddressBar-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowSearchSuggestionsinAddressBar-Editable-End -->

<!-- AllowSearchSuggestionsinAddressBar-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowSearchSuggestionsinAddressBar-DFProperties-End -->

<!-- AllowSearchSuggestionsinAddressBar-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Prevented/Not allowed. Hide the search suggestions. |
| 1 (Default) | Allowed. Show the search suggestions. |
<!-- AllowSearchSuggestionsinAddressBar-AllowedValues-End -->

<!-- AllowSearchSuggestionsinAddressBar-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowSearchSuggestionsinAddressBar |
| Friendly Name | Configure search suggestions in Address bar |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\SearchScopes |
| Registry Value Name | ShowSearchSuggestionsGlobal |
| ADMX File Name | MicrosoftEdge.admx |
<!-- AllowSearchSuggestionsinAddressBar-GpMapping-End -->

<!-- AllowSearchSuggestionsinAddressBar-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSearchSuggestionsinAddressBar-Examples-End -->

<!-- AllowSearchSuggestionsinAddressBar-End -->

<!-- AllowSideloadingOfExtensions-Begin -->
## AllowSideloadingOfExtensions

<!-- AllowSideloadingOfExtensions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- AllowSideloadingOfExtensions-Applicability-End -->

<!-- AllowSideloadingOfExtensions-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/AllowSideloadingOfExtensions
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/AllowSideloadingOfExtensions
```
<!-- AllowSideloadingOfExtensions-OmaUri-End -->

<!-- AllowSideloadingOfExtensions-Description-Begin -->
<!-- Description-Source-ADMX -->
Sideloading installs and runs unverified extensions in Microsoft Edge. With this policy, you can specify whether unverified extensions can be sideloaded in Microsoft Edge.

If enabled or not configured, sideloading of unverified extensions in Microsoft Edge is allowed.

If disabled, sideloading of unverified extensions in Microsoft Edge isn't allowed. Extensions can be installed only through Microsoft store (including a store for business), enterprise storefront (such as Company Portal) or PowerShell (using Add-AppxPackage). When disabled, this policy doesn't prevent sideloading of extensions using Add-AppxPackage via PowerShell. To prevent this, in Group Policy Editor, enable Allows development of Windows Store apps and installing them from an integrated development environment (IDE), which is located at:

Computer Configuration > Administrative Templates > Windows Components > App Package Deployment.

Supported versions: Microsoft Edge on Windows 10, version 1809
Default setting: Disabled or not configured.

Related policies:

- Allows development of Windows Store apps and installing them from an integrated development environment (IDE)
- Allow all trusted apps to install
<!-- AllowSideloadingOfExtensions-Description-End -->

<!-- AllowSideloadingOfExtensions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowSideloadingOfExtensions-Editable-End -->

<!-- AllowSideloadingOfExtensions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowSideloadingOfExtensions-DFProperties-End -->

<!-- AllowSideloadingOfExtensions-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Prevented/Not allowed. Disabling doesn't prevent sideloading of extensions using Add-AppxPackage via Powershell. To prevent this, set the ApplicationManagement/AllowDeveloperUnlock policy to 1 (enabled). |
| 1 (Default) | Allowed. |
<!-- AllowSideloadingOfExtensions-AllowedValues-End -->

<!-- AllowSideloadingOfExtensions-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowSideloadingOfExtensions |
| Friendly Name | Allow Sideloading of extension |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Extensions |
| Registry Value Name | AllowSideloadingOfExtensions |
| ADMX File Name | MicrosoftEdge.admx |
<!-- AllowSideloadingOfExtensions-GpMapping-End -->

<!-- AllowSideloadingOfExtensions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSideloadingOfExtensions-Examples-End -->

<!-- AllowSideloadingOfExtensions-End -->

<!-- AllowSmartScreen-Begin -->
## AllowSmartScreen

<!-- AllowSmartScreen-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowSmartScreen-Applicability-End -->

<!-- AllowSmartScreen-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/AllowSmartScreen
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/AllowSmartScreen
```
<!-- AllowSmartScreen-OmaUri-End -->

<!-- AllowSmartScreen-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you configure whether to turn on Windows Defender SmartScreen. Windows Defender SmartScreen provides warning messages to help protect your employees from potential phishing scams and malicious software. By default, Windows Defender SmartScreen is turned on.

- If you enable this setting, Windows Defender SmartScreen is turned on and employees can't turn it off.

- If you disable this setting, Windows Defender SmartScreen is turned off and employees can't turn it on.

- If you don't configure this setting, employees can choose whether to use Windows Defender SmartScreen.
<!-- AllowSmartScreen-Description-End -->

<!-- AllowSmartScreen-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowSmartScreen-Editable-End -->

<!-- AllowSmartScreen-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowSmartScreen-DFProperties-End -->

<!-- AllowSmartScreen-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Turned off. Don't protect users from potential threats and prevent users from turning it on. |
| 1 (Default) | Turned on. Protect users from potential threats and prevent users from turning it off. |
<!-- AllowSmartScreen-AllowedValues-End -->

<!-- AllowSmartScreen-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowSmartScreen |
| Friendly Name | Configure Windows Defender SmartScreen |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\PhishingFilter |
| Registry Value Name | EnabledV9 |
| ADMX File Name | MicrosoftEdge.admx |
<!-- AllowSmartScreen-GpMapping-End -->

<!-- AllowSmartScreen-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Verify**:
To verify AllowSmartScreen is set to 0 (not allowed):

1. Click or tap **More** (…) and select **Settings** > **View Advanced settings**.
2.  Verify that the setting **Help protect me from malicious sites and download with Windows Defender SmartScreen** is disabled.
<!-- AllowSmartScreen-Examples-End -->

<!-- AllowSmartScreen-End -->

<!-- AllowTabPreloading-Begin -->
## AllowTabPreloading

<!-- AllowTabPreloading-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- AllowTabPreloading-Applicability-End -->

<!-- AllowTabPreloading-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/AllowTabPreloading
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/AllowTabPreloading
```
<!-- AllowTabPreloading-OmaUri-End -->

<!-- AllowTabPreloading-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you decide whether Microsoft Edge can load the Start and New Tab page during Windows sign in and each time Microsoft Edge is closed. By default this setting is to allow preloading.

If you allow preloading, disable, or don't configure this policy setting, Microsoft Edge loads the Start and New Tab page during Windows sign in and each time Microsoft Edge is closed; minimizing the amount of time required to start up Microsoft Edge and to start a new tab.

If you prevent preloading, Microsoft Edge won't load the Start or New Tab page during Windows sign in and each time Microsoft Edge is closed.
<!-- AllowTabPreloading-Description-End -->

<!-- AllowTabPreloading-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowTabPreloading-Editable-End -->

<!-- AllowTabPreloading-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowTabPreloading-DFProperties-End -->

<!-- AllowTabPreloading-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Prevented/Not allowed. |
| 1 (Default) | Allowed. Preload Start and New tab pages. |
<!-- AllowTabPreloading-AllowedValues-End -->

<!-- AllowTabPreloading-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowTabPreloading |
| Friendly Name | Allow Microsoft Edge to start and load the Start and New Tab page at Windows startup and each time Microsoft Edge is closed |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\TabPreloader |
| ADMX File Name | MicrosoftEdge.admx |
<!-- AllowTabPreloading-GpMapping-End -->

<!-- AllowTabPreloading-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowTabPreloading-Examples-End -->

<!-- AllowTabPreloading-End -->

<!-- AllowWebContentOnNewTabPage-Begin -->
## AllowWebContentOnNewTabPage

<!-- AllowWebContentOnNewTabPage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- AllowWebContentOnNewTabPage-Applicability-End -->

<!-- AllowWebContentOnNewTabPage-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/AllowWebContentOnNewTabPage
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/AllowWebContentOnNewTabPage
```
<!-- AllowWebContentOnNewTabPage-OmaUri-End -->

<!-- AllowWebContentOnNewTabPage-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you configure what appears when Microsoft Edge opens a new tab. By default, Microsoft Edge opens the New Tab page.

- If you enable this setting, Microsoft Edge opens a new tab with the New Tab page.

- If you disable this setting, Microsoft Edge opens a new tab with a blank page. If you use this setting, employees can't change it.

- If you don't configure this setting, employees can choose how new tabs appears.
<!-- AllowWebContentOnNewTabPage-Description-End -->

<!-- AllowWebContentOnNewTabPage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowWebContentOnNewTabPage-Editable-End -->

<!-- AllowWebContentOnNewTabPage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowWebContentOnNewTabPage-DFProperties-End -->

<!-- AllowWebContentOnNewTabPage-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Load a blank page instead of the default New tab page and prevent users from changing it. |
| 1 (Default) | Load the default New tab page. |
<!-- AllowWebContentOnNewTabPage-AllowedValues-End -->

<!-- AllowWebContentOnNewTabPage-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowWebContentOnNewTabPage |
| Friendly Name | Allow web content on New Tab page |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\ServiceUI |
| Registry Value Name | AllowWebContentOnNewTabPage |
| ADMX File Name | MicrosoftEdge.admx |
<!-- AllowWebContentOnNewTabPage-GpMapping-End -->

<!-- AllowWebContentOnNewTabPage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowWebContentOnNewTabPage-Examples-End -->

<!-- AllowWebContentOnNewTabPage-End -->

<!-- AlwaysEnableBooksLibrary-Begin -->
## AlwaysEnableBooksLibrary

<!-- AlwaysEnableBooksLibrary-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- AlwaysEnableBooksLibrary-Applicability-End -->

<!-- AlwaysEnableBooksLibrary-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/AlwaysEnableBooksLibrary
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/AlwaysEnableBooksLibrary
```
<!-- AlwaysEnableBooksLibrary-OmaUri-End -->

<!-- AlwaysEnableBooksLibrary-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting helps you to decide whether to make the Books tab visible, regardless of a device's country or region setting, as configured in the Country or region area of Windows settings.

- If you enable this setting, Microsoft Edge shows the Books Library, regardless of the device's country or region.

- If you disable or don't configure this setting, Microsoft Edge shows the Books Library only in countries or regions where it's supported.
<!-- AlwaysEnableBooksLibrary-Description-End -->

<!-- AlwaysEnableBooksLibrary-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AlwaysEnableBooksLibrary-Editable-End -->

<!-- AlwaysEnableBooksLibrary-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AlwaysEnableBooksLibrary-DFProperties-End -->

<!-- AlwaysEnableBooksLibrary-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Show the Books Library only in countries or regions where supported. |
| 1 | Show the Books Library, regardless of the device's country or region. |
<!-- AlwaysEnableBooksLibrary-AllowedValues-End -->

<!-- AlwaysEnableBooksLibrary-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AlwaysEnableBooksLibrary |
| Friendly Name | Always show the Books Library in Microsoft Edge |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Main |
| Registry Value Name | AlwaysEnableBooksLibrary |
| ADMX File Name | MicrosoftEdge.admx |
<!-- AlwaysEnableBooksLibrary-GpMapping-End -->

<!-- AlwaysEnableBooksLibrary-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AlwaysEnableBooksLibrary-Examples-End -->

<!-- AlwaysEnableBooksLibrary-End -->

<!-- ClearBrowsingDataOnExit-Begin -->
## ClearBrowsingDataOnExit

<!-- ClearBrowsingDataOnExit-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- ClearBrowsingDataOnExit-Applicability-End -->

<!-- ClearBrowsingDataOnExit-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/ClearBrowsingDataOnExit
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/ClearBrowsingDataOnExit
```
<!-- ClearBrowsingDataOnExit-OmaUri-End -->

<!-- ClearBrowsingDataOnExit-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows the automatic clearing of browsing data when Microsoft Edge closes.

- If you enable this policy setting, clearing browsing history on exit's turned on.

- If you disable or don't configure this policy setting, it can be turned on and configured by the employee in the Clear browsing data options under Settings.
<!-- ClearBrowsingDataOnExit-Description-End -->

<!-- ClearBrowsingDataOnExit-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ClearBrowsingDataOnExit-Editable-End -->

<!-- ClearBrowsingDataOnExit-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ClearBrowsingDataOnExit-DFProperties-End -->

<!-- ClearBrowsingDataOnExit-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Prevented/not allowed. Users can configure the 'Clear browsing data' option in Settings. |
| 1 | Allowed. Clear the browsing data upon exit automatically. |
<!-- ClearBrowsingDataOnExit-AllowedValues-End -->

<!-- ClearBrowsingDataOnExit-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowClearingBrowsingDataOnExit |
| Friendly Name | Allow clearing browsing data on exit |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Privacy |
| Registry Value Name | ClearBrowsingHistoryOnExit |
| ADMX File Name | MicrosoftEdge.admx |
<!-- ClearBrowsingDataOnExit-GpMapping-End -->

<!-- ClearBrowsingDataOnExit-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Verify**:
To verify whether browsing data is cleared on exit (ClearBrowsingDataOnExit is set to 1):

1. Open Microsoft Edge and browse to websites.
2. Close the Microsoft Edge window.
3. Open Microsoft Edge and start typing the same URL in address bar.
4. Verify that it doesn't auto-complete from history.
<!-- ClearBrowsingDataOnExit-Examples-End -->

<!-- ClearBrowsingDataOnExit-End -->

<!-- ConfigureAdditionalSearchEngines-Begin -->
## ConfigureAdditionalSearchEngines

<!-- ConfigureAdditionalSearchEngines-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- ConfigureAdditionalSearchEngines-Applicability-End -->

<!-- ConfigureAdditionalSearchEngines-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/ConfigureAdditionalSearchEngines
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/ConfigureAdditionalSearchEngines
```
<!-- ConfigureAdditionalSearchEngines-OmaUri-End -->

<!-- ConfigureAdditionalSearchEngines-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you add up to 5 additional search engines, which can't be removed by your employees, but can be made a personal default engine. This setting doesn't set the default search engine. For that, you must use the "Set default search engine" setting.

Important.

This setting can only be used with domain-joined or MDM-enrolled devices. For more info, see the Microsoft browser extension policy (aka.ms/browserpolicy).

- If you enable this setting, you can add up to 5 additional search engines. For each additional engine, you must also add a link to your OpenSearch XML file, including at least the short name and https: URL of the search engine. For more info about creating the OpenSearch XML file, see the Understanding OpenSearch Standards (https://msdn.microsoft.com/library/dd163546.aspx) topic. Use this format to specify the link(s) you wish to add: `<https://fabrikam.com/opensearch.xml>` `<https://www.contoso.com/opensearch.xml>`

- If you disable this setting, any added search engines are removed from your employee's devices.

- If you don't configure this setting, the search engine list is set to what's specified in App settings.
<!-- ConfigureAdditionalSearchEngines-Description-End -->

<!-- ConfigureAdditionalSearchEngines-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureAdditionalSearchEngines-Editable-End -->

<!-- ConfigureAdditionalSearchEngines-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfigureAdditionalSearchEngines-DFProperties-End -->

<!-- ConfigureAdditionalSearchEngines-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureAdditionalSearchEngines |
| Friendly Name | Configure additional search engines |
| Element Name | Use this format to specify the link(s) you wish to add: `<https://fabrikam.com/opensearch.xml>` `<https://www.contoso.com/opensearch.xml>` |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\OpenSearch |
| ADMX File Name | MicrosoftEdge.admx |
<!-- ConfigureAdditionalSearchEngines-GpMapping-End -->

<!-- ConfigureAdditionalSearchEngines-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureAdditionalSearchEngines-Examples-End -->

<!-- ConfigureAdditionalSearchEngines-End -->

<!-- ConfigureFavoritesBar-Begin -->
## ConfigureFavoritesBar

<!-- ConfigureFavoritesBar-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- ConfigureFavoritesBar-Applicability-End -->

<!-- ConfigureFavoritesBar-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/ConfigureFavoritesBar
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/ConfigureFavoritesBar
```
<!-- ConfigureFavoritesBar-OmaUri-End -->

<!-- ConfigureFavoritesBar-Description-Begin -->
<!-- Description-Source-ADMX -->
The favorites bar shows your user's links to sites they've added to it. With this policy, you can specify whether to set the favorites bar to always be visible or hidden on any page.

If enabled, favorites bar is always visible on any page, and the favorites bar toggle in Settings sets to On, but disabled preventing your users from making changes. An error message also shows at the top of the Settings pane indicating that your organization manages some settings. The show bar/hide bar option is hidden from the context menu.

If disabled, the favorites bar is hidden, and the favorites bar toggle resets to Off, but disabled preventing your users from making changes. An error message also shows at the top of the Settings pane indicating that your organization manages some settings.

If not configured, the favorites bar is hidden but is visible on the Start and New Tab pages, and the favorites bar toggle in Settings sets to Off but is enabled allowing the user to make changes.
<!-- ConfigureFavoritesBar-Description-End -->

<!-- ConfigureFavoritesBar-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureFavoritesBar-Editable-End -->

<!-- ConfigureFavoritesBar-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ConfigureFavoritesBar-DFProperties-End -->

<!-- ConfigureFavoritesBar-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Hide the favorites bar on all pages. Also, the favorites bar toggle, in Settings, is set to Off and disabled preventing users from making changes. Microsoft Edge also hides the “show bar/hide bar” option in the context menu. |
| 1 | Show the favorites bar on all pages. Also, the favorites bar toggle, in Settings, is set to On and disabled preventing users from making changes. Microsoft Edge also hides the “show bar/hide bar” option in the context menu. |
<!-- ConfigureFavoritesBar-AllowedValues-End -->

<!-- ConfigureFavoritesBar-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureFavoritesBar |
| Friendly Name | Configure Favorites Bar |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Main |
| Registry Value Name | ConfigureFavoritesBar |
| ADMX File Name | MicrosoftEdge.admx |
<!-- ConfigureFavoritesBar-GpMapping-End -->

<!-- ConfigureFavoritesBar-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureFavoritesBar-Examples-End -->

<!-- ConfigureFavoritesBar-End -->

<!-- ConfigureHomeButton-Begin -->
## ConfigureHomeButton

<!-- ConfigureHomeButton-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- ConfigureHomeButton-Applicability-End -->

<!-- ConfigureHomeButton-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/ConfigureHomeButton
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/ConfigureHomeButton
```
<!-- ConfigureHomeButton-OmaUri-End -->

<!-- ConfigureHomeButton-Description-Begin -->
<!-- Description-Source-ADMX -->
The Home button loads either the default Start page, the New tab page, or a URL defined in the Set Home Button URL policy.

By default, this policy is disabled or not configured and clicking the home button loads the default Start page.

When enabled, the home button is locked down preventing your users from making changes in Microsoft Edge's UI settings. To let your users change the Microsoft Edge UI settings, enable the Unlock Home Button policy.

If Enabled AND:

- Show home button & set to Start page is selected, clicking the home button loads the Start page.

- Show home button & set to New tab page is selected, clicking the home button loads a New tab page.

- Show home button & set a specific page is selected, clicking the home button loads the URL specified in the Set Home Button URL policy.

- Hide home button is selected, the home button is hidden in Microsoft Edge.

Default setting: Disabled or not configured.

Related policies:

- Set Home Button URL
- Unlock Home Button.
<!-- ConfigureHomeButton-Description-End -->

<!-- ConfigureHomeButton-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureHomeButton-Editable-End -->

<!-- ConfigureHomeButton-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ConfigureHomeButton-DFProperties-End -->

<!-- ConfigureHomeButton-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Show home button and load the Start page. |
| 1 | Show home button and load the New tab page. |
| 2 | Show home button and load the custom URL defined in the Set Home Button URL policy. |
| 3 | Hide home button. |
<!-- ConfigureHomeButton-AllowedValues-End -->

<!-- ConfigureHomeButton-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureHomeButton |
| Friendly Name | Configure Home Button |
| Element Name | Configure the Home Button. |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Internet Settings |
| ADMX File Name | MicrosoftEdge.admx |
<!-- ConfigureHomeButton-GpMapping-End -->

<!-- ConfigureHomeButton-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
>[!TIP]
>If you want to make changes to this policy:<ol><li>Set **UnlockHomeButton** to 1 (enabled).</li><li>Make changes to **ConfigureHomeButton** or **SetHomeButtonURL** policy.</li><li>Set **UnlockHomeButton** 0 (disabled).</li></ol>
<!-- ConfigureHomeButton-Examples-End -->

<!-- ConfigureHomeButton-End -->

<!-- ConfigureKioskMode-Begin -->
## ConfigureKioskMode

<!-- ConfigureKioskMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- ConfigureKioskMode-Applicability-End -->

<!-- ConfigureKioskMode-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/ConfigureKioskMode
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/ConfigureKioskMode
```
<!-- ConfigureKioskMode-OmaUri-End -->

<!-- ConfigureKioskMode-Description-Begin -->
<!-- Description-Source-ADMX -->
Configure how Microsoft Edge behaves when it's running in kiosk mode with assigned access, either as a single app or as one of multiple apps running on the kiosk device. You can control whether Microsoft Edge runs InPrivate full screen, InPrivate multi-tab with limited functionality, or normal Microsoft Edge.

You need to configure Microsoft Edge in assigned access for this policy to take effect; otherwise, these settings are ignored. To learn more about assigned access and kiosk configuration, see "Configure kiosk and shared devices running Windows desktop editions" (https://aka.ms/E489vw).

If enabled and set to 0 (Default or not configured):

- If it's a single app, it runs InPrivate full screen for digital signage or interactive displays.

- If it's one of many apps, Microsoft Edge runs as normal.

If enabled and set to 1:

- If it's a single app, it runs a limited multi-tab version of InPrivate and is the only app available for public browsing. Users can't minimize, close, or open windows or customize Microsoft Edge, but can clear browsing data and downloads and restart by clicking "End session". You can configure Microsoft Edge to restart after a period of inactivity by using the "Configure kiosk reset after idle timeout" policy.

- If it's one of many apps, it runs in a limited multi-tab version of InPrivate for public browsing with other apps. Users can minimize, close, and open multiple InPrivate windows, but they can't customize Microsoft Edge.
<!-- ConfigureKioskMode-Description-End -->

<!-- ConfigureKioskMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureKioskMode-Editable-End -->

<!-- ConfigureKioskMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ConfigureKioskMode-DFProperties-End -->

<!-- ConfigureKioskMode-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Enable. |
| 0 (Default) | Disable. |
<!-- ConfigureKioskMode-AllowedValues-End -->

<!-- ConfigureKioskMode-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureKioskMode |
| Friendly Name | Configure kiosk mode |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\KioskMode |
| ADMX File Name | MicrosoftEdge.admx |
<!-- ConfigureKioskMode-GpMapping-End -->

<!-- ConfigureKioskMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureKioskMode-Examples-End -->

<!-- ConfigureKioskMode-End -->

<!-- ConfigureKioskResetAfterIdleTimeout-Begin -->
## ConfigureKioskResetAfterIdleTimeout

<!-- ConfigureKioskResetAfterIdleTimeout-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- ConfigureKioskResetAfterIdleTimeout-Applicability-End -->

<!-- ConfigureKioskResetAfterIdleTimeout-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/ConfigureKioskResetAfterIdleTimeout
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/ConfigureKioskResetAfterIdleTimeout
```
<!-- ConfigureKioskResetAfterIdleTimeout-OmaUri-End -->

<!-- ConfigureKioskResetAfterIdleTimeout-Description-Begin -->
<!-- Description-Source-ADMX -->
You can configure Microsoft Edge to reset to the configured start experience after a specified amount of idle time. The reset timer begins after the last user interaction. Resetting to the configured start experience deletes the current user's browsing data.

If enabled, you can set the idle time in minutes (0-1440). You must set the Configure kiosk mode policy to 1 and configure Microsoft Edge in assigned access as a single app for this policy to work. Once the idle time meets the time specified, a confirmation message prompts the user to continue, and if no user action, Microsoft Edge resets after 30 seconds.

If you set this policy to 0, Microsoft Edge doesn't use an idle timer.

If disabled or not configured, the default value is 5 minutes.

If you don't configure Microsoft Edge in assigned access, then this policy doesn't take effect.
<!-- ConfigureKioskResetAfterIdleTimeout-Description-End -->

<!-- ConfigureKioskResetAfterIdleTimeout-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureKioskResetAfterIdleTimeout-Editable-End -->

<!-- ConfigureKioskResetAfterIdleTimeout-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-1440]` |
| Default Value  | 5 |
| Dependency [Browser_ConfigureKioskResetAfterIdleTimeout_DependencyGroup] | Dependency Type: `DependsOn` <br> Dependency URI: `Device/Vendor/MSFT/Policy/Config/Browser/ConfigureKioskMode` <br> Dependency Allowed Value: `[1]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- ConfigureKioskResetAfterIdleTimeout-DFProperties-End -->

<!-- ConfigureKioskResetAfterIdleTimeout-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureKioskResetAfterIdleTimeout |
| Friendly Name | Configure kiosk reset after idle timeout |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\KioskMode |
| ADMX File Name | MicrosoftEdge.admx |
<!-- ConfigureKioskResetAfterIdleTimeout-GpMapping-End -->

<!-- ConfigureKioskResetAfterIdleTimeout-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureKioskResetAfterIdleTimeout-Examples-End -->

<!-- ConfigureKioskResetAfterIdleTimeout-End -->

<!-- ConfigureOpenMicrosoftEdgeWith-Begin -->
## ConfigureOpenMicrosoftEdgeWith

<!-- ConfigureOpenMicrosoftEdgeWith-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- ConfigureOpenMicrosoftEdgeWith-Applicability-End -->

<!-- ConfigureOpenMicrosoftEdgeWith-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/ConfigureOpenMicrosoftEdgeWith
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/ConfigureOpenMicrosoftEdgeWith
```
<!-- ConfigureOpenMicrosoftEdgeWith-OmaUri-End -->

<!-- ConfigureOpenMicrosoftEdgeWith-Description-Begin -->
<!-- Description-Source-ADMX -->
You can configure Microsoft Edge to lock down the Start page, preventing users from changing or customizing it.

If enabled, you can choose one of the following options:

- Start page: the Start page loads ignoring the Configure Start Pages policy.

- New tab page: the New tab page loads ignoring the Configure Start Pages policy.

- Previous pages: all tabs the user had open when Microsoft Edge last closed loads ignoring the Configure Start Pages policy.

- A specific page or pages: the URL(s) specified with Configure Start Pages policy load(s). If selected, you must specify at least one URL in Configure Start Pages; otherwise, this policy is ignored.

When enabled, and you want to make changes, you must first set the Disable Lockdown of Start Pages to not configured, make the changes to the Configure Open Microsoft Edge With policy, and then enable the Disable Lockdown of Start Pages policy.

If disabled or not configured, and you enable the Disable Lockdown of Start Pages policy, your users can change or customize the Start page.

Default setting: A specific page or pages (default)
Related policies:

-Disable Lockdown of Start Pages
-Configure Start Pages.
<!-- ConfigureOpenMicrosoftEdgeWith-Description-End -->

<!-- ConfigureOpenMicrosoftEdgeWith-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureOpenMicrosoftEdgeWith-Editable-End -->

<!-- ConfigureOpenMicrosoftEdgeWith-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 3 |
<!-- ConfigureOpenMicrosoftEdgeWith-DFProperties-End -->

<!-- ConfigureOpenMicrosoftEdgeWith-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Load the Start page. |
| 1 | Load the New tab page. |
| 2 | Load the previous pages. |
| 3 (Default) | Load a specific page or pages. |
<!-- ConfigureOpenMicrosoftEdgeWith-AllowedValues-End -->

<!-- ConfigureOpenMicrosoftEdgeWith-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureOpenEdgeWith |
| Friendly Name | Configure Open Microsoft Edge With |
| Element Name | Configure Open Microsoft Edge With. |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Internet Settings |
| ADMX File Name | MicrosoftEdge.admx |
<!-- ConfigureOpenMicrosoftEdgeWith-GpMapping-End -->

<!-- ConfigureOpenMicrosoftEdgeWith-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
>[!TIP]
>If you want to make changes to this policy:<ol><li>Set DisableLockdownOfStartPages to 0 (not configured).</li><li>Make changes to ConfigureOpenEdgeWith.</li><li>Set DisableLockdownOfStartPages to 1 (enabled).</li></ol>
<!-- ConfigureOpenMicrosoftEdgeWith-Examples-End -->

<!-- ConfigureOpenMicrosoftEdgeWith-End -->

<!-- ConfigureTelemetryForMicrosoft365Analytics-Begin -->
## ConfigureTelemetryForMicrosoft365Analytics

> [!NOTE]
> This policy is deprecated and may be removed in a future release.

<!-- ConfigureTelemetryForMicrosoft365Analytics-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- ConfigureTelemetryForMicrosoft365Analytics-Applicability-End -->

<!-- ConfigureTelemetryForMicrosoft365Analytics-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/ConfigureTelemetryForMicrosoft365Analytics
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/ConfigureTelemetryForMicrosoft365Analytics
```
<!-- ConfigureTelemetryForMicrosoft365Analytics-OmaUri-End -->

<!-- ConfigureTelemetryForMicrosoft365Analytics-Description-Begin -->
<!-- Description-Source-ADMX -->
You can configure Microsoft Edge to send intranet history only, internet history only, or both to Desktop Analytics for enterprise devices with a configured Commercial ID. If disabled or not configured, Microsoft Edge doesn't send browsing history data to Desktop Analytics.

Supported versions: Microsoft Edge on Windows 10, version 1809
Default setting: Disabled or not configured (no data collected or sent)
<!-- ConfigureTelemetryForMicrosoft365Analytics-Description-End -->

<!-- ConfigureTelemetryForMicrosoft365Analytics-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureTelemetryForMicrosoft365Analytics-Editable-End -->

<!-- ConfigureTelemetryForMicrosoft365Analytics-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ConfigureTelemetryForMicrosoft365Analytics-DFProperties-End -->

<!-- ConfigureTelemetryForMicrosoft365Analytics-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | No data collected or sent. |
| 1 | Send intranet history only. |
| 2 | Send Internet history only. |
| 3 | Send both intranet and Internet history. |
<!-- ConfigureTelemetryForMicrosoft365Analytics-AllowedValues-End -->

<!-- ConfigureTelemetryForMicrosoft365Analytics-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureTelemetryForMicrosoft365Analytics |
| Friendly Name | Configure collection of browsing data for Desktop Analytics |
| Element Name | Configure telemetry collection. |
| Location | Computer and User Configuration |
| Path | WindowsComponents > Data Collection and Preview Builds |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\DataCollection |
| ADMX File Name | MicrosoftEdge.admx |
<!-- ConfigureTelemetryForMicrosoft365Analytics-GpMapping-End -->

<!-- ConfigureTelemetryForMicrosoft365Analytics-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureTelemetryForMicrosoft365Analytics-Examples-End -->

<!-- ConfigureTelemetryForMicrosoft365Analytics-End -->

<!-- DisableLockdownOfStartPages-Begin -->
## DisableLockdownOfStartPages

<!-- DisableLockdownOfStartPages-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DisableLockdownOfStartPages-Applicability-End -->

<!-- DisableLockdownOfStartPages-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/DisableLockdownOfStartPages
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/DisableLockdownOfStartPages
```
<!-- DisableLockdownOfStartPages-OmaUri-End -->

<!-- DisableLockdownOfStartPages-Description-Begin -->
<!-- Description-Source-ADMX -->
You can configure Microsoft Edge to disable the lockdown of Start pages allowing users to change or customize their start pages. To do this, you must also enable the Configure Start Pages or Configure Open Microsoft With policy. When enabled, all configured start pages are editable. Any Start page configured using the Configure Start pages policy isn't locked down allowing users to edit their Start pages.

If disabled or not configured, the Start pages configured in the Configure Start Pages policy can't be changed and remain locked down.

Supported devices: Domain-joined or MDM-enrolled.

Related policy:

- Configure Start Pages
- Configure Open Microsoft Edge With.
<!-- DisableLockdownOfStartPages-Description-End -->

<!-- DisableLockdownOfStartPages-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This policy has no effect when the Browser/HomePages policy isn't configured. 

> [!IMPORTANT]
> This setting can be used only with domain-joined or MDM-enrolled devices. For more information, see the [Microsoft browser extension policy](/legal/microsoft-edge/microsoft-browser-extension-policy).
<!-- DisableLockdownOfStartPages-Editable-End -->

<!-- DisableLockdownOfStartPages-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableLockdownOfStartPages-DFProperties-End -->

<!-- DisableLockdownOfStartPages-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Lock down Start pages configured in either the ConfigureOpenEdgeWith policy and HomePages policy. |
| 1 | Unlocked. Users can make changes to all configured start pages. |
<!-- DisableLockdownOfStartPages-AllowedValues-End -->

<!-- DisableLockdownOfStartPages-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableLockdownOfStartPages |
| Friendly Name | Disable lockdown of Start pages |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Internet Settings |
| ADMX File Name | MicrosoftEdge.admx |
<!-- DisableLockdownOfStartPages-GpMapping-End -->

<!-- DisableLockdownOfStartPages-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableLockdownOfStartPages-Examples-End -->

<!-- DisableLockdownOfStartPages-End -->

<!-- EnableExtendedBooksTelemetry-Begin -->
## EnableExtendedBooksTelemetry

<!-- EnableExtendedBooksTelemetry-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- EnableExtendedBooksTelemetry-Applicability-End -->

<!-- EnableExtendedBooksTelemetry-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/EnableExtendedBooksTelemetry
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/EnableExtendedBooksTelemetry
```
<!-- EnableExtendedBooksTelemetry-OmaUri-End -->

<!-- EnableExtendedBooksTelemetry-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you decide how much data to send to Microsoft about the book you're reading from the Books tab in Microsoft Edge.

- If you enable this setting, Microsoft Edge sends additional telemetry data, on top of the basic telemetry data, from the Books tab.

- If you disable or don't configure this setting, Microsoft Edge only sends basic telemetry data, depending on your device configuration.
<!-- EnableExtendedBooksTelemetry-Description-End -->

<!-- EnableExtendedBooksTelemetry-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableExtendedBooksTelemetry-Editable-End -->

<!-- EnableExtendedBooksTelemetry-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- EnableExtendedBooksTelemetry-DFProperties-End -->

<!-- EnableExtendedBooksTelemetry-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Gather and send only basic diagnostic data, depending on the device configuration. |
| 1 | Gather all diagnostic data. |
<!-- EnableExtendedBooksTelemetry-AllowedValues-End -->

<!-- EnableExtendedBooksTelemetry-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | EnableExtendedBooksTelemetry |
| Friendly Name | Allow extended telemetry for the Books tab |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\BooksLibrary |
| Registry Value Name | EnableExtendedBooksTelemetry |
| ADMX File Name | MicrosoftEdge.admx |
<!-- EnableExtendedBooksTelemetry-GpMapping-End -->

<!-- EnableExtendedBooksTelemetry-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableExtendedBooksTelemetry-Examples-End -->

<!-- EnableExtendedBooksTelemetry-End -->

<!-- EnterpriseModeSiteList-Begin -->
## EnterpriseModeSiteList

<!-- EnterpriseModeSiteList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- EnterpriseModeSiteList-Applicability-End -->

<!-- EnterpriseModeSiteList-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/EnterpriseModeSiteList
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/EnterpriseModeSiteList
```
<!-- EnterpriseModeSiteList-OmaUri-End -->

<!-- EnterpriseModeSiteList-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you configure whether to use Enterprise Mode and the Enterprise Mode Site List to address common compatibility problems with legacy apps.

- If you enable this setting, Microsoft Edge looks for the Enterprise Mode Site List XML file. This file includes the sites and domains that need to be viewed using Internet Explorer 11 and Enterprise Mode.

- If you disable or don't configure this setting, Microsoft Edge won't use the Enterprise Mode Site List XML file. In this case, employees might experience compatibility problems while using legacy apps.
<!-- EnterpriseModeSiteList-Description-End -->

<!-- EnterpriseModeSiteList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnterpriseModeSiteList-Editable-End -->

<!-- EnterpriseModeSiteList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnterpriseModeSiteList-DFProperties-End -->

<!-- EnterpriseModeSiteList-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | EnterpriseModeSiteList |
| Friendly Name | Configure the Enterprise Mode Site List |
| Element Name | Type the location (URL) of your Enterprise Mode IE website list. |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Main\EnterpriseMode |
| ADMX File Name | MicrosoftEdge.admx |
<!-- EnterpriseModeSiteList-GpMapping-End -->

<!-- EnterpriseModeSiteList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnterpriseModeSiteList-Examples-End -->

<!-- EnterpriseModeSiteList-End -->

<!-- EnterpriseSiteListServiceUrl-Begin -->
## EnterpriseSiteListServiceUrl

<!-- EnterpriseSiteListServiceUrl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- EnterpriseSiteListServiceUrl-Applicability-End -->

<!-- EnterpriseSiteListServiceUrl-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/EnterpriseSiteListServiceUrl
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/EnterpriseSiteListServiceUrl
```
<!-- EnterpriseSiteListServiceUrl-OmaUri-End -->

<!-- EnterpriseSiteListServiceUrl-Description-Begin -->
<!-- Description-Source-DDF -->
Important. Discontinued in Windows 10, version 1511. Use the Browser/EnterpriseModeSiteList policy instead.
<!-- EnterpriseSiteListServiceUrl-Description-End -->

<!-- EnterpriseSiteListServiceUrl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnterpriseSiteListServiceUrl-Editable-End -->

<!-- EnterpriseSiteListServiceUrl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnterpriseSiteListServiceUrl-DFProperties-End -->

<!-- EnterpriseSiteListServiceUrl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnterpriseSiteListServiceUrl-Examples-End -->

<!-- EnterpriseSiteListServiceUrl-End -->

<!-- FirstRunURL-Begin -->
## FirstRunURL

<!-- FirstRunURL-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ❌ Pro <br> ❌ Enterprise <br> ❌ Education <br> ❌ Windows SE <br> ❌ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- FirstRunURL-Applicability-End -->

<!-- FirstRunURL-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/FirstRunURL
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/FirstRunURL
```
<!-- FirstRunURL-OmaUri-End -->

<!-- FirstRunURL-Description-Begin -->
<!-- Description-Source-DDF -->
Configure first run URL.
<!-- FirstRunURL-Description-End -->

<!-- FirstRunURL-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- FirstRunURL-Editable-End -->

<!-- FirstRunURL-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Dependency [Browser_FirstRunURL_DependencyGroup] | Dependency Type: `DependsOn` <br> Dependency URI: `Device/Vendor/MSFT/Policy/Config/Browser/PreventFirstRunPage` <br> Dependency Allowed Value: `[0]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- FirstRunURL-DFProperties-End -->

<!-- FirstRunURL-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- FirstRunURL-Examples-End -->

<!-- FirstRunURL-End -->

<!-- HomePages-Begin -->
## HomePages

<!-- HomePages-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- HomePages-Applicability-End -->

<!-- HomePages-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/HomePages
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/HomePages
```
<!-- HomePages-OmaUri-End -->

<!-- HomePages-Description-Begin -->
<!-- Description-Source-ADMX -->
When you enable the Configure Open Microsoft Edge With policy, you can configure one or more Start pages. When you enable this policy, users aren't allowed to make changes to their Start pages.

If enabled, you must include URLs to the pages, separating multiple pages using angle brackets in the following format:

`<support.contoso.com>` `<support.microsoft.com>`

If disabled or not configured, the webpages specified in App settings loads as the default Start pages.

Version 1703 or later:

If you don't want to send traffic to Microsoft, enable this policy and use the `<about:blank>` value, which honors domain- and non-domain-joined devices, when it's the only configured URL.

Version 1809:

If enabled, and you select either Start page, New Tab page, or previous page in the Configure Open Microsoft Edge With policy, Microsoft Edge ignores the Configure Start Pages policy. If not configured or you set the Configure Open Microsoft Edge With policy to a specific page or pages, Microsoft Edge uses the Configure Start Pages policy.

Supported devices: Domain-joined or MDM-enrolled.

Related policy:

- Configure Open Microsoft Edge With
- Disable Lockdown of Start Pages.
<!-- HomePages-Description-End -->

<!-- HomePages-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HomePages-Editable-End -->

<!-- HomePages-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HomePages-DFProperties-End -->

<!-- HomePages-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | HomePages |
| Friendly Name | Configure Start pages |
| Element Name | Use this format: `<support.contoso.com>` `<https://support.microsoft.com/>` |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Internet Settings |
| ADMX File Name | MicrosoftEdge.admx |
<!-- HomePages-GpMapping-End -->

<!-- HomePages-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HomePages-Examples-End -->

<!-- HomePages-End -->

<!-- LockdownFavorites-Begin -->
## LockdownFavorites

<!-- LockdownFavorites-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- LockdownFavorites-Applicability-End -->

<!-- LockdownFavorites-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/LockdownFavorites
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/LockdownFavorites
```
<!-- LockdownFavorites-OmaUri-End -->

<!-- LockdownFavorites-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you decide whether employees can add, import, sort, or edit the Favorites list on Microsoft Edge.

- If you enable this setting, employees won't be able to add, import, or change anything in the Favorites list. Also as part of this, Save a Favorite, Import settings, and the context menu items (such as, Create a new folder) are all turned off.

Important.

Don't enable both this setting and the Keep favorites in sync between Internet Explorer and Microsoft Edge setting. Enabling both settings stops employees from syncing their favorites between Internet Explorer and Microsoft Edge.

- If you disable or don't configure this setting (default), employees can add, import and make changes to the Favorites list.
<!-- LockdownFavorites-Description-End -->

<!-- LockdownFavorites-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockdownFavorites-Editable-End -->

<!-- LockdownFavorites-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LockdownFavorites-DFProperties-End -->

<!-- LockdownFavorites-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allowed/not locked down. Users can add, import, and make changes to the favorites. |
| 1 | Prevented/locked down. |
<!-- LockdownFavorites-AllowedValues-End -->

<!-- LockdownFavorites-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LockdownFavorites |
| Friendly Name | Prevent changes to Favorites on Microsoft Edge |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Favorites |
| Registry Value Name | LockdownFavorites |
| ADMX File Name | MicrosoftEdge.admx |
<!-- LockdownFavorites-GpMapping-End -->

<!-- LockdownFavorites-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockdownFavorites-Examples-End -->

<!-- LockdownFavorites-End -->

<!-- PreventAccessToAboutFlagsInMicrosoftEdge-Begin -->
## PreventAccessToAboutFlagsInMicrosoftEdge

<!-- PreventAccessToAboutFlagsInMicrosoftEdge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- PreventAccessToAboutFlagsInMicrosoftEdge-Applicability-End -->

<!-- PreventAccessToAboutFlagsInMicrosoftEdge-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/PreventAccessToAboutFlagsInMicrosoftEdge
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/PreventAccessToAboutFlagsInMicrosoftEdge
```
<!-- PreventAccessToAboutFlagsInMicrosoftEdge-OmaUri-End -->

<!-- PreventAccessToAboutFlagsInMicrosoftEdge-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you decide whether employees can access the about:flags page, which is used to change developer settings and to enable experimental features.

- If you enable this policy setting, employees can't access the about:flags page.

- If you disable or don't configure this setting, employees can access the about:flags page.
<!-- PreventAccessToAboutFlagsInMicrosoftEdge-Description-End -->

<!-- PreventAccessToAboutFlagsInMicrosoftEdge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventAccessToAboutFlagsInMicrosoftEdge-Editable-End -->

<!-- PreventAccessToAboutFlagsInMicrosoftEdge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- PreventAccessToAboutFlagsInMicrosoftEdge-DFProperties-End -->

<!-- PreventAccessToAboutFlagsInMicrosoftEdge-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allowed. |
| 1 | Prevents users from accessing the about:flags page. |
<!-- PreventAccessToAboutFlagsInMicrosoftEdge-AllowedValues-End -->

<!-- PreventAccessToAboutFlagsInMicrosoftEdge-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | PreventAccessToAboutFlagsInMicrosoftEdge |
| Friendly Name | Prevent access to the about:flags page in Microsoft Edge |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Main |
| Registry Value Name | PreventAccessToAboutFlagsInMicrosoftEdge |
| ADMX File Name | MicrosoftEdge.admx |
<!-- PreventAccessToAboutFlagsInMicrosoftEdge-GpMapping-End -->

<!-- PreventAccessToAboutFlagsInMicrosoftEdge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventAccessToAboutFlagsInMicrosoftEdge-Examples-End -->

<!-- PreventAccessToAboutFlagsInMicrosoftEdge-End -->

<!-- PreventCertErrorOverrides-Begin -->
## PreventCertErrorOverrides

<!-- PreventCertErrorOverrides-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- PreventCertErrorOverrides-Applicability-End -->

<!-- PreventCertErrorOverrides-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/PreventCertErrorOverrides
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/PreventCertErrorOverrides
```
<!-- PreventCertErrorOverrides-OmaUri-End -->

<!-- PreventCertErrorOverrides-Description-Begin -->
<!-- Description-Source-ADMX -->
Web security certificates are used to ensure a site your users go to is legitimate, and in some circumstances encrypts the data. With this policy, you can specify whether to prevent users from bypassing the security warning to sites that have SSL errors.

If enabled, overriding certificate errors aren't allowed.

If disabled or not configured, overriding certificate errors are allowed.
<!-- PreventCertErrorOverrides-Description-End -->

<!-- PreventCertErrorOverrides-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventCertErrorOverrides-Editable-End -->

<!-- PreventCertErrorOverrides-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- PreventCertErrorOverrides-DFProperties-End -->

<!-- PreventCertErrorOverrides-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allowed/turned on. Override the security warning to sites that have SSL errors. |
| 1 | Prevented/turned on. |
<!-- PreventCertErrorOverrides-AllowedValues-End -->

<!-- PreventCertErrorOverrides-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | PreventCertErrorOverrides |
| Friendly Name | Prevent certificate error overrides |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Internet Settings |
| Registry Value Name | PreventCertErrorOverrides |
| ADMX File Name | MicrosoftEdge.admx |
<!-- PreventCertErrorOverrides-GpMapping-End -->

<!-- PreventCertErrorOverrides-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventCertErrorOverrides-Examples-End -->

<!-- PreventCertErrorOverrides-End -->

<!-- PreventFirstRunPage-Begin -->
## PreventFirstRunPage

<!-- PreventFirstRunPage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- PreventFirstRunPage-Applicability-End -->

<!-- PreventFirstRunPage-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/PreventFirstRunPage
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/PreventFirstRunPage
```
<!-- PreventFirstRunPage-OmaUri-End -->

<!-- PreventFirstRunPage-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you decide whether employees see Microsoft's First Run webpage when opening Microsoft Edge for the first time.

- If you enable this setting, employees won't see the First Run page when opening Microsoft Edge for the first time.

- If you disable or don't configure this setting, employees will see the First Run page when opening Microsoft Edge for the first time.
<!-- PreventFirstRunPage-Description-End -->

<!-- PreventFirstRunPage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventFirstRunPage-Editable-End -->

<!-- PreventFirstRunPage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- PreventFirstRunPage-DFProperties-End -->

<!-- PreventFirstRunPage-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allowed. Load the First Run webpage. |
| 1 | Prevented/Not allowed. |
<!-- PreventFirstRunPage-AllowedValues-End -->

<!-- PreventFirstRunPage-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | PreventFirstRunPage |
| Friendly Name | Prevent the First Run webpage from opening on Microsoft Edge |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Main |
| Registry Value Name | PreventFirstRunPage |
| ADMX File Name | MicrosoftEdge.admx |
<!-- PreventFirstRunPage-GpMapping-End -->

<!-- PreventFirstRunPage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventFirstRunPage-Examples-End -->

<!-- PreventFirstRunPage-End -->

<!-- PreventLiveTileDataCollection-Begin -->
## PreventLiveTileDataCollection

<!-- PreventLiveTileDataCollection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- PreventLiveTileDataCollection-Applicability-End -->

<!-- PreventLiveTileDataCollection-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/PreventLiveTileDataCollection
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/PreventLiveTileDataCollection
```
<!-- PreventLiveTileDataCollection-OmaUri-End -->

<!-- PreventLiveTileDataCollection-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy lets you decide whether Microsoft Edge can gather Live Tile metadata from the ieonline.microsoft.com service to provide a better experience while pinning a Live Tile to the Start menu.

- If you enable this setting, Microsoft Edge won't gather the Live Tile metadata, providing a minimal experience when a user pins a Live Tile to the Start menu.

- If you disable or don't configure this setting, Microsoft Edge gathers the Live Tile metadata, providing a fuller and more complete experience when a user pins a Live Tile to the Start menu.
<!-- PreventLiveTileDataCollection-Description-End -->

<!-- PreventLiveTileDataCollection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventLiveTileDataCollection-Editable-End -->

<!-- PreventLiveTileDataCollection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- PreventLiveTileDataCollection-DFProperties-End -->

<!-- PreventLiveTileDataCollection-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Collect and send Live Tile metadata. |
| 1 | No data collected. |
<!-- PreventLiveTileDataCollection-AllowedValues-End -->

<!-- PreventLiveTileDataCollection-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | PreventLiveTileDataCollection |
| Friendly Name | Prevent Microsoft Edge from gathering Live Tile information when pinning a site to Start |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Main |
| Registry Value Name | PreventLiveTileDataCollection |
| ADMX File Name | MicrosoftEdge.admx |
<!-- PreventLiveTileDataCollection-GpMapping-End -->

<!-- PreventLiveTileDataCollection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventLiveTileDataCollection-Examples-End -->

<!-- PreventLiveTileDataCollection-End -->

<!-- PreventSmartScreenPromptOverride-Begin -->
## PreventSmartScreenPromptOverride

<!-- PreventSmartScreenPromptOverride-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- PreventSmartScreenPromptOverride-Applicability-End -->

<!-- PreventSmartScreenPromptOverride-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/PreventSmartScreenPromptOverride
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/PreventSmartScreenPromptOverride
```
<!-- PreventSmartScreenPromptOverride-OmaUri-End -->

<!-- PreventSmartScreenPromptOverride-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you decide whether employees can override the Windows Defender SmartScreen warnings about potentially malicious websites.

- If you enable this setting, employees can't ignore Windows Defender SmartScreen warnings and they're blocked from continuing to the site.

- If you disable or don't configure this setting, employees can ignore Windows Defender SmartScreen warnings and continue to the site.
<!-- PreventSmartScreenPromptOverride-Description-End -->

<!-- PreventSmartScreenPromptOverride-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventSmartScreenPromptOverride-Editable-End -->

<!-- PreventSmartScreenPromptOverride-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- PreventSmartScreenPromptOverride-DFProperties-End -->

<!-- PreventSmartScreenPromptOverride-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allowed/turned off. Users can ignore the warning and continue to the site. |
| 1 | Prevented/turned on. |
<!-- PreventSmartScreenPromptOverride-AllowedValues-End -->

<!-- PreventSmartScreenPromptOverride-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | PreventSmartScreenPromptOverride |
| Friendly Name | Prevent bypassing Windows Defender SmartScreen prompts for sites |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\PhishingFilter |
| Registry Value Name | PreventOverride |
| ADMX File Name | MicrosoftEdge.admx |
<!-- PreventSmartScreenPromptOverride-GpMapping-End -->

<!-- PreventSmartScreenPromptOverride-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventSmartScreenPromptOverride-Examples-End -->

<!-- PreventSmartScreenPromptOverride-End -->

<!-- PreventSmartScreenPromptOverrideForFiles-Begin -->
## PreventSmartScreenPromptOverrideForFiles

<!-- PreventSmartScreenPromptOverrideForFiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- PreventSmartScreenPromptOverrideForFiles-Applicability-End -->

<!-- PreventSmartScreenPromptOverrideForFiles-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/PreventSmartScreenPromptOverrideForFiles
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/PreventSmartScreenPromptOverrideForFiles
```
<!-- PreventSmartScreenPromptOverrideForFiles-OmaUri-End -->

<!-- PreventSmartScreenPromptOverrideForFiles-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you decide whether employees can override the Windows Defender SmartScreen warnings about downloading unverified files.

- If you enable this setting, employees can't ignore Windows Defender SmartScreen warnings and they're blocked from downloading the unverified files.

- If you disable or don't configure this setting, employees can ignore Windows Defender SmartScreen warnings and continue the download process.
<!-- PreventSmartScreenPromptOverrideForFiles-Description-End -->

<!-- PreventSmartScreenPromptOverrideForFiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventSmartScreenPromptOverrideForFiles-Editable-End -->

<!-- PreventSmartScreenPromptOverrideForFiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- PreventSmartScreenPromptOverrideForFiles-DFProperties-End -->

<!-- PreventSmartScreenPromptOverrideForFiles-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allowed/turned off. Users can ignore the warning and continue to download the unverified file(s). |
| 1 | Prevented/turned on. |
<!-- PreventSmartScreenPromptOverrideForFiles-AllowedValues-End -->

<!-- PreventSmartScreenPromptOverrideForFiles-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | PreventSmartScreenPromptOverrideForFiles |
| Friendly Name | Prevent bypassing Windows Defender SmartScreen prompts for files |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\PhishingFilter |
| Registry Value Name | PreventOverrideAppRepUnknown |
| ADMX File Name | MicrosoftEdge.admx |
<!-- PreventSmartScreenPromptOverrideForFiles-GpMapping-End -->

<!-- PreventSmartScreenPromptOverrideForFiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventSmartScreenPromptOverrideForFiles-Examples-End -->

<!-- PreventSmartScreenPromptOverrideForFiles-End -->

<!-- PreventTurningOffRequiredExtensions-Begin -->
## PreventTurningOffRequiredExtensions

<!-- PreventTurningOffRequiredExtensions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- PreventTurningOffRequiredExtensions-Applicability-End -->

<!-- PreventTurningOffRequiredExtensions-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/PreventTurningOffRequiredExtensions
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/PreventTurningOffRequiredExtensions
```
<!-- PreventTurningOffRequiredExtensions-OmaUri-End -->

<!-- PreventTurningOffRequiredExtensions-Description-Begin -->
<!-- Description-Source-Manual-Forced -->
<!-- PreventTurningOffRequiredExtensions-Description-End -->

<!-- PreventTurningOffRequiredExtensions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
You can define a list of extensions in Microsoft Edge that users cannot turn off. You must deploy extensions through any available enterprise deployment channel, such as Microsoft Intune. When you enable this policy, users cannot uninstall extensions from their computer, but they can configure options for extensions defined in this policy, such as allow for InPrivate browsing. Any additional permissions requested by future updates of the extension gets granted automatically.

- When you enable this policy, you must provide a semi-colon delimited list of extension package family names (PFNs). For example, adding `Microsoft.OneNoteWebClipper_8wekyb3d8bbwe;Microsoft.OfficeOnline_8wekyb3d8bbwe` prevents a user from turning off the OneNote Web Clipper and Office Online extension. When enabled, removing extensions from the list does not uninstall the extension from the user's computer automatically. To uninstall the extension, use any available enterprise deployment channel. If you enable the Allow Developer Tools policy, then this policy does not prevent users from debugging and altering the logic on an extension.
- If disabled or not configured, extensions defined as part of this policy get ignored.
- Default setting: Disabled or not configured

Related Documents:

- [Find a package family name (PFN) for per-app VPN](/mem/configmgr/protect/deploy-use/find-a-pfn-for-per-app-vpn)
- [Assign apps to groups with Microsoft Intune](/mem/intune/apps/apps-deploy)
- [Add a Windows line-of-business app to Microsoft Intune](/mem/intune/apps/lob-apps-windows)
<!-- PreventTurningOffRequiredExtensions-Editable-End -->

<!-- PreventTurningOffRequiredExtensions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- PreventTurningOffRequiredExtensions-DFProperties-End -->

<!-- PreventTurningOffRequiredExtensions-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | PreventTurningOffRequiredExtensions |
| Friendly Name | Prevent turning off required extensions |
| Element Name | In the space below, enter extension package family names (PFNs) separated by semi-colons. |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Extensions |
| ADMX File Name | MicrosoftEdge.admx |
<!-- PreventTurningOffRequiredExtensions-GpMapping-End -->

<!-- PreventTurningOffRequiredExtensions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventTurningOffRequiredExtensions-Examples-End -->

<!-- PreventTurningOffRequiredExtensions-End -->

<!-- PreventUsingLocalHostIPAddressForWebRTC-Begin -->
## PreventUsingLocalHostIPAddressForWebRTC

<!-- PreventUsingLocalHostIPAddressForWebRTC-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- PreventUsingLocalHostIPAddressForWebRTC-Applicability-End -->

<!-- PreventUsingLocalHostIPAddressForWebRTC-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/PreventUsingLocalHostIPAddressForWebRTC
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/PreventUsingLocalHostIPAddressForWebRTC
```
<!-- PreventUsingLocalHostIPAddressForWebRTC-OmaUri-End -->

<!-- PreventUsingLocalHostIPAddressForWebRTC-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you decide whether an employee's LocalHost IP address shows while making calls using the WebRTC protocol.

- If you enable this setting, LocalHost IP addresses are hidden while making calls using the WebRTC protocol.

- If you disable or don't configure this setting, LocalHost IP addresses are shown while making calls using the WebRTC protocol.
<!-- PreventUsingLocalHostIPAddressForWebRTC-Description-End -->

<!-- PreventUsingLocalHostIPAddressForWebRTC-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventUsingLocalHostIPAddressForWebRTC-Editable-End -->

<!-- PreventUsingLocalHostIPAddressForWebRTC-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- PreventUsingLocalHostIPAddressForWebRTC-DFProperties-End -->

<!-- PreventUsingLocalHostIPAddressForWebRTC-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allowed. Show localhost IP addresses. |
| 1 | Prevented/Not allowed. |
<!-- PreventUsingLocalHostIPAddressForWebRTC-AllowedValues-End -->

<!-- PreventUsingLocalHostIPAddressForWebRTC-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | HideLocalHostIPAddress |
| Friendly Name | Prevent using Localhost IP address for WebRTC |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Main |
| Registry Value Name | HideLocalHostIP |
| ADMX File Name | MicrosoftEdge.admx |
<!-- PreventUsingLocalHostIPAddressForWebRTC-GpMapping-End -->

<!-- PreventUsingLocalHostIPAddressForWebRTC-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventUsingLocalHostIPAddressForWebRTC-Examples-End -->

<!-- PreventUsingLocalHostIPAddressForWebRTC-End -->

<!-- ProvisionFavorites-Begin -->
## ProvisionFavorites

<!-- ProvisionFavorites-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- ProvisionFavorites-Applicability-End -->

<!-- ProvisionFavorites-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/ProvisionFavorites
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/ProvisionFavorites
```
<!-- ProvisionFavorites-OmaUri-End -->

<!-- ProvisionFavorites-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure a default set of favorites, which will appear for employees. Employees can't modify, sort, move, export or delete these provisioned favorites.

- If you enable this setting, you can set favorite URL's and favorite folders to appear on top of users' favorites list (either in the Hub or Favorites Bar). The user favorites will appear after these provisioned favorites.

Important.

Don't enable both this setting and the Keep favorites in sync between Internet Explorer and Microsoft Edge setting. Enabling both settings stops employees from syncing their favorites between Internet Explorer and Microsoft Edge.

- If you disable or don't configure this setting, employees will see the favorites they set in the Hub and Favorites Bar.
<!-- ProvisionFavorites-Description-End -->

<!-- ProvisionFavorites-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ProvisionFavorites-Editable-End -->

<!-- ProvisionFavorites-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ProvisionFavorites-DFProperties-End -->

<!-- ProvisionFavorites-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ConfiguredFavorites |
| Friendly Name | Provision Favorites |
| Element Name | ConfiguredFavoritesPrompt |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Favorites |
| ADMX File Name | MicrosoftEdge.admx |
<!-- ProvisionFavorites-GpMapping-End -->

<!-- ProvisionFavorites-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:
Define a default list of favorites in Microsoft Edge. In this case, the Save a Favorite, Import settings, and context menu options (such as Create a new folder) are turned off.

To define a default list of favorites:
1. In the upper-right corner of Microsoft Edge, click the ellipses (**...**) and select **Settings**.
2. Click **Import from another browser**, click **Export to file** and save the file.
3. In the **Options** section of the Group Policy Editor, provide the location that points the file with the list of favorites to provision. <p><p>Specify the URL as:<ul><li>HTTP location: "SiteList"=`<http://localhost:8080/URLs.html>`</li><li>Local network: "SiteList"="\network\shares\URLs.html"</li><li>Local file: "SiteList"=file:///c:/Users/Documents/URLs.html</li></ul>
<!-- ProvisionFavorites-Examples-End -->

<!-- ProvisionFavorites-End -->

<!-- SendIntranetTraffictoInternetExplorer-Begin -->
## SendIntranetTraffictoInternetExplorer

<!-- SendIntranetTraffictoInternetExplorer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- SendIntranetTraffictoInternetExplorer-Applicability-End -->

<!-- SendIntranetTraffictoInternetExplorer-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/SendIntranetTraffictoInternetExplorer
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/SendIntranetTraffictoInternetExplorer
```
<!-- SendIntranetTraffictoInternetExplorer-OmaUri-End -->

<!-- SendIntranetTraffictoInternetExplorer-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you decide whether your intranet sites should all open using Internet Explorer 11. This setting should only be used if there are known compatibility problems with Microsoft Edge.

- If you enable this setting, all intranet sites are automatically opened using Internet Explorer 11.

- If you disable or don't configure this setting, all intranet sites are automatically opened using Microsoft Edge.
<!-- SendIntranetTraffictoInternetExplorer-Description-End -->

<!-- SendIntranetTraffictoInternetExplorer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SendIntranetTraffictoInternetExplorer-Editable-End -->

<!-- SendIntranetTraffictoInternetExplorer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- SendIntranetTraffictoInternetExplorer-DFProperties-End -->

<!-- SendIntranetTraffictoInternetExplorer-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | All sites, including intranet sites, open in Microsoft Edge automatically. |
| 1 | Only intranet sites open in Internet Explorer 11 automatically. |
<!-- SendIntranetTraffictoInternetExplorer-AllowedValues-End -->

<!-- SendIntranetTraffictoInternetExplorer-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | SendIntranetTraffictoInternetExplorer |
| Friendly Name | Send all intranet sites to Internet Explorer 11 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Main |
| Registry Value Name | SendIntranetTraffictoInternetExplorer |
| ADMX File Name | MicrosoftEdge.admx |
<!-- SendIntranetTraffictoInternetExplorer-GpMapping-End -->

<!-- SendIntranetTraffictoInternetExplorer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SendIntranetTraffictoInternetExplorer-Examples-End -->

<!-- SendIntranetTraffictoInternetExplorer-End -->

<!-- SetDefaultSearchEngine-Begin -->
## SetDefaultSearchEngine

<!-- SetDefaultSearchEngine-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- SetDefaultSearchEngine-Applicability-End -->

<!-- SetDefaultSearchEngine-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/SetDefaultSearchEngine
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/SetDefaultSearchEngine
```
<!-- SetDefaultSearchEngine-OmaUri-End -->

<!-- SetDefaultSearchEngine-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you configure the default search engine for your employees. Your employees can change the default search engine at any time.

Important.

This setting can only be used with domain-joined or MDM-enrolled devices. For more info, see the Microsoft browser extension policy (aka.ms/browserpolicy).

- If you enable this setting, you can choose a default search engine for your employees.

- If this setting is enabled, you must also add the default engine to the "Set default search engine" setting, by adding a link to your OpenSearch XML file, including at least the short name and https: URL of the search engine. For more info about creating the OpenSearch XML file, see the Understanding OpenSearch Standards (https://msdn.microsoft.com/library/dd163546.aspx) topic. Use this format to specify the link you wish to add: `<https://fabrikam.com/opensearch.xml>`

Note.

If you'd like your employees to use the default Microsoft Edge settings for each market, you can set the string to EDGEDEFAULT. If you'd like your employees to use Microsoft Bing as the default search engine, you can set the string to EDGEBING.

Employees can change the default search engine at any time, unless you disable the "Allow search engine customization" setting, which restricts any changes.

- If you disable this setting, the policy-set default search engine is removed. If this is also the current in-use default, the engine changes to the Microsoft Edge specified engine for the market.

- If you don't configure this setting, the default search engine is set to the one specified in App settings.
<!-- SetDefaultSearchEngine-Description-End -->

<!-- SetDefaultSearchEngine-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SetDefaultSearchEngine-Editable-End -->

<!-- SetDefaultSearchEngine-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SetDefaultSearchEngine-DFProperties-End -->

<!-- SetDefaultSearchEngine-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | SetDefaultSearchEngine |
| Friendly Name | Set default search engine |
| Element Name | Use this format to specify the link you wish to add: `<https://fabrikam.com/opensearch.xml>` |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\OpenSearch |
| ADMX File Name | MicrosoftEdge.admx |
<!-- SetDefaultSearchEngine-GpMapping-End -->

<!-- SetDefaultSearchEngine-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetDefaultSearchEngine-Examples-End -->

<!-- SetDefaultSearchEngine-End -->

<!-- SetHomeButtonURL-Begin -->
## SetHomeButtonURL

<!-- SetHomeButtonURL-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- SetHomeButtonURL-Applicability-End -->

<!-- SetHomeButtonURL-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/SetHomeButtonURL
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/SetHomeButtonURL
```
<!-- SetHomeButtonURL-OmaUri-End -->

<!-- SetHomeButtonURL-Description-Begin -->
<!-- Description-Source-ADMX -->
The home button can be configured to load a custom URL when your user clicks the home button.

If enabled, or configured, and the Configure Home Button policy is enabled, and the Show home button & set a specific page is selected, a custom URL loads when your user clicks the home button.

Default setting: Blank or not configured.

Related policy: Configure Home Button.
<!-- SetHomeButtonURL-Description-End -->

<!-- SetHomeButtonURL-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SetHomeButtonURL-Editable-End -->

<!-- SetHomeButtonURL-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SetHomeButtonURL-DFProperties-End -->

<!-- SetHomeButtonURL-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | SetHomeButtonURL |
| Friendly Name | Set Home Button URL |
| Element Name | Enter a URL in string format. For example: <https://www.bing.com> |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Internet Settings |
| ADMX File Name | MicrosoftEdge.admx |
<!-- SetHomeButtonURL-GpMapping-End -->

<!-- SetHomeButtonURL-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetHomeButtonURL-Examples-End -->

<!-- SetHomeButtonURL-End -->

<!-- SetNewTabPageURL-Begin -->
## SetNewTabPageURL

<!-- SetNewTabPageURL-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- SetNewTabPageURL-Applicability-End -->

<!-- SetNewTabPageURL-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/SetNewTabPageURL
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/SetNewTabPageURL
```
<!-- SetNewTabPageURL-OmaUri-End -->

<!-- SetNewTabPageURL-Description-Begin -->
<!-- Description-Source-ADMX -->
You can set the default New Tab page URL in Microsoft Edge. Enabling this policy prevents your users from changing the New tab page setting. When enabled and the Allow web content on New Tab page policy is disabled, Microsoft Edge ignores the URL specified in this policy and opens about:blank.

If enabled, you can set the default New Tab page URL.

If disabled or not configured, the default Microsoft Edge new tab page is used.

Default setting: Disabled or not configured.

Related policy: Allow web content on New Tab page.
<!-- SetNewTabPageURL-Description-End -->

<!-- SetNewTabPageURL-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SetNewTabPageURL-Editable-End -->

<!-- SetNewTabPageURL-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SetNewTabPageURL-DFProperties-End -->

<!-- SetNewTabPageURL-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | SetNewTabPageURL |
| Friendly Name | Set New Tab page URL |
| Element Name | Enter a URL in string format. For example: <https://www.bing.com> |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Internet Settings |
| ADMX File Name | MicrosoftEdge.admx |
<!-- SetNewTabPageURL-GpMapping-End -->

<!-- SetNewTabPageURL-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetNewTabPageURL-Examples-End -->

<!-- SetNewTabPageURL-End -->

<!-- ShowMessageWhenOpeningSitesInInternetExplorer-Begin -->
## ShowMessageWhenOpeningSitesInInternetExplorer

<!-- ShowMessageWhenOpeningSitesInInternetExplorer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- ShowMessageWhenOpeningSitesInInternetExplorer-Applicability-End -->

<!-- ShowMessageWhenOpeningSitesInInternetExplorer-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/ShowMessageWhenOpeningSitesInInternetExplorer
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/ShowMessageWhenOpeningSitesInInternetExplorer
```
<!-- ShowMessageWhenOpeningSitesInInternetExplorer-OmaUri-End -->

<!-- ShowMessageWhenOpeningSitesInInternetExplorer-Description-Begin -->
<!-- Description-Source-ADMX -->
You can configure Microsoft Edge to open a site automatically in Internet Explorer 11 and choose to display a notification before the site opens. If you want to display a notification, you must enable Configure the Enterprise Mode Site List or Send all intranets sites to Internet Explorer 11 or both.

If enabled, the notification appears on a new page. If you want users to continue in Microsoft Edge, select the Show Keep going in Microsoft Edge option from the drop-down list under Options.

If disabled or not configured, the default app behavior occurs and no additional page displays.

Default setting: Disabled or not configured.

Related policies:

-Configure the Enterprise Mode Site List
-Send all intranet sites to Internet Explorer 11.
<!-- ShowMessageWhenOpeningSitesInInternetExplorer-Description-End -->

<!-- ShowMessageWhenOpeningSitesInInternetExplorer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShowMessageWhenOpeningSitesInInternetExplorer-Editable-End -->

<!-- ShowMessageWhenOpeningSitesInInternetExplorer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ShowMessageWhenOpeningSitesInInternetExplorer-DFProperties-End -->

<!-- ShowMessageWhenOpeningSitesInInternetExplorer-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | No additional message displays. |
| 1 | Show an additional message stating that a site has opened in IE11. |
| 2 | Show an additional message with a "Keep going in Microsoft Edge" link. |
<!-- ShowMessageWhenOpeningSitesInInternetExplorer-AllowedValues-End -->

<!-- ShowMessageWhenOpeningSitesInInternetExplorer-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ShowMessageWhenOpeningSitesInInternetExplorer |
| Friendly Name | Show message when opening sites in Internet Explorer |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Main |
| Registry Value Name | ShowMessageWhenOpeningSitesInInternetExplorer |
| ADMX File Name | MicrosoftEdge.admx |
<!-- ShowMessageWhenOpeningSitesInInternetExplorer-GpMapping-End -->

<!-- ShowMessageWhenOpeningSitesInInternetExplorer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShowMessageWhenOpeningSitesInInternetExplorer-Examples-End -->

<!-- ShowMessageWhenOpeningSitesInInternetExplorer-End -->

<!-- SyncFavoritesBetweenIEAndMicrosoftEdge-Begin -->
## SyncFavoritesBetweenIEAndMicrosoftEdge

<!-- SyncFavoritesBetweenIEAndMicrosoftEdge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- SyncFavoritesBetweenIEAndMicrosoftEdge-Applicability-End -->

<!-- SyncFavoritesBetweenIEAndMicrosoftEdge-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/SyncFavoritesBetweenIEAndMicrosoftEdge
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/SyncFavoritesBetweenIEAndMicrosoftEdge
```
<!-- SyncFavoritesBetweenIEAndMicrosoftEdge-OmaUri-End -->

<!-- SyncFavoritesBetweenIEAndMicrosoftEdge-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting lets you decide whether people can sync their favorites between Internet Explorer and Microsoft Edge.

- If you enable this setting, employees can sync their favorites between Internet Explorer and Microsoft Edge.

- If you disable or don't configure this setting, employees can't sync their favorites between Internet Explorer and Microsoft Edge.
<!-- SyncFavoritesBetweenIEAndMicrosoftEdge-Description-End -->

<!-- SyncFavoritesBetweenIEAndMicrosoftEdge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SyncFavoritesBetweenIEAndMicrosoftEdge-Editable-End -->

<!-- SyncFavoritesBetweenIEAndMicrosoftEdge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- SyncFavoritesBetweenIEAndMicrosoftEdge-DFProperties-End -->

<!-- SyncFavoritesBetweenIEAndMicrosoftEdge-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Turned off/not syncing. |
| 1 | Turned on/syncing. |
<!-- SyncFavoritesBetweenIEAndMicrosoftEdge-AllowedValues-End -->

<!-- SyncFavoritesBetweenIEAndMicrosoftEdge-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | SyncFavoritesBetweenIEAndMicrosoftEdge |
| Friendly Name | Keep favorites in sync between Internet Explorer and Microsoft Edge |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Main |
| Registry Value Name | SyncFavoritesBetweenIEAndMicrosoftEdge |
| ADMX File Name | MicrosoftEdge.admx |
<!-- SyncFavoritesBetweenIEAndMicrosoftEdge-GpMapping-End -->

<!-- SyncFavoritesBetweenIEAndMicrosoftEdge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Verify**:
To verify that favorites are in synchronized between Internet Explorer and Microsoft Edge:

<ol>
<li>Open Internet Explorer and add some favorites.
<li>Open Microsoft Edge, then select <strong>Hub &gt; Favorites</strong>.
<li>Verify that the favorites added to Internet Explorer show up in the favorites list in Microsoft Edge.
</ol>
<!-- SyncFavoritesBetweenIEAndMicrosoftEdge-Examples-End -->

<!-- SyncFavoritesBetweenIEAndMicrosoftEdge-End -->

<!-- UnlockHomeButton-Begin -->
## UnlockHomeButton

<!-- UnlockHomeButton-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- UnlockHomeButton-Applicability-End -->

<!-- UnlockHomeButton-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/UnlockHomeButton
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/UnlockHomeButton
```
<!-- UnlockHomeButton-OmaUri-End -->

<!-- UnlockHomeButton-Description-Begin -->
<!-- Description-Source-ADMX -->
By default, when enabling Configure Home Button or Set Home Button URL, the home button is locked down to prevent your users from changing what page loads when clicking the home button. Use this policy to let users change the home button even when Configure Home Button or Set Home Button URL are enabled.

If enabled, the UI settings for the home button are enabled allowing your users to make changes, including hiding and showing the home button as well as configuring a custom URL.

If disabled or not configured, the UI settings for the home button are disabled preventing your users from making changes.

Default setting: Disabled or not configured.

Related policy:

-Configure Home Button
-Set Home Button URL.
<!-- UnlockHomeButton-Description-End -->

<!-- UnlockHomeButton-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UnlockHomeButton-Editable-End -->

<!-- UnlockHomeButton-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- UnlockHomeButton-DFProperties-End -->

<!-- UnlockHomeButton-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Lock down and prevent users from making changes to the settings. |
| 1 | Let users make changes. |
<!-- UnlockHomeButton-AllowedValues-End -->

<!-- UnlockHomeButton-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | UnlockHomeButton |
| Friendly Name | Unlock Home Button |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\Internet Settings |
| Registry Value Name | UnlockHomeButton |
| ADMX File Name | MicrosoftEdge.admx |
<!-- UnlockHomeButton-GpMapping-End -->

<!-- UnlockHomeButton-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UnlockHomeButton-Examples-End -->

<!-- UnlockHomeButton-End -->

<!-- UseSharedFolderForBooks-Begin -->
## UseSharedFolderForBooks

<!-- UseSharedFolderForBooks-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- UseSharedFolderForBooks-Applicability-End -->

<!-- UseSharedFolderForBooks-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Browser/UseSharedFolderForBooks
```

```Device
./Device/Vendor/MSFT/Policy/Config/Browser/UseSharedFolderForBooks
```
<!-- UseSharedFolderForBooks-OmaUri-End -->

<!-- UseSharedFolderForBooks-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you decide whether Microsoft Edge stores books from the Books tab to a default, shared folder for Windows.

- If you enable this setting, Microsoft Edge automatically downloads book files to a common, shared folder and prevents students and teachers from removing the book from the Books tab. For this to work properly, your students and teachers must be signed in using a school account.

- If you disable or don't configure this setting, Microsoft Edge downloads book files to a per-user folder for each student or teacher.
<!-- UseSharedFolderForBooks-Description-End -->

<!-- UseSharedFolderForBooks-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UseSharedFolderForBooks-Editable-End -->

<!-- UseSharedFolderForBooks-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- UseSharedFolderForBooks-DFProperties-End -->

<!-- UseSharedFolderForBooks-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Prevented/not allowed, but Microsoft Edge downloads book files to a per-user folder for each user. |
| 1 | Allowed. Microsoft Edge downloads book files to a shared folder. For this policy to work correctly, you must also enable the Allow a Windows app to share application data between users group policy. Also, the users must be signed in with a school or work account. |
<!-- UseSharedFolderForBooks-AllowedValues-End -->

<!-- UseSharedFolderForBooks-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | UseSharedFolderForBooks |
| Friendly Name | Allow a shared Books folder |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft Edge |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftEdge\BooksLibrary |
| Registry Value Name | UseSharedFolderForBooks |
| ADMX File Name | MicrosoftEdge.admx |
<!-- UseSharedFolderForBooks-GpMapping-End -->

<!-- UseSharedFolderForBooks-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UseSharedFolderForBooks-Examples-End -->

<!-- UseSharedFolderForBooks-End -->

<!-- Browser-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Browser-CspMoreInfo-End -->

<!-- Browser-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
