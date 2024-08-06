---
title: ADMX_OfflineFiles Policy CSP
description: Learn more about the ADMX_OfflineFiles Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_OfflineFiles-Begin -->
# Policy CSP - ADMX_OfflineFiles

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_OfflineFiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_OfflineFiles-Editable-End -->

<!-- Pol_AlwaysPinSubFolders-Begin -->
## Pol_AlwaysPinSubFolders

<!-- Pol_AlwaysPinSubFolders-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_AlwaysPinSubFolders-Applicability-End -->

<!-- Pol_AlwaysPinSubFolders-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_AlwaysPinSubFolders
```
<!-- Pol_AlwaysPinSubFolders-OmaUri-End -->

<!-- Pol_AlwaysPinSubFolders-Description-Begin -->
<!-- Description-Source-ADMX -->
Makes subfolders available offline whenever their parent folder is made available offline.

This setting automatically extends the "make available offline" setting to all new and existing subfolders of a folder. Users don't have the option of excluding subfolders.

- If you enable this setting, when you make a folder available offline, all folders within that folder are also made available offline. Also, new folders that you create within a folder that's available offline are made available offline when the parent folder is synchronized.

- If you disable this setting or don't configure it, the system asks users whether they want subfolders to be made available offline when they make a parent folder available offline.
<!-- Pol_AlwaysPinSubFolders-Description-End -->

<!-- Pol_AlwaysPinSubFolders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_AlwaysPinSubFolders-Editable-End -->

<!-- Pol_AlwaysPinSubFolders-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_AlwaysPinSubFolders-DFProperties-End -->

<!-- Pol_AlwaysPinSubFolders-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_AlwaysPinSubFolders |
| Friendly Name | Subfolders always available offline |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| Registry Value Name | AlwaysPinSubFolders |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_AlwaysPinSubFolders-AdmxBacked-End -->

<!-- Pol_AlwaysPinSubFolders-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_AlwaysPinSubFolders-Examples-End -->

<!-- Pol_AlwaysPinSubFolders-End -->

<!-- Pol_AssignedOfflineFiles_1-Begin -->
## Pol_AssignedOfflineFiles_1

<!-- Pol_AssignedOfflineFiles_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_AssignedOfflineFiles_1-Applicability-End -->

<!-- Pol_AssignedOfflineFiles_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_AssignedOfflineFiles_1
```
<!-- Pol_AssignedOfflineFiles_1-OmaUri-End -->

<!-- Pol_AssignedOfflineFiles_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lists network files and folders that are always available for offline use. This ensures that the specified files and folders are available offline to users of the computer.

- If you enable this policy setting, the files you enter are always available offline to users of the computer. To specify a file or folder, click Show. In the Show Contents dialog box in the Value Name column, type the fully qualified UNC path to the file or folder. Leave the Value column field blank.

- If you disable this policy setting, the list of files or folders made always available offline (including those inherited from lower precedence GPOs) is deleted and no files or folders are made available for offline use by Group Policy (though users can still specify their own files and folders for offline use).

- If you don't configure this policy setting, no files or folders are made available for offline use by Group Policy.

> [!NOTE]
> This setting appears in the Computer Configuration and User Configuration folders. If both policy settings are configured, the policy settings will be combined and all specified files will be available for offline use.
<!-- Pol_AssignedOfflineFiles_1-Description-End -->

<!-- Pol_AssignedOfflineFiles_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_AssignedOfflineFiles_1-Editable-End -->

<!-- Pol_AssignedOfflineFiles_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_AssignedOfflineFiles_1-DFProperties-End -->

<!-- Pol_AssignedOfflineFiles_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_AssignedOfflineFiles_1 |
| Friendly Name | Specify administratively assigned Offline Files |
| Location | User Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_AssignedOfflineFiles_1-AdmxBacked-End -->

<!-- Pol_AssignedOfflineFiles_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_AssignedOfflineFiles_1-Examples-End -->

<!-- Pol_AssignedOfflineFiles_1-End -->

<!-- Pol_AssignedOfflineFiles_2-Begin -->
## Pol_AssignedOfflineFiles_2

<!-- Pol_AssignedOfflineFiles_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_AssignedOfflineFiles_2-Applicability-End -->

<!-- Pol_AssignedOfflineFiles_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_AssignedOfflineFiles_2
```
<!-- Pol_AssignedOfflineFiles_2-OmaUri-End -->

<!-- Pol_AssignedOfflineFiles_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lists network files and folders that are always available for offline use. This ensures that the specified files and folders are available offline to users of the computer.

- If you enable this policy setting, the files you enter are always available offline to users of the computer. To specify a file or folder, click Show. In the Show Contents dialog box in the Value Name column, type the fully qualified UNC path to the file or folder. Leave the Value column field blank.

- If you disable this policy setting, the list of files or folders made always available offline (including those inherited from lower precedence GPOs) is deleted and no files or folders are made available for offline use by Group Policy (though users can still specify their own files and folders for offline use).

- If you don't configure this policy setting, no files or folders are made available for offline use by Group Policy.

> [!NOTE]
> This setting appears in the Computer Configuration and User Configuration folders. If both policy settings are configured, the policy settings will be combined and all specified files will be available for offline use.
<!-- Pol_AssignedOfflineFiles_2-Description-End -->

<!-- Pol_AssignedOfflineFiles_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_AssignedOfflineFiles_2-Editable-End -->

<!-- Pol_AssignedOfflineFiles_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_AssignedOfflineFiles_2-DFProperties-End -->

<!-- Pol_AssignedOfflineFiles_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_AssignedOfflineFiles_2 |
| Friendly Name | Specify administratively assigned Offline Files |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_AssignedOfflineFiles_2-AdmxBacked-End -->

<!-- Pol_AssignedOfflineFiles_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_AssignedOfflineFiles_2-Examples-End -->

<!-- Pol_AssignedOfflineFiles_2-End -->

<!-- Pol_BackgroundSyncSettings-Begin -->
## Pol_BackgroundSyncSettings

<!-- Pol_BackgroundSyncSettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_BackgroundSyncSettings-Applicability-End -->

<!-- Pol_BackgroundSyncSettings-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_BackgroundSyncSettings
```
<!-- Pol_BackgroundSyncSettings-OmaUri-End -->

<!-- Pol_BackgroundSyncSettings-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls when background synchronization occurs while operating in slow-link mode, and applies to any user who logs onto the specified machine while this policy is in effect. To control slow-link mode, use the "Configure slow-link mode" policy setting.

- If you enable this policy setting, you can control when Windows synchronizes in the background while operating in slow-link mode. Use the 'Sync Interval' and 'Sync Variance' values to override the default sync interval and variance settings. Use 'Blockout Start Time' and 'Blockout Duration' to set a period of time where background sync is disabled. Use the 'Maximum Allowed Time Without A Sync' value to ensure that all network folders on the machine are synchronized with the server on a regular basis.

You can also configure Background Sync for network shares that are in user selected Work Offline mode. This mode is in effect when a user selects the Work Offline button for a specific share. When selected, all configured settings will apply to shares in user selected Work Offline mode as well.

- If you disable or don't configure this policy setting, Windows performs a background sync of offline folders in the slow-link mode at a default interval with the start of the sync varying between 0 and 60 additional minutes. In Windows 7 and Windows Server 2008 R2, the default sync interval is 360 minutes. In Windows 8 and Windows Server 2012, the default sync interval is 120 minutes.
<!-- Pol_BackgroundSyncSettings-Description-End -->

<!-- Pol_BackgroundSyncSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_BackgroundSyncSettings-Editable-End -->

<!-- Pol_BackgroundSyncSettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_BackgroundSyncSettings-DFProperties-End -->

<!-- Pol_BackgroundSyncSettings-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_BackgroundSyncSettings |
| Friendly Name | Configure Background Sync |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| Registry Value Name | BackgroundSyncEnabled |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_BackgroundSyncSettings-AdmxBacked-End -->

<!-- Pol_BackgroundSyncSettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_BackgroundSyncSettings-Examples-End -->

<!-- Pol_BackgroundSyncSettings-End -->

<!-- Pol_CacheSize-Begin -->
## Pol_CacheSize

<!-- Pol_CacheSize-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_CacheSize-Applicability-End -->

<!-- Pol_CacheSize-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_CacheSize
```
<!-- Pol_CacheSize-OmaUri-End -->

<!-- Pol_CacheSize-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting limits the amount of disk space that can be used to store offline files. This includes the space used by automatically cached files and files that are specifically made available offline. Files can be automatically cached if the user accesses a file on an automatic caching network share.

This setting also disables the ability to adjust, through the Offline Files control panel applet, the disk space limits on the Offline Files cache. This prevents users from trying to change the option while a policy setting controls it.

- If you enable this policy setting, you can specify the disk space limit (in megabytes) for offline files and also specify how much of that disk space can be used by automatically cached files.

- If you disable this policy setting, the system limits the space that offline files occupy to 25 percent of the total space on the drive where the Offline Files cache is located. The limit for automatically cached files is 100 percent of the total disk space limit.

- If you don't configure this policy setting, the system limits the space that offline files occupy to 25 percent of the total space on the drive where the Offline Files cache is located. The limit for automatically cached files is 100 percent of the total disk space limit. However, the users can change these values using the Offline Files control applet.

- If you enable this setting and specify a total size limit greater than the size of the drive hosting the Offline Files cache, and that drive is the system drive, the total size limit's automatically adjusted downward to 75 percent of the size of the drive. If the cache is located on a drive other than the system drive, the limit's automatically adjusted downward to 100 percent of the size of the drive.

- If you enable this setting and specify a total size limit less than the amount of space currently used by the Offline Files cache, the total size limit's automatically adjusted upward to the amount of space currently used by offline files. The cache is then considered full.

- If you enable this setting and specify an auto-cached space limit greater than the total size limit, the auto-cached limit's automatically adjusted downward to equal the total size limit.

This setting replaces the Default Cache Size setting used by pre-Windows Vista systems.
<!-- Pol_CacheSize-Description-End -->

<!-- Pol_CacheSize-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_CacheSize-Editable-End -->

<!-- Pol_CacheSize-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_CacheSize-DFProperties-End -->

<!-- Pol_CacheSize-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_CacheSize |
| Friendly Name | Limit disk space used by Offline Files |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_CacheSize-AdmxBacked-End -->

<!-- Pol_CacheSize-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_CacheSize-Examples-End -->

<!-- Pol_CacheSize-End -->

<!-- Pol_CustomGoOfflineActions_1-Begin -->
## Pol_CustomGoOfflineActions_1

<!-- Pol_CustomGoOfflineActions_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_CustomGoOfflineActions_1-Applicability-End -->

<!-- Pol_CustomGoOfflineActions_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_CustomGoOfflineActions_1
```
<!-- Pol_CustomGoOfflineActions_1-OmaUri-End -->

<!-- Pol_CustomGoOfflineActions_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines how computers respond when they're disconnected from particular offline file servers. This setting overrides the default response, a user-specified response, and the response specified in the "Action on server disconnect" setting.

To use this setting, click Show. In the Show Contents dialog box in the Value Name column box, type the server's computer name. Then, in the Value column box, type "0" if users can work offline when they're disconnected from this server, or type "1" if they cannot.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured for a particular server, the setting in Computer Configuration takes precedence over the setting in User Configuration. Both Computer and User configuration take precedence over a user's setting. This setting doesn't prevent users from setting custom actions through the Offline Files tab. However, users are unable to change any custom actions established via this setting.

> [!TIP]
> To configure this setting without establishing a setting, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, and then click Advanced. This setting corresponds to the settings in the "Exception list" section.
<!-- Pol_CustomGoOfflineActions_1-Description-End -->

<!-- Pol_CustomGoOfflineActions_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_CustomGoOfflineActions_1-Editable-End -->

<!-- Pol_CustomGoOfflineActions_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_CustomGoOfflineActions_1-DFProperties-End -->

<!-- Pol_CustomGoOfflineActions_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_CustomGoOfflineActions_1 |
| Friendly Name | Non-default server disconnect actions |
| Location | User Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_CustomGoOfflineActions_1-AdmxBacked-End -->

<!-- Pol_CustomGoOfflineActions_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_CustomGoOfflineActions_1-Examples-End -->

<!-- Pol_CustomGoOfflineActions_1-End -->

<!-- Pol_CustomGoOfflineActions_2-Begin -->
## Pol_CustomGoOfflineActions_2

<!-- Pol_CustomGoOfflineActions_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_CustomGoOfflineActions_2-Applicability-End -->

<!-- Pol_CustomGoOfflineActions_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_CustomGoOfflineActions_2
```
<!-- Pol_CustomGoOfflineActions_2-OmaUri-End -->

<!-- Pol_CustomGoOfflineActions_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines how computers respond when they're disconnected from particular offline file servers. This setting overrides the default response, a user-specified response, and the response specified in the "Action on server disconnect" setting.

To use this setting, click Show. In the Show Contents dialog box in the Value Name column box, type the server's computer name. Then, in the Value column box, type "0" if users can work offline when they're disconnected from this server, or type "1" if they cannot.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured for a particular server, the setting in Computer Configuration takes precedence over the setting in User Configuration. Both Computer and User configuration take precedence over a user's setting. This setting doesn't prevent users from setting custom actions through the Offline Files tab. However, users are unable to change any custom actions established via this setting.

> [!TIP]
> To configure this setting without establishing a setting, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, and then click Advanced. This setting corresponds to the settings in the "Exception list" section.
<!-- Pol_CustomGoOfflineActions_2-Description-End -->

<!-- Pol_CustomGoOfflineActions_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_CustomGoOfflineActions_2-Editable-End -->

<!-- Pol_CustomGoOfflineActions_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_CustomGoOfflineActions_2-DFProperties-End -->

<!-- Pol_CustomGoOfflineActions_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_CustomGoOfflineActions_2 |
| Friendly Name | Non-default server disconnect actions |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_CustomGoOfflineActions_2-AdmxBacked-End -->

<!-- Pol_CustomGoOfflineActions_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_CustomGoOfflineActions_2-Examples-End -->

<!-- Pol_CustomGoOfflineActions_2-End -->

<!-- Pol_DefCacheSize-Begin -->
## Pol_DefCacheSize

<!-- Pol_DefCacheSize-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_DefCacheSize-Applicability-End -->

<!-- Pol_DefCacheSize-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_DefCacheSize
```
<!-- Pol_DefCacheSize-OmaUri-End -->

<!-- Pol_DefCacheSize-Description-Begin -->
<!-- Description-Source-ADMX -->
Limits the percentage of the computer's disk space that can be used to store automatically cached offline files.

This setting also disables the "Amount of disk space to use for temporary offline files" option on the Offline Files tab. This prevents users from trying to change the option while a setting controls it.

Automatic caching can be set on any network share. When a user opens a file on the share, the system automatically stores a copy of the file on the user's computer.

This setting doesn't limit the disk space available for files that user's make available offline manually.

- If you enable this setting, you can specify an automatic-cache disk space limit.

- If you disable this setting, the system limits the space that automatically cached files occupy to 10 percent of the space on the system drive.

- If you don't configure this setting, disk space for automatically cached files is limited to 10 percent of the system drive by default, but users can change it.

> [!TIP]
> To change the amount of disk space used for automatic caching without specifying a setting, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, and then use the slider bar associated with the "Amount of disk space to use for temporary offline files" option.
<!-- Pol_DefCacheSize-Description-End -->

<!-- Pol_DefCacheSize-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_DefCacheSize-Editable-End -->

<!-- Pol_DefCacheSize-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_DefCacheSize-DFProperties-End -->

<!-- Pol_DefCacheSize-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_DefCacheSize |
| Friendly Name | Default cache size |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_DefCacheSize-AdmxBacked-End -->

<!-- Pol_DefCacheSize-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_DefCacheSize-Examples-End -->

<!-- Pol_DefCacheSize-End -->

<!-- Pol_Enabled-Begin -->
## Pol_Enabled

<!-- Pol_Enabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_Enabled-Applicability-End -->

<!-- Pol_Enabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_Enabled
```
<!-- Pol_Enabled-OmaUri-End -->

<!-- Pol_Enabled-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether the Offline Files feature is enabled. Offline Files saves a copy of network files on the user's computer for use when the computer isn't connected to the network.

- If you enable this policy setting, Offline Files is enabled and users can't disable it.

- If you disable this policy setting, Offline Files is disabled and users can't enable it.

- If you don't configure this policy setting, Offline Files is enabled on Windows client computers, and disabled on computers running Windows Server, unless changed by the user.

> [!NOTE]
> Changes to this policy setting don't take effect until the affected computer is restarted.
<!-- Pol_Enabled-Description-End -->

<!-- Pol_Enabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_Enabled-Editable-End -->

<!-- Pol_Enabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_Enabled-DFProperties-End -->

<!-- Pol_Enabled-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_Enabled |
| Friendly Name | Allow or Disallow use of the Offline Files feature |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| Registry Value Name | Enabled |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_Enabled-AdmxBacked-End -->

<!-- Pol_Enabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_Enabled-Examples-End -->

<!-- Pol_Enabled-End -->

<!-- Pol_EncryptOfflineFiles-Begin -->
## Pol_EncryptOfflineFiles

<!-- Pol_EncryptOfflineFiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_EncryptOfflineFiles-Applicability-End -->

<!-- Pol_EncryptOfflineFiles-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_EncryptOfflineFiles
```
<!-- Pol_EncryptOfflineFiles-OmaUri-End -->

<!-- Pol_EncryptOfflineFiles-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether offline files are encrypted.

Offline files are locally cached copies of files from a network share. Encrypting this cache reduces the likelihood that a user could access files from the Offline Files cache without proper permissions.

- If you enable this policy setting, all files in the Offline Files cache are encrypted. This includes existing files as well as files added later. The cached copy on the local computer is affected, but the associated network copy is not. The user can't unencrypt Offline Files through the user interface.

- If you disable this policy setting, all files in the Offline Files cache are unencrypted. This includes existing files as well as files added later, even if the files were stored using NTFS encryption or BitLocker Drive Encryption while on the server. The cached copy on the local computer is affected, but the associated network copy is not. The user can't encrypt Offline Files through the user interface.

- If you don't configure this policy setting, encryption of the Offline Files cache is controlled by the user through the user interface. The current cache state is retained, and if the cache is only partially encrypted, the operation completes so that it's fully encrypted. The cache doesn't return to the unencrypted state. The user must be an administrator on the local computer to encrypt or decrypt the Offline Files cache.

> [!NOTE]
> By default, this cache is protected on NTFS partitions by ACLs.

This setting is applied at user logon. If this setting is changed after user logon then user logoff and logon is required for this setting to take effect.
<!-- Pol_EncryptOfflineFiles-Description-End -->

<!-- Pol_EncryptOfflineFiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_EncryptOfflineFiles-Editable-End -->

<!-- Pol_EncryptOfflineFiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_EncryptOfflineFiles-DFProperties-End -->

<!-- Pol_EncryptOfflineFiles-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_EncryptOfflineFiles |
| Friendly Name | Encrypt the Offline Files cache |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| Registry Value Name | EncryptCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_EncryptOfflineFiles-AdmxBacked-End -->

<!-- Pol_EncryptOfflineFiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_EncryptOfflineFiles-Examples-End -->

<!-- Pol_EncryptOfflineFiles-End -->

<!-- Pol_EventLoggingLevel_1-Begin -->
## Pol_EventLoggingLevel_1

<!-- Pol_EventLoggingLevel_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_EventLoggingLevel_1-Applicability-End -->

<!-- Pol_EventLoggingLevel_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_EventLoggingLevel_1
```
<!-- Pol_EventLoggingLevel_1-OmaUri-End -->

<!-- Pol_EventLoggingLevel_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines which events the Offline Files feature records in the event log.

Offline Files records events in the Application log in Event Viewer when it detects errors. By default, Offline Files records an event only when the offline files storage cache is corrupted. However, you can use this setting to specify additional events you want Offline Files to record.

To use this setting, in the "Enter" box, select the number corresponding to the events you want the system to log. The levels are cumulative; that is, each level includes the events in all preceding levels.

"0" records an error when the offline storage cache is corrupted.

"1" also records an event when the server hosting the offline file is disconnected from the network.

"2" also records events when the local computer is connected and disconnected from the network.

"3" also records an event when the server hosting the offline file is reconnected to the network.

> [!NOTE]
> This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
<!-- Pol_EventLoggingLevel_1-Description-End -->

<!-- Pol_EventLoggingLevel_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_EventLoggingLevel_1-Editable-End -->

<!-- Pol_EventLoggingLevel_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_EventLoggingLevel_1-DFProperties-End -->

<!-- Pol_EventLoggingLevel_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_EventLoggingLevel_1 |
| Friendly Name | Event logging level |
| Location | User Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_EventLoggingLevel_1-AdmxBacked-End -->

<!-- Pol_EventLoggingLevel_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_EventLoggingLevel_1-Examples-End -->

<!-- Pol_EventLoggingLevel_1-End -->

<!-- Pol_EventLoggingLevel_2-Begin -->
## Pol_EventLoggingLevel_2

<!-- Pol_EventLoggingLevel_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_EventLoggingLevel_2-Applicability-End -->

<!-- Pol_EventLoggingLevel_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_EventLoggingLevel_2
```
<!-- Pol_EventLoggingLevel_2-OmaUri-End -->

<!-- Pol_EventLoggingLevel_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines which events the Offline Files feature records in the event log.

Offline Files records events in the Application log in Event Viewer when it detects errors. By default, Offline Files records an event only when the offline files storage cache is corrupted. However, you can use this setting to specify additional events you want Offline Files to record.

To use this setting, in the "Enter" box, select the number corresponding to the events you want the system to log. The levels are cumulative; that is, each level includes the events in all preceding levels.

"0" records an error when the offline storage cache is corrupted.

"1" also records an event when the server hosting the offline file is disconnected from the network.

"2" also records events when the local computer is connected and disconnected from the network.

"3" also records an event when the server hosting the offline file is reconnected to the network.

> [!NOTE]
> This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
<!-- Pol_EventLoggingLevel_2-Description-End -->

<!-- Pol_EventLoggingLevel_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_EventLoggingLevel_2-Editable-End -->

<!-- Pol_EventLoggingLevel_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_EventLoggingLevel_2-DFProperties-End -->

<!-- Pol_EventLoggingLevel_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_EventLoggingLevel_2 |
| Friendly Name | Event logging level |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_EventLoggingLevel_2-AdmxBacked-End -->

<!-- Pol_EventLoggingLevel_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_EventLoggingLevel_2-Examples-End -->

<!-- Pol_EventLoggingLevel_2-End -->

<!-- Pol_ExclusionListSettings-Begin -->
## Pol_ExclusionListSettings

<!-- Pol_ExclusionListSettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_ExclusionListSettings-Applicability-End -->

<!-- Pol_ExclusionListSettings-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_ExclusionListSettings
```
<!-- Pol_ExclusionListSettings-OmaUri-End -->

<!-- Pol_ExclusionListSettings-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting enables administrators to block certain file types from being created in the folders that have been made available offline.

- If you enable this policy setting, a user will be unable to create files with the specified file extensions in any of the folders that have been made available offline.

- If you disable or don't configure this policy setting, a user can create a file of any type in the folders that have been made available offline.
<!-- Pol_ExclusionListSettings-Description-End -->

<!-- Pol_ExclusionListSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_ExclusionListSettings-Editable-End -->

<!-- Pol_ExclusionListSettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_ExclusionListSettings-DFProperties-End -->

<!-- Pol_ExclusionListSettings-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_ExclusionListSettings |
| Friendly Name | Enable file screens |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_ExclusionListSettings-AdmxBacked-End -->

<!-- Pol_ExclusionListSettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_ExclusionListSettings-Examples-End -->

<!-- Pol_ExclusionListSettings-End -->

<!-- Pol_ExtExclusionList-Begin -->
## Pol_ExtExclusionList

<!-- Pol_ExtExclusionList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_ExtExclusionList-Applicability-End -->

<!-- Pol_ExtExclusionList-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_ExtExclusionList
```
<!-- Pol_ExtExclusionList-OmaUri-End -->

<!-- Pol_ExtExclusionList-Description-Begin -->
<!-- Description-Source-ADMX -->
Lists types of files that can't be used offline.

This setting lets you exclude certain types of files from automatic and manual caching for offline use. The system doesn't cache files of the type specified in this setting even when they reside on a network share configured for automatic caching. Also, if users try to make a file of this type available offline, the operation will fail and the following message will be displayed in the Synchronization Manager progress dialog box: "Files of this type can't be made available offline".

This setting is designed to protect files that can't be separated, such as database components.

To use this setting, type the file name extension in the "Extensions" box. To type more than one extension, separate the extensions with a semicolon (;).

> [!NOTE]
> To make changes to this setting effective, you must log off and log on again.
<!-- Pol_ExtExclusionList-Description-End -->

<!-- Pol_ExtExclusionList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_ExtExclusionList-Editable-End -->

<!-- Pol_ExtExclusionList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_ExtExclusionList-DFProperties-End -->

<!-- Pol_ExtExclusionList-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_ExtExclusionList |
| Friendly Name | Files not cached |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_ExtExclusionList-AdmxBacked-End -->

<!-- Pol_ExtExclusionList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_ExtExclusionList-Examples-End -->

<!-- Pol_ExtExclusionList-End -->

<!-- Pol_GoOfflineAction_1-Begin -->
## Pol_GoOfflineAction_1

<!-- Pol_GoOfflineAction_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_GoOfflineAction_1-Applicability-End -->

<!-- Pol_GoOfflineAction_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_GoOfflineAction_1
```
<!-- Pol_GoOfflineAction_1-OmaUri-End -->

<!-- Pol_GoOfflineAction_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether network files remain available if the computer is suddenly disconnected from the server hosting the files.

This setting also disables the "When a network connection is lost" option on the Offline Files tab. This prevents users from trying to change the option while a setting controls it.

- If you enable this setting, you can use the "Action" box to specify how computers in the group respond.

- "Work offline" indicates that the computer can use local copies of network files while the server is inaccessible.

- "Never go offline" indicates that network files aren't available while the server is inaccessible.

- If you disable this setting or select the "Work offline" option, users can work offline if disconnected.

- If you don't configure this setting, users can work offline by default, but they can change this option.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To configure this setting without establishing a setting, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, click Advanced, and then select an option in the "When a network connection is lost" section.

Also, see the "Non-default server disconnect actions" setting.
<!-- Pol_GoOfflineAction_1-Description-End -->

<!-- Pol_GoOfflineAction_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_GoOfflineAction_1-Editable-End -->

<!-- Pol_GoOfflineAction_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_GoOfflineAction_1-DFProperties-End -->

<!-- Pol_GoOfflineAction_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_GoOfflineAction_1 |
| Friendly Name | Action on server disconnect |
| Location | User Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_GoOfflineAction_1-AdmxBacked-End -->

<!-- Pol_GoOfflineAction_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_GoOfflineAction_1-Examples-End -->

<!-- Pol_GoOfflineAction_1-End -->

<!-- Pol_GoOfflineAction_2-Begin -->
## Pol_GoOfflineAction_2

<!-- Pol_GoOfflineAction_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_GoOfflineAction_2-Applicability-End -->

<!-- Pol_GoOfflineAction_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_GoOfflineAction_2
```
<!-- Pol_GoOfflineAction_2-OmaUri-End -->

<!-- Pol_GoOfflineAction_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether network files remain available if the computer is suddenly disconnected from the server hosting the files.

This setting also disables the "When a network connection is lost" option on the Offline Files tab. This prevents users from trying to change the option while a setting controls it.

- If you enable this setting, you can use the "Action" box to specify how computers in the group respond.

- "Work offline" indicates that the computer can use local copies of network files while the server is inaccessible.

- "Never go offline" indicates that network files aren't available while the server is inaccessible.

- If you disable this setting or select the "Work offline" option, users can work offline if disconnected.

- If you don't configure this setting, users can work offline by default, but they can change this option.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To configure this setting without establishing a setting, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, click Advanced, and then select an option in the "When a network connection is lost" section.

Also, see the "Non-default server disconnect actions" setting.
<!-- Pol_GoOfflineAction_2-Description-End -->

<!-- Pol_GoOfflineAction_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_GoOfflineAction_2-Editable-End -->

<!-- Pol_GoOfflineAction_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_GoOfflineAction_2-DFProperties-End -->

<!-- Pol_GoOfflineAction_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_GoOfflineAction_2 |
| Friendly Name | Action on server disconnect |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_GoOfflineAction_2-AdmxBacked-End -->

<!-- Pol_GoOfflineAction_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_GoOfflineAction_2-Examples-End -->

<!-- Pol_GoOfflineAction_2-End -->

<!-- Pol_NoCacheViewer_1-Begin -->
## Pol_NoCacheViewer_1

<!-- Pol_NoCacheViewer_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_NoCacheViewer_1-Applicability-End -->

<!-- Pol_NoCacheViewer_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_NoCacheViewer_1
```
<!-- Pol_NoCacheViewer_1-OmaUri-End -->

<!-- Pol_NoCacheViewer_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Disables the Offline Files folder.

This setting disables the "View Files" button on the Offline Files tab. As a result, users can't use the Offline Files folder to view or open copies of network files stored on their computer. Also, they can't use the folder to view characteristics of offline files, such as their server status, type, or location.

This setting doesn't prevent users from working offline or from saving local copies of files available offline. Also, it doesn't prevent them from using other programs, such as Windows Explorer, to view their offline files.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To view the Offline Files Folder, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, and then click "View Files".
<!-- Pol_NoCacheViewer_1-Description-End -->

<!-- Pol_NoCacheViewer_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_NoCacheViewer_1-Editable-End -->

<!-- Pol_NoCacheViewer_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_NoCacheViewer_1-DFProperties-End -->

<!-- Pol_NoCacheViewer_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_NoCacheViewer_1 |
| Friendly Name | Prevent use of Offline Files folder |
| Location | User Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| Registry Value Name | NoCacheViewer |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_NoCacheViewer_1-AdmxBacked-End -->

<!-- Pol_NoCacheViewer_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_NoCacheViewer_1-Examples-End -->

<!-- Pol_NoCacheViewer_1-End -->

<!-- Pol_NoCacheViewer_2-Begin -->
## Pol_NoCacheViewer_2

<!-- Pol_NoCacheViewer_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_NoCacheViewer_2-Applicability-End -->

<!-- Pol_NoCacheViewer_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_NoCacheViewer_2
```
<!-- Pol_NoCacheViewer_2-OmaUri-End -->

<!-- Pol_NoCacheViewer_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Disables the Offline Files folder.

This setting disables the "View Files" button on the Offline Files tab. As a result, users can't use the Offline Files folder to view or open copies of network files stored on their computer. Also, they can't use the folder to view characteristics of offline files, such as their server status, type, or location.

This setting doesn't prevent users from working offline or from saving local copies of files available offline. Also, it doesn't prevent them from using other programs, such as Windows Explorer, to view their offline files.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To view the Offline Files Folder, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, and then click "View Files".
<!-- Pol_NoCacheViewer_2-Description-End -->

<!-- Pol_NoCacheViewer_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_NoCacheViewer_2-Editable-End -->

<!-- Pol_NoCacheViewer_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_NoCacheViewer_2-DFProperties-End -->

<!-- Pol_NoCacheViewer_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_NoCacheViewer_2 |
| Friendly Name | Prevent use of Offline Files folder |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| Registry Value Name | NoCacheViewer |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_NoCacheViewer_2-AdmxBacked-End -->

<!-- Pol_NoCacheViewer_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_NoCacheViewer_2-Examples-End -->

<!-- Pol_NoCacheViewer_2-End -->

<!-- Pol_NoConfigCache_1-Begin -->
## Pol_NoConfigCache_1

<!-- Pol_NoConfigCache_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_NoConfigCache_1-Applicability-End -->

<!-- Pol_NoConfigCache_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_NoConfigCache_1
```
<!-- Pol_NoConfigCache_1-OmaUri-End -->

<!-- Pol_NoConfigCache_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from enabling, disabling, or changing the configuration of Offline Files.

This setting removes the Offline Files tab from the Folder Options dialog box. It also removes the Settings item from the Offline Files context menu and disables the Settings button on the Offline Files Status dialog box. As a result, users can't view or change the options on the Offline Files tab or Offline Files dialog box.

This is a comprehensive setting that locks down the configuration you establish by using other settings in this folder.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> This setting provides a quick method for locking down the default settings for Offline Files. To accept the defaults, just enable this setting. You don't have to disable any other settings in this folder.
<!-- Pol_NoConfigCache_1-Description-End -->

<!-- Pol_NoConfigCache_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_NoConfigCache_1-Editable-End -->

<!-- Pol_NoConfigCache_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_NoConfigCache_1-DFProperties-End -->

<!-- Pol_NoConfigCache_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_NoConfigCache_1 |
| Friendly Name | Prohibit user configuration of Offline Files |
| Location | User Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| Registry Value Name | NoConfigCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_NoConfigCache_1-AdmxBacked-End -->

<!-- Pol_NoConfigCache_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_NoConfigCache_1-Examples-End -->

<!-- Pol_NoConfigCache_1-End -->

<!-- Pol_NoConfigCache_2-Begin -->
## Pol_NoConfigCache_2

<!-- Pol_NoConfigCache_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_NoConfigCache_2-Applicability-End -->

<!-- Pol_NoConfigCache_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_NoConfigCache_2
```
<!-- Pol_NoConfigCache_2-OmaUri-End -->

<!-- Pol_NoConfigCache_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from enabling, disabling, or changing the configuration of Offline Files.

This setting removes the Offline Files tab from the Folder Options dialog box. It also removes the Settings item from the Offline Files context menu and disables the Settings button on the Offline Files Status dialog box. As a result, users can't view or change the options on the Offline Files tab or Offline Files dialog box.

This is a comprehensive setting that locks down the configuration you establish by using other settings in this folder.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> This setting provides a quick method for locking down the default settings for Offline Files. To accept the defaults, just enable this setting. You don't have to disable any other settings in this folder.
<!-- Pol_NoConfigCache_2-Description-End -->

<!-- Pol_NoConfigCache_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_NoConfigCache_2-Editable-End -->

<!-- Pol_NoConfigCache_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_NoConfigCache_2-DFProperties-End -->

<!-- Pol_NoConfigCache_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_NoConfigCache_2 |
| Friendly Name | Prohibit user configuration of Offline Files |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| Registry Value Name | NoConfigCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_NoConfigCache_2-AdmxBacked-End -->

<!-- Pol_NoConfigCache_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_NoConfigCache_2-Examples-End -->

<!-- Pol_NoConfigCache_2-End -->

<!-- Pol_NoMakeAvailableOffline_1-Begin -->
## Pol_NoMakeAvailableOffline_1

<!-- Pol_NoMakeAvailableOffline_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_NoMakeAvailableOffline_1-Applicability-End -->

<!-- Pol_NoMakeAvailableOffline_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_NoMakeAvailableOffline_1
```
<!-- Pol_NoMakeAvailableOffline_1-OmaUri-End -->

<!-- Pol_NoMakeAvailableOffline_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents users from making network files and folders available offline.

- If you enable this policy setting, users can't designate files to be saved on their computer for offline use. However, Windows will still cache local copies of files that reside on network shares designated for automatic caching.

- If you disable or don't configure this policy setting, users can manually specify files and folders that they want to make available offline.

> [!NOTE]
> This policy setting appears in the Computer Configuration and User Configuration folders. If both policy settings are configured, the policy setting in Computer Configuration takes precedence.

The "Make Available Offline" command is called "Always available offline" on computers running Windows Server 2012, Windows Server 2008 R2, Windows Server 2008, Windows 8, Windows 7, or Windows Vista.
<!-- Pol_NoMakeAvailableOffline_1-Description-End -->

<!-- Pol_NoMakeAvailableOffline_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_NoMakeAvailableOffline_1-Editable-End -->

<!-- Pol_NoMakeAvailableOffline_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_NoMakeAvailableOffline_1-DFProperties-End -->

<!-- Pol_NoMakeAvailableOffline_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_NoMakeAvailableOffline_1 |
| Friendly Name | Remove "Make Available Offline" command |
| Location | User Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| Registry Value Name | NoMakeAvailableOffline |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_NoMakeAvailableOffline_1-AdmxBacked-End -->

<!-- Pol_NoMakeAvailableOffline_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_NoMakeAvailableOffline_1-Examples-End -->

<!-- Pol_NoMakeAvailableOffline_1-End -->

<!-- Pol_NoMakeAvailableOffline_2-Begin -->
## Pol_NoMakeAvailableOffline_2

<!-- Pol_NoMakeAvailableOffline_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_NoMakeAvailableOffline_2-Applicability-End -->

<!-- Pol_NoMakeAvailableOffline_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_NoMakeAvailableOffline_2
```
<!-- Pol_NoMakeAvailableOffline_2-OmaUri-End -->

<!-- Pol_NoMakeAvailableOffline_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents users from making network files and folders available offline.

- If you enable this policy setting, users can't designate files to be saved on their computer for offline use. However, Windows will still cache local copies of files that reside on network shares designated for automatic caching.

- If you disable or don't configure this policy setting, users can manually specify files and folders that they want to make available offline.

> [!NOTE]
> This policy setting appears in the Computer Configuration and User Configuration folders. If both policy settings are configured, the policy setting in Computer Configuration takes precedence.

The "Make Available Offline" command is called "Always available offline" on computers running Windows Server 2012, Windows Server 2008 R2, Windows Server 2008, Windows 8, Windows 7, or Windows Vista.
<!-- Pol_NoMakeAvailableOffline_2-Description-End -->

<!-- Pol_NoMakeAvailableOffline_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_NoMakeAvailableOffline_2-Editable-End -->

<!-- Pol_NoMakeAvailableOffline_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_NoMakeAvailableOffline_2-DFProperties-End -->

<!-- Pol_NoMakeAvailableOffline_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_NoMakeAvailableOffline_2 |
| Friendly Name | Remove "Make Available Offline" command |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| Registry Value Name | NoMakeAvailableOffline |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_NoMakeAvailableOffline_2-AdmxBacked-End -->

<!-- Pol_NoMakeAvailableOffline_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_NoMakeAvailableOffline_2-Examples-End -->

<!-- Pol_NoMakeAvailableOffline_2-End -->

<!-- Pol_NoPinFiles_1-Begin -->
## Pol_NoPinFiles_1

<!-- Pol_NoPinFiles_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_NoPinFiles_1-Applicability-End -->

<!-- Pol_NoPinFiles_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_NoPinFiles_1
```
<!-- Pol_NoPinFiles_1-OmaUri-End -->

<!-- Pol_NoPinFiles_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage a list of files and folders for which you want to block the "Make Available Offline" command.

- If you enable this policy setting, the "Make Available Offline" command isn't available for the files and folders that you list. To specify these files and folders, click Show. In the Show Contents dialog box, in the Value Name column box, type the fully qualified UNC path to the file or folder. Leave the Value column field blank.

- If you disable this policy setting, the list of files and folders is deleted, including any lists inherited from lower precedence GPOs, and the "Make Available Offline" command is displayed for all files and folders.

- If you don't configure this policy setting, the "Make Available Offline" command is available for all files and folders.

> [!NOTE]
> This policy setting appears in the Computer Configuration and User Configuration folders. If both policy settings are configured, the policy settings are combined, and the "Make Available Offline" command is unavailable for all specified files and folders.

The "Make Available Offline" command is called "Always available offline" on computers running Windows Server 2012, Windows Server 2008 R2, Windows Server 2008, Windows 8, Windows 7, or Windows Vista.

This policy setting doesn't prevent files from being automatically cached if the network share is configured for "Automatic Caching". It only affects the display of the "Make Available Offline" command in File Explorer.

If the "Remove 'Make Available Offline' command" policy setting is enabled, this setting has no effect.
<!-- Pol_NoPinFiles_1-Description-End -->

<!-- Pol_NoPinFiles_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_NoPinFiles_1-Editable-End -->

<!-- Pol_NoPinFiles_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_NoPinFiles_1-DFProperties-End -->

<!-- Pol_NoPinFiles_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_NoPinFiles_1 |
| Friendly Name | Remove "Make Available Offline" for these files and folders |
| Location | User Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_NoPinFiles_1-AdmxBacked-End -->

<!-- Pol_NoPinFiles_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_NoPinFiles_1-Examples-End -->

<!-- Pol_NoPinFiles_1-End -->

<!-- Pol_NoPinFiles_2-Begin -->
## Pol_NoPinFiles_2

<!-- Pol_NoPinFiles_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_NoPinFiles_2-Applicability-End -->

<!-- Pol_NoPinFiles_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_NoPinFiles_2
```
<!-- Pol_NoPinFiles_2-OmaUri-End -->

<!-- Pol_NoPinFiles_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage a list of files and folders for which you want to block the "Make Available Offline" command.

- If you enable this policy setting, the "Make Available Offline" command isn't available for the files and folders that you list. To specify these files and folders, click Show. In the Show Contents dialog box, in the Value Name column box, type the fully qualified UNC path to the file or folder. Leave the Value column field blank.

- If you disable this policy setting, the list of files and folders is deleted, including any lists inherited from lower precedence GPOs, and the "Make Available Offline" command is displayed for all files and folders.

- If you don't configure this policy setting, the "Make Available Offline" command is available for all files and folders.

> [!NOTE]
> This policy setting appears in the Computer Configuration and User Configuration folders. If both policy settings are configured, the policy settings are combined, and the "Make Available Offline" command is unavailable for all specified files and folders.

The "Make Available Offline" command is called "Always available offline" on computers running Windows Server 2012, Windows Server 2008 R2, Windows Server 2008, Windows 8, Windows 7, or Windows Vista.

This policy setting doesn't prevent files from being automatically cached if the network share is configured for "Automatic Caching". It only affects the display of the "Make Available Offline" command in File Explorer.

If the "Remove 'Make Available Offline' command" policy setting is enabled, this setting has no effect.
<!-- Pol_NoPinFiles_2-Description-End -->

<!-- Pol_NoPinFiles_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_NoPinFiles_2-Editable-End -->

<!-- Pol_NoPinFiles_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_NoPinFiles_2-DFProperties-End -->

<!-- Pol_NoPinFiles_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_NoPinFiles_2 |
| Friendly Name | Remove "Make Available Offline" for these files and folders |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_NoPinFiles_2-AdmxBacked-End -->

<!-- Pol_NoPinFiles_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_NoPinFiles_2-Examples-End -->

<!-- Pol_NoPinFiles_2-End -->

<!-- Pol_NoReminders_1-Begin -->
## Pol_NoReminders_1

<!-- Pol_NoReminders_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_NoReminders_1-Applicability-End -->

<!-- Pol_NoReminders_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_NoReminders_1
```
<!-- Pol_NoReminders_1-OmaUri-End -->

<!-- Pol_NoReminders_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Hides or displays reminder balloons, and prevents users from changing the setting.

Reminder balloons appear above the Offline Files icon in the notification area to notify users when they've lost the connection to a networked file and are working on a local copy of the file. Users can then decide how to proceed.

If you enable this setting, the system hides the reminder balloons, and prevents users from displaying them.

If you disable the setting, the system displays the reminder balloons and prevents users from hiding them.

If this setting isn't configured, reminder balloons are displayed by default when you enable offline files, but users can change the setting.

To prevent users from changing the setting while a setting is in effect, the system disables the "Enable reminders" option on the Offline Files tab.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To display or hide reminder balloons without establishing a setting, in Windows Explorer, on the Tools menu, click Folder Options, and then click the Offline Files tab. This setting corresponds to the "Enable reminders" check box.
<!-- Pol_NoReminders_1-Description-End -->

<!-- Pol_NoReminders_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_NoReminders_1-Editable-End -->

<!-- Pol_NoReminders_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_NoReminders_1-DFProperties-End -->

<!-- Pol_NoReminders_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_NoReminders_1 |
| Friendly Name | Turn off reminder balloons |
| Location | User Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| Registry Value Name | NoReminders |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_NoReminders_1-AdmxBacked-End -->

<!-- Pol_NoReminders_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_NoReminders_1-Examples-End -->

<!-- Pol_NoReminders_1-End -->

<!-- Pol_NoReminders_2-Begin -->
## Pol_NoReminders_2

<!-- Pol_NoReminders_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_NoReminders_2-Applicability-End -->

<!-- Pol_NoReminders_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_NoReminders_2
```
<!-- Pol_NoReminders_2-OmaUri-End -->

<!-- Pol_NoReminders_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Hides or displays reminder balloons, and prevents users from changing the setting.

Reminder balloons appear above the Offline Files icon in the notification area to notify users when they've lost the connection to a networked file and are working on a local copy of the file. Users can then decide how to proceed.

If you enable this setting, the system hides the reminder balloons, and prevents users from displaying them.

If you disable the setting, the system displays the reminder balloons and prevents users from hiding them.

If this setting isn't configured, reminder balloons are displayed by default when you enable offline files, but users can change the setting.

To prevent users from changing the setting while a setting is in effect, the system disables the "Enable reminders" option on the Offline Files tab.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To display or hide reminder balloons without establishing a setting, in Windows Explorer, on the Tools menu, click Folder Options, and then click the Offline Files tab. This setting corresponds to the "Enable reminders" check box.
<!-- Pol_NoReminders_2-Description-End -->

<!-- Pol_NoReminders_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_NoReminders_2-Editable-End -->

<!-- Pol_NoReminders_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_NoReminders_2-DFProperties-End -->

<!-- Pol_NoReminders_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_NoReminders_2 |
| Friendly Name | Turn off reminder balloons |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| Registry Value Name | NoReminders |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_NoReminders_2-AdmxBacked-End -->

<!-- Pol_NoReminders_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_NoReminders_2-Examples-End -->

<!-- Pol_NoReminders_2-End -->

<!-- Pol_OnlineCachingSettings-Begin -->
## Pol_OnlineCachingSettings

<!-- Pol_OnlineCachingSettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_OnlineCachingSettings-Applicability-End -->

<!-- Pol_OnlineCachingSettings-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_OnlineCachingSettings
```
<!-- Pol_OnlineCachingSettings-OmaUri-End -->

<!-- Pol_OnlineCachingSettings-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether files read from file shares over a slow network are transparently cached in the Offline Files cache for future reads. When a user tries to access a file that has been transparently cached, Windows reads from the cached copy after verifying its integrity. This improves end-user response times and decreases bandwidth consumption over WAN links.

The cached files are temporary and aren't available to the user when offline. The cached files aren't kept in sync with the version on the server, and the most current version from the server is always available for subsequent reads.

This policy setting is triggered by the configured round trip network latency value. We recommend using this policy setting when the network connection to the server is slow. For example, you can configure a value of 60 ms as the round trip latency of the network above which files should be transparently cached in the Offline Files cache. If the round trip latency of the network is less than 60ms, reads to remote files won't be cached.

- If you enable this policy setting, transparent caching is enabled and configurable.

- If you disable or don't configure this policy setting, remote files won't be transparently cached on client computers.
<!-- Pol_OnlineCachingSettings-Description-End -->

<!-- Pol_OnlineCachingSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_OnlineCachingSettings-Editable-End -->

<!-- Pol_OnlineCachingSettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_OnlineCachingSettings-DFProperties-End -->

<!-- Pol_OnlineCachingSettings-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_OnlineCachingSettings |
| Friendly Name | Enable Transparent Caching |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_OnlineCachingSettings-AdmxBacked-End -->

<!-- Pol_OnlineCachingSettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_OnlineCachingSettings-Examples-End -->

<!-- Pol_OnlineCachingSettings-End -->

<!-- Pol_PurgeAtLogoff-Begin -->
## Pol_PurgeAtLogoff

<!-- Pol_PurgeAtLogoff-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_PurgeAtLogoff-Applicability-End -->

<!-- Pol_PurgeAtLogoff-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_PurgeAtLogoff
```
<!-- Pol_PurgeAtLogoff-OmaUri-End -->

<!-- Pol_PurgeAtLogoff-Description-Begin -->
<!-- Description-Source-ADMX -->
Deletes local copies of the user's offline files when the user logs off.

This setting specifies that automatically and manually cached offline files are retained only while the user is logged-on to the computer. When the user logs off, the system deletes all local copies of offline files.

If you disable this setting or don't configure it, automatically and manually cached copies are retained on the user's computer for later offline use.

> [!CAUTION]
> Files aren't synchronized before they're deleted. Any changes to local files since the last synchronization are lost.
<!-- Pol_PurgeAtLogoff-Description-End -->

<!-- Pol_PurgeAtLogoff-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_PurgeAtLogoff-Editable-End -->

<!-- Pol_PurgeAtLogoff-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_PurgeAtLogoff-DFProperties-End -->

<!-- Pol_PurgeAtLogoff-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_PurgeAtLogoff |
| Friendly Name | At logoff, delete local copy of user’s offline files |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| Registry Value Name | PurgeAtLogoff |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_PurgeAtLogoff-AdmxBacked-End -->

<!-- Pol_PurgeAtLogoff-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_PurgeAtLogoff-Examples-End -->

<!-- Pol_PurgeAtLogoff-End -->

<!-- Pol_QuickAdimPin-Begin -->
## Pol_QuickAdimPin

<!-- Pol_QuickAdimPin-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_QuickAdimPin-Applicability-End -->

<!-- Pol_QuickAdimPin-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_QuickAdimPin
```
<!-- Pol_QuickAdimPin-OmaUri-End -->

<!-- Pol_QuickAdimPin-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn on economical application of administratively assigned Offline Files.

- If you enable or don't configure this policy setting, only new files and folders in administratively assigned folders are synchronized at logon. Files and folders that are already available offline are skipped and are synchronized later.

- If you disable this policy setting, all administratively assigned folders are synchronized at logon.
<!-- Pol_QuickAdimPin-Description-End -->

<!-- Pol_QuickAdimPin-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_QuickAdimPin-Editable-End -->

<!-- Pol_QuickAdimPin-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_QuickAdimPin-DFProperties-End -->

<!-- Pol_QuickAdimPin-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_QuickAdimPin |
| Friendly Name | Turn on economical application of administratively assigned Offline Files |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| Registry Value Name | EconomicalAdminPinning |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_QuickAdimPin-AdmxBacked-End -->

<!-- Pol_QuickAdimPin-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_QuickAdimPin-Examples-End -->

<!-- Pol_QuickAdimPin-End -->

<!-- Pol_ReminderFreq_1-Begin -->
## Pol_ReminderFreq_1

<!-- Pol_ReminderFreq_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_ReminderFreq_1-Applicability-End -->

<!-- Pol_ReminderFreq_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_ReminderFreq_1
```
<!-- Pol_ReminderFreq_1-OmaUri-End -->

<!-- Pol_ReminderFreq_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines how often reminder balloon updates appear.

If you enable this setting, you can select how often reminder balloons updates appear and also prevent users from changing this setting.

Reminder balloons appear when the user's connection to a network file is lost or reconnected, and they're updated periodically. By default, the first reminder for an event is displayed for 30 seconds. Then, updates appear every 60 minutes and are displayed for 15 seconds. You can use this setting to change the update interval.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To set reminder balloon frequency without establishing a setting, in Windows Explorer, on the Tools menu, click Folder Options, and then click the Offline Files tab. This setting corresponds to the "Display reminder balloons every .. minutes" option.
<!-- Pol_ReminderFreq_1-Description-End -->

<!-- Pol_ReminderFreq_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_ReminderFreq_1-Editable-End -->

<!-- Pol_ReminderFreq_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_ReminderFreq_1-DFProperties-End -->

<!-- Pol_ReminderFreq_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_ReminderFreq_1 |
| Friendly Name | Reminder balloon frequency |
| Location | User Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_ReminderFreq_1-AdmxBacked-End -->

<!-- Pol_ReminderFreq_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_ReminderFreq_1-Examples-End -->

<!-- Pol_ReminderFreq_1-End -->

<!-- Pol_ReminderFreq_2-Begin -->
## Pol_ReminderFreq_2

<!-- Pol_ReminderFreq_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_ReminderFreq_2-Applicability-End -->

<!-- Pol_ReminderFreq_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_ReminderFreq_2
```
<!-- Pol_ReminderFreq_2-OmaUri-End -->

<!-- Pol_ReminderFreq_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines how often reminder balloon updates appear.

If you enable this setting, you can select how often reminder balloons updates appear and also prevent users from changing this setting.

Reminder balloons appear when the user's connection to a network file is lost or reconnected, and they're updated periodically. By default, the first reminder for an event is displayed for 30 seconds. Then, updates appear every 60 minutes and are displayed for 15 seconds. You can use this setting to change the update interval.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To set reminder balloon frequency without establishing a setting, in Windows Explorer, on the Tools menu, click Folder Options, and then click the Offline Files tab. This setting corresponds to the "Display reminder balloons every .. minutes" option.
<!-- Pol_ReminderFreq_2-Description-End -->

<!-- Pol_ReminderFreq_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_ReminderFreq_2-Editable-End -->

<!-- Pol_ReminderFreq_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_ReminderFreq_2-DFProperties-End -->

<!-- Pol_ReminderFreq_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_ReminderFreq_2 |
| Friendly Name | Reminder balloon frequency |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_ReminderFreq_2-AdmxBacked-End -->

<!-- Pol_ReminderFreq_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_ReminderFreq_2-Examples-End -->

<!-- Pol_ReminderFreq_2-End -->

<!-- Pol_ReminderInitTimeout_1-Begin -->
## Pol_ReminderInitTimeout_1

<!-- Pol_ReminderInitTimeout_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_ReminderInitTimeout_1-Applicability-End -->

<!-- Pol_ReminderInitTimeout_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_ReminderInitTimeout_1
```
<!-- Pol_ReminderInitTimeout_1-OmaUri-End -->

<!-- Pol_ReminderInitTimeout_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines how long the first reminder balloon for a network status change is displayed.

Reminder balloons appear when the user's connection to a network file is lost or reconnected, and they're updated periodically. By default, the first reminder for an event is displayed for 30 seconds. Then, updates appear every 60 minutes and are displayed for 15 seconds. You can use this setting to change the duration of the first reminder.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
<!-- Pol_ReminderInitTimeout_1-Description-End -->

<!-- Pol_ReminderInitTimeout_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_ReminderInitTimeout_1-Editable-End -->

<!-- Pol_ReminderInitTimeout_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_ReminderInitTimeout_1-DFProperties-End -->

<!-- Pol_ReminderInitTimeout_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_ReminderInitTimeout_1 |
| Friendly Name | Initial reminder balloon lifetime |
| Location | User Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_ReminderInitTimeout_1-AdmxBacked-End -->

<!-- Pol_ReminderInitTimeout_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_ReminderInitTimeout_1-Examples-End -->

<!-- Pol_ReminderInitTimeout_1-End -->

<!-- Pol_ReminderInitTimeout_2-Begin -->
## Pol_ReminderInitTimeout_2

<!-- Pol_ReminderInitTimeout_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_ReminderInitTimeout_2-Applicability-End -->

<!-- Pol_ReminderInitTimeout_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_ReminderInitTimeout_2
```
<!-- Pol_ReminderInitTimeout_2-OmaUri-End -->

<!-- Pol_ReminderInitTimeout_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines how long the first reminder balloon for a network status change is displayed.

Reminder balloons appear when the user's connection to a network file is lost or reconnected, and they're updated periodically. By default, the first reminder for an event is displayed for 30 seconds. Then, updates appear every 60 minutes and are displayed for 15 seconds. You can use this setting to change the duration of the first reminder.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
<!-- Pol_ReminderInitTimeout_2-Description-End -->

<!-- Pol_ReminderInitTimeout_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_ReminderInitTimeout_2-Editable-End -->

<!-- Pol_ReminderInitTimeout_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_ReminderInitTimeout_2-DFProperties-End -->

<!-- Pol_ReminderInitTimeout_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_ReminderInitTimeout_2 |
| Friendly Name | Initial reminder balloon lifetime |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_ReminderInitTimeout_2-AdmxBacked-End -->

<!-- Pol_ReminderInitTimeout_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_ReminderInitTimeout_2-Examples-End -->

<!-- Pol_ReminderInitTimeout_2-End -->

<!-- Pol_ReminderTimeout_1-Begin -->
## Pol_ReminderTimeout_1

<!-- Pol_ReminderTimeout_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_ReminderTimeout_1-Applicability-End -->

<!-- Pol_ReminderTimeout_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_ReminderTimeout_1
```
<!-- Pol_ReminderTimeout_1-OmaUri-End -->

<!-- Pol_ReminderTimeout_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines how long updated reminder balloons are displayed.

Reminder balloons appear when the user's connection to a network file is lost or reconnected, and they're updated periodically. By default, the first reminder for an event is displayed for 30 seconds. Then, updates appear every 60 minutes and are displayed for 15 seconds. You can use this setting to change the duration of the update reminder.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
<!-- Pol_ReminderTimeout_1-Description-End -->

<!-- Pol_ReminderTimeout_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_ReminderTimeout_1-Editable-End -->

<!-- Pol_ReminderTimeout_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_ReminderTimeout_1-DFProperties-End -->

<!-- Pol_ReminderTimeout_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_ReminderTimeout_1 |
| Friendly Name | Reminder balloon lifetime |
| Location | User Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_ReminderTimeout_1-AdmxBacked-End -->

<!-- Pol_ReminderTimeout_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_ReminderTimeout_1-Examples-End -->

<!-- Pol_ReminderTimeout_1-End -->

<!-- Pol_ReminderTimeout_2-Begin -->
## Pol_ReminderTimeout_2

<!-- Pol_ReminderTimeout_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_ReminderTimeout_2-Applicability-End -->

<!-- Pol_ReminderTimeout_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_ReminderTimeout_2
```
<!-- Pol_ReminderTimeout_2-OmaUri-End -->

<!-- Pol_ReminderTimeout_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines how long updated reminder balloons are displayed.

Reminder balloons appear when the user's connection to a network file is lost or reconnected, and they're updated periodically. By default, the first reminder for an event is displayed for 30 seconds. Then, updates appear every 60 minutes and are displayed for 15 seconds. You can use this setting to change the duration of the update reminder.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
<!-- Pol_ReminderTimeout_2-Description-End -->

<!-- Pol_ReminderTimeout_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_ReminderTimeout_2-Editable-End -->

<!-- Pol_ReminderTimeout_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_ReminderTimeout_2-DFProperties-End -->

<!-- Pol_ReminderTimeout_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_ReminderTimeout_2 |
| Friendly Name | Reminder balloon lifetime |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_ReminderTimeout_2-AdmxBacked-End -->

<!-- Pol_ReminderTimeout_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_ReminderTimeout_2-Examples-End -->

<!-- Pol_ReminderTimeout_2-End -->

<!-- Pol_SlowLinkSettings-Begin -->
## Pol_SlowLinkSettings

<!-- Pol_SlowLinkSettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_SlowLinkSettings-Applicability-End -->

<!-- Pol_SlowLinkSettings-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_SlowLinkSettings
```
<!-- Pol_SlowLinkSettings-OmaUri-End -->

<!-- Pol_SlowLinkSettings-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the network latency and throughput thresholds that will cause a client computers to transition files and folders that are already available offline to the slow-link mode so that the user's access to this data isn't degraded due to network slowness. When Offline Files is operating in the slow-link mode, all network file requests are satisfied from the Offline Files cache. This is similar to a user working offline.

- If you enable this policy setting, Offline Files uses the slow-link mode if the network throughput between the client and the server is below (slower than) the Throughput threshold parameter, or if the round-trip network latency is above (slower than) the Latency threshold parameter.

You can configure the slow-link mode by specifying threshold values for Throughput (in bits per second) and/or Latency (in milliseconds) for specific UNC paths. We recommend that you always specify a value for Latency, since the round-trip network latency detection is faster. You can use wildcard characters (*) for specifying UNC paths. If you don't specify a Latency or Throughput value, computers running Windows Vista or Windows Server 2008 won't use the slow-link mode.

- If you don't configure this policy setting, computers running Windows Vista or Windows Server 2008 won't transition a shared folder to the slow-link mode. Computers running Windows 7 or Windows Server 2008 R2 will use the default latency value of 80 milliseconds when transitioning a folder to the slow-link mode. Computers running Windows 8 or Windows Server 2012 will use the default latency value of 35 milliseconds when transitioning a folder to the slow-link mode. To avoid extra charges on cell phone or broadband plans, it may be necessary to configure the latency threshold to be lower than the round-trip network latency.

In Windows Vista or Windows Server 2008, once transitioned to slow-link mode, users will continue to operate in slow-link mode until the user clicks the Work Online button on the toolbar in Windows Explorer. Data will only be synchronized to the server if the user manually initiates synchronization by using Sync Center.

In Windows 7, Windows Server 2008 R2, Windows 8 or Windows Server 2012, when operating in slow-link mode Offline Files synchronizes the user's files in the background at regular intervals, or as configured by the "Configure Background Sync" policy. While in slow-link mode, Windows periodically checks the connection to the folder and brings the folder back online if network speeds improve.

In Windows 8 or Windows Server 2012, set the Latency threshold to 1ms to keep users always working offline in slow-link mode.

- If you disable this policy setting, computers won't use the slow-link mode.
<!-- Pol_SlowLinkSettings-Description-End -->

<!-- Pol_SlowLinkSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_SlowLinkSettings-Editable-End -->

<!-- Pol_SlowLinkSettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_SlowLinkSettings-DFProperties-End -->

<!-- Pol_SlowLinkSettings-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_SlowLinkSettings |
| Friendly Name | Configure slow-link mode |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| Registry Value Name | SlowLinkEnabled |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_SlowLinkSettings-AdmxBacked-End -->

<!-- Pol_SlowLinkSettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_SlowLinkSettings-Examples-End -->

<!-- Pol_SlowLinkSettings-End -->

<!-- Pol_SlowLinkSpeed-Begin -->
## Pol_SlowLinkSpeed

<!-- Pol_SlowLinkSpeed-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_SlowLinkSpeed-Applicability-End -->

<!-- Pol_SlowLinkSpeed-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_SlowLinkSpeed
```
<!-- Pol_SlowLinkSpeed-OmaUri-End -->

<!-- Pol_SlowLinkSpeed-Description-Begin -->
<!-- Description-Source-ADMX -->
Configures the threshold value at which Offline Files considers a network connection to be "slow". Any network speed below this value is considered to be slow.

When a connection is considered slow, Offline Files automatically adjust its behavior to avoid excessive synchronization traffic and won't automatically reconnect to a server when the presence of a server is detected.

- If you enable this setting, you can configure the threshold value that will be used to determine a slow network connection.

- If this setting is disabled or not configured, the default threshold value of 64,000 bps is used to determine if a network connection is considered to be slow.

> [!NOTE]
> Use the following formula when entering the slow link value: [ bps / 100]. For example, if you want to set a threshold value of 128,000 bps, enter a value of 1280.
<!-- Pol_SlowLinkSpeed-Description-End -->

<!-- Pol_SlowLinkSpeed-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_SlowLinkSpeed-Editable-End -->

<!-- Pol_SlowLinkSpeed-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_SlowLinkSpeed-DFProperties-End -->

<!-- Pol_SlowLinkSpeed-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_SlowLinkSpeed |
| Friendly Name | Configure Slow link speed |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_SlowLinkSpeed-AdmxBacked-End -->

<!-- Pol_SlowLinkSpeed-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_SlowLinkSpeed-Examples-End -->

<!-- Pol_SlowLinkSpeed-End -->

<!-- Pol_SyncAtLogoff_1-Begin -->
## Pol_SyncAtLogoff_1

<!-- Pol_SyncAtLogoff_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_SyncAtLogoff_1-Applicability-End -->

<!-- Pol_SyncAtLogoff_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_SyncAtLogoff_1
```
<!-- Pol_SyncAtLogoff_1-OmaUri-End -->

<!-- Pol_SyncAtLogoff_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether offline files are fully synchronized when users log off.

This setting also disables the "Synchronize all offline files before logging off" option on the Offline Files tab. This prevents users from trying to change the option while a setting controls it.

- If you enable this setting, offline files are fully synchronized. Full synchronization ensures that offline files are complete and current.

- If you disable this setting, the system only performs a quick synchronization. Quick synchronization ensures that files are complete, but doesn't ensure that they're current.

- If you don't configure this setting, the system performs a quick synchronization by default, but users can change this option.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To change the synchronization method without changing a setting, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, and then select the "Synchronize all offline files before logging off" option.
<!-- Pol_SyncAtLogoff_1-Description-End -->

<!-- Pol_SyncAtLogoff_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_SyncAtLogoff_1-Editable-End -->

<!-- Pol_SyncAtLogoff_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_SyncAtLogoff_1-DFProperties-End -->

<!-- Pol_SyncAtLogoff_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_SyncAtLogoff_1 |
| Friendly Name | Synchronize all offline files before logging off |
| Location | User Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| Registry Value Name | SyncAtLogoff |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_SyncAtLogoff_1-AdmxBacked-End -->

<!-- Pol_SyncAtLogoff_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_SyncAtLogoff_1-Examples-End -->

<!-- Pol_SyncAtLogoff_1-End -->

<!-- Pol_SyncAtLogoff_2-Begin -->
## Pol_SyncAtLogoff_2

<!-- Pol_SyncAtLogoff_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_SyncAtLogoff_2-Applicability-End -->

<!-- Pol_SyncAtLogoff_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_SyncAtLogoff_2
```
<!-- Pol_SyncAtLogoff_2-OmaUri-End -->

<!-- Pol_SyncAtLogoff_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether offline files are fully synchronized when users log off.

This setting also disables the "Synchronize all offline files before logging off" option on the Offline Files tab. This prevents users from trying to change the option while a setting controls it.

- If you enable this setting, offline files are fully synchronized. Full synchronization ensures that offline files are complete and current.

- If you disable this setting, the system only performs a quick synchronization. Quick synchronization ensures that files are complete, but doesn't ensure that they're current.

- If you don't configure this setting, the system performs a quick synchronization by default, but users can change this option.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To change the synchronization method without changing a setting, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, and then select the "Synchronize all offline files before logging off" option.
<!-- Pol_SyncAtLogoff_2-Description-End -->

<!-- Pol_SyncAtLogoff_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_SyncAtLogoff_2-Editable-End -->

<!-- Pol_SyncAtLogoff_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_SyncAtLogoff_2-DFProperties-End -->

<!-- Pol_SyncAtLogoff_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_SyncAtLogoff_2 |
| Friendly Name | Synchronize all offline files before logging off |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| Registry Value Name | SyncAtLogoff |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_SyncAtLogoff_2-AdmxBacked-End -->

<!-- Pol_SyncAtLogoff_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_SyncAtLogoff_2-Examples-End -->

<!-- Pol_SyncAtLogoff_2-End -->

<!-- Pol_SyncAtLogon_1-Begin -->
## Pol_SyncAtLogon_1

<!-- Pol_SyncAtLogon_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_SyncAtLogon_1-Applicability-End -->

<!-- Pol_SyncAtLogon_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_SyncAtLogon_1
```
<!-- Pol_SyncAtLogon_1-OmaUri-End -->

<!-- Pol_SyncAtLogon_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether offline files are fully synchronized when users log on.

This setting also disables the "Synchronize all offline files before logging on" option on the Offline Files tab. This prevents users from trying to change the option while a setting controls it.

- If you enable this setting, offline files are fully synchronized at logon. Full synchronization ensures that offline files are complete and current. Enabling this setting automatically enables logon synchronization in Synchronization Manager.

- If this setting is disabled and Synchronization Manager is configured for logon synchronization, the system performs only a quick synchronization. Quick synchronization ensures that files are complete but doesn't ensure that they're current.

- If you don't configure this setting and Synchronization Manager is configured for logon synchronization, the system performs a quick synchronization by default, but users can change this option.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To change the synchronization method without setting a setting, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, and then select the "Synchronize all offline files before logging on" option.
<!-- Pol_SyncAtLogon_1-Description-End -->

<!-- Pol_SyncAtLogon_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_SyncAtLogon_1-Editable-End -->

<!-- Pol_SyncAtLogon_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_SyncAtLogon_1-DFProperties-End -->

<!-- Pol_SyncAtLogon_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_SyncAtLogon_1 |
| Friendly Name | Synchronize all offline files when logging on |
| Location | User Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| Registry Value Name | SyncAtLogon |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_SyncAtLogon_1-AdmxBacked-End -->

<!-- Pol_SyncAtLogon_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_SyncAtLogon_1-Examples-End -->

<!-- Pol_SyncAtLogon_1-End -->

<!-- Pol_SyncAtLogon_2-Begin -->
## Pol_SyncAtLogon_2

<!-- Pol_SyncAtLogon_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_SyncAtLogon_2-Applicability-End -->

<!-- Pol_SyncAtLogon_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_SyncAtLogon_2
```
<!-- Pol_SyncAtLogon_2-OmaUri-End -->

<!-- Pol_SyncAtLogon_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether offline files are fully synchronized when users log on.

This setting also disables the "Synchronize all offline files before logging on" option on the Offline Files tab. This prevents users from trying to change the option while a setting controls it.

- If you enable this setting, offline files are fully synchronized at logon. Full synchronization ensures that offline files are complete and current. Enabling this setting automatically enables logon synchronization in Synchronization Manager.

- If this setting is disabled and Synchronization Manager is configured for logon synchronization, the system performs only a quick synchronization. Quick synchronization ensures that files are complete but doesn't ensure that they're current.

- If you don't configure this setting and Synchronization Manager is configured for logon synchronization, the system performs a quick synchronization by default, but users can change this option.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To change the synchronization method without setting a setting, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, and then select the "Synchronize all offline files before logging on" option.
<!-- Pol_SyncAtLogon_2-Description-End -->

<!-- Pol_SyncAtLogon_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_SyncAtLogon_2-Editable-End -->

<!-- Pol_SyncAtLogon_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_SyncAtLogon_2-DFProperties-End -->

<!-- Pol_SyncAtLogon_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_SyncAtLogon_2 |
| Friendly Name | Synchronize all offline files when logging on |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| Registry Value Name | SyncAtLogon |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_SyncAtLogon_2-AdmxBacked-End -->

<!-- Pol_SyncAtLogon_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_SyncAtLogon_2-Examples-End -->

<!-- Pol_SyncAtLogon_2-End -->

<!-- Pol_SyncAtSuspend_1-Begin -->
## Pol_SyncAtSuspend_1

<!-- Pol_SyncAtSuspend_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_SyncAtSuspend_1-Applicability-End -->

<!-- Pol_SyncAtSuspend_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_SyncAtSuspend_1
```
<!-- Pol_SyncAtSuspend_1-OmaUri-End -->

<!-- Pol_SyncAtSuspend_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether offline files are synchonized before a computer is suspended.

- If you enable this setting, offline files are synchronized whenever the computer is suspended. Setting the synchronization action to "Quick" ensures only that all files in the cache are complete. Setting the synchronization action to "Full" ensures that all cached files and folders are up-to-date with the most current version.

- If you disable or don't configuring this setting, files aren't synchronized when the computer is suspended.

> [!NOTE]
> If the computer is suspended by closing the display on a portable computer, files aren't synchronized. If multiple users are logged-on to the computer at the time the computer is suspended, a synchronization isn't performed.
<!-- Pol_SyncAtSuspend_1-Description-End -->

<!-- Pol_SyncAtSuspend_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_SyncAtSuspend_1-Editable-End -->

<!-- Pol_SyncAtSuspend_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_SyncAtSuspend_1-DFProperties-End -->

<!-- Pol_SyncAtSuspend_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_SyncAtSuspend_1 |
| Friendly Name | Synchronize offline files before suspend |
| Location | User Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_SyncAtSuspend_1-AdmxBacked-End -->

<!-- Pol_SyncAtSuspend_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_SyncAtSuspend_1-Examples-End -->

<!-- Pol_SyncAtSuspend_1-End -->

<!-- Pol_SyncAtSuspend_2-Begin -->
## Pol_SyncAtSuspend_2

<!-- Pol_SyncAtSuspend_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_SyncAtSuspend_2-Applicability-End -->

<!-- Pol_SyncAtSuspend_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_SyncAtSuspend_2
```
<!-- Pol_SyncAtSuspend_2-OmaUri-End -->

<!-- Pol_SyncAtSuspend_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether offline files are synchonized before a computer is suspended.

- If you enable this setting, offline files are synchronized whenever the computer is suspended. Setting the synchronization action to "Quick" ensures only that all files in the cache are complete. Setting the synchronization action to "Full" ensures that all cached files and folders are up-to-date with the most current version.

- If you disable or don't configuring this setting, files aren't synchronized when the computer is suspended.

> [!NOTE]
> If the computer is suspended by closing the display on a portable computer, files aren't synchronized. If multiple users are logged-on to the computer at the time the computer is suspended, a synchronization isn't performed.
<!-- Pol_SyncAtSuspend_2-Description-End -->

<!-- Pol_SyncAtSuspend_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_SyncAtSuspend_2-Editable-End -->

<!-- Pol_SyncAtSuspend_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_SyncAtSuspend_2-DFProperties-End -->

<!-- Pol_SyncAtSuspend_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_SyncAtSuspend_2 |
| Friendly Name | Synchronize offline files before suspend |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_SyncAtSuspend_2-AdmxBacked-End -->

<!-- Pol_SyncAtSuspend_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_SyncAtSuspend_2-Examples-End -->

<!-- Pol_SyncAtSuspend_2-End -->

<!-- Pol_SyncOnCostedNetwork-Begin -->
## Pol_SyncOnCostedNetwork

<!-- Pol_SyncOnCostedNetwork-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_SyncOnCostedNetwork-Applicability-End -->

<!-- Pol_SyncOnCostedNetwork-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_SyncOnCostedNetwork
```
<!-- Pol_SyncOnCostedNetwork-OmaUri-End -->

<!-- Pol_SyncOnCostedNetwork-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether offline files are synchronized in the background when it could result in extra charges on cell phone or broadband plans.

- If you enable this setting, synchronization can occur in the background when the user's network is roaming, near, or over the plan's data limit. This may result in extra charges on cell phone or broadband plans.

- If this setting is disabled or not configured, synchronization won't run in the background on network folders when the user's network is roaming, near, or over the plan's data limit. The network folder must also be in "slow-link" mode, as specified by the "Configure slow-link mode" policy to avoid network usage.
<!-- Pol_SyncOnCostedNetwork-Description-End -->

<!-- Pol_SyncOnCostedNetwork-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_SyncOnCostedNetwork-Editable-End -->

<!-- Pol_SyncOnCostedNetwork-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_SyncOnCostedNetwork-DFProperties-End -->

<!-- Pol_SyncOnCostedNetwork-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_SyncOnCostedNetwork |
| Friendly Name | Enable file synchronization on costed networks |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| Registry Value Name | SyncEnabledForCostedNetwork |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_SyncOnCostedNetwork-AdmxBacked-End -->

<!-- Pol_SyncOnCostedNetwork-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_SyncOnCostedNetwork-Examples-End -->

<!-- Pol_SyncOnCostedNetwork-End -->

<!-- Pol_WorkOfflineDisabled_1-Begin -->
## Pol_WorkOfflineDisabled_1

<!-- Pol_WorkOfflineDisabled_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_WorkOfflineDisabled_1-Applicability-End -->

<!-- Pol_WorkOfflineDisabled_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_WorkOfflineDisabled_1
```
<!-- Pol_WorkOfflineDisabled_1-OmaUri-End -->

<!-- Pol_WorkOfflineDisabled_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting removes the "Work offline" command from Explorer, preventing users from manually changing whether Offline Files is in online mode or offline mode.

- If you enable this policy setting, the "Work offline" command isn't displayed in File Explorer.

- If you disable or don't configure this policy setting, the "Work offline" command is displayed in File Explorer.
<!-- Pol_WorkOfflineDisabled_1-Description-End -->

<!-- Pol_WorkOfflineDisabled_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_WorkOfflineDisabled_1-Editable-End -->

<!-- Pol_WorkOfflineDisabled_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_WorkOfflineDisabled_1-DFProperties-End -->

<!-- Pol_WorkOfflineDisabled_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_WorkOfflineDisabled_1 |
| Friendly Name | Remove "Work offline" command |
| Location | User Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| Registry Value Name | WorkOfflineDisabled |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_WorkOfflineDisabled_1-AdmxBacked-End -->

<!-- Pol_WorkOfflineDisabled_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_WorkOfflineDisabled_1-Examples-End -->

<!-- Pol_WorkOfflineDisabled_1-End -->

<!-- Pol_WorkOfflineDisabled_2-Begin -->
## Pol_WorkOfflineDisabled_2

<!-- Pol_WorkOfflineDisabled_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_WorkOfflineDisabled_2-Applicability-End -->

<!-- Pol_WorkOfflineDisabled_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_OfflineFiles/Pol_WorkOfflineDisabled_2
```
<!-- Pol_WorkOfflineDisabled_2-OmaUri-End -->

<!-- Pol_WorkOfflineDisabled_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting removes the "Work offline" command from Explorer, preventing users from manually changing whether Offline Files is in online mode or offline mode.

- If you enable this policy setting, the "Work offline" command isn't displayed in File Explorer.

- If you disable or don't configure this policy setting, the "Work offline" command is displayed in File Explorer.
<!-- Pol_WorkOfflineDisabled_2-Description-End -->

<!-- Pol_WorkOfflineDisabled_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_WorkOfflineDisabled_2-Editable-End -->

<!-- Pol_WorkOfflineDisabled_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_WorkOfflineDisabled_2-DFProperties-End -->

<!-- Pol_WorkOfflineDisabled_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_WorkOfflineDisabled_2 |
| Friendly Name | Remove "Work offline" command |
| Location | Computer Configuration |
| Path | Network > Offline Files |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| Registry Value Name | WorkOfflineDisabled |
| ADMX File Name | OfflineFiles.admx |
<!-- Pol_WorkOfflineDisabled_2-AdmxBacked-End -->

<!-- Pol_WorkOfflineDisabled_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_WorkOfflineDisabled_2-Examples-End -->

<!-- Pol_WorkOfflineDisabled_2-End -->

<!-- ADMX_OfflineFiles-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_OfflineFiles-CspMoreInfo-End -->

<!-- ADMX_OfflineFiles-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
