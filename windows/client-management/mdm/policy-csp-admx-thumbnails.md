---
title: ADMX_Thumbnails Policy CSP
description: Learn more about the ADMX_Thumbnails Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_Thumbnails-Begin -->
# Policy CSP - ADMX_Thumbnails

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_Thumbnails-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Thumbnails-Editable-End -->

<!-- DisableThumbnails-Begin -->
## DisableThumbnails

<!-- DisableThumbnails-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableThumbnails-Applicability-End -->

<!-- DisableThumbnails-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Thumbnails/DisableThumbnails
```
<!-- DisableThumbnails-OmaUri-End -->

<!-- DisableThumbnails-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure how File Explorer displays thumbnail images or icons on the local computer.

File Explorer displays thumbnail images by default.

- If you enable this policy setting, File Explorer displays only icons and never displays thumbnail images.

- If you disable or don't configure this policy setting, File Explorer displays only thumbnail images.
<!-- DisableThumbnails-Description-End -->

<!-- DisableThumbnails-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableThumbnails-Editable-End -->

<!-- DisableThumbnails-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableThumbnails-DFProperties-End -->

<!-- DisableThumbnails-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableThumbnails |
| Friendly Name | Turn off the display of thumbnails and only display icons. |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | DisableThumbnails |
| ADMX File Name | Thumbnails.admx |
<!-- DisableThumbnails-AdmxBacked-End -->

<!-- DisableThumbnails-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableThumbnails-Examples-End -->

<!-- DisableThumbnails-End -->

<!-- DisableThumbnailsOnNetworkFolders-Begin -->
## DisableThumbnailsOnNetworkFolders

<!-- DisableThumbnailsOnNetworkFolders-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableThumbnailsOnNetworkFolders-Applicability-End -->

<!-- DisableThumbnailsOnNetworkFolders-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Thumbnails/DisableThumbnailsOnNetworkFolders
```
<!-- DisableThumbnailsOnNetworkFolders-OmaUri-End -->

<!-- DisableThumbnailsOnNetworkFolders-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure how File Explorer displays thumbnail images or icons on network folders.

File Explorer displays only icons and never displays thumbnail images on network folders by default.

- If you disable this policy setting, File Explorer displays thumbnail images on network folders.

- If you enable or don't configure this policy setting, File Explorer displays only icons and never displays thumbnail images on network folders.

> [!NOTE]
> Allowing the use of thumbnail images from network folders can expose the users' computers to security risks.
<!-- DisableThumbnailsOnNetworkFolders-Description-End -->

<!-- DisableThumbnailsOnNetworkFolders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableThumbnailsOnNetworkFolders-Editable-End -->

<!-- DisableThumbnailsOnNetworkFolders-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableThumbnailsOnNetworkFolders-DFProperties-End -->

<!-- DisableThumbnailsOnNetworkFolders-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableThumbnailsOnNetworkFolders |
| Friendly Name | Turn off the display of thumbnails and only display icons on network folders |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | DisableThumbnailsOnNetworkFolders |
| ADMX File Name | Thumbnails.admx |
<!-- DisableThumbnailsOnNetworkFolders-AdmxBacked-End -->

<!-- DisableThumbnailsOnNetworkFolders-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableThumbnailsOnNetworkFolders-Examples-End -->

<!-- DisableThumbnailsOnNetworkFolders-End -->

<!-- DisableThumbsDBOnNetworkFolders-Begin -->
## DisableThumbsDBOnNetworkFolders

<!-- DisableThumbsDBOnNetworkFolders-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableThumbsDBOnNetworkFolders-Applicability-End -->

<!-- DisableThumbsDBOnNetworkFolders-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Thumbnails/DisableThumbsDBOnNetworkFolders
```
<!-- DisableThumbsDBOnNetworkFolders-OmaUri-End -->

<!-- DisableThumbsDBOnNetworkFolders-Description-Begin -->
<!-- Description-Source-ADMX -->
Turns off the caching of thumbnails in hidden thumbs.db files.

This policy setting allows you to configure File Explorer to cache thumbnails of items residing in network folders in hidden thumbs.db files.

- If you enable this policy setting, File Explorer doesn't create, read from, or write to thumbs.db files.

- If you disable or don't configure this policy setting, File Explorer creates, reads from, and writes to thumbs.db files.
<!-- DisableThumbsDBOnNetworkFolders-Description-End -->

<!-- DisableThumbsDBOnNetworkFolders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableThumbsDBOnNetworkFolders-Editable-End -->

<!-- DisableThumbsDBOnNetworkFolders-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableThumbsDBOnNetworkFolders-DFProperties-End -->

<!-- DisableThumbsDBOnNetworkFolders-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableThumbsDBOnNetworkFolders |
| Friendly Name | Turn off the caching of thumbnails in hidden thumbs.db files |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | DisableThumbsDBOnNetworkFolders |
| ADMX File Name | Thumbnails.admx |
<!-- DisableThumbsDBOnNetworkFolders-AdmxBacked-End -->

<!-- DisableThumbsDBOnNetworkFolders-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableThumbsDBOnNetworkFolders-Examples-End -->

<!-- DisableThumbsDBOnNetworkFolders-End -->

<!-- ADMX_Thumbnails-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Thumbnails-CspMoreInfo-End -->

<!-- ADMX_Thumbnails-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
