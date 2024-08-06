---
title: ADMX_WorkFoldersClient Policy CSP
description: Learn more about the ADMX_WorkFoldersClient Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_WorkFoldersClient-Begin -->
# Policy CSP - ADMX_WorkFoldersClient

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_WorkFoldersClient-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_WorkFoldersClient-Editable-End -->

<!-- Pol_MachineEnableWorkFolders-Begin -->
## Pol_MachineEnableWorkFolders

<!-- Pol_MachineEnableWorkFolders-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_MachineEnableWorkFolders-Applicability-End -->

<!-- Pol_MachineEnableWorkFolders-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WorkFoldersClient/Pol_MachineEnableWorkFolders
```
<!-- Pol_MachineEnableWorkFolders-OmaUri-End -->

<!-- Pol_MachineEnableWorkFolders-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Work Folders should be set up automatically for all users of the affected computer.

- If you enable this policy setting, Work Folders will be set up automatically for all users of the affected computer. This prevents users from choosing not to use Work Folders on the computer; it also prevents them from manually specifying the local folder in which Work Folders stores files. Work Folders will use the settings specified in the "Specify Work Folders settings" policy setting in User Configuration\Administrative Templates\Windows Components\WorkFolders. If the "Specify Work Folders settings" policy setting doesn't apply to a user, Work Folders isn't automatically set up.

- If you disable or don't configure this policy setting, Work Folders uses the "Force automatic setup" option of the "Specify Work Folders settings" policy setting to determine whether to automatically set up Work Folders for a given user.
<!-- Pol_MachineEnableWorkFolders-Description-End -->

<!-- Pol_MachineEnableWorkFolders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_MachineEnableWorkFolders-Editable-End -->

<!-- Pol_MachineEnableWorkFolders-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_MachineEnableWorkFolders-DFProperties-End -->

<!-- Pol_MachineEnableWorkFolders-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_MachineEnableWorkFolders |
| Friendly Name | Force automatic setup for all users |
| Location | Computer Configuration |
| Path | Windows Components > Work Folders |
| Registry Key Name | Software\Policies\Microsoft\Windows\WorkFolders |
| Registry Value Name | AutoProvision |
| ADMX File Name | WorkFolders-Client.admx |
<!-- Pol_MachineEnableWorkFolders-AdmxBacked-End -->

<!-- Pol_MachineEnableWorkFolders-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_MachineEnableWorkFolders-Examples-End -->

<!-- Pol_MachineEnableWorkFolders-End -->

<!-- Pol_UserEnableTokenBroker-Begin -->
## Pol_UserEnableTokenBroker

<!-- Pol_UserEnableTokenBroker-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_UserEnableTokenBroker-Applicability-End -->

<!-- Pol_UserEnableTokenBroker-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WorkFoldersClient/Pol_UserEnableTokenBroker
```
<!-- Pol_UserEnableTokenBroker-OmaUri-End -->

<!-- Pol_UserEnableTokenBroker-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy specifies whether Work Folders should use Token Broker for interactive AD FS authentication instead of its own OAuth2 token flow used in previous versions.
<!-- Pol_UserEnableTokenBroker-Description-End -->

<!-- Pol_UserEnableTokenBroker-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_UserEnableTokenBroker-Editable-End -->

<!-- Pol_UserEnableTokenBroker-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_UserEnableTokenBroker-DFProperties-End -->

<!-- Pol_UserEnableTokenBroker-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_UserEnableTokenBroker |
| Friendly Name | Enables the use of Token Broker for AD FS authentication |
| Location | User Configuration |
| Path | Windows Components > Work Folders |
| Registry Key Name | Software\Policies\Microsoft\Windows\WorkFolders |
| Registry Value Name | EnableTokenBroker |
| ADMX File Name | WorkFolders-Client.admx |
<!-- Pol_UserEnableTokenBroker-AdmxBacked-End -->

<!-- Pol_UserEnableTokenBroker-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_UserEnableTokenBroker-Examples-End -->

<!-- Pol_UserEnableTokenBroker-End -->

<!-- Pol_UserEnableWorkFolders-Begin -->
## Pol_UserEnableWorkFolders

<!-- Pol_UserEnableWorkFolders-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_UserEnableWorkFolders-Applicability-End -->

<!-- Pol_UserEnableWorkFolders-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WorkFoldersClient/Pol_UserEnableWorkFolders
```
<!-- Pol_UserEnableWorkFolders-OmaUri-End -->

<!-- Pol_UserEnableWorkFolders-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the Work Folders server for affected users, as well as whether or not users are allowed to change settings when setting up Work Folders on a domain-joined computer.

- If you enable this policy setting, affected users receive Work Folders settings when they sign in to a domain-joined PC.

- If this policy setting is disabled or not configured, no Work Folders settings are specified for the affected users, though users can manually set up Work Folders by using the Work Folders Control Panel item.

The "Work Folders URL" can specify either the URL used by the organization for Work Folders discovery, or the specific URL of the file server that stores the affected users' data.

The "Work Folders Local Path" specifies the local folder used on the client machine to sync files. This path may contain environment variables.

> [!NOTE]
> In order for this configuration to take effect, a valid 'Work Folders URL' must also be specified.

The "On-demand file access preference" option controls whether to enable on-demand file access. When enabled, the user controls which files in Work Folders are available offline on a given PC. The rest of the files in Work Folders are always visible and don't take up any space on the PC, but the user must be connected to the Internet to access them.

- If you enable this policy setting, on-demand file access is enabled.

- If you disable this policy setting, on-demand file access is disabled, and enough storage space to store all the user's files is required on each of their PCs.

If you specify User choice or don't configure this policy setting, the user decides whether to enable on-demand file access. However, if the Force automatic setup policy setting is enabled, Work Folders is set up automatically with on-demand file access enabled.

The "Force automatic setup" option specifies that Work Folders should be set up automatically without prompting users. This prevents users from choosing not to use Work Folders on the computer; it also prevents them from manually specifying the local folder in which Work Folders stores files. By default, Work Folders is stored in the "%USERPROFILE%\Work Folders" folder. If this option isn't specified, users must use the Work Folders Control Panel item on their computers to set up Work Folders.
<!-- Pol_UserEnableWorkFolders-Description-End -->

<!-- Pol_UserEnableWorkFolders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_UserEnableWorkFolders-Editable-End -->

<!-- Pol_UserEnableWorkFolders-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_UserEnableWorkFolders-DFProperties-End -->

<!-- Pol_UserEnableWorkFolders-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_UserEnableWorkFolders |
| Friendly Name | Specify Work Folders settings |
| Location | User Configuration |
| Path | Windows Components > Work Folders |
| Registry Key Name | Software\Policies\Microsoft\Windows\WorkFolders |
| ADMX File Name | WorkFolders-Client.admx |
<!-- Pol_UserEnableWorkFolders-AdmxBacked-End -->

<!-- Pol_UserEnableWorkFolders-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_UserEnableWorkFolders-Examples-End -->

<!-- Pol_UserEnableWorkFolders-End -->

<!-- ADMX_WorkFoldersClient-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_WorkFoldersClient-CspMoreInfo-End -->

<!-- ADMX_WorkFoldersClient-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
