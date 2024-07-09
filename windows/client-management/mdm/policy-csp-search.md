---
title: Search Policy CSP
description: Learn more about the Search Area in Policy CSP.
ms.date: 07/08/2024
---

<!-- Auto-Generated CSP Document -->

<!-- Search-Begin -->
# Policy CSP - Search

[!INCLUDE [Windows Insider tip](includes/mdm-insider-csp-note.md)]

<!-- Search-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Search-Editable-End -->

<!-- AllowCloudSearch-Begin -->
## AllowCloudSearch

<!-- AllowCloudSearch-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- AllowCloudSearch-Applicability-End -->

<!-- AllowCloudSearch-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Search/AllowCloudSearch
```
<!-- AllowCloudSearch-OmaUri-End -->

<!-- AllowCloudSearch-Description-Begin -->
<!-- Description-Source-ADMX -->
Allow search and Cortana to search cloud sources like OneDrive and SharePoint.
<!-- AllowCloudSearch-Description-End -->

<!-- AllowCloudSearch-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowCloudSearch-Editable-End -->

<!-- AllowCloudSearch-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowCloudSearch-DFProperties-End -->

<!-- AllowCloudSearch-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowCloudSearch-AllowedValues-End -->

<!-- AllowCloudSearch-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowCloudSearch |
| Friendly Name | Allow Cloud Search |
| Element Name | Cloud Search Setting. |
| Location | Computer Configuration |
| Path | Windows Components > Search |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Search |
| ADMX File Name | Search.admx |
<!-- AllowCloudSearch-GpMapping-End -->

<!-- AllowCloudSearch-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowCloudSearch-Examples-End -->

<!-- AllowCloudSearch-End -->

<!-- AllowCortanaInAAD-Begin -->
## AllowCortanaInAAD

<!-- AllowCortanaInAAD-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- AllowCortanaInAAD-Applicability-End -->

<!-- AllowCortanaInAAD-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Search/AllowCortanaInAAD
```
<!-- AllowCortanaInAAD-OmaUri-End -->

<!-- AllowCortanaInAAD-Description-Begin -->
<!-- Description-Source-ADMX -->
Allow the Cortana opt-in page during windows setup out of the box experience.
<!-- AllowCortanaInAAD-Description-End -->

<!-- AllowCortanaInAAD-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowCortanaInAAD-Editable-End -->

<!-- AllowCortanaInAAD-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowCortanaInAAD-DFProperties-End -->

<!-- AllowCortanaInAAD-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not allowed. The Cortana consent page won't appear in Microsoft Entra ID OOBE during setup. |
| 1 | Allowed. The Cortana consent page will appear in Azure Microsoft Entra ID OOBE during setup. |
<!-- AllowCortanaInAAD-AllowedValues-End -->

<!-- AllowCortanaInAAD-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowCortanaInAAD |
| Friendly Name | Allow Cortana Page in OOBE on an AAD account |
| Location | Computer Configuration |
| Path | Windows Components > Search |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Search |
| Registry Value Name | AllowCortanaInAAD |
| ADMX File Name | Search.admx |
<!-- AllowCortanaInAAD-GpMapping-End -->

<!-- AllowCortanaInAAD-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowCortanaInAAD-Examples-End -->

<!-- AllowCortanaInAAD-End -->

<!-- AllowFindMyFiles-Begin -->
## AllowFindMyFiles

<!-- AllowFindMyFiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- AllowFindMyFiles-Applicability-End -->

<!-- AllowFindMyFiles-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Search/AllowFindMyFiles
```
<!-- AllowFindMyFiles-OmaUri-End -->

<!-- AllowFindMyFiles-Description-Begin -->
<!-- Description-Source-DDF -->
This feature allows you to disable find my files completely on the machine.
<!-- AllowFindMyFiles-Description-End -->

<!-- AllowFindMyFiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

This policy controls whether the user can configure search to *Find My Files* mode. This mode searches files in secondary hard drives and also outside of the user profile. Find My Files doesn't allow users to search files or locations to which they don't have access.
<!-- AllowFindMyFiles-Editable-End -->

<!-- AllowFindMyFiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowFindMyFiles-DFProperties-End -->

<!-- AllowFindMyFiles-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Find My Files feature can be toggled (still off by default), and the settings UI is present. |
| 0 | Find My Files feature is turned off completely, and the settings UI is disabled. |
<!-- AllowFindMyFiles-AllowedValues-End -->

<!-- AllowFindMyFiles-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowFindMyFiles |
| Path | Search > AT > WindowsComponents > Search |
<!-- AllowFindMyFiles-GpMapping-End -->

<!-- AllowFindMyFiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowFindMyFiles-Examples-End -->

<!-- AllowFindMyFiles-End -->

<!-- AllowIndexingEncryptedStoresOrItems-Begin -->
## AllowIndexingEncryptedStoresOrItems

<!-- AllowIndexingEncryptedStoresOrItems-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowIndexingEncryptedStoresOrItems-Applicability-End -->

<!-- AllowIndexingEncryptedStoresOrItems-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Search/AllowIndexingEncryptedStoresOrItems
```
<!-- AllowIndexingEncryptedStoresOrItems-OmaUri-End -->

<!-- AllowIndexingEncryptedStoresOrItems-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows encrypted items to be indexed.

- If you enable this policy setting, indexing will attempt to decrypt and index the content (access restrictions will still apply).

- If you disable this policy setting, the search service components (including non-Microsoft components) are expected not to index encrypted items or encrypted stores. This policy setting isn't configured by default.

- If you don't configure this policy setting, the local setting, configured through Control Panel, will be used. By default, the Control Panel setting is set to not index encrypted content.

When this setting is enabled or disabled, the index is rebuilt completely.

Full volume encryption (such as BitLocker Drive Encryption or a non-Microsoft solution) must be used for the location of the index to maintain security for encrypted files.
<!-- AllowIndexingEncryptedStoresOrItems-Description-End -->

<!-- AllowIndexingEncryptedStoresOrItems-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

When the policy is enabled, Windows Information Protection (WIP) protected items are indexed. The metadata about them are stored in an unencrypted location. The metadata includes file path and date modified.

When the policy is disabled, the WIP protected items aren't indexed. The encrypted items don't show up in the results in Cortana or file explorer. Search performance may also be affected on photos and other media apps, if there are many WIP-protected media files on the device.

The most restrictive value is `0` to not allow indexing of encrypted items.
<!-- AllowIndexingEncryptedStoresOrItems-Editable-End -->

<!-- AllowIndexingEncryptedStoresOrItems-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowIndexingEncryptedStoresOrItems-DFProperties-End -->

<!-- AllowIndexingEncryptedStoresOrItems-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not allowed. |
| 1 | Allowed. |
<!-- AllowIndexingEncryptedStoresOrItems-AllowedValues-End -->

<!-- AllowIndexingEncryptedStoresOrItems-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowIndexingEncryptedStoresOrItems |
| Friendly Name | Allow indexing of encrypted files |
| Location | Computer Configuration |
| Path | Windows Components > Search |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Search |
| Registry Value Name | AllowIndexingEncryptedStoresOrItems |
| ADMX File Name | Search.admx |
<!-- AllowIndexingEncryptedStoresOrItems-GpMapping-End -->

<!-- AllowIndexingEncryptedStoresOrItems-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowIndexingEncryptedStoresOrItems-Examples-End -->

<!-- AllowIndexingEncryptedStoresOrItems-End -->

<!-- AllowSearchHighlights-Begin -->
## AllowSearchHighlights

<!-- AllowSearchHighlights-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2009 [10.0.19042.1620] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1620] and later <br> ✅ Windows 10, version 21H2 [10.0.19044.1620] and later <br> ✅ Windows 11, version 21H2 [10.0.22000.1761] and later <br> ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- AllowSearchHighlights-Applicability-End -->

<!-- AllowSearchHighlights-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Search/AllowSearchHighlights
```
<!-- AllowSearchHighlights-OmaUri-End -->

<!-- AllowSearchHighlights-Description-Begin -->
<!-- Description-Source-ADMX -->
Disabling this setting turns off search highlights in the start menu search box and in search home. Enabling or not configuring this setting turns on search highlights in the start menu search box and in search home.
<!-- AllowSearchHighlights-Description-End -->

<!-- AllowSearchHighlights-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabling this setting turns off search highlights in search home, and the taskbar search box (Windows 10) or the Start menu search box (Windows 11). |
| 1 (Default) | Enabling or not configuring this setting turns on search highlights in search home, and the taskbar search box (Windows 10) or the Start menu search box (Windows 11). |
<!-- AllowSearchHighlights-Editable-End -->

<!-- AllowSearchHighlights-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-1]` |
| Default Value  | 1 |
<!-- AllowSearchHighlights-DFProperties-End -->

<!-- AllowSearchHighlights-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowSearchHighlights |
| Friendly Name | Allow search highlights |
| Location | Computer Configuration |
| Path | Windows Components > Search |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Search |
| Registry Value Name | EnableDynamicContentInWSB |
| ADMX File Name | Search.admx |
<!-- AllowSearchHighlights-GpMapping-End -->

<!-- AllowSearchHighlights-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSearchHighlights-Examples-End -->

<!-- AllowSearchHighlights-End -->

<!-- AllowSearchToUseLocation-Begin -->
## AllowSearchToUseLocation

<!-- AllowSearchToUseLocation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowSearchToUseLocation-Applicability-End -->

<!-- AllowSearchToUseLocation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Search/AllowSearchToUseLocation
```
<!-- AllowSearchToUseLocation-OmaUri-End -->

<!-- AllowSearchToUseLocation-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether search and Cortana can provide location aware search and Cortana results.

If this is enabled, search and Cortana can access location information.
<!-- AllowSearchToUseLocation-Description-End -->

<!-- AllowSearchToUseLocation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

The most restrictive value is `0` to not allow search to use location.
<!-- AllowSearchToUseLocation-Editable-End -->

<!-- AllowSearchToUseLocation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowSearchToUseLocation-DFProperties-End -->

<!-- AllowSearchToUseLocation-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowSearchToUseLocation-AllowedValues-End -->

<!-- AllowSearchToUseLocation-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowSearchToUseLocation |
| Friendly Name | Allow search and Cortana to use location |
| Location | Computer Configuration |
| Path | Windows Components > Search |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Search |
| Registry Value Name | AllowSearchToUseLocation |
| ADMX File Name | Search.admx |
<!-- AllowSearchToUseLocation-GpMapping-End -->

<!-- AllowSearchToUseLocation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSearchToUseLocation-Examples-End -->

<!-- AllowSearchToUseLocation-End -->

<!-- AllowStoringImagesFromVisionSearch-Begin -->
## AllowStoringImagesFromVisionSearch

<!-- AllowStoringImagesFromVisionSearch-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowStoringImagesFromVisionSearch-Applicability-End -->

<!-- AllowStoringImagesFromVisionSearch-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Search/AllowStoringImagesFromVisionSearch
```
<!-- AllowStoringImagesFromVisionSearch-OmaUri-End -->

<!-- AllowStoringImagesFromVisionSearch-Description-Begin -->
<!-- Description-Source-DDF -->
This policy has been deprecated.
<!-- AllowStoringImagesFromVisionSearch-Description-End -->

<!-- AllowStoringImagesFromVisionSearch-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowStoringImagesFromVisionSearch-Editable-End -->

<!-- AllowStoringImagesFromVisionSearch-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowStoringImagesFromVisionSearch-DFProperties-End -->

<!-- AllowStoringImagesFromVisionSearch-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowStoringImagesFromVisionSearch-AllowedValues-End -->

<!-- AllowStoringImagesFromVisionSearch-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowStoringImagesFromVisionSearch-Examples-End -->

<!-- AllowStoringImagesFromVisionSearch-End -->

<!-- AllowUsingDiacritics-Begin -->
## AllowUsingDiacritics

<!-- AllowUsingDiacritics-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowUsingDiacritics-Applicability-End -->

<!-- AllowUsingDiacritics-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Search/AllowUsingDiacritics
```
<!-- AllowUsingDiacritics-OmaUri-End -->

<!-- AllowUsingDiacritics-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows words that contain diacritic characters to be treated as separate words.

- If you enable this policy setting, words that only differ in diacritics are treated as different words.

- If you disable this policy setting, words with diacritics and words without diacritics are treated as identical words. This policy setting isn't configured by default.

- If you don't configure this policy setting, the local setting, configured through Control Panel, will be used.

> [!NOTE]
> By default, the Control Panel setting is set to treat words that differ only because of diacritics as the same word.
<!-- AllowUsingDiacritics-Description-End -->

<!-- AllowUsingDiacritics-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

The most restrictive value is `0` to not allow the use of diacritics.
<!-- AllowUsingDiacritics-Editable-End -->

<!-- AllowUsingDiacritics-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowUsingDiacritics-DFProperties-End -->

<!-- AllowUsingDiacritics-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not allowed. |
| 1 | Allowed. |
<!-- AllowUsingDiacritics-AllowedValues-End -->

<!-- AllowUsingDiacritics-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowUsingDiacritics |
| Friendly Name | Allow use of diacritics |
| Location | Computer Configuration |
| Path | Windows Components > Search |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Search |
| Registry Value Name | AllowUsingDiacritics |
| ADMX File Name | Search.admx |
<!-- AllowUsingDiacritics-GpMapping-End -->

<!-- AllowUsingDiacritics-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowUsingDiacritics-Examples-End -->

<!-- AllowUsingDiacritics-End -->

<!-- AllowWindowsIndexer-Begin -->
## AllowWindowsIndexer

<!-- AllowWindowsIndexer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowWindowsIndexer-Applicability-End -->

<!-- AllowWindowsIndexer-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Search/AllowWindowsIndexer
```
<!-- AllowWindowsIndexer-OmaUri-End -->

<!-- AllowWindowsIndexer-Description-Begin -->
<!-- Description-Source-DDF -->
Allow Windows indexer. Value type is integer.
<!-- AllowWindowsIndexer-Description-End -->

<!-- AllowWindowsIndexer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowWindowsIndexer-Editable-End -->

<!-- AllowWindowsIndexer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-3]` |
| Default Value  | 3 |
<!-- AllowWindowsIndexer-DFProperties-End -->

<!-- AllowWindowsIndexer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowWindowsIndexer-Examples-End -->

<!-- AllowWindowsIndexer-End -->

<!-- AlwaysUseAutoLangDetection-Begin -->
## AlwaysUseAutoLangDetection

<!-- AlwaysUseAutoLangDetection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AlwaysUseAutoLangDetection-Applicability-End -->

<!-- AlwaysUseAutoLangDetection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Search/AlwaysUseAutoLangDetection
```
<!-- AlwaysUseAutoLangDetection-OmaUri-End -->

<!-- AlwaysUseAutoLangDetection-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines when Windows uses automatic language detection results, and when it relies on indexing history.

- If you enable this policy setting, Windows will always use automatic language detection to index (as it did in Windows 7). Using automatic language detection can increase memory usage. We recommend enabling this policy setting only on PCs where documents are stored in many languages.

- If you disable or don't configure this policy setting, Windows will use automatic language detection only when it can determine the language of a document with high confidence.
<!-- AlwaysUseAutoLangDetection-Description-End -->

<!-- AlwaysUseAutoLangDetection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

The most restrictive value is `0` to now allow automatic language detection.
<!-- AlwaysUseAutoLangDetection-Editable-End -->

<!-- AlwaysUseAutoLangDetection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AlwaysUseAutoLangDetection-DFProperties-End -->

<!-- AlwaysUseAutoLangDetection-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not allowed. |
| 1 | Allowed. |
<!-- AlwaysUseAutoLangDetection-AllowedValues-End -->

<!-- AlwaysUseAutoLangDetection-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AlwaysUseAutoLangDetection |
| Friendly Name | Always use automatic language detection when indexing content and properties |
| Location | Computer Configuration |
| Path | Windows Components > Search |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Search |
| Registry Value Name | AlwaysUseAutoLangDetection |
| ADMX File Name | Search.admx |
<!-- AlwaysUseAutoLangDetection-GpMapping-End -->

<!-- AlwaysUseAutoLangDetection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AlwaysUseAutoLangDetection-Examples-End -->

<!-- AlwaysUseAutoLangDetection-End -->

<!-- ConfigureSearchOnTaskbarMode-Begin -->
## ConfigureSearchOnTaskbarMode

<!-- ConfigureSearchOnTaskbarMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- ConfigureSearchOnTaskbarMode-Applicability-End -->

<!-- ConfigureSearchOnTaskbarMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Search/ConfigureSearchOnTaskbarMode
```
<!-- ConfigureSearchOnTaskbarMode-OmaUri-End -->

<!-- ConfigureSearchOnTaskbarMode-Description-Begin -->
<!-- Description-Source-ADMX-Forced -->
This policy setting allows you to configure search on the taskbar.

- If you enable this policy setting and set it to hide, search on taskbar will be hidden by default. Users can't change it in Settings.

- If you enable this policy setting and set it to search icon only, the search icon will be displayed on the taskbar by default. Users can't change it in Settings.

- If you enable this policy setting and set it to search icon and label, the search icon and label will be displayed on the taskbar by default. Users can't change it in Settings.

- If you enable this policy setting and set it to search box, the search box will be displayed on the taskbar by default. Users can't change it in Settings.

- If you disable or don't configure this policy setting, search on taskbar will be configured according to the defaults for your Windows edition. Users will be able to change search on taskbar in Settings.
<!-- ConfigureSearchOnTaskbarMode-Description-End -->

<!-- ConfigureSearchOnTaskbarMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureSearchOnTaskbarMode-Editable-End -->

<!-- ConfigureSearchOnTaskbarMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 3 |
<!-- ConfigureSearchOnTaskbarMode-DFProperties-End -->

<!-- ConfigureSearchOnTaskbarMode-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Hide. |
| 1 | Search icon only. |
| 2 | Search icon and label. |
| 3 (Default) | Search box. |
<!-- ConfigureSearchOnTaskbarMode-AllowedValues-End -->

<!-- ConfigureSearchOnTaskbarMode-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureSearchOnTaskbarMode |
| Friendly Name | Configures search on the taskbar |
| Element Name | Search on the taskbar. |
| Location | Computer Configuration |
| Path | Windows Components > Search |
| Registry Key Name | Software\Policies\Microsoft\Windows\Windows Search |
| ADMX File Name | Search.admx |
<!-- ConfigureSearchOnTaskbarMode-GpMapping-End -->

<!-- ConfigureSearchOnTaskbarMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureSearchOnTaskbarMode-Examples-End -->

<!-- ConfigureSearchOnTaskbarMode-End -->

<!-- DisableBackoff-Begin -->
## DisableBackoff

<!-- DisableBackoff-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- DisableBackoff-Applicability-End -->

<!-- DisableBackoff-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Search/DisableBackoff
```
<!-- DisableBackoff-OmaUri-End -->

<!-- DisableBackoff-Description-Begin -->
<!-- Description-Source-ADMX -->
If enabled, the search indexer backoff feature will be disabled. Indexing will continue at full speed even when system activity is high. If disabled, backoff logic will be used to throttle back indexing activity when system activity is high. Default is disabled.
<!-- DisableBackoff-Description-End -->

<!-- DisableBackoff-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableBackoff-Editable-End -->

<!-- DisableBackoff-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableBackoff-DFProperties-End -->

<!-- DisableBackoff-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disable. |
| 1 | Enable. |
<!-- DisableBackoff-AllowedValues-End -->

<!-- DisableBackoff-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableBackoff |
| Friendly Name | Disable indexer backoff |
| Location | Computer Configuration |
| Path | Windows Components > Search |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Search |
| Registry Value Name | DisableBackoff |
| ADMX File Name | Search.admx |
<!-- DisableBackoff-GpMapping-End -->

<!-- DisableBackoff-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableBackoff-Examples-End -->

<!-- DisableBackoff-End -->

<!-- DisableRemovableDriveIndexing-Begin -->
## DisableRemovableDriveIndexing

<!-- DisableRemovableDriveIndexing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- DisableRemovableDriveIndexing-Applicability-End -->

<!-- DisableRemovableDriveIndexing-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Search/DisableRemovableDriveIndexing
```
<!-- DisableRemovableDriveIndexing-OmaUri-End -->

<!-- DisableRemovableDriveIndexing-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures whether or not locations on removable drives can be added to libraries.

- If you enable this policy setting, locations on removable drives can't be added to libraries. In addition, locations on removable drives can't be indexed.

- If you disable or don't configure this policy setting, locations on removable drives can be added to libraries. In addition, locations on removable drives can be indexed.
<!-- DisableRemovableDriveIndexing-Description-End -->

<!-- DisableRemovableDriveIndexing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableRemovableDriveIndexing-Editable-End -->

<!-- DisableRemovableDriveIndexing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableRemovableDriveIndexing-DFProperties-End -->

<!-- DisableRemovableDriveIndexing-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disable. |
| 1 | Enable. |
<!-- DisableRemovableDriveIndexing-AllowedValues-End -->

<!-- DisableRemovableDriveIndexing-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableRemovableDriveIndexing |
| Friendly Name | Do not allow locations on removable drives to be added to libraries |
| Location | Computer Configuration |
| Path | Windows Components > Search |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Search |
| Registry Value Name | DisableRemovableDriveIndexing |
| ADMX File Name | Search.admx |
<!-- DisableRemovableDriveIndexing-GpMapping-End -->

<!-- DisableRemovableDriveIndexing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableRemovableDriveIndexing-Examples-End -->

<!-- DisableRemovableDriveIndexing-End -->

<!-- DisableSearch-Begin -->
## DisableSearch

<!-- DisableSearch-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- DisableSearch-Applicability-End -->

<!-- DisableSearch-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Search/DisableSearch
```
<!-- DisableSearch-OmaUri-End -->

<!-- DisableSearch-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this policy, the Search UI will be disabled along with all its entry points, such as keyboard shortcuts, touchpad gestures, and type-to-search in the Start menu. The Start menu's search box and Search Taskbar button will also be hidden.

- If you disable or don't configure this policy setting, the user will be able to open the Search UI and its different entry points will be shown.
<!-- DisableSearch-Description-End -->

<!-- DisableSearch-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableSearch-Editable-End -->

<!-- DisableSearch-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableSearch-DFProperties-End -->

<!-- DisableSearch-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Don't disable. |
| 1 | Disable. |
<!-- DisableSearch-AllowedValues-End -->

<!-- DisableSearch-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableSearch |
| Friendly Name | Fully disable Search UI |
| Location | Computer Configuration |
| Path | Windows Components > Search |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Search |
| Registry Value Name | DisableSearch |
| ADMX File Name | Search.admx |
<!-- DisableSearch-GpMapping-End -->

<!-- DisableSearch-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableSearch-Examples-End -->

<!-- DisableSearch-End -->

<!-- DoNotUseWebResults-Begin -->
## DoNotUseWebResults

<!-- DoNotUseWebResults-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- DoNotUseWebResults-Applicability-End -->

<!-- DoNotUseWebResults-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Search/DoNotUseWebResults
```
<!-- DoNotUseWebResults-OmaUri-End -->

<!-- DoNotUseWebResults-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control whether or not Search can perform queries on the web, if web results are displayed in Search, and if search highlights are shown in the search box and in search home.

- If you enable this policy setting, queries won't be performed on the web, web results won't be displayed when a user performs a query in Search, and search highlights won't be shown in the search box and in search home.

- If you disable this policy setting, queries will be performed on the web, web results will be displayed when a user performs a query in Search, and search highlights will be shown in the search box and in search home.

- If you don't configure this policy setting, a user can choose whether or not Search can perform queries on the web, and if the web results are displayed in Search, and if search highlights are shown in the search box and in search home.
<!-- DoNotUseWebResults-Description-End -->

<!-- DoNotUseWebResults-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DoNotUseWebResults-Editable-End -->

<!-- DoNotUseWebResults-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- DoNotUseWebResults-DFProperties-End -->

<!-- DoNotUseWebResults-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. Queries won't be performed on the web and web results won't be displayed when a user performs a query in Search. |
| 1 (Default) | Allowed. Queries will be performed on the web and web results will be displayed when a user performs a query in Search. |
<!-- DoNotUseWebResults-AllowedValues-End -->

<!-- DoNotUseWebResults-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DoNotUseWebResults |
| Friendly Name | Don't search the web or display web results in Search |
| Location | Computer Configuration |
| Path | Windows Components > Search |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Search |
| Registry Value Name | ConnectedSearchUseWeb |
| ADMX File Name | Search.admx |
<!-- DoNotUseWebResults-GpMapping-End -->

<!-- DoNotUseWebResults-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DoNotUseWebResults-Examples-End -->

<!-- DoNotUseWebResults-End -->

<!-- PreventIndexingLowDiskSpaceMB-Begin -->
## PreventIndexingLowDiskSpaceMB

<!-- PreventIndexingLowDiskSpaceMB-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- PreventIndexingLowDiskSpaceMB-Applicability-End -->

<!-- PreventIndexingLowDiskSpaceMB-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Search/PreventIndexingLowDiskSpaceMB
```
<!-- PreventIndexingLowDiskSpaceMB-OmaUri-End -->

<!-- PreventIndexingLowDiskSpaceMB-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Enabling this policy prevents indexing from continuing after less than the specified amount of hard drive space is left on the same drive as the index location. Select between 0 and 1. Enable this policy if computers in your environment have extremely limited hard drive space. When this policy is disabled or not configured, Windows Desktop Search automatically manages your index size.
<!-- PreventIndexingLowDiskSpaceMB-Description-End -->

<!-- PreventIndexingLowDiskSpaceMB-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventIndexingLowDiskSpaceMB-Editable-End -->

<!-- PreventIndexingLowDiskSpaceMB-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- PreventIndexingLowDiskSpaceMB-DFProperties-End -->

<!-- PreventIndexingLowDiskSpaceMB-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disable. |
| 1 (Default) | Enable. |
<!-- PreventIndexingLowDiskSpaceMB-AllowedValues-End -->

<!-- PreventIndexingLowDiskSpaceMB-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | StopIndexingOnLimitedHardDriveSpace |
| Friendly Name | Stop indexing in the event of limited hard drive space |
| Location | Computer Configuration |
| Path | Windows Components > Search |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Search |
| ADMX File Name | Search.admx |
<!-- PreventIndexingLowDiskSpaceMB-GpMapping-End -->

<!-- PreventIndexingLowDiskSpaceMB-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventIndexingLowDiskSpaceMB-Examples-End -->

<!-- PreventIndexingLowDiskSpaceMB-End -->

<!-- PreventRemoteQueries-Begin -->
## PreventRemoteQueries

<!-- PreventRemoteQueries-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- PreventRemoteQueries-Applicability-End -->

<!-- PreventRemoteQueries-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Search/PreventRemoteQueries
```
<!-- PreventRemoteQueries-OmaUri-End -->

<!-- PreventRemoteQueries-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
If enabled, clients will be unable to query this computer's index remotely. Thus, when they're browsing network shares that are stored on this computer, they won't search them using the index. If disabled, client search requests will use this computer's index. .
<!-- PreventRemoteQueries-Description-End -->

<!-- PreventRemoteQueries-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventRemoteQueries-Editable-End -->

<!-- PreventRemoteQueries-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- PreventRemoteQueries-DFProperties-End -->

<!-- PreventRemoteQueries-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disable. |
| 1 (Default) | Enable. |
<!-- PreventRemoteQueries-AllowedValues-End -->

<!-- PreventRemoteQueries-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | PreventRemoteQueries |
| Friendly Name | Prevent clients from querying the index remotely |
| Location | Computer Configuration |
| Path | Windows Components > Search |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Search |
| Registry Value Name | PreventRemoteQueries |
| ADMX File Name | Search.admx |
<!-- PreventRemoteQueries-GpMapping-End -->

<!-- PreventRemoteQueries-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventRemoteQueries-Examples-End -->

<!-- PreventRemoteQueries-End -->

<!-- SafeSearchPermissions-Begin -->
## SafeSearchPermissions

> [!NOTE]
> This policy is deprecated and may be removed in a future release.

<!-- SafeSearchPermissions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | Not applicable | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- SafeSearchPermissions-Applicability-End -->

<!-- SafeSearchPermissions-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Search/SafeSearchPermissions
```
<!-- SafeSearchPermissions-OmaUri-End -->

<!-- SafeSearchPermissions-Description-Begin -->
<!-- Description-Source-DDF -->
This policy is deprecated.
<!-- SafeSearchPermissions-Description-End -->

<!-- SafeSearchPermissions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SafeSearchPermissions-Editable-End -->

<!-- SafeSearchPermissions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- SafeSearchPermissions-DFProperties-End -->

<!-- SafeSearchPermissions-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Enable. |
| 0 | Disable. |
<!-- SafeSearchPermissions-AllowedValues-End -->

<!-- SafeSearchPermissions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SafeSearchPermissions-Examples-End -->

<!-- SafeSearchPermissions-End -->

<!-- Search-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Search-CspMoreInfo-End -->

<!-- Search-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
