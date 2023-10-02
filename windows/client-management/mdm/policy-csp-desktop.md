---
title: Desktop Policy CSP
description: Learn more about the Desktop Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 08/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- Desktop-Begin -->
# Policy CSP - Desktop

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- Desktop-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Desktop-Editable-End -->

<!-- PreventUserRedirectionOfProfileFolders-Begin -->
## PreventUserRedirectionOfProfileFolders

<!-- PreventUserRedirectionOfProfileFolders-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- PreventUserRedirectionOfProfileFolders-Applicability-End -->

<!-- PreventUserRedirectionOfProfileFolders-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Desktop/PreventUserRedirectionOfProfileFolders
```
<!-- PreventUserRedirectionOfProfileFolders-OmaUri-End -->

<!-- PreventUserRedirectionOfProfileFolders-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from changing the path to their profile folders.

By default, a user can change the location of their individual profile folders like Documents, Music etc. by typing a new path in the Locations tab of the folder's Properties dialog box.

If you enable this setting, users are unable to type a new location in the Target box.
<!-- PreventUserRedirectionOfProfileFolders-Description-End -->

<!-- PreventUserRedirectionOfProfileFolders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventUserRedirectionOfProfileFolders-Editable-End -->

<!-- PreventUserRedirectionOfProfileFolders-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreventUserRedirectionOfProfileFolders-DFProperties-End -->

<!-- PreventUserRedirectionOfProfileFolders-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisablePersonalDirChange |
| Friendly Name | Prohibit User from manually redirecting Profile Folders |
| Location | User Configuration |
| Path | Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | DisablePersonalDirChange |
| ADMX File Name | Desktop.admx |
<!-- PreventUserRedirectionOfProfileFolders-AdmxBacked-End -->

<!-- PreventUserRedirectionOfProfileFolders-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventUserRedirectionOfProfileFolders-Examples-End -->

<!-- PreventUserRedirectionOfProfileFolders-End -->

<!-- Desktop-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Desktop-CspMoreInfo-End -->

<!-- Desktop-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
