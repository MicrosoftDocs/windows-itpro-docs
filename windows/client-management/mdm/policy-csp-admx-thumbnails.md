---
title: ADMX_Thumbnails Policy CSP
description: Learn more about the ADMX_Thumbnails Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 01/09/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_Thumbnails-Begin -->
# Policy CSP - ADMX_Thumbnails

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_Thumbnails-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Thumbnails-Editable-End -->

<!-- DisableThumbnails-Begin -->
## DisableThumbnails

<!-- DisableThumbnails-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
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

- If you disable or do not configure this policy setting, File Explorer displays only thumbnail images.
<!-- DisableThumbnails-Description-End -->

<!-- DisableThumbnails-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableThumbnails-Editable-End -->

<!-- DisableThumbnails-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableThumbnails-DFProperties-End -->

<!-- DisableThumbnails-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

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
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableThumbnailsOnNetworkFolders-Applicability-End -->

<!-- DisableThumbnailsOnNetworkFolders-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Thumbnails/DisableThumbnailsOnNetworkFolders
```
<!-- DisableThumbnailsOnNetworkFolders-OmaUri-End -->

<!-- DisableThumbnailsOnNetworkFolders-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure how File Explorer displays thumbnail images or icons on network folders.

File Explorer displays thumbnail images on network folders by default.

- If you enable this policy setting, File Explorer displays only icons and never displays thumbnail images on network folders.

- If you disable or do not configure this policy setting, File Explorer displays only thumbnail images on network folders.
<!-- DisableThumbnailsOnNetworkFolders-Description-End -->

<!-- DisableThumbnailsOnNetworkFolders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableThumbnailsOnNetworkFolders-Editable-End -->

<!-- DisableThumbnailsOnNetworkFolders-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableThumbnailsOnNetworkFolders-DFProperties-End -->

<!-- DisableThumbnailsOnNetworkFolders-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

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
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
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

- If you enable this policy setting, File Explorer does not create, read from, or write to thumbs.db files.

- If you disable or do not configure this policy setting, File Explorer creates, reads from, and writes to thumbs.db files.
<!-- DisableThumbsDBOnNetworkFolders-Description-End -->

<!-- DisableThumbsDBOnNetworkFolders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableThumbsDBOnNetworkFolders-Editable-End -->

<!-- DisableThumbsDBOnNetworkFolders-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableThumbsDBOnNetworkFolders-DFProperties-End -->

<!-- DisableThumbsDBOnNetworkFolders-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

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
