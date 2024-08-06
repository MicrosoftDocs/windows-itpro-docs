---
title: ADMX_UserExperienceVirtualization Policy CSP
description: Learn more about the ADMX_UserExperienceVirtualization Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_UserExperienceVirtualization-Begin -->
# Policy CSP - ADMX_UserExperienceVirtualization

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_UserExperienceVirtualization-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_UserExperienceVirtualization-Editable-End -->

<!-- Calculator-Begin -->
## Calculator

<!-- Calculator-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Calculator-Applicability-End -->

<!-- Calculator-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/Calculator
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/Calculator
```
<!-- Calculator-OmaUri-End -->

<!-- Calculator-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings of Calculator.

By default, the user settings of Calculator synchronize between computers. Use the policy setting to prevent the user settings of Calculator from synchronization between computers.

- If you enable this policy setting, the Calculator user settings continue to synchronize.

- If you disable this policy setting, Calculator user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- Calculator-Description-End -->

<!-- Calculator-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Calculator-Editable-End -->

<!-- Calculator-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Calculator-DFProperties-End -->

<!-- Calculator-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Calculator |
| Friendly Name | Calculator |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| Registry Value Name | MicrosoftCalculator6 |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- Calculator-AdmxBacked-End -->

<!-- Calculator-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Calculator-Examples-End -->

<!-- Calculator-End -->

<!-- ConfigureSyncMethod-Begin -->
## ConfigureSyncMethod

<!-- ConfigureSyncMethod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ConfigureSyncMethod-Applicability-End -->

<!-- ConfigureSyncMethod-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/ConfigureSyncMethod
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/ConfigureSyncMethod
```
<!-- ConfigureSyncMethod-OmaUri-End -->

<!-- ConfigureSyncMethod-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the sync provider used by User Experience Virtualization (UE-V) to sync settings between users' computers. With Sync Method set to "SyncProvider," the UE-V Agent uses a built-in sync provider to keep user settings synchronized between the computer and the settings storage location. This is the default value. You can disable the sync provider on computers that never go offline and are always connected to the settings storage location.

When SyncMethod is set to "None," the UE-V Agent uses no sync provider. Settings are written directly to the settings storage location rather than being cached to sync later.

Set SyncMethod to "External" when an external synchronization engine is being deployed for settings sync. This could use OneDrive, Work Folders, SharePoint or any other engine that uses a local folder to synchronize data between users' computers. In this mode, UE-V writes settings data to the local folder specified in the settings storage path. These settings are then synchronized to other computers by an external synchronization engine. UE-V has no control over this synchronization. It only reads and writes the settings data when the normal UE-V triggers take place.

With notifications enabled, UE-V users receive a message when the settings sync is delayed. The notification delay policy setting defines the delay before a notification appears.

- If you disable this policy setting, the sync provider is used to synchronize settings between computers and the settings storage location.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- ConfigureSyncMethod-Description-End -->

<!-- ConfigureSyncMethod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureSyncMethod-Editable-End -->

<!-- ConfigureSyncMethod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfigureSyncMethod-DFProperties-End -->

<!-- ConfigureSyncMethod-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureSyncMethod |
| Friendly Name | Configure Sync Method |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- ConfigureSyncMethod-AdmxBacked-End -->

<!-- ConfigureSyncMethod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureSyncMethod-Examples-End -->

<!-- ConfigureSyncMethod-End -->

<!-- ConfigureVdi-Begin -->
## ConfigureVdi

<!-- ConfigureVdi-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ConfigureVdi-Applicability-End -->

<!-- ConfigureVdi-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/ConfigureVdi
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/ConfigureVdi
```
<!-- ConfigureVdi-OmaUri-End -->

<!-- ConfigureVdi-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of User Experience Virtualization (UE-V) rollback information for computers running in a non-persistent, pooled VDI environment. UE-V settings rollback data and checkpoints are normally stored only on the local computer. With this policy setting enabled, the rollback information is copied to the settings storage location when the user logs off or shuts down their VDI session. Enable this setting to register a VDI-specific settings location template and restore data on computers in pooled VDI environments that reset to a clean state on logout. With this policy enabled you can roll settings back to the state when UE-V was installed or to "last-known-good" configurations. Only enable this policy setting on computers running in a non-persistent VDI environment. The VDI Collection Name defines the name of the virtual desktop collection containing the virtual computers.

- If you enable this policy setting, the UE-V rollback state is copied to the settings storage location on logout and restored on login.

- If you disable this policy setting, no UE-V rollback state is copied to the settings storage location.

- If you don't configure this policy, no UE-V rollback state is copied to the settings storage location.
<!-- ConfigureVdi-Description-End -->

<!-- ConfigureVdi-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureVdi-Editable-End -->

<!-- ConfigureVdi-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfigureVdi-DFProperties-End -->

<!-- ConfigureVdi-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureVdi |
| Friendly Name | VDI Configuration |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\WindowsSettings |
| Registry Value Name | VdiState |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- ConfigureVdi-AdmxBacked-End -->

<!-- ConfigureVdi-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureVdi-Examples-End -->

<!-- ConfigureVdi-End -->

<!-- ContactITDescription-Begin -->
## ContactITDescription

<!-- ContactITDescription-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ContactITDescription-Applicability-End -->

<!-- ContactITDescription-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/ContactITDescription
```
<!-- ContactITDescription-OmaUri-End -->

<!-- ContactITDescription-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the text of the Contact IT URL hyperlink in the Company Settings Center.

- If you enable this policy setting, the Company Settings Center displays the specified text in the link to the Contact IT URL.

- If you disable this policy setting, the Company Settings Center doesn't display an IT Contact link.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- ContactITDescription-Description-End -->

<!-- ContactITDescription-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ContactITDescription-Editable-End -->

<!-- ContactITDescription-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ContactITDescription-DFProperties-End -->

<!-- ContactITDescription-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ContactITDescription |
| Friendly Name | Contact IT Link Text |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- ContactITDescription-AdmxBacked-End -->

<!-- ContactITDescription-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ContactITDescription-Examples-End -->

<!-- ContactITDescription-End -->

<!-- ContactITUrl-Begin -->
## ContactITUrl

<!-- ContactITUrl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ContactITUrl-Applicability-End -->

<!-- ContactITUrl-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/ContactITUrl
```
<!-- ContactITUrl-OmaUri-End -->

<!-- ContactITUrl-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the URL for the Contact IT link in the Company Settings Center.

- If you enable this policy setting, the Company Settings Center Contact IT text links to the specified URL. The link can be of any standard protocol such as http or mailto.

- If you disable this policy setting, the Company Settings Center doesn't display an IT Contact link.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- ContactITUrl-Description-End -->

<!-- ContactITUrl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ContactITUrl-Editable-End -->

<!-- ContactITUrl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ContactITUrl-DFProperties-End -->

<!-- ContactITUrl-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ContactITUrl |
| Friendly Name | Contact IT URL |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- ContactITUrl-AdmxBacked-End -->

<!-- ContactITUrl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ContactITUrl-Examples-End -->

<!-- ContactITUrl-End -->

<!-- DisableWin8Sync-Begin -->
## DisableWin8Sync

<!-- DisableWin8Sync-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableWin8Sync-Applicability-End -->

<!-- DisableWin8Sync-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/DisableWin8Sync
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/DisableWin8Sync
```
<!-- DisableWin8Sync-OmaUri-End -->

<!-- DisableWin8Sync-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting defines whether the User Experience Virtualization (UE-V) Agent synchronizes settings for Windows apps.

By default, the UE-V Agent synchronizes settings for Windows apps between the computer and the settings storage location.

- If you enable this policy setting, the UE-V Agent won't synchronize settings for Windows apps.

- If you disable this policy setting, the UE-V Agent will synchronize settings for Windows apps.

- If you don't configure this policy setting, any defined values are deleted.

> [!NOTE]
> If the user connects their Microsoft account for their computer then the UE-V Agent won't synchronize Windows apps. The Windows apps will default to whatever settings are configured in the Sync your settings configuration in Windows.
<!-- DisableWin8Sync-Description-End -->

<!-- DisableWin8Sync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableWin8Sync-Editable-End -->

<!-- DisableWin8Sync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableWin8Sync-DFProperties-End -->

<!-- DisableWin8Sync-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableWin8Sync |
| Friendly Name | Do not synchronize Windows Apps |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration |
| Registry Value Name | DontSyncWindows8AppSettings |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- DisableWin8Sync-AdmxBacked-End -->

<!-- DisableWin8Sync-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableWin8Sync-Examples-End -->

<!-- DisableWin8Sync-End -->

<!-- DisableWindowsOSSettings-Begin -->
## DisableWindowsOSSettings

<!-- DisableWindowsOSSettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableWindowsOSSettings-Applicability-End -->

<!-- DisableWindowsOSSettings-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/DisableWindowsOSSettings
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/DisableWindowsOSSettings
```
<!-- DisableWindowsOSSettings-OmaUri-End -->

<!-- DisableWindowsOSSettings-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of Windows settings between computers.

Certain Windows settings will synchronize between computers by default. These settings include Windows themes, Windows desktop settings, Ease of Access settings, and network printers. Use this policy setting to specify which Windows settings synchronize between computers. You can also use these settings to enable synchronization of users' sign-in information for certain apps, networks, and certificates.

- If you enable this policy setting, only the selected Windows settings synchronize. Unselected Windows settings are excluded from settings synchronization.

- If you disable this policy setting, all Windows Settings are excluded from the settings synchronization.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- DisableWindowsOSSettings-Description-End -->

<!-- DisableWindowsOSSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableWindowsOSSettings-Editable-End -->

<!-- DisableWindowsOSSettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableWindowsOSSettings-DFProperties-End -->

<!-- DisableWindowsOSSettings-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableWindowsOSSettings |
| Friendly Name | Synchronize Windows settings |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\WindowsSettings |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- DisableWindowsOSSettings-AdmxBacked-End -->

<!-- DisableWindowsOSSettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableWindowsOSSettings-Examples-End -->

<!-- DisableWindowsOSSettings-End -->

<!-- EnableUEV-Begin -->
## EnableUEV

<!-- EnableUEV-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableUEV-Applicability-End -->

<!-- EnableUEV-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/EnableUEV
```
<!-- EnableUEV-OmaUri-End -->

<!-- EnableUEV-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to enable or disable User Experience Virtualization (UE-V) feature. Reboot is needed for enable to take effect. With Auto-register inbox templates enabled, the UE-V inbox templates such as Office 2016 will be automatically registered when the UE-V Service is enabled. If this option is changed, it will only take effect when UE-V service is re-enabled.
<!-- EnableUEV-Description-End -->

<!-- EnableUEV-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableUEV-Editable-End -->

<!-- EnableUEV-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableUEV-DFProperties-End -->

<!-- EnableUEV-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableUEV |
| Friendly Name | Enable UEV |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent |
| Registry Value Name | Enabled |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- EnableUEV-AdmxBacked-End -->

<!-- EnableUEV-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableUEV-Examples-End -->

<!-- EnableUEV-End -->

<!-- Finance-Begin -->
## Finance

<!-- Finance-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Finance-Applicability-End -->

<!-- Finance-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/Finance
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/Finance
```
<!-- Finance-OmaUri-End -->

<!-- Finance-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for the Finance app.

By default, the user settings of Finance sync between computers. Use the policy setting to prevent the user settings of Finance from synchronizing between computers.

- If you enable this policy setting, Finance user settings continue to sync.

- If you disable this policy setting, Finance user settings are excluded from synchronization.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- Finance-Description-End -->

<!-- Finance-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Finance-Editable-End -->

<!-- Finance-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Finance-DFProperties-End -->

<!-- Finance-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Finance |
| Friendly Name | Finance |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Windows Apps |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Windows8AppList\Microsoft.BingFinance_8wekyb3d8bbwe |
| Registry Value Name | SyncSettings |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- Finance-AdmxBacked-End -->

<!-- Finance-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Finance-Examples-End -->

<!-- Finance-End -->

<!-- FirstUseNotificationEnabled-Begin -->
## FirstUseNotificationEnabled

<!-- FirstUseNotificationEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- FirstUseNotificationEnabled-Applicability-End -->

<!-- FirstUseNotificationEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/FirstUseNotificationEnabled
```
<!-- FirstUseNotificationEnabled-OmaUri-End -->

<!-- FirstUseNotificationEnabled-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting enables a notification in the system tray that appears when the User Experience Virtualization (UE-V) Agent runs for the first time.

By default, a notification informs users that Company Settings Center, the user-facing name for the UE-V Agent, now helps to synchronize settings between their work computers.

With this setting enabled, the notification appears the first time that the UE-V Agent runs.

With this setting disabled, no notification appears.

If you don't configure this policy setting, any defined values are deleted.
<!-- FirstUseNotificationEnabled-Description-End -->

<!-- FirstUseNotificationEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- FirstUseNotificationEnabled-Editable-End -->

<!-- FirstUseNotificationEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- FirstUseNotificationEnabled-DFProperties-End -->

<!-- FirstUseNotificationEnabled-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | FirstUseNotificationEnabled |
| Friendly Name | First Use Notification |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration |
| Registry Value Name | FirstUseNotificationEnabled |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- FirstUseNotificationEnabled-AdmxBacked-End -->

<!-- FirstUseNotificationEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- FirstUseNotificationEnabled-Examples-End -->

<!-- FirstUseNotificationEnabled-End -->

<!-- Games-Begin -->
## Games

<!-- Games-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Games-Applicability-End -->

<!-- Games-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/Games
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/Games
```
<!-- Games-OmaUri-End -->

<!-- Games-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for the Games app.

By default, the user settings of Games sync between computers. Use the policy setting to prevent the user settings of Games from synchronizing between computers.

- If you enable this policy setting, Games user settings continue to sync.

- If you disable this policy setting, Games user settings are excluded from synchronization.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- Games-Description-End -->

<!-- Games-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Games-Editable-End -->

<!-- Games-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Games-DFProperties-End -->

<!-- Games-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Games |
| Friendly Name | Games |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Windows Apps |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Windows8AppList\Microsoft.XboxLIVEGames_8wekyb3d8bbwe |
| Registry Value Name | SyncSettings |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- Games-AdmxBacked-End -->

<!-- Games-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Games-Examples-End -->

<!-- Games-End -->

<!-- InternetExplorer10-Begin -->
## InternetExplorer10

<!-- InternetExplorer10-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- InternetExplorer10-Applicability-End -->

<!-- InternetExplorer10-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/InternetExplorer10
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/InternetExplorer10
```
<!-- InternetExplorer10-OmaUri-End -->

<!-- InternetExplorer10-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings of Internet Explorer 10.

By default, the user settings of Internet Explorer 10 synchronize between computers. Use the policy setting to prevent the user settings for Internet Explorer 10 from synchronization between computers.

- If you enable this policy setting, the Internet Explorer 10 user settings continue to synchronize.

- If you disable this policy setting, Internet Explorer 10 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- InternetExplorer10-Description-End -->

<!-- InternetExplorer10-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetExplorer10-Editable-End -->

<!-- InternetExplorer10-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetExplorer10-DFProperties-End -->

<!-- InternetExplorer10-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | InternetExplorer10 |
| Friendly Name | Internet Explorer 10 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| Registry Value Name | MicrosoftInternetExplorer.Version10 |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- InternetExplorer10-AdmxBacked-End -->

<!-- InternetExplorer10-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetExplorer10-Examples-End -->

<!-- InternetExplorer10-End -->

<!-- InternetExplorer11-Begin -->
## InternetExplorer11

<!-- InternetExplorer11-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- InternetExplorer11-Applicability-End -->

<!-- InternetExplorer11-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/InternetExplorer11
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/InternetExplorer11
```
<!-- InternetExplorer11-OmaUri-End -->

<!-- InternetExplorer11-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings of Internet Explorer 11.

By default, the user settings of Internet Explorer 11 synchronize between computers. Use the policy setting to prevent the user settings for Internet Explorer 11 from synchronization between computers.

- If you enable this policy setting, the Internet Explorer 11 user settings continue to synchronize.

- If you disable this policy setting, Internet Explorer 11 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- InternetExplorer11-Description-End -->

<!-- InternetExplorer11-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetExplorer11-Editable-End -->

<!-- InternetExplorer11-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetExplorer11-DFProperties-End -->

<!-- InternetExplorer11-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | InternetExplorer11 |
| Friendly Name | Internet Explorer 11 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| Registry Value Name | MicrosoftInternetExplorer.Version11 |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- InternetExplorer11-AdmxBacked-End -->

<!-- InternetExplorer11-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetExplorer11-Examples-End -->

<!-- InternetExplorer11-End -->

<!-- InternetExplorer8-Begin -->
## InternetExplorer8

<!-- InternetExplorer8-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- InternetExplorer8-Applicability-End -->

<!-- InternetExplorer8-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/InternetExplorer8
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/InternetExplorer8
```
<!-- InternetExplorer8-OmaUri-End -->

<!-- InternetExplorer8-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Internet Explorer 8.

By default, the user settings of Internet Explorer 8 synchronize between computers. Use the policy setting to prevent the user settings for Internet Explorer 8 from synchronization between computers.

- If you enable this policy setting, the Internet Explorer 8 user settings continue to synchronize.

- If you disable this policy setting, Internet Explorer 8 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- InternetExplorer8-Description-End -->

<!-- InternetExplorer8-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetExplorer8-Editable-End -->

<!-- InternetExplorer8-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetExplorer8-DFProperties-End -->

<!-- InternetExplorer8-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | InternetExplorer8 |
| Friendly Name | Internet Explorer 8 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| Registry Value Name | MicrosoftInternetExplorer.Version8 |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- InternetExplorer8-AdmxBacked-End -->

<!-- InternetExplorer8-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetExplorer8-Examples-End -->

<!-- InternetExplorer8-End -->

<!-- InternetExplorer9-Begin -->
## InternetExplorer9

<!-- InternetExplorer9-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- InternetExplorer9-Applicability-End -->

<!-- InternetExplorer9-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/InternetExplorer9
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/InternetExplorer9
```
<!-- InternetExplorer9-OmaUri-End -->

<!-- InternetExplorer9-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Internet Explorer 9.

By default, the user settings of Internet Explorer 9 synchronize between computers. Use the policy setting to prevent the user settings for Internet Explorer 9 from synchronization between computers.

- If you enable this policy setting, the Internet Explorer 9 user settings continue to synchronize.

- If you disable this policy setting, Internet Explorer 9 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- InternetExplorer9-Description-End -->

<!-- InternetExplorer9-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetExplorer9-Editable-End -->

<!-- InternetExplorer9-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetExplorer9-DFProperties-End -->

<!-- InternetExplorer9-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | InternetExplorer9 |
| Friendly Name | Internet Explorer 9 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| Registry Value Name | MicrosoftInternetExplorer.Version9 |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- InternetExplorer9-AdmxBacked-End -->

<!-- InternetExplorer9-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetExplorer9-Examples-End -->

<!-- InternetExplorer9-End -->

<!-- InternetExplorerCommon-Begin -->
## InternetExplorerCommon

<!-- InternetExplorerCommon-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- InternetExplorerCommon-Applicability-End -->

<!-- InternetExplorerCommon-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/InternetExplorerCommon
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/InternetExplorerCommon
```
<!-- InternetExplorerCommon-OmaUri-End -->

<!-- InternetExplorerCommon-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings which are common between the versions of Internet Explorer.

By default, the user settings which are common between the versions of Internet Explorer synchronize between computers. Use the policy setting to prevent the user settings of Internet Explorer from synchronization between computers.

- If you enable this policy setting, the user settings which are common between the versions of Internet Explorer continue to synchronize.

- If you disable this policy setting, the user settings which are common between the versions of Internet Explorer are excluded from settings synchronization. If any version of the Internet Explorer settings are enabled this policy setting shouldn't be disabled.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- InternetExplorerCommon-Description-End -->

<!-- InternetExplorerCommon-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InternetExplorerCommon-Editable-End -->

<!-- InternetExplorerCommon-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InternetExplorerCommon-DFProperties-End -->

<!-- InternetExplorerCommon-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | InternetExplorerCommon |
| Friendly Name | Internet Explorer Common Settings |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- InternetExplorerCommon-AdmxBacked-End -->

<!-- InternetExplorerCommon-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InternetExplorerCommon-Examples-End -->

<!-- InternetExplorerCommon-End -->

<!-- Maps-Begin -->
## Maps

<!-- Maps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Maps-Applicability-End -->

<!-- Maps-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/Maps
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/Maps
```
<!-- Maps-OmaUri-End -->

<!-- Maps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for the Maps app.

By default, the user settings of Maps sync between computers. Use the policy setting to prevent the user settings of Maps from synchronizing between computers.

- If you enable this policy setting, Maps user settings continue to sync.

- If you disable this policy setting, Maps user settings are excluded from synchronization.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- Maps-Description-End -->

<!-- Maps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Maps-Editable-End -->

<!-- Maps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Maps-DFProperties-End -->

<!-- Maps-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Maps |
| Friendly Name | Maps |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Windows Apps |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Windows8AppList\Microsoft.BingMaps_8wekyb3d8bbwe |
| Registry Value Name | SyncSettings |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- Maps-AdmxBacked-End -->

<!-- Maps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Maps-Examples-End -->

<!-- Maps-End -->

<!-- MaxPackageSizeInBytes-Begin -->
## MaxPackageSizeInBytes

<!-- MaxPackageSizeInBytes-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MaxPackageSizeInBytes-Applicability-End -->

<!-- MaxPackageSizeInBytes-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MaxPackageSizeInBytes
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MaxPackageSizeInBytes
```
<!-- MaxPackageSizeInBytes-OmaUri-End -->

<!-- MaxPackageSizeInBytes-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure the UE-V Agent to write a warning event to the event log when a settings package file size reaches a defined threshold. By default the UE-V Agent doesn't report information about package file size.

- If you enable this policy setting, specify the threshold file size in bytes. When the settings package file exceeds this threshold the UE-V Agent will write a warning event to the event log.

- If you disable or don't configure this policy setting, no event is written to the event log to report settings package size.
<!-- MaxPackageSizeInBytes-Description-End -->

<!-- MaxPackageSizeInBytes-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MaxPackageSizeInBytes-Editable-End -->

<!-- MaxPackageSizeInBytes-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MaxPackageSizeInBytes-DFProperties-End -->

<!-- MaxPackageSizeInBytes-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MaxPackageSizeInBytes |
| Friendly Name | Settings package size warning threshold |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MaxPackageSizeInBytes-AdmxBacked-End -->

<!-- MaxPackageSizeInBytes-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MaxPackageSizeInBytes-Examples-End -->

<!-- MaxPackageSizeInBytes-End -->

<!-- MicrosoftOffice2010Access-Begin -->
## MicrosoftOffice2010Access

<!-- MicrosoftOffice2010Access-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2010Access-Applicability-End -->

<!-- MicrosoftOffice2010Access-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010Access
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010Access
```
<!-- MicrosoftOffice2010Access-OmaUri-End -->

<!-- MicrosoftOffice2010Access-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Access 2010.

By default, the user settings of Microsoft Access 2010 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Access 2010 from synchronization between computers.

- If you enable this policy setting, Microsoft Access 2010 user settings continue to synchronize.

- If you disable this policy setting, Microsoft Access 2010 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2010Access-Description-End -->

<!-- MicrosoftOffice2010Access-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2010Access-Editable-End -->

<!-- MicrosoftOffice2010Access-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2010Access-DFProperties-End -->

<!-- MicrosoftOffice2010Access-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2010Access |
| Friendly Name | Microsoft Access 2010 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2010Access-AdmxBacked-End -->

<!-- MicrosoftOffice2010Access-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2010Access-Examples-End -->

<!-- MicrosoftOffice2010Access-End -->

<!-- MicrosoftOffice2010Common-Begin -->
## MicrosoftOffice2010Common

<!-- MicrosoftOffice2010Common-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2010Common-Applicability-End -->

<!-- MicrosoftOffice2010Common-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010Common
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010Common
```
<!-- MicrosoftOffice2010Common-OmaUri-End -->

<!-- MicrosoftOffice2010Common-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings which are common between the Microsoft Office Suite 2010 applications.

By default, the user settings which are common between the Microsoft Office Suite 2010 applications synchronize between computers. Use the policy setting to prevent the user settings which are common between the Microsoft Office Suite 2010 applications from synchronization between computers.

- If you enable this policy setting, the user settings which are common between the Microsoft Office Suite 2010 applications continue to synchronize.

- If you disable this policy setting, the user settings which are common between the Microsoft Office Suite 2010 applications are excluded from the synchronization settings. If any of the Microsoft Office Suite 2010 applications are enabled, this policy setting shouldn't be disabled
- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2010Common-Description-End -->

<!-- MicrosoftOffice2010Common-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2010Common-Editable-End -->

<!-- MicrosoftOffice2010Common-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2010Common-DFProperties-End -->

<!-- MicrosoftOffice2010Common-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2010Common |
| Friendly Name | Microsoft Office 2010 Common Settings |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2010Common-AdmxBacked-End -->

<!-- MicrosoftOffice2010Common-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2010Common-Examples-End -->

<!-- MicrosoftOffice2010Common-End -->

<!-- MicrosoftOffice2010Excel-Begin -->
## MicrosoftOffice2010Excel

<!-- MicrosoftOffice2010Excel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2010Excel-Applicability-End -->

<!-- MicrosoftOffice2010Excel-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010Excel
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010Excel
```
<!-- MicrosoftOffice2010Excel-OmaUri-End -->

<!-- MicrosoftOffice2010Excel-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Excel 2010.

By default, the user settings of Microsoft Excel 2010 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Excel 2010 from synchronization between computers.

- If you enable this policy setting, Microsoft Excel 2010 user settings continue to synchronize.

- If you disable this policy setting, Microsoft Excel 2010 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2010Excel-Description-End -->

<!-- MicrosoftOffice2010Excel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2010Excel-Editable-End -->

<!-- MicrosoftOffice2010Excel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2010Excel-DFProperties-End -->

<!-- MicrosoftOffice2010Excel-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2010Excel |
| Friendly Name | Microsoft Excel 2010 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2010Excel-AdmxBacked-End -->

<!-- MicrosoftOffice2010Excel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2010Excel-Examples-End -->

<!-- MicrosoftOffice2010Excel-End -->

<!-- MicrosoftOffice2010InfoPath-Begin -->
## MicrosoftOffice2010InfoPath

<!-- MicrosoftOffice2010InfoPath-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2010InfoPath-Applicability-End -->

<!-- MicrosoftOffice2010InfoPath-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010InfoPath
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010InfoPath
```
<!-- MicrosoftOffice2010InfoPath-OmaUri-End -->

<!-- MicrosoftOffice2010InfoPath-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft InfoPath 2010.

By default, the user settings of Microsoft InfoPath 2010 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft InfoPath 2010 from synchronization between computers.

- If you enable this policy setting, Microsoft InfoPath 2010 user settings continue to synchronize.

- If you disable this policy setting, Microsoft InfoPath 2010 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2010InfoPath-Description-End -->

<!-- MicrosoftOffice2010InfoPath-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2010InfoPath-Editable-End -->

<!-- MicrosoftOffice2010InfoPath-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2010InfoPath-DFProperties-End -->

<!-- MicrosoftOffice2010InfoPath-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2010InfoPath |
| Friendly Name | Microsoft InfoPath 2010 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2010InfoPath-AdmxBacked-End -->

<!-- MicrosoftOffice2010InfoPath-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2010InfoPath-Examples-End -->

<!-- MicrosoftOffice2010InfoPath-End -->

<!-- MicrosoftOffice2010Lync-Begin -->
## MicrosoftOffice2010Lync

<!-- MicrosoftOffice2010Lync-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2010Lync-Applicability-End -->

<!-- MicrosoftOffice2010Lync-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010Lync
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010Lync
```
<!-- MicrosoftOffice2010Lync-OmaUri-End -->

<!-- MicrosoftOffice2010Lync-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Lync 2010.

By default, the user settings of Microsoft Lync 2010 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Lync 2010 from synchronization between computers.

- If you enable this policy setting, Microsoft Lync 2010 user settings continue to synchronize.

- If you disable this policy setting, Microsoft Lync 2010 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2010Lync-Description-End -->

<!-- MicrosoftOffice2010Lync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2010Lync-Editable-End -->

<!-- MicrosoftOffice2010Lync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2010Lync-DFProperties-End -->

<!-- MicrosoftOffice2010Lync-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2010Lync |
| Friendly Name | Microsoft Lync 2010 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| Registry Value Name | MicrosoftLync2010 |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2010Lync-AdmxBacked-End -->

<!-- MicrosoftOffice2010Lync-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2010Lync-Examples-End -->

<!-- MicrosoftOffice2010Lync-End -->

<!-- MicrosoftOffice2010OneNote-Begin -->
## MicrosoftOffice2010OneNote

<!-- MicrosoftOffice2010OneNote-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2010OneNote-Applicability-End -->

<!-- MicrosoftOffice2010OneNote-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010OneNote
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010OneNote
```
<!-- MicrosoftOffice2010OneNote-OmaUri-End -->

<!-- MicrosoftOffice2010OneNote-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft OneNote 2010.

By default, the user settings of Microsoft OneNote 2010 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft OneNote 2010 from synchronization between computers.

- If you enable this policy setting, Microsoft OneNote 2010 user settings continue to synchronize.

- If you disable this policy setting, Microsoft OneNote 2010 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2010OneNote-Description-End -->

<!-- MicrosoftOffice2010OneNote-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2010OneNote-Editable-End -->

<!-- MicrosoftOffice2010OneNote-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2010OneNote-DFProperties-End -->

<!-- MicrosoftOffice2010OneNote-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2010OneNote |
| Friendly Name | Microsoft OneNote 2010 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2010OneNote-AdmxBacked-End -->

<!-- MicrosoftOffice2010OneNote-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2010OneNote-Examples-End -->

<!-- MicrosoftOffice2010OneNote-End -->

<!-- MicrosoftOffice2010Outlook-Begin -->
## MicrosoftOffice2010Outlook

<!-- MicrosoftOffice2010Outlook-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2010Outlook-Applicability-End -->

<!-- MicrosoftOffice2010Outlook-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010Outlook
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010Outlook
```
<!-- MicrosoftOffice2010Outlook-OmaUri-End -->

<!-- MicrosoftOffice2010Outlook-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Outlook 2010.

By default, the user settings of Microsoft Outlook 2010 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Outlook 2010 from synchronization between computers.

- If you enable this policy setting, Microsoft Outlook 2010 user settings continue to synchronize.

- If you disable this policy setting, Microsoft Outlook 2010 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2010Outlook-Description-End -->

<!-- MicrosoftOffice2010Outlook-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2010Outlook-Editable-End -->

<!-- MicrosoftOffice2010Outlook-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2010Outlook-DFProperties-End -->

<!-- MicrosoftOffice2010Outlook-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2010Outlook |
| Friendly Name | Microsoft Outlook 2010 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2010Outlook-AdmxBacked-End -->

<!-- MicrosoftOffice2010Outlook-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2010Outlook-Examples-End -->

<!-- MicrosoftOffice2010Outlook-End -->

<!-- MicrosoftOffice2010PowerPoint-Begin -->
## MicrosoftOffice2010PowerPoint

<!-- MicrosoftOffice2010PowerPoint-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2010PowerPoint-Applicability-End -->

<!-- MicrosoftOffice2010PowerPoint-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010PowerPoint
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010PowerPoint
```
<!-- MicrosoftOffice2010PowerPoint-OmaUri-End -->

<!-- MicrosoftOffice2010PowerPoint-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft PowerPoint 2010.

By default, the user settings of Microsoft PowerPoint 2010 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft PowerPoint 2010 from synchronization between computers.

- If you enable this policy setting, Microsoft PowerPoint 2010 user settings continue to synchronize.

- If you disable this policy setting, Microsoft PowerPoint 2010 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2010PowerPoint-Description-End -->

<!-- MicrosoftOffice2010PowerPoint-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2010PowerPoint-Editable-End -->

<!-- MicrosoftOffice2010PowerPoint-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2010PowerPoint-DFProperties-End -->

<!-- MicrosoftOffice2010PowerPoint-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2010PowerPoint |
| Friendly Name | Microsoft PowerPoint 2010 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2010PowerPoint-AdmxBacked-End -->

<!-- MicrosoftOffice2010PowerPoint-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2010PowerPoint-Examples-End -->

<!-- MicrosoftOffice2010PowerPoint-End -->

<!-- MicrosoftOffice2010Project-Begin -->
## MicrosoftOffice2010Project

<!-- MicrosoftOffice2010Project-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2010Project-Applicability-End -->

<!-- MicrosoftOffice2010Project-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010Project
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010Project
```
<!-- MicrosoftOffice2010Project-OmaUri-End -->

<!-- MicrosoftOffice2010Project-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Project 2010.

By default, the user settings of Microsoft Project 2010 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Project 2010 from synchronization between computers.

- If you enable this policy setting, Microsoft Project 2010 user settings continue to synchronize.

- If you disable this policy setting, Microsoft Project 2010 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2010Project-Description-End -->

<!-- MicrosoftOffice2010Project-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2010Project-Editable-End -->

<!-- MicrosoftOffice2010Project-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2010Project-DFProperties-End -->

<!-- MicrosoftOffice2010Project-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2010Project |
| Friendly Name | Microsoft Project 2010 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2010Project-AdmxBacked-End -->

<!-- MicrosoftOffice2010Project-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2010Project-Examples-End -->

<!-- MicrosoftOffice2010Project-End -->

<!-- MicrosoftOffice2010Publisher-Begin -->
## MicrosoftOffice2010Publisher

<!-- MicrosoftOffice2010Publisher-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2010Publisher-Applicability-End -->

<!-- MicrosoftOffice2010Publisher-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010Publisher
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010Publisher
```
<!-- MicrosoftOffice2010Publisher-OmaUri-End -->

<!-- MicrosoftOffice2010Publisher-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Publisher 2010.

By default, the user settings of Microsoft Publisher 2010 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Publisher 2010 from synchronization between computers.

- If you enable this policy setting, Microsoft Publisher 2010 user settings continue to synchronize.

- If you disable this policy setting, Microsoft Publisher 2010 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2010Publisher-Description-End -->

<!-- MicrosoftOffice2010Publisher-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2010Publisher-Editable-End -->

<!-- MicrosoftOffice2010Publisher-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2010Publisher-DFProperties-End -->

<!-- MicrosoftOffice2010Publisher-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2010Publisher |
| Friendly Name | Microsoft Publisher 2010 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2010Publisher-AdmxBacked-End -->

<!-- MicrosoftOffice2010Publisher-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2010Publisher-Examples-End -->

<!-- MicrosoftOffice2010Publisher-End -->

<!-- MicrosoftOffice2010SharePointDesigner-Begin -->
## MicrosoftOffice2010SharePointDesigner

<!-- MicrosoftOffice2010SharePointDesigner-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2010SharePointDesigner-Applicability-End -->

<!-- MicrosoftOffice2010SharePointDesigner-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010SharePointDesigner
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010SharePointDesigner
```
<!-- MicrosoftOffice2010SharePointDesigner-OmaUri-End -->

<!-- MicrosoftOffice2010SharePointDesigner-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft SharePoint Designer 2010.

By default, the user settings of Microsoft SharePoint Designer 2010 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft SharePoint Designer 2010 from synchronization between computers.

- If you enable this policy setting, Microsoft SharePoint Designer 2010 user settings continue to synchronize.

- If you disable this policy setting, Microsoft SharePoint Designer 2010 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2010SharePointDesigner-Description-End -->

<!-- MicrosoftOffice2010SharePointDesigner-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2010SharePointDesigner-Editable-End -->

<!-- MicrosoftOffice2010SharePointDesigner-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2010SharePointDesigner-DFProperties-End -->

<!-- MicrosoftOffice2010SharePointDesigner-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2010SharePointDesigner |
| Friendly Name | Microsoft SharePoint Designer 2010 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2010SharePointDesigner-AdmxBacked-End -->

<!-- MicrosoftOffice2010SharePointDesigner-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2010SharePointDesigner-Examples-End -->

<!-- MicrosoftOffice2010SharePointDesigner-End -->

<!-- MicrosoftOffice2010SharePointWorkspace-Begin -->
## MicrosoftOffice2010SharePointWorkspace

<!-- MicrosoftOffice2010SharePointWorkspace-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2010SharePointWorkspace-Applicability-End -->

<!-- MicrosoftOffice2010SharePointWorkspace-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010SharePointWorkspace
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010SharePointWorkspace
```
<!-- MicrosoftOffice2010SharePointWorkspace-OmaUri-End -->

<!-- MicrosoftOffice2010SharePointWorkspace-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft SharePoint Workspace 2010.

By default, the user settings of Microsoft SharePoint Workspace 2010 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft SharePoint Workspace 2010 from synchronization between computers.

- If you enable this policy setting, Microsoft SharePoint Workspace 2010 user settings continue to synchronize.

- If you disable this policy setting, Microsoft SharePoint Workspace 2010 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2010SharePointWorkspace-Description-End -->

<!-- MicrosoftOffice2010SharePointWorkspace-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2010SharePointWorkspace-Editable-End -->

<!-- MicrosoftOffice2010SharePointWorkspace-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2010SharePointWorkspace-DFProperties-End -->

<!-- MicrosoftOffice2010SharePointWorkspace-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2010SharePointWorkspace |
| Friendly Name | Microsoft SharePoint Workspace 2010 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2010SharePointWorkspace-AdmxBacked-End -->

<!-- MicrosoftOffice2010SharePointWorkspace-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2010SharePointWorkspace-Examples-End -->

<!-- MicrosoftOffice2010SharePointWorkspace-End -->

<!-- MicrosoftOffice2010Visio-Begin -->
## MicrosoftOffice2010Visio

<!-- MicrosoftOffice2010Visio-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2010Visio-Applicability-End -->

<!-- MicrosoftOffice2010Visio-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010Visio
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010Visio
```
<!-- MicrosoftOffice2010Visio-OmaUri-End -->

<!-- MicrosoftOffice2010Visio-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Visio 2010.

By default, the user settings of Microsoft Visio 2010 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Visio 2010 from synchronization between computers.

- If you enable this policy setting, Microsoft Visio 2010 user settings continue to synchronize.

- If you disable this policy setting, Microsoft Visio 2010 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2010Visio-Description-End -->

<!-- MicrosoftOffice2010Visio-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2010Visio-Editable-End -->

<!-- MicrosoftOffice2010Visio-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2010Visio-DFProperties-End -->

<!-- MicrosoftOffice2010Visio-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2010Visio |
| Friendly Name | Microsoft Visio 2010 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2010Visio-AdmxBacked-End -->

<!-- MicrosoftOffice2010Visio-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2010Visio-Examples-End -->

<!-- MicrosoftOffice2010Visio-End -->

<!-- MicrosoftOffice2010Word-Begin -->
## MicrosoftOffice2010Word

<!-- MicrosoftOffice2010Word-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2010Word-Applicability-End -->

<!-- MicrosoftOffice2010Word-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010Word
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2010Word
```
<!-- MicrosoftOffice2010Word-OmaUri-End -->

<!-- MicrosoftOffice2010Word-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Word 2010.

By default, the user settings of Microsoft Word 2010 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Word 2010 from synchronization between computers.

- If you enable this policy setting, Microsoft Word 2010 user settings continue to synchronize.

- If you disable this policy setting, Microsoft Word 2010 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2010Word-Description-End -->

<!-- MicrosoftOffice2010Word-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2010Word-Editable-End -->

<!-- MicrosoftOffice2010Word-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2010Word-DFProperties-End -->

<!-- MicrosoftOffice2010Word-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2010Word |
| Friendly Name | Microsoft Word 2010 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2010Word-AdmxBacked-End -->

<!-- MicrosoftOffice2010Word-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2010Word-Examples-End -->

<!-- MicrosoftOffice2010Word-End -->

<!-- MicrosoftOffice2013Access-Begin -->
## MicrosoftOffice2013Access

<!-- MicrosoftOffice2013Access-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013Access-Applicability-End -->

<!-- MicrosoftOffice2013Access-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013Access
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013Access
```
<!-- MicrosoftOffice2013Access-OmaUri-End -->

<!-- MicrosoftOffice2013Access-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Access 2013.

By default, the user settings of Microsoft Access 2013 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Access 2013 from synchronization between computers.

- If you enable this policy setting, Microsoft Access 2013 user settings continue to synchronize.

- If you disable this policy setting, Microsoft Access 2013 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013Access-Description-End -->

<!-- MicrosoftOffice2013Access-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013Access-Editable-End -->

<!-- MicrosoftOffice2013Access-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013Access-DFProperties-End -->

<!-- MicrosoftOffice2013Access-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013Access |
| Friendly Name | Microsoft Access 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013Access-AdmxBacked-End -->

<!-- MicrosoftOffice2013Access-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013Access-Examples-End -->

<!-- MicrosoftOffice2013Access-End -->

<!-- MicrosoftOffice2013AccessBackup-Begin -->
## MicrosoftOffice2013AccessBackup

<!-- MicrosoftOffice2013AccessBackup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013AccessBackup-Applicability-End -->

<!-- MicrosoftOffice2013AccessBackup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013AccessBackup
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013AccessBackup
```
<!-- MicrosoftOffice2013AccessBackup-OmaUri-End -->

<!-- MicrosoftOffice2013AccessBackup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the backup of certain user settings for Microsoft Access 2013.

Microsoft Access 2013 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft Access 2013 settings.

- If you enable this policy setting, certain user settings of Microsoft Access 2013 will continue to be backed up.

- If you disable this policy setting, certain user settings of Microsoft Access 2013 won't be backed up.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013AccessBackup-Description-End -->

<!-- MicrosoftOffice2013AccessBackup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013AccessBackup-Editable-End -->

<!-- MicrosoftOffice2013AccessBackup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013AccessBackup-DFProperties-End -->

<!-- MicrosoftOffice2013AccessBackup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013AccessBackup |
| Friendly Name | Access 2013 backup only |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013AccessBackup-AdmxBacked-End -->

<!-- MicrosoftOffice2013AccessBackup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013AccessBackup-Examples-End -->

<!-- MicrosoftOffice2013AccessBackup-End -->

<!-- MicrosoftOffice2013Common-Begin -->
## MicrosoftOffice2013Common

<!-- MicrosoftOffice2013Common-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013Common-Applicability-End -->

<!-- MicrosoftOffice2013Common-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013Common
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013Common
```
<!-- MicrosoftOffice2013Common-OmaUri-End -->

<!-- MicrosoftOffice2013Common-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings which are common between the Microsoft Office Suite 2013 applications.

By default, the user settings which are common between the Microsoft Office Suite 2013 applications synchronize between computers. Use the policy setting to prevent the user settings which are common between the Microsoft Office Suite 2013 applications from synchronization between computers.

- If you enable this policy setting, the user settings which are common between the Microsoft Office Suite 2013 applications continue to synchronize.

- If you disable this policy setting, the user settings which are common between the Microsoft Office Suite 2013 applications are excluded from the synchronization settings. If any of the Microsoft Office Suite 2013 applications are enabled, this policy setting shouldn't be disabled.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013Common-Description-End -->

<!-- MicrosoftOffice2013Common-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013Common-Editable-End -->

<!-- MicrosoftOffice2013Common-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013Common-DFProperties-End -->

<!-- MicrosoftOffice2013Common-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013Common |
| Friendly Name | Microsoft Office 2013 Common Settings |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013Common-AdmxBacked-End -->

<!-- MicrosoftOffice2013Common-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013Common-Examples-End -->

<!-- MicrosoftOffice2013Common-End -->

<!-- MicrosoftOffice2013CommonBackup-Begin -->
## MicrosoftOffice2013CommonBackup

<!-- MicrosoftOffice2013CommonBackup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013CommonBackup-Applicability-End -->

<!-- MicrosoftOffice2013CommonBackup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013CommonBackup
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013CommonBackup
```
<!-- MicrosoftOffice2013CommonBackup-OmaUri-End -->

<!-- MicrosoftOffice2013CommonBackup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the backup of certain user settings which are common between the Microsoft Office Suite 2013 applications.

Microsoft Office Suite 2013 has user settings which are common between applications and are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific common Microsoft Office Suite 2013 applications.

- If you enable this policy setting, certain user settings which are common between the Microsoft Office Suite 2013 applications will continue to be backed up.

- If you disable this policy setting, certain user settings which are common between the Microsoft Office Suite 2013 applications won't be backed up.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013CommonBackup-Description-End -->

<!-- MicrosoftOffice2013CommonBackup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013CommonBackup-Editable-End -->

<!-- MicrosoftOffice2013CommonBackup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013CommonBackup-DFProperties-End -->

<!-- MicrosoftOffice2013CommonBackup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013CommonBackup |
| Friendly Name | Common 2013 backup only |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013CommonBackup-AdmxBacked-End -->

<!-- MicrosoftOffice2013CommonBackup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013CommonBackup-Examples-End -->

<!-- MicrosoftOffice2013CommonBackup-End -->

<!-- MicrosoftOffice2013Excel-Begin -->
## MicrosoftOffice2013Excel

<!-- MicrosoftOffice2013Excel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013Excel-Applicability-End -->

<!-- MicrosoftOffice2013Excel-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013Excel
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013Excel
```
<!-- MicrosoftOffice2013Excel-OmaUri-End -->

<!-- MicrosoftOffice2013Excel-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Excel 2013.

By default, the user settings of Microsoft Excel 2013 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Excel 2013 from synchronization between computers.

- If you enable this policy setting, Microsoft Excel 2013 user settings continue to synchronize.

- If you disable this policy setting, Microsoft Excel 2013 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013Excel-Description-End -->

<!-- MicrosoftOffice2013Excel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013Excel-Editable-End -->

<!-- MicrosoftOffice2013Excel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013Excel-DFProperties-End -->

<!-- MicrosoftOffice2013Excel-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013Excel |
| Friendly Name | Microsoft Excel 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013Excel-AdmxBacked-End -->

<!-- MicrosoftOffice2013Excel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013Excel-Examples-End -->

<!-- MicrosoftOffice2013Excel-End -->

<!-- MicrosoftOffice2013ExcelBackup-Begin -->
## MicrosoftOffice2013ExcelBackup

<!-- MicrosoftOffice2013ExcelBackup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013ExcelBackup-Applicability-End -->

<!-- MicrosoftOffice2013ExcelBackup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013ExcelBackup
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013ExcelBackup
```
<!-- MicrosoftOffice2013ExcelBackup-OmaUri-End -->

<!-- MicrosoftOffice2013ExcelBackup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the backup of certain user settings for Microsoft Excel 2013.

Microsoft Excel 2013 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft Excel 2013 settings.

- If you enable this policy setting, certain user settings of Microsoft Excel 2013 will continue to be backed up.

- If you disable this policy setting, certain user settings of Microsoft Excel 2013 won't be backed up.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013ExcelBackup-Description-End -->

<!-- MicrosoftOffice2013ExcelBackup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013ExcelBackup-Editable-End -->

<!-- MicrosoftOffice2013ExcelBackup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013ExcelBackup-DFProperties-End -->

<!-- MicrosoftOffice2013ExcelBackup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013ExcelBackup |
| Friendly Name | Excel 2013 backup only |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013ExcelBackup-AdmxBacked-End -->

<!-- MicrosoftOffice2013ExcelBackup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013ExcelBackup-Examples-End -->

<!-- MicrosoftOffice2013ExcelBackup-End -->

<!-- MicrosoftOffice2013InfoPath-Begin -->
## MicrosoftOffice2013InfoPath

<!-- MicrosoftOffice2013InfoPath-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013InfoPath-Applicability-End -->

<!-- MicrosoftOffice2013InfoPath-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013InfoPath
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013InfoPath
```
<!-- MicrosoftOffice2013InfoPath-OmaUri-End -->

<!-- MicrosoftOffice2013InfoPath-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft InfoPath 2013.

By default, the user settings of Microsoft InfoPath 2013 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft InfoPath 2013 from synchronization between computers.

- If you enable this policy setting, Microsoft InfoPath 2013 user settings continue to synchronize.

- If you disable this policy setting, Microsoft InfoPath 2013 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013InfoPath-Description-End -->

<!-- MicrosoftOffice2013InfoPath-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013InfoPath-Editable-End -->

<!-- MicrosoftOffice2013InfoPath-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013InfoPath-DFProperties-End -->

<!-- MicrosoftOffice2013InfoPath-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013InfoPath |
| Friendly Name | Microsoft InfoPath 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013InfoPath-AdmxBacked-End -->

<!-- MicrosoftOffice2013InfoPath-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013InfoPath-Examples-End -->

<!-- MicrosoftOffice2013InfoPath-End -->

<!-- MicrosoftOffice2013InfoPathBackup-Begin -->
## MicrosoftOffice2013InfoPathBackup

<!-- MicrosoftOffice2013InfoPathBackup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013InfoPathBackup-Applicability-End -->

<!-- MicrosoftOffice2013InfoPathBackup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013InfoPathBackup
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013InfoPathBackup
```
<!-- MicrosoftOffice2013InfoPathBackup-OmaUri-End -->

<!-- MicrosoftOffice2013InfoPathBackup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the backup of certain user settings for Microsoft InfoPath 2013.

Microsoft InfoPath 2013 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft InfoPath 2013 settings.

- If you enable this policy setting, certain user settings of Microsoft InfoPath 2013 will continue to be backed up.

- If you disable this policy setting, certain user settings of Microsoft InfoPath 2013 won't be backed up.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013InfoPathBackup-Description-End -->

<!-- MicrosoftOffice2013InfoPathBackup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013InfoPathBackup-Editable-End -->

<!-- MicrosoftOffice2013InfoPathBackup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013InfoPathBackup-DFProperties-End -->

<!-- MicrosoftOffice2013InfoPathBackup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013InfoPathBackup |
| Friendly Name | InfoPath 2013 backup only |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013InfoPathBackup-AdmxBacked-End -->

<!-- MicrosoftOffice2013InfoPathBackup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013InfoPathBackup-Examples-End -->

<!-- MicrosoftOffice2013InfoPathBackup-End -->

<!-- MicrosoftOffice2013Lync-Begin -->
## MicrosoftOffice2013Lync

<!-- MicrosoftOffice2013Lync-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013Lync-Applicability-End -->

<!-- MicrosoftOffice2013Lync-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013Lync
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013Lync
```
<!-- MicrosoftOffice2013Lync-OmaUri-End -->

<!-- MicrosoftOffice2013Lync-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Lync 2013.

By default, the user settings of Microsoft Lync 2013 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Lync 2013 from synchronization between computers.

- If you enable this policy setting, Microsoft Lync 2013 user settings continue to synchronize.

- If you disable this policy setting, Microsoft Lync 2013 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013Lync-Description-End -->

<!-- MicrosoftOffice2013Lync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013Lync-Editable-End -->

<!-- MicrosoftOffice2013Lync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013Lync-DFProperties-End -->

<!-- MicrosoftOffice2013Lync-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013Lync |
| Friendly Name | Microsoft Lync 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013Lync-AdmxBacked-End -->

<!-- MicrosoftOffice2013Lync-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013Lync-Examples-End -->

<!-- MicrosoftOffice2013Lync-End -->

<!-- MicrosoftOffice2013LyncBackup-Begin -->
## MicrosoftOffice2013LyncBackup

<!-- MicrosoftOffice2013LyncBackup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013LyncBackup-Applicability-End -->

<!-- MicrosoftOffice2013LyncBackup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013LyncBackup
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013LyncBackup
```
<!-- MicrosoftOffice2013LyncBackup-OmaUri-End -->

<!-- MicrosoftOffice2013LyncBackup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the backup of certain user settings for Microsoft Lync 2013.

Microsoft Lync 2013 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft Lync 2013 settings.

- If you enable this policy setting, certain user settings of Microsoft Lync 2013 will continue to be backed up.

- If you disable this policy setting, certain user settings of Microsoft Lync 2013 won't be backed up.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013LyncBackup-Description-End -->

<!-- MicrosoftOffice2013LyncBackup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013LyncBackup-Editable-End -->

<!-- MicrosoftOffice2013LyncBackup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013LyncBackup-DFProperties-End -->

<!-- MicrosoftOffice2013LyncBackup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013LyncBackup |
| Friendly Name | Lync 2013 backup only |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013LyncBackup-AdmxBacked-End -->

<!-- MicrosoftOffice2013LyncBackup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013LyncBackup-Examples-End -->

<!-- MicrosoftOffice2013LyncBackup-End -->

<!-- MicrosoftOffice2013OneDriveForBusiness-Begin -->
## MicrosoftOffice2013OneDriveForBusiness

<!-- MicrosoftOffice2013OneDriveForBusiness-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013OneDriveForBusiness-Applicability-End -->

<!-- MicrosoftOffice2013OneDriveForBusiness-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013OneDriveForBusiness
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013OneDriveForBusiness
```
<!-- MicrosoftOffice2013OneDriveForBusiness-OmaUri-End -->

<!-- MicrosoftOffice2013OneDriveForBusiness-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for OneDrive for Business 2013.

By default, the user settings of OneDrive for Business 2013 synchronize between computers. Use the policy setting to prevent the user settings of OneDrive for Business 2013 from synchronization between computers.

- If you enable this policy setting, OneDrive for Business 2013 user settings continue to synchronize.

- If you disable this policy setting, OneDrive for Business 2013 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013OneDriveForBusiness-Description-End -->

<!-- MicrosoftOffice2013OneDriveForBusiness-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013OneDriveForBusiness-Editable-End -->

<!-- MicrosoftOffice2013OneDriveForBusiness-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013OneDriveForBusiness-DFProperties-End -->

<!-- MicrosoftOffice2013OneDriveForBusiness-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013OneDriveForBusiness |
| Friendly Name | Microsoft OneDrive for Business 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013OneDriveForBusiness-AdmxBacked-End -->

<!-- MicrosoftOffice2013OneDriveForBusiness-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013OneDriveForBusiness-Examples-End -->

<!-- MicrosoftOffice2013OneDriveForBusiness-End -->

<!-- MicrosoftOffice2013OneNote-Begin -->
## MicrosoftOffice2013OneNote

<!-- MicrosoftOffice2013OneNote-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013OneNote-Applicability-End -->

<!-- MicrosoftOffice2013OneNote-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013OneNote
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013OneNote
```
<!-- MicrosoftOffice2013OneNote-OmaUri-End -->

<!-- MicrosoftOffice2013OneNote-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft OneNote 2013.

By default, the user settings of Microsoft OneNote 2013 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft OneNote 2013 from synchronization between computers.

- If you enable this policy setting, Microsoft OneNote 2013 user settings continue to synchronize.

- If you disable this policy setting, Microsoft OneNote 2013 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013OneNote-Description-End -->

<!-- MicrosoftOffice2013OneNote-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013OneNote-Editable-End -->

<!-- MicrosoftOffice2013OneNote-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013OneNote-DFProperties-End -->

<!-- MicrosoftOffice2013OneNote-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013OneNote |
| Friendly Name | Microsoft OneNote 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013OneNote-AdmxBacked-End -->

<!-- MicrosoftOffice2013OneNote-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013OneNote-Examples-End -->

<!-- MicrosoftOffice2013OneNote-End -->

<!-- MicrosoftOffice2013OneNoteBackup-Begin -->
## MicrosoftOffice2013OneNoteBackup

<!-- MicrosoftOffice2013OneNoteBackup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013OneNoteBackup-Applicability-End -->

<!-- MicrosoftOffice2013OneNoteBackup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013OneNoteBackup
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013OneNoteBackup
```
<!-- MicrosoftOffice2013OneNoteBackup-OmaUri-End -->

<!-- MicrosoftOffice2013OneNoteBackup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the backup of certain user settings for Microsoft OneNote 2013.

Microsoft OneNote 2013 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft OneNote 2013 settings.

- If you enable this policy setting, certain user settings of Microsoft OneNote 2013 will continue to be backed up.

- If you disable this policy setting, certain user settings of Microsoft OneNote 2013 won't be backed up.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013OneNoteBackup-Description-End -->

<!-- MicrosoftOffice2013OneNoteBackup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013OneNoteBackup-Editable-End -->

<!-- MicrosoftOffice2013OneNoteBackup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013OneNoteBackup-DFProperties-End -->

<!-- MicrosoftOffice2013OneNoteBackup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013OneNoteBackup |
| Friendly Name | OneNote 2013 backup only |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013OneNoteBackup-AdmxBacked-End -->

<!-- MicrosoftOffice2013OneNoteBackup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013OneNoteBackup-Examples-End -->

<!-- MicrosoftOffice2013OneNoteBackup-End -->

<!-- MicrosoftOffice2013Outlook-Begin -->
## MicrosoftOffice2013Outlook

<!-- MicrosoftOffice2013Outlook-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013Outlook-Applicability-End -->

<!-- MicrosoftOffice2013Outlook-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013Outlook
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013Outlook
```
<!-- MicrosoftOffice2013Outlook-OmaUri-End -->

<!-- MicrosoftOffice2013Outlook-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Outlook 2013.

By default, the user settings of Microsoft Outlook 2013 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Outlook 2013 from synchronization between computers.

- If you enable this policy setting, Microsoft Outlook 2013 user settings continue to synchronize.

- If you disable this policy setting, Microsoft Outlook 2013 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013Outlook-Description-End -->

<!-- MicrosoftOffice2013Outlook-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013Outlook-Editable-End -->

<!-- MicrosoftOffice2013Outlook-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013Outlook-DFProperties-End -->

<!-- MicrosoftOffice2013Outlook-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013Outlook |
| Friendly Name | Microsoft Outlook 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013Outlook-AdmxBacked-End -->

<!-- MicrosoftOffice2013Outlook-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013Outlook-Examples-End -->

<!-- MicrosoftOffice2013Outlook-End -->

<!-- MicrosoftOffice2013OutlookBackup-Begin -->
## MicrosoftOffice2013OutlookBackup

<!-- MicrosoftOffice2013OutlookBackup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013OutlookBackup-Applicability-End -->

<!-- MicrosoftOffice2013OutlookBackup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013OutlookBackup
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013OutlookBackup
```
<!-- MicrosoftOffice2013OutlookBackup-OmaUri-End -->

<!-- MicrosoftOffice2013OutlookBackup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the backup of certain user settings for Microsoft Outlook 2013.

Microsoft Outlook 2013 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft Outlook 2013 settings.

- If you enable this policy setting, certain user settings of Microsoft Outlook 2013 will continue to be backed up.

- If you disable this policy setting, certain user settings of Microsoft Outlook 2013 won't be backed up.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013OutlookBackup-Description-End -->

<!-- MicrosoftOffice2013OutlookBackup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013OutlookBackup-Editable-End -->

<!-- MicrosoftOffice2013OutlookBackup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013OutlookBackup-DFProperties-End -->

<!-- MicrosoftOffice2013OutlookBackup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013OutlookBackup |
| Friendly Name | Outlook 2013 backup only |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013OutlookBackup-AdmxBacked-End -->

<!-- MicrosoftOffice2013OutlookBackup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013OutlookBackup-Examples-End -->

<!-- MicrosoftOffice2013OutlookBackup-End -->

<!-- MicrosoftOffice2013PowerPoint-Begin -->
## MicrosoftOffice2013PowerPoint

<!-- MicrosoftOffice2013PowerPoint-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013PowerPoint-Applicability-End -->

<!-- MicrosoftOffice2013PowerPoint-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013PowerPoint
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013PowerPoint
```
<!-- MicrosoftOffice2013PowerPoint-OmaUri-End -->

<!-- MicrosoftOffice2013PowerPoint-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft PowerPoint 2013.

By default, the user settings of Microsoft PowerPoint 2013 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft PowerPoint 2013 from synchronization between computers.

- If you enable this policy setting, Microsoft PowerPoint 2013 user settings continue to synchronize.

- If you disable this policy setting, Microsoft PowerPoint 2013 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013PowerPoint-Description-End -->

<!-- MicrosoftOffice2013PowerPoint-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013PowerPoint-Editable-End -->

<!-- MicrosoftOffice2013PowerPoint-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013PowerPoint-DFProperties-End -->

<!-- MicrosoftOffice2013PowerPoint-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013PowerPoint |
| Friendly Name | Microsoft PowerPoint 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013PowerPoint-AdmxBacked-End -->

<!-- MicrosoftOffice2013PowerPoint-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013PowerPoint-Examples-End -->

<!-- MicrosoftOffice2013PowerPoint-End -->

<!-- MicrosoftOffice2013PowerPointBackup-Begin -->
## MicrosoftOffice2013PowerPointBackup

<!-- MicrosoftOffice2013PowerPointBackup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013PowerPointBackup-Applicability-End -->

<!-- MicrosoftOffice2013PowerPointBackup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013PowerPointBackup
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013PowerPointBackup
```
<!-- MicrosoftOffice2013PowerPointBackup-OmaUri-End -->

<!-- MicrosoftOffice2013PowerPointBackup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the backup of certain user settings for Microsoft PowerPoint 2013.

Microsoft PowerPoint 2013 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft PowerPoint 2013 settings.

- If you enable this policy setting, certain user settings of Microsoft PowerPoint 2013 will continue to be backed up.

- If you disable this policy setting, certain user settings of Microsoft PowerPoint 2013 won't be backed up.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013PowerPointBackup-Description-End -->

<!-- MicrosoftOffice2013PowerPointBackup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013PowerPointBackup-Editable-End -->

<!-- MicrosoftOffice2013PowerPointBackup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013PowerPointBackup-DFProperties-End -->

<!-- MicrosoftOffice2013PowerPointBackup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013PowerPointBackup |
| Friendly Name | PowerPoint 2013 backup only |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013PowerPointBackup-AdmxBacked-End -->

<!-- MicrosoftOffice2013PowerPointBackup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013PowerPointBackup-Examples-End -->

<!-- MicrosoftOffice2013PowerPointBackup-End -->

<!-- MicrosoftOffice2013Project-Begin -->
## MicrosoftOffice2013Project

<!-- MicrosoftOffice2013Project-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013Project-Applicability-End -->

<!-- MicrosoftOffice2013Project-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013Project
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013Project
```
<!-- MicrosoftOffice2013Project-OmaUri-End -->

<!-- MicrosoftOffice2013Project-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Project 2013.

By default, the user settings of Microsoft Project 2013 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Project 2013 from synchronization between computers.

- If you enable this policy setting, Microsoft Project 2013 user settings continue to synchronize.

- If you disable this policy setting, Microsoft Project 2013 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013Project-Description-End -->

<!-- MicrosoftOffice2013Project-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013Project-Editable-End -->

<!-- MicrosoftOffice2013Project-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013Project-DFProperties-End -->

<!-- MicrosoftOffice2013Project-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013Project |
| Friendly Name | Microsoft Project 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013Project-AdmxBacked-End -->

<!-- MicrosoftOffice2013Project-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013Project-Examples-End -->

<!-- MicrosoftOffice2013Project-End -->

<!-- MicrosoftOffice2013ProjectBackup-Begin -->
## MicrosoftOffice2013ProjectBackup

<!-- MicrosoftOffice2013ProjectBackup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013ProjectBackup-Applicability-End -->

<!-- MicrosoftOffice2013ProjectBackup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013ProjectBackup
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013ProjectBackup
```
<!-- MicrosoftOffice2013ProjectBackup-OmaUri-End -->

<!-- MicrosoftOffice2013ProjectBackup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the backup of certain user settings for Microsoft Project 2013.

Microsoft Project 2013 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft Project 2013 settings.

- If you enable this policy setting, certain user settings of Microsoft Project 2013 will continue to be backed up.

- If you disable this policy setting, certain user settings of Microsoft Project 2013 won't be backed up.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013ProjectBackup-Description-End -->

<!-- MicrosoftOffice2013ProjectBackup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013ProjectBackup-Editable-End -->

<!-- MicrosoftOffice2013ProjectBackup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013ProjectBackup-DFProperties-End -->

<!-- MicrosoftOffice2013ProjectBackup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013ProjectBackup |
| Friendly Name | Project 2013 backup only |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013ProjectBackup-AdmxBacked-End -->

<!-- MicrosoftOffice2013ProjectBackup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013ProjectBackup-Examples-End -->

<!-- MicrosoftOffice2013ProjectBackup-End -->

<!-- MicrosoftOffice2013Publisher-Begin -->
## MicrosoftOffice2013Publisher

<!-- MicrosoftOffice2013Publisher-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013Publisher-Applicability-End -->

<!-- MicrosoftOffice2013Publisher-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013Publisher
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013Publisher
```
<!-- MicrosoftOffice2013Publisher-OmaUri-End -->

<!-- MicrosoftOffice2013Publisher-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Publisher 2013.

By default, the user settings of Microsoft Publisher 2013 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Publisher 2013 from synchronization between computers.

- If you enable this policy setting, Microsoft Publisher 2013 user settings continue to synchronize.

- If you disable this policy setting, Microsoft Publisher 2013 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013Publisher-Description-End -->

<!-- MicrosoftOffice2013Publisher-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013Publisher-Editable-End -->

<!-- MicrosoftOffice2013Publisher-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013Publisher-DFProperties-End -->

<!-- MicrosoftOffice2013Publisher-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013Publisher |
| Friendly Name | Microsoft Publisher 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013Publisher-AdmxBacked-End -->

<!-- MicrosoftOffice2013Publisher-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013Publisher-Examples-End -->

<!-- MicrosoftOffice2013Publisher-End -->

<!-- MicrosoftOffice2013PublisherBackup-Begin -->
## MicrosoftOffice2013PublisherBackup

<!-- MicrosoftOffice2013PublisherBackup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013PublisherBackup-Applicability-End -->

<!-- MicrosoftOffice2013PublisherBackup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013PublisherBackup
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013PublisherBackup
```
<!-- MicrosoftOffice2013PublisherBackup-OmaUri-End -->

<!-- MicrosoftOffice2013PublisherBackup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the backup of certain user settings for Microsoft Publisher 2013.

Microsoft Publisher 2013 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft Publisher 2013 settings.

- If you enable this policy setting, certain user settings of Microsoft Publisher 2013 will continue to be backed up.

- If you disable this policy setting, certain user settings of Microsoft Publisher 2013 won't be backed up.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013PublisherBackup-Description-End -->

<!-- MicrosoftOffice2013PublisherBackup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013PublisherBackup-Editable-End -->

<!-- MicrosoftOffice2013PublisherBackup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013PublisherBackup-DFProperties-End -->

<!-- MicrosoftOffice2013PublisherBackup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013PublisherBackup |
| Friendly Name | Publisher 2013 backup only |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013PublisherBackup-AdmxBacked-End -->

<!-- MicrosoftOffice2013PublisherBackup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013PublisherBackup-Examples-End -->

<!-- MicrosoftOffice2013PublisherBackup-End -->

<!-- MicrosoftOffice2013SharePointDesigner-Begin -->
## MicrosoftOffice2013SharePointDesigner

<!-- MicrosoftOffice2013SharePointDesigner-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013SharePointDesigner-Applicability-End -->

<!-- MicrosoftOffice2013SharePointDesigner-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013SharePointDesigner
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013SharePointDesigner
```
<!-- MicrosoftOffice2013SharePointDesigner-OmaUri-End -->

<!-- MicrosoftOffice2013SharePointDesigner-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft SharePoint Designer 2013.

By default, the user settings of Microsoft SharePoint Designer 2013 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft SharePoint Designer 2013 from synchronization between computers.

- If you enable this policy setting, Microsoft SharePoint Designer 2013 user settings continue to synchronize.

- If you disable this policy setting, Microsoft SharePoint Designer 2013 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013SharePointDesigner-Description-End -->

<!-- MicrosoftOffice2013SharePointDesigner-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013SharePointDesigner-Editable-End -->

<!-- MicrosoftOffice2013SharePointDesigner-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013SharePointDesigner-DFProperties-End -->

<!-- MicrosoftOffice2013SharePointDesigner-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013SharePointDesigner |
| Friendly Name | Microsoft SharePoint Designer 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013SharePointDesigner-AdmxBacked-End -->

<!-- MicrosoftOffice2013SharePointDesigner-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013SharePointDesigner-Examples-End -->

<!-- MicrosoftOffice2013SharePointDesigner-End -->

<!-- MicrosoftOffice2013SharePointDesignerBackup-Begin -->
## MicrosoftOffice2013SharePointDesignerBackup

<!-- MicrosoftOffice2013SharePointDesignerBackup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013SharePointDesignerBackup-Applicability-End -->

<!-- MicrosoftOffice2013SharePointDesignerBackup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013SharePointDesignerBackup
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013SharePointDesignerBackup
```
<!-- MicrosoftOffice2013SharePointDesignerBackup-OmaUri-End -->

<!-- MicrosoftOffice2013SharePointDesignerBackup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the backup of certain user settings for Microsoft SharePoint Designer 2013.

Microsoft SharePoint Designer 2013 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft SharePoint Designer 2013 settings.

- If you enable this policy setting, certain user settings of Microsoft SharePoint Designer 2013 will continue to be backed up.

- If you disable this policy setting, certain user settings of Microsoft SharePoint Designer 2013 won't be backed up.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013SharePointDesignerBackup-Description-End -->

<!-- MicrosoftOffice2013SharePointDesignerBackup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013SharePointDesignerBackup-Editable-End -->

<!-- MicrosoftOffice2013SharePointDesignerBackup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013SharePointDesignerBackup-DFProperties-End -->

<!-- MicrosoftOffice2013SharePointDesignerBackup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013SharePointDesignerBackup |
| Friendly Name | SharePoint Designer 2013 backup only |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013SharePointDesignerBackup-AdmxBacked-End -->

<!-- MicrosoftOffice2013SharePointDesignerBackup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013SharePointDesignerBackup-Examples-End -->

<!-- MicrosoftOffice2013SharePointDesignerBackup-End -->

<!-- MicrosoftOffice2013UploadCenter-Begin -->
## MicrosoftOffice2013UploadCenter

<!-- MicrosoftOffice2013UploadCenter-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013UploadCenter-Applicability-End -->

<!-- MicrosoftOffice2013UploadCenter-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013UploadCenter
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013UploadCenter
```
<!-- MicrosoftOffice2013UploadCenter-OmaUri-End -->

<!-- MicrosoftOffice2013UploadCenter-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Office 2013 Upload Center.

By default, the user settings of Microsoft Office 2013 Upload Center synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Office 2013 Upload Center from synchronization between computers.

- If you enable this policy setting, Microsoft Office 2013 Upload Center user settings continue to synchronize.

- If you disable this policy setting, Microsoft Office 2013 Upload Center user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013UploadCenter-Description-End -->

<!-- MicrosoftOffice2013UploadCenter-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013UploadCenter-Editable-End -->

<!-- MicrosoftOffice2013UploadCenter-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013UploadCenter-DFProperties-End -->

<!-- MicrosoftOffice2013UploadCenter-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013UploadCenter |
| Friendly Name | Microsoft Office 2013 Upload Center |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013UploadCenter-AdmxBacked-End -->

<!-- MicrosoftOffice2013UploadCenter-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013UploadCenter-Examples-End -->

<!-- MicrosoftOffice2013UploadCenter-End -->

<!-- MicrosoftOffice2013Visio-Begin -->
## MicrosoftOffice2013Visio

<!-- MicrosoftOffice2013Visio-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013Visio-Applicability-End -->

<!-- MicrosoftOffice2013Visio-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013Visio
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013Visio
```
<!-- MicrosoftOffice2013Visio-OmaUri-End -->

<!-- MicrosoftOffice2013Visio-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Visio 2013.

By default, the user settings of Microsoft Visio 2013 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Visio 2013 from synchronization between computers.

- If you enable this policy setting, Microsoft Visio 2013 user settings continue to synchronize.

- If you disable this policy setting, Microsoft Visio 2013 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013Visio-Description-End -->

<!-- MicrosoftOffice2013Visio-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013Visio-Editable-End -->

<!-- MicrosoftOffice2013Visio-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013Visio-DFProperties-End -->

<!-- MicrosoftOffice2013Visio-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013Visio |
| Friendly Name | Microsoft Visio 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013Visio-AdmxBacked-End -->

<!-- MicrosoftOffice2013Visio-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013Visio-Examples-End -->

<!-- MicrosoftOffice2013Visio-End -->

<!-- MicrosoftOffice2013VisioBackup-Begin -->
## MicrosoftOffice2013VisioBackup

<!-- MicrosoftOffice2013VisioBackup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013VisioBackup-Applicability-End -->

<!-- MicrosoftOffice2013VisioBackup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013VisioBackup
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013VisioBackup
```
<!-- MicrosoftOffice2013VisioBackup-OmaUri-End -->

<!-- MicrosoftOffice2013VisioBackup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the backup of certain user settings for Microsoft Visio 2013.

Microsoft Visio 2013 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft Visio 2013 settings.

- If you enable this policy setting, certain user settings of Microsoft Visio 2013 will continue to be backed up.

- If you disable this policy setting, certain user settings of Microsoft Visio 2013 won't be backed up.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013VisioBackup-Description-End -->

<!-- MicrosoftOffice2013VisioBackup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013VisioBackup-Editable-End -->

<!-- MicrosoftOffice2013VisioBackup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013VisioBackup-DFProperties-End -->

<!-- MicrosoftOffice2013VisioBackup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013VisioBackup |
| Friendly Name | Visio 2013 backup only |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013VisioBackup-AdmxBacked-End -->

<!-- MicrosoftOffice2013VisioBackup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013VisioBackup-Examples-End -->

<!-- MicrosoftOffice2013VisioBackup-End -->

<!-- MicrosoftOffice2013Word-Begin -->
## MicrosoftOffice2013Word

<!-- MicrosoftOffice2013Word-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013Word-Applicability-End -->

<!-- MicrosoftOffice2013Word-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013Word
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013Word
```
<!-- MicrosoftOffice2013Word-OmaUri-End -->

<!-- MicrosoftOffice2013Word-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Word 2013.

By default, the user settings of Microsoft Word 2013 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Word 2013 from synchronization between computers.

- If you enable this policy setting, Microsoft Word 2013 user settings continue to synchronize.

- If you disable this policy setting, Microsoft Word 2013 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013Word-Description-End -->

<!-- MicrosoftOffice2013Word-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013Word-Editable-End -->

<!-- MicrosoftOffice2013Word-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013Word-DFProperties-End -->

<!-- MicrosoftOffice2013Word-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013Word |
| Friendly Name | Microsoft Word 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013Word-AdmxBacked-End -->

<!-- MicrosoftOffice2013Word-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013Word-Examples-End -->

<!-- MicrosoftOffice2013Word-End -->

<!-- MicrosoftOffice2013WordBackup-Begin -->
## MicrosoftOffice2013WordBackup

<!-- MicrosoftOffice2013WordBackup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2013WordBackup-Applicability-End -->

<!-- MicrosoftOffice2013WordBackup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013WordBackup
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2013WordBackup
```
<!-- MicrosoftOffice2013WordBackup-OmaUri-End -->

<!-- MicrosoftOffice2013WordBackup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the backup of certain user settings for Microsoft Word 2013.

Microsoft Word 2013 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft Word 2013 settings.

- If you enable this policy setting, certain user settings of Microsoft Word 2013 will continue to be backed up.

- If you disable this policy setting, certain user settings of Microsoft Word 2013 won't be backed up.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2013WordBackup-Description-End -->

<!-- MicrosoftOffice2013WordBackup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2013WordBackup-Editable-End -->

<!-- MicrosoftOffice2013WordBackup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2013WordBackup-DFProperties-End -->

<!-- MicrosoftOffice2013WordBackup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2013WordBackup |
| Friendly Name | Word 2013 backup only |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2013WordBackup-AdmxBacked-End -->

<!-- MicrosoftOffice2013WordBackup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2013WordBackup-Examples-End -->

<!-- MicrosoftOffice2013WordBackup-End -->

<!-- MicrosoftOffice2016Access-Begin -->
## MicrosoftOffice2016Access

<!-- MicrosoftOffice2016Access-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2016Access-Applicability-End -->

<!-- MicrosoftOffice2016Access-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016Access
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016Access
```
<!-- MicrosoftOffice2016Access-OmaUri-End -->

<!-- MicrosoftOffice2016Access-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Access 2016.

By default, the user settings of Microsoft Access 2016 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Access 2016 from synchronization between computers.

- If you enable this policy setting, Microsoft Access 2016 user settings continue to synchronize.

- If you disable this policy setting, Microsoft Access 2016 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2016Access-Description-End -->

<!-- MicrosoftOffice2016Access-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2016Access-Editable-End -->

<!-- MicrosoftOffice2016Access-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2016Access-DFProperties-End -->

<!-- MicrosoftOffice2016Access-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2016Access |
| Friendly Name | Microsoft Access 2016 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2016Access-AdmxBacked-End -->

<!-- MicrosoftOffice2016Access-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2016Access-Examples-End -->

<!-- MicrosoftOffice2016Access-End -->

<!-- MicrosoftOffice2016AccessBackup-Begin -->
## MicrosoftOffice2016AccessBackup

<!-- MicrosoftOffice2016AccessBackup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2016AccessBackup-Applicability-End -->

<!-- MicrosoftOffice2016AccessBackup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016AccessBackup
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016AccessBackup
```
<!-- MicrosoftOffice2016AccessBackup-OmaUri-End -->

<!-- MicrosoftOffice2016AccessBackup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the backup of certain user settings for Microsoft Access 2016.

Microsoft Access 2016 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft Access 2016 settings.

- If you enable this policy setting, certain user settings of Microsoft Access 2016 will continue to be backed up.

- If you disable this policy setting, certain user settings of Microsoft Access 2016 won't be backed up.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2016AccessBackup-Description-End -->

<!-- MicrosoftOffice2016AccessBackup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2016AccessBackup-Editable-End -->

<!-- MicrosoftOffice2016AccessBackup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2016AccessBackup-DFProperties-End -->

<!-- MicrosoftOffice2016AccessBackup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2016AccessBackup |
| Friendly Name | Access 2016 backup only |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2016AccessBackup-AdmxBacked-End -->

<!-- MicrosoftOffice2016AccessBackup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2016AccessBackup-Examples-End -->

<!-- MicrosoftOffice2016AccessBackup-End -->

<!-- MicrosoftOffice2016Common-Begin -->
## MicrosoftOffice2016Common

<!-- MicrosoftOffice2016Common-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2016Common-Applicability-End -->

<!-- MicrosoftOffice2016Common-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016Common
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016Common
```
<!-- MicrosoftOffice2016Common-OmaUri-End -->

<!-- MicrosoftOffice2016Common-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings which are common between the Microsoft Office Suite 2016 applications.

By default, the user settings which are common between the Microsoft Office Suite 2016 applications synchronize between computers. Use the policy setting to prevent the user settings which are common between the Microsoft Office Suite 2016 applications from synchronization between computers.

- If you enable this policy setting, the user settings which are common between the Microsoft Office Suite 2016 applications continue to synchronize.

- If you disable this policy setting, the user settings which are common between the Microsoft Office Suite 2016 applications are excluded from the synchronization settings. If any of the Microsoft Office Suite 2016 applications are enabled, this policy setting shouldn't be disabled.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2016Common-Description-End -->

<!-- MicrosoftOffice2016Common-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2016Common-Editable-End -->

<!-- MicrosoftOffice2016Common-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2016Common-DFProperties-End -->

<!-- MicrosoftOffice2016Common-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2016Common |
| Friendly Name | Microsoft Office 2016 Common Settings |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2016Common-AdmxBacked-End -->

<!-- MicrosoftOffice2016Common-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2016Common-Examples-End -->

<!-- MicrosoftOffice2016Common-End -->

<!-- MicrosoftOffice2016CommonBackup-Begin -->
## MicrosoftOffice2016CommonBackup

<!-- MicrosoftOffice2016CommonBackup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2016CommonBackup-Applicability-End -->

<!-- MicrosoftOffice2016CommonBackup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016CommonBackup
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016CommonBackup
```
<!-- MicrosoftOffice2016CommonBackup-OmaUri-End -->

<!-- MicrosoftOffice2016CommonBackup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the backup of certain user settings which are common between the Microsoft Office Suite 2016 applications.

Microsoft Office Suite 2016 has user settings which are common between applications and are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific common Microsoft Office Suite 2016 applications.

- If you enable this policy setting, certain user settings which are common between the Microsoft Office Suite 2016 applications will continue to be backed up.

- If you disable this policy setting, certain user settings which are common between the Microsoft Office Suite 2016 applications won't be backed up.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2016CommonBackup-Description-End -->

<!-- MicrosoftOffice2016CommonBackup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2016CommonBackup-Editable-End -->

<!-- MicrosoftOffice2016CommonBackup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2016CommonBackup-DFProperties-End -->

<!-- MicrosoftOffice2016CommonBackup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2016CommonBackup |
| Friendly Name | Common 2016 backup only |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2016CommonBackup-AdmxBacked-End -->

<!-- MicrosoftOffice2016CommonBackup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2016CommonBackup-Examples-End -->

<!-- MicrosoftOffice2016CommonBackup-End -->

<!-- MicrosoftOffice2016Excel-Begin -->
## MicrosoftOffice2016Excel

<!-- MicrosoftOffice2016Excel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2016Excel-Applicability-End -->

<!-- MicrosoftOffice2016Excel-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016Excel
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016Excel
```
<!-- MicrosoftOffice2016Excel-OmaUri-End -->

<!-- MicrosoftOffice2016Excel-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Excel 2016.

By default, the user settings of Microsoft Excel 2016 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Excel 2016 from synchronization between computers.

- If you enable this policy setting, Microsoft Excel 2016 user settings continue to synchronize.

- If you disable this policy setting, Microsoft Excel 2016 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2016Excel-Description-End -->

<!-- MicrosoftOffice2016Excel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2016Excel-Editable-End -->

<!-- MicrosoftOffice2016Excel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2016Excel-DFProperties-End -->

<!-- MicrosoftOffice2016Excel-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2016Excel |
| Friendly Name | Microsoft Excel 2016 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2016Excel-AdmxBacked-End -->

<!-- MicrosoftOffice2016Excel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2016Excel-Examples-End -->

<!-- MicrosoftOffice2016Excel-End -->

<!-- MicrosoftOffice2016ExcelBackup-Begin -->
## MicrosoftOffice2016ExcelBackup

<!-- MicrosoftOffice2016ExcelBackup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2016ExcelBackup-Applicability-End -->

<!-- MicrosoftOffice2016ExcelBackup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016ExcelBackup
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016ExcelBackup
```
<!-- MicrosoftOffice2016ExcelBackup-OmaUri-End -->

<!-- MicrosoftOffice2016ExcelBackup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the backup of certain user settings for Microsoft Excel 2016.

Microsoft Excel 2016 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft Excel 2016 settings.

- If you enable this policy setting, certain user settings of Microsoft Excel 2016 will continue to be backed up.

- If you disable this policy setting, certain user settings of Microsoft Excel 2016 won't be backed up.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2016ExcelBackup-Description-End -->

<!-- MicrosoftOffice2016ExcelBackup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2016ExcelBackup-Editable-End -->

<!-- MicrosoftOffice2016ExcelBackup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2016ExcelBackup-DFProperties-End -->

<!-- MicrosoftOffice2016ExcelBackup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2016ExcelBackup |
| Friendly Name | Excel 2016 backup only |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2016ExcelBackup-AdmxBacked-End -->

<!-- MicrosoftOffice2016ExcelBackup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2016ExcelBackup-Examples-End -->

<!-- MicrosoftOffice2016ExcelBackup-End -->

<!-- MicrosoftOffice2016Lync-Begin -->
## MicrosoftOffice2016Lync

<!-- MicrosoftOffice2016Lync-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2016Lync-Applicability-End -->

<!-- MicrosoftOffice2016Lync-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016Lync
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016Lync
```
<!-- MicrosoftOffice2016Lync-OmaUri-End -->

<!-- MicrosoftOffice2016Lync-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Lync 2016.

By default, the user settings of Microsoft Lync 2016 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Lync 2016 from synchronization between computers.

- If you enable this policy setting, Microsoft Lync 2016 user settings continue to synchronize.

- If you disable this policy setting, Microsoft Lync 2016 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2016Lync-Description-End -->

<!-- MicrosoftOffice2016Lync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2016Lync-Editable-End -->

<!-- MicrosoftOffice2016Lync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2016Lync-DFProperties-End -->

<!-- MicrosoftOffice2016Lync-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2016Lync |
| Friendly Name | Microsoft Lync 2016 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2016Lync-AdmxBacked-End -->

<!-- MicrosoftOffice2016Lync-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2016Lync-Examples-End -->

<!-- MicrosoftOffice2016Lync-End -->

<!-- MicrosoftOffice2016LyncBackup-Begin -->
## MicrosoftOffice2016LyncBackup

<!-- MicrosoftOffice2016LyncBackup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2016LyncBackup-Applicability-End -->

<!-- MicrosoftOffice2016LyncBackup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016LyncBackup
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016LyncBackup
```
<!-- MicrosoftOffice2016LyncBackup-OmaUri-End -->

<!-- MicrosoftOffice2016LyncBackup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the backup of certain user settings for Microsoft Lync 2016.

Microsoft Lync 2016 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft Lync 2016 settings.

- If you enable this policy setting, certain user settings of Microsoft Lync 2016 will continue to be backed up.

- If you disable this policy setting, certain user settings of Microsoft Lync 2016 won't be backed up.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2016LyncBackup-Description-End -->

<!-- MicrosoftOffice2016LyncBackup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2016LyncBackup-Editable-End -->

<!-- MicrosoftOffice2016LyncBackup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2016LyncBackup-DFProperties-End -->

<!-- MicrosoftOffice2016LyncBackup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2016LyncBackup |
| Friendly Name | Lync 2016 backup only |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2016LyncBackup-AdmxBacked-End -->

<!-- MicrosoftOffice2016LyncBackup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2016LyncBackup-Examples-End -->

<!-- MicrosoftOffice2016LyncBackup-End -->

<!-- MicrosoftOffice2016OneDriveForBusiness-Begin -->
## MicrosoftOffice2016OneDriveForBusiness

<!-- MicrosoftOffice2016OneDriveForBusiness-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2016OneDriveForBusiness-Applicability-End -->

<!-- MicrosoftOffice2016OneDriveForBusiness-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016OneDriveForBusiness
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016OneDriveForBusiness
```
<!-- MicrosoftOffice2016OneDriveForBusiness-OmaUri-End -->

<!-- MicrosoftOffice2016OneDriveForBusiness-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for OneDrive for Business 2016.

By default, the user settings of OneDrive for Business 2016 synchronize between computers. Use the policy setting to prevent the user settings of OneDrive for Business 2016 from synchronization between computers.

- If you enable this policy setting, OneDrive for Business 2016 user settings continue to synchronize.

- If you disable this policy setting, OneDrive for Business 2016 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2016OneDriveForBusiness-Description-End -->

<!-- MicrosoftOffice2016OneDriveForBusiness-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2016OneDriveForBusiness-Editable-End -->

<!-- MicrosoftOffice2016OneDriveForBusiness-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2016OneDriveForBusiness-DFProperties-End -->

<!-- MicrosoftOffice2016OneDriveForBusiness-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2016OneDriveForBusiness |
| Friendly Name | Microsoft OneDrive for Business 2016 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2016OneDriveForBusiness-AdmxBacked-End -->

<!-- MicrosoftOffice2016OneDriveForBusiness-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2016OneDriveForBusiness-Examples-End -->

<!-- MicrosoftOffice2016OneDriveForBusiness-End -->

<!-- MicrosoftOffice2016OneNote-Begin -->
## MicrosoftOffice2016OneNote

<!-- MicrosoftOffice2016OneNote-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2016OneNote-Applicability-End -->

<!-- MicrosoftOffice2016OneNote-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016OneNote
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016OneNote
```
<!-- MicrosoftOffice2016OneNote-OmaUri-End -->

<!-- MicrosoftOffice2016OneNote-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft OneNote 2016.

By default, the user settings of Microsoft OneNote 2016 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft OneNote 2016 from synchronization between computers.

- If you enable this policy setting, Microsoft OneNote 2016 user settings continue to synchronize.

- If you disable this policy setting, Microsoft OneNote 2016 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2016OneNote-Description-End -->

<!-- MicrosoftOffice2016OneNote-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2016OneNote-Editable-End -->

<!-- MicrosoftOffice2016OneNote-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2016OneNote-DFProperties-End -->

<!-- MicrosoftOffice2016OneNote-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2016OneNote |
| Friendly Name | Microsoft OneNote 2016 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2016OneNote-AdmxBacked-End -->

<!-- MicrosoftOffice2016OneNote-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2016OneNote-Examples-End -->

<!-- MicrosoftOffice2016OneNote-End -->

<!-- MicrosoftOffice2016OneNoteBackup-Begin -->
## MicrosoftOffice2016OneNoteBackup

<!-- MicrosoftOffice2016OneNoteBackup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2016OneNoteBackup-Applicability-End -->

<!-- MicrosoftOffice2016OneNoteBackup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016OneNoteBackup
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016OneNoteBackup
```
<!-- MicrosoftOffice2016OneNoteBackup-OmaUri-End -->

<!-- MicrosoftOffice2016OneNoteBackup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the backup of certain user settings for Microsoft OneNote 2016.

Microsoft OneNote 2016 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft OneNote 2016 settings.

- If you enable this policy setting, certain user settings of Microsoft OneNote 2016 will continue to be backed up.

- If you disable this policy setting, certain user settings of Microsoft OneNote 2016 won't be backed up.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2016OneNoteBackup-Description-End -->

<!-- MicrosoftOffice2016OneNoteBackup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2016OneNoteBackup-Editable-End -->

<!-- MicrosoftOffice2016OneNoteBackup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2016OneNoteBackup-DFProperties-End -->

<!-- MicrosoftOffice2016OneNoteBackup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2016OneNoteBackup |
| Friendly Name | OneNote 2016 backup only |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2016OneNoteBackup-AdmxBacked-End -->

<!-- MicrosoftOffice2016OneNoteBackup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2016OneNoteBackup-Examples-End -->

<!-- MicrosoftOffice2016OneNoteBackup-End -->

<!-- MicrosoftOffice2016Outlook-Begin -->
## MicrosoftOffice2016Outlook

<!-- MicrosoftOffice2016Outlook-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2016Outlook-Applicability-End -->

<!-- MicrosoftOffice2016Outlook-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016Outlook
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016Outlook
```
<!-- MicrosoftOffice2016Outlook-OmaUri-End -->

<!-- MicrosoftOffice2016Outlook-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Outlook 2016.

By default, the user settings of Microsoft Outlook 2016 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Outlook 2016 from synchronization between computers.

- If you enable this policy setting, Microsoft Outlook 2016 user settings continue to synchronize.

- If you disable this policy setting, Microsoft Outlook 2016 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2016Outlook-Description-End -->

<!-- MicrosoftOffice2016Outlook-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2016Outlook-Editable-End -->

<!-- MicrosoftOffice2016Outlook-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2016Outlook-DFProperties-End -->

<!-- MicrosoftOffice2016Outlook-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2016Outlook |
| Friendly Name | Microsoft Outlook 2016 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2016Outlook-AdmxBacked-End -->

<!-- MicrosoftOffice2016Outlook-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2016Outlook-Examples-End -->

<!-- MicrosoftOffice2016Outlook-End -->

<!-- MicrosoftOffice2016OutlookBackup-Begin -->
## MicrosoftOffice2016OutlookBackup

<!-- MicrosoftOffice2016OutlookBackup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2016OutlookBackup-Applicability-End -->

<!-- MicrosoftOffice2016OutlookBackup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016OutlookBackup
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016OutlookBackup
```
<!-- MicrosoftOffice2016OutlookBackup-OmaUri-End -->

<!-- MicrosoftOffice2016OutlookBackup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the backup of certain user settings for Microsoft Outlook 2016.

Microsoft Outlook 2016 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft Outlook 2016 settings.

- If you enable this policy setting, certain user settings of Microsoft Outlook 2016 will continue to be backed up.

- If you disable this policy setting, certain user settings of Microsoft Outlook 2016 won't be backed up.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2016OutlookBackup-Description-End -->

<!-- MicrosoftOffice2016OutlookBackup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2016OutlookBackup-Editable-End -->

<!-- MicrosoftOffice2016OutlookBackup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2016OutlookBackup-DFProperties-End -->

<!-- MicrosoftOffice2016OutlookBackup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2016OutlookBackup |
| Friendly Name | Outlook 2016 backup only |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2016OutlookBackup-AdmxBacked-End -->

<!-- MicrosoftOffice2016OutlookBackup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2016OutlookBackup-Examples-End -->

<!-- MicrosoftOffice2016OutlookBackup-End -->

<!-- MicrosoftOffice2016PowerPoint-Begin -->
## MicrosoftOffice2016PowerPoint

<!-- MicrosoftOffice2016PowerPoint-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2016PowerPoint-Applicability-End -->

<!-- MicrosoftOffice2016PowerPoint-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016PowerPoint
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016PowerPoint
```
<!-- MicrosoftOffice2016PowerPoint-OmaUri-End -->

<!-- MicrosoftOffice2016PowerPoint-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft PowerPoint 2016.

By default, the user settings of Microsoft PowerPoint 2016 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft PowerPoint 2016 from synchronization between computers.

- If you enable this policy setting, Microsoft PowerPoint 2016 user settings continue to synchronize.

- If you disable this policy setting, Microsoft PowerPoint 2016 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2016PowerPoint-Description-End -->

<!-- MicrosoftOffice2016PowerPoint-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2016PowerPoint-Editable-End -->

<!-- MicrosoftOffice2016PowerPoint-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2016PowerPoint-DFProperties-End -->

<!-- MicrosoftOffice2016PowerPoint-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2016PowerPoint |
| Friendly Name | Microsoft PowerPoint 2016 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2016PowerPoint-AdmxBacked-End -->

<!-- MicrosoftOffice2016PowerPoint-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2016PowerPoint-Examples-End -->

<!-- MicrosoftOffice2016PowerPoint-End -->

<!-- MicrosoftOffice2016PowerPointBackup-Begin -->
## MicrosoftOffice2016PowerPointBackup

<!-- MicrosoftOffice2016PowerPointBackup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2016PowerPointBackup-Applicability-End -->

<!-- MicrosoftOffice2016PowerPointBackup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016PowerPointBackup
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016PowerPointBackup
```
<!-- MicrosoftOffice2016PowerPointBackup-OmaUri-End -->

<!-- MicrosoftOffice2016PowerPointBackup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the backup of certain user settings for Microsoft PowerPoint 2016.

Microsoft PowerPoint 2016 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft PowerPoint 2016 settings.

- If you enable this policy setting, certain user settings of Microsoft PowerPoint 2016 will continue to be backed up.

- If you disable this policy setting, certain user settings of Microsoft PowerPoint 2016 won't be backed up.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2016PowerPointBackup-Description-End -->

<!-- MicrosoftOffice2016PowerPointBackup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2016PowerPointBackup-Editable-End -->

<!-- MicrosoftOffice2016PowerPointBackup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2016PowerPointBackup-DFProperties-End -->

<!-- MicrosoftOffice2016PowerPointBackup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2016PowerPointBackup |
| Friendly Name | PowerPoint 2016 backup only |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2016PowerPointBackup-AdmxBacked-End -->

<!-- MicrosoftOffice2016PowerPointBackup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2016PowerPointBackup-Examples-End -->

<!-- MicrosoftOffice2016PowerPointBackup-End -->

<!-- MicrosoftOffice2016Project-Begin -->
## MicrosoftOffice2016Project

<!-- MicrosoftOffice2016Project-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2016Project-Applicability-End -->

<!-- MicrosoftOffice2016Project-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016Project
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016Project
```
<!-- MicrosoftOffice2016Project-OmaUri-End -->

<!-- MicrosoftOffice2016Project-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Project 2016.

By default, the user settings of Microsoft Project 2016 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Project 2016 from synchronization between computers.

- If you enable this policy setting, Microsoft Project 2016 user settings continue to synchronize.

- If you disable this policy setting, Microsoft Project 2016 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2016Project-Description-End -->

<!-- MicrosoftOffice2016Project-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2016Project-Editable-End -->

<!-- MicrosoftOffice2016Project-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2016Project-DFProperties-End -->

<!-- MicrosoftOffice2016Project-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2016Project |
| Friendly Name | Microsoft Project 2016 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2016Project-AdmxBacked-End -->

<!-- MicrosoftOffice2016Project-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2016Project-Examples-End -->

<!-- MicrosoftOffice2016Project-End -->

<!-- MicrosoftOffice2016ProjectBackup-Begin -->
## MicrosoftOffice2016ProjectBackup

<!-- MicrosoftOffice2016ProjectBackup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2016ProjectBackup-Applicability-End -->

<!-- MicrosoftOffice2016ProjectBackup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016ProjectBackup
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016ProjectBackup
```
<!-- MicrosoftOffice2016ProjectBackup-OmaUri-End -->

<!-- MicrosoftOffice2016ProjectBackup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the backup of certain user settings for Microsoft Project 2016.

Microsoft Project 2016 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft Project 2016 settings.

- If you enable this policy setting, certain user settings of Microsoft Project 2016 will continue to be backed up.

- If you disable this policy setting, certain user settings of Microsoft Project 2016 won't be backed up.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2016ProjectBackup-Description-End -->

<!-- MicrosoftOffice2016ProjectBackup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2016ProjectBackup-Editable-End -->

<!-- MicrosoftOffice2016ProjectBackup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2016ProjectBackup-DFProperties-End -->

<!-- MicrosoftOffice2016ProjectBackup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2016ProjectBackup |
| Friendly Name | Project 2016 backup only |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2016ProjectBackup-AdmxBacked-End -->

<!-- MicrosoftOffice2016ProjectBackup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2016ProjectBackup-Examples-End -->

<!-- MicrosoftOffice2016ProjectBackup-End -->

<!-- MicrosoftOffice2016Publisher-Begin -->
## MicrosoftOffice2016Publisher

<!-- MicrosoftOffice2016Publisher-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2016Publisher-Applicability-End -->

<!-- MicrosoftOffice2016Publisher-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016Publisher
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016Publisher
```
<!-- MicrosoftOffice2016Publisher-OmaUri-End -->

<!-- MicrosoftOffice2016Publisher-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Publisher 2016.

By default, the user settings of Microsoft Publisher 2016 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Publisher 2016 from synchronization between computers.

- If you enable this policy setting, Microsoft Publisher 2016 user settings continue to synchronize.

- If you disable this policy setting, Microsoft Publisher 2016 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2016Publisher-Description-End -->

<!-- MicrosoftOffice2016Publisher-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2016Publisher-Editable-End -->

<!-- MicrosoftOffice2016Publisher-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2016Publisher-DFProperties-End -->

<!-- MicrosoftOffice2016Publisher-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2016Publisher |
| Friendly Name | Microsoft Publisher 2016 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2016Publisher-AdmxBacked-End -->

<!-- MicrosoftOffice2016Publisher-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2016Publisher-Examples-End -->

<!-- MicrosoftOffice2016Publisher-End -->

<!-- MicrosoftOffice2016PublisherBackup-Begin -->
## MicrosoftOffice2016PublisherBackup

<!-- MicrosoftOffice2016PublisherBackup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2016PublisherBackup-Applicability-End -->

<!-- MicrosoftOffice2016PublisherBackup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016PublisherBackup
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016PublisherBackup
```
<!-- MicrosoftOffice2016PublisherBackup-OmaUri-End -->

<!-- MicrosoftOffice2016PublisherBackup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the backup of certain user settings for Microsoft Publisher 2016.

Microsoft Publisher 2016 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft Publisher 2016 settings.

- If you enable this policy setting, certain user settings of Microsoft Publisher 2016 will continue to be backed up.

- If you disable this policy setting, certain user settings of Microsoft Publisher 2016 won't be backed up.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2016PublisherBackup-Description-End -->

<!-- MicrosoftOffice2016PublisherBackup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2016PublisherBackup-Editable-End -->

<!-- MicrosoftOffice2016PublisherBackup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2016PublisherBackup-DFProperties-End -->

<!-- MicrosoftOffice2016PublisherBackup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2016PublisherBackup |
| Friendly Name | Publisher 2016 backup only |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2016PublisherBackup-AdmxBacked-End -->

<!-- MicrosoftOffice2016PublisherBackup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2016PublisherBackup-Examples-End -->

<!-- MicrosoftOffice2016PublisherBackup-End -->

<!-- MicrosoftOffice2016UploadCenter-Begin -->
## MicrosoftOffice2016UploadCenter

<!-- MicrosoftOffice2016UploadCenter-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2016UploadCenter-Applicability-End -->

<!-- MicrosoftOffice2016UploadCenter-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016UploadCenter
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016UploadCenter
```
<!-- MicrosoftOffice2016UploadCenter-OmaUri-End -->

<!-- MicrosoftOffice2016UploadCenter-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Office 2016 Upload Center.

By default, the user settings of Microsoft Office 2016 Upload Center synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Office 2016 Upload Center from synchronization between computers.

- If you enable this policy setting, Microsoft Office 2016 Upload Center user settings continue to synchronize.

- If you disable this policy setting, Microsoft Office 2016 Upload Center user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2016UploadCenter-Description-End -->

<!-- MicrosoftOffice2016UploadCenter-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2016UploadCenter-Editable-End -->

<!-- MicrosoftOffice2016UploadCenter-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2016UploadCenter-DFProperties-End -->

<!-- MicrosoftOffice2016UploadCenter-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2016UploadCenter |
| Friendly Name | Microsoft Office 2016 Upload Center |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2016UploadCenter-AdmxBacked-End -->

<!-- MicrosoftOffice2016UploadCenter-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2016UploadCenter-Examples-End -->

<!-- MicrosoftOffice2016UploadCenter-End -->

<!-- MicrosoftOffice2016Visio-Begin -->
## MicrosoftOffice2016Visio

<!-- MicrosoftOffice2016Visio-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2016Visio-Applicability-End -->

<!-- MicrosoftOffice2016Visio-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016Visio
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016Visio
```
<!-- MicrosoftOffice2016Visio-OmaUri-End -->

<!-- MicrosoftOffice2016Visio-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Visio 2016.

By default, the user settings of Microsoft Visio 2016 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Visio 2016 from synchronization between computers.

- If you enable this policy setting, Microsoft Visio 2016 user settings continue to synchronize.

- If you disable this policy setting, Microsoft Visio 2016 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2016Visio-Description-End -->

<!-- MicrosoftOffice2016Visio-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2016Visio-Editable-End -->

<!-- MicrosoftOffice2016Visio-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2016Visio-DFProperties-End -->

<!-- MicrosoftOffice2016Visio-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2016Visio |
| Friendly Name | Microsoft Visio 2016 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2016Visio-AdmxBacked-End -->

<!-- MicrosoftOffice2016Visio-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2016Visio-Examples-End -->

<!-- MicrosoftOffice2016Visio-End -->

<!-- MicrosoftOffice2016VisioBackup-Begin -->
## MicrosoftOffice2016VisioBackup

<!-- MicrosoftOffice2016VisioBackup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2016VisioBackup-Applicability-End -->

<!-- MicrosoftOffice2016VisioBackup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016VisioBackup
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016VisioBackup
```
<!-- MicrosoftOffice2016VisioBackup-OmaUri-End -->

<!-- MicrosoftOffice2016VisioBackup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the backup of certain user settings for Microsoft Visio 2016.

Microsoft Visio 2016 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft Visio 2016 settings.

- If you enable this policy setting, certain user settings of Microsoft Visio 2016 will continue to be backed up.

- If you disable this policy setting, certain user settings of Microsoft Visio 2016 won't be backed up.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2016VisioBackup-Description-End -->

<!-- MicrosoftOffice2016VisioBackup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2016VisioBackup-Editable-End -->

<!-- MicrosoftOffice2016VisioBackup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2016VisioBackup-DFProperties-End -->

<!-- MicrosoftOffice2016VisioBackup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2016VisioBackup |
| Friendly Name | Visio 2016 backup only |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2016VisioBackup-AdmxBacked-End -->

<!-- MicrosoftOffice2016VisioBackup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2016VisioBackup-Examples-End -->

<!-- MicrosoftOffice2016VisioBackup-End -->

<!-- MicrosoftOffice2016Word-Begin -->
## MicrosoftOffice2016Word

<!-- MicrosoftOffice2016Word-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2016Word-Applicability-End -->

<!-- MicrosoftOffice2016Word-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016Word
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016Word
```
<!-- MicrosoftOffice2016Word-OmaUri-End -->

<!-- MicrosoftOffice2016Word-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Word 2016.

By default, the user settings of Microsoft Word 2016 synchronize between computers. Use the policy setting to prevent the user settings of Microsoft Word 2016 from synchronization between computers.

- If you enable this policy setting, Microsoft Word 2016 user settings continue to synchronize.

- If you disable this policy setting, Microsoft Word 2016 user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2016Word-Description-End -->

<!-- MicrosoftOffice2016Word-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2016Word-Editable-End -->

<!-- MicrosoftOffice2016Word-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2016Word-DFProperties-End -->

<!-- MicrosoftOffice2016Word-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2016Word |
| Friendly Name | Microsoft Word 2016 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2016Word-AdmxBacked-End -->

<!-- MicrosoftOffice2016Word-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2016Word-Examples-End -->

<!-- MicrosoftOffice2016Word-End -->

<!-- MicrosoftOffice2016WordBackup-Begin -->
## MicrosoftOffice2016WordBackup

<!-- MicrosoftOffice2016WordBackup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice2016WordBackup-Applicability-End -->

<!-- MicrosoftOffice2016WordBackup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016WordBackup
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice2016WordBackup
```
<!-- MicrosoftOffice2016WordBackup-OmaUri-End -->

<!-- MicrosoftOffice2016WordBackup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the backup of certain user settings for Microsoft Word 2016.

Microsoft Word 2016 has user settings that are backed up instead of synchronizing between computers. Use the policy setting to suppress the backup of specific Microsoft Word 2016 settings.

- If you enable this policy setting, certain user settings of Microsoft Word 2016 will continue to be backed up.

- If you disable this policy setting, certain user settings of Microsoft Word 2016 won't be backed up.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice2016WordBackup-Description-End -->

<!-- MicrosoftOffice2016WordBackup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice2016WordBackup-Editable-End -->

<!-- MicrosoftOffice2016WordBackup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice2016WordBackup-DFProperties-End -->

<!-- MicrosoftOffice2016WordBackup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice2016WordBackup |
| Friendly Name | Word 2016 backup only |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice2016WordBackup-AdmxBacked-End -->

<!-- MicrosoftOffice2016WordBackup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice2016WordBackup-Examples-End -->

<!-- MicrosoftOffice2016WordBackup-End -->

<!-- MicrosoftOffice365Access2013-Begin -->
## MicrosoftOffice365Access2013

<!-- MicrosoftOffice365Access2013-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice365Access2013-Applicability-End -->

<!-- MicrosoftOffice365Access2013-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Access2013
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Access2013
```
<!-- MicrosoftOffice365Access2013-OmaUri-End -->

<!-- MicrosoftOffice365Access2013-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Office 365 Access 2013.

Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings of Microsoft Office 365 Access 2013 will synchronize between a user's work computers with UE-V by default. Use this policy setting to prevent the user settings of Microsoft Office 365 Access 2013 from synchronization between computers with UE-V.

- If you enable this policy setting, Microsoft Office 365 Access 2013 user settings continue to sync with UE-V.

- If you disable this policy setting, Microsoft Office 365 Access 2013 user settings are excluded from synchronization with UE-V.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice365Access2013-Description-End -->

<!-- MicrosoftOffice365Access2013-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice365Access2013-Editable-End -->

<!-- MicrosoftOffice365Access2013-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice365Access2013-DFProperties-End -->

<!-- MicrosoftOffice365Access2013-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice365Access2013 |
| Friendly Name | Microsoft Office 365 Access 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice365Access2013-AdmxBacked-End -->

<!-- MicrosoftOffice365Access2013-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice365Access2013-Examples-End -->

<!-- MicrosoftOffice365Access2013-End -->

<!-- MicrosoftOffice365Access2016-Begin -->
## MicrosoftOffice365Access2016

<!-- MicrosoftOffice365Access2016-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice365Access2016-Applicability-End -->

<!-- MicrosoftOffice365Access2016-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Access2016
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Access2016
```
<!-- MicrosoftOffice365Access2016-OmaUri-End -->

<!-- MicrosoftOffice365Access2016-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Office 365 Access 2016.

Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings of Microsoft Office 365 Access 2016 will synchronize between a user's work computers with UE-V by default. Use this policy setting to prevent the user settings of Microsoft Office 365 Access 2016 from synchronization between computers with UE-V.

- If you enable this policy setting, Microsoft Office 365 Access 2016 user settings continue to sync with UE-V.

- If you disable this policy setting, Microsoft Office 365 Access 2016 user settings are excluded from synchronization with UE-V.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice365Access2016-Description-End -->

<!-- MicrosoftOffice365Access2016-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice365Access2016-Editable-End -->

<!-- MicrosoftOffice365Access2016-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice365Access2016-DFProperties-End -->

<!-- MicrosoftOffice365Access2016-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice365Access2016 |
| Friendly Name | Microsoft Office 365 Access 2016 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice365Access2016-AdmxBacked-End -->

<!-- MicrosoftOffice365Access2016-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice365Access2016-Examples-End -->

<!-- MicrosoftOffice365Access2016-End -->

<!-- MicrosoftOffice365Common2013-Begin -->
## MicrosoftOffice365Common2013

<!-- MicrosoftOffice365Common2013-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice365Common2013-Applicability-End -->

<!-- MicrosoftOffice365Common2013-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Common2013
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Common2013
```
<!-- MicrosoftOffice365Common2013-OmaUri-End -->

<!-- MicrosoftOffice365Common2013-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings which are common between the Microsoft Office Suite 2013 applications.

Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings which are common between the Microsoft Office Suite 2013 applications will synchronize between a user's work computers with UE-V by default. Use this policy setting to prevent the user settings which are common between the Microsoft Office Suite 2013 applications from synchronization between computers with UE-V.

- If you enable this policy setting, user settings which are common between the Microsoft Office Suite 2013 applications continue to synchronize with UE-V.

- If you disable this policy setting, user settings which are common between the Microsoft Office Suite 2013 applications are excluded from synchronization with UE-V.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice365Common2013-Description-End -->

<!-- MicrosoftOffice365Common2013-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice365Common2013-Editable-End -->

<!-- MicrosoftOffice365Common2013-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice365Common2013-DFProperties-End -->

<!-- MicrosoftOffice365Common2013-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice365Common2013 |
| Friendly Name | Microsoft Office 365 Common 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice365Common2013-AdmxBacked-End -->

<!-- MicrosoftOffice365Common2013-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice365Common2013-Examples-End -->

<!-- MicrosoftOffice365Common2013-End -->

<!-- MicrosoftOffice365Common2016-Begin -->
## MicrosoftOffice365Common2016

<!-- MicrosoftOffice365Common2016-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice365Common2016-Applicability-End -->

<!-- MicrosoftOffice365Common2016-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Common2016
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Common2016
```
<!-- MicrosoftOffice365Common2016-OmaUri-End -->

<!-- MicrosoftOffice365Common2016-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings which are common between the Microsoft Office Suite 2016 applications.

Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings which are common between the Microsoft Office Suite 2016 applications will synchronize between a user's work computers with UE-V by default. Use this policy setting to prevent the user settings which are common between the Microsoft Office Suite 2016 applications from synchronization between computers with UE-V.

- If you enable this policy setting, user settings which are common between the Microsoft Office Suite 2016 applications continue to synchronize with UE-V.

- If you disable this policy setting, user settings which are common between the Microsoft Office Suite 2016 applications are excluded from synchronization with UE-V.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice365Common2016-Description-End -->

<!-- MicrosoftOffice365Common2016-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice365Common2016-Editable-End -->

<!-- MicrosoftOffice365Common2016-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice365Common2016-DFProperties-End -->

<!-- MicrosoftOffice365Common2016-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice365Common2016 |
| Friendly Name | Microsoft Office 365 Common 2016 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice365Common2016-AdmxBacked-End -->

<!-- MicrosoftOffice365Common2016-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice365Common2016-Examples-End -->

<!-- MicrosoftOffice365Common2016-End -->

<!-- MicrosoftOffice365Excel2013-Begin -->
## MicrosoftOffice365Excel2013

<!-- MicrosoftOffice365Excel2013-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice365Excel2013-Applicability-End -->

<!-- MicrosoftOffice365Excel2013-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Excel2013
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Excel2013
```
<!-- MicrosoftOffice365Excel2013-OmaUri-End -->

<!-- MicrosoftOffice365Excel2013-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Office 365 Excel 2013.

Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings of Microsoft Office 365 Excel 2013 will synchronize between a user's work computers with UE-V by default. Use this policy setting to prevent the user settings of Microsoft Office 365 Excel 2013 from synchronization between computers with UE-V.

- If you enable this policy setting, Microsoft Office 365 Excel 2013 user settings continue to sync with UE-V.

- If you disable this policy setting, Microsoft Office 365 Excel 2013 user settings are excluded from synchronization with UE-V.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice365Excel2013-Description-End -->

<!-- MicrosoftOffice365Excel2013-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice365Excel2013-Editable-End -->

<!-- MicrosoftOffice365Excel2013-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice365Excel2013-DFProperties-End -->

<!-- MicrosoftOffice365Excel2013-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice365Excel2013 |
| Friendly Name | Microsoft Office 365 Excel 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice365Excel2013-AdmxBacked-End -->

<!-- MicrosoftOffice365Excel2013-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice365Excel2013-Examples-End -->

<!-- MicrosoftOffice365Excel2013-End -->

<!-- MicrosoftOffice365Excel2016-Begin -->
## MicrosoftOffice365Excel2016

<!-- MicrosoftOffice365Excel2016-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice365Excel2016-Applicability-End -->

<!-- MicrosoftOffice365Excel2016-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Excel2016
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Excel2016
```
<!-- MicrosoftOffice365Excel2016-OmaUri-End -->

<!-- MicrosoftOffice365Excel2016-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Office 365 Excel 2016.

Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings of Microsoft Office 365 Excel 2016 will synchronize between a user's work computers with UE-V by default. Use this policy setting to prevent the user settings of Microsoft Office 365 Excel 2016 from synchronization between computers with UE-V.

- If you enable this policy setting, Microsoft Office 365 Excel 2016 user settings continue to sync with UE-V.

- If you disable this policy setting, Microsoft Office 365 Excel 2016 user settings are excluded from synchronization with UE-V.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice365Excel2016-Description-End -->

<!-- MicrosoftOffice365Excel2016-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice365Excel2016-Editable-End -->

<!-- MicrosoftOffice365Excel2016-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice365Excel2016-DFProperties-End -->

<!-- MicrosoftOffice365Excel2016-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice365Excel2016 |
| Friendly Name | Microsoft Office 365 Excel 2016 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice365Excel2016-AdmxBacked-End -->

<!-- MicrosoftOffice365Excel2016-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice365Excel2016-Examples-End -->

<!-- MicrosoftOffice365Excel2016-End -->

<!-- MicrosoftOffice365InfoPath2013-Begin -->
## MicrosoftOffice365InfoPath2013

<!-- MicrosoftOffice365InfoPath2013-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice365InfoPath2013-Applicability-End -->

<!-- MicrosoftOffice365InfoPath2013-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365InfoPath2013
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365InfoPath2013
```
<!-- MicrosoftOffice365InfoPath2013-OmaUri-End -->

<!-- MicrosoftOffice365InfoPath2013-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Office 365 InfoPath 2013.

Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings of Microsoft Office 365 InfoPath 2013 will synchronize between a user's work computers with UE-V by default. Use this policy setting to prevent the user settings of Microsoft Office 365 InfoPath 2013 from synchronization between computers with UE-V.

- If you enable this policy setting, Microsoft Office 365 InfoPath 2013 user settings continue to sync with UE-V.

- If you disable this policy setting, Microsoft Office 365 InfoPath 2013 user settings are excluded from synchronization with UE-V.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice365InfoPath2013-Description-End -->

<!-- MicrosoftOffice365InfoPath2013-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice365InfoPath2013-Editable-End -->

<!-- MicrosoftOffice365InfoPath2013-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice365InfoPath2013-DFProperties-End -->

<!-- MicrosoftOffice365InfoPath2013-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice365InfoPath2013 |
| Friendly Name | Microsoft Office 365 InfoPath 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice365InfoPath2013-AdmxBacked-End -->

<!-- MicrosoftOffice365InfoPath2013-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice365InfoPath2013-Examples-End -->

<!-- MicrosoftOffice365InfoPath2013-End -->

<!-- MicrosoftOffice365Lync2013-Begin -->
## MicrosoftOffice365Lync2013

<!-- MicrosoftOffice365Lync2013-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice365Lync2013-Applicability-End -->

<!-- MicrosoftOffice365Lync2013-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Lync2013
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Lync2013
```
<!-- MicrosoftOffice365Lync2013-OmaUri-End -->

<!-- MicrosoftOffice365Lync2013-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Office 365 Lync 2013.

Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings of Microsoft Office 365 Lync 2013 will synchronize between a user's work computers with UE-V by default. Use this policy setting to prevent the user settings of Microsoft Office 365 Lync 2013 from synchronization between computers with UE-V.

- If you enable this policy setting, Microsoft Office 365 Lync 2013 user settings continue to sync with UE-V.

- If you disable this policy setting, Microsoft Office 365 Lync 2013 user settings are excluded from synchronization with UE-V.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice365Lync2013-Description-End -->

<!-- MicrosoftOffice365Lync2013-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice365Lync2013-Editable-End -->

<!-- MicrosoftOffice365Lync2013-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice365Lync2013-DFProperties-End -->

<!-- MicrosoftOffice365Lync2013-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice365Lync2013 |
| Friendly Name | Microsoft Office 365 Lync 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice365Lync2013-AdmxBacked-End -->

<!-- MicrosoftOffice365Lync2013-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice365Lync2013-Examples-End -->

<!-- MicrosoftOffice365Lync2013-End -->

<!-- MicrosoftOffice365Lync2016-Begin -->
## MicrosoftOffice365Lync2016

<!-- MicrosoftOffice365Lync2016-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice365Lync2016-Applicability-End -->

<!-- MicrosoftOffice365Lync2016-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Lync2016
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Lync2016
```
<!-- MicrosoftOffice365Lync2016-OmaUri-End -->

<!-- MicrosoftOffice365Lync2016-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Office 365 Lync 2016.

Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings of Microsoft Office 365 Lync 2016 will synchronize between a user's work computers with UE-V by default. Use this policy setting to prevent the user settings of Microsoft Office 365 Lync 2016 from synchronization between computers with UE-V.

- If you enable this policy setting, Microsoft Office 365 Lync 2016 user settings continue to sync with UE-V.

- If you disable this policy setting, Microsoft Office 365 Lync 2016 user settings are excluded from synchronization with UE-V.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice365Lync2016-Description-End -->

<!-- MicrosoftOffice365Lync2016-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice365Lync2016-Editable-End -->

<!-- MicrosoftOffice365Lync2016-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice365Lync2016-DFProperties-End -->

<!-- MicrosoftOffice365Lync2016-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice365Lync2016 |
| Friendly Name | Microsoft Office 365 Lync 2016 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice365Lync2016-AdmxBacked-End -->

<!-- MicrosoftOffice365Lync2016-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice365Lync2016-Examples-End -->

<!-- MicrosoftOffice365Lync2016-End -->

<!-- MicrosoftOffice365OneNote2013-Begin -->
## MicrosoftOffice365OneNote2013

<!-- MicrosoftOffice365OneNote2013-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice365OneNote2013-Applicability-End -->

<!-- MicrosoftOffice365OneNote2013-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365OneNote2013
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365OneNote2013
```
<!-- MicrosoftOffice365OneNote2013-OmaUri-End -->

<!-- MicrosoftOffice365OneNote2013-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Office 365 OneNote 2013.

Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings of Microsoft Office 365 OneNote 2013 will synchronize between a user's work computers with UE-V by default. Use this policy setting to prevent the user settings of Microsoft Office 365 OneNote 2013 from synchronization between computers with UE-V.

- If you enable this policy setting, Microsoft Office 365 OneNote 2013 user settings continue to sync with UE-V.

- If you disable this policy setting, Microsoft Office 365 OneNote 2013 user settings are excluded from synchronization with UE-V.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice365OneNote2013-Description-End -->

<!-- MicrosoftOffice365OneNote2013-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice365OneNote2013-Editable-End -->

<!-- MicrosoftOffice365OneNote2013-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice365OneNote2013-DFProperties-End -->

<!-- MicrosoftOffice365OneNote2013-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice365OneNote2013 |
| Friendly Name | Microsoft Office 365 OneNote 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice365OneNote2013-AdmxBacked-End -->

<!-- MicrosoftOffice365OneNote2013-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice365OneNote2013-Examples-End -->

<!-- MicrosoftOffice365OneNote2013-End -->

<!-- MicrosoftOffice365OneNote2016-Begin -->
## MicrosoftOffice365OneNote2016

<!-- MicrosoftOffice365OneNote2016-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice365OneNote2016-Applicability-End -->

<!-- MicrosoftOffice365OneNote2016-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365OneNote2016
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365OneNote2016
```
<!-- MicrosoftOffice365OneNote2016-OmaUri-End -->

<!-- MicrosoftOffice365OneNote2016-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Office 365 OneNote 2016.

Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings of Microsoft Office 365 OneNote 2016 will synchronize between a user's work computers with UE-V by default. Use this policy setting to prevent the user settings of Microsoft Office 365 OneNote 2016 from synchronization between computers with UE-V.

- If you enable this policy setting, Microsoft Office 365 OneNote 2016 user settings continue to sync with UE-V.

- If you disable this policy setting, Microsoft Office 365 OneNote 2016 user settings are excluded from synchronization with UE-V.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice365OneNote2016-Description-End -->

<!-- MicrosoftOffice365OneNote2016-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice365OneNote2016-Editable-End -->

<!-- MicrosoftOffice365OneNote2016-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice365OneNote2016-DFProperties-End -->

<!-- MicrosoftOffice365OneNote2016-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice365OneNote2016 |
| Friendly Name | Microsoft Office 365 OneNote 2016 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice365OneNote2016-AdmxBacked-End -->

<!-- MicrosoftOffice365OneNote2016-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice365OneNote2016-Examples-End -->

<!-- MicrosoftOffice365OneNote2016-End -->

<!-- MicrosoftOffice365Outlook2013-Begin -->
## MicrosoftOffice365Outlook2013

<!-- MicrosoftOffice365Outlook2013-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice365Outlook2013-Applicability-End -->

<!-- MicrosoftOffice365Outlook2013-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Outlook2013
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Outlook2013
```
<!-- MicrosoftOffice365Outlook2013-OmaUri-End -->

<!-- MicrosoftOffice365Outlook2013-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Office 365 Outlook 2013.

Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings of Microsoft Office 365 Outlook 2013 will synchronize between a user's work computers with UE-V by default. Use this policy setting to prevent the user settings of Microsoft Office 365 Outlook 2013 from synchronization between computers with UE-V.

- If you enable this policy setting, Microsoft Office 365 Outlook 2013 user settings continue to sync with UE-V.

- If you disable this policy setting, Microsoft Office 365 Outlook 2013 user settings are excluded from synchronization with UE-V.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice365Outlook2013-Description-End -->

<!-- MicrosoftOffice365Outlook2013-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice365Outlook2013-Editable-End -->

<!-- MicrosoftOffice365Outlook2013-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice365Outlook2013-DFProperties-End -->

<!-- MicrosoftOffice365Outlook2013-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice365Outlook2013 |
| Friendly Name | Microsoft Office 365 Outlook 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice365Outlook2013-AdmxBacked-End -->

<!-- MicrosoftOffice365Outlook2013-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice365Outlook2013-Examples-End -->

<!-- MicrosoftOffice365Outlook2013-End -->

<!-- MicrosoftOffice365Outlook2016-Begin -->
## MicrosoftOffice365Outlook2016

<!-- MicrosoftOffice365Outlook2016-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice365Outlook2016-Applicability-End -->

<!-- MicrosoftOffice365Outlook2016-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Outlook2016
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Outlook2016
```
<!-- MicrosoftOffice365Outlook2016-OmaUri-End -->

<!-- MicrosoftOffice365Outlook2016-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Office 365 Outlook 2016.

Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings of Microsoft Office 365 Outlook 2016 will synchronize between a user's work computers with UE-V by default. Use this policy setting to prevent the user settings of Microsoft Office 365 Outlook 2016 from synchronization between computers with UE-V.

- If you enable this policy setting, Microsoft Office 365 Outlook 2016 user settings continue to sync with UE-V.

- If you disable this policy setting, Microsoft Office 365 Outlook 2016 user settings are excluded from synchronization with UE-V.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice365Outlook2016-Description-End -->

<!-- MicrosoftOffice365Outlook2016-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice365Outlook2016-Editable-End -->

<!-- MicrosoftOffice365Outlook2016-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice365Outlook2016-DFProperties-End -->

<!-- MicrosoftOffice365Outlook2016-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice365Outlook2016 |
| Friendly Name | Microsoft Office 365 Outlook 2016 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice365Outlook2016-AdmxBacked-End -->

<!-- MicrosoftOffice365Outlook2016-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice365Outlook2016-Examples-End -->

<!-- MicrosoftOffice365Outlook2016-End -->

<!-- MicrosoftOffice365PowerPoint2013-Begin -->
## MicrosoftOffice365PowerPoint2013

<!-- MicrosoftOffice365PowerPoint2013-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice365PowerPoint2013-Applicability-End -->

<!-- MicrosoftOffice365PowerPoint2013-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365PowerPoint2013
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365PowerPoint2013
```
<!-- MicrosoftOffice365PowerPoint2013-OmaUri-End -->

<!-- MicrosoftOffice365PowerPoint2013-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Office 365 PowerPoint 2013.

Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings of Microsoft Office 365 PowerPoint 2013 will synchronize between a user's work computers with UE-V by default. Use this policy setting to prevent the user settings of Microsoft Office 365 PowerPoint 2013 from synchronization between computers with UE-V.

- If you enable this policy setting, Microsoft Office 365 PowerPoint 2013 user settings continue to sync with UE-V.

- If you disable this policy setting, Microsoft Office 365 PowerPoint 2013 user settings are excluded from synchronization with UE-V.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice365PowerPoint2013-Description-End -->

<!-- MicrosoftOffice365PowerPoint2013-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice365PowerPoint2013-Editable-End -->

<!-- MicrosoftOffice365PowerPoint2013-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice365PowerPoint2013-DFProperties-End -->

<!-- MicrosoftOffice365PowerPoint2013-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice365PowerPoint2013 |
| Friendly Name | Microsoft Office 365 PowerPoint 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice365PowerPoint2013-AdmxBacked-End -->

<!-- MicrosoftOffice365PowerPoint2013-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice365PowerPoint2013-Examples-End -->

<!-- MicrosoftOffice365PowerPoint2013-End -->

<!-- MicrosoftOffice365PowerPoint2016-Begin -->
## MicrosoftOffice365PowerPoint2016

<!-- MicrosoftOffice365PowerPoint2016-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice365PowerPoint2016-Applicability-End -->

<!-- MicrosoftOffice365PowerPoint2016-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365PowerPoint2016
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365PowerPoint2016
```
<!-- MicrosoftOffice365PowerPoint2016-OmaUri-End -->

<!-- MicrosoftOffice365PowerPoint2016-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Office 365 PowerPoint 2016.

Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings of Microsoft Office 365 PowerPoint 2016 will synchronize between a user's work computers with UE-V by default. Use this policy setting to prevent the user settings of Microsoft Office 365 PowerPoint 2016 from synchronization between computers with UE-V.

- If you enable this policy setting, Microsoft Office 365 PowerPoint 2016 user settings continue to sync with UE-V.

- If you disable this policy setting, Microsoft Office 365 PowerPoint 2016 user settings are excluded from synchronization with UE-V.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice365PowerPoint2016-Description-End -->

<!-- MicrosoftOffice365PowerPoint2016-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice365PowerPoint2016-Editable-End -->

<!-- MicrosoftOffice365PowerPoint2016-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice365PowerPoint2016-DFProperties-End -->

<!-- MicrosoftOffice365PowerPoint2016-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice365PowerPoint2016 |
| Friendly Name | Microsoft Office 365 PowerPoint 2016 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice365PowerPoint2016-AdmxBacked-End -->

<!-- MicrosoftOffice365PowerPoint2016-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice365PowerPoint2016-Examples-End -->

<!-- MicrosoftOffice365PowerPoint2016-End -->

<!-- MicrosoftOffice365Project2013-Begin -->
## MicrosoftOffice365Project2013

<!-- MicrosoftOffice365Project2013-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice365Project2013-Applicability-End -->

<!-- MicrosoftOffice365Project2013-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Project2013
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Project2013
```
<!-- MicrosoftOffice365Project2013-OmaUri-End -->

<!-- MicrosoftOffice365Project2013-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Office 365 Project 2013.

Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings of Microsoft Office 365 Project 2013 will synchronize between a user's work computers with UE-V by default. Use this policy setting to prevent the user settings of Microsoft Office 365 Project 2013 from synchronization between computers with UE-V.

- If you enable this policy setting, Microsoft Office 365 Project 2013 user settings continue to sync with UE-V.

- If you disable this policy setting, Microsoft Office 365 Project 2013 user settings are excluded from synchronization with UE-V.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice365Project2013-Description-End -->

<!-- MicrosoftOffice365Project2013-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice365Project2013-Editable-End -->

<!-- MicrosoftOffice365Project2013-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice365Project2013-DFProperties-End -->

<!-- MicrosoftOffice365Project2013-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice365Project2013 |
| Friendly Name | Microsoft Office 365 Project 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice365Project2013-AdmxBacked-End -->

<!-- MicrosoftOffice365Project2013-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice365Project2013-Examples-End -->

<!-- MicrosoftOffice365Project2013-End -->

<!-- MicrosoftOffice365Project2016-Begin -->
## MicrosoftOffice365Project2016

<!-- MicrosoftOffice365Project2016-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice365Project2016-Applicability-End -->

<!-- MicrosoftOffice365Project2016-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Project2016
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Project2016
```
<!-- MicrosoftOffice365Project2016-OmaUri-End -->

<!-- MicrosoftOffice365Project2016-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Office 365 Project 2016.

Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings of Microsoft Office 365 Project 2016 will synchronize between a user's work computers with UE-V by default. Use this policy setting to prevent the user settings of Microsoft Office 365 Project 2016 from synchronization between computers with UE-V.

- If you enable this policy setting, Microsoft Office 365 Project 2016 user settings continue to sync with UE-V.

- If you disable this policy setting, Microsoft Office 365 Project 2016 user settings are excluded from synchronization with UE-V.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice365Project2016-Description-End -->

<!-- MicrosoftOffice365Project2016-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice365Project2016-Editable-End -->

<!-- MicrosoftOffice365Project2016-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice365Project2016-DFProperties-End -->

<!-- MicrosoftOffice365Project2016-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice365Project2016 |
| Friendly Name | Microsoft Office 365 Project 2016 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice365Project2016-AdmxBacked-End -->

<!-- MicrosoftOffice365Project2016-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice365Project2016-Examples-End -->

<!-- MicrosoftOffice365Project2016-End -->

<!-- MicrosoftOffice365Publisher2013-Begin -->
## MicrosoftOffice365Publisher2013

<!-- MicrosoftOffice365Publisher2013-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice365Publisher2013-Applicability-End -->

<!-- MicrosoftOffice365Publisher2013-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Publisher2013
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Publisher2013
```
<!-- MicrosoftOffice365Publisher2013-OmaUri-End -->

<!-- MicrosoftOffice365Publisher2013-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Office 365 Publisher 2013.

Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings of Microsoft Office 365 Publisher 2013 will synchronize between a user's work computers with UE-V by default. Use this policy setting to prevent the user settings of Microsoft Office 365 Publisher 2013 from synchronization between computers with UE-V.

- If you enable this policy setting, Microsoft Office 365 Publisher 2013 user settings continue to sync with UE-V.

- If you disable this policy setting, Microsoft Office 365 Publisher 2013 user settings are excluded from synchronization with UE-V.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice365Publisher2013-Description-End -->

<!-- MicrosoftOffice365Publisher2013-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice365Publisher2013-Editable-End -->

<!-- MicrosoftOffice365Publisher2013-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice365Publisher2013-DFProperties-End -->

<!-- MicrosoftOffice365Publisher2013-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice365Publisher2013 |
| Friendly Name | Microsoft Office 365 Publisher 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice365Publisher2013-AdmxBacked-End -->

<!-- MicrosoftOffice365Publisher2013-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice365Publisher2013-Examples-End -->

<!-- MicrosoftOffice365Publisher2013-End -->

<!-- MicrosoftOffice365Publisher2016-Begin -->
## MicrosoftOffice365Publisher2016

<!-- MicrosoftOffice365Publisher2016-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice365Publisher2016-Applicability-End -->

<!-- MicrosoftOffice365Publisher2016-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Publisher2016
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Publisher2016
```
<!-- MicrosoftOffice365Publisher2016-OmaUri-End -->

<!-- MicrosoftOffice365Publisher2016-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Office 365 Publisher 2016.

Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings of Microsoft Office 365 Publisher 2016 will synchronize between a user's work computers with UE-V by default. Use this policy setting to prevent the user settings of Microsoft Office 365 Publisher 2016 from synchronization between computers with UE-V.

- If you enable this policy setting, Microsoft Office 365 Publisher 2016 user settings continue to sync with UE-V.

- If you disable this policy setting, Microsoft Office 365 Publisher 2016 user settings are excluded from synchronization with UE-V.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice365Publisher2016-Description-End -->

<!-- MicrosoftOffice365Publisher2016-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice365Publisher2016-Editable-End -->

<!-- MicrosoftOffice365Publisher2016-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice365Publisher2016-DFProperties-End -->

<!-- MicrosoftOffice365Publisher2016-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice365Publisher2016 |
| Friendly Name | Microsoft Office 365 Publisher 2016 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice365Publisher2016-AdmxBacked-End -->

<!-- MicrosoftOffice365Publisher2016-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice365Publisher2016-Examples-End -->

<!-- MicrosoftOffice365Publisher2016-End -->

<!-- MicrosoftOffice365SharePointDesigner2013-Begin -->
## MicrosoftOffice365SharePointDesigner2013

<!-- MicrosoftOffice365SharePointDesigner2013-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice365SharePointDesigner2013-Applicability-End -->

<!-- MicrosoftOffice365SharePointDesigner2013-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365SharePointDesigner2013
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365SharePointDesigner2013
```
<!-- MicrosoftOffice365SharePointDesigner2013-OmaUri-End -->

<!-- MicrosoftOffice365SharePointDesigner2013-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Office 365 SharePoint Designer 2013.

Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings of Microsoft Office 365 SharePoint Designer 2013 will synchronize between a user's work computers with UE-V by default. Use this policy setting to prevent the user settings of Microsoft Office 365 SharePoint Designer 2013 from synchronization between computers with UE-V.

- If you enable this policy setting, Microsoft Office 365 SharePoint Designer 2013 user settings continue to sync with UE-V.

- If you disable this policy setting, Microsoft Office 365 SharePoint Designer 2013 user settings are excluded from synchronization with UE-V.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice365SharePointDesigner2013-Description-End -->

<!-- MicrosoftOffice365SharePointDesigner2013-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice365SharePointDesigner2013-Editable-End -->

<!-- MicrosoftOffice365SharePointDesigner2013-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice365SharePointDesigner2013-DFProperties-End -->

<!-- MicrosoftOffice365SharePointDesigner2013-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice365SharePointDesigner2013 |
| Friendly Name | Microsoft Office 365 SharePoint Designer 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice365SharePointDesigner2013-AdmxBacked-End -->

<!-- MicrosoftOffice365SharePointDesigner2013-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice365SharePointDesigner2013-Examples-End -->

<!-- MicrosoftOffice365SharePointDesigner2013-End -->

<!-- MicrosoftOffice365Visio2013-Begin -->
## MicrosoftOffice365Visio2013

<!-- MicrosoftOffice365Visio2013-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice365Visio2013-Applicability-End -->

<!-- MicrosoftOffice365Visio2013-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Visio2013
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Visio2013
```
<!-- MicrosoftOffice365Visio2013-OmaUri-End -->

<!-- MicrosoftOffice365Visio2013-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Office 365 Visio 2013.

Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings of Microsoft Office 365 Visio 2013 will synchronize between a user's work computers with UE-V by default. Use this policy setting to prevent the user settings of Microsoft Office 365 Visio 2013 from synchronization between computers with UE-V.

- If you enable this policy setting, Microsoft Office 365 Visio 2013 user settings continue to sync with UE-V.

- If you disable this policy setting, Microsoft Office 365 Visio 2013 user settings are excluded from synchronization with UE-V.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice365Visio2013-Description-End -->

<!-- MicrosoftOffice365Visio2013-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice365Visio2013-Editable-End -->

<!-- MicrosoftOffice365Visio2013-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice365Visio2013-DFProperties-End -->

<!-- MicrosoftOffice365Visio2013-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice365Visio2013 |
| Friendly Name | Microsoft Office 365 Visio 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice365Visio2013-AdmxBacked-End -->

<!-- MicrosoftOffice365Visio2013-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice365Visio2013-Examples-End -->

<!-- MicrosoftOffice365Visio2013-End -->

<!-- MicrosoftOffice365Visio2016-Begin -->
## MicrosoftOffice365Visio2016

<!-- MicrosoftOffice365Visio2016-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice365Visio2016-Applicability-End -->

<!-- MicrosoftOffice365Visio2016-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Visio2016
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Visio2016
```
<!-- MicrosoftOffice365Visio2016-OmaUri-End -->

<!-- MicrosoftOffice365Visio2016-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Office 365 Visio 2016.

Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings of Microsoft Office 365 Visio 2016 will synchronize between a user's work computers with UE-V by default. Use this policy setting to prevent the user settings of Microsoft Office 365 Visio 2016 from synchronization between computers with UE-V.

- If you enable this policy setting, Microsoft Office 365 Visio 2016 user settings continue to sync with UE-V.

- If you disable this policy setting, Microsoft Office 365 Visio 2016 user settings are excluded from synchronization with UE-V.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice365Visio2016-Description-End -->

<!-- MicrosoftOffice365Visio2016-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice365Visio2016-Editable-End -->

<!-- MicrosoftOffice365Visio2016-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice365Visio2016-DFProperties-End -->

<!-- MicrosoftOffice365Visio2016-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice365Visio2016 |
| Friendly Name | Microsoft Office 365 Visio 2016 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice365Visio2016-AdmxBacked-End -->

<!-- MicrosoftOffice365Visio2016-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice365Visio2016-Examples-End -->

<!-- MicrosoftOffice365Visio2016-End -->

<!-- MicrosoftOffice365Word2013-Begin -->
## MicrosoftOffice365Word2013

<!-- MicrosoftOffice365Word2013-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice365Word2013-Applicability-End -->

<!-- MicrosoftOffice365Word2013-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Word2013
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Word2013
```
<!-- MicrosoftOffice365Word2013-OmaUri-End -->

<!-- MicrosoftOffice365Word2013-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Office 365 Word 2013.

Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings of Microsoft Office 365 Word 2013 will synchronize between a user's work computers with UE-V by default. Use this policy setting to prevent the user settings of Microsoft Office 365 Word 2013 from synchronization between computers with UE-V.

- If you enable this policy setting, Microsoft Office 365 Word 2013 user settings continue to sync with UE-V.

- If you disable this policy setting, Microsoft Office 365 Word 2013 user settings are excluded from synchronization with UE-V.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice365Word2013-Description-End -->

<!-- MicrosoftOffice365Word2013-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice365Word2013-Editable-End -->

<!-- MicrosoftOffice365Word2013-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice365Word2013-DFProperties-End -->

<!-- MicrosoftOffice365Word2013-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice365Word2013 |
| Friendly Name | Microsoft Office 365 Word 2013 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice365Word2013-AdmxBacked-End -->

<!-- MicrosoftOffice365Word2013-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice365Word2013-Examples-End -->

<!-- MicrosoftOffice365Word2013-End -->

<!-- MicrosoftOffice365Word2016-Begin -->
## MicrosoftOffice365Word2016

<!-- MicrosoftOffice365Word2016-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftOffice365Word2016-Applicability-End -->

<!-- MicrosoftOffice365Word2016-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Word2016
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/MicrosoftOffice365Word2016
```
<!-- MicrosoftOffice365Word2016-OmaUri-End -->

<!-- MicrosoftOffice365Word2016-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for Microsoft Office 365 Word 2016.

Microsoft Office 365 synchronizes certain settings by default without UE-V. If the synchronization capabilities of Microsoft Office 365 are disabled, then the user settings of Microsoft Office 365 Word 2016 will synchronize between a user's work computers with UE-V by default. Use this policy setting to prevent the user settings of Microsoft Office 365 Word 2016 from synchronization between computers with UE-V.

- If you enable this policy setting, Microsoft Office 365 Word 2016 user settings continue to sync with UE-V.

- If you disable this policy setting, Microsoft Office 365 Word 2016 user settings are excluded from synchronization with UE-V.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- MicrosoftOffice365Word2016-Description-End -->

<!-- MicrosoftOffice365Word2016-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftOffice365Word2016-Editable-End -->

<!-- MicrosoftOffice365Word2016-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftOffice365Word2016-DFProperties-End -->

<!-- MicrosoftOffice365Word2016-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftOffice365Word2016 |
| Friendly Name | Microsoft Office 365 Word 2016 |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- MicrosoftOffice365Word2016-AdmxBacked-End -->

<!-- MicrosoftOffice365Word2016-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftOffice365Word2016-Examples-End -->

<!-- MicrosoftOffice365Word2016-End -->

<!-- Music-Begin -->
## Music

<!-- Music-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Music-Applicability-End -->

<!-- Music-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/Music
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/Music
```
<!-- Music-OmaUri-End -->

<!-- Music-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for the Music app.

By default, the user settings of Music sync between computers. Use the policy setting to prevent the user settings of Music from synchronizing between computers.

- If you enable this policy setting, Music user settings continue to sync.

- If you disable this policy setting, Music user settings are excluded from the synchronizing settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- Music-Description-End -->

<!-- Music-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Music-Editable-End -->

<!-- Music-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Music-DFProperties-End -->

<!-- Music-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Music |
| Friendly Name | Music |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Windows Apps |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Windows8AppList\Microsoft.ZuneMusic_8wekyb3d8bbwe |
| Registry Value Name | SyncSettings |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- Music-AdmxBacked-End -->

<!-- Music-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Music-Examples-End -->

<!-- Music-End -->

<!-- News-Begin -->
## News

<!-- News-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- News-Applicability-End -->

<!-- News-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/News
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/News
```
<!-- News-OmaUri-End -->

<!-- News-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for the News app.

By default, the user settings of News sync between computers. Use the policy setting to prevent the user settings of News from synchronizing between computers.

- If you enable this policy setting, News user settings continue to sync.

- If you disable this policy setting, News user settings are excluded from synchronization.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- News-Description-End -->

<!-- News-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- News-Editable-End -->

<!-- News-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- News-DFProperties-End -->

<!-- News-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | News |
| Friendly Name | News |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Windows Apps |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Windows8AppList\Microsoft.BingNews_8wekyb3d8bbwe |
| Registry Value Name | SyncSettings |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- News-AdmxBacked-End -->

<!-- News-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- News-Examples-End -->

<!-- News-End -->

<!-- Notepad-Begin -->
## Notepad

<!-- Notepad-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Notepad-Applicability-End -->

<!-- Notepad-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/Notepad
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/Notepad
```
<!-- Notepad-OmaUri-End -->

<!-- Notepad-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings of Notepad.

By default, the user settings of Notepad synchronize between computers. Use the policy setting to prevent the user settings of Notepad from synchronization between computers.

- If you enable this policy setting, the Notepad user settings continue to synchronize.

- If you disable this policy setting, Notepad user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- Notepad-Description-End -->

<!-- Notepad-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Notepad-Editable-End -->

<!-- Notepad-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Notepad-DFProperties-End -->

<!-- Notepad-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Notepad |
| Friendly Name | Notepad |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| Registry Value Name | MicrosoftNotepad6 |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- Notepad-AdmxBacked-End -->

<!-- Notepad-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Notepad-Examples-End -->

<!-- Notepad-End -->

<!-- Reader-Begin -->
## Reader

<!-- Reader-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Reader-Applicability-End -->

<!-- Reader-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/Reader
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/Reader
```
<!-- Reader-OmaUri-End -->

<!-- Reader-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for the Reader app.

By default, the user settings of Reader sync between computers. Use the policy setting to prevent the user settings of Reader from synchronizing between computers.

- If you enable this policy setting, Reader user settings continue to sync.

- If you disable this policy setting, Reader user settings are excluded from the synchronization.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- Reader-Description-End -->

<!-- Reader-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Reader-Editable-End -->

<!-- Reader-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Reader-DFProperties-End -->

<!-- Reader-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Reader |
| Friendly Name | Reader |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Windows Apps |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Windows8AppList\Microsoft.Reader_8wekyb3d8bbwe |
| Registry Value Name | SyncSettings |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- Reader-AdmxBacked-End -->

<!-- Reader-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Reader-Examples-End -->

<!-- Reader-End -->

<!-- RepositoryTimeout-Begin -->
## RepositoryTimeout

<!-- RepositoryTimeout-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RepositoryTimeout-Applicability-End -->

<!-- RepositoryTimeout-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/RepositoryTimeout
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/RepositoryTimeout
```
<!-- RepositoryTimeout-OmaUri-End -->

<!-- RepositoryTimeout-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the number of milliseconds that the computer waits when retrieving user settings from the settings storage location.

You can use this setting to override the default value of 2000 milliseconds.

- If you enable this policy setting, set the number of milliseconds that the system waits to retrieve settings.

- If you disable or don't configure this policy setting, the default value of 2000 milliseconds is used.
<!-- RepositoryTimeout-Description-End -->

<!-- RepositoryTimeout-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RepositoryTimeout-Editable-End -->

<!-- RepositoryTimeout-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RepositoryTimeout-DFProperties-End -->

<!-- RepositoryTimeout-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RepositoryTimeout |
| Friendly Name | Synchronization timeout |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- RepositoryTimeout-AdmxBacked-End -->

<!-- RepositoryTimeout-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RepositoryTimeout-Examples-End -->

<!-- RepositoryTimeout-End -->

<!-- SettingsStoragePath-Begin -->
## SettingsStoragePath

<!-- SettingsStoragePath-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SettingsStoragePath-Applicability-End -->

<!-- SettingsStoragePath-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/SettingsStoragePath
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/SettingsStoragePath
```
<!-- SettingsStoragePath-OmaUri-End -->

<!-- SettingsStoragePath-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures where the settings package files that contain user settings are stored.

- If you enable this policy setting, the user settings are stored in the specified location.

- If you disable or don't configure this policy setting, the user settings are stored in the user's home directory if configured for your environment.
<!-- SettingsStoragePath-Description-End -->

<!-- SettingsStoragePath-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SettingsStoragePath-Editable-End -->

<!-- SettingsStoragePath-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SettingsStoragePath-DFProperties-End -->

<!-- SettingsStoragePath-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SettingsStoragePath |
| Friendly Name | Settings storage path |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- SettingsStoragePath-AdmxBacked-End -->

<!-- SettingsStoragePath-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SettingsStoragePath-Examples-End -->

<!-- SettingsStoragePath-End -->

<!-- SettingsTemplateCatalogPath-Begin -->
## SettingsTemplateCatalogPath

<!-- SettingsTemplateCatalogPath-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SettingsTemplateCatalogPath-Applicability-End -->

<!-- SettingsTemplateCatalogPath-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/SettingsTemplateCatalogPath
```
<!-- SettingsTemplateCatalogPath-OmaUri-End -->

<!-- SettingsTemplateCatalogPath-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures where custom settings location templates are stored and if the catalog will be used to replace the default Microsoft templates installed with the UE-V Agent.

- If you enable this policy setting, the UE-V Agent checks the specified location once each day and updates its synchronization behavior based on the templates in this location. Settings location templates added or updated since the last check are registered by the UE-V Agent. The UE-V Agent deregisters templates that were removed from this location.

If you specify a UNC path and leave the option to replace the default Microsoft templates unchecked, the UE-V Agent will use the default Microsoft templates installed by the UE-V Agent and custom templates in the settings template catalog. If there are custom templates in the settings template catalog which use the same ID as the default Microsoft templates, they will be ignored.

If you specify a UNC path and check the option to replace the default Microsoft templates, all of the default Microsoft templates installed by the UE-V Agent will be deleted from the computer and only the templates located in the settings template catalog will be used.

- If you disable this policy setting, the UE-V Agent won't use the custom settings location templates.

- If you disable this policy setting after it has been enabled, the UE-V Agent won't restore the default Microsoft templates.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- SettingsTemplateCatalogPath-Description-End -->

<!-- SettingsTemplateCatalogPath-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SettingsTemplateCatalogPath-Editable-End -->

<!-- SettingsTemplateCatalogPath-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SettingsTemplateCatalogPath-DFProperties-End -->

<!-- SettingsTemplateCatalogPath-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SettingsTemplateCatalogPath |
| Friendly Name | Settings template catalog path |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- SettingsTemplateCatalogPath-AdmxBacked-End -->

<!-- SettingsTemplateCatalogPath-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SettingsTemplateCatalogPath-Examples-End -->

<!-- SettingsTemplateCatalogPath-End -->

<!-- Sports-Begin -->
## Sports

<!-- Sports-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Sports-Applicability-End -->

<!-- Sports-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/Sports
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/Sports
```
<!-- Sports-OmaUri-End -->

<!-- Sports-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for the Sports app.

By default, the user settings of Sports sync between computers. Use the policy setting to prevent the user settings of Sports from synchronizing between computers.

- If you enable this policy setting, Sports user settings continue to sync.

- If you disable this policy setting, Sports user settings are excluded from synchronization.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- Sports-Description-End -->

<!-- Sports-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Sports-Editable-End -->

<!-- Sports-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Sports-DFProperties-End -->

<!-- Sports-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Sports |
| Friendly Name | Sports |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Windows Apps |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Windows8AppList\Microsoft.BingSports_8wekyb3d8bbwe |
| Registry Value Name | SyncSettings |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- Sports-AdmxBacked-End -->

<!-- Sports-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Sports-Examples-End -->

<!-- Sports-End -->

<!-- SyncEnabled-Begin -->
## SyncEnabled

<!-- SyncEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SyncEnabled-Applicability-End -->

<!-- SyncEnabled-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/SyncEnabled
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/SyncEnabled
```
<!-- SyncEnabled-OmaUri-End -->

<!-- SyncEnabled-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to enable or disable User Experience Virtualization (UE-V). Only applies to Windows 10 or earlier.
<!-- SyncEnabled-Description-End -->

<!-- SyncEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SyncEnabled-Editable-End -->

<!-- SyncEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SyncEnabled-DFProperties-End -->

<!-- SyncEnabled-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SyncEnabled |
| Friendly Name | Use User Experience Virtualization (UE-V) |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration |
| Registry Value Name | SyncEnabled |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- SyncEnabled-AdmxBacked-End -->

<!-- SyncEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SyncEnabled-Examples-End -->

<!-- SyncEnabled-End -->

<!-- SyncOverMeteredNetwork-Begin -->
## SyncOverMeteredNetwork

<!-- SyncOverMeteredNetwork-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SyncOverMeteredNetwork-Applicability-End -->

<!-- SyncOverMeteredNetwork-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/SyncOverMeteredNetwork
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/SyncOverMeteredNetwork
```
<!-- SyncOverMeteredNetwork-OmaUri-End -->

<!-- SyncOverMeteredNetwork-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting defines whether the User Experience Virtualization (UE-V) Agent synchronizes settings over metered connections.

By default, the UE-V Agent doesn't synchronize settings over a metered connection.

With this setting enabled, the UE-V Agent synchronizes settings over a metered connection.

With this setting disabled, the UE-V Agent doesn't synchronize settings over a metered connection.

If you don't configure this policy setting, any defined values are deleted.
<!-- SyncOverMeteredNetwork-Description-End -->

<!-- SyncOverMeteredNetwork-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SyncOverMeteredNetwork-Editable-End -->

<!-- SyncOverMeteredNetwork-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SyncOverMeteredNetwork-DFProperties-End -->

<!-- SyncOverMeteredNetwork-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SyncOverMeteredNetwork |
| Friendly Name | Sync settings over metered connections |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration |
| Registry Value Name | SyncOverMeteredNetwork |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- SyncOverMeteredNetwork-AdmxBacked-End -->

<!-- SyncOverMeteredNetwork-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SyncOverMeteredNetwork-Examples-End -->

<!-- SyncOverMeteredNetwork-End -->

<!-- SyncOverMeteredNetworkWhenRoaming-Begin -->
## SyncOverMeteredNetworkWhenRoaming

<!-- SyncOverMeteredNetworkWhenRoaming-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SyncOverMeteredNetworkWhenRoaming-Applicability-End -->

<!-- SyncOverMeteredNetworkWhenRoaming-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/SyncOverMeteredNetworkWhenRoaming
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/SyncOverMeteredNetworkWhenRoaming
```
<!-- SyncOverMeteredNetworkWhenRoaming-OmaUri-End -->

<!-- SyncOverMeteredNetworkWhenRoaming-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting defines whether the User Experience Virtualization (UE-V) Agent synchronizes settings over metered connections outside of the home provider network, for example when connected via a roaming connection.

By default, the UE-V Agent doesn't synchronize settings over a metered connection that's roaming.

With this setting enabled, the UE-V Agent synchronizes settings over a metered connection that's roaming.

With this setting disabled, the UE-V Agent won't synchronize settings over a metered connection that's roaming.

If you don't configure this policy setting, any defined values are deleted.
<!-- SyncOverMeteredNetworkWhenRoaming-Description-End -->

<!-- SyncOverMeteredNetworkWhenRoaming-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SyncOverMeteredNetworkWhenRoaming-Editable-End -->

<!-- SyncOverMeteredNetworkWhenRoaming-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SyncOverMeteredNetworkWhenRoaming-DFProperties-End -->

<!-- SyncOverMeteredNetworkWhenRoaming-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SyncOverMeteredNetworkWhenRoaming |
| Friendly Name | Sync settings over metered connections even when roaming |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration |
| Registry Value Name | SyncOverMeteredNetworkWhenRoaming |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- SyncOverMeteredNetworkWhenRoaming-AdmxBacked-End -->

<!-- SyncOverMeteredNetworkWhenRoaming-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SyncOverMeteredNetworkWhenRoaming-Examples-End -->

<!-- SyncOverMeteredNetworkWhenRoaming-End -->

<!-- SyncProviderPingEnabled-Begin -->
## SyncProviderPingEnabled

<!-- SyncProviderPingEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SyncProviderPingEnabled-Applicability-End -->

<!-- SyncProviderPingEnabled-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/SyncProviderPingEnabled
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/SyncProviderPingEnabled
```
<!-- SyncProviderPingEnabled-OmaUri-End -->

<!-- SyncProviderPingEnabled-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure the User Experience Virtualization (UE-V) sync provider to ping the settings storage path before attempting to sync settings. If the ping is successful then the sync provider attempts to synchronize the settings packages. If the ping is unsuccessful then the sync provider doesn't attempt the synchronization.

- If you enable this policy setting, the sync provider pings the settings storage location before synchronizing settings packages.

- If you disable this policy setting, the sync provider doesn't ping the settings storage location before synchronizing settings packages.

- If you don't configure this policy, any defined values will be deleted.
<!-- SyncProviderPingEnabled-Description-End -->

<!-- SyncProviderPingEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SyncProviderPingEnabled-Editable-End -->

<!-- SyncProviderPingEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SyncProviderPingEnabled-DFProperties-End -->

<!-- SyncProviderPingEnabled-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SyncProviderPingEnabled |
| Friendly Name | Ping the settings storage location before sync |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration |
| Registry Value Name | SyncProviderPingEnabled |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- SyncProviderPingEnabled-AdmxBacked-End -->

<!-- SyncProviderPingEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SyncProviderPingEnabled-Examples-End -->

<!-- SyncProviderPingEnabled-End -->

<!-- SyncUnlistedWindows8Apps-Begin -->
## SyncUnlistedWindows8Apps

<!-- SyncUnlistedWindows8Apps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SyncUnlistedWindows8Apps-Applicability-End -->

<!-- SyncUnlistedWindows8Apps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/SyncUnlistedWindows8Apps
```
<!-- SyncUnlistedWindows8Apps-OmaUri-End -->

<!-- SyncUnlistedWindows8Apps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting defines the default settings sync behavior of the User Experience Virtualization (UE-V) Agent for Windows apps that aren't explicitly listed in Windows App List.

By default, the UE-V Agent only synchronizes settings of those Windows apps included in the Windows App List.

With this setting enabled, the settings of all Windows apps not expressly disable in the Windows App List are synchronized.

With this setting disabled, only the settings of the Windows apps set to synchronize in the Windows App List are synchronized.

If you don't configure this policy setting, any defined values are deleted.
<!-- SyncUnlistedWindows8Apps-Description-End -->

<!-- SyncUnlistedWindows8Apps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SyncUnlistedWindows8Apps-Editable-End -->

<!-- SyncUnlistedWindows8Apps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SyncUnlistedWindows8Apps-DFProperties-End -->

<!-- SyncUnlistedWindows8Apps-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SyncUnlistedWindows8Apps |
| Friendly Name | Sync Unlisted Windows Apps |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration |
| Registry Value Name | SyncUnlistedWindows8Apps |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- SyncUnlistedWindows8Apps-AdmxBacked-End -->

<!-- SyncUnlistedWindows8Apps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SyncUnlistedWindows8Apps-Examples-End -->

<!-- SyncUnlistedWindows8Apps-End -->

<!-- Travel-Begin -->
## Travel

<!-- Travel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Travel-Applicability-End -->

<!-- Travel-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/Travel
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/Travel
```
<!-- Travel-OmaUri-End -->

<!-- Travel-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for the Travel app.

By default, the user settings of Travel sync between computers. Use the policy setting to prevent the user settings of Travel from synchronizing between computers.

- If you enable this policy setting, Travel user settings continue to sync.

- If you disable this policy setting, Travel user settings are excluded from synchronization.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- Travel-Description-End -->

<!-- Travel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Travel-Editable-End -->

<!-- Travel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Travel-DFProperties-End -->

<!-- Travel-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Travel |
| Friendly Name | Travel |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Windows Apps |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Windows8AppList\Microsoft.BingTravel_8wekyb3d8bbwe |
| Registry Value Name | SyncSettings |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- Travel-AdmxBacked-End -->

<!-- Travel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Travel-Examples-End -->

<!-- Travel-End -->

<!-- TrayIconEnabled-Begin -->
## TrayIconEnabled

<!-- TrayIconEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TrayIconEnabled-Applicability-End -->

<!-- TrayIconEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/TrayIconEnabled
```
<!-- TrayIconEnabled-OmaUri-End -->

<!-- TrayIconEnabled-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting enables the User Experience Virtualization (UE-V) tray icon. By default, an icon appears in the system tray that displays notifications for UE-V. This icon also provides a link to the UE-V Agent application, Company Settings Center. Users can open the Company Settings Center by right-clicking the icon and selecting Open or by double-clicking the icon. When this group policy setting is enabled, the UE-V tray icon is visible, the UE-V notifications display, and the Company Settings Center is accessible from the tray icon.

With this setting disabled, the tray icon doesn't appear in the system tray, UE-V never displays notifications, and the user can't access Company Settings Center from the system tray. The Company Settings Center remains accessible through the Control Panel and the Start menu or Start screen.

If you don't configure this policy setting, any defined values are deleted.
<!-- TrayIconEnabled-Description-End -->

<!-- TrayIconEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TrayIconEnabled-Editable-End -->

<!-- TrayIconEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TrayIconEnabled-DFProperties-End -->

<!-- TrayIconEnabled-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TrayIconEnabled |
| Friendly Name | Tray Icon |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration |
| Registry Value Name | TrayIconEnabled |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- TrayIconEnabled-AdmxBacked-End -->

<!-- TrayIconEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TrayIconEnabled-Examples-End -->

<!-- TrayIconEnabled-End -->

<!-- Video-Begin -->
## Video

<!-- Video-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Video-Applicability-End -->

<!-- Video-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/Video
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/Video
```
<!-- Video-OmaUri-End -->

<!-- Video-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for the Video app.

By default, the user settings of Video sync between computers. Use the policy setting to prevent the user settings of Video from synchronizing between computers.

- If you enable this policy setting, Video user settings continue to sync.

- If you disable this policy setting, Video user settings are excluded from synchronization.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- Video-Description-End -->

<!-- Video-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Video-Editable-End -->

<!-- Video-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Video-DFProperties-End -->

<!-- Video-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Video |
| Friendly Name | Video |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Windows Apps |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Windows8AppList\Microsoft.ZuneVideo_8wekyb3d8bbwe |
| Registry Value Name | SyncSettings |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- Video-AdmxBacked-End -->

<!-- Video-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Video-Examples-End -->

<!-- Video-End -->

<!-- Weather-Begin -->
## Weather

<!-- Weather-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Weather-Applicability-End -->

<!-- Weather-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/Weather
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/Weather
```
<!-- Weather-OmaUri-End -->

<!-- Weather-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings for the Weather app.

By default, the user settings of Weather sync between computers. Use the policy setting to prevent the user settings of Weather from synchronizing between computers.

- If you enable this policy setting, Weather user settings continue to sync.

- If you disable this policy setting, Weather user settings are excluded from synchronization.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- Weather-Description-End -->

<!-- Weather-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Weather-Editable-End -->

<!-- Weather-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Weather-DFProperties-End -->

<!-- Weather-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Weather |
| Friendly Name | Weather |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Windows Apps |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Windows8AppList\Microsoft.BingWeather_8wekyb3d8bbwe |
| Registry Value Name | SyncSettings |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- Weather-AdmxBacked-End -->

<!-- Weather-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Weather-Examples-End -->

<!-- Weather-End -->

<!-- Wordpad-Begin -->
## Wordpad

<!-- Wordpad-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Wordpad-Applicability-End -->

<!-- Wordpad-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/Wordpad
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserExperienceVirtualization/Wordpad
```
<!-- Wordpad-OmaUri-End -->

<!-- Wordpad-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the synchronization of user settings of WordPad.

By default, the user settings of WordPad synchronize between computers. Use the policy setting to prevent the user settings of WordPad from synchronization between computers.

- If you enable this policy setting, the WordPad user settings continue to synchronize.

- If you disable this policy setting, WordPad user settings are excluded from the synchronization settings.

- If you don't configure this policy setting, any defined values will be deleted.
<!-- Wordpad-Description-End -->

<!-- Wordpad-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Wordpad-Editable-End -->

<!-- Wordpad-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Wordpad-DFProperties-End -->

<!-- Wordpad-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Wordpad |
| Friendly Name | WordPad |
| Location | Computer and User Configuration |
| Path | Windows Components > Microsoft User Experience Virtualization > Applications |
| Registry Key Name | Software\Policies\Microsoft\UEV\Agent\Configuration\Applications |
| Registry Value Name | MicrosoftWordpad6 |
| ADMX File Name | UserExperienceVirtualization.admx |
<!-- Wordpad-AdmxBacked-End -->

<!-- Wordpad-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Wordpad-Examples-End -->

<!-- Wordpad-End -->

<!-- ADMX_UserExperienceVirtualization-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_UserExperienceVirtualization-CspMoreInfo-End -->

<!-- ADMX_UserExperienceVirtualization-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
