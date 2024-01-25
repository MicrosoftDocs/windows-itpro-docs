---
title: WindowsDefenderSecurityCenter Policy CSP
description: Learn more about the WindowsDefenderSecurityCenter Area in Policy CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- WindowsDefenderSecurityCenter-Begin -->
# Policy CSP - WindowsDefenderSecurityCenter

<!-- WindowsDefenderSecurityCenter-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WindowsDefenderSecurityCenter-Editable-End -->

<!-- CompanyName-Begin -->
## CompanyName

<!-- CompanyName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- CompanyName-Applicability-End -->

<!-- CompanyName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsDefenderSecurityCenter/CompanyName
```
<!-- CompanyName-OmaUri-End -->

<!-- CompanyName-Description-Begin -->
<!-- Description-Source-ADMX -->
Specify the company name that will be displayed in Windows Security and associated notifications. This setting must be enabled for any contact information to appear.

Enabled:

Enter the company name in the Options section.

Disabled:

Company information won't be shown at all in either Windows Security or any notifications that it creates.

Not configured:

Same as Disabled.
<!-- CompanyName-Description-End -->

<!-- CompanyName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CompanyName-Editable-End -->

<!-- CompanyName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CompanyName-DFProperties-End -->

<!-- CompanyName-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | EnterpriseCustomization_CompanyName |
| Friendly Name | Specify contact company name |
| Element Name | Company name. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Security > Enterprise Customization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Enterprise Customization |
| ADMX File Name | WindowsDefenderSecurityCenter.admx |
<!-- CompanyName-GpMapping-End -->

<!-- CompanyName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CompanyName-Examples-End -->

<!-- CompanyName-End -->

<!-- DisableAccountProtectionUI-Begin -->
## DisableAccountProtectionUI

<!-- DisableAccountProtectionUI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- DisableAccountProtectionUI-Applicability-End -->

<!-- DisableAccountProtectionUI-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsDefenderSecurityCenter/DisableAccountProtectionUI
```
<!-- DisableAccountProtectionUI-OmaUri-End -->

<!-- DisableAccountProtectionUI-Description-Begin -->
<!-- Description-Source-ADMX -->
Hide the Account protection area in Windows Security.

Enabled:

The Account protection area will be hidden.

Disabled:

The Account protection area will be shown.

Not configured:

Same as Disabled.
<!-- DisableAccountProtectionUI-Description-End -->

<!-- DisableAccountProtectionUI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableAccountProtectionUI-Editable-End -->

<!-- DisableAccountProtectionUI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableAccountProtectionUI-DFProperties-End -->

<!-- DisableAccountProtectionUI-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | (Disable) The users can see the display of the Account protection area in Windows Defender Security Center. |
| 1 | (Enable) The users can't see the display of the Account protection area in Windows Defender Security Center. |
<!-- DisableAccountProtectionUI-AllowedValues-End -->

<!-- DisableAccountProtectionUI-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AccountProtection_UILockdown |
| Friendly Name | Hide the Account protection area |
| Location | Computer Configuration |
| Path | Windows Components > Windows Security > Account protection |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Account protection |
| Registry Value Name | UILockdown |
| ADMX File Name | WindowsDefenderSecurityCenter.admx |
<!-- DisableAccountProtectionUI-GpMapping-End -->

<!-- DisableAccountProtectionUI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableAccountProtectionUI-Examples-End -->

<!-- DisableAccountProtectionUI-End -->

<!-- DisableAppBrowserUI-Begin -->
## DisableAppBrowserUI

<!-- DisableAppBrowserUI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DisableAppBrowserUI-Applicability-End -->

<!-- DisableAppBrowserUI-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsDefenderSecurityCenter/DisableAppBrowserUI
```
<!-- DisableAppBrowserUI-OmaUri-End -->

<!-- DisableAppBrowserUI-Description-Begin -->
<!-- Description-Source-ADMX -->
Hide the App and browser protection area in Windows Security.

Enabled:

The App and browser protection area will be hidden.

Disabled:

The App and browser protection area will be shown.

Not configured:

Same as Disabled.
<!-- DisableAppBrowserUI-Description-End -->

<!-- DisableAppBrowserUI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableAppBrowserUI-Editable-End -->

<!-- DisableAppBrowserUI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableAppBrowserUI-DFProperties-End -->

<!-- DisableAppBrowserUI-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | (Disable) The users can see the display of the app and browser protection area in Windows Defender Security Center. |
| 1 | (Enable) The users can't see the display of the app and browser protection area in Windows Defender Security Center. |
<!-- DisableAppBrowserUI-AllowedValues-End -->

<!-- DisableAppBrowserUI-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AppBrowserProtection_UILockdown |
| Friendly Name | Hide the App and browser protection area |
| Location | Computer Configuration |
| Path | Windows Components > Windows Security > App and browser protection |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows Defender Security Center\App and Browser protection |
| Registry Value Name | UILockdown |
| ADMX File Name | WindowsDefenderSecurityCenter.admx |
<!-- DisableAppBrowserUI-GpMapping-End -->

<!-- DisableAppBrowserUI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableAppBrowserUI-Examples-End -->

<!-- DisableAppBrowserUI-End -->

<!-- DisableClearTpmButton-Begin -->
## DisableClearTpmButton

<!-- DisableClearTpmButton-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- DisableClearTpmButton-Applicability-End -->

<!-- DisableClearTpmButton-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsDefenderSecurityCenter/DisableClearTpmButton
```
<!-- DisableClearTpmButton-OmaUri-End -->

<!-- DisableClearTpmButton-Description-Begin -->
<!-- Description-Source-ADMX -->
Disable the Clear TPM button in Windows Security.

Enabled:

The Clear TPM button will be unavailable for use.

Disabled:

The Clear TPM button will be available for use.

Not configured:

Same as Disabled.
<!-- DisableClearTpmButton-Description-End -->

<!-- DisableClearTpmButton-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableClearTpmButton-Editable-End -->

<!-- DisableClearTpmButton-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableClearTpmButton-DFProperties-End -->

<!-- DisableClearTpmButton-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | (Disabled or not configured) The security processor troubleshooting page shows a button that initiates the process to clear the security processor (TPM). |
| 1 | (Enabled) The security processor troubleshooting page won't show a button to initiate the process to clear the security processor (TPM). |
<!-- DisableClearTpmButton-AllowedValues-End -->

<!-- DisableClearTpmButton-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DeviceSecurity_DisableClearTpmButton |
| Friendly Name | Disable the Clear TPM button |
| Location | Computer Configuration |
| Path | Windows Components > Windows Security > Device security |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Device security |
| Registry Value Name | DisableClearTpmButton |
| ADMX File Name | WindowsDefenderSecurityCenter.admx |
<!-- DisableClearTpmButton-GpMapping-End -->

<!-- DisableClearTpmButton-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableClearTpmButton-Examples-End -->

<!-- DisableClearTpmButton-End -->

<!-- DisableDeviceSecurityUI-Begin -->
## DisableDeviceSecurityUI

<!-- DisableDeviceSecurityUI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- DisableDeviceSecurityUI-Applicability-End -->

<!-- DisableDeviceSecurityUI-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsDefenderSecurityCenter/DisableDeviceSecurityUI
```
<!-- DisableDeviceSecurityUI-OmaUri-End -->

<!-- DisableDeviceSecurityUI-Description-Begin -->
<!-- Description-Source-ADMX -->
Hide the Device security area in Windows Security.

Enabled:

The Device security area will be hidden.

Disabled:

The Device security area will be shown.

Not configured:

Same as Disabled.
<!-- DisableDeviceSecurityUI-Description-End -->

<!-- DisableDeviceSecurityUI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableDeviceSecurityUI-Editable-End -->

<!-- DisableDeviceSecurityUI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableDeviceSecurityUI-DFProperties-End -->

<!-- DisableDeviceSecurityUI-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | (Disable) The users can see the display of the Device security area in Windows Defender Security Center. |
| 1 | (Enable) The users can't see the display of the Device security area in Windows Defender Security Center. |
<!-- DisableDeviceSecurityUI-AllowedValues-End -->

<!-- DisableDeviceSecurityUI-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DeviceSecurity_UILockdown |
| Friendly Name | Hide the Device security area |
| Location | Computer Configuration |
| Path | Windows Components > Windows Security > Device security |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Device security |
| Registry Value Name | UILockdown |
| ADMX File Name | WindowsDefenderSecurityCenter.admx |
<!-- DisableDeviceSecurityUI-GpMapping-End -->

<!-- DisableDeviceSecurityUI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableDeviceSecurityUI-Examples-End -->

<!-- DisableDeviceSecurityUI-End -->

<!-- DisableEnhancedNotifications-Begin -->
## DisableEnhancedNotifications

<!-- DisableEnhancedNotifications-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DisableEnhancedNotifications-Applicability-End -->

<!-- DisableEnhancedNotifications-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsDefenderSecurityCenter/DisableEnhancedNotifications
```
<!-- DisableEnhancedNotifications-OmaUri-End -->

<!-- DisableEnhancedNotifications-Description-Begin -->
<!-- Description-Source-ADMX -->
Only show critical notifications from Windows Security.

If the Suppress all notifications GP setting has been enabled, this setting will have no effect.

Enabled:

Local users will only see critical notifications from Windows Security. They won't see other types of notifications, such as regular PC or device health information.

Disabled:

Local users will see all types of notifications from Windows Security.

Not configured:

Same as Disabled.
<!-- DisableEnhancedNotifications-Description-End -->

<!-- DisableEnhancedNotifications-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableEnhancedNotifications-Editable-End -->

<!-- DisableEnhancedNotifications-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableEnhancedNotifications-DFProperties-End -->

<!-- DisableEnhancedNotifications-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | (Disable) Windows Defender Security Center will display critical and non-critical notifications to users.. |
| 1 | (Enable) Windows Defender Security Center only display notifications which are considered critical on clients. |
<!-- DisableEnhancedNotifications-AllowedValues-End -->

<!-- DisableEnhancedNotifications-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Notifications_DisableEnhancedNotifications |
| Friendly Name | Hide non-critical notifications |
| Location | Computer Configuration |
| Path | Windows Components > Windows Security > Notifications |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications |
| Registry Value Name | DisableEnhancedNotifications |
| ADMX File Name | WindowsDefenderSecurityCenter.admx |
<!-- DisableEnhancedNotifications-GpMapping-End -->

<!-- DisableEnhancedNotifications-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableEnhancedNotifications-Examples-End -->

<!-- DisableEnhancedNotifications-End -->

<!-- DisableFamilyUI-Begin -->
## DisableFamilyUI

<!-- DisableFamilyUI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DisableFamilyUI-Applicability-End -->

<!-- DisableFamilyUI-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsDefenderSecurityCenter/DisableFamilyUI
```
<!-- DisableFamilyUI-OmaUri-End -->

<!-- DisableFamilyUI-Description-Begin -->
<!-- Description-Source-ADMX -->
Hide the Family options area in Windows Security.

Enabled:

The Family options area will be hidden.

Disabled:

The Family options area will be shown.

Not configured:

Same as Disabled.
<!-- DisableFamilyUI-Description-End -->

<!-- DisableFamilyUI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableFamilyUI-Editable-End -->

<!-- DisableFamilyUI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableFamilyUI-DFProperties-End -->

<!-- DisableFamilyUI-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | (Disable) The users can see the display of the family options area in Windows Defender Security Center. |
| 1 | (Enable) The users can't see the display of the family options area in Windows Defender Security Center. |
<!-- DisableFamilyUI-AllowedValues-End -->

<!-- DisableFamilyUI-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | FamilyOptions_UILockdown |
| Friendly Name | Hide the Family options area |
| Location | Computer Configuration |
| Path | Windows Components > Windows Security > Family options |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Family options |
| Registry Value Name | UILockdown |
| ADMX File Name | WindowsDefenderSecurityCenter.admx |
<!-- DisableFamilyUI-GpMapping-End -->

<!-- DisableFamilyUI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableFamilyUI-Examples-End -->

<!-- DisableFamilyUI-End -->

<!-- DisableHealthUI-Begin -->
## DisableHealthUI

<!-- DisableHealthUI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DisableHealthUI-Applicability-End -->

<!-- DisableHealthUI-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsDefenderSecurityCenter/DisableHealthUI
```
<!-- DisableHealthUI-OmaUri-End -->

<!-- DisableHealthUI-Description-Begin -->
<!-- Description-Source-ADMX -->
Hide the Device performance and health area in Windows Security.

Enabled:

The Device performance and health area will be hidden.

Disabled:

The Device performance and health area will be shown.

Not configured:

Same as Disabled.
<!-- DisableHealthUI-Description-End -->

<!-- DisableHealthUI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableHealthUI-Editable-End -->

<!-- DisableHealthUI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableHealthUI-DFProperties-End -->

<!-- DisableHealthUI-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | (Disable) The users can see the display of the device performance and health area in Windows Defender Security Center. |
| 1 | (Enable) The users can't see the display of the device performance and health area in Windows Defender Security Center. |
<!-- DisableHealthUI-AllowedValues-End -->

<!-- DisableHealthUI-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DevicePerformanceHealth_UILockdown |
| Friendly Name | Hide the Device performance and health area |
| Location | Computer Configuration |
| Path | Windows Components > Windows Security > Device performance and health |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Device performance and health |
| Registry Value Name | UILockdown |
| ADMX File Name | WindowsDefenderSecurityCenter.admx |
<!-- DisableHealthUI-GpMapping-End -->

<!-- DisableHealthUI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableHealthUI-Examples-End -->

<!-- DisableHealthUI-End -->

<!-- DisableNetworkUI-Begin -->
## DisableNetworkUI

<!-- DisableNetworkUI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DisableNetworkUI-Applicability-End -->

<!-- DisableNetworkUI-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsDefenderSecurityCenter/DisableNetworkUI
```
<!-- DisableNetworkUI-OmaUri-End -->

<!-- DisableNetworkUI-Description-Begin -->
<!-- Description-Source-ADMX -->
Hide the Firewall and network protection area in Windows Security.

Enabled:

The Firewall and network protection area will be hidden.

Disabled:

The Firewall and network protection area will be shown.

Not configured:

Same as Disabled.
<!-- DisableNetworkUI-Description-End -->

<!-- DisableNetworkUI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableNetworkUI-Editable-End -->

<!-- DisableNetworkUI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableNetworkUI-DFProperties-End -->

<!-- DisableNetworkUI-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | (Disable) The users can see the display of the firewall and network protection area in Windows Defender Security Center. |
| 1 | (Enable) The users can't see the display of the firewall and network protection area in Windows Defender Security Center. |
<!-- DisableNetworkUI-AllowedValues-End -->

<!-- DisableNetworkUI-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | FirewallNetworkProtection_UILockdown |
| Friendly Name | Hide the Firewall and network protection area |
| Location | Computer Configuration |
| Path | Windows Components > Windows Security > Firewall and network protection |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Firewall and network protection |
| Registry Value Name | UILockdown |
| ADMX File Name | WindowsDefenderSecurityCenter.admx |
<!-- DisableNetworkUI-GpMapping-End -->

<!-- DisableNetworkUI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableNetworkUI-Examples-End -->

<!-- DisableNetworkUI-End -->

<!-- DisableNotifications-Begin -->
## DisableNotifications

<!-- DisableNotifications-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DisableNotifications-Applicability-End -->

<!-- DisableNotifications-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsDefenderSecurityCenter/DisableNotifications
```
<!-- DisableNotifications-OmaUri-End -->

<!-- DisableNotifications-Description-Begin -->
<!-- Description-Source-ADMX -->
Hide notifications from Windows Security.

Enabled:

Local users won't see notifications from Windows Security.

Disabled:

Local users can see notifications from Windows Security.

Not configured:

Same as Disabled.
<!-- DisableNotifications-Description-End -->

<!-- DisableNotifications-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableNotifications-Editable-End -->

<!-- DisableNotifications-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableNotifications-DFProperties-End -->

<!-- DisableNotifications-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | (Disable) The users can see the display of Windows Defender Security Center notifications. |
| 1 | (Enable) The users can't see the display of Windows Defender Security Center notifications. |
<!-- DisableNotifications-AllowedValues-End -->

<!-- DisableNotifications-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Notifications_DisableNotifications |
| Friendly Name | Hide all notifications |
| Location | Computer Configuration |
| Path | Windows Components > Windows Security > Notifications |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications |
| Registry Value Name | DisableNotifications |
| ADMX File Name | WindowsDefenderSecurityCenter.admx |
<!-- DisableNotifications-GpMapping-End -->

<!-- DisableNotifications-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableNotifications-Examples-End -->

<!-- DisableNotifications-End -->

<!-- DisableTpmFirmwareUpdateWarning-Begin -->
## DisableTpmFirmwareUpdateWarning

<!-- DisableTpmFirmwareUpdateWarning-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- DisableTpmFirmwareUpdateWarning-Applicability-End -->

<!-- DisableTpmFirmwareUpdateWarning-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsDefenderSecurityCenter/DisableTpmFirmwareUpdateWarning
```
<!-- DisableTpmFirmwareUpdateWarning-OmaUri-End -->

<!-- DisableTpmFirmwareUpdateWarning-Description-Begin -->
<!-- Description-Source-ADMX -->
Hide the recommendation to update TPM Firmware when a vulnerable firmware is detected.

Enabled:

Users won't be shown a recommendation to update their TPM Firmware.

Disabled:

Users will see a recommendation to update their TPM Firmware if Windows Security detects the system contains a TPM with vulnerable firmware.

Not configured:

Same as Disabled.
<!-- DisableTpmFirmwareUpdateWarning-Description-End -->

<!-- DisableTpmFirmwareUpdateWarning-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableTpmFirmwareUpdateWarning-Editable-End -->

<!-- DisableTpmFirmwareUpdateWarning-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableTpmFirmwareUpdateWarning-DFProperties-End -->

<!-- DisableTpmFirmwareUpdateWarning-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | (Disable or Not configured) A warning will be displayed if the firmware of the security processor (TPM) should be updated for TPMs that have a vulnerability. |
| 1 | (Enabled) No warning will be displayed if the firmware of the security processor (TPM) should be updated. |
<!-- DisableTpmFirmwareUpdateWarning-AllowedValues-End -->

<!-- DisableTpmFirmwareUpdateWarning-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DeviceSecurity_DisableTpmFirmwareUpdateWarning |
| Friendly Name | Hide the TPM Firmware Update recommendation. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Security > Device security |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Device security |
| Registry Value Name | DisableTpmFirmwareUpdateWarning |
| ADMX File Name | WindowsDefenderSecurityCenter.admx |
<!-- DisableTpmFirmwareUpdateWarning-GpMapping-End -->

<!-- DisableTpmFirmwareUpdateWarning-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableTpmFirmwareUpdateWarning-Examples-End -->

<!-- DisableTpmFirmwareUpdateWarning-End -->

<!-- DisableVirusUI-Begin -->
## DisableVirusUI

<!-- DisableVirusUI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DisableVirusUI-Applicability-End -->

<!-- DisableVirusUI-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsDefenderSecurityCenter/DisableVirusUI
```
<!-- DisableVirusUI-OmaUri-End -->

<!-- DisableVirusUI-Description-Begin -->
<!-- Description-Source-ADMX -->
Hide the Virus and threat protection area in Windows Security.

Enabled:

The Virus and threat protection area will be hidden.

Disabled:

The Virus and threat protection area will be shown.

Not configured:

Same as Disabled.
<!-- DisableVirusUI-Description-End -->

<!-- DisableVirusUI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableVirusUI-Editable-End -->

<!-- DisableVirusUI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableVirusUI-DFProperties-End -->

<!-- DisableVirusUI-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | (Disable) The users can see the display of the virus and threat protection area in Windows Defender Security Center. |
| 1 | (Enable) The users can't see the display of the virus and threat protection area in Windows Defender Security Center. |
<!-- DisableVirusUI-AllowedValues-End -->

<!-- DisableVirusUI-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | VirusThreatProtection_UILockdown |
| Friendly Name | Hide the Virus and threat protection area |
| Location | Computer Configuration |
| Path | Windows Components > Windows Security > Virus and threat protection |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Virus and threat protection |
| Registry Value Name | UILockdown |
| ADMX File Name | WindowsDefenderSecurityCenter.admx |
<!-- DisableVirusUI-GpMapping-End -->

<!-- DisableVirusUI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableVirusUI-Examples-End -->

<!-- DisableVirusUI-End -->

<!-- DisallowExploitProtectionOverride-Begin -->
## DisallowExploitProtectionOverride

<!-- DisallowExploitProtectionOverride-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DisallowExploitProtectionOverride-Applicability-End -->

<!-- DisallowExploitProtectionOverride-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsDefenderSecurityCenter/DisallowExploitProtectionOverride
```
<!-- DisallowExploitProtectionOverride-OmaUri-End -->

<!-- DisallowExploitProtectionOverride-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevent users from making changes to the Exploit protection settings area in Windows Security.

Enabled:

Local users can't make changes in the Exploit protection settings area.

Disabled:

Local users are allowed to make changes in the Exploit protection settings area.

Not configured:

Same as Disabled.
<!-- DisallowExploitProtectionOverride-Description-End -->

<!-- DisallowExploitProtectionOverride-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisallowExploitProtectionOverride-Editable-End -->

<!-- DisallowExploitProtectionOverride-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisallowExploitProtectionOverride-DFProperties-End -->

<!-- DisallowExploitProtectionOverride-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | (Disable) Local users are allowed to make changes in the exploit protection settings area. |
| 1 | (Enable) Local users can't make changes in the exploit protection settings area. |
<!-- DisallowExploitProtectionOverride-AllowedValues-End -->

<!-- DisallowExploitProtectionOverride-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AppBrowserProtection_DisallowExploitProtectionOverride |
| Friendly Name | Prevent users from modifying settings |
| Location | Computer Configuration |
| Path | Windows Components > Windows Security > App and browser protection |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows Defender Security Center\App and Browser protection |
| Registry Value Name | DisallowExploitProtectionOverride |
| ADMX File Name | WindowsDefenderSecurityCenter.admx |
<!-- DisallowExploitProtectionOverride-GpMapping-End -->

<!-- DisallowExploitProtectionOverride-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisallowExploitProtectionOverride-Examples-End -->

<!-- DisallowExploitProtectionOverride-End -->

<!-- Email-Begin -->
## Email

<!-- Email-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Email-Applicability-End -->

<!-- Email-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsDefenderSecurityCenter/Email
```
<!-- Email-OmaUri-End -->

<!-- Email-Description-Begin -->
<!-- Description-Source-ADMX -->
Specify the email address or email ID that will be displayed in Windows Security and associated notifications.

Users can click on the contact information to create an email that will be sent to the specified address. The default email application will be used.

Enabled:

Enter the email address or email ID in the Options section.

Disabled:

A contact email address or email ID won't be shown in either Windows Security or any notifications it creates.

Not configured:

Same as Disabled.
<!-- Email-Description-End -->

<!-- Email-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Email-Editable-End -->

<!-- Email-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Email-DFProperties-End -->

<!-- Email-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | EnterpriseCustomization_Email |
| Friendly Name | Specify contact email address or Email ID |
| Element Name | Email address or email ID. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Security > Enterprise Customization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Enterprise Customization |
| ADMX File Name | WindowsDefenderSecurityCenter.admx |
<!-- Email-GpMapping-End -->

<!-- Email-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Email-Examples-End -->

<!-- Email-End -->

<!-- EnableCustomizedToasts-Begin -->
## EnableCustomizedToasts

<!-- EnableCustomizedToasts-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- EnableCustomizedToasts-Applicability-End -->

<!-- EnableCustomizedToasts-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsDefenderSecurityCenter/EnableCustomizedToasts
```
<!-- EnableCustomizedToasts-OmaUri-End -->

<!-- EnableCustomizedToasts-Description-Begin -->
<!-- Description-Source-ADMX -->
Display specified contact information to local users in Windows Security notifications.

Enabled:

Your company contact information will be displayed in notifications that come from Windows Security.

After setting this to Enabled, you must configure the Specify contact company name GP setting and at least one of the following GP settings:

-Specify contact phone number or Skype ID
-Specify contact email number or email ID
-Specify contact website.

Please note that in some cases we will be limiting the contact options that are displayed based on the notification space available.

Disabled:

No contact information will be shown on notifications.

Not configured:

Same as Disabled.
<!-- EnableCustomizedToasts-Description-End -->

<!-- EnableCustomizedToasts-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableCustomizedToasts-Editable-End -->

<!-- EnableCustomizedToasts-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- EnableCustomizedToasts-DFProperties-End -->

<!-- EnableCustomizedToasts-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Notification text. |
| 1 | (Enable) Notifications contain the company name and contact options. |
<!-- EnableCustomizedToasts-AllowedValues-End -->

<!-- EnableCustomizedToasts-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | EnterpriseCustomization_EnableCustomizedToasts |
| Friendly Name | Configure customized notifications |
| Location | Computer Configuration |
| Path | Windows Components > Windows Security > Enterprise Customization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Enterprise Customization |
| Registry Value Name | EnableForToasts |
| ADMX File Name | WindowsDefenderSecurityCenter.admx |
<!-- EnableCustomizedToasts-GpMapping-End -->

<!-- EnableCustomizedToasts-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableCustomizedToasts-Examples-End -->

<!-- EnableCustomizedToasts-End -->

<!-- EnableInAppCustomization-Begin -->
## EnableInAppCustomization

<!-- EnableInAppCustomization-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- EnableInAppCustomization-Applicability-End -->

<!-- EnableInAppCustomization-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsDefenderSecurityCenter/EnableInAppCustomization
```
<!-- EnableInAppCustomization-OmaUri-End -->

<!-- EnableInAppCustomization-Description-Begin -->
<!-- Description-Source-ADMX -->
Display specified contact information to local users in a contact card flyout menu in Windows Security.

Enabled:

Your company contact information will be displayed in a flyout menu in Windows Security.

After setting this to Enabled, you must configure the Specify contact company name GP setting and at least one of the following GP settings:

-Specify contact phone number or Skype ID
-Specify contact email number or email ID
-Specify contact website.

Disabled:

No contact information will be shown in Windows Security.

Not configured:

Same as Disabled.
<!-- EnableInAppCustomization-Description-End -->

<!-- EnableInAppCustomization-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableInAppCustomization-Editable-End -->

<!-- EnableInAppCustomization-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- EnableInAppCustomization-DFProperties-End -->

<!-- EnableInAppCustomization-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | (Disable) Don't display the company name and contact options in the card fly out notification. |
| 1 | (Enable) Display the company name and contact options in the card fly out notification. |
<!-- EnableInAppCustomization-AllowedValues-End -->

<!-- EnableInAppCustomization-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | EnterpriseCustomization_EnableInAppCustomization |
| Friendly Name | Configure customized contact information |
| Location | Computer Configuration |
| Path | Windows Components > Windows Security > Enterprise Customization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Enterprise Customization |
| Registry Value Name | EnableInApp |
| ADMX File Name | WindowsDefenderSecurityCenter.admx |
<!-- EnableInAppCustomization-GpMapping-End -->

<!-- EnableInAppCustomization-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableInAppCustomization-Examples-End -->

<!-- EnableInAppCustomization-End -->

<!-- HideRansomwareDataRecovery-Begin -->
## HideRansomwareDataRecovery

<!-- HideRansomwareDataRecovery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- HideRansomwareDataRecovery-Applicability-End -->

<!-- HideRansomwareDataRecovery-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsDefenderSecurityCenter/HideRansomwareDataRecovery
```
<!-- HideRansomwareDataRecovery-OmaUri-End -->

<!-- HideRansomwareDataRecovery-Description-Begin -->
<!-- Description-Source-ADMX -->
Hide the Ransomware data recovery area in Windows Security.

Enabled:

The Ransomware data recovery area will be hidden.

Disabled:

The Ransomware data recovery area will be shown.

Not configured:

Same as Disabled.
<!-- HideRansomwareDataRecovery-Description-End -->

<!-- HideRansomwareDataRecovery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HideRansomwareDataRecovery-Editable-End -->

<!-- HideRansomwareDataRecovery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- HideRansomwareDataRecovery-DFProperties-End -->

<!-- HideRansomwareDataRecovery-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | (Disable or not configured) The Ransomware data recovery area will be visible. |
| 1 | (Enable) The Ransomware data recovery area is hidden. |
<!-- HideRansomwareDataRecovery-AllowedValues-End -->

<!-- HideRansomwareDataRecovery-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | VirusThreatProtection_HideRansomwareRecovery |
| Friendly Name | Hide the Ransomware data recovery area |
| Location | Computer Configuration |
| Path | Windows Components > Windows Security > Virus and threat protection |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Virus and threat protection |
| Registry Value Name | HideRansomwareRecovery |
| ADMX File Name | WindowsDefenderSecurityCenter.admx |
<!-- HideRansomwareDataRecovery-GpMapping-End -->

<!-- HideRansomwareDataRecovery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HideRansomwareDataRecovery-Examples-End -->

<!-- HideRansomwareDataRecovery-End -->

<!-- HideSecureBoot-Begin -->
## HideSecureBoot

<!-- HideSecureBoot-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- HideSecureBoot-Applicability-End -->

<!-- HideSecureBoot-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsDefenderSecurityCenter/HideSecureBoot
```
<!-- HideSecureBoot-OmaUri-End -->

<!-- HideSecureBoot-Description-Begin -->
<!-- Description-Source-ADMX -->
Hide the Secure boot area in Windows Security.

Enabled:

The Secure boot area will be hidden.

Disabled:

The Secure boot area will be shown.

Not configured:

Same as Disabled.
<!-- HideSecureBoot-Description-End -->

<!-- HideSecureBoot-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HideSecureBoot-Editable-End -->

<!-- HideSecureBoot-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- HideSecureBoot-DFProperties-End -->

<!-- HideSecureBoot-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | (Disable or not configured) The Secure boot area is displayed. |
| 1 | (Enable) The Secure boot area is hidden. |
<!-- HideSecureBoot-AllowedValues-End -->

<!-- HideSecureBoot-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DeviceSecurity_HideSecureBoot |
| Friendly Name | Hide the Secure boot area |
| Location | Computer Configuration |
| Path | Windows Components > Windows Security > Device security |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Device security |
| Registry Value Name | HideSecureBoot |
| ADMX File Name | WindowsDefenderSecurityCenter.admx |
<!-- HideSecureBoot-GpMapping-End -->

<!-- HideSecureBoot-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HideSecureBoot-Examples-End -->

<!-- HideSecureBoot-End -->

<!-- HideTPMTroubleshooting-Begin -->
## HideTPMTroubleshooting

<!-- HideTPMTroubleshooting-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- HideTPMTroubleshooting-Applicability-End -->

<!-- HideTPMTroubleshooting-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsDefenderSecurityCenter/HideTPMTroubleshooting
```
<!-- HideTPMTroubleshooting-OmaUri-End -->

<!-- HideTPMTroubleshooting-Description-Begin -->
<!-- Description-Source-ADMX -->
Hide the Security processor (TPM) troubleshooting area in Windows Security.

Enabled:

The Security processor (TPM) troubleshooting area will be hidden.

Disabled:

The Security processor (TPM) troubleshooting area will be shown.

Not configured:

Same as Disabled.
<!-- HideTPMTroubleshooting-Description-End -->

<!-- HideTPMTroubleshooting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HideTPMTroubleshooting-Editable-End -->

<!-- HideTPMTroubleshooting-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- HideTPMTroubleshooting-DFProperties-End -->

<!-- HideTPMTroubleshooting-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | (Disable or not configured) The Security processor (TPM) troubleshooting area is displayed. |
| 1 | (Enable) The Security processor (TPM) troubleshooting area is hidden. |
<!-- HideTPMTroubleshooting-AllowedValues-End -->

<!-- HideTPMTroubleshooting-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DeviceSecurity_HideTPMTroubleshooting |
| Friendly Name | Hide the Security processor (TPM) troubleshooter page |
| Location | Computer Configuration |
| Path | Windows Components > Windows Security > Device security |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Device security |
| Registry Value Name | HideTPMTroubleshooting |
| ADMX File Name | WindowsDefenderSecurityCenter.admx |
<!-- HideTPMTroubleshooting-GpMapping-End -->

<!-- HideTPMTroubleshooting-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HideTPMTroubleshooting-Examples-End -->

<!-- HideTPMTroubleshooting-End -->

<!-- HideWindowsSecurityNotificationAreaControl-Begin -->
## HideWindowsSecurityNotificationAreaControl

<!-- HideWindowsSecurityNotificationAreaControl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- HideWindowsSecurityNotificationAreaControl-Applicability-End -->

<!-- HideWindowsSecurityNotificationAreaControl-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsDefenderSecurityCenter/HideWindowsSecurityNotificationAreaControl
```
<!-- HideWindowsSecurityNotificationAreaControl-OmaUri-End -->

<!-- HideWindowsSecurityNotificationAreaControl-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting hides the Windows Security notification area control.

The user needs to either sign out and sign in or reboot the computer for this setting to take effect.

Enabled:

Windows Security notification area control will be hidden.

Disabled:

Windows Security notification area control will be shown.

Not configured:

Same as Disabled.
<!-- HideWindowsSecurityNotificationAreaControl-Description-End -->

<!-- HideWindowsSecurityNotificationAreaControl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HideWindowsSecurityNotificationAreaControl-Editable-End -->

<!-- HideWindowsSecurityNotificationAreaControl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- HideWindowsSecurityNotificationAreaControl-DFProperties-End -->

<!-- HideWindowsSecurityNotificationAreaControl-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | . |
| 1 | Enabled. |
<!-- HideWindowsSecurityNotificationAreaControl-AllowedValues-End -->

<!-- HideWindowsSecurityNotificationAreaControl-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Systray_HideSystray |
| Friendly Name | Hide Windows Security Systray |
| Location | Computer Configuration |
| Path | Windows Components > Windows Security > Systray |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray |
| Registry Value Name | HideSystray |
| ADMX File Name | WindowsDefenderSecurityCenter.admx |
<!-- HideWindowsSecurityNotificationAreaControl-GpMapping-End -->

<!-- HideWindowsSecurityNotificationAreaControl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HideWindowsSecurityNotificationAreaControl-Examples-End -->

<!-- HideWindowsSecurityNotificationAreaControl-End -->

<!-- Phone-Begin -->
## Phone

<!-- Phone-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Phone-Applicability-End -->

<!-- Phone-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsDefenderSecurityCenter/Phone
```
<!-- Phone-OmaUri-End -->

<!-- Phone-Description-Begin -->
<!-- Description-Source-ADMX -->
Specify the phone number or Skype ID that will be displayed in Windows Security and associated notifications.

Users can click on the contact information to automatically call the supplied number. Skype will be used to initiate the call.

Enabled:

Enter the phone number or Skype ID in the Options section.

Disabled:

A contact phone number or Skype ID won't be shown in either Windows Security or any notifications it creates.

Not configured:

Same as Disabled.
<!-- Phone-Description-End -->

<!-- Phone-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Phone-Editable-End -->

<!-- Phone-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Phone-DFProperties-End -->

<!-- Phone-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | EnterpriseCustomization_Phone |
| Friendly Name | Specify contact phone number or Skype ID |
| Element Name | Phone number or Skype ID. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Security > Enterprise Customization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Enterprise Customization |
| ADMX File Name | WindowsDefenderSecurityCenter.admx |
<!-- Phone-GpMapping-End -->

<!-- Phone-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Phone-Examples-End -->

<!-- Phone-End -->

<!-- URL-Begin -->
## URL

<!-- URL-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- URL-Applicability-End -->

<!-- URL-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsDefenderSecurityCenter/URL
```
<!-- URL-OmaUri-End -->

<!-- URL-Description-Begin -->
<!-- Description-Source-ADMX -->
Specify the URL that will be displayed in Windows Security and associated notifications.

Users can click on the contact information to visit the specified website. The default web browser will be used.

Enabled:

Enter the URL in the Options section.

Disabled:

A contact website URL won't be shown in either Windows Security or any notifications it creates.

Not configured:

Same as Disabled.
<!-- URL-Description-End -->

<!-- URL-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- URL-Editable-End -->

<!-- URL-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- URL-DFProperties-End -->

<!-- URL-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | EnterpriseCustomization_URL |
| Friendly Name | Specify contact website |
| Element Name | IT or support website. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Security > Enterprise Customization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Enterprise Customization |
| ADMX File Name | WindowsDefenderSecurityCenter.admx |
<!-- URL-GpMapping-End -->

<!-- URL-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- URL-Examples-End -->

<!-- URL-End -->

<!-- WindowsDefenderSecurityCenter-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- WindowsDefenderSecurityCenter-CspMoreInfo-End -->

<!-- WindowsDefenderSecurityCenter-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
