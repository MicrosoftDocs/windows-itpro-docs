---
title: ApplicationManagement Policy CSP
description: Learn more about the ApplicationManagement Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ApplicationManagement-Begin -->
# Policy CSP - ApplicationManagement

<!-- ApplicationManagement-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ApplicationManagement-Editable-End -->

<!-- AllowAllTrustedApps-Begin -->
## AllowAllTrustedApps

<!-- AllowAllTrustedApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowAllTrustedApps-Applicability-End -->

<!-- AllowAllTrustedApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ApplicationManagement/AllowAllTrustedApps
```
<!-- AllowAllTrustedApps-OmaUri-End -->

<!-- AllowAllTrustedApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the installation of trusted line-of-business (LOB) or developer-signed packaged Microsoft Store apps.

- If you enable this policy setting, you can install any LOB or developer-signed packaged Microsoft Store app (which must be signed with a certificate chain that can be successfully validated by the local computer).

- If you disable or don't configure this policy setting, you can't install LOB or developer-signed packaged Microsoft Store apps.
<!-- AllowAllTrustedApps-Description-End -->

<!-- AllowAllTrustedApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowAllTrustedApps-Editable-End -->

<!-- AllowAllTrustedApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 65535 |
<!-- AllowAllTrustedApps-DFProperties-End -->

<!-- AllowAllTrustedApps-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Explicit deny. |
| 1 | Explicit allow unlock. |
| 65535 (Default) | Not configured. |
<!-- AllowAllTrustedApps-AllowedValues-End -->

<!-- AllowAllTrustedApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AppxDeploymentAllowAllTrustedApps |
| Friendly Name | Allow all trusted apps to install |
| Location | Computer Configuration |
| Path | Windows Components > App Package Deployment |
| Registry Key Name | Software\Policies\Microsoft\Windows\Appx |
| Registry Value Name | AllowAllTrustedApps |
| ADMX File Name | AppxPackageManager.admx |
<!-- AllowAllTrustedApps-GpMapping-End -->

<!-- AllowAllTrustedApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowAllTrustedApps-Examples-End -->

<!-- AllowAllTrustedApps-End -->

<!-- AllowAppStoreAutoUpdate-Begin -->
## AllowAppStoreAutoUpdate

<!-- AllowAppStoreAutoUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowAppStoreAutoUpdate-Applicability-End -->

<!-- AllowAppStoreAutoUpdate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ApplicationManagement/AllowAppStoreAutoUpdate
```
<!-- AllowAppStoreAutoUpdate-OmaUri-End -->

<!-- AllowAppStoreAutoUpdate-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether automatic update of apps from Microsoft Store are allowed. Most restricted value is 0.
<!-- AllowAppStoreAutoUpdate-Description-End -->

<!-- AllowAppStoreAutoUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowAppStoreAutoUpdate-Editable-End -->

<!-- AllowAppStoreAutoUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 2 |
<!-- AllowAppStoreAutoUpdate-DFProperties-End -->

<!-- AllowAppStoreAutoUpdate-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 | Allowed. |
| 2 (Default) | Not configured. |
<!-- AllowAppStoreAutoUpdate-AllowedValues-End -->

<!-- AllowAppStoreAutoUpdate-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableAutoInstall |
| Friendly Name | Turn off Automatic Download and Install of updates |
| Location | Computer Configuration |
| Path | Windows Components > Store |
| Registry Key Name | Software\Policies\Microsoft\WindowsStore |
| Registry Value Name | AutoDownload |
| ADMX File Name | WindowsStore.admx |
<!-- AllowAppStoreAutoUpdate-GpMapping-End -->

<!-- AllowAppStoreAutoUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowAppStoreAutoUpdate-Examples-End -->

<!-- AllowAppStoreAutoUpdate-End -->

<!-- AllowAutomaticAppArchiving-Begin -->
## AllowAutomaticAppArchiving

<!-- AllowAutomaticAppArchiving-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowAutomaticAppArchiving-Applicability-End -->

<!-- AllowAutomaticAppArchiving-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ApplicationManagement/AllowAutomaticAppArchiving
```
<!-- AllowAutomaticAppArchiving-OmaUri-End -->

<!-- AllowAutomaticAppArchiving-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether the system can archive infrequently used apps.

- If you enable this policy setting, then the system will periodically check for and archive infrequently used apps.

- If you disable this policy setting, then the system won't archive any apps.

- If you don't configure this policy setting (default), then the system will follow default behavior, which is to periodically check for and archive infrequently used apps, and the user will be able to configure this setting themselves.
<!-- AllowAutomaticAppArchiving-Description-End -->

<!-- AllowAutomaticAppArchiving-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowAutomaticAppArchiving-Editable-End -->

<!-- AllowAutomaticAppArchiving-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 65535 |
<!-- AllowAutomaticAppArchiving-DFProperties-End -->

<!-- AllowAutomaticAppArchiving-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Explicit deny. |
| 1 | Explicit enable. |
| 65535 (Default) | Not configured. User's Choice. |
<!-- AllowAutomaticAppArchiving-AllowedValues-End -->

<!-- AllowAutomaticAppArchiving-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowAutomaticAppArchiving |
| Friendly Name | Archive infrequently used apps |
| Location | Computer Configuration |
| Path | Windows Components > App Package Deployment |
| Registry Key Name | Software\Policies\Microsoft\Windows\Appx |
| Registry Value Name | AllowAutomaticAppArchiving |
| ADMX File Name | AppxPackageManager.admx |
<!-- AllowAutomaticAppArchiving-GpMapping-End -->

<!-- AllowAutomaticAppArchiving-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowAutomaticAppArchiving-Examples-End -->

<!-- AllowAutomaticAppArchiving-End -->

<!-- AllowDeveloperUnlock-Begin -->
## AllowDeveloperUnlock

<!-- AllowDeveloperUnlock-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowDeveloperUnlock-Applicability-End -->

<!-- AllowDeveloperUnlock-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ApplicationManagement/AllowDeveloperUnlock
```
<!-- AllowDeveloperUnlock-OmaUri-End -->

<!-- AllowDeveloperUnlock-Description-Begin -->
<!-- Description-Source-ADMX -->
Allows or denies development of Microsoft Store applications and installing them directly from an IDE.

- If you enable this setting and enable the "Allow all trusted apps to install" Group Policy, you can develop Microsoft Store apps and install them directly from an IDE.

- If you disable or don't configure this setting, you can't develop Microsoft Store apps or install them directly from an IDE.
<!-- AllowDeveloperUnlock-Description-End -->

<!-- AllowDeveloperUnlock-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowDeveloperUnlock-Editable-End -->

<!-- AllowDeveloperUnlock-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 65535 |
<!-- AllowDeveloperUnlock-DFProperties-End -->

<!-- AllowDeveloperUnlock-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Explicit deny. |
| 1 | Explicit allow unlock. |
| 65535 (Default) | Not configured. |
<!-- AllowDeveloperUnlock-AllowedValues-End -->

<!-- AllowDeveloperUnlock-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowDevelopmentWithoutDevLicense |
| Friendly Name | Allows development of packaged Microsoft Store apps and installing them from an integrated development environment (IDE) |
| Location | Computer Configuration |
| Path | Windows Components > App Package Deployment |
| Registry Key Name | Software\Policies\Microsoft\Windows\Appx |
| Registry Value Name | AllowDevelopmentWithoutDevLicense |
| ADMX File Name | AppxPackageManager.admx |
<!-- AllowDeveloperUnlock-GpMapping-End -->

<!-- AllowDeveloperUnlock-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowDeveloperUnlock-Examples-End -->

<!-- AllowDeveloperUnlock-End -->

<!-- AllowGameDVR-Begin -->
## AllowGameDVR

<!-- AllowGameDVR-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowGameDVR-Applicability-End -->

<!-- AllowGameDVR-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ApplicationManagement/AllowGameDVR
```
<!-- AllowGameDVR-OmaUri-End -->

<!-- AllowGameDVR-Description-Begin -->
<!-- Description-Source-ADMX -->
Windows Game Recording and Broadcasting.

This setting enables or disables the Windows Game Recording and Broadcasting features. If you disable this setting, Windows Game Recording won't be allowed.

If the setting is enabled or not configured, then Recording and Broadcasting (streaming) will be allowed.
<!-- AllowGameDVR-Description-End -->

<!-- AllowGameDVR-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.
<!-- AllowGameDVR-Editable-End -->

<!-- AllowGameDVR-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowGameDVR-DFProperties-End -->

<!-- AllowGameDVR-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowGameDVR-AllowedValues-End -->

<!-- AllowGameDVR-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowGameDVR |
| Friendly Name | Enables or disables Windows Game Recording and Broadcasting |
| Location | Computer Configuration |
| Path | Windows Components > Windows Game Recording and Broadcasting |
| Registry Key Name | Software\Policies\Microsoft\Windows\GameDVR |
| Registry Value Name | AllowGameDVR |
| ADMX File Name | GameDVR.admx |
<!-- AllowGameDVR-GpMapping-End -->

<!-- AllowGameDVR-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowGameDVR-Examples-End -->

<!-- AllowGameDVR-End -->

<!-- AllowSharedUserAppData-Begin -->
## AllowSharedUserAppData

<!-- AllowSharedUserAppData-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowSharedUserAppData-Applicability-End -->

<!-- AllowSharedUserAppData-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ApplicationManagement/AllowSharedUserAppData
```
<!-- AllowSharedUserAppData-OmaUri-End -->

<!-- AllowSharedUserAppData-Description-Begin -->
<!-- Description-Source-ADMX -->
Manages a Windows app's ability to share data between users who have installed the app.

- If you enable this policy, a Windows app can share app data with other instances of that app. Data is shared through the SharedLocal folder. This folder is available through the Windows. Storage API.

- If you disable this policy, a Windows app can't share app data with other instances of that app. If this policy was previously enabled, any previously shared app data will remain in the SharedLocal folder.
<!-- AllowSharedUserAppData-Description-End -->

<!-- AllowSharedUserAppData-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowSharedUserAppData-Editable-End -->

<!-- AllowSharedUserAppData-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowSharedUserAppData-DFProperties-End -->

<!-- AllowSharedUserAppData-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Prevented/not allowed, but Microsoft Edge downloads book files to a per-user folder for each user. |
| 1 | Allowed. Microsoft Edge downloads book files into a shared folder. For this policy to work correctly, you must also enable the Allow a Windows app to share application data between users group policy. Also, the users must be signed in with a school or work account. |
<!-- AllowSharedUserAppData-AllowedValues-End -->

<!-- AllowSharedUserAppData-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowSharedLocalAppData |
| Friendly Name | Allow a Windows app to share application data between users |
| Location | Computer Configuration |
| Path | Windows Components > App Package Deployment |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\AppModel\StateManager |
| Registry Value Name | AllowSharedLocalAppData |
| ADMX File Name | AppxPackageManager.admx |
<!-- AllowSharedUserAppData-GpMapping-End -->

<!-- AllowSharedUserAppData-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSharedUserAppData-Examples-End -->

<!-- AllowSharedUserAppData-End -->

<!-- AllowStore-Begin -->
## AllowStore

> [!NOTE]
> This policy is deprecated and may be removed in a future release.

<!-- AllowStore-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | Not applicable | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowStore-Applicability-End -->

<!-- AllowStore-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ApplicationManagement/AllowStore
```
<!-- AllowStore-OmaUri-End -->

<!-- AllowStore-Description-Begin -->
<!-- Description-Source-DDF -->
This policy is deprecated.
<!-- AllowStore-Description-End -->

<!-- AllowStore-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowStore-Editable-End -->

<!-- AllowStore-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowStore-DFProperties-End -->

<!-- AllowStore-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disallow. |
| 1 (Default) | Allow. |
<!-- AllowStore-AllowedValues-End -->

<!-- AllowStore-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowStore-Examples-End -->

<!-- AllowStore-End -->

<!-- ApplicationRestrictions-Begin -->
## ApplicationRestrictions

> [!NOTE]
> This policy is deprecated and may be removed in a future release.

<!-- ApplicationRestrictions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | Not applicable | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- ApplicationRestrictions-Applicability-End -->

<!-- ApplicationRestrictions-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ApplicationManagement/ApplicationRestrictions
```
<!-- ApplicationRestrictions-OmaUri-End -->

<!-- ApplicationRestrictions-Description-Begin -->
<!-- Description-Source-DDF -->
This policy is deprecated.
<!-- ApplicationRestrictions-Description-End -->

<!-- ApplicationRestrictions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ApplicationRestrictions-Editable-End -->

<!-- ApplicationRestrictions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ApplicationRestrictions-DFProperties-End -->

<!-- ApplicationRestrictions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ApplicationRestrictions-Examples-End -->

<!-- ApplicationRestrictions-End -->

<!-- BlockNonAdminUserInstall-Begin -->
## BlockNonAdminUserInstall

<!-- BlockNonAdminUserInstall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- BlockNonAdminUserInstall-Applicability-End -->

<!-- BlockNonAdminUserInstall-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ApplicationManagement/BlockNonAdminUserInstall
```
<!-- BlockNonAdminUserInstall-OmaUri-End -->

<!-- BlockNonAdminUserInstall-Description-Begin -->
<!-- Description-Source-ADMX -->
Manages non-Administrator users' ability to install Windows app packages.

- If you enable this policy, non-Administrators will be unable to initiate installation of Windows app packages. Administrators who wish to install an app will need to do so from an Administrator context (for example, an Administrator PowerShell window). All users will still be able to install Windows app packages via the Microsoft Store, if permitted by other policies.

- If you disable or don't configure this policy, all users will be able to initiate installation of Windows app packages.
<!-- BlockNonAdminUserInstall-Description-End -->

<!-- BlockNonAdminUserInstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BlockNonAdminUserInstall-Editable-End -->

<!-- BlockNonAdminUserInstall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- BlockNonAdminUserInstall-DFProperties-End -->

<!-- BlockNonAdminUserInstall-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. All users will be able to initiate installation of Windows app packages. |
| 1 | Enabled. Non-administrator users won't be able to initiate installation of Windows app packages. |
<!-- BlockNonAdminUserInstall-AllowedValues-End -->

<!-- BlockNonAdminUserInstall-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | BlockNonAdminUserInstall |
| Friendly Name | Prevent non-admin users from installing packaged Windows apps |
| Location | Computer Configuration |
| Path | Windows Components > App Package Deployment |
| Registry Key Name | Software\Policies\Microsoft\Windows\Appx |
| Registry Value Name | BlockNonAdminUserInstall |
| ADMX File Name | AppxPackageManager.admx |
<!-- BlockNonAdminUserInstall-GpMapping-End -->

<!-- BlockNonAdminUserInstall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BlockNonAdminUserInstall-Examples-End -->

<!-- BlockNonAdminUserInstall-End -->

<!-- DisableStoreOriginatedApps-Begin -->
## DisableStoreOriginatedApps

<!-- DisableStoreOriginatedApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- DisableStoreOriginatedApps-Applicability-End -->

<!-- DisableStoreOriginatedApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ApplicationManagement/DisableStoreOriginatedApps
```
<!-- DisableStoreOriginatedApps-OmaUri-End -->

<!-- DisableStoreOriginatedApps-Description-Begin -->
<!-- Description-Source-ADMX -->
Disable turns off the launch of all apps from the Microsoft Store that came pre-installed or were downloaded. Apps won't be updated. Your Store will also be disabled. Enable turns all of it back on. This setting applies only to Enterprise and Education editions of Windows.
<!-- DisableStoreOriginatedApps-Description-End -->

<!-- DisableStoreOriginatedApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableStoreOriginatedApps-Editable-End -->

<!-- DisableStoreOriginatedApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableStoreOriginatedApps-DFProperties-End -->

<!-- DisableStoreOriginatedApps-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Enable launch of apps. |
| 1 | Disable launch of apps. |
<!-- DisableStoreOriginatedApps-AllowedValues-End -->

<!-- DisableStoreOriginatedApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableStoreApps |
| Friendly Name | Disable all apps from Microsoft Store  |
| Location | Computer Configuration |
| Path | Windows Components > Store |
| Registry Key Name | Software\Policies\Microsoft\WindowsStore |
| Registry Value Name | DisableStoreApps |
| ADMX File Name | WindowsStore.admx |
<!-- DisableStoreOriginatedApps-GpMapping-End -->

<!-- DisableStoreOriginatedApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableStoreOriginatedApps-Examples-End -->

<!-- DisableStoreOriginatedApps-End -->

<!-- LaunchAppAfterLogOn-Begin -->
## LaunchAppAfterLogOn

<!-- LaunchAppAfterLogOn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- LaunchAppAfterLogOn-Applicability-End -->

<!-- LaunchAppAfterLogOn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ApplicationManagement/LaunchAppAfterLogOn
```
<!-- LaunchAppAfterLogOn-OmaUri-End -->

<!-- LaunchAppAfterLogOn-Description-Begin -->
<!-- Description-Source-DDF -->
List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are to be launched after logon.
<!-- LaunchAppAfterLogOn-Description-End -->

<!-- LaunchAppAfterLogOn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This policy allows the IT admin to specify a list of applications that users can run after logging on to the device.

> [!NOTE]
> This policy only works on modern apps.
<!-- LaunchAppAfterLogOn-Editable-End -->

<!-- LaunchAppAfterLogOn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LaunchAppAfterLogOn-DFProperties-End -->

<!-- LaunchAppAfterLogOn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
For this policy to work, the Windows apps need to declare in their manifest that they'll use the startup task.

**Example**:

```xml
<desktop:Extension Category="windows.startupTask">
   <desktop:StartupTask TaskId="CoffeeStartupTask" Enabled="true" DisplayName="ms-resource:Description" />
</desktop:Extension>
```
<!-- LaunchAppAfterLogOn-Examples-End -->

<!-- LaunchAppAfterLogOn-End -->

<!-- MSIAllowUserControlOverInstall-Begin -->
## MSIAllowUserControlOverInstall

<!-- MSIAllowUserControlOverInstall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- MSIAllowUserControlOverInstall-Applicability-End -->

<!-- MSIAllowUserControlOverInstall-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ApplicationManagement/MSIAllowUserControlOverInstall
```
<!-- MSIAllowUserControlOverInstall-OmaUri-End -->

<!-- MSIAllowUserControlOverInstall-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits users to change installation options that typically are available only to system administrators.

- If you enable this policy setting, some of the security features of Windows Installer are bypassed. It permits installations to complete that otherwise would be halted due to a security violation.

- If you disable or don't configure this policy setting, the security features of Windows Installer prevent users from changing installation options typically reserved for system administrators, such as specifying the directory to which files are installed.

If Windows Installer detects that an installation package has permitted the user to change a protected option, it stops the installation and displays a message. These security features operate only when the installation program is running in a privileged security context in which it has access to directories denied to the user.

This policy setting is designed for less restrictive environments. It can be used to circumvent errors in an installation program that prevents software from being installed.
<!-- MSIAllowUserControlOverInstall-Description-End -->

<!-- MSIAllowUserControlOverInstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MSIAllowUserControlOverInstall-Editable-End -->

<!-- MSIAllowUserControlOverInstall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- MSIAllowUserControlOverInstall-DFProperties-End -->

<!-- MSIAllowUserControlOverInstall-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- MSIAllowUserControlOverInstall-AllowedValues-End -->

<!-- MSIAllowUserControlOverInstall-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | EnableUserControl |
| Friendly Name | Allow user control over installs |
| Location | Computer Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| Registry Value Name | EnableUserControl |
| ADMX File Name | MSI.admx |
<!-- MSIAllowUserControlOverInstall-GpMapping-End -->

<!-- MSIAllowUserControlOverInstall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MSIAllowUserControlOverInstall-Examples-End -->

<!-- MSIAllowUserControlOverInstall-End -->

<!-- MSIAlwaysInstallWithElevatedPrivileges-Begin -->
## MSIAlwaysInstallWithElevatedPrivileges

<!-- MSIAlwaysInstallWithElevatedPrivileges-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- MSIAlwaysInstallWithElevatedPrivileges-Applicability-End -->

<!-- MSIAlwaysInstallWithElevatedPrivileges-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ApplicationManagement/MSIAlwaysInstallWithElevatedPrivileges
```

```Device
./Device/Vendor/MSFT/Policy/Config/ApplicationManagement/MSIAlwaysInstallWithElevatedPrivileges
```
<!-- MSIAlwaysInstallWithElevatedPrivileges-OmaUri-End -->

<!-- MSIAlwaysInstallWithElevatedPrivileges-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting directs Windows Installer to use elevated permissions when it installs any program on the system.

- If you enable this policy setting, privileges are extended to all programs. These privileges are usually reserved for programs that have been assigned to the user (offered on the desktop), assigned to the computer (installed automatically), or made available in Add or Remove Programs in Control Panel. This profile setting lets users install programs that require access to directories that the user might not have permission to view or change, including directories on highly restricted computers.

- If you disable or don't configure this policy setting, the system applies the current user's permissions when it installs programs that a system administrator doesn't distribute or offer.

> [!NOTE]
> This policy setting appears both in the Computer Configuration and User Configuration folders. To make this policy setting effective, you must enable it in both folders.

> [!CAUTION]
> Skilled users can take advantage of the permissions this policy setting grants to change their privileges and gain permanent access to restricted files and folders. Note that the User Configuration version of this policy setting isn't guaranteed to be secure.
<!-- MSIAlwaysInstallWithElevatedPrivileges-Description-End -->

<!-- MSIAlwaysInstallWithElevatedPrivileges-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MSIAlwaysInstallWithElevatedPrivileges-Editable-End -->

<!-- MSIAlwaysInstallWithElevatedPrivileges-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- MSIAlwaysInstallWithElevatedPrivileges-DFProperties-End -->

<!-- MSIAlwaysInstallWithElevatedPrivileges-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- MSIAlwaysInstallWithElevatedPrivileges-AllowedValues-End -->

<!-- MSIAlwaysInstallWithElevatedPrivileges-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AlwaysInstallElevated |
| Friendly Name | Always install with elevated privileges |
| Location | Computer and User Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| Registry Value Name | AlwaysInstallElevated |
| ADMX File Name | MSI.admx |
<!-- MSIAlwaysInstallWithElevatedPrivileges-GpMapping-End -->

<!-- MSIAlwaysInstallWithElevatedPrivileges-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MSIAlwaysInstallWithElevatedPrivileges-Examples-End -->

<!-- MSIAlwaysInstallWithElevatedPrivileges-End -->

<!-- RequirePrivateStoreOnly-Begin -->
## RequirePrivateStoreOnly

<!-- RequirePrivateStoreOnly-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- RequirePrivateStoreOnly-Applicability-End -->

<!-- RequirePrivateStoreOnly-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ApplicationManagement/RequirePrivateStoreOnly
```

```Device
./Device/Vendor/MSFT/Policy/Config/ApplicationManagement/RequirePrivateStoreOnly
```
<!-- RequirePrivateStoreOnly-OmaUri-End -->

<!-- RequirePrivateStoreOnly-Description-Begin -->
<!-- Description-Source-ADMX -->
Denies access to the retail catalog in the Microsoft Store, but displays the private store.

- If you enable this setting, users won't be able to view the retail catalog in the Microsoft Store, but they will be able to view apps in the private store.

- If you disable or don't configure this setting, users can access the retail catalog in the Microsoft Store.
<!-- RequirePrivateStoreOnly-Description-End -->

<!-- RequirePrivateStoreOnly-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RequirePrivateStoreOnly-Editable-End -->

<!-- RequirePrivateStoreOnly-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- RequirePrivateStoreOnly-DFProperties-End -->

<!-- RequirePrivateStoreOnly-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allow both public and Private store. |
| 1 | Only Private store is enabled. |
<!-- RequirePrivateStoreOnly-AllowedValues-End -->

<!-- RequirePrivateStoreOnly-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | RequirePrivateStoreOnly |
| Friendly Name | Only display the private store within the Microsoft Store |
| Location | Computer and User Configuration |
| Path | Windows Components > Store |
| Registry Key Name | Software\Policies\Microsoft\WindowsStore |
| Registry Value Name | RequirePrivateStoreOnly |
| ADMX File Name | WindowsStore.admx |
<!-- RequirePrivateStoreOnly-GpMapping-End -->

<!-- RequirePrivateStoreOnly-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RequirePrivateStoreOnly-Examples-End -->

<!-- RequirePrivateStoreOnly-End -->

<!-- RestrictAppDataToSystemVolume-Begin -->
## RestrictAppDataToSystemVolume

<!-- RestrictAppDataToSystemVolume-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- RestrictAppDataToSystemVolume-Applicability-End -->

<!-- RestrictAppDataToSystemVolume-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ApplicationManagement/RestrictAppDataToSystemVolume
```
<!-- RestrictAppDataToSystemVolume-OmaUri-End -->

<!-- RestrictAppDataToSystemVolume-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevent users' app data from moving to another location when an app is moved or installed on another location.

- If you enable this setting, all users' app data will stay on the system volume, regardless of where the app is installed.

- If you disable or don't configure this setting, then when an app is moved to a different volume, the users' app data will also move to this volume.
<!-- RestrictAppDataToSystemVolume-Description-End -->

<!-- RestrictAppDataToSystemVolume-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictAppDataToSystemVolume-Editable-End -->

<!-- RestrictAppDataToSystemVolume-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- RestrictAppDataToSystemVolume-DFProperties-End -->

<!-- RestrictAppDataToSystemVolume-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not restricted. |
| 1 | Restricted. |
<!-- RestrictAppDataToSystemVolume-AllowedValues-End -->

<!-- RestrictAppDataToSystemVolume-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | RestrictAppDataToSystemVolume |
| Friendly Name | Prevent users' app data from being stored on non-system volumes |
| Location | Computer Configuration |
| Path | Windows Components > App Package Deployment |
| Registry Key Name | Software\Policies\Microsoft\Windows\Appx |
| Registry Value Name | RestrictAppDataToSystemVolume |
| ADMX File Name | AppxPackageManager.admx |
<!-- RestrictAppDataToSystemVolume-GpMapping-End -->

<!-- RestrictAppDataToSystemVolume-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictAppDataToSystemVolume-Examples-End -->

<!-- RestrictAppDataToSystemVolume-End -->

<!-- RestrictAppToSystemVolume-Begin -->
## RestrictAppToSystemVolume

<!-- RestrictAppToSystemVolume-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- RestrictAppToSystemVolume-Applicability-End -->

<!-- RestrictAppToSystemVolume-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ApplicationManagement/RestrictAppToSystemVolume
```
<!-- RestrictAppToSystemVolume-OmaUri-End -->

<!-- RestrictAppToSystemVolume-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage installing Windows apps on additional volumes such as secondary partitions, USB drives, or SD cards.

- If you enable this setting, you can't move or install Windows apps on volumes that aren't the system volume.

- If you disable or don't configure this setting, you can move or install Windows apps on other volumes.
<!-- RestrictAppToSystemVolume-Description-End -->

<!-- RestrictAppToSystemVolume-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictAppToSystemVolume-Editable-End -->

<!-- RestrictAppToSystemVolume-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- RestrictAppToSystemVolume-DFProperties-End -->

<!-- RestrictAppToSystemVolume-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not restricted. |
| 1 | Restricted. |
<!-- RestrictAppToSystemVolume-AllowedValues-End -->

<!-- RestrictAppToSystemVolume-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableDeploymentToNonSystemVolumes |
| Friendly Name | Disable installing Windows apps on non-system volumes |
| Location | Computer Configuration |
| Path | Windows Components > App Package Deployment |
| Registry Key Name | Software\Policies\Microsoft\Windows\Appx |
| Registry Value Name | RestrictAppToSystemVolume |
| ADMX File Name | AppxPackageManager.admx |
<!-- RestrictAppToSystemVolume-GpMapping-End -->

<!-- RestrictAppToSystemVolume-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictAppToSystemVolume-Examples-End -->

<!-- RestrictAppToSystemVolume-End -->

<!-- ScheduleForceRestartForUpdateFailures-Begin -->
## ScheduleForceRestartForUpdateFailures

<!-- ScheduleForceRestartForUpdateFailures-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- ScheduleForceRestartForUpdateFailures-Applicability-End -->

<!-- ScheduleForceRestartForUpdateFailures-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ApplicationManagement/ScheduleForceRestartForUpdateFailures
```
<!-- ScheduleForceRestartForUpdateFailures-OmaUri-End -->

<!-- ScheduleForceRestartForUpdateFailures-Description-Begin -->
<!-- Description-Source-DDF -->
To ensure apps are up-to-date, this policy allows the admins to set a recurring or one time date to restart apps whose update failed due to the app being in use allowing the update to be applied. Value type is string.
<!-- ScheduleForceRestartForUpdateFailures-Description-End -->

<!-- ScheduleForceRestartForUpdateFailures-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ScheduleForceRestartForUpdateFailures-Editable-End -->

<!-- ScheduleForceRestartForUpdateFailures-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ScheduleForceRestartForUpdateFailures-DFProperties-End -->

<!-- ScheduleForceRestartForUpdateFailures-AllowedValues-Begin -->
**Allowed values**:

<br>
<details>
  <summary>Expand to see schema XML</summary>

```xml
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:simpleType name="recurrence" final="restriction">
    <xs:restriction base="xs:string">
      <xs:enumeration value="None" />
      <xs:enumeration value="Daily" />
      <xs:enumeration value="Weekly" />
      <xs:enumeration value="Monthly" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="daysOfWeek" final="restriction">
    <xs:restriction base="xs:unsignedByte">
      <xs:minInclusive value="1" />
      <xs:maxInclusive value="127" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="daysOfMonth" final="restriction">
    <xs:restriction base="xs:unsignedInt">
      <xs:minInclusive value="1" />
    </xs:restriction>
  </xs:simpleType>
  <xs:element name="ForceRestart">
    <xs:complexType>
      <xs:attribute name="StartDateTime" type="xs:dateTime" use="required" />
      <xs:attribute name="Recurrence" type="recurrence" use="required" />
      <xs:attribute name="RunIfTaskIsMissed" type="xs:boolean" use="required" />
      <xs:attribute name="DaysOfWeek" type="daysOfWeek" />
      <xs:attribute name="DaysOfMonth" type="daysOfMonth" />
    </xs:complexType>
  </xs:element>
</xs:schema>
```

</details>
<!-- ScheduleForceRestartForUpdateFailures-AllowedValues-End -->

<!-- ScheduleForceRestartForUpdateFailures-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->

**Example**:

```xml
<SyncML xmlns="SYNCML:SYNCML1.1">
  <SyncBody>
    <Add>
      <CmdID>2</CmdID>
      <Item>
        <Target>
          <LocURI> ./Device/Vendor/MSFT/Policy/Config/ApplicationManagement/ScheduleForceRestartForUpdateFailures
          </LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">xml</Format>
        </Meta>
        <Data>
          <ForceRestart StartDateTime="2018-03-28T22:21:52Z"
                        Recurrence="[None/Daily/Weekly/Monthly]"
                        DayOfWeek=”1”
                        DayOfMonth=”12”
                        RunIfTaskIsMissed=”1”/>
        </Data>
      </Item>
    </Add>
  </SyncBody>
</SycnML>
```

> [!NOTE]
> The check for recurrence is done in a case sensitive manner. For instance the value needs to be "Daily" instead of "daily". The wrong case will cause SmartRetry to fail to execute.
<!-- ScheduleForceRestartForUpdateFailures-Examples-End -->

<!-- ScheduleForceRestartForUpdateFailures-End -->

<!-- ApplicationManagement-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ApplicationManagement-CspMoreInfo-End -->

<!-- ApplicationManagement-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
