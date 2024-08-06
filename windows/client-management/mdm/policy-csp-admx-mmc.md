---
title: ADMX_MMC Policy CSP
description: Learn more about the ADMX_MMC Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_MMC-Begin -->
# Policy CSP - ADMX_MMC

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_MMC-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_MMC-Editable-End -->

<!-- MMC_ActiveXControl-Begin -->
## MMC_ActiveXControl

<!-- MMC_ActiveXControl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_ActiveXControl-Applicability-End -->

<!-- MMC_ActiveXControl-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMC/MMC_ActiveXControl
```
<!-- MMC_ActiveXControl-OmaUri-End -->

<!-- MMC_ActiveXControl-Description-Begin -->
<!-- Description-Source-ADMX -->
Permits or prohibits use of this snap-in.

If you enable this setting, the snap-in is permitted. If you disable the setting, the snap-in is prohibited.

If this setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted.

To explicitly permit use of this snap-in, enable this setting. If this setting isn't configured (or disabled), this snap-in is prohibited.

- If "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited.

To explicitly prohibit use of this snap-in, disable this setting. If this setting isn't configured (or enabled), the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_ActiveXControl-Description-End -->

<!-- MMC_ActiveXControl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_ActiveXControl-Editable-End -->

<!-- MMC_ActiveXControl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_ActiveXControl-DFProperties-End -->

<!-- MMC_ActiveXControl-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_ActiveXControl |
| Friendly Name | ActiveX Control |
| Location | User Configuration |
| Path | Windows Components > Microsoft Management Console > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{C96401CF-0E17-11D3-885B-00C04F72C717} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMC.admx |
<!-- MMC_ActiveXControl-AdmxBacked-End -->

<!-- MMC_ActiveXControl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_ActiveXControl-Examples-End -->

<!-- MMC_ActiveXControl-End -->

<!-- MMC_ExtendView-Begin -->
## MMC_ExtendView

<!-- MMC_ExtendView-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_ExtendView-Applicability-End -->

<!-- MMC_ExtendView-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMC/MMC_ExtendView
```
<!-- MMC_ExtendView-OmaUri-End -->

<!-- MMC_ExtendView-Description-Begin -->
<!-- Description-Source-ADMX -->
Permits or prohibits use of this snap-in.

If you enable this setting, the snap-in is permitted. If you disable the setting, the snap-in is prohibited.

If this setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted.

To explicitly permit use of this snap-in, enable this setting. If this setting isn't configured (or disabled), this snap-in is prohibited.

- If "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited.

To explicitly prohibit use of this snap-in, disable this setting. If this setting isn't configured (or enabled), the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_ExtendView-Description-End -->

<!-- MMC_ExtendView-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_ExtendView-Editable-End -->

<!-- MMC_ExtendView-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_ExtendView-DFProperties-End -->

<!-- MMC_ExtendView-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_ExtendView |
| Friendly Name | Extended View (Web View) |
| Location | User Configuration |
| Path | Windows Components > Microsoft Management Console > Restricted/Permitted snap-ins > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{B708457E-DB61-4C55-A92F-0D4B5E9B1224} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMC.admx |
<!-- MMC_ExtendView-AdmxBacked-End -->

<!-- MMC_ExtendView-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_ExtendView-Examples-End -->

<!-- MMC_ExtendView-End -->

<!-- MMC_LinkToWeb-Begin -->
## MMC_LinkToWeb

<!-- MMC_LinkToWeb-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_LinkToWeb-Applicability-End -->

<!-- MMC_LinkToWeb-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMC/MMC_LinkToWeb
```
<!-- MMC_LinkToWeb-OmaUri-End -->

<!-- MMC_LinkToWeb-Description-Begin -->
<!-- Description-Source-ADMX -->
Permits or prohibits use of this snap-in.

If you enable this setting, the snap-in is permitted. If you disable the setting, the snap-in is prohibited.

If this setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted.

To explicitly permit use of this snap-in, enable this setting. If this setting isn't configured (or disabled), this snap-in is prohibited.

- If "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited.

To explicitly prohibit use of this snap-in, disable this setting. If this setting isn't configured (or enabled), the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_LinkToWeb-Description-End -->

<!-- MMC_LinkToWeb-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_LinkToWeb-Editable-End -->

<!-- MMC_LinkToWeb-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_LinkToWeb-DFProperties-End -->

<!-- MMC_LinkToWeb-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_LinkToWeb |
| Friendly Name | Link to Web Address |
| Location | User Configuration |
| Path | Windows Components > Microsoft Management Console > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{C96401D1-0E17-11D3-885B-00C04F72C717} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMC.admx |
<!-- MMC_LinkToWeb-AdmxBacked-End -->

<!-- MMC_LinkToWeb-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_LinkToWeb-Examples-End -->

<!-- MMC_LinkToWeb-End -->

<!-- MMC_Restrict_Author-Begin -->
## MMC_Restrict_Author

<!-- MMC_Restrict_Author-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_Restrict_Author-Applicability-End -->

<!-- MMC_Restrict_Author-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMC/MMC_Restrict_Author
```
<!-- MMC_Restrict_Author-OmaUri-End -->

<!-- MMC_Restrict_Author-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from entering author mode.

This setting prevents users from opening the Microsoft Management Console (MMC) in author mode, explicitly opening console files in author mode, and opening any console files that open in author mode by default.

As a result, users can't create console files or add or remove snap-ins. Also, because they can't open author-mode console files, they can't use the tools that the files contain.

This setting permits users to open MMC user-mode console files, such as those on the Administrative Tools menu in Windows 2000 Server family or Windows Server 2003 family. However, users can't open a blank MMC console window on the Start menu. (To open the MMC, click Start, click Run, and type mmc.) Users also can't open a blank MMC console window from a command prompt.

If you disable this setting or don't configure it, users can enter author mode and open author-mode console files.
<!-- MMC_Restrict_Author-Description-End -->

<!-- MMC_Restrict_Author-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_Restrict_Author-Editable-End -->

<!-- MMC_Restrict_Author-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_Restrict_Author-DFProperties-End -->

<!-- MMC_Restrict_Author-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_Restrict_Author |
| Friendly Name | Restrict the user from entering author mode |
| Location | User Configuration |
| Path | Windows Components > Microsoft Management Console |
| Registry Key Name | Software\Policies\Microsoft\MMC |
| Registry Value Name | RestrictAuthorMode |
| ADMX File Name | MMC.admx |
<!-- MMC_Restrict_Author-AdmxBacked-End -->

<!-- MMC_Restrict_Author-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_Restrict_Author-Examples-End -->

<!-- MMC_Restrict_Author-End -->

<!-- MMC_Restrict_To_Permitted_Snapins-Begin -->
## MMC_Restrict_To_Permitted_Snapins

<!-- MMC_Restrict_To_Permitted_Snapins-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_Restrict_To_Permitted_Snapins-Applicability-End -->

<!-- MMC_Restrict_To_Permitted_Snapins-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMC/MMC_Restrict_To_Permitted_Snapins
```
<!-- MMC_Restrict_To_Permitted_Snapins-OmaUri-End -->

<!-- MMC_Restrict_To_Permitted_Snapins-Description-Begin -->
<!-- Description-Source-ADMX -->
Lets you selectively permit or prohibit the use of Microsoft Management Console (MMC) snap-ins.

- If you enable this setting, all snap-ins are prohibited, except those that you explicitly permit. Use this setting if you plan to prohibit use of most snap-ins.

To explicitly permit a snap-in, open the Restricted/Permitted snap-ins setting folder and enable the settings representing the snap-in you want to permit. If a snap-in setting in the folder is disabled or not configured, the snap-in is prohibited.

- If you disable this setting or don't configure it, all snap-ins are permitted, except those that you explicitly prohibit. Use this setting if you plan to permit use of most snap-ins.

To explicitly prohibit a snap-in, open the Restricted/Permitted snap-ins setting folder and then disable the settings representing the snap-ins you want to prohibit. If a snap-in setting in the folder is enabled or not configured, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.

> [!NOTE]
> If you enable this setting, and you don't enable any settings in the Restricted/Permitted snap-ins folder, users can't use any MMC snap-ins.
<!-- MMC_Restrict_To_Permitted_Snapins-Description-End -->

<!-- MMC_Restrict_To_Permitted_Snapins-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_Restrict_To_Permitted_Snapins-Editable-End -->

<!-- MMC_Restrict_To_Permitted_Snapins-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_Restrict_To_Permitted_Snapins-DFProperties-End -->

<!-- MMC_Restrict_To_Permitted_Snapins-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_Restrict_To_Permitted_Snapins |
| Friendly Name | Restrict users to the explicitly permitted list of snap-ins |
| Location | User Configuration |
| Path | Windows Components > Microsoft Management Console |
| Registry Key Name | Software\Policies\Microsoft\MMC |
| Registry Value Name | RestrictToPermittedSnapins |
| ADMX File Name | MMC.admx |
<!-- MMC_Restrict_To_Permitted_Snapins-AdmxBacked-End -->

<!-- MMC_Restrict_To_Permitted_Snapins-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_Restrict_To_Permitted_Snapins-Examples-End -->

<!-- MMC_Restrict_To_Permitted_Snapins-End -->

<!-- ADMX_MMC-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_MMC-CspMoreInfo-End -->

<!-- ADMX_MMC-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
