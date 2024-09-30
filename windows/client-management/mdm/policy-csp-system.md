---
title: System Policy CSP
description: Learn more about the System Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- System-Begin -->
# Policy CSP - System

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- System-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- System-Editable-End -->

<!-- AllowBuildPreview-Begin -->
## AllowBuildPreview

<!-- AllowBuildPreview-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowBuildPreview-Applicability-End -->

<!-- AllowBuildPreview-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/AllowBuildPreview
```
<!-- AllowBuildPreview-OmaUri-End -->

<!-- AllowBuildPreview-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether users can get preview builds of Windows, by configuring controls in Settings > Update and security > Windows Insider Program.

- If you enable or don't configure this policy setting, users can download and install preview builds of Windows by configuring Windows Insider Program settings.

- If you disable this policy setting, Windows Insider Program settings will be unavailable to users through the Settings app.

This policy is only supported up to Windows 10, Version 1703. Please use 'Manage preview builds' under 'Windows Update for Business' for newer Windows 10 versions.
<!-- AllowBuildPreview-Description-End -->

<!-- AllowBuildPreview-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowBuildPreview-Editable-End -->

<!-- AllowBuildPreview-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 2 |
<!-- AllowBuildPreview-DFProperties-End -->

<!-- AllowBuildPreview-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. The item "Get Insider builds" is unavailable, users are unable to make their devices available for preview software. |
| 1 | Allowed. Users can make their devices available for downloading and installing preview software. |
| 2 (Default) | Not configured. Users can make their devices available for downloading and installing preview software. |
<!-- AllowBuildPreview-AllowedValues-End -->

<!-- AllowBuildPreview-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowBuildPreview |
| Friendly Name | Toggle user control over Insider builds |
| Location | Computer Configuration |
| Path | WindowsComponents > Data Collection and Preview Builds |
| Registry Key Name | Software\Policies\Microsoft\Windows\PreviewBuilds |
| Registry Value Name | AllowBuildPreview |
| ADMX File Name | AllowBuildPreview.admx |
<!-- AllowBuildPreview-GpMapping-End -->

<!-- AllowBuildPreview-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowBuildPreview-Examples-End -->

<!-- AllowBuildPreview-End -->

<!-- AllowCommercialDataPipeline-Begin -->
## AllowCommercialDataPipeline

<!-- AllowCommercialDataPipeline-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- AllowCommercialDataPipeline-Applicability-End -->

<!-- AllowCommercialDataPipeline-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/AllowCommercialDataPipeline
```
<!-- AllowCommercialDataPipeline-OmaUri-End -->

<!-- AllowCommercialDataPipeline-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy is deprecated and will only work on Windows 10 version 1809. Setting this policy will have no effect for other supported versions of Windows.

AllowCommercialDataPipeline configures a Microsoft Entra joined device so that Microsoft is the processor of the Windows diagnostic data collected from the device, subject to the Product Terms at< https://go.microsoft.com/fwlink/?linkid=2185086>.

To enable this behavior:

1. Enable this policy setting
1. Join a Microsoft Entra account to the device.

Windows diagnostic data is collected when the Allow Telemetry policy setting is set to value 1 - Required or above. Configuring this setting doesn't change the Windows diagnostic data collection level set for the device.

If you disable or don't configure this setting, Microsoft will be the controller of the Windows diagnostic data collected from the device and processed in accordance with Microsoft's privacy statement at <https://go.microsoft.com/fwlink/?LinkId=521839> unless you have enabled policies like 'Allow Update Compliance Processing' or 'Allow Desktop Analytics Processing'.

See the documentation at <https://go.microsoft.com/fwlink/?linkid=2011107> for information on this and other policies that will result in Microsoft being the processor of Windows diagnostic data.
<!-- AllowCommercialDataPipeline-Description-End -->

<!-- AllowCommercialDataPipeline-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Configuring this setting doesn't affect the operation of optional analytics processor services like Desktop Analytics and Windows Update for Business reports.

> [!NOTE]
> Starting with the January 2023 preview cumulative update, this policy is no longer supported to configure the processor option. For more information, see [Enable Windows diagnostic data processor configuration](/windows/privacy/configure-windows-diagnostic-data-in-your-organization#enable-windows-diagnostic-data-processor-configuration).
<!-- AllowCommercialDataPipeline-Editable-End -->

<!-- AllowCommercialDataPipeline-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowCommercialDataPipeline-DFProperties-End -->

<!-- AllowCommercialDataPipeline-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- AllowCommercialDataPipeline-AllowedValues-End -->

<!-- AllowCommercialDataPipeline-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowCommercialDataPipeline |
| Friendly Name | Allow commercial data pipeline |
| Location | Computer Configuration |
| Path | WindowsComponents > Data Collection and Preview Builds |
| Registry Key Name | Software\Policies\Microsoft\Windows\DataCollection |
| ADMX File Name | DataCollection.admx |
<!-- AllowCommercialDataPipeline-GpMapping-End -->

<!-- AllowCommercialDataPipeline-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowCommercialDataPipeline-Examples-End -->

<!-- AllowCommercialDataPipeline-End -->

<!-- AllowDesktopAnalyticsProcessing-Begin -->
## AllowDesktopAnalyticsProcessing

<!-- AllowDesktopAnalyticsProcessing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 with [KB4551853](https://support.microsoft.com/help/4551853) [10.0.17763.1217] and later <br> ✅ Windows 10, version 1903 with [KB4556799](https://support.microsoft.com/help/4556799) [10.0.18362.836] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowDesktopAnalyticsProcessing-Applicability-End -->

<!-- AllowDesktopAnalyticsProcessing-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/AllowDesktopAnalyticsProcessing
```
<!-- AllowDesktopAnalyticsProcessing-OmaUri-End -->

<!-- AllowDesktopAnalyticsProcessing-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy is deprecated and will only work on Windows 10 version 1809. Setting this policy will have no effect for other supported versions of Windows.

This policy setting, in combination with the Allow Telemetry and Configure the Commercial ID, enables organizations to configure the device so that Microsoft is the processor for Windows diagnostic data collected from the device, subject to the Product Terms at< https://go.microsoft.com/fwlink/?linkid=2185086>.

To enable this behavior:

1. Enable this policy setting
1. Join a Microsoft Entra account to the device.

1. Set Allow Telemetry to value 1 - Required, or higher
1. Set the Configure the Commercial ID setting for your Desktop Analytics workspace.

When these policies are configured, Windows diagnostic data collected from the device will be subject to Microsoft processor commitments.

This setting has no effect on devices unless they're properly enrolled in Desktop Analytics. If you disable this policy setting, devices won't appear in Desktop Analytics.
<!-- AllowDesktopAnalyticsProcessing-Description-End -->

<!-- AllowDesktopAnalyticsProcessing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Starting with the January 2023 preview cumulative update, this policy is no longer supported to configure the processor option. For more information, see [Enable Windows diagnostic data processor configuration](/windows/privacy/configure-windows-diagnostic-data-in-your-organization#enable-windows-diagnostic-data-processor-configuration).
<!-- AllowDesktopAnalyticsProcessing-Editable-End -->

<!-- AllowDesktopAnalyticsProcessing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowDesktopAnalyticsProcessing-DFProperties-End -->

<!-- AllowDesktopAnalyticsProcessing-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 2 | Allowed. |
<!-- AllowDesktopAnalyticsProcessing-AllowedValues-End -->

<!-- AllowDesktopAnalyticsProcessing-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowDesktopAnalyticsProcessing |
| Friendly Name | Allow Desktop Analytics Processing |
| Location | Computer Configuration |
| Path | WindowsComponents > Data Collection and Preview Builds |
| Registry Key Name | Software\Policies\Microsoft\Windows\DataCollection |
| ADMX File Name | DataCollection.admx |
<!-- AllowDesktopAnalyticsProcessing-GpMapping-End -->

<!-- AllowDesktopAnalyticsProcessing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowDesktopAnalyticsProcessing-Examples-End -->

<!-- AllowDesktopAnalyticsProcessing-End -->

<!-- AllowDeviceNameInDiagnosticData-Begin -->
## AllowDeviceNameInDiagnosticData

<!-- AllowDeviceNameInDiagnosticData-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- AllowDeviceNameInDiagnosticData-Applicability-End -->

<!-- AllowDeviceNameInDiagnosticData-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/AllowDeviceNameInDiagnosticData
```
<!-- AllowDeviceNameInDiagnosticData-OmaUri-End -->

<!-- AllowDeviceNameInDiagnosticData-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy allows the device name to be sent to Microsoft as part of Windows diagnostic data.

If you disable or don't configure this policy setting, then device name won't be sent to Microsoft as part of Windows diagnostic data.
<!-- AllowDeviceNameInDiagnosticData-Description-End -->

<!-- AllowDeviceNameInDiagnosticData-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowDeviceNameInDiagnosticData-Editable-End -->

<!-- AllowDeviceNameInDiagnosticData-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowDeviceNameInDiagnosticData-DFProperties-End -->

<!-- AllowDeviceNameInDiagnosticData-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Allowed. |
<!-- AllowDeviceNameInDiagnosticData-AllowedValues-End -->

<!-- AllowDeviceNameInDiagnosticData-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowDeviceNameInDiagnosticData |
| Friendly Name | Allow device name to be sent in Windows diagnostic data |
| Location | Computer Configuration |
| Path | WindowsComponents > Data Collection and Preview Builds |
| Registry Key Name | Software\Policies\Microsoft\Windows\DataCollection |
| ADMX File Name | DataCollection.admx |
<!-- AllowDeviceNameInDiagnosticData-GpMapping-End -->

<!-- AllowDeviceNameInDiagnosticData-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowDeviceNameInDiagnosticData-Examples-End -->

<!-- AllowDeviceNameInDiagnosticData-End -->

<!-- AllowEmbeddedMode-Begin -->
## AllowEmbeddedMode

<!-- AllowEmbeddedMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowEmbeddedMode-Applicability-End -->

<!-- AllowEmbeddedMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/AllowEmbeddedMode
```
<!-- AllowEmbeddedMode-OmaUri-End -->

<!-- AllowEmbeddedMode-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether set general purpose device to be in embedded mode. Most restricted value is 0.
<!-- AllowEmbeddedMode-Description-End -->

<!-- AllowEmbeddedMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowEmbeddedMode-Editable-End -->

<!-- AllowEmbeddedMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowEmbeddedMode-DFProperties-End -->

<!-- AllowEmbeddedMode-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not allowed. |
| 1 | Allowed. |
<!-- AllowEmbeddedMode-AllowedValues-End -->

<!-- AllowEmbeddedMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowEmbeddedMode-Examples-End -->

<!-- AllowEmbeddedMode-End -->

<!-- AllowExperimentation-Begin -->
## AllowExperimentation

<!-- AllowExperimentation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowExperimentation-Applicability-End -->

<!-- AllowExperimentation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/AllowExperimentation
```
<!-- AllowExperimentation-OmaUri-End -->

<!-- AllowExperimentation-Description-Begin -->
<!-- Description-Source-DDF -->

> [!NOTE]
> This policy isn't supported in Windows 10, version 1607. This policy setting determines the level that Microsoft can experiment with the product to study user preferences or device behavior. Most restricted value is 0.
<!-- AllowExperimentation-Description-End -->

<!-- AllowExperimentation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowExperimentation-Editable-End -->

<!-- AllowExperimentation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowExperimentation-DFProperties-End -->

<!-- AllowExperimentation-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 (Default) | Permits Microsoft to configure device settings only. |
| 2 | Allows Microsoft to conduct full experimentation. |
<!-- AllowExperimentation-AllowedValues-End -->

<!-- AllowExperimentation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowExperimentation-Examples-End -->

<!-- AllowExperimentation-End -->

<!-- AllowFontProviders-Begin -->
## AllowFontProviders

<!-- AllowFontProviders-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowFontProviders-Applicability-End -->

<!-- AllowFontProviders-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/AllowFontProviders
```
<!-- AllowFontProviders-OmaUri-End -->

<!-- AllowFontProviders-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether Windows is allowed to download fonts and font catalog data from an online font provider.

- If you enable this policy setting, Windows periodically queries an online font provider to determine whether a new font catalog is available. Windows may also download font data if needed to format or render text.

- If you disable this policy setting, Windows doesn't connect to an online font provider and only enumerates locally-installed fonts.

- If you don't configure this policy setting, the default behavior depends on the Windows edition. Changes to this policy take effect on reboot.
<!-- AllowFontProviders-Description-End -->

<!-- AllowFontProviders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This MDM setting corresponds to the EnableFontProviders Group Policy setting. If both the Group Policy and the MDM settings are configured, the group policy setting takes precedence. If neither is configured, the behavior depends on a DisableFontProviders registry value. In server editions, this registry value is set to 1 by default, so the default behavior is false (disabled). In all other editions, the registry value isn't set by default, so the default behavior is true (enabled).

This setting is used by lower-level components for text display and fond handling and hasn't direct effect on web browsers, which may download web fonts used in web content.

> [!NOTE]
> Reboot is required after setting the policy; alternatively you can stop and restart the FontCache service.
<!-- AllowFontProviders-Editable-End -->

<!-- AllowFontProviders-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowFontProviders-DFProperties-End -->

<!-- AllowFontProviders-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. No traffic to fs.microsoft.com and only locally installed fonts are available. |
| 1 (Default) | Allowed. There may be network traffic to fs.microsoft.com and downloadable fonts are available to apps that support them. |
<!-- AllowFontProviders-AllowedValues-End -->

<!-- AllowFontProviders-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | EnableFontProviders |
| Friendly Name | Enable Font Providers |
| Location | Computer Configuration |
| Path | Network > Fonts |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | EnableFontProviders |
| ADMX File Name | GroupPolicy.admx |
<!-- AllowFontProviders-GpMapping-End -->

<!-- AllowFontProviders-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowFontProviders-Examples-End -->

<!-- AllowFontProviders-End -->

<!-- AllowLocation-Begin -->
## AllowLocation

<!-- AllowLocation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowLocation-Applicability-End -->

<!-- AllowLocation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/AllowLocation
```
<!-- AllowLocation-OmaUri-End -->

<!-- AllowLocation-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether to allow app access to the Location service. Most restricted value is 0. While the policy is set to 0 (Force Location Off) or 2 (Force Location On), any Location service call from an app would trigger the value set by this policy. When switching the policy back from 0 (Force Location Off) or 2 (Force Location On) to 1 (User Control), the app reverts to its original Location service setting. For example, an app's original Location setting is Off. The administrator then sets the AllowLocation policy to 2 (Force Location On. ) The Location service starts working for that app, overriding the original setting. Later, if the administrator switches the AllowLocation policy back to 1 (User Control), the app will revert to using its original setting of Off.
<!-- AllowLocation-Description-End -->

<!-- AllowLocation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowLocation-Editable-End -->

<!-- AllowLocation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowLocation-DFProperties-End -->

<!-- AllowLocation-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Force Location Off. All Location Privacy settings are toggled off and grayed out. Users can't change the settings, and no apps are allowed access to the Location service, including Cortana and Search. |
| 1 (Default) | Location service is allowed. The user has control and can change Location Privacy settings on or off. |
| 2 | Force Location On. All Location Privacy settings are toggled on and grayed out. Users can't change the settings and all consent permissions will be automatically suppressed. |
<!-- AllowLocation-AllowedValues-End -->

<!-- AllowLocation-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableLocation_2 |
| Friendly Name | Turn off location |
| Location | Computer Configuration |
| Path | Windows Components > Location and Sensors |
| Registry Key Name | Software\Policies\Microsoft\Windows\LocationAndSensors |
| Registry Value Name | DisableLocation |
| ADMX File Name | Sensors.admx |
<!-- AllowLocation-GpMapping-End -->

<!-- AllowLocation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowLocation-Examples-End -->

<!-- AllowLocation-End -->

<!-- AllowMicrosoftManagedDesktopProcessing-Begin -->
## AllowMicrosoftManagedDesktopProcessing

<!-- AllowMicrosoftManagedDesktopProcessing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 with [KB4551853](https://support.microsoft.com/help/4551853) [10.0.17763.1217] and later <br> ✅ Windows 10, version 1903 with [KB4556799](https://support.microsoft.com/help/4556799) [10.0.18362.836] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowMicrosoftManagedDesktopProcessing-Applicability-End -->

<!-- AllowMicrosoftManagedDesktopProcessing-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/AllowMicrosoftManagedDesktopProcessing
```
<!-- AllowMicrosoftManagedDesktopProcessing-OmaUri-End -->

<!-- AllowMicrosoftManagedDesktopProcessing-Description-Begin -->
<!-- Description-Source-DDF -->
This policy is deprecated and will only work on Windows 10 version 1809. Setting this policy will have no effect for other supported versions of Windows.
This policy setting configures a Microsoft Entra joined device so that Microsoft is the processor of the Windows diagnostic data collected from the device, subject to the Product Terms at< https://go.microsoft.com/fwlink/?linkid=2185086>.
For customers who enroll into the Microsoft Managed Desktop service, enabling this policy is required to allow Microsoft to process data for operational and analytic needs. See <https://go.microsoft.com/fwlink/?linkid=2184944> for more information.
hen these policies are configured, Windows diagnostic data collected from the device will be subject to Microsoft processor commitments.
This setting has no effect on devices unless they're properly enrolled in Microsoft Managed Desktop. If you disable this policy setting, devices may not appear in Microsoft Managed Desktop.
<!-- AllowMicrosoftManagedDesktopProcessing-Description-End -->

<!-- AllowMicrosoftManagedDesktopProcessing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Starting with the January 2023 preview cumulative update, this policy is no longer supported to configure the processor option. For more information, see [Enable Windows diagnostic data processor configuration](/windows/privacy/configure-windows-diagnostic-data-in-your-organization#enable-windows-diagnostic-data-processor-configuration).
<!-- AllowMicrosoftManagedDesktopProcessing-Editable-End -->

<!-- AllowMicrosoftManagedDesktopProcessing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowMicrosoftManagedDesktopProcessing-DFProperties-End -->

<!-- AllowMicrosoftManagedDesktopProcessing-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 32 | Allowed. |
<!-- AllowMicrosoftManagedDesktopProcessing-AllowedValues-End -->

<!-- AllowMicrosoftManagedDesktopProcessing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowMicrosoftManagedDesktopProcessing-Examples-End -->

<!-- AllowMicrosoftManagedDesktopProcessing-End -->

<!-- AllowStorageCard-Begin -->
## AllowStorageCard

<!-- AllowStorageCard-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowStorageCard-Applicability-End -->

<!-- AllowStorageCard-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/AllowStorageCard
```
<!-- AllowStorageCard-OmaUri-End -->

<!-- AllowStorageCard-Description-Begin -->
<!-- Description-Source-DDF -->
Controls whether the user is allowed to use the storage card for device storage. This setting prevents programmatic access to the storage card. Most restricted value is 0.
<!-- AllowStorageCard-Description-End -->

<!-- AllowStorageCard-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowStorageCard-Editable-End -->

<!-- AllowStorageCard-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowStorageCard-DFProperties-End -->

<!-- AllowStorageCard-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | SD card use isn't allowed and USB drives are disabled. This setting doesn't prevent programmatic access to the storage card. |
| 1 (Default) | Allow a storage card. |
<!-- AllowStorageCard-AllowedValues-End -->

<!-- AllowStorageCard-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowStorageCard-Examples-End -->

<!-- AllowStorageCard-End -->

<!-- AllowTelemetry-Begin -->
## AllowTelemetry

<!-- AllowTelemetry-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowTelemetry-Applicability-End -->

<!-- AllowTelemetry-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/System/AllowTelemetry
```

```Device
./Device/Vendor/MSFT/Policy/Config/System/AllowTelemetry
```
<!-- AllowTelemetry-OmaUri-End -->

<!-- AllowTelemetry-Description-Begin -->
<!-- Description-Source-ADMX -->
By configuring this policy setting you can adjust what diagnostic data is collected from Windows. This policy setting also restricts the user from increasing the amount of diagnostic data collection via the Settings app. The diagnostic data collected under this policy impacts the operating system and apps that are considered part of Windows and doesn't apply to any additional apps installed by your organization.

- Diagnostic data off (not recommended). Using this value, no diagnostic data is sent from the device. This value is only supported on Enterprise, Education, and Server editions.

- Send required diagnostic data. This is the minimum diagnostic data necessary to keep Windows secure, up to date, and performing as expected. Using this value disables the "Optional diagnostic data" control in the Settings app.

- Send optional diagnostic data. Additional diagnostic data is collected that helps us to detect, diagnose and fix issues, as well as make product improvements. Required diagnostic data will always be included when you choose to send optional diagnostic data. Optional diagnostic data can also include diagnostic log files and crash dumps. Use the "Limit Dump Collection" and the "Limit Diagnostic Log Collection" policies for more granular control of what optional diagnostic data is sent.

If you disable or don't configure this policy setting, the device will send required diagnostic data and the end user can choose whether to send optional diagnostic data from the Settings app.

> [!NOTE]
> The "Configure diagnostic data opt-in settings user interface" group policy can be used to prevent end users from changing their data collection settings.
<!-- AllowTelemetry-Description-End -->

<!-- AllowTelemetry-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowTelemetry-Editable-End -->

<!-- AllowTelemetry-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowTelemetry-DFProperties-End -->

<!-- AllowTelemetry-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Security. Information that's required to help keep Windows more secure, including data about the Connected User Experience and Telemetry component settings, the Malicious Software Removal Tool, and Windows Defender.<br>Note: This value is only applicable to Windows 10 Enterprise, Windows 10 Education, Windows 10 Mobile Enterprise, Windows 10 IoT Core (IoT Core), and Windows Server 2016. Using this setting on other devices is equivalent to setting the value of 1. |
| 1 (Default) | Basic. Basic device info, including: quality-related data, app compatibility, app usage data, and data from the Security level. |
| 3 | Full. All data necessary to identify and help to fix problems, plus data from the Security, Basic, and Enhanced levels. |
<!-- AllowTelemetry-AllowedValues-End -->

<!-- AllowTelemetry-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowTelemetry |
| Friendly Name | Allow Diagnostic Data |
| Location | Computer and User Configuration |
| Path | WindowsComponents > Data Collection and Preview Builds |
| Registry Key Name | Software\Policies\Microsoft\Windows\DataCollection |
| ADMX File Name | DataCollection.admx |
<!-- AllowTelemetry-GpMapping-End -->

<!-- AllowTelemetry-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowTelemetry-Examples-End -->

<!-- AllowTelemetry-End -->

<!-- AllowUpdateComplianceProcessing-Begin -->
## AllowUpdateComplianceProcessing

<!-- AllowUpdateComplianceProcessing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 with [KB4551853](https://support.microsoft.com/help/4551853) [10.0.17763.1217] and later <br> ✅ Windows 10, version 1903 with [KB4556799](https://support.microsoft.com/help/4556799) [10.0.18362.836] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowUpdateComplianceProcessing-Applicability-End -->

<!-- AllowUpdateComplianceProcessing-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/AllowUpdateComplianceProcessing
```
<!-- AllowUpdateComplianceProcessing-OmaUri-End -->

<!-- AllowUpdateComplianceProcessing-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy is deprecated and will only work on Windows 10 version 1809. Setting this policy will have no effect for other supported versions of Windows.

This policy setting, in combination with the Allow Telemetry and Configure the Commercial ID, enables organizations to configure the device so that Microsoft is the processor of the Windows diagnostic data collected from the device, subject to the Product Terms at< https://go.microsoft.com/fwlink/?linkid=2185086>.

To enable this behavior:

1. Enable this policy setting
1. Join a Microsoft Entra account to the device.

1. Set Allow Telemetry to value 1 - Required, or higher
1. Set the Configure the Commercial ID setting for your Update Compliance workspace.

When these policies are configured, Windows diagnostic data collected from the device will be subject to Microsoft processor commitments.

If you disable or don't configure this policy setting, devices won't appear in Update Compliance.
<!-- AllowUpdateComplianceProcessing-Description-End -->

<!-- AllowUpdateComplianceProcessing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Starting with the January 2023 preview cumulative update, this policy is no longer supported to configure the processor option. For more information, see [Enable Windows diagnostic data processor configuration](/windows/privacy/configure-windows-diagnostic-data-in-your-organization#enable-windows-diagnostic-data-processor-configuration).
<!-- AllowUpdateComplianceProcessing-Editable-End -->

<!-- AllowUpdateComplianceProcessing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowUpdateComplianceProcessing-DFProperties-End -->

<!-- AllowUpdateComplianceProcessing-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 16 | Enabled. |
<!-- AllowUpdateComplianceProcessing-AllowedValues-End -->

<!-- AllowUpdateComplianceProcessing-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowUpdateComplianceProcessing |
| Friendly Name | Allow Update Compliance Processing |
| Location | Computer Configuration |
| Path | WindowsComponents > Data Collection and Preview Builds |
| Registry Key Name | Software\Policies\Microsoft\Windows\DataCollection |
| ADMX File Name | DataCollection.admx |
<!-- AllowUpdateComplianceProcessing-GpMapping-End -->

<!-- AllowUpdateComplianceProcessing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowUpdateComplianceProcessing-Examples-End -->

<!-- AllowUpdateComplianceProcessing-End -->

<!-- AllowUserToResetPhone-Begin -->
## AllowUserToResetPhone

<!-- AllowUserToResetPhone-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowUserToResetPhone-Applicability-End -->

<!-- AllowUserToResetPhone-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/AllowUserToResetPhone
```
<!-- AllowUserToResetPhone-OmaUri-End -->

<!-- AllowUserToResetPhone-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether to allow the user to factory reset the device by using control panel and hardware key combination. Most restricted value is 0. Tip, This policy is also applicable to Windows 10 and not exclusive to phone.
<!-- AllowUserToResetPhone-Description-End -->

<!-- AllowUserToResetPhone-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowUserToResetPhone-Editable-End -->

<!-- AllowUserToResetPhone-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowUserToResetPhone-DFProperties-End -->

<!-- AllowUserToResetPhone-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed to reset to factory default settings. |
<!-- AllowUserToResetPhone-AllowedValues-End -->

<!-- AllowUserToResetPhone-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowUserToResetPhone-Examples-End -->

<!-- AllowUserToResetPhone-End -->

<!-- AllowWUfBCloudProcessing-Begin -->
## AllowWUfBCloudProcessing

<!-- AllowWUfBCloudProcessing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 with [KB4551853](https://support.microsoft.com/help/4551853) [10.0.17763.1217] and later <br> ✅ Windows 10, version 1903 with [KB4556799](https://support.microsoft.com/help/4556799) [10.0.18362.836] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowWUfBCloudProcessing-Applicability-End -->

<!-- AllowWUfBCloudProcessing-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/AllowWUfBCloudProcessing
```
<!-- AllowWUfBCloudProcessing-OmaUri-End -->

<!-- AllowWUfBCloudProcessing-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy is deprecated and will only work on Windows 10 version 1809. Setting this policy will have no effect for other supported versions of Windows.

This policy setting configures a Microsoft Entra joined device so that Microsoft is the processor of the Windows diagnostic data collected from the device, subject to the Product Terms at< https://go.microsoft.com/fwlink/?linkid=2185086>.

To enable this behavior:

1. Enable this policy setting
1. Join a Microsoft Entra account to the device.

1. Set Allow Telemetry to value 1 - Required, or higher.

When these policies are configured, Windows diagnostic data collected from the device will be subject to Microsoft processor commitments.

If you disable or don't configure this policy setting, devices enrolled to the Windows Update for Business deployment service won't be able to take advantage of some deployment service features.
<!-- AllowWUfBCloudProcessing-Description-End -->

<!-- AllowWUfBCloudProcessing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Starting with the January 2023 preview cumulative update, this policy is no longer supported to configure the processor option. For more information, see [Enable Windows diagnostic data processor configuration](/windows/privacy/configure-windows-diagnostic-data-in-your-organization#enable-windows-diagnostic-data-processor-configuration).
<!-- AllowWUfBCloudProcessing-Editable-End -->

<!-- AllowWUfBCloudProcessing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowWUfBCloudProcessing-DFProperties-End -->

<!-- AllowWUfBCloudProcessing-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 8 | Enabled. |
<!-- AllowWUfBCloudProcessing-AllowedValues-End -->

<!-- AllowWUfBCloudProcessing-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowWUfBCloudProcessing |
| Friendly Name | Allow WUfB Cloud Processing |
| Location | Computer Configuration |
| Path | WindowsComponents > Data Collection and Preview Builds |
| Registry Key Name | Software\Policies\Microsoft\Windows\DataCollection |
| ADMX File Name | DataCollection.admx |
<!-- AllowWUfBCloudProcessing-GpMapping-End -->

<!-- AllowWUfBCloudProcessing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowWUfBCloudProcessing-Examples-End -->

<!-- AllowWUfBCloudProcessing-End -->

<!-- BootStartDriverInitialization-Begin -->
## BootStartDriverInitialization

<!-- BootStartDriverInitialization-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- BootStartDriverInitialization-Applicability-End -->

<!-- BootStartDriverInitialization-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/BootStartDriverInitialization
```
<!-- BootStartDriverInitialization-OmaUri-End -->

<!-- BootStartDriverInitialization-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify which boot-start drivers are initialized based on a classification determined by an Early Launch Antimalware boot-start driver. The Early Launch Antimalware boot-start driver can return the following classifications for each boot-start driver:

- Good: The driver has been signed and hasn't been tampered with.

- Bad: The driver has been identified as malware. It's recommended that you don't allow known bad drivers to be initialized.

- Bad, but required for boot: The driver has been identified as malware, but the computer can't successfully boot without loading this driver.

- Unknown: This driver hasn't been attested to by your malware detection application and hasn't been classified by the Early Launch Antimalware boot-start driver.

- If you enable this policy setting you'll be able to choose which boot-start drivers to initialize the next time the computer is started.

- If you disable or don't configure this policy setting, the boot start drivers determined to be Good, Unknown or Bad but Boot Critical are initialized and the initialization of drivers determined to be Bad is skipped.

If your malware detection application doesn't include an Early Launch Antimalware boot-start driver or if your Early Launch Antimalware boot-start driver has been disabled, this setting has no effect and all boot-start drivers are initialized.
<!-- BootStartDriverInitialization-Description-End -->

<!-- BootStartDriverInitialization-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BootStartDriverInitialization-Editable-End -->

<!-- BootStartDriverInitialization-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- BootStartDriverInitialization-DFProperties-End -->

<!-- BootStartDriverInitialization-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | POL_DriverLoadPolicy_Name |
| Friendly Name | Boot-Start Driver Initialization Policy |
| Location | Computer Configuration |
| Path | System > Early Launch Antimalware |
| Registry Key Name | System\CurrentControlSet\Policies\EarlyLaunch |
| Registry Value Name | DriverLoadPolicy |
| ADMX File Name | EarlyLaunchAM.admx |
<!-- BootStartDriverInitialization-AdmxBacked-End -->

<!-- BootStartDriverInitialization-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BootStartDriverInitialization-Examples-End -->

<!-- BootStartDriverInitialization-End -->

<!-- ConfigureMicrosoft365UploadEndpoint-Begin -->
## ConfigureMicrosoft365UploadEndpoint

<!-- ConfigureMicrosoft365UploadEndpoint-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- ConfigureMicrosoft365UploadEndpoint-Applicability-End -->

<!-- ConfigureMicrosoft365UploadEndpoint-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/ConfigureMicrosoft365UploadEndpoint
```
<!-- ConfigureMicrosoft365UploadEndpoint-OmaUri-End -->

<!-- ConfigureMicrosoft365UploadEndpoint-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy sets the upload endpoint for this device's diagnostic data as part of the Desktop Analytics program.

If your organization is participating in the program and has been instructed to configure a custom upload endpoint, then use this setting to define that endpoint.

The value for this setting will be provided by Microsoft as part of the onboarding process for the program.
<!-- ConfigureMicrosoft365UploadEndpoint-Description-End -->

<!-- ConfigureMicrosoft365UploadEndpoint-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureMicrosoft365UploadEndpoint-Editable-End -->

<!-- ConfigureMicrosoft365UploadEndpoint-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfigureMicrosoft365UploadEndpoint-DFProperties-End -->

<!-- ConfigureMicrosoft365UploadEndpoint-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureMicrosoft365UploadEndpoint |
| Friendly Name | Configure diagnostic data upload endpoint for Desktop Analytics |
| Element Name | Desktop Analytics Custom Upload Endpoint. |
| Location | Computer Configuration |
| Path | WindowsComponents > Data Collection and Preview Builds |
| Registry Key Name | Software\Policies\Microsoft\Windows\DataCollection |
| ADMX File Name | DataCollection.admx |
<!-- ConfigureMicrosoft365UploadEndpoint-GpMapping-End -->

<!-- ConfigureMicrosoft365UploadEndpoint-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureMicrosoft365UploadEndpoint-Examples-End -->

<!-- ConfigureMicrosoft365UploadEndpoint-End -->

<!-- ConfigureTelemetryOptInChangeNotification-Begin -->
## ConfigureTelemetryOptInChangeNotification

<!-- ConfigureTelemetryOptInChangeNotification-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- ConfigureTelemetryOptInChangeNotification-Applicability-End -->

<!-- ConfigureTelemetryOptInChangeNotification-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/ConfigureTelemetryOptInChangeNotification
```
<!-- ConfigureTelemetryOptInChangeNotification-OmaUri-End -->

<!-- ConfigureTelemetryOptInChangeNotification-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether notifications are shown, following a change to diagnostic data opt-in settings, on first logon and when the changes occur in settings.

If you set this policy setting to "Disable diagnostic data change notifications", diagnostic data opt-in change notifications won't appear.

If you set this policy setting to "Enable diagnostic data change notifications" or don't configure this policy setting, diagnostic data opt-in change notifications appear at first logon and when the changes occur in Settings.
<!-- ConfigureTelemetryOptInChangeNotification-Description-End -->

<!-- ConfigureTelemetryOptInChangeNotification-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureTelemetryOptInChangeNotification-Editable-End -->

<!-- ConfigureTelemetryOptInChangeNotification-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ConfigureTelemetryOptInChangeNotification-DFProperties-End -->

<!-- ConfigureTelemetryOptInChangeNotification-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Enable telemetry change notifications. |
| 1 | Disable telemetry change notifications. |
<!-- ConfigureTelemetryOptInChangeNotification-AllowedValues-End -->

<!-- ConfigureTelemetryOptInChangeNotification-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureTelemetryOptInChangeNotification |
| Friendly Name | Configure diagnostic data opt-in change notifications |
| Location | Computer Configuration |
| Path | WindowsComponents > Data Collection and Preview Builds |
| Registry Key Name | Software\Policies\Microsoft\Windows\DataCollection |
| ADMX File Name | DataCollection.admx |
<!-- ConfigureTelemetryOptInChangeNotification-GpMapping-End -->

<!-- ConfigureTelemetryOptInChangeNotification-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureTelemetryOptInChangeNotification-Examples-End -->

<!-- ConfigureTelemetryOptInChangeNotification-End -->

<!-- ConfigureTelemetryOptInSettingsUx-Begin -->
## ConfigureTelemetryOptInSettingsUx

<!-- ConfigureTelemetryOptInSettingsUx-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- ConfigureTelemetryOptInSettingsUx-Applicability-End -->

<!-- ConfigureTelemetryOptInSettingsUx-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/ConfigureTelemetryOptInSettingsUx
```
<!-- ConfigureTelemetryOptInSettingsUx-OmaUri-End -->

<!-- ConfigureTelemetryOptInSettingsUx-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether an end user can change diagnostic data settings in the Settings app.

If you set this policy setting to "Disable diagnostic data opt-in settings", diagnostic data settings are disabled in the Settings app.

If you don't configure this policy setting, or you set it to "Enable diagnostic data opt-in settings", end users can change the device diagnostic settings in the Settings app.

> [!NOTE]
> To set a limit on the amount of diagnostic data that's sent to Microsoft by your organization, use the "Allow Diagnostic Data" policy setting.
<!-- ConfigureTelemetryOptInSettingsUx-Description-End -->

<!-- ConfigureTelemetryOptInSettingsUx-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureTelemetryOptInSettingsUx-Editable-End -->

<!-- ConfigureTelemetryOptInSettingsUx-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ConfigureTelemetryOptInSettingsUx-DFProperties-End -->

<!-- ConfigureTelemetryOptInSettingsUx-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Enable Telemetry opt-in Settings. |
| 1 | Disable Telemetry opt-in Settings. |
<!-- ConfigureTelemetryOptInSettingsUx-AllowedValues-End -->

<!-- ConfigureTelemetryOptInSettingsUx-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureTelemetryOptInSettingsUx |
| Friendly Name | Configure diagnostic data opt-in settings user interface |
| Location | Computer Configuration |
| Path | WindowsComponents > Data Collection and Preview Builds |
| Registry Key Name | Software\Policies\Microsoft\Windows\DataCollection |
| ADMX File Name | DataCollection.admx |
<!-- ConfigureTelemetryOptInSettingsUx-GpMapping-End -->

<!-- ConfigureTelemetryOptInSettingsUx-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureTelemetryOptInSettingsUx-Examples-End -->

<!-- ConfigureTelemetryOptInSettingsUx-End -->

<!-- DisableDeviceDelete-Begin -->
## DisableDeviceDelete

<!-- DisableDeviceDelete-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- DisableDeviceDelete-Applicability-End -->

<!-- DisableDeviceDelete-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/DisableDeviceDelete
```
<!-- DisableDeviceDelete-OmaUri-End -->

<!-- DisableDeviceDelete-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether the Delete diagnostic data button is enabled in Diagnostic & feedback Settings page.

- If you enable this policy setting, the Delete diagnostic data button will be disabled in Settings page, preventing the deletion of diagnostic data collected by Microsoft from the device.

- If you disable or don't configure this policy setting, the Delete diagnostic data button will be enabled in Settings page, which allows people to erase all diagnostic data collected by Microsoft from that device.
<!-- DisableDeviceDelete-Description-End -->

<!-- DisableDeviceDelete-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableDeviceDelete-Editable-End -->

<!-- DisableDeviceDelete-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableDeviceDelete-DFProperties-End -->

<!-- DisableDeviceDelete-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not disabled. |
| 1 | Disabled. |
<!-- DisableDeviceDelete-AllowedValues-End -->

<!-- DisableDeviceDelete-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableDeviceDelete |
| Friendly Name | Disable deleting diagnostic data |
| Location | Computer Configuration |
| Path | WindowsComponents > Data Collection and Preview Builds |
| Registry Key Name | Software\Policies\Microsoft\Windows\DataCollection |
| ADMX File Name | DataCollection.admx |
<!-- DisableDeviceDelete-GpMapping-End -->

<!-- DisableDeviceDelete-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableDeviceDelete-Examples-End -->

<!-- DisableDeviceDelete-End -->

<!-- DisableDiagnosticDataViewer-Begin -->
## DisableDiagnosticDataViewer

<!-- DisableDiagnosticDataViewer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- DisableDiagnosticDataViewer-Applicability-End -->

<!-- DisableDiagnosticDataViewer-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/DisableDiagnosticDataViewer
```
<!-- DisableDiagnosticDataViewer-OmaUri-End -->

<!-- DisableDiagnosticDataViewer-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether users can enable and launch the Diagnostic Data Viewer from the Diagnostic & feedback Settings page.

- If you enable this policy setting, the Diagnostic Data Viewer won't be enabled in Settings page, and it will prevent the viewer from showing diagnostic data collected by Microsoft from the device.

- If you disable or don't configure this policy setting, the Diagnostic Data Viewer will be enabled in Settings page.
<!-- DisableDiagnosticDataViewer-Description-End -->

<!-- DisableDiagnosticDataViewer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableDiagnosticDataViewer-Editable-End -->

<!-- DisableDiagnosticDataViewer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableDiagnosticDataViewer-DFProperties-End -->

<!-- DisableDiagnosticDataViewer-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not disabled. |
| 1 | Disabled. |
<!-- DisableDiagnosticDataViewer-AllowedValues-End -->

<!-- DisableDiagnosticDataViewer-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableDiagnosticDataViewer |
| Friendly Name | Disable diagnostic data viewer |
| Location | Computer Configuration |
| Path | WindowsComponents > Data Collection and Preview Builds |
| Registry Key Name | Software\Policies\Microsoft\Windows\DataCollection |
| ADMX File Name | DataCollection.admx |
<!-- DisableDiagnosticDataViewer-GpMapping-End -->

<!-- DisableDiagnosticDataViewer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableDiagnosticDataViewer-Examples-End -->

<!-- DisableDiagnosticDataViewer-End -->

<!-- DisableDirectXDatabaseUpdate-Begin -->
## DisableDirectXDatabaseUpdate

<!-- DisableDirectXDatabaseUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- DisableDirectXDatabaseUpdate-Applicability-End -->

<!-- DisableDirectXDatabaseUpdate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/DisableDirectXDatabaseUpdate
```
<!-- DisableDirectXDatabaseUpdate-OmaUri-End -->

<!-- DisableDirectXDatabaseUpdate-Description-Begin -->
<!-- Description-Source-DDF -->
This group policy allows control over whether the DirectX Database Updater task will be run on the system.
<!-- DisableDirectXDatabaseUpdate-Description-End -->

<!-- DisableDirectXDatabaseUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableDirectXDatabaseUpdate-Editable-End -->

<!-- DisableDirectXDatabaseUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableDirectXDatabaseUpdate-DFProperties-End -->

<!-- DisableDirectXDatabaseUpdate-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not disabled. |
| 1 | Disabled. |
<!-- DisableDirectXDatabaseUpdate-AllowedValues-End -->

<!-- DisableDirectXDatabaseUpdate-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableDirectXDatabaseUpdate |
| Path | GroupPolicy > AT > Network > DirectXDatabase |
<!-- DisableDirectXDatabaseUpdate-GpMapping-End -->

<!-- DisableDirectXDatabaseUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableDirectXDatabaseUpdate-Examples-End -->

<!-- DisableDirectXDatabaseUpdate-End -->

<!-- DisableEnterpriseAuthProxy-Begin -->
## DisableEnterpriseAuthProxy

<!-- DisableEnterpriseAuthProxy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DisableEnterpriseAuthProxy-Applicability-End -->

<!-- DisableEnterpriseAuthProxy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/DisableEnterpriseAuthProxy
```
<!-- DisableEnterpriseAuthProxy-OmaUri-End -->

<!-- DisableEnterpriseAuthProxy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting blocks the Connected User Experience and Telemetry service from automatically using an authenticated proxy to send data back to Microsoft on Windows 10. If you disable or don't configure this policy setting, the Connected User Experience and Telemetry service will automatically use an authenticated proxy to send data back to Microsoft. Enabling this policy will block the Connected User Experience and Telemetry service from automatically using an authenticated proxy.
<!-- DisableEnterpriseAuthProxy-Description-End -->

<!-- DisableEnterpriseAuthProxy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableEnterpriseAuthProxy-Editable-End -->

<!-- DisableEnterpriseAuthProxy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableEnterpriseAuthProxy-DFProperties-End -->

<!-- DisableEnterpriseAuthProxy-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Enable. |
| 0 (Default) | Disable. |
<!-- DisableEnterpriseAuthProxy-AllowedValues-End -->

<!-- DisableEnterpriseAuthProxy-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableEnterpriseAuthProxy |
| Friendly Name | Configure Authenticated Proxy usage for the Connected User Experience and Telemetry service |
| Location | Computer Configuration |
| Path | WindowsComponents > Data Collection and Preview Builds |
| Registry Key Name | Software\Policies\Microsoft\Windows\DataCollection |
| ADMX File Name | DataCollection.admx |
<!-- DisableEnterpriseAuthProxy-GpMapping-End -->

<!-- DisableEnterpriseAuthProxy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableEnterpriseAuthProxy-Examples-End -->

<!-- DisableEnterpriseAuthProxy-End -->

<!-- DisableOneDriveFileSync-Begin -->
## DisableOneDriveFileSync

<!-- DisableOneDriveFileSync-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DisableOneDriveFileSync-Applicability-End -->

<!-- DisableOneDriveFileSync-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/DisableOneDriveFileSync
```
<!-- DisableOneDriveFileSync-OmaUri-End -->

<!-- DisableOneDriveFileSync-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you prevent apps and features from working with files on OneDrive.

- If you enable this policy setting:

* Users can't access OneDrive from the OneDrive app and file picker.

* Packaged Microsoft Store apps can't access OneDrive using the WinRT API.

* OneDrive doesn't appear in the navigation pane in File Explorer.

* OneDrive files aren't kept in sync with the cloud.

* Users can't automatically upload photos and videos from the camera roll folder.

- If you disable or don't configure this policy setting, apps and features can work with OneDrive file storage.
<!-- DisableOneDriveFileSync-Description-End -->

<!-- DisableOneDriveFileSync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableOneDriveFileSync-Editable-End -->

<!-- DisableOneDriveFileSync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableOneDriveFileSync-DFProperties-End -->

<!-- DisableOneDriveFileSync-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Sync enabled. |
| 1 | Sync disabled. |
<!-- DisableOneDriveFileSync-AllowedValues-End -->

<!-- DisableOneDriveFileSync-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | PreventOnedriveFileSync |
| Friendly Name | Prevent the usage of OneDrive for file storage |
| Location | Computer Configuration |
| Path | Windows Components > OneDrive |
| Registry Key Name | Software\Policies\Microsoft\Windows\OneDrive |
| Registry Value Name | DisableFileSyncNGSC |
| ADMX File Name | SkyDrive.admx |
<!-- DisableOneDriveFileSync-GpMapping-End -->

<!-- DisableOneDriveFileSync-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableOneDriveFileSync-Examples-End -->

<!-- DisableOneDriveFileSync-End -->

<!-- DisableOneSettingsDownloads-Begin -->
## DisableOneSettingsDownloads

<!-- DisableOneSettingsDownloads-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableOneSettingsDownloads-Applicability-End -->

<!-- DisableOneSettingsDownloads-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/DisableOneSettingsDownloads
```
<!-- DisableOneSettingsDownloads-OmaUri-End -->

<!-- DisableOneSettingsDownloads-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether Windows attempts to connect with the OneSettings service.

- If you enable this policy, Windows won't attempt to connect with the OneSettings Service.

- If you disable or don't configure this policy setting, Windows will periodically attempt to connect with the OneSettings service to download configuration settings.
<!-- DisableOneSettingsDownloads-Description-End -->

<!-- DisableOneSettingsDownloads-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableOneSettingsDownloads-Editable-End -->

<!-- DisableOneSettingsDownloads-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableOneSettingsDownloads-DFProperties-End -->

<!-- DisableOneSettingsDownloads-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not disabled. |
| 1 | Disabled. |
<!-- DisableOneSettingsDownloads-AllowedValues-End -->

<!-- DisableOneSettingsDownloads-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableOneSettingsDownloads |
| Friendly Name | Disable OneSettings Downloads |
| Location | Computer Configuration |
| Path | WindowsComponents > Data Collection and Preview Builds |
| Registry Key Name | Software\Policies\Microsoft\Windows\DataCollection |
| ADMX File Name | DataCollection.admx |
<!-- DisableOneSettingsDownloads-GpMapping-End -->

<!-- DisableOneSettingsDownloads-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableOneSettingsDownloads-Examples-End -->

<!-- DisableOneSettingsDownloads-End -->

<!-- DisableSystemRestore-Begin -->
## DisableSystemRestore

<!-- DisableSystemRestore-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DisableSystemRestore-Applicability-End -->

<!-- DisableSystemRestore-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/DisableSystemRestore
```
<!-- DisableSystemRestore-OmaUri-End -->

<!-- DisableSystemRestore-Description-Begin -->
<!-- Description-Source-ADMX -->
Allows you to disable System Restore.

This policy setting allows you to turn off System Restore.

System Restore enables users, in the event of a problem, to restore their computers to a previous state without losing personal data files. By default, System Restore is turned on for the boot volume.

- If you enable this policy setting, System Restore is turned off, and the System Restore Wizard can't be accessed. The option to configure System Restore or create a restore point through System Protection is also disabled.

- If you disable or don't configure this policy setting, users can perform System Restore and configure System Restore settings through System Protection.

Also, see the "Turn off System Restore configuration" policy setting. If the "Turn off System Restore" policy setting is disabled or not configured, the "Turn off System Restore configuration" policy setting is used to determine whether the option to configure System Restore is available.
<!-- DisableSystemRestore-Description-End -->

<!-- DisableSystemRestore-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableSystemRestore-Editable-End -->

<!-- DisableSystemRestore-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableSystemRestore-DFProperties-End -->

<!-- DisableSystemRestore-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SR_DisableSR |
| Friendly Name | Turn off System Restore |
| Location | Computer Configuration |
| Path | System > System Restore |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\SystemRestore |
| Registry Value Name | DisableSR |
| ADMX File Name | SystemRestore.admx |
<!-- DisableSystemRestore-AdmxBacked-End -->

<!-- DisableSystemRestore-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableSystemRestore-Examples-End -->

<!-- DisableSystemRestore-End -->

<!-- EnableOneSettingsAuditing-Begin -->
## EnableOneSettingsAuditing

<!-- EnableOneSettingsAuditing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableOneSettingsAuditing-Applicability-End -->

<!-- EnableOneSettingsAuditing-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/EnableOneSettingsAuditing
```
<!-- EnableOneSettingsAuditing-OmaUri-End -->

<!-- EnableOneSettingsAuditing-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether Windows records attempts to connect with the OneSettings service to the EventLog.

- If you enable this policy, Windows will record attempts to connect with the OneSettings service to the Microsoft\Windows\Privacy-Auditing\Operational EventLog channel.

- If you disable or don't configure this policy setting, Windows won't record attempts to connect with the OneSettings service to the EventLog.
<!-- EnableOneSettingsAuditing-Description-End -->

<!-- EnableOneSettingsAuditing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableOneSettingsAuditing-Editable-End -->

<!-- EnableOneSettingsAuditing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- EnableOneSettingsAuditing-DFProperties-End -->

<!-- EnableOneSettingsAuditing-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- EnableOneSettingsAuditing-AllowedValues-End -->

<!-- EnableOneSettingsAuditing-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | EnableOneSettingsAuditing |
| Friendly Name | Enable OneSettings Auditing |
| Location | Computer Configuration |
| Path | WindowsComponents > Data Collection and Preview Builds |
| Registry Key Name | Software\Policies\Microsoft\Windows\DataCollection |
| ADMX File Name | DataCollection.admx |
<!-- EnableOneSettingsAuditing-GpMapping-End -->

<!-- EnableOneSettingsAuditing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableOneSettingsAuditing-Examples-End -->

<!-- EnableOneSettingsAuditing-End -->

<!-- FeedbackHubAlwaysSaveDiagnosticsLocally-Begin -->
## FeedbackHubAlwaysSaveDiagnosticsLocally

<!-- FeedbackHubAlwaysSaveDiagnosticsLocally-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- FeedbackHubAlwaysSaveDiagnosticsLocally-Applicability-End -->

<!-- FeedbackHubAlwaysSaveDiagnosticsLocally-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/FeedbackHubAlwaysSaveDiagnosticsLocally
```
<!-- FeedbackHubAlwaysSaveDiagnosticsLocally-OmaUri-End -->

<!-- FeedbackHubAlwaysSaveDiagnosticsLocally-Description-Begin -->
<!-- Description-Source-DDF -->
Diagnostic files created when a feedback is filed in the Feedback Hub app will always be saved locally. If this policy isn't present or set to false, users will be presented with the option to save locally. The default is to not save locally.
<!-- FeedbackHubAlwaysSaveDiagnosticsLocally-Description-End -->

<!-- FeedbackHubAlwaysSaveDiagnosticsLocally-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- FeedbackHubAlwaysSaveDiagnosticsLocally-Editable-End -->

<!-- FeedbackHubAlwaysSaveDiagnosticsLocally-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- FeedbackHubAlwaysSaveDiagnosticsLocally-DFProperties-End -->

<!-- FeedbackHubAlwaysSaveDiagnosticsLocally-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | False. The Feedback Hub won't always save a local copy of diagnostics that may be created when a feedback is submitted. The user will have the option to do so. |
| 1 | True. The Feedback Hub should always save a local copy of diagnostics that may be created when a feedback is submitted. |
<!-- FeedbackHubAlwaysSaveDiagnosticsLocally-AllowedValues-End -->

<!-- FeedbackHubAlwaysSaveDiagnosticsLocally-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- FeedbackHubAlwaysSaveDiagnosticsLocally-Examples-End -->

<!-- FeedbackHubAlwaysSaveDiagnosticsLocally-End -->

<!-- HideUnsupportedHardwareNotifications-Begin -->
## HideUnsupportedHardwareNotifications

<!-- HideUnsupportedHardwareNotifications-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- HideUnsupportedHardwareNotifications-Applicability-End -->

<!-- HideUnsupportedHardwareNotifications-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/HideUnsupportedHardwareNotifications
```
<!-- HideUnsupportedHardwareNotifications-OmaUri-End -->

<!-- HideUnsupportedHardwareNotifications-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls messages which are shown when Windows is running on a device that doesn't meet the minimum system requirements for this OS version.

- If you enable this policy setting, these messages will never appear on desktop or in the Settings app.

- If you disable or don't configure this policy setting, these messages will appear on desktop and in the Settings app when Windows is running on a device that doesn't meet the minimum system requirements for this OS version.
<!-- HideUnsupportedHardwareNotifications-Description-End -->

<!-- HideUnsupportedHardwareNotifications-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HideUnsupportedHardwareNotifications-Editable-End -->

<!-- HideUnsupportedHardwareNotifications-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- HideUnsupportedHardwareNotifications-DFProperties-End -->

<!-- HideUnsupportedHardwareNotifications-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- HideUnsupportedHardwareNotifications-AllowedValues-End -->

<!-- HideUnsupportedHardwareNotifications-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | HideUnsupportedHardwareNotifications |
| Friendly Name | Hide messages when Windows system requirements are not met |
| Location | Computer Configuration |
| Path | System |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | HideUnsupportedHardwareNotifications |
| ADMX File Name | ControlPanel.admx |
<!-- HideUnsupportedHardwareNotifications-GpMapping-End -->

<!-- HideUnsupportedHardwareNotifications-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HideUnsupportedHardwareNotifications-Examples-End -->

<!-- HideUnsupportedHardwareNotifications-End -->

<!-- LimitDiagnosticLogCollection-Begin -->
## LimitDiagnosticLogCollection

<!-- LimitDiagnosticLogCollection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LimitDiagnosticLogCollection-Applicability-End -->

<!-- LimitDiagnosticLogCollection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/LimitDiagnosticLogCollection
```
<!-- LimitDiagnosticLogCollection-OmaUri-End -->

<!-- LimitDiagnosticLogCollection-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether additional diagnostic logs are collected when more information is needed to troubleshoot a problem on the device. Diagnostic logs are only sent when the device has been configured to send optional diagnostic data.

By enabling this policy setting, diagnostic logs won't be collected.

If you disable or don't configure this policy setting, we may occasionally collect diagnostic logs if the device has been configured to send optional diagnostic data.
<!-- LimitDiagnosticLogCollection-Description-End -->

<!-- LimitDiagnosticLogCollection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LimitDiagnosticLogCollection-Editable-End -->

<!-- LimitDiagnosticLogCollection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LimitDiagnosticLogCollection-DFProperties-End -->

<!-- LimitDiagnosticLogCollection-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- LimitDiagnosticLogCollection-AllowedValues-End -->

<!-- LimitDiagnosticLogCollection-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LimitDiagnosticLogCollection |
| Friendly Name | Limit Diagnostic Log Collection |
| Location | Computer Configuration |
| Path | WindowsComponents > Data Collection and Preview Builds |
| Registry Key Name | Software\Policies\Microsoft\Windows\DataCollection |
| ADMX File Name | DataCollection.admx |
<!-- LimitDiagnosticLogCollection-GpMapping-End -->

<!-- LimitDiagnosticLogCollection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LimitDiagnosticLogCollection-Examples-End -->

<!-- LimitDiagnosticLogCollection-End -->

<!-- LimitDumpCollection-Begin -->
## LimitDumpCollection

<!-- LimitDumpCollection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LimitDumpCollection-Applicability-End -->

<!-- LimitDumpCollection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/LimitDumpCollection
```
<!-- LimitDumpCollection-OmaUri-End -->

<!-- LimitDumpCollection-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting limits the type of dumps that can be collected when more information is needed to troubleshoot a problem. Dumps are only sent when the device has been configured to send optional diagnostic data.

By enabling this setting, Windows Error Reporting is limited to sending kernel mini dumps and user mode triage dumps.

If you disable or don't configure this policy setting, we may occasionally collect full or heap dumps if the user has opted to send optional diagnostic data.
<!-- LimitDumpCollection-Description-End -->

<!-- LimitDumpCollection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LimitDumpCollection-Editable-End -->

<!-- LimitDumpCollection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LimitDumpCollection-DFProperties-End -->

<!-- LimitDumpCollection-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- LimitDumpCollection-AllowedValues-End -->

<!-- LimitDumpCollection-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LimitDumpCollection |
| Friendly Name | Limit Dump Collection |
| Location | Computer Configuration |
| Path | WindowsComponents > Data Collection and Preview Builds |
| Registry Key Name | Software\Policies\Microsoft\Windows\DataCollection |
| ADMX File Name | DataCollection.admx |
<!-- LimitDumpCollection-GpMapping-End -->

<!-- LimitDumpCollection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LimitDumpCollection-Examples-End -->

<!-- LimitDumpCollection-End -->

<!-- LimitEnhancedDiagnosticDataWindowsAnalytics-Begin -->
## LimitEnhancedDiagnosticDataWindowsAnalytics

<!-- LimitEnhancedDiagnosticDataWindowsAnalytics-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- LimitEnhancedDiagnosticDataWindowsAnalytics-Applicability-End -->

<!-- LimitEnhancedDiagnosticDataWindowsAnalytics-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/LimitEnhancedDiagnosticDataWindowsAnalytics
```
<!-- LimitEnhancedDiagnosticDataWindowsAnalytics-OmaUri-End -->

<!-- LimitEnhancedDiagnosticDataWindowsAnalytics-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting, in combination with the "Allow Diagnostic Data" policy setting, enables organizations to send the minimum data required by Desktop Analytics.

To enable the behavior described above, complete the following steps:

1. Enable this policy setting
1. Set the "Allow Diagnostic Data" policy to "Send optional diagnostic data".

1. Enable the "Limit Dump Collection" policy
1. Enable the "Limit Diagnostic Log Collection" policy.

When these policies are configured, Microsoft will collect only required diagnostic data and the events required by Desktop Analytics, which can be viewed at< https://go.microsoft.com/fwlink/?linkid=2116020>.

If you disable or don't configure this policy setting, diagnostic data collection is determined by the "Allow Diagnostic Data" policy setting or by the end user from the Settings app.
<!-- LimitEnhancedDiagnosticDataWindowsAnalytics-Description-End -->

<!-- LimitEnhancedDiagnosticDataWindowsAnalytics-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LimitEnhancedDiagnosticDataWindowsAnalytics-Editable-End -->

<!-- LimitEnhancedDiagnosticDataWindowsAnalytics-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LimitEnhancedDiagnosticDataWindowsAnalytics-DFProperties-End -->

<!-- LimitEnhancedDiagnosticDataWindowsAnalytics-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- LimitEnhancedDiagnosticDataWindowsAnalytics-AllowedValues-End -->

<!-- LimitEnhancedDiagnosticDataWindowsAnalytics-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LimitEnhancedDiagnosticDataWindowsAnalytics |
| Friendly Name | Limit optional diagnostic data for Desktop Analytics |
| Location | Computer Configuration |
| Path | WindowsComponents > Data Collection and Preview Builds |
| Registry Key Name | Software\Policies\Microsoft\Windows\DataCollection |
| ADMX File Name | DataCollection.admx |
<!-- LimitEnhancedDiagnosticDataWindowsAnalytics-GpMapping-End -->

<!-- LimitEnhancedDiagnosticDataWindowsAnalytics-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LimitEnhancedDiagnosticDataWindowsAnalytics-Examples-End -->

<!-- LimitEnhancedDiagnosticDataWindowsAnalytics-End -->

<!-- TelemetryProxy-Begin -->
## TelemetryProxy

<!-- TelemetryProxy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- TelemetryProxy-Applicability-End -->

<!-- TelemetryProxy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/TelemetryProxy
```
<!-- TelemetryProxy-OmaUri-End -->

<!-- TelemetryProxy-Description-Begin -->
<!-- Description-Source-ADMX -->
With this policy setting, you can forward Connected User Experience and Telemetry requests to a proxy server.

If you enable this policy setting, you can specify the FQDN or IP address of the destination device within your organization's network (and optionally a port number, if desired). The connection will be made over a Secure Sockets Layer (SSL) connection. If the named proxy fails, or if you disable or don't configure this policy setting, Connected User Experience and Telemetry data will be sent to Microsoft using the default proxy configuration.

The format for this setting is `<server>`:`<port>`
<!-- TelemetryProxy-Description-End -->

<!-- TelemetryProxy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TelemetryProxy-Editable-End -->

<!-- TelemetryProxy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TelemetryProxy-DFProperties-End -->

<!-- TelemetryProxy-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | TelemetryProxy |
| Friendly Name | Configure Connected User Experiences and Telemetry |
| Element Name | Proxy Server Name. |
| Location | Computer Configuration |
| Path | WindowsComponents > Data Collection and Preview Builds |
| Registry Key Name | Software\Policies\Microsoft\Windows\DataCollection |
| ADMX File Name | DataCollection.admx |
<!-- TelemetryProxy-GpMapping-End -->

<!-- TelemetryProxy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TelemetryProxy-Examples-End -->

<!-- TelemetryProxy-End -->

<!-- TurnOffFileHistory-Begin -->
## TurnOffFileHistory

<!-- TurnOffFileHistory-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- TurnOffFileHistory-Applicability-End -->

<!-- TurnOffFileHistory-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/System/TurnOffFileHistory
```
<!-- TurnOffFileHistory-OmaUri-End -->

<!-- TurnOffFileHistory-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off File History.

- If you enable this policy setting, File History can't be activated to create regular, automatic backups.

- If you disable or don't configure this policy setting, File History can be activated to create regular, automatic backups.
<!-- TurnOffFileHistory-Description-End -->

<!-- TurnOffFileHistory-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TurnOffFileHistory-Editable-End -->

<!-- TurnOffFileHistory-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- TurnOffFileHistory-DFProperties-End -->

<!-- TurnOffFileHistory-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allow file history. |
| 1 | Turn off file history. |
<!-- TurnOffFileHistory-AllowedValues-End -->

<!-- TurnOffFileHistory-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableFileHistory |
| Friendly Name | Turn off File History |
| Location | Computer Configuration |
| Path | Windows Components > File History |
| Registry Key Name | Software\Policies\Microsoft\Windows\FileHistory |
| Registry Value Name | Disabled |
| ADMX File Name | FileHistory.admx |
<!-- TurnOffFileHistory-GpMapping-End -->

<!-- TurnOffFileHistory-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TurnOffFileHistory-Examples-End -->

<!-- TurnOffFileHistory-End -->

<!-- System-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- System-CspMoreInfo-End -->

<!-- System-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
