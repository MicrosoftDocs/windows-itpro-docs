---
title: ADMX_MMCSnapins Policy CSP
description: Learn more about the ADMX_MMCSnapins Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_MMCSnapins-Begin -->
# Policy CSP - ADMX_MMCSnapins

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_MMCSnapins-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_MMCSnapins-Editable-End -->

<!-- MMC_ActiveDirDomTrusts-Begin -->
## MMC_ActiveDirDomTrusts

<!-- MMC_ActiveDirDomTrusts-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_ActiveDirDomTrusts-Applicability-End -->

<!-- MMC_ActiveDirDomTrusts-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_ActiveDirDomTrusts
```
<!-- MMC_ActiveDirDomTrusts-OmaUri-End -->

<!-- MMC_ActiveDirDomTrusts-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_ActiveDirDomTrusts-Description-End -->

<!-- MMC_ActiveDirDomTrusts-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_ActiveDirDomTrusts-Editable-End -->

<!-- MMC_ActiveDirDomTrusts-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_ActiveDirDomTrusts-DFProperties-End -->

<!-- MMC_ActiveDirDomTrusts-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_ActiveDirDomTrusts |
| Friendly Name | Active Directory Domains and Trusts |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{EBC53A38-A23F-11D0-B09B-00C04FD8DCA6} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_ActiveDirDomTrusts-AdmxBacked-End -->

<!-- MMC_ActiveDirDomTrusts-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_ActiveDirDomTrusts-Examples-End -->

<!-- MMC_ActiveDirDomTrusts-End -->

<!-- MMC_ActiveDirSitesServices-Begin -->
## MMC_ActiveDirSitesServices

<!-- MMC_ActiveDirSitesServices-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_ActiveDirSitesServices-Applicability-End -->

<!-- MMC_ActiveDirSitesServices-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_ActiveDirSitesServices
```
<!-- MMC_ActiveDirSitesServices-OmaUri-End -->

<!-- MMC_ActiveDirSitesServices-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_ActiveDirSitesServices-Description-End -->

<!-- MMC_ActiveDirSitesServices-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_ActiveDirSitesServices-Editable-End -->

<!-- MMC_ActiveDirSitesServices-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_ActiveDirSitesServices-DFProperties-End -->

<!-- MMC_ActiveDirSitesServices-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_ActiveDirSitesServices |
| Friendly Name | Active Directory Sites and Services |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{D967F824-9968-11D0-B936-00C04FD8D5B0} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_ActiveDirSitesServices-AdmxBacked-End -->

<!-- MMC_ActiveDirSitesServices-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_ActiveDirSitesServices-Examples-End -->

<!-- MMC_ActiveDirSitesServices-End -->

<!-- MMC_ActiveDirUsersComp-Begin -->
## MMC_ActiveDirUsersComp

<!-- MMC_ActiveDirUsersComp-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_ActiveDirUsersComp-Applicability-End -->

<!-- MMC_ActiveDirUsersComp-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_ActiveDirUsersComp
```
<!-- MMC_ActiveDirUsersComp-OmaUri-End -->

<!-- MMC_ActiveDirUsersComp-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_ActiveDirUsersComp-Description-End -->

<!-- MMC_ActiveDirUsersComp-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_ActiveDirUsersComp-Editable-End -->

<!-- MMC_ActiveDirUsersComp-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_ActiveDirUsersComp-DFProperties-End -->

<!-- MMC_ActiveDirUsersComp-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_ActiveDirUsersComp |
| Friendly Name | Active Directory Users and Computers |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{E355E538-1C2E-11D0-8C37-00C04FD8FE93} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_ActiveDirUsersComp-AdmxBacked-End -->

<!-- MMC_ActiveDirUsersComp-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_ActiveDirUsersComp-Examples-End -->

<!-- MMC_ActiveDirUsersComp-End -->

<!-- MMC_ADMComputers_1-Begin -->
## MMC_ADMComputers_1

<!-- MMC_ADMComputers_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_ADMComputers_1-Applicability-End -->

<!-- MMC_ADMComputers_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_ADMComputers_1
```
<!-- MMC_ADMComputers_1-OmaUri-End -->

<!-- MMC_ADMComputers_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_ADMComputers_1-Description-End -->

<!-- MMC_ADMComputers_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_ADMComputers_1-Editable-End -->

<!-- MMC_ADMComputers_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_ADMComputers_1-DFProperties-End -->

<!-- MMC_ADMComputers_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_ADMComputers_1 |
| Friendly Name | Administrative Templates (Computers) |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy > Group Policy snap-in extensions |
| Registry Key Name | Software\Policies\Microsoft\MMC\{0F6B957D-509E-11D1-A7CC-0000F87571E3} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_ADMComputers_1-AdmxBacked-End -->

<!-- MMC_ADMComputers_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_ADMComputers_1-Examples-End -->

<!-- MMC_ADMComputers_1-End -->

<!-- MMC_ADMComputers_2-Begin -->
## MMC_ADMComputers_2

<!-- MMC_ADMComputers_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_ADMComputers_2-Applicability-End -->

<!-- MMC_ADMComputers_2-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_ADMComputers_2
```
<!-- MMC_ADMComputers_2-OmaUri-End -->

<!-- MMC_ADMComputers_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_ADMComputers_2-Description-End -->

<!-- MMC_ADMComputers_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_ADMComputers_2-Editable-End -->

<!-- MMC_ADMComputers_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_ADMComputers_2-DFProperties-End -->

<!-- MMC_ADMComputers_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_ADMComputers_2 |
| Friendly Name | Administrative Templates (Computers) |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy > Resultant Set of Policy snap-in extensions |
| Registry Key Name | Software\Policies\Microsoft\MMC\{B6F9C8AE-EF3A-41C8-A911-37370C331DD4} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_ADMComputers_2-AdmxBacked-End -->

<!-- MMC_ADMComputers_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_ADMComputers_2-Examples-End -->

<!-- MMC_ADMComputers_2-End -->

<!-- MMC_ADMUsers_1-Begin -->
## MMC_ADMUsers_1

<!-- MMC_ADMUsers_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_ADMUsers_1-Applicability-End -->

<!-- MMC_ADMUsers_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_ADMUsers_1
```
<!-- MMC_ADMUsers_1-OmaUri-End -->

<!-- MMC_ADMUsers_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_ADMUsers_1-Description-End -->

<!-- MMC_ADMUsers_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_ADMUsers_1-Editable-End -->

<!-- MMC_ADMUsers_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_ADMUsers_1-DFProperties-End -->

<!-- MMC_ADMUsers_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_ADMUsers_1 |
| Friendly Name | Administrative Templates (Users) |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy > Group Policy snap-in extensions |
| Registry Key Name | Software\Policies\Microsoft\MMC\{0F6B957E-509E-11D1-A7CC-0000F87571E3} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_ADMUsers_1-AdmxBacked-End -->

<!-- MMC_ADMUsers_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_ADMUsers_1-Examples-End -->

<!-- MMC_ADMUsers_1-End -->

<!-- MMC_ADMUsers_2-Begin -->
## MMC_ADMUsers_2

<!-- MMC_ADMUsers_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_ADMUsers_2-Applicability-End -->

<!-- MMC_ADMUsers_2-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_ADMUsers_2
```
<!-- MMC_ADMUsers_2-OmaUri-End -->

<!-- MMC_ADMUsers_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_ADMUsers_2-Description-End -->

<!-- MMC_ADMUsers_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_ADMUsers_2-Editable-End -->

<!-- MMC_ADMUsers_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_ADMUsers_2-DFProperties-End -->

<!-- MMC_ADMUsers_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_ADMUsers_2 |
| Friendly Name | Administrative Templates (Users) |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy > Resultant Set of Policy snap-in extensions |
| Registry Key Name | Software\Policies\Microsoft\MMC\{B6F9C8AF-EF3A-41C8-A911-37370C331DD4} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_ADMUsers_2-AdmxBacked-End -->

<!-- MMC_ADMUsers_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_ADMUsers_2-Examples-End -->

<!-- MMC_ADMUsers_2-End -->

<!-- MMC_ADSI-Begin -->
## MMC_ADSI

<!-- MMC_ADSI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_ADSI-Applicability-End -->

<!-- MMC_ADSI-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_ADSI
```
<!-- MMC_ADSI-OmaUri-End -->

<!-- MMC_ADSI-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_ADSI-Description-End -->

<!-- MMC_ADSI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_ADSI-Editable-End -->

<!-- MMC_ADSI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_ADSI-DFProperties-End -->

<!-- MMC_ADSI-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_ADSI |
| Friendly Name | ADSI Edit |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{1C5DACFA-16BA-11D2-81D0-0000F87A7AA3} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_ADSI-AdmxBacked-End -->

<!-- MMC_ADSI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_ADSI-Examples-End -->

<!-- MMC_ADSI-End -->

<!-- MMC_AppleTalkRouting-Begin -->
## MMC_AppleTalkRouting

<!-- MMC_AppleTalkRouting-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_AppleTalkRouting-Applicability-End -->

<!-- MMC_AppleTalkRouting-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_AppleTalkRouting
```
<!-- MMC_AppleTalkRouting-OmaUri-End -->

<!-- MMC_AppleTalkRouting-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_AppleTalkRouting-Description-End -->

<!-- MMC_AppleTalkRouting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_AppleTalkRouting-Editable-End -->

<!-- MMC_AppleTalkRouting-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_AppleTalkRouting-DFProperties-End -->

<!-- MMC_AppleTalkRouting-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_AppleTalkRouting |
| Friendly Name | AppleTalk Routing |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{1AA7F83C-C7F5-11D0-A376-00C04FC9DA04} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_AppleTalkRouting-AdmxBacked-End -->

<!-- MMC_AppleTalkRouting-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_AppleTalkRouting-Examples-End -->

<!-- MMC_AppleTalkRouting-End -->

<!-- MMC_AuthMan-Begin -->
## MMC_AuthMan

<!-- MMC_AuthMan-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_AuthMan-Applicability-End -->

<!-- MMC_AuthMan-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_AuthMan
```
<!-- MMC_AuthMan-OmaUri-End -->

<!-- MMC_AuthMan-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_AuthMan-Description-End -->

<!-- MMC_AuthMan-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_AuthMan-Editable-End -->

<!-- MMC_AuthMan-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_AuthMan-DFProperties-End -->

<!-- MMC_AuthMan-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_AuthMan |
| Friendly Name | Authorization Manager |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{1F5EEC01-1214-4D94-80C5-4BDCD2014DDD} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_AuthMan-AdmxBacked-End -->

<!-- MMC_AuthMan-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_AuthMan-Examples-End -->

<!-- MMC_AuthMan-End -->

<!-- MMC_CertAuth-Begin -->
## MMC_CertAuth

<!-- MMC_CertAuth-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_CertAuth-Applicability-End -->

<!-- MMC_CertAuth-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_CertAuth
```
<!-- MMC_CertAuth-OmaUri-End -->

<!-- MMC_CertAuth-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_CertAuth-Description-End -->

<!-- MMC_CertAuth-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_CertAuth-Editable-End -->

<!-- MMC_CertAuth-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_CertAuth-DFProperties-End -->

<!-- MMC_CertAuth-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_CertAuth |
| Friendly Name | Certification Authority |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{de751566-4cc6-11d1-8ca0-00c04fc297eb} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_CertAuth-AdmxBacked-End -->

<!-- MMC_CertAuth-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_CertAuth-Examples-End -->

<!-- MMC_CertAuth-End -->

<!-- MMC_CertAuthPolSet-Begin -->
## MMC_CertAuthPolSet

<!-- MMC_CertAuthPolSet-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_CertAuthPolSet-Applicability-End -->

<!-- MMC_CertAuthPolSet-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_CertAuthPolSet
```
<!-- MMC_CertAuthPolSet-OmaUri-End -->

<!-- MMC_CertAuthPolSet-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_CertAuthPolSet-Description-End -->

<!-- MMC_CertAuthPolSet-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_CertAuthPolSet-Editable-End -->

<!-- MMC_CertAuthPolSet-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_CertAuthPolSet-DFProperties-End -->

<!-- MMC_CertAuthPolSet-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_CertAuthPolSet |
| Friendly Name | Certification Authority Policy Settings |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{3F276EB4-70EE-11D1-8A0F-00C04FB93753} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_CertAuthPolSet-AdmxBacked-End -->

<!-- MMC_CertAuthPolSet-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_CertAuthPolSet-Examples-End -->

<!-- MMC_CertAuthPolSet-End -->

<!-- MMC_Certs-Begin -->
## MMC_Certs

<!-- MMC_Certs-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_Certs-Applicability-End -->

<!-- MMC_Certs-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_Certs
```
<!-- MMC_Certs-OmaUri-End -->

<!-- MMC_Certs-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_Certs-Description-End -->

<!-- MMC_Certs-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_Certs-Editable-End -->

<!-- MMC_Certs-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_Certs-DFProperties-End -->

<!-- MMC_Certs-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_Certs |
| Friendly Name | Certificates |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{53D6AB1D-2488-11D1-A28C-00C04FB94F17} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_Certs-AdmxBacked-End -->

<!-- MMC_Certs-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_Certs-Examples-End -->

<!-- MMC_Certs-End -->

<!-- MMC_CertsTemplate-Begin -->
## MMC_CertsTemplate

<!-- MMC_CertsTemplate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_CertsTemplate-Applicability-End -->

<!-- MMC_CertsTemplate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_CertsTemplate
```
<!-- MMC_CertsTemplate-OmaUri-End -->

<!-- MMC_CertsTemplate-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_CertsTemplate-Description-End -->

<!-- MMC_CertsTemplate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_CertsTemplate-Editable-End -->

<!-- MMC_CertsTemplate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_CertsTemplate-DFProperties-End -->

<!-- MMC_CertsTemplate-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_CertsTemplate |
| Friendly Name | Certificate Templates |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{A994E107-6854-4F3D-917C-E6F01670F6D3} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_CertsTemplate-AdmxBacked-End -->

<!-- MMC_CertsTemplate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_CertsTemplate-Examples-End -->

<!-- MMC_CertsTemplate-End -->

<!-- MMC_ComponentServices-Begin -->
## MMC_ComponentServices

<!-- MMC_ComponentServices-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_ComponentServices-Applicability-End -->

<!-- MMC_ComponentServices-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_ComponentServices
```
<!-- MMC_ComponentServices-OmaUri-End -->

<!-- MMC_ComponentServices-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_ComponentServices-Description-End -->

<!-- MMC_ComponentServices-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_ComponentServices-Editable-End -->

<!-- MMC_ComponentServices-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_ComponentServices-DFProperties-End -->

<!-- MMC_ComponentServices-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_ComponentServices |
| Friendly Name | Component Services |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{C9BC92DF-5B9A-11D1-8F00-00C04FC2C17B} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_ComponentServices-AdmxBacked-End -->

<!-- MMC_ComponentServices-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_ComponentServices-Examples-End -->

<!-- MMC_ComponentServices-End -->

<!-- MMC_ComputerManagement-Begin -->
## MMC_ComputerManagement

<!-- MMC_ComputerManagement-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_ComputerManagement-Applicability-End -->

<!-- MMC_ComputerManagement-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_ComputerManagement
```
<!-- MMC_ComputerManagement-OmaUri-End -->

<!-- MMC_ComputerManagement-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_ComputerManagement-Description-End -->

<!-- MMC_ComputerManagement-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_ComputerManagement-Editable-End -->

<!-- MMC_ComputerManagement-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_ComputerManagement-DFProperties-End -->

<!-- MMC_ComputerManagement-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_ComputerManagement |
| Friendly Name | Computer Management |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{58221C67-EA27-11CF-ADCF-00AA00A80033} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_ComputerManagement-AdmxBacked-End -->

<!-- MMC_ComputerManagement-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_ComputerManagement-Examples-End -->

<!-- MMC_ComputerManagement-End -->

<!-- MMC_ConnectionSharingNAT-Begin -->
## MMC_ConnectionSharingNAT

<!-- MMC_ConnectionSharingNAT-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_ConnectionSharingNAT-Applicability-End -->

<!-- MMC_ConnectionSharingNAT-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_ConnectionSharingNAT
```
<!-- MMC_ConnectionSharingNAT-OmaUri-End -->

<!-- MMC_ConnectionSharingNAT-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_ConnectionSharingNAT-Description-End -->

<!-- MMC_ConnectionSharingNAT-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_ConnectionSharingNAT-Editable-End -->

<!-- MMC_ConnectionSharingNAT-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_ConnectionSharingNAT-DFProperties-End -->

<!-- MMC_ConnectionSharingNAT-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_ConnectionSharingNAT |
| Friendly Name | Connection Sharing (NAT) |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{C2FE450B-D6C2-11D0-A37B-00C04FC9DA04} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_ConnectionSharingNAT-AdmxBacked-End -->

<!-- MMC_ConnectionSharingNAT-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_ConnectionSharingNAT-Examples-End -->

<!-- MMC_ConnectionSharingNAT-End -->

<!-- MMC_DCOMCFG-Begin -->
## MMC_DCOMCFG

<!-- MMC_DCOMCFG-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_DCOMCFG-Applicability-End -->

<!-- MMC_DCOMCFG-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_DCOMCFG
```
<!-- MMC_DCOMCFG-OmaUri-End -->

<!-- MMC_DCOMCFG-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_DCOMCFG-Description-End -->

<!-- MMC_DCOMCFG-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_DCOMCFG-Editable-End -->

<!-- MMC_DCOMCFG-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_DCOMCFG-DFProperties-End -->

<!-- MMC_DCOMCFG-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_DCOMCFG |
| Friendly Name | DCOM Configuration Extension |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{9EC88934-C774-11d1-87F4-00C04FC2C17B} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_DCOMCFG-AdmxBacked-End -->

<!-- MMC_DCOMCFG-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_DCOMCFG-Examples-End -->

<!-- MMC_DCOMCFG-End -->

<!-- MMC_DeviceManager_1-Begin -->
## MMC_DeviceManager_1

<!-- MMC_DeviceManager_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_DeviceManager_1-Applicability-End -->

<!-- MMC_DeviceManager_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_DeviceManager_1
```
<!-- MMC_DeviceManager_1-OmaUri-End -->

<!-- MMC_DeviceManager_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_DeviceManager_1-Description-End -->

<!-- MMC_DeviceManager_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_DeviceManager_1-Editable-End -->

<!-- MMC_DeviceManager_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_DeviceManager_1-DFProperties-End -->

<!-- MMC_DeviceManager_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_DeviceManager_1 |
| Friendly Name | Device Manager |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{90087284-d6d6-11d0-8353-00a0c90640bf} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_DeviceManager_1-AdmxBacked-End -->

<!-- MMC_DeviceManager_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_DeviceManager_1-Examples-End -->

<!-- MMC_DeviceManager_1-End -->

<!-- MMC_DeviceManager_2-Begin -->
## MMC_DeviceManager_2

<!-- MMC_DeviceManager_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_DeviceManager_2-Applicability-End -->

<!-- MMC_DeviceManager_2-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_DeviceManager_2
```
<!-- MMC_DeviceManager_2-OmaUri-End -->

<!-- MMC_DeviceManager_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_DeviceManager_2-Description-End -->

<!-- MMC_DeviceManager_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_DeviceManager_2-Editable-End -->

<!-- MMC_DeviceManager_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_DeviceManager_2-DFProperties-End -->

<!-- MMC_DeviceManager_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_DeviceManager_2 |
| Friendly Name | Device Manager |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{74246bfc-4c96-11d0-abef-0020af6b0b7a} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_DeviceManager_2-AdmxBacked-End -->

<!-- MMC_DeviceManager_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_DeviceManager_2-Examples-End -->

<!-- MMC_DeviceManager_2-End -->

<!-- MMC_DFS-Begin -->
## MMC_DFS

<!-- MMC_DFS-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_DFS-Applicability-End -->

<!-- MMC_DFS-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_DFS
```
<!-- MMC_DFS-OmaUri-End -->

<!-- MMC_DFS-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_DFS-Description-End -->

<!-- MMC_DFS-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_DFS-Editable-End -->

<!-- MMC_DFS-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_DFS-DFProperties-End -->

<!-- MMC_DFS-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_DFS |
| Friendly Name | Distributed File System |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{677A2D94-28D9-11D1-A95B-008048918FB1} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_DFS-AdmxBacked-End -->

<!-- MMC_DFS-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_DFS-Examples-End -->

<!-- MMC_DFS-End -->

<!-- MMC_DHCPRelayMgmt-Begin -->
## MMC_DHCPRelayMgmt

<!-- MMC_DHCPRelayMgmt-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_DHCPRelayMgmt-Applicability-End -->

<!-- MMC_DHCPRelayMgmt-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_DHCPRelayMgmt
```
<!-- MMC_DHCPRelayMgmt-OmaUri-End -->

<!-- MMC_DHCPRelayMgmt-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_DHCPRelayMgmt-Description-End -->

<!-- MMC_DHCPRelayMgmt-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_DHCPRelayMgmt-Editable-End -->

<!-- MMC_DHCPRelayMgmt-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_DHCPRelayMgmt-DFProperties-End -->

<!-- MMC_DHCPRelayMgmt-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_DHCPRelayMgmt |
| Friendly Name | DHCP Relay Management |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{C2FE4502-D6C2-11D0-A37B-00C04FC9DA04} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_DHCPRelayMgmt-AdmxBacked-End -->

<!-- MMC_DHCPRelayMgmt-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_DHCPRelayMgmt-Examples-End -->

<!-- MMC_DHCPRelayMgmt-End -->

<!-- MMC_DiskDefrag-Begin -->
## MMC_DiskDefrag

<!-- MMC_DiskDefrag-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_DiskDefrag-Applicability-End -->

<!-- MMC_DiskDefrag-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_DiskDefrag
```
<!-- MMC_DiskDefrag-OmaUri-End -->

<!-- MMC_DiskDefrag-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_DiskDefrag-Description-End -->

<!-- MMC_DiskDefrag-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_DiskDefrag-Editable-End -->

<!-- MMC_DiskDefrag-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_DiskDefrag-DFProperties-End -->

<!-- MMC_DiskDefrag-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_DiskDefrag |
| Friendly Name | Disk Defragmenter |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{43668E21-2636-11D1-A1CE-0080C88593A5} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_DiskDefrag-AdmxBacked-End -->

<!-- MMC_DiskDefrag-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_DiskDefrag-Examples-End -->

<!-- MMC_DiskDefrag-End -->

<!-- MMC_DiskMgmt-Begin -->
## MMC_DiskMgmt

<!-- MMC_DiskMgmt-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_DiskMgmt-Applicability-End -->

<!-- MMC_DiskMgmt-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_DiskMgmt
```
<!-- MMC_DiskMgmt-OmaUri-End -->

<!-- MMC_DiskMgmt-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_DiskMgmt-Description-End -->

<!-- MMC_DiskMgmt-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_DiskMgmt-Editable-End -->

<!-- MMC_DiskMgmt-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_DiskMgmt-DFProperties-End -->

<!-- MMC_DiskMgmt-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_DiskMgmt |
| Friendly Name | Disk Management |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{8EAD3A12-B2C1-11d0-83AA-00A0C92C9D5D} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_DiskMgmt-AdmxBacked-End -->

<!-- MMC_DiskMgmt-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_DiskMgmt-Examples-End -->

<!-- MMC_DiskMgmt-End -->

<!-- MMC_EnterprisePKI-Begin -->
## MMC_EnterprisePKI

<!-- MMC_EnterprisePKI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_EnterprisePKI-Applicability-End -->

<!-- MMC_EnterprisePKI-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_EnterprisePKI
```
<!-- MMC_EnterprisePKI-OmaUri-End -->

<!-- MMC_EnterprisePKI-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_EnterprisePKI-Description-End -->

<!-- MMC_EnterprisePKI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_EnterprisePKI-Editable-End -->

<!-- MMC_EnterprisePKI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_EnterprisePKI-DFProperties-End -->

<!-- MMC_EnterprisePKI-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_EnterprisePKI |
| Friendly Name | Enterprise PKI |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{634BDE40-E5E1-49A1-B2CD-140FFFC830F9} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_EnterprisePKI-AdmxBacked-End -->

<!-- MMC_EnterprisePKI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_EnterprisePKI-Examples-End -->

<!-- MMC_EnterprisePKI-End -->

<!-- MMC_EventViewer_1-Begin -->
## MMC_EventViewer_1

<!-- MMC_EventViewer_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_EventViewer_1-Applicability-End -->

<!-- MMC_EventViewer_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_EventViewer_1
```
<!-- MMC_EventViewer_1-OmaUri-End -->

<!-- MMC_EventViewer_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_EventViewer_1-Description-End -->

<!-- MMC_EventViewer_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_EventViewer_1-Editable-End -->

<!-- MMC_EventViewer_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_EventViewer_1-DFProperties-End -->

<!-- MMC_EventViewer_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_EventViewer_1 |
| Friendly Name | Event Viewer |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{394C052E-B830-11D0-9A86-00C04FD8DBF7} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_EventViewer_1-AdmxBacked-End -->

<!-- MMC_EventViewer_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_EventViewer_1-Examples-End -->

<!-- MMC_EventViewer_1-End -->

<!-- MMC_EventViewer_2-Begin -->
## MMC_EventViewer_2

<!-- MMC_EventViewer_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_EventViewer_2-Applicability-End -->

<!-- MMC_EventViewer_2-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_EventViewer_2
```
<!-- MMC_EventViewer_2-OmaUri-End -->

<!-- MMC_EventViewer_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_EventViewer_2-Description-End -->

<!-- MMC_EventViewer_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_EventViewer_2-Editable-End -->

<!-- MMC_EventViewer_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_EventViewer_2-DFProperties-End -->

<!-- MMC_EventViewer_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_EventViewer_2 |
| Friendly Name | Event Viewer (Windows Vista) |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\FX:{b05566ae-fe9c-4363-be05-7a4cbb7cb510} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_EventViewer_2-AdmxBacked-End -->

<!-- MMC_EventViewer_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_EventViewer_2-Examples-End -->

<!-- MMC_EventViewer_2-End -->

<!-- MMC_EventViewer_3-Begin -->
## MMC_EventViewer_3

<!-- MMC_EventViewer_3-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_EventViewer_3-Applicability-End -->

<!-- MMC_EventViewer_3-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_EventViewer_3
```
<!-- MMC_EventViewer_3-OmaUri-End -->

<!-- MMC_EventViewer_3-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_EventViewer_3-Description-End -->

<!-- MMC_EventViewer_3-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_EventViewer_3-Editable-End -->

<!-- MMC_EventViewer_3-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_EventViewer_3-DFProperties-End -->

<!-- MMC_EventViewer_3-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_EventViewer_3 |
| Friendly Name | Event Viewer |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{975797FC-4E2A-11D0-B702-00C04FD8DBF7} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_EventViewer_3-AdmxBacked-End -->

<!-- MMC_EventViewer_3-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_EventViewer_3-Examples-End -->

<!-- MMC_EventViewer_3-End -->

<!-- MMC_EventViewer_4-Begin -->
## MMC_EventViewer_4

<!-- MMC_EventViewer_4-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_EventViewer_4-Applicability-End -->

<!-- MMC_EventViewer_4-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_EventViewer_4
```
<!-- MMC_EventViewer_4-OmaUri-End -->

<!-- MMC_EventViewer_4-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_EventViewer_4-Description-End -->

<!-- MMC_EventViewer_4-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_EventViewer_4-Editable-End -->

<!-- MMC_EventViewer_4-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_EventViewer_4-DFProperties-End -->

<!-- MMC_EventViewer_4-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_EventViewer_4 |
| Friendly Name | Event Viewer (Windows Vista) |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\FX:{b05566ad-fe9c-4363-be05-7a4cbb7cb510} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_EventViewer_4-AdmxBacked-End -->

<!-- MMC_EventViewer_4-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_EventViewer_4-Examples-End -->

<!-- MMC_EventViewer_4-End -->

<!-- MMC_FailoverClusters-Begin -->
## MMC_FailoverClusters

<!-- MMC_FailoverClusters-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_FailoverClusters-Applicability-End -->

<!-- MMC_FailoverClusters-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_FailoverClusters
```
<!-- MMC_FailoverClusters-OmaUri-End -->

<!-- MMC_FailoverClusters-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_FailoverClusters-Description-End -->

<!-- MMC_FailoverClusters-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_FailoverClusters-Editable-End -->

<!-- MMC_FailoverClusters-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_FailoverClusters-DFProperties-End -->

<!-- MMC_FailoverClusters-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_FailoverClusters |
| Friendly Name | Failover Clusters Manager |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\FX:{D2779945-405B-4ACE-8618-508F3E3054AC} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_FailoverClusters-AdmxBacked-End -->

<!-- MMC_FailoverClusters-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_FailoverClusters-Examples-End -->

<!-- MMC_FailoverClusters-End -->

<!-- MMC_FAXService-Begin -->
## MMC_FAXService

<!-- MMC_FAXService-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_FAXService-Applicability-End -->

<!-- MMC_FAXService-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_FAXService
```
<!-- MMC_FAXService-OmaUri-End -->

<!-- MMC_FAXService-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_FAXService-Description-End -->

<!-- MMC_FAXService-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_FAXService-Editable-End -->

<!-- MMC_FAXService-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_FAXService-DFProperties-End -->

<!-- MMC_FAXService-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_FAXService |
| Friendly Name | FAX Service |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{753EDB4D-2E1B-11D1-9064-00A0C90AB504} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_FAXService-AdmxBacked-End -->

<!-- MMC_FAXService-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_FAXService-Examples-End -->

<!-- MMC_FAXService-End -->

<!-- MMC_FolderRedirection_1-Begin -->
## MMC_FolderRedirection_1

<!-- MMC_FolderRedirection_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_FolderRedirection_1-Applicability-End -->

<!-- MMC_FolderRedirection_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_FolderRedirection_1
```
<!-- MMC_FolderRedirection_1-OmaUri-End -->

<!-- MMC_FolderRedirection_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_FolderRedirection_1-Description-End -->

<!-- MMC_FolderRedirection_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_FolderRedirection_1-Editable-End -->

<!-- MMC_FolderRedirection_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_FolderRedirection_1-DFProperties-End -->

<!-- MMC_FolderRedirection_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_FolderRedirection_1 |
| Friendly Name | Folder Redirection |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy > Group Policy snap-in extensions |
| Registry Key Name | Software\Policies\Microsoft\MMC\{88E729D6-BDC1-11D1-BD2A-00C04FB9603F} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_FolderRedirection_1-AdmxBacked-End -->

<!-- MMC_FolderRedirection_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_FolderRedirection_1-Examples-End -->

<!-- MMC_FolderRedirection_1-End -->

<!-- MMC_FolderRedirection_2-Begin -->
## MMC_FolderRedirection_2

<!-- MMC_FolderRedirection_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_FolderRedirection_2-Applicability-End -->

<!-- MMC_FolderRedirection_2-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_FolderRedirection_2
```
<!-- MMC_FolderRedirection_2-OmaUri-End -->

<!-- MMC_FolderRedirection_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_FolderRedirection_2-Description-End -->

<!-- MMC_FolderRedirection_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_FolderRedirection_2-Editable-End -->

<!-- MMC_FolderRedirection_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_FolderRedirection_2-DFProperties-End -->

<!-- MMC_FolderRedirection_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_FolderRedirection_2 |
| Friendly Name | Folder Redirection |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy > Resultant Set of Policy snap-in extensions |
| Registry Key Name | Software\Policies\Microsoft\MMC\{c40d66a0-e90c-46c6-aa3b-473e38c72bf2} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_FolderRedirection_2-AdmxBacked-End -->

<!-- MMC_FolderRedirection_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_FolderRedirection_2-Examples-End -->

<!-- MMC_FolderRedirection_2-End -->

<!-- MMC_FrontPageExt-Begin -->
## MMC_FrontPageExt

<!-- MMC_FrontPageExt-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_FrontPageExt-Applicability-End -->

<!-- MMC_FrontPageExt-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_FrontPageExt
```
<!-- MMC_FrontPageExt-OmaUri-End -->

<!-- MMC_FrontPageExt-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_FrontPageExt-Description-End -->

<!-- MMC_FrontPageExt-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_FrontPageExt-Editable-End -->

<!-- MMC_FrontPageExt-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_FrontPageExt-DFProperties-End -->

<!-- MMC_FrontPageExt-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_FrontPageExt |
| Friendly Name | FrontPage Server Extensions |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{FF5903A8-78D6-11D1-92F6-006097B01056} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_FrontPageExt-AdmxBacked-End -->

<!-- MMC_FrontPageExt-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_FrontPageExt-Examples-End -->

<!-- MMC_FrontPageExt-End -->

<!-- MMC_GroupPolicyManagementSnapIn-Begin -->
## MMC_GroupPolicyManagementSnapIn

<!-- MMC_GroupPolicyManagementSnapIn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_GroupPolicyManagementSnapIn-Applicability-End -->

<!-- MMC_GroupPolicyManagementSnapIn-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_GroupPolicyManagementSnapIn
```
<!-- MMC_GroupPolicyManagementSnapIn-OmaUri-End -->

<!-- MMC_GroupPolicyManagementSnapIn-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_GroupPolicyManagementSnapIn-Description-End -->

<!-- MMC_GroupPolicyManagementSnapIn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_GroupPolicyManagementSnapIn-Editable-End -->

<!-- MMC_GroupPolicyManagementSnapIn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_GroupPolicyManagementSnapIn-DFProperties-End -->

<!-- MMC_GroupPolicyManagementSnapIn-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_GroupPolicyManagementSnapIn |
| Friendly Name | Group Policy Management |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\MMC\{E12BBB5D-D59D-4E61-947A-301D25AE8C23} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_GroupPolicyManagementSnapIn-AdmxBacked-End -->

<!-- MMC_GroupPolicyManagementSnapIn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_GroupPolicyManagementSnapIn-Examples-End -->

<!-- MMC_GroupPolicyManagementSnapIn-End -->

<!-- MMC_GroupPolicySnapIn-Begin -->
## MMC_GroupPolicySnapIn

<!-- MMC_GroupPolicySnapIn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_GroupPolicySnapIn-Applicability-End -->

<!-- MMC_GroupPolicySnapIn-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_GroupPolicySnapIn
```
<!-- MMC_GroupPolicySnapIn-OmaUri-End -->

<!-- MMC_GroupPolicySnapIn-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_GroupPolicySnapIn-Description-End -->

<!-- MMC_GroupPolicySnapIn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_GroupPolicySnapIn-Editable-End -->

<!-- MMC_GroupPolicySnapIn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_GroupPolicySnapIn-DFProperties-End -->

<!-- MMC_GroupPolicySnapIn-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_GroupPolicySnapIn |
| Friendly Name | Group Policy Object Editor |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\MMC\{8FC0B734-A0E1-11D1-A7D3-0000F87571E3} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_GroupPolicySnapIn-AdmxBacked-End -->

<!-- MMC_GroupPolicySnapIn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_GroupPolicySnapIn-Examples-End -->

<!-- MMC_GroupPolicySnapIn-End -->

<!-- MMC_GroupPolicyTab-Begin -->
## MMC_GroupPolicyTab

<!-- MMC_GroupPolicyTab-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_GroupPolicyTab-Applicability-End -->

<!-- MMC_GroupPolicyTab-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_GroupPolicyTab
```
<!-- MMC_GroupPolicyTab-OmaUri-End -->

<!-- MMC_GroupPolicyTab-Description-Begin -->
<!-- Description-Source-ADMX -->
Permits or prohibits use of the Group Policy tab in property sheets for the Active Directory Users and Computers and Active Directory Sites and Services snap-ins.

If you enable this setting, the Group Policy tab is displayed in the property sheet for a site, domain, or organizational unit displayed by the Active Directory Users and Computers and Active Directory Sites and Services snap-ins. If you disable the setting, the Group Policy tab isn't displayed in those snap-ins.

If this setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this tab is displayed.

- If "Restrict users to the explicitly permitted list of snap-ins" is enabled, users won't have access to the Group Policy tab.

To explicitly permit use of the Group Policy tab, enable this setting. If this setting isn't configured (or disabled), the Group Policy tab is inaccessible.

- If "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users will have access to the Group Policy tab.

To explicitly prohibit use of the Group Policy tab, disable this setting. If this setting isn't configured (or enabled), the Group Policy tab is accessible.

When the Group Policy tab is inaccessible, it doesn't appear in the site, domain, or organizational unit property sheets.
<!-- MMC_GroupPolicyTab-Description-End -->

<!-- MMC_GroupPolicyTab-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_GroupPolicyTab-Editable-End -->

<!-- MMC_GroupPolicyTab-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_GroupPolicyTab-DFProperties-End -->

<!-- MMC_GroupPolicyTab-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_GroupPolicyTab |
| Friendly Name | Group Policy tab for Active Directory Tools |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\MMC\{D70A2BEA-A63E-11D1-A7D4-0000F87571E3} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_GroupPolicyTab-AdmxBacked-End -->

<!-- MMC_GroupPolicyTab-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_GroupPolicyTab-Examples-End -->

<!-- MMC_GroupPolicyTab-End -->

<!-- MMC_HRA-Begin -->
## MMC_HRA

<!-- MMC_HRA-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_HRA-Applicability-End -->

<!-- MMC_HRA-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_HRA
```
<!-- MMC_HRA-OmaUri-End -->

<!-- MMC_HRA-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_HRA-Description-End -->

<!-- MMC_HRA-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_HRA-Editable-End -->

<!-- MMC_HRA-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_HRA-DFProperties-End -->

<!-- MMC_HRA-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_HRA |
| Friendly Name | Health Registration Authority (HRA) |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\FX:{89cc9588-7628-4d29-8e4a-6550d0087059} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_HRA-AdmxBacked-End -->

<!-- MMC_HRA-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_HRA-Examples-End -->

<!-- MMC_HRA-End -->

<!-- MMC_IAS-Begin -->
## MMC_IAS

<!-- MMC_IAS-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_IAS-Applicability-End -->

<!-- MMC_IAS-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_IAS
```
<!-- MMC_IAS-OmaUri-End -->

<!-- MMC_IAS-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_IAS-Description-End -->

<!-- MMC_IAS-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_IAS-Editable-End -->

<!-- MMC_IAS-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_IAS-DFProperties-End -->

<!-- MMC_IAS-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_IAS |
| Friendly Name | Internet Authentication Service (IAS) |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{8F8F8DC0-5713-11D1-9551-0060B0576642} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_IAS-AdmxBacked-End -->

<!-- MMC_IAS-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_IAS-Examples-End -->

<!-- MMC_IAS-End -->

<!-- MMC_IASLogging-Begin -->
## MMC_IASLogging

<!-- MMC_IASLogging-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_IASLogging-Applicability-End -->

<!-- MMC_IASLogging-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_IASLogging
```
<!-- MMC_IASLogging-OmaUri-End -->

<!-- MMC_IASLogging-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_IASLogging-Description-End -->

<!-- MMC_IASLogging-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_IASLogging-Editable-End -->

<!-- MMC_IASLogging-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_IASLogging-DFProperties-End -->

<!-- MMC_IASLogging-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_IASLogging |
| Friendly Name | IAS Logging |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{2E19B602-48EB-11d2-83CA-00104BCA42CF} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_IASLogging-AdmxBacked-End -->

<!-- MMC_IASLogging-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_IASLogging-Examples-End -->

<!-- MMC_IASLogging-End -->

<!-- MMC_IEMaintenance_1-Begin -->
## MMC_IEMaintenance_1

<!-- MMC_IEMaintenance_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_IEMaintenance_1-Applicability-End -->

<!-- MMC_IEMaintenance_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_IEMaintenance_1
```
<!-- MMC_IEMaintenance_1-OmaUri-End -->

<!-- MMC_IEMaintenance_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_IEMaintenance_1-Description-End -->

<!-- MMC_IEMaintenance_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_IEMaintenance_1-Editable-End -->

<!-- MMC_IEMaintenance_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_IEMaintenance_1-DFProperties-End -->

<!-- MMC_IEMaintenance_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_IEMaintenance_1 |
| Friendly Name | Internet Explorer Maintenance |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy > Group Policy snap-in extensions |
| Registry Key Name | Software\Policies\Microsoft\MMC\{FC715823-C5FB-11D1-9EEF-00A0C90347FF} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_IEMaintenance_1-AdmxBacked-End -->

<!-- MMC_IEMaintenance_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_IEMaintenance_1-Examples-End -->

<!-- MMC_IEMaintenance_1-End -->

<!-- MMC_IEMaintenance_2-Begin -->
## MMC_IEMaintenance_2

<!-- MMC_IEMaintenance_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_IEMaintenance_2-Applicability-End -->

<!-- MMC_IEMaintenance_2-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_IEMaintenance_2
```
<!-- MMC_IEMaintenance_2-OmaUri-End -->

<!-- MMC_IEMaintenance_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_IEMaintenance_2-Description-End -->

<!-- MMC_IEMaintenance_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_IEMaintenance_2-Editable-End -->

<!-- MMC_IEMaintenance_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_IEMaintenance_2-DFProperties-End -->

<!-- MMC_IEMaintenance_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_IEMaintenance_2 |
| Friendly Name | Internet Explorer Maintenance |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy > Resultant Set of Policy snap-in extensions |
| Registry Key Name | Software\Policies\Microsoft\MMC\{d524927d-6c08-46bf-86af-391534d779d3} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_IEMaintenance_2-AdmxBacked-End -->

<!-- MMC_IEMaintenance_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_IEMaintenance_2-Examples-End -->

<!-- MMC_IEMaintenance_2-End -->

<!-- MMC_IGMPRouting-Begin -->
## MMC_IGMPRouting

<!-- MMC_IGMPRouting-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_IGMPRouting-Applicability-End -->

<!-- MMC_IGMPRouting-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_IGMPRouting
```
<!-- MMC_IGMPRouting-OmaUri-End -->

<!-- MMC_IGMPRouting-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_IGMPRouting-Description-End -->

<!-- MMC_IGMPRouting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_IGMPRouting-Editable-End -->

<!-- MMC_IGMPRouting-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_IGMPRouting-DFProperties-End -->

<!-- MMC_IGMPRouting-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_IGMPRouting |
| Friendly Name | IGMP Routing |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{C2FE4508-D6C2-11D0-A37B-00C04FC9DA04} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_IGMPRouting-AdmxBacked-End -->

<!-- MMC_IGMPRouting-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_IGMPRouting-Examples-End -->

<!-- MMC_IGMPRouting-End -->

<!-- MMC_IIS-Begin -->
## MMC_IIS

<!-- MMC_IIS-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_IIS-Applicability-End -->

<!-- MMC_IIS-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_IIS
```
<!-- MMC_IIS-OmaUri-End -->

<!-- MMC_IIS-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_IIS-Description-End -->

<!-- MMC_IIS-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_IIS-Editable-End -->

<!-- MMC_IIS-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_IIS-DFProperties-End -->

<!-- MMC_IIS-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_IIS |
| Friendly Name | Internet Information Services |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{A841B6C2-7577-11D0-BB1F-00A0C922E79C} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_IIS-AdmxBacked-End -->

<!-- MMC_IIS-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_IIS-Examples-End -->

<!-- MMC_IIS-End -->

<!-- MMC_IndexingService-Begin -->
## MMC_IndexingService

<!-- MMC_IndexingService-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_IndexingService-Applicability-End -->

<!-- MMC_IndexingService-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_IndexingService
```
<!-- MMC_IndexingService-OmaUri-End -->

<!-- MMC_IndexingService-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_IndexingService-Description-End -->

<!-- MMC_IndexingService-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_IndexingService-Editable-End -->

<!-- MMC_IndexingService-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_IndexingService-DFProperties-End -->

<!-- MMC_IndexingService-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_IndexingService |
| Friendly Name | Indexing Service |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{95AD72F0-44CE-11D0-AE29-00AA004B9986} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_IndexingService-AdmxBacked-End -->

<!-- MMC_IndexingService-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_IndexingService-Examples-End -->

<!-- MMC_IndexingService-End -->

<!-- MMC_IPRouting-Begin -->
## MMC_IPRouting

<!-- MMC_IPRouting-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_IPRouting-Applicability-End -->

<!-- MMC_IPRouting-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_IPRouting
```
<!-- MMC_IPRouting-OmaUri-End -->

<!-- MMC_IPRouting-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_IPRouting-Description-End -->

<!-- MMC_IPRouting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_IPRouting-Editable-End -->

<!-- MMC_IPRouting-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_IPRouting-DFProperties-End -->

<!-- MMC_IPRouting-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_IPRouting |
| Friendly Name | IP Routing |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{C2FE4500-D6C2-11D0-A37B-00C04FC9DA04} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_IPRouting-AdmxBacked-End -->

<!-- MMC_IPRouting-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_IPRouting-Examples-End -->

<!-- MMC_IPRouting-End -->

<!-- MMC_IpSecManage-Begin -->
## MMC_IpSecManage

<!-- MMC_IpSecManage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_IpSecManage-Applicability-End -->

<!-- MMC_IpSecManage-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_IpSecManage
```
<!-- MMC_IpSecManage-OmaUri-End -->

<!-- MMC_IpSecManage-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_IpSecManage-Description-End -->

<!-- MMC_IpSecManage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_IpSecManage-Editable-End -->

<!-- MMC_IpSecManage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_IpSecManage-DFProperties-End -->

<!-- MMC_IpSecManage-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_IpSecManage |
| Friendly Name | IP Security Policy Management |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{DEA8AFA2-CC85-11d0-9CE2-0080C7221EBD} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_IpSecManage-AdmxBacked-End -->

<!-- MMC_IpSecManage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_IpSecManage-Examples-End -->

<!-- MMC_IpSecManage-End -->

<!-- MMC_IPSecManage_GP-Begin -->
## MMC_IPSecManage_GP

<!-- MMC_IPSecManage_GP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_IPSecManage_GP-Applicability-End -->

<!-- MMC_IPSecManage_GP-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_IPSecManage_GP
```
<!-- MMC_IPSecManage_GP-OmaUri-End -->

<!-- MMC_IPSecManage_GP-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_IPSecManage_GP-Description-End -->

<!-- MMC_IPSecManage_GP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_IPSecManage_GP-Editable-End -->

<!-- MMC_IPSecManage_GP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_IPSecManage_GP-DFProperties-End -->

<!-- MMC_IPSecManage_GP-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_IPSecManage_GP |
| Friendly Name | IP Security Policy Management |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy > Group Policy snap-in extensions |
| Registry Key Name | Software\Policies\Microsoft\MMC\{DEA8AFA0-CC85-11d0-9CE2-0080C7221EBD} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_IPSecManage_GP-AdmxBacked-End -->

<!-- MMC_IPSecManage_GP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_IPSecManage_GP-Examples-End -->

<!-- MMC_IPSecManage_GP-End -->

<!-- MMC_IpSecMonitor-Begin -->
## MMC_IpSecMonitor

<!-- MMC_IpSecMonitor-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_IpSecMonitor-Applicability-End -->

<!-- MMC_IpSecMonitor-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_IpSecMonitor
```
<!-- MMC_IpSecMonitor-OmaUri-End -->

<!-- MMC_IpSecMonitor-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_IpSecMonitor-Description-End -->

<!-- MMC_IpSecMonitor-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_IpSecMonitor-Editable-End -->

<!-- MMC_IpSecMonitor-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_IpSecMonitor-DFProperties-End -->

<!-- MMC_IpSecMonitor-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_IpSecMonitor |
| Friendly Name | IP Security Monitor |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{57C596D0-9370-40C0-BA0D-AB491B63255D} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_IpSecMonitor-AdmxBacked-End -->

<!-- MMC_IpSecMonitor-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_IpSecMonitor-Examples-End -->

<!-- MMC_IpSecMonitor-End -->

<!-- MMC_IPXRIPRouting-Begin -->
## MMC_IPXRIPRouting

<!-- MMC_IPXRIPRouting-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_IPXRIPRouting-Applicability-End -->

<!-- MMC_IPXRIPRouting-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_IPXRIPRouting
```
<!-- MMC_IPXRIPRouting-OmaUri-End -->

<!-- MMC_IPXRIPRouting-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_IPXRIPRouting-Description-End -->

<!-- MMC_IPXRIPRouting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_IPXRIPRouting-Editable-End -->

<!-- MMC_IPXRIPRouting-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_IPXRIPRouting-DFProperties-End -->

<!-- MMC_IPXRIPRouting-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_IPXRIPRouting |
| Friendly Name | IPX RIP Routing |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{90810502-38F1-11D1-9345-00C04FC9DA04} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_IPXRIPRouting-AdmxBacked-End -->

<!-- MMC_IPXRIPRouting-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_IPXRIPRouting-Examples-End -->

<!-- MMC_IPXRIPRouting-End -->

<!-- MMC_IPXRouting-Begin -->
## MMC_IPXRouting

<!-- MMC_IPXRouting-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_IPXRouting-Applicability-End -->

<!-- MMC_IPXRouting-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_IPXRouting
```
<!-- MMC_IPXRouting-OmaUri-End -->

<!-- MMC_IPXRouting-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_IPXRouting-Description-End -->

<!-- MMC_IPXRouting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_IPXRouting-Editable-End -->

<!-- MMC_IPXRouting-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_IPXRouting-DFProperties-End -->

<!-- MMC_IPXRouting-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_IPXRouting |
| Friendly Name | IPX Routing |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{90810500-38F1-11D1-9345-00C04FC9DA04} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_IPXRouting-AdmxBacked-End -->

<!-- MMC_IPXRouting-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_IPXRouting-Examples-End -->

<!-- MMC_IPXRouting-End -->

<!-- MMC_IPXSAPRouting-Begin -->
## MMC_IPXSAPRouting

<!-- MMC_IPXSAPRouting-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_IPXSAPRouting-Applicability-End -->

<!-- MMC_IPXSAPRouting-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_IPXSAPRouting
```
<!-- MMC_IPXSAPRouting-OmaUri-End -->

<!-- MMC_IPXSAPRouting-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_IPXSAPRouting-Description-End -->

<!-- MMC_IPXSAPRouting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_IPXSAPRouting-Editable-End -->

<!-- MMC_IPXSAPRouting-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_IPXSAPRouting-DFProperties-End -->

<!-- MMC_IPXSAPRouting-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_IPXSAPRouting |
| Friendly Name | IPX SAP Routing |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{90810504-38F1-11D1-9345-00C04FC9DA04} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_IPXSAPRouting-AdmxBacked-End -->

<!-- MMC_IPXSAPRouting-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_IPXSAPRouting-Examples-End -->

<!-- MMC_IPXSAPRouting-End -->

<!-- MMC_LocalUsersGroups-Begin -->
## MMC_LocalUsersGroups

<!-- MMC_LocalUsersGroups-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_LocalUsersGroups-Applicability-End -->

<!-- MMC_LocalUsersGroups-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_LocalUsersGroups
```
<!-- MMC_LocalUsersGroups-OmaUri-End -->

<!-- MMC_LocalUsersGroups-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_LocalUsersGroups-Description-End -->

<!-- MMC_LocalUsersGroups-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_LocalUsersGroups-Editable-End -->

<!-- MMC_LocalUsersGroups-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_LocalUsersGroups-DFProperties-End -->

<!-- MMC_LocalUsersGroups-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_LocalUsersGroups |
| Friendly Name | Local Users and Groups |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{5D6179C8-17EC-11D1-9AA9-00C04FD8FE93} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_LocalUsersGroups-AdmxBacked-End -->

<!-- MMC_LocalUsersGroups-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_LocalUsersGroups-Examples-End -->

<!-- MMC_LocalUsersGroups-End -->

<!-- MMC_LogicalMappedDrives-Begin -->
## MMC_LogicalMappedDrives

<!-- MMC_LogicalMappedDrives-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_LogicalMappedDrives-Applicability-End -->

<!-- MMC_LogicalMappedDrives-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_LogicalMappedDrives
```
<!-- MMC_LogicalMappedDrives-OmaUri-End -->

<!-- MMC_LogicalMappedDrives-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_LogicalMappedDrives-Description-End -->

<!-- MMC_LogicalMappedDrives-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_LogicalMappedDrives-Editable-End -->

<!-- MMC_LogicalMappedDrives-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_LogicalMappedDrives-DFProperties-End -->

<!-- MMC_LogicalMappedDrives-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_LogicalMappedDrives |
| Friendly Name | Logical and Mapped Drives |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{6E8E0081-19CD-11D1-AD91-00AA00B8E05A} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_LogicalMappedDrives-AdmxBacked-End -->

<!-- MMC_LogicalMappedDrives-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_LogicalMappedDrives-Examples-End -->

<!-- MMC_LogicalMappedDrives-End -->

<!-- MMC_NapSnap-Begin -->
## MMC_NapSnap

<!-- MMC_NapSnap-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_NapSnap-Applicability-End -->

<!-- MMC_NapSnap-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_NapSnap
```
<!-- MMC_NapSnap-OmaUri-End -->

<!-- MMC_NapSnap-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_NapSnap-Description-End -->

<!-- MMC_NapSnap-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_NapSnap-Editable-End -->

<!-- MMC_NapSnap-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_NapSnap-DFProperties-End -->

<!-- MMC_NapSnap-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_NapSnap |
| Friendly Name | NAP Client Configuration |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\FX:{a1bc4eca-66b2-44e8-9915-be02e84438ba} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_NapSnap-AdmxBacked-End -->

<!-- MMC_NapSnap-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_NapSnap-Examples-End -->

<!-- MMC_NapSnap-End -->

<!-- MMC_NapSnap_GP-Begin -->
## MMC_NapSnap_GP

<!-- MMC_NapSnap_GP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_NapSnap_GP-Applicability-End -->

<!-- MMC_NapSnap_GP-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_NapSnap_GP
```
<!-- MMC_NapSnap_GP-OmaUri-End -->

<!-- MMC_NapSnap_GP-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_NapSnap_GP-Description-End -->

<!-- MMC_NapSnap_GP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_NapSnap_GP-Editable-End -->

<!-- MMC_NapSnap_GP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_NapSnap_GP-DFProperties-End -->

<!-- MMC_NapSnap_GP-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_NapSnap_GP |
| Friendly Name | NAP Client Configuration |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy > Group Policy snap-in extensions |
| Registry Key Name | Software\Policies\Microsoft\MMC\FX:{a1bc4ecb-66b2-44e8-9915-be02e84438ba} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_NapSnap_GP-AdmxBacked-End -->

<!-- MMC_NapSnap_GP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_NapSnap_GP-Examples-End -->

<!-- MMC_NapSnap_GP-End -->

<!-- MMC_Net_Framework-Begin -->
## MMC_Net_Framework

<!-- MMC_Net_Framework-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_Net_Framework-Applicability-End -->

<!-- MMC_Net_Framework-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_Net_Framework
```
<!-- MMC_Net_Framework-OmaUri-End -->

<!-- MMC_Net_Framework-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_Net_Framework-Description-End -->

<!-- MMC_Net_Framework-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_Net_Framework-Editable-End -->

<!-- MMC_Net_Framework-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_Net_Framework-DFProperties-End -->

<!-- MMC_Net_Framework-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_Net_Framework |
| Friendly Name | .Net Framework Configuration |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{18BA7139-D98B-43c2-94DA-2604E34E175D} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_Net_Framework-AdmxBacked-End -->

<!-- MMC_Net_Framework-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_Net_Framework-Examples-End -->

<!-- MMC_Net_Framework-End -->

<!-- MMC_NPSUI-Begin -->
## MMC_NPSUI

<!-- MMC_NPSUI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_NPSUI-Applicability-End -->

<!-- MMC_NPSUI-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_NPSUI
```
<!-- MMC_NPSUI-OmaUri-End -->

<!-- MMC_NPSUI-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_NPSUI-Description-End -->

<!-- MMC_NPSUI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_NPSUI-Editable-End -->

<!-- MMC_NPSUI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_NPSUI-DFProperties-End -->

<!-- MMC_NPSUI-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_NPSUI |
| Friendly Name | Network Policy Server (NPS) |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\FX:{6630f2d7-bd52-4072-bfa7-863f3d0c5da0} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_NPSUI-AdmxBacked-End -->

<!-- MMC_NPSUI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_NPSUI-Examples-End -->

<!-- MMC_NPSUI-End -->

<!-- MMC_OCSP-Begin -->
## MMC_OCSP

<!-- MMC_OCSP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_OCSP-Applicability-End -->

<!-- MMC_OCSP-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_OCSP
```
<!-- MMC_OCSP-OmaUri-End -->

<!-- MMC_OCSP-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_OCSP-Description-End -->

<!-- MMC_OCSP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_OCSP-Editable-End -->

<!-- MMC_OCSP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_OCSP-DFProperties-End -->

<!-- MMC_OCSP-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_OCSP |
| Friendly Name | Online Responder |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\FX:{6d8880af-e518-43a8-986c-1ad21c4c976e} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_OCSP-AdmxBacked-End -->

<!-- MMC_OCSP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_OCSP-Examples-End -->

<!-- MMC_OCSP-End -->

<!-- MMC_OSPFRouting-Begin -->
## MMC_OSPFRouting

<!-- MMC_OSPFRouting-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_OSPFRouting-Applicability-End -->

<!-- MMC_OSPFRouting-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_OSPFRouting
```
<!-- MMC_OSPFRouting-OmaUri-End -->

<!-- MMC_OSPFRouting-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_OSPFRouting-Description-End -->

<!-- MMC_OSPFRouting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_OSPFRouting-Editable-End -->

<!-- MMC_OSPFRouting-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_OSPFRouting-DFProperties-End -->

<!-- MMC_OSPFRouting-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_OSPFRouting |
| Friendly Name | OSPF Routing |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{C2FE4506-D6C2-11D0-A37B-00C04FC9DA04} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_OSPFRouting-AdmxBacked-End -->

<!-- MMC_OSPFRouting-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_OSPFRouting-Examples-End -->

<!-- MMC_OSPFRouting-End -->

<!-- MMC_PerfLogsAlerts-Begin -->
## MMC_PerfLogsAlerts

<!-- MMC_PerfLogsAlerts-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_PerfLogsAlerts-Applicability-End -->

<!-- MMC_PerfLogsAlerts-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_PerfLogsAlerts
```
<!-- MMC_PerfLogsAlerts-OmaUri-End -->

<!-- MMC_PerfLogsAlerts-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_PerfLogsAlerts-Description-End -->

<!-- MMC_PerfLogsAlerts-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_PerfLogsAlerts-Editable-End -->

<!-- MMC_PerfLogsAlerts-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_PerfLogsAlerts-DFProperties-End -->

<!-- MMC_PerfLogsAlerts-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_PerfLogsAlerts |
| Friendly Name | Performance Logs and Alerts |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{7478EF61-8C46-11d1-8D99-00A0C913CAD4} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_PerfLogsAlerts-AdmxBacked-End -->

<!-- MMC_PerfLogsAlerts-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_PerfLogsAlerts-Examples-End -->

<!-- MMC_PerfLogsAlerts-End -->

<!-- MMC_PublicKey-Begin -->
## MMC_PublicKey

<!-- MMC_PublicKey-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_PublicKey-Applicability-End -->

<!-- MMC_PublicKey-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_PublicKey
```
<!-- MMC_PublicKey-OmaUri-End -->

<!-- MMC_PublicKey-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_PublicKey-Description-End -->

<!-- MMC_PublicKey-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_PublicKey-Editable-End -->

<!-- MMC_PublicKey-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_PublicKey-DFProperties-End -->

<!-- MMC_PublicKey-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_PublicKey |
| Friendly Name | Public Key Policies |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{34AB8E82-C27E-11D1-A6C0-00C04FB94F17} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_PublicKey-AdmxBacked-End -->

<!-- MMC_PublicKey-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_PublicKey-Examples-End -->

<!-- MMC_PublicKey-End -->

<!-- MMC_QoSAdmission-Begin -->
## MMC_QoSAdmission

<!-- MMC_QoSAdmission-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_QoSAdmission-Applicability-End -->

<!-- MMC_QoSAdmission-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_QoSAdmission
```
<!-- MMC_QoSAdmission-OmaUri-End -->

<!-- MMC_QoSAdmission-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_QoSAdmission-Description-End -->

<!-- MMC_QoSAdmission-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_QoSAdmission-Editable-End -->

<!-- MMC_QoSAdmission-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_QoSAdmission-DFProperties-End -->

<!-- MMC_QoSAdmission-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_QoSAdmission |
| Friendly Name | QoS Admission Control |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{FD57D297-4FD9-11D1-854E-00C04FC31FD3} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_QoSAdmission-AdmxBacked-End -->

<!-- MMC_QoSAdmission-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_QoSAdmission-Examples-End -->

<!-- MMC_QoSAdmission-End -->

<!-- MMC_RAS_DialinUser-Begin -->
## MMC_RAS_DialinUser

<!-- MMC_RAS_DialinUser-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_RAS_DialinUser-Applicability-End -->

<!-- MMC_RAS_DialinUser-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_RAS_DialinUser
```
<!-- MMC_RAS_DialinUser-OmaUri-End -->

<!-- MMC_RAS_DialinUser-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_RAS_DialinUser-Description-End -->

<!-- MMC_RAS_DialinUser-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_RAS_DialinUser-Editable-End -->

<!-- MMC_RAS_DialinUser-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_RAS_DialinUser-DFProperties-End -->

<!-- MMC_RAS_DialinUser-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_RAS_DialinUser |
| Friendly Name | RAS Dialin - User Node |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{B52C1E50-1DD2-11D1-BC43-00C04FC31FD3} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_RAS_DialinUser-AdmxBacked-End -->

<!-- MMC_RAS_DialinUser-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_RAS_DialinUser-Examples-End -->

<!-- MMC_RAS_DialinUser-End -->

<!-- MMC_RemoteAccess-Begin -->
## MMC_RemoteAccess

<!-- MMC_RemoteAccess-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_RemoteAccess-Applicability-End -->

<!-- MMC_RemoteAccess-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_RemoteAccess
```
<!-- MMC_RemoteAccess-OmaUri-End -->

<!-- MMC_RemoteAccess-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_RemoteAccess-Description-End -->

<!-- MMC_RemoteAccess-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_RemoteAccess-Editable-End -->

<!-- MMC_RemoteAccess-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_RemoteAccess-DFProperties-End -->

<!-- MMC_RemoteAccess-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_RemoteAccess |
| Friendly Name | Remote Access |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{5880CD5C-8EC0-11d1-9570-0060B0576642} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_RemoteAccess-AdmxBacked-End -->

<!-- MMC_RemoteAccess-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_RemoteAccess-Examples-End -->

<!-- MMC_RemoteAccess-End -->

<!-- MMC_RemoteDesktop-Begin -->
## MMC_RemoteDesktop

<!-- MMC_RemoteDesktop-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_RemoteDesktop-Applicability-End -->

<!-- MMC_RemoteDesktop-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_RemoteDesktop
```
<!-- MMC_RemoteDesktop-OmaUri-End -->

<!-- MMC_RemoteDesktop-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_RemoteDesktop-Description-End -->

<!-- MMC_RemoteDesktop-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_RemoteDesktop-Editable-End -->

<!-- MMC_RemoteDesktop-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_RemoteDesktop-DFProperties-End -->

<!-- MMC_RemoteDesktop-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_RemoteDesktop |
| Friendly Name | Remote Desktops |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{3D5D035E-7721-4B83-A645-6C07A3D403B7} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_RemoteDesktop-AdmxBacked-End -->

<!-- MMC_RemoteDesktop-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_RemoteDesktop-Examples-End -->

<!-- MMC_RemoteDesktop-End -->

<!-- MMC_RemStore-Begin -->
## MMC_RemStore

<!-- MMC_RemStore-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_RemStore-Applicability-End -->

<!-- MMC_RemStore-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_RemStore
```
<!-- MMC_RemStore-OmaUri-End -->

<!-- MMC_RemStore-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_RemStore-Description-End -->

<!-- MMC_RemStore-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_RemStore-Editable-End -->

<!-- MMC_RemStore-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_RemStore-DFProperties-End -->

<!-- MMC_RemStore-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_RemStore |
| Friendly Name | Removable Storage |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{243E20B0-48ED-11D2-97DA-00A024D77700} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_RemStore-AdmxBacked-End -->

<!-- MMC_RemStore-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_RemStore-Examples-End -->

<!-- MMC_RemStore-End -->

<!-- MMC_ResultantSetOfPolicySnapIn-Begin -->
## MMC_ResultantSetOfPolicySnapIn

<!-- MMC_ResultantSetOfPolicySnapIn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_ResultantSetOfPolicySnapIn-Applicability-End -->

<!-- MMC_ResultantSetOfPolicySnapIn-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_ResultantSetOfPolicySnapIn
```
<!-- MMC_ResultantSetOfPolicySnapIn-OmaUri-End -->

<!-- MMC_ResultantSetOfPolicySnapIn-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_ResultantSetOfPolicySnapIn-Description-End -->

<!-- MMC_ResultantSetOfPolicySnapIn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_ResultantSetOfPolicySnapIn-Editable-End -->

<!-- MMC_ResultantSetOfPolicySnapIn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_ResultantSetOfPolicySnapIn-DFProperties-End -->

<!-- MMC_ResultantSetOfPolicySnapIn-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_ResultantSetOfPolicySnapIn |
| Friendly Name | Resultant Set of Policy snap-in |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\MMC\{6DC3804B-7212-458D-ADB0-9A07E2AE1FA2} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_ResultantSetOfPolicySnapIn-AdmxBacked-End -->

<!-- MMC_ResultantSetOfPolicySnapIn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_ResultantSetOfPolicySnapIn-Examples-End -->

<!-- MMC_ResultantSetOfPolicySnapIn-End -->

<!-- MMC_RIPRouting-Begin -->
## MMC_RIPRouting

<!-- MMC_RIPRouting-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_RIPRouting-Applicability-End -->

<!-- MMC_RIPRouting-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_RIPRouting
```
<!-- MMC_RIPRouting-OmaUri-End -->

<!-- MMC_RIPRouting-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_RIPRouting-Description-End -->

<!-- MMC_RIPRouting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_RIPRouting-Editable-End -->

<!-- MMC_RIPRouting-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_RIPRouting-DFProperties-End -->

<!-- MMC_RIPRouting-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_RIPRouting |
| Friendly Name | RIP Routing |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{C2FE4504-D6C2-11D0-A37B-00C04FC9DA04} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_RIPRouting-AdmxBacked-End -->

<!-- MMC_RIPRouting-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_RIPRouting-Examples-End -->

<!-- MMC_RIPRouting-End -->

<!-- MMC_RIS-Begin -->
## MMC_RIS

<!-- MMC_RIS-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_RIS-Applicability-End -->

<!-- MMC_RIS-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_RIS
```
<!-- MMC_RIS-OmaUri-End -->

<!-- MMC_RIS-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_RIS-Description-End -->

<!-- MMC_RIS-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_RIS-Editable-End -->

<!-- MMC_RIS-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_RIS-DFProperties-End -->

<!-- MMC_RIS-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_RIS |
| Friendly Name | Remote Installation Services |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy > Group Policy snap-in extensions |
| Registry Key Name | Software\Policies\Microsoft\MMC\{3060E8CE-7020-11D2-842D-00C04FA372D4} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_RIS-AdmxBacked-End -->

<!-- MMC_RIS-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_RIS-Examples-End -->

<!-- MMC_RIS-End -->

<!-- MMC_Routing-Begin -->
## MMC_Routing

<!-- MMC_Routing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_Routing-Applicability-End -->

<!-- MMC_Routing-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_Routing
```
<!-- MMC_Routing-OmaUri-End -->

<!-- MMC_Routing-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_Routing-Description-End -->

<!-- MMC_Routing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_Routing-Editable-End -->

<!-- MMC_Routing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_Routing-DFProperties-End -->

<!-- MMC_Routing-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_Routing |
| Friendly Name | Routing |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{DAB1A262-4FD7-11D1-842C-00C04FB6C218} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_Routing-AdmxBacked-End -->

<!-- MMC_Routing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_Routing-Examples-End -->

<!-- MMC_Routing-End -->

<!-- MMC_RRA-Begin -->
## MMC_RRA

<!-- MMC_RRA-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_RRA-Applicability-End -->

<!-- MMC_RRA-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_RRA
```
<!-- MMC_RRA-OmaUri-End -->

<!-- MMC_RRA-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_RRA-Description-End -->

<!-- MMC_RRA-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_RRA-Editable-End -->

<!-- MMC_RRA-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_RRA-DFProperties-End -->

<!-- MMC_RRA-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_RRA |
| Friendly Name | Routing and Remote Access |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{1AA7F839-C7F5-11D0-A376-00C04FC9DA04} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_RRA-AdmxBacked-End -->

<!-- MMC_RRA-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_RRA-Examples-End -->

<!-- MMC_RRA-End -->

<!-- MMC_RSM-Begin -->
## MMC_RSM

<!-- MMC_RSM-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_RSM-Applicability-End -->

<!-- MMC_RSM-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_RSM
```
<!-- MMC_RSM-OmaUri-End -->

<!-- MMC_RSM-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_RSM-Description-End -->

<!-- MMC_RSM-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_RSM-Editable-End -->

<!-- MMC_RSM-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_RSM-DFProperties-End -->

<!-- MMC_RSM-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_RSM |
| Friendly Name | Removable Storage Management |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{3CB6973D-3E6F-11D0-95DB-00A024D77700} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_RSM-AdmxBacked-End -->

<!-- MMC_RSM-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_RSM-Examples-End -->

<!-- MMC_RSM-End -->

<!-- MMC_SCA-Begin -->
## MMC_SCA

<!-- MMC_SCA-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_SCA-Applicability-End -->

<!-- MMC_SCA-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_SCA
```
<!-- MMC_SCA-OmaUri-End -->

<!-- MMC_SCA-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_SCA-Description-End -->

<!-- MMC_SCA-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_SCA-Editable-End -->

<!-- MMC_SCA-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_SCA-DFProperties-End -->

<!-- MMC_SCA-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_SCA |
| Friendly Name | Security Configuration and Analysis |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{011BE22D-E453-11D1-945A-00C04FB984F9} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_SCA-AdmxBacked-End -->

<!-- MMC_SCA-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_SCA-Examples-End -->

<!-- MMC_SCA-End -->

<!-- MMC_ScriptsMachine_1-Begin -->
## MMC_ScriptsMachine_1

<!-- MMC_ScriptsMachine_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_ScriptsMachine_1-Applicability-End -->

<!-- MMC_ScriptsMachine_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_ScriptsMachine_1
```
<!-- MMC_ScriptsMachine_1-OmaUri-End -->

<!-- MMC_ScriptsMachine_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_ScriptsMachine_1-Description-End -->

<!-- MMC_ScriptsMachine_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_ScriptsMachine_1-Editable-End -->

<!-- MMC_ScriptsMachine_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_ScriptsMachine_1-DFProperties-End -->

<!-- MMC_ScriptsMachine_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_ScriptsMachine_1 |
| Friendly Name | Scripts (Startup/Shutdown) |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy > Group Policy snap-in extensions |
| Registry Key Name | Software\Policies\Microsoft\MMC\{40B6664F-4972-11D1-A7CA-0000F87571E3} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_ScriptsMachine_1-AdmxBacked-End -->

<!-- MMC_ScriptsMachine_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_ScriptsMachine_1-Examples-End -->

<!-- MMC_ScriptsMachine_1-End -->

<!-- MMC_ScriptsMachine_2-Begin -->
## MMC_ScriptsMachine_2

<!-- MMC_ScriptsMachine_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_ScriptsMachine_2-Applicability-End -->

<!-- MMC_ScriptsMachine_2-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_ScriptsMachine_2
```
<!-- MMC_ScriptsMachine_2-OmaUri-End -->

<!-- MMC_ScriptsMachine_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_ScriptsMachine_2-Description-End -->

<!-- MMC_ScriptsMachine_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_ScriptsMachine_2-Editable-End -->

<!-- MMC_ScriptsMachine_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_ScriptsMachine_2-DFProperties-End -->

<!-- MMC_ScriptsMachine_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_ScriptsMachine_2 |
| Friendly Name | Scripts (Startup/Shutdown) |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy > Resultant Set of Policy snap-in extensions |
| Registry Key Name | Software\Policies\Microsoft\MMC\{40B66660-4972-11d1-A7CA-0000F87571E3} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_ScriptsMachine_2-AdmxBacked-End -->

<!-- MMC_ScriptsMachine_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_ScriptsMachine_2-Examples-End -->

<!-- MMC_ScriptsMachine_2-End -->

<!-- MMC_ScriptsUser_1-Begin -->
## MMC_ScriptsUser_1

<!-- MMC_ScriptsUser_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_ScriptsUser_1-Applicability-End -->

<!-- MMC_ScriptsUser_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_ScriptsUser_1
```
<!-- MMC_ScriptsUser_1-OmaUri-End -->

<!-- MMC_ScriptsUser_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_ScriptsUser_1-Description-End -->

<!-- MMC_ScriptsUser_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_ScriptsUser_1-Editable-End -->

<!-- MMC_ScriptsUser_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_ScriptsUser_1-DFProperties-End -->

<!-- MMC_ScriptsUser_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_ScriptsUser_1 |
| Friendly Name | Scripts (Logon/Logoff) |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy > Group Policy snap-in extensions |
| Registry Key Name | Software\Policies\Microsoft\MMC\{40B66650-4972-11D1-A7CA-0000F87571E3} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_ScriptsUser_1-AdmxBacked-End -->

<!-- MMC_ScriptsUser_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_ScriptsUser_1-Examples-End -->

<!-- MMC_ScriptsUser_1-End -->

<!-- MMC_ScriptsUser_2-Begin -->
## MMC_ScriptsUser_2

<!-- MMC_ScriptsUser_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_ScriptsUser_2-Applicability-End -->

<!-- MMC_ScriptsUser_2-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_ScriptsUser_2
```
<!-- MMC_ScriptsUser_2-OmaUri-End -->

<!-- MMC_ScriptsUser_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_ScriptsUser_2-Description-End -->

<!-- MMC_ScriptsUser_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_ScriptsUser_2-Editable-End -->

<!-- MMC_ScriptsUser_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_ScriptsUser_2-DFProperties-End -->

<!-- MMC_ScriptsUser_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_ScriptsUser_2 |
| Friendly Name | Scripts (Logon/Logoff) |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy > Resultant Set of Policy snap-in extensions |
| Registry Key Name | Software\Policies\Microsoft\MMC\{40B66661-4972-11d1-A7CA-0000F87571E3} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_ScriptsUser_2-AdmxBacked-End -->

<!-- MMC_ScriptsUser_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_ScriptsUser_2-Examples-End -->

<!-- MMC_ScriptsUser_2-End -->

<!-- MMC_SecuritySettings_1-Begin -->
## MMC_SecuritySettings_1

<!-- MMC_SecuritySettings_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_SecuritySettings_1-Applicability-End -->

<!-- MMC_SecuritySettings_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_SecuritySettings_1
```
<!-- MMC_SecuritySettings_1-OmaUri-End -->

<!-- MMC_SecuritySettings_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_SecuritySettings_1-Description-End -->

<!-- MMC_SecuritySettings_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_SecuritySettings_1-Editable-End -->

<!-- MMC_SecuritySettings_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_SecuritySettings_1-DFProperties-End -->

<!-- MMC_SecuritySettings_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_SecuritySettings_1 |
| Friendly Name | Security Settings |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy > Group Policy snap-in extensions |
| Registry Key Name | Software\Policies\Microsoft\MMC\{803E14A0-B4FB-11D0-A0D0-00A0C90F574B} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_SecuritySettings_1-AdmxBacked-End -->

<!-- MMC_SecuritySettings_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_SecuritySettings_1-Examples-End -->

<!-- MMC_SecuritySettings_1-End -->

<!-- MMC_SecuritySettings_2-Begin -->
## MMC_SecuritySettings_2

<!-- MMC_SecuritySettings_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_SecuritySettings_2-Applicability-End -->

<!-- MMC_SecuritySettings_2-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_SecuritySettings_2
```
<!-- MMC_SecuritySettings_2-OmaUri-End -->

<!-- MMC_SecuritySettings_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_SecuritySettings_2-Description-End -->

<!-- MMC_SecuritySettings_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_SecuritySettings_2-Editable-End -->

<!-- MMC_SecuritySettings_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_SecuritySettings_2-DFProperties-End -->

<!-- MMC_SecuritySettings_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_SecuritySettings_2 |
| Friendly Name | Security Settings |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy > Resultant Set of Policy snap-in extensions |
| Registry Key Name | Software\Policies\Microsoft\MMC\{fe883157-cebd-4570-b7a2-e4fe06abe626} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_SecuritySettings_2-AdmxBacked-End -->

<!-- MMC_SecuritySettings_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_SecuritySettings_2-Examples-End -->

<!-- MMC_SecuritySettings_2-End -->

<!-- MMC_SecurityTemplates-Begin -->
## MMC_SecurityTemplates

<!-- MMC_SecurityTemplates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_SecurityTemplates-Applicability-End -->

<!-- MMC_SecurityTemplates-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_SecurityTemplates
```
<!-- MMC_SecurityTemplates-OmaUri-End -->

<!-- MMC_SecurityTemplates-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_SecurityTemplates-Description-End -->

<!-- MMC_SecurityTemplates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_SecurityTemplates-Editable-End -->

<!-- MMC_SecurityTemplates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_SecurityTemplates-DFProperties-End -->

<!-- MMC_SecurityTemplates-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_SecurityTemplates |
| Friendly Name | Security Templates |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{5ADF5BF6-E452-11D1-945A-00C04FB984F9} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_SecurityTemplates-AdmxBacked-End -->

<!-- MMC_SecurityTemplates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_SecurityTemplates-Examples-End -->

<!-- MMC_SecurityTemplates-End -->

<!-- MMC_SendConsoleMessage-Begin -->
## MMC_SendConsoleMessage

<!-- MMC_SendConsoleMessage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_SendConsoleMessage-Applicability-End -->

<!-- MMC_SendConsoleMessage-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_SendConsoleMessage
```
<!-- MMC_SendConsoleMessage-OmaUri-End -->

<!-- MMC_SendConsoleMessage-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_SendConsoleMessage-Description-End -->

<!-- MMC_SendConsoleMessage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_SendConsoleMessage-Editable-End -->

<!-- MMC_SendConsoleMessage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_SendConsoleMessage-DFProperties-End -->

<!-- MMC_SendConsoleMessage-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_SendConsoleMessage |
| Friendly Name | Send Console Message |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{B1AFF7D0-0C49-11D1-BB12-00C04FC9A3A3} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_SendConsoleMessage-AdmxBacked-End -->

<!-- MMC_SendConsoleMessage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_SendConsoleMessage-Examples-End -->

<!-- MMC_SendConsoleMessage-End -->

<!-- MMC_ServerManager-Begin -->
## MMC_ServerManager

<!-- MMC_ServerManager-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_ServerManager-Applicability-End -->

<!-- MMC_ServerManager-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_ServerManager
```
<!-- MMC_ServerManager-OmaUri-End -->

<!-- MMC_ServerManager-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_ServerManager-Description-End -->

<!-- MMC_ServerManager-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_ServerManager-Editable-End -->

<!-- MMC_ServerManager-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_ServerManager-DFProperties-End -->

<!-- MMC_ServerManager-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_ServerManager |
| Friendly Name | Server Manager |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\FX:{18ea3f92-d6aa-41d9-a205-2023400c8fbb} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_ServerManager-AdmxBacked-End -->

<!-- MMC_ServerManager-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_ServerManager-Examples-End -->

<!-- MMC_ServerManager-End -->

<!-- MMC_ServiceDependencies-Begin -->
## MMC_ServiceDependencies

<!-- MMC_ServiceDependencies-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_ServiceDependencies-Applicability-End -->

<!-- MMC_ServiceDependencies-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_ServiceDependencies
```
<!-- MMC_ServiceDependencies-OmaUri-End -->

<!-- MMC_ServiceDependencies-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_ServiceDependencies-Description-End -->

<!-- MMC_ServiceDependencies-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_ServiceDependencies-Editable-End -->

<!-- MMC_ServiceDependencies-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_ServiceDependencies-DFProperties-End -->

<!-- MMC_ServiceDependencies-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_ServiceDependencies |
| Friendly Name | Service Dependencies |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{BD95BA60-2E26-AAD1-AD99-00AA00B8E05A} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_ServiceDependencies-AdmxBacked-End -->

<!-- MMC_ServiceDependencies-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_ServiceDependencies-Examples-End -->

<!-- MMC_ServiceDependencies-End -->

<!-- MMC_Services-Begin -->
## MMC_Services

<!-- MMC_Services-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_Services-Applicability-End -->

<!-- MMC_Services-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_Services
```
<!-- MMC_Services-OmaUri-End -->

<!-- MMC_Services-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_Services-Description-End -->

<!-- MMC_Services-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_Services-Editable-End -->

<!-- MMC_Services-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_Services-DFProperties-End -->

<!-- MMC_Services-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_Services |
| Friendly Name | Services |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{58221C66-EA27-11CF-ADCF-00AA00A80033} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_Services-AdmxBacked-End -->

<!-- MMC_Services-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_Services-Examples-End -->

<!-- MMC_Services-End -->

<!-- MMC_SharedFolders-Begin -->
## MMC_SharedFolders

<!-- MMC_SharedFolders-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_SharedFolders-Applicability-End -->

<!-- MMC_SharedFolders-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_SharedFolders
```
<!-- MMC_SharedFolders-OmaUri-End -->

<!-- MMC_SharedFolders-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_SharedFolders-Description-End -->

<!-- MMC_SharedFolders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_SharedFolders-Editable-End -->

<!-- MMC_SharedFolders-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_SharedFolders-DFProperties-End -->

<!-- MMC_SharedFolders-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_SharedFolders |
| Friendly Name | Shared Folders |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{58221C65-EA27-11CF-ADCF-00AA00A80033} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_SharedFolders-AdmxBacked-End -->

<!-- MMC_SharedFolders-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_SharedFolders-Examples-End -->

<!-- MMC_SharedFolders-End -->

<!-- MMC_SharedFolders_Ext-Begin -->
## MMC_SharedFolders_Ext

<!-- MMC_SharedFolders_Ext-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_SharedFolders_Ext-Applicability-End -->

<!-- MMC_SharedFolders_Ext-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_SharedFolders_Ext
```
<!-- MMC_SharedFolders_Ext-OmaUri-End -->

<!-- MMC_SharedFolders_Ext-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_SharedFolders_Ext-Description-End -->

<!-- MMC_SharedFolders_Ext-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_SharedFolders_Ext-Editable-End -->

<!-- MMC_SharedFolders_Ext-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_SharedFolders_Ext-DFProperties-End -->

<!-- MMC_SharedFolders_Ext-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_SharedFolders_Ext |
| Friendly Name | Shared Folders Ext |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{58221C69-EA27-11CF-ADCF-00AA00A80033} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_SharedFolders_Ext-AdmxBacked-End -->

<!-- MMC_SharedFolders_Ext-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_SharedFolders_Ext-Examples-End -->

<!-- MMC_SharedFolders_Ext-End -->

<!-- MMC_SMTPProtocol-Begin -->
## MMC_SMTPProtocol

<!-- MMC_SMTPProtocol-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_SMTPProtocol-Applicability-End -->

<!-- MMC_SMTPProtocol-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_SMTPProtocol
```
<!-- MMC_SMTPProtocol-OmaUri-End -->

<!-- MMC_SMTPProtocol-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_SMTPProtocol-Description-End -->

<!-- MMC_SMTPProtocol-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_SMTPProtocol-Editable-End -->

<!-- MMC_SMTPProtocol-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_SMTPProtocol-DFProperties-End -->

<!-- MMC_SMTPProtocol-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_SMTPProtocol |
| Friendly Name | SMTP Protocol |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{03f1f940-a0f2-11d0-bb77-00aa00a1eab7} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_SMTPProtocol-AdmxBacked-End -->

<!-- MMC_SMTPProtocol-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_SMTPProtocol-Examples-End -->

<!-- MMC_SMTPProtocol-End -->

<!-- MMC_SNMP-Begin -->
## MMC_SNMP

<!-- MMC_SNMP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_SNMP-Applicability-End -->

<!-- MMC_SNMP-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_SNMP
```
<!-- MMC_SNMP-OmaUri-End -->

<!-- MMC_SNMP-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_SNMP-Description-End -->

<!-- MMC_SNMP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_SNMP-Editable-End -->

<!-- MMC_SNMP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_SNMP-DFProperties-End -->

<!-- MMC_SNMP-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_SNMP |
| Friendly Name | SNMP |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{7AF60DD3-4979-11D1-8A6C-00C04FC33566} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_SNMP-AdmxBacked-End -->

<!-- MMC_SNMP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_SNMP-Examples-End -->

<!-- MMC_SNMP-End -->

<!-- MMC_SoftwareInstalationComputers_1-Begin -->
## MMC_SoftwareInstalationComputers_1

<!-- MMC_SoftwareInstalationComputers_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_SoftwareInstalationComputers_1-Applicability-End -->

<!-- MMC_SoftwareInstalationComputers_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_SoftwareInstalationComputers_1
```
<!-- MMC_SoftwareInstalationComputers_1-OmaUri-End -->

<!-- MMC_SoftwareInstalationComputers_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_SoftwareInstalationComputers_1-Description-End -->

<!-- MMC_SoftwareInstalationComputers_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_SoftwareInstalationComputers_1-Editable-End -->

<!-- MMC_SoftwareInstalationComputers_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_SoftwareInstalationComputers_1-DFProperties-End -->

<!-- MMC_SoftwareInstalationComputers_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_SoftwareInstalationComputers_1 |
| Friendly Name | Software Installation (Computers) |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy > Group Policy snap-in extensions |
| Registry Key Name | Software\Policies\Microsoft\MMC\{942A8E4F-A261-11D1-A760-00C04FB9603F} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_SoftwareInstalationComputers_1-AdmxBacked-End -->

<!-- MMC_SoftwareInstalationComputers_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_SoftwareInstalationComputers_1-Examples-End -->

<!-- MMC_SoftwareInstalationComputers_1-End -->

<!-- MMC_SoftwareInstalationComputers_2-Begin -->
## MMC_SoftwareInstalationComputers_2

<!-- MMC_SoftwareInstalationComputers_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_SoftwareInstalationComputers_2-Applicability-End -->

<!-- MMC_SoftwareInstalationComputers_2-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_SoftwareInstalationComputers_2
```
<!-- MMC_SoftwareInstalationComputers_2-OmaUri-End -->

<!-- MMC_SoftwareInstalationComputers_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_SoftwareInstalationComputers_2-Description-End -->

<!-- MMC_SoftwareInstalationComputers_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_SoftwareInstalationComputers_2-Editable-End -->

<!-- MMC_SoftwareInstalationComputers_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_SoftwareInstalationComputers_2-DFProperties-End -->

<!-- MMC_SoftwareInstalationComputers_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_SoftwareInstalationComputers_2 |
| Friendly Name | Software Installation (Computers) |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy > Resultant Set of Policy snap-in extensions |
| Registry Key Name | Software\Policies\Microsoft\MMC\{7E45546F-6D52-4D10-B702-9C2E67232E62} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_SoftwareInstalationComputers_2-AdmxBacked-End -->

<!-- MMC_SoftwareInstalationComputers_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_SoftwareInstalationComputers_2-Examples-End -->

<!-- MMC_SoftwareInstalationComputers_2-End -->

<!-- MMC_SoftwareInstallationUsers_1-Begin -->
## MMC_SoftwareInstallationUsers_1

<!-- MMC_SoftwareInstallationUsers_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_SoftwareInstallationUsers_1-Applicability-End -->

<!-- MMC_SoftwareInstallationUsers_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_SoftwareInstallationUsers_1
```
<!-- MMC_SoftwareInstallationUsers_1-OmaUri-End -->

<!-- MMC_SoftwareInstallationUsers_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_SoftwareInstallationUsers_1-Description-End -->

<!-- MMC_SoftwareInstallationUsers_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_SoftwareInstallationUsers_1-Editable-End -->

<!-- MMC_SoftwareInstallationUsers_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_SoftwareInstallationUsers_1-DFProperties-End -->

<!-- MMC_SoftwareInstallationUsers_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_SoftwareInstallationUsers_1 |
| Friendly Name | Software Installation (Users) |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy > Group Policy snap-in extensions |
| Registry Key Name | Software\Policies\Microsoft\MMC\{BACF5C8A-A3C7-11D1-A760-00C04FB9603F} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_SoftwareInstallationUsers_1-AdmxBacked-End -->

<!-- MMC_SoftwareInstallationUsers_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_SoftwareInstallationUsers_1-Examples-End -->

<!-- MMC_SoftwareInstallationUsers_1-End -->

<!-- MMC_SoftwareInstallationUsers_2-Begin -->
## MMC_SoftwareInstallationUsers_2

<!-- MMC_SoftwareInstallationUsers_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_SoftwareInstallationUsers_2-Applicability-End -->

<!-- MMC_SoftwareInstallationUsers_2-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_SoftwareInstallationUsers_2
```
<!-- MMC_SoftwareInstallationUsers_2-OmaUri-End -->

<!-- MMC_SoftwareInstallationUsers_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_SoftwareInstallationUsers_2-Description-End -->

<!-- MMC_SoftwareInstallationUsers_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_SoftwareInstallationUsers_2-Editable-End -->

<!-- MMC_SoftwareInstallationUsers_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_SoftwareInstallationUsers_2-DFProperties-End -->

<!-- MMC_SoftwareInstallationUsers_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_SoftwareInstallationUsers_2 |
| Friendly Name | Software Installation (Users) |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy > Resultant Set of Policy snap-in extensions |
| Registry Key Name | Software\Policies\Microsoft\MMC\{1BC972D6-555C-4FF7-BE2C-C584021A0A6A} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_SoftwareInstallationUsers_2-AdmxBacked-End -->

<!-- MMC_SoftwareInstallationUsers_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_SoftwareInstallationUsers_2-Examples-End -->

<!-- MMC_SoftwareInstallationUsers_2-End -->

<!-- MMC_SysInfo-Begin -->
## MMC_SysInfo

<!-- MMC_SysInfo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_SysInfo-Applicability-End -->

<!-- MMC_SysInfo-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_SysInfo
```
<!-- MMC_SysInfo-OmaUri-End -->

<!-- MMC_SysInfo-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_SysInfo-Description-End -->

<!-- MMC_SysInfo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_SysInfo-Editable-End -->

<!-- MMC_SysInfo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_SysInfo-DFProperties-End -->

<!-- MMC_SysInfo-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_SysInfo |
| Friendly Name | System Information |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{45ac8c63-23e2-11d1-a696-00c04fd58bc3} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_SysInfo-AdmxBacked-End -->

<!-- MMC_SysInfo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_SysInfo-Examples-End -->

<!-- MMC_SysInfo-End -->

<!-- MMC_SysProp-Begin -->
## MMC_SysProp

<!-- MMC_SysProp-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_SysProp-Applicability-End -->

<!-- MMC_SysProp-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_SysProp
```
<!-- MMC_SysProp-OmaUri-End -->

<!-- MMC_SysProp-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_SysProp-Description-End -->

<!-- MMC_SysProp-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_SysProp-Editable-End -->

<!-- MMC_SysProp-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_SysProp-DFProperties-End -->

<!-- MMC_SysProp-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_SysProp |
| Friendly Name | System Properties |
| Location | User Configuration |
| Path | MMC_RESTRICT > Extension snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{0F3621F1-23C6-11D1-AD97-00AA00B88E5A} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_SysProp-AdmxBacked-End -->

<!-- MMC_SysProp-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_SysProp-Examples-End -->

<!-- MMC_SysProp-End -->

<!-- MMC_Telephony-Begin -->
## MMC_Telephony

<!-- MMC_Telephony-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_Telephony-Applicability-End -->

<!-- MMC_Telephony-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_Telephony
```
<!-- MMC_Telephony-OmaUri-End -->

<!-- MMC_Telephony-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_Telephony-Description-End -->

<!-- MMC_Telephony-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_Telephony-Editable-End -->

<!-- MMC_Telephony-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_Telephony-DFProperties-End -->

<!-- MMC_Telephony-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_Telephony |
| Friendly Name | Telephony |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{E26D02A0-4C1F-11D1-9AA1-00C04FC3357A} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_Telephony-AdmxBacked-End -->

<!-- MMC_Telephony-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_Telephony-Examples-End -->

<!-- MMC_Telephony-End -->

<!-- MMC_TerminalServices-Begin -->
## MMC_TerminalServices

<!-- MMC_TerminalServices-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_TerminalServices-Applicability-End -->

<!-- MMC_TerminalServices-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_TerminalServices
```
<!-- MMC_TerminalServices-OmaUri-End -->

<!-- MMC_TerminalServices-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_TerminalServices-Description-End -->

<!-- MMC_TerminalServices-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_TerminalServices-Editable-End -->

<!-- MMC_TerminalServices-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_TerminalServices-DFProperties-End -->

<!-- MMC_TerminalServices-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_TerminalServices |
| Friendly Name | Remote Desktop Services Configuration |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{B91B6008-32D2-11D2-9888-00A0C925F917} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_TerminalServices-AdmxBacked-End -->

<!-- MMC_TerminalServices-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_TerminalServices-Examples-End -->

<!-- MMC_TerminalServices-End -->

<!-- MMC_TPMManagement-Begin -->
## MMC_TPMManagement

<!-- MMC_TPMManagement-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_TPMManagement-Applicability-End -->

<!-- MMC_TPMManagement-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_TPMManagement
```
<!-- MMC_TPMManagement-OmaUri-End -->

<!-- MMC_TPMManagement-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_TPMManagement-Description-End -->

<!-- MMC_TPMManagement-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_TPMManagement-Editable-End -->

<!-- MMC_TPMManagement-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_TPMManagement-DFProperties-End -->

<!-- MMC_TPMManagement-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_TPMManagement |
| Friendly Name | TPM Management |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\FX:{7d3830aa-e69e-4e17-8bd1-1b87b97099da} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_TPMManagement-AdmxBacked-End -->

<!-- MMC_TPMManagement-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_TPMManagement-Examples-End -->

<!-- MMC_TPMManagement-End -->

<!-- MMC_WindowsFirewall-Begin -->
## MMC_WindowsFirewall

<!-- MMC_WindowsFirewall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_WindowsFirewall-Applicability-End -->

<!-- MMC_WindowsFirewall-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_WindowsFirewall
```
<!-- MMC_WindowsFirewall-OmaUri-End -->

<!-- MMC_WindowsFirewall-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_WindowsFirewall-Description-End -->

<!-- MMC_WindowsFirewall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_WindowsFirewall-Editable-End -->

<!-- MMC_WindowsFirewall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_WindowsFirewall-DFProperties-End -->

<!-- MMC_WindowsFirewall-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_WindowsFirewall |
| Friendly Name | Windows Firewall with Advanced Security |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\FX:{b05566ac-fe9c-4368-be02-7a4cbb7cbe11} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_WindowsFirewall-AdmxBacked-End -->

<!-- MMC_WindowsFirewall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_WindowsFirewall-Examples-End -->

<!-- MMC_WindowsFirewall-End -->

<!-- MMC_WindowsFirewall_GP-Begin -->
## MMC_WindowsFirewall_GP

<!-- MMC_WindowsFirewall_GP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_WindowsFirewall_GP-Applicability-End -->

<!-- MMC_WindowsFirewall_GP-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_WindowsFirewall_GP
```
<!-- MMC_WindowsFirewall_GP-OmaUri-End -->

<!-- MMC_WindowsFirewall_GP-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_WindowsFirewall_GP-Description-End -->

<!-- MMC_WindowsFirewall_GP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_WindowsFirewall_GP-Editable-End -->

<!-- MMC_WindowsFirewall_GP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_WindowsFirewall_GP-DFProperties-End -->

<!-- MMC_WindowsFirewall_GP-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_WindowsFirewall_GP |
| Friendly Name | Windows Firewall with Advanced Security |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy > Group Policy snap-in extensions |
| Registry Key Name | Software\Policies\Microsoft\MMC\{0E752416-F29E-4195-A9DD-7F0D4D5A9D71} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_WindowsFirewall_GP-AdmxBacked-End -->

<!-- MMC_WindowsFirewall_GP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_WindowsFirewall_GP-Examples-End -->

<!-- MMC_WindowsFirewall_GP-End -->

<!-- MMC_WiredNetworkPolicy-Begin -->
## MMC_WiredNetworkPolicy

<!-- MMC_WiredNetworkPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_WiredNetworkPolicy-Applicability-End -->

<!-- MMC_WiredNetworkPolicy-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_WiredNetworkPolicy
```
<!-- MMC_WiredNetworkPolicy-OmaUri-End -->

<!-- MMC_WiredNetworkPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_WiredNetworkPolicy-Description-End -->

<!-- MMC_WiredNetworkPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_WiredNetworkPolicy-Editable-End -->

<!-- MMC_WiredNetworkPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_WiredNetworkPolicy-DFProperties-End -->

<!-- MMC_WiredNetworkPolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_WiredNetworkPolicy |
| Friendly Name | Wired Network (IEEE 802.3) Policies |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy > Group Policy snap-in extensions |
| Registry Key Name | Software\Policies\Microsoft\MMC\{06993B16-A5C7-47EB-B61C-B1CB7EE600AC} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_WiredNetworkPolicy-AdmxBacked-End -->

<!-- MMC_WiredNetworkPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_WiredNetworkPolicy-Examples-End -->

<!-- MMC_WiredNetworkPolicy-End -->

<!-- MMC_WirelessMon-Begin -->
## MMC_WirelessMon

<!-- MMC_WirelessMon-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_WirelessMon-Applicability-End -->

<!-- MMC_WirelessMon-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_WirelessMon
```
<!-- MMC_WirelessMon-OmaUri-End -->

<!-- MMC_WirelessMon-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_WirelessMon-Description-End -->

<!-- MMC_WirelessMon-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_WirelessMon-Editable-End -->

<!-- MMC_WirelessMon-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_WirelessMon-DFProperties-End -->

<!-- MMC_WirelessMon-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_WirelessMon |
| Friendly Name | Wireless Monitor |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{23DC5869-BD9F-46fd-AADD-1F869BA64FC3} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_WirelessMon-AdmxBacked-End -->

<!-- MMC_WirelessMon-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_WirelessMon-Examples-End -->

<!-- MMC_WirelessMon-End -->

<!-- MMC_WirelessNetworkPolicy-Begin -->
## MMC_WirelessNetworkPolicy

<!-- MMC_WirelessNetworkPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_WirelessNetworkPolicy-Applicability-End -->

<!-- MMC_WirelessNetworkPolicy-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_WirelessNetworkPolicy
```
<!-- MMC_WirelessNetworkPolicy-OmaUri-End -->

<!-- MMC_WirelessNetworkPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_WirelessNetworkPolicy-Description-End -->

<!-- MMC_WirelessNetworkPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_WirelessNetworkPolicy-Editable-End -->

<!-- MMC_WirelessNetworkPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_WirelessNetworkPolicy-DFProperties-End -->

<!-- MMC_WirelessNetworkPolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_WirelessNetworkPolicy |
| Friendly Name | Wireless Network (IEEE 802.11) Policies |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins > Group Policy > Group Policy snap-in extensions |
| Registry Key Name | Software\Policies\Microsoft\MMC\{2DA6AA7F-8C88-4194-A558-0D36E7FD3E64} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_WirelessNetworkPolicy-AdmxBacked-End -->

<!-- MMC_WirelessNetworkPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_WirelessNetworkPolicy-Examples-End -->

<!-- MMC_WirelessNetworkPolicy-End -->

<!-- MMC_WMI-Begin -->
## MMC_WMI

<!-- MMC_WMI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MMC_WMI-Applicability-End -->

<!-- MMC_WMI-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MMCSnapins/MMC_WMI
```
<!-- MMC_WMI-OmaUri-End -->

<!-- MMC_WMI-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the use of this snap-in.

- If you enable this policy setting, the snap-in is permitted and can be added into the Microsoft Management Console or run from the command line as a standalone console.

- If you disable this policy setting, the snap-in is prohibited and can't be added into the Microsoft Management Console or run from the command line as a standalone console. An error message is displayed stating that policy is prohibiting the use of this snap-in.

- If this policy setting isn't configured, the setting of the "Restrict users to the explicitly permitted list of snap-ins" setting determines whether this snap-in is permitted or prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is enabled, users can't use any snap-in except those explicitly permitted. To explicitly permit use of this snap-in, enable this policy setting.

- If this policy setting isn't configured or disabled, this snap-in is prohibited.

- If the policy setting "Restrict users to the explicitly permitted list of snap-ins" is disabled or not configured, users can use any snap-in except those explicitly prohibited. To explicitly prohibit use of this snap-in, disable this policy setting.

- If this policy setting isn't configured or enabled, the snap-in is permitted.

When a snap-in is prohibited, it doesn't appear in the Add/Remove Snap-in window in MMC. Also, when a user opens a console file that includes a prohibited snap-in, the console file opens, but the prohibited snap-in doesn't appear.
<!-- MMC_WMI-Description-End -->

<!-- MMC_WMI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MMC_WMI-Editable-End -->

<!-- MMC_WMI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MMC_WMI-DFProperties-End -->

<!-- MMC_WMI-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MMC_WMI |
| Friendly Name | WMI Control |
| Location | User Configuration |
| Path | MMC > Restricted/Permitted snap-ins |
| Registry Key Name | Software\Policies\Microsoft\MMC\{5C659257-E236-11D2-8899-00104B2AFB46} |
| Registry Value Name | Restrict_Run |
| ADMX File Name | MMCSnapins.admx |
<!-- MMC_WMI-AdmxBacked-End -->

<!-- MMC_WMI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MMC_WMI-Examples-End -->

<!-- MMC_WMI-End -->

<!-- ADMX_MMCSnapins-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_MMCSnapins-CspMoreInfo-End -->

<!-- ADMX_MMCSnapins-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
