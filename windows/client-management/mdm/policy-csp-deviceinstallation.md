---
title: DeviceInstallation Policy CSP
description: Learn more about the DeviceInstallation Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- DeviceInstallation-Begin -->
# Policy CSP - DeviceInstallation

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- DeviceInstallation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DeviceInstallation-Editable-End -->

<!-- AllowInstallationOfMatchingDeviceIDs-Begin -->
## AllowInstallationOfMatchingDeviceIDs

<!-- AllowInstallationOfMatchingDeviceIDs-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- AllowInstallationOfMatchingDeviceIDs-Applicability-End -->

<!-- AllowInstallationOfMatchingDeviceIDs-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceInstallation/AllowInstallationOfMatchingDeviceIDs
```
<!-- AllowInstallationOfMatchingDeviceIDs-OmaUri-End -->

<!-- AllowInstallationOfMatchingDeviceIDs-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify a list of Plug and Play hardware IDs and compatible IDs for devices that Windows is allowed to install. This policy setting is intended to be used only when the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting is enabled, however it may also be used with the "Prevent installation of devices not described by other policy settings" policy setting for legacy policy definitions.

When this policy setting is enabled together with the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting, Windows is allowed to install or update any device whose Plug and Play hardware ID or compatible ID appears in the list you create, unless another policy setting at the same or higher layer in the hierarchy specifically prevents that installation, such as the following policy settings:

- Prevent installation of devices that match these device IDs
- Prevent installation of devices that match any of these device instance IDs.

If the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting isn't enabled with this policy setting, then any other policy settings specifically preventing installation will take precedence.

> [!NOTE]
> The "Prevent installation of devices not described by other policy settings" policy setting has been replaced by the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting for supported target Windows 10 versions. It's recommended that you use the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting when possible.

Alternatively, if this policy setting is enabled together with the "Prevent installation of devices not described by other policy settings" policy setting, Windows is allowed to install or update any device whose Plug and Play hardware ID or compatible ID appears in the list you create, unless another policy setting specifically prevents that installation (for example, the "Prevent installation of devices that match any of these device IDs" policy setting, the "Prevent installation of devices for these device classes" policy setting, the "Prevent installation of devices that match any of these device instance IDs" policy setting, or the "Prevent installation of removable devices" policy setting).

- If you enable this policy setting on a remote desktop server, the policy setting affects redirection of the specified devices from a remote desktop client to the remote desktop server.

- If you disable or don't configure this policy setting, and no other policy setting describes the device, the "Prevent installation of devices not described by other policy settings" policy setting determines whether the device can be installed.
<!-- AllowInstallationOfMatchingDeviceIDs-Description-End -->

<!-- AllowInstallationOfMatchingDeviceIDs-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Peripherals can be specified by their [hardware identity](/windows-hardware/drivers/install/device-identification-strings). For a list of common identifier structures, see [Device Identifier Formats](/windows-hardware/drivers/install/device-identifier-formats). Test the configuration prior to rolling it out to ensure it allows the devices expected. Ideally test various instances of the hardware. For example, test multiple USB keys rather than only one.
<!-- AllowInstallationOfMatchingDeviceIDs-Editable-End -->

<!-- AllowInstallationOfMatchingDeviceIDs-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowInstallationOfMatchingDeviceIDs-DFProperties-End -->

<!-- AllowInstallationOfMatchingDeviceIDs-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DeviceInstall_IDs_Allow |
| Friendly Name | Allow installation of devices that match any of these device IDs |
| Location | Computer Configuration |
| Path | System > Device Installation > Device Installation Restrictions |
| Registry Key Name | Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions |
| Registry Value Name | AllowDeviceIDs |
| ADMX File Name | DeviceInstallation.admx |
<!-- AllowInstallationOfMatchingDeviceIDs-AdmxBacked-End -->

<!-- AllowInstallationOfMatchingDeviceIDs-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

To enable this policy, use the following SyncML. This example allows Windows to install compatible devices with a device ID of USB\Composite or USB\Class_FF. To configure multiple classes, use `&#xF000;` as a delimiter.

```xml
<SyncML>
    <SyncBody>
        <Replace>
            <CmdID>$CmdID$</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/Policy/Config/DeviceInstallation/AllowInstallationOfMatchingDeviceIDs</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">string</Format>
                </Meta>
                <Data><enabled/><Data id="DeviceInstall_IDs_Allow_List" value="1&#xF000;USB\Composite&#xF000;2&#xF000;USB\Class_FF"/></Data>
                </Item>
        </Replace>
    </SyncBody>
</SyncML>
```

To verify that the policy is applied, check C:\windows\INF\setupapi.dev.log and see if the following details are listed near the end of the log:

```txt
>>>  [Device Installation Restrictions Policy Check]
>>>  Section start 2018/11/15 12:26:41.659
<<<  Section end 2018/11/15 12:26:41.751
<<<  [Exit status: SUCCESS]
```
<!-- AllowInstallationOfMatchingDeviceIDs-Examples-End -->

<!-- AllowInstallationOfMatchingDeviceIDs-End -->

<!-- AllowInstallationOfMatchingDeviceInstanceIDs-Begin -->
## AllowInstallationOfMatchingDeviceInstanceIDs

<!-- AllowInstallationOfMatchingDeviceInstanceIDs-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- AllowInstallationOfMatchingDeviceInstanceIDs-Applicability-End -->

<!-- AllowInstallationOfMatchingDeviceInstanceIDs-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceInstallation/AllowInstallationOfMatchingDeviceInstanceIDs
```
<!-- AllowInstallationOfMatchingDeviceInstanceIDs-OmaUri-End -->

<!-- AllowInstallationOfMatchingDeviceInstanceIDs-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify a list of Plug and Play device instance IDs for devices that Windows is allowed to install. This policy setting is intended to be used only when the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting is enabled, however it may also be used with the "Prevent installation of devices not described by other policy settings" policy setting for legacy policy definitions.

When this policy setting is enabled together with the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting, Windows is allowed to install or update any device whose Plug and Play device instance ID appears in the list you create, unless another policy setting at the same or higher layer in the hierarchy specifically prevents that installation, such as the following policy settings:

- Prevent installation of devices that match any of these device instance IDs.

If the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting isn't enabled with this policy setting, then any other policy settings specifically preventing installation will take precedence.

> [!NOTE]
> The "Prevent installation of devices not described by other policy settings" policy setting has been replaced by the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting for supported target Windows 10 versions. It's recommended that you use the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting when possible.

Alternatively, if this policy setting is enabled together with the "Prevent installation of devices not described by other policy settings" policy setting, Windows is allowed to install or update any device whose Plug and Play device instance ID appears in the list you create, unless another policy setting specifically prevents that installation (for example, the "Prevent installation of devices that match any of these device IDs" policy setting, the "Prevent installation of devices for these device classes" policy setting, the "Prevent installation of devices that match any of these device instance IDs" policy setting, or the "Prevent installation of removable devices" policy setting).

- If you enable this policy setting on a remote desktop server, the policy setting affects redirection of the specified devices from a remote desktop client to the remote desktop server.

- If you disable or don't configure this policy setting, and no other policy setting describes the device, the "Prevent installation of devices not described by other policy settings" policy setting determines whether the device can be installed.
<!-- AllowInstallationOfMatchingDeviceInstanceIDs-Description-End -->

<!-- AllowInstallationOfMatchingDeviceInstanceIDs-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Peripherals can be specified by their [device instance ID](/windows-hardware/drivers/install/device-instance-ids). Test the configuration prior to rolling it out to ensure it allows the devices expected. Ideally test various instances of the hardware. For example, test multiple USB keys rather than only one.
<!-- AllowInstallationOfMatchingDeviceInstanceIDs-Editable-End -->

<!-- AllowInstallationOfMatchingDeviceInstanceIDs-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowInstallationOfMatchingDeviceInstanceIDs-DFProperties-End -->

<!-- AllowInstallationOfMatchingDeviceInstanceIDs-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DeviceInstall_Instance_IDs_Allow |
| Friendly Name | Allow installation of devices that match any of these device instance IDs |
| Location | Computer Configuration |
| Path | System > Device Installation > Device Installation Restrictions |
| Registry Key Name | Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions |
| Registry Value Name | AllowInstanceIDs |
| ADMX File Name | DeviceInstallation.admx |
<!-- AllowInstallationOfMatchingDeviceInstanceIDs-AdmxBacked-End -->

<!-- AllowInstallationOfMatchingDeviceInstanceIDs-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

To enable this policy, use the following SyncML.

``` xml
<SyncML>
    <SyncBody>
        <Replace>
            <CmdID>$CmdID$</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/Policy/Config/DeviceInstallation/AllowInstallationOfMatchingDeviceInstanceIDs</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">string</Format>
                </Meta>
                <Data><enabled/><Data id="DeviceInstall_Instance_IDs_Allow_List" value="1&#xF000;USB\VID_1F75&amp;PID_0917\47802411805883"/></Data>
                </Item>
        </Replace>
    </SyncBody>
</SyncML>
```

**Verify**:

To verify the policy is applied, check C:\windows\INF\setupapi.dev.log and see if the following details are listed near the end of the log:

``` txt
>>>  [Device Installation Restrictions Policy Check]
>>>  Section start 2018/11/15 12:26:41.659
<<<  Section end 2018/11/15 12:26:41.751
<<<  [Exit status: SUCCESS]
```
<!-- AllowInstallationOfMatchingDeviceInstanceIDs-Examples-End -->

<!-- AllowInstallationOfMatchingDeviceInstanceIDs-End -->

<!-- AllowInstallationOfMatchingDeviceSetupClasses-Begin -->
## AllowInstallationOfMatchingDeviceSetupClasses

<!-- AllowInstallationOfMatchingDeviceSetupClasses-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- AllowInstallationOfMatchingDeviceSetupClasses-Applicability-End -->

<!-- AllowInstallationOfMatchingDeviceSetupClasses-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceInstallation/AllowInstallationOfMatchingDeviceSetupClasses
```
<!-- AllowInstallationOfMatchingDeviceSetupClasses-OmaUri-End -->

<!-- AllowInstallationOfMatchingDeviceSetupClasses-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify a list of device setup class globally unique identifiers (GUIDs) for driver packages that Windows is allowed to install. This policy setting is intended to be used only when the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting is enabled, however it may also be used with the "Prevent installation of devices not described by other policy settings" policy setting for legacy policy definitions.

When this policy setting is enabled together with the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting, Windows is allowed to install or update driver packages whose device setup class GUIDs appear in the list you create, unless another policy setting at the same or higher layer in the hierarchy specifically prevents that installation, such as the following policy settings:

- Prevent installation of devices for these device classes
- Prevent installation of devices that match these device IDs
- Prevent installation of devices that match any of these device instance IDs.

If the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting isn't enabled with this policy setting, then any other policy settings specifically preventing installation will take precedence.

> [!NOTE]
> The "Prevent installation of devices not described by other policy settings" policy setting has been replaced by the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting for supported target Windows 10 versions. It's recommended that you use the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting when possible.

Alternatively, if this policy setting is enabled together with the "Prevent installation of devices not described by other policy settings" policy setting, Windows is allowed to install or update driver packages whose device setup class GUIDs appear in the list you create, unless another policy setting specifically prevents installation (for example, the "Prevent installation of devices that match these device IDs" policy setting, the "Prevent installation of devices for these device classes" policy setting, the "Prevent installation of devices that match any of these device instance IDs" policy setting, or the "Prevent installation of removable devices" policy setting).

- If you enable this policy setting on a remote desktop server, the policy setting affects redirection of the specified devices from a remote desktop client to the remote desktop server.

- If you disable or don't configure this policy setting, and no other policy setting describes the device, the "Prevent installation of devices not described by other policy settings" policy setting determines whether the device can be installed.
<!-- AllowInstallationOfMatchingDeviceSetupClasses-Description-End -->

<!-- AllowInstallationOfMatchingDeviceSetupClasses-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Peripherals can be specified by their [hardware identity](/windows-hardware/drivers/install/device-identification-strings). For a list of common identifier structures, see [Device Identifier Formats](/windows-hardware/drivers/install/device-identifier-formats). Test the configuration prior to rolling it out to ensure it allows the devices expected. Ideally test various instances of the hardware. For example, test multiple USB keys rather than only one.
<!-- AllowInstallationOfMatchingDeviceSetupClasses-Editable-End -->

<!-- AllowInstallationOfMatchingDeviceSetupClasses-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowInstallationOfMatchingDeviceSetupClasses-DFProperties-End -->

<!-- AllowInstallationOfMatchingDeviceSetupClasses-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DeviceInstall_Classes_Allow |
| Friendly Name | Allow installation of devices using drivers that match these device setup classes |
| Location | Computer Configuration |
| Path | System > Device Installation > Device Installation Restrictions |
| Registry Key Name | Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions |
| Registry Value Name | AllowDeviceClasses |
| ADMX File Name | DeviceInstallation.admx |
<!-- AllowInstallationOfMatchingDeviceSetupClasses-AdmxBacked-End -->

<!-- AllowInstallationOfMatchingDeviceSetupClasses-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

To enable this policy, use the following SyncML. This example allows Windows to install:

- Floppy Disks, ClassGUID = {4d36e980-e325-11ce-bfc1-08002be10318}
- CD ROMs, ClassGUID = {4d36e965-e325-11ce-bfc1-08002be10318}
- Modems, ClassGUID = {4d36e96d-e325-11ce-bfc1-08002be10318}

Enclose the class GUID within curly brackets {}. To configure multiple classes, use `&#xF000;` as a delimiter.

```xml
<SyncML>
    <SyncBody>
        <Replace>
            <CmdID>$CmdID$</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/Policy/Config/DeviceInstallation/AllowInstallationOfMatchingDeviceSetupClasses</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">string</Format>
                </Meta>
                <Data><enabled/><Data id="DeviceInstall_Classes_Allow_List" value="1&#xF000;{4d36e980-e325-11ce-bfc1-08002be10318}&#xF000;2&#xF000;{4d36e965-e325-11ce-bfc1-08002be10318}&#xF000;3&#xF000;{4d36e96d-e325-11ce-bfc1-08002be10318}"/></Data>
                </Item>
        </Replace>
    </SyncBody>
</SyncML>
```

**Verify**:

To verify that the policy is applied, check C:\windows\INF\setupapi.dev.log and see if the following details are listed near the end of the log:

```txt
>>>  [Device Installation Restrictions Policy Check]
>>>  Section start 2018/11/15 12:26:41.659
<<<  Section end 2018/11/15 12:26:41.751
<<<  [Exit status: SUCCESS]
```
<!-- AllowInstallationOfMatchingDeviceSetupClasses-Examples-End -->

<!-- AllowInstallationOfMatchingDeviceSetupClasses-End -->

<!-- EnableInstallationPolicyLayering-Begin -->
## EnableInstallationPolicyLayering

<!-- EnableInstallationPolicyLayering-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.256] and later <br> ✅ Windows 10, version 1809 with [KB5005102](https://support.microsoft.com/help/5005102) [10.0.17763.2145] and later <br> ✅ Windows 10, version 1903 [10.0.18362.1714] and later <br> ✅ Windows 10, version 2004 with [KB5004296](https://support.microsoft.com/help/5004296) [10.0.19041.1151] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableInstallationPolicyLayering-Applicability-End -->

<!-- EnableInstallationPolicyLayering-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceInstallation/EnableInstallationPolicyLayering
```
<!-- EnableInstallationPolicyLayering-OmaUri-End -->

<!-- EnableInstallationPolicyLayering-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting will change the evaluation order in which Allow and Prevent policy settings are applied when more than one install policy setting is applicable for a given device. Enable this policy setting to ensure that overlapping device match criteria is applied based on an established hierarchy where more specific match criteria supersedes less specific match criteria. The hierarchical order of evaluation for policy settings that specify device match criteria is as follows:

Device instance IDs > Device IDs > Device setup class > Removable devices.

Device instance IDs.

1. Prevent installation of devices using drivers that match these device instance IDs
1. Allow installation of devices using drivers that match these device instance IDs.

Device IDs.

1. Prevent installation of devices using drivers that match these device IDs
1. Allow installation of devices using drivers that match these device IDs.

Device setup class.

1. Prevent installation of devices using drivers that match these device setup classes
1. Allow installation of devices using drivers that match these device setup classes.

Removable devices.

1. Prevent installation of removable devices.

> [!NOTE]
> This policy setting provides more granular control than the "Prevent installation of devices not described by other policy settings" policy setting. If these conflicting policy settings are enabled at the same time, the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting will be enabled and the other policy setting will be ignored.

If you disable or don't configure this policy setting, the default evaluation is used. By default, all "Prevent installation.". policy settings have precedence over any other policy setting that allows Windows to install a device.
<!-- EnableInstallationPolicyLayering-Description-End -->

<!-- EnableInstallationPolicyLayering-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableInstallationPolicyLayering-Editable-End -->

<!-- EnableInstallationPolicyLayering-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableInstallationPolicyLayering-DFProperties-End -->

<!-- EnableInstallationPolicyLayering-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DeviceInstall_Allow_Deny_Layered |
| Friendly Name | Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria |
| Location | Computer Configuration |
| Path | System > Device Installation > Device Installation Restrictions |
| Registry Key Name | Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions |
| Registry Value Name | AllowDenyLayered |
| ADMX File Name | DeviceInstallation.admx |
<!-- EnableInstallationPolicyLayering-AdmxBacked-End -->

<!-- EnableInstallationPolicyLayering-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

```xml
<SyncML>
    <SyncBody>
        <Replace>
            <CmdID>$CmdID$</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/Policy/Config/DeviceInstallation/EnableInstallationPolicyLayering</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">string</Format>
                </Meta>
                <Data><enabled/><Data id="AllowDenyLayered" value="1"/></Data>;
                </Item>
        </Replace>
    </SyncBody>
</SyncML>
```

**Verify**:

To verify that the policy is applied, check C:\windows\INF\setupapi.dev.log and see if the following details are listed near the end of the log:

```txt
>>>  [Device Installation Restrictions Policy Check]
>>>  Section start 2018/11/15 12:26:41.659
<<<  Section end 2018/11/15 12:26:41.751
<<<  [Exit status: SUCCESS]
```

You can also change the evaluation order of device installation policy settings by using a custom profile in Intune.

:::image type="content" source="images/edit-row.png" alt-text="This image is an edit row image.":::
<!-- EnableInstallationPolicyLayering-Examples-End -->

<!-- EnableInstallationPolicyLayering-End -->

<!-- PreventDeviceMetadataFromNetwork-Begin -->
## PreventDeviceMetadataFromNetwork

<!-- PreventDeviceMetadataFromNetwork-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- PreventDeviceMetadataFromNetwork-Applicability-End -->

<!-- PreventDeviceMetadataFromNetwork-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceInstallation/PreventDeviceMetadataFromNetwork
```
<!-- PreventDeviceMetadataFromNetwork-OmaUri-End -->

<!-- PreventDeviceMetadataFromNetwork-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent Windows from retrieving device metadata from the Internet.

- If you enable this policy setting, Windows doesn't retrieve device metadata for installed devices from the Internet. This policy setting overrides the setting in the Device Installation Settings dialog box (Control Panel > System and Security > System > Advanced System Settings > Hardware tab).

- If you disable or don't configure this policy setting, the setting in the Device Installation Settings dialog box controls whether Windows retrieves device metadata from the Internet.
<!-- PreventDeviceMetadataFromNetwork-Description-End -->

<!-- PreventDeviceMetadataFromNetwork-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventDeviceMetadataFromNetwork-Editable-End -->

<!-- PreventDeviceMetadataFromNetwork-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreventDeviceMetadataFromNetwork-DFProperties-End -->

<!-- PreventDeviceMetadataFromNetwork-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DeviceMetadata_PreventDeviceMetadataFromNetwork |
| Friendly Name | Prevent device metadata retrieval from the Internet |
| Location | Computer Configuration |
| Path | System > Device Installation |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Device Metadata |
| Registry Value Name | PreventDeviceMetadataFromNetwork |
| ADMX File Name | DeviceSetup.admx |
<!-- PreventDeviceMetadataFromNetwork-AdmxBacked-End -->

<!-- PreventDeviceMetadataFromNetwork-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventDeviceMetadataFromNetwork-Examples-End -->

<!-- PreventDeviceMetadataFromNetwork-End -->

<!-- PreventInstallationOfDevicesNotDescribedByOtherPolicySettings-Begin -->
## PreventInstallationOfDevicesNotDescribedByOtherPolicySettings

<!-- PreventInstallationOfDevicesNotDescribedByOtherPolicySettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- PreventInstallationOfDevicesNotDescribedByOtherPolicySettings-Applicability-End -->

<!-- PreventInstallationOfDevicesNotDescribedByOtherPolicySettings-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceInstallation/PreventInstallationOfDevicesNotDescribedByOtherPolicySettings
```
<!-- PreventInstallationOfDevicesNotDescribedByOtherPolicySettings-OmaUri-End -->

<!-- PreventInstallationOfDevicesNotDescribedByOtherPolicySettings-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent the installation of devices that aren't specifically described by any other policy setting.

> [!NOTE]
> This policy setting has been replaced by the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting to provide more granular control. It's recommended that you use the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting instead of this policy setting.

- If you enable this policy setting, Windows is prevented from installing or updating the driver package for any device that isn't described by either the "Allow installation of devices that match any of these device IDs", the "Allow installation of devices for these device classes", or the "Allow installation of devices that match any of these device instance IDs" policy setting.

- If you disable or don't configure this policy setting, Windows is allowed to install or update the driver package for any device that isn't described by the "Prevent installation of devices that match any of these device IDs", "Prevent installation of devices for these device classes" policy setting, "Prevent installation of devices that match any of these device instance IDs", or "Prevent installation of removable devices" policy setting.
<!-- PreventInstallationOfDevicesNotDescribedByOtherPolicySettings-Description-End -->

<!-- PreventInstallationOfDevicesNotDescribedByOtherPolicySettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventInstallationOfDevicesNotDescribedByOtherPolicySettings-Editable-End -->

<!-- PreventInstallationOfDevicesNotDescribedByOtherPolicySettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreventInstallationOfDevicesNotDescribedByOtherPolicySettings-DFProperties-End -->

<!-- PreventInstallationOfDevicesNotDescribedByOtherPolicySettings-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DeviceInstall_Unspecified_Deny |
| Friendly Name | Prevent installation of devices not described by other policy settings |
| Location | Computer Configuration |
| Path | System > Device Installation > Device Installation Restrictions |
| Registry Key Name | Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions |
| Registry Value Name | DenyUnspecified |
| ADMX File Name | DeviceInstallation.admx |
<!-- PreventInstallationOfDevicesNotDescribedByOtherPolicySettings-AdmxBacked-End -->

<!-- PreventInstallationOfDevicesNotDescribedByOtherPolicySettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

To enable this policy, use the following SyncML. This example prevents Windows from installing devices that aren't described by any other policy setting.

```xml
<SyncML>
    <SyncBody>
        <Replace>
            <CmdID>$CmdID$</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/Policy/Config/DeviceInstallation/PreventInstallationOfDevicesNotDescribedByOtherPolicySettings</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">string</Format>
                </Meta>
                <Data><enabled/><data id="DenyUnspecified" value="1"/></Data>
                </Item>
        </Replace>
    </SyncBody>
</SyncML>
```

**Verify**:

To verify the policy is applied, check C:\windows\INF\setupapi.dev.log and see if the following details are listed near the end of the log:

```txt
>>>  [Device Installation Restrictions Policy Check]
>>>  Section start 2018/11/15 12:26:41.659
<<<  Section end 2018/11/15 12:26:41.751
<<<  [Exit status: SUCCESS]
```

You can also block installation by using a custom profile in Intune.

![Custom profile prevent devices.](images/custom-profile-prevent-other-devices.png)
<!-- PreventInstallationOfDevicesNotDescribedByOtherPolicySettings-Examples-End -->

<!-- PreventInstallationOfDevicesNotDescribedByOtherPolicySettings-End -->

<!-- PreventInstallationOfMatchingDeviceIDs-Begin -->
## PreventInstallationOfMatchingDeviceIDs

<!-- PreventInstallationOfMatchingDeviceIDs-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- PreventInstallationOfMatchingDeviceIDs-Applicability-End -->

<!-- PreventInstallationOfMatchingDeviceIDs-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceInstallation/PreventInstallationOfMatchingDeviceIDs
```
<!-- PreventInstallationOfMatchingDeviceIDs-OmaUri-End -->

<!-- PreventInstallationOfMatchingDeviceIDs-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify a list of Plug and Play hardware IDs and compatible IDs for devices that Windows is prevented from installing. By default, this policy setting takes precedence over any other policy setting that allows Windows to install a device.

> [!NOTE]
> To enable the "Allow installation of devices that match any of these device instance IDs" policy setting to supersede this policy setting for applicable devices, enable the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting.

- If you enable this policy setting, Windows is prevented from installing a device whose hardware ID or compatible ID appears in the list you create.

- If you enable this policy setting on a remote desktop server, the policy setting affects redirection of the specified devices from a remote desktop client to the remote desktop server.

- If you disable or don't configure this policy setting, devices can be installed and updated as allowed or prevented by other policy settings.
<!-- PreventInstallationOfMatchingDeviceIDs-Description-End -->

<!-- PreventInstallationOfMatchingDeviceIDs-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Peripherals can be specified by their [hardware identity](/windows-hardware/drivers/install/device-identification-strings). For a list of common identifier structures, see [Device Identifier Formats](/windows-hardware/drivers/install/device-identifier-formats). Test the configuration prior to rolling it out to ensure it blocks the devices expected. Ideally test various instances of the hardware. For example, test multiple USB keys rather than only one.
<!-- PreventInstallationOfMatchingDeviceIDs-Editable-End -->

<!-- PreventInstallationOfMatchingDeviceIDs-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreventInstallationOfMatchingDeviceIDs-DFProperties-End -->

<!-- PreventInstallationOfMatchingDeviceIDs-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DeviceInstall_IDs_Deny |
| Friendly Name | Prevent installation of devices that match any of these device IDs |
| Location | Computer Configuration |
| Path | System > Device Installation > Device Installation Restrictions |
| Registry Key Name | Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions |
| Registry Value Name | DenyDeviceIDs |
| ADMX File Name | DeviceInstallation.admx |
<!-- PreventInstallationOfMatchingDeviceIDs-AdmxBacked-End -->

<!-- PreventInstallationOfMatchingDeviceIDs-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

To enable this policy, use the following SyncML. This example prevents Windows from installing compatible devices with a device ID of USB\Composite or USB\Class_FF. To configure multiple classes, use `&amp;#xF000;` as a delimiter. To apply the policy to matching device classes that are already installed, set DeviceInstall_IDs_Deny_Retroactive to true.

```xml
<SyncML>
    <SyncBody>
        <Replace>
            <CmdID>$CmdID$</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/Policy/Config/DeviceInstallation/PreventInstallationOfMatchingDeviceIDs</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">string</Format>
                </Meta>
                <Data><enabled/><data id="DeviceInstall_IDs_Deny_Retroactive" value="true"/><Data id="DeviceInstall_IDs_Deny_List" value="1&#xF000;USB\Composite&#xF000;2&#xF000;USB\Class_FF"/></Data>
                </Item>
        </Replace>
    </SyncBody>
</SyncML>
```

**Verify**:

To verify the policy is applied, check C:\windows\INF\setupapi.dev.log and see if the following details are listed near the end of the log:

```txt
>>>  [Device Installation Restrictions Policy Check]
>>>  Section start 2018/11/15 12:26:41.659
<<<  Section end 2018/11/15 12:26:41.751
<<<  [Exit status: SUCCESS]
```

You can also block installation and usage of prohibited peripherals by using a custom profile in Intune.

For example, this custom profile blocks installation and usage of USB devices with hardware IDs "USB\Composite" and "USB\Class_FF", and applies to USB devices with matching hardware IDs that are already installed.

![Custom profile prevent device ids.](images/custom-profile-prevent-device-ids.png)
<!-- PreventInstallationOfMatchingDeviceIDs-Examples-End -->

<!-- PreventInstallationOfMatchingDeviceIDs-End -->

<!-- PreventInstallationOfMatchingDeviceInstanceIDs-Begin -->
## PreventInstallationOfMatchingDeviceInstanceIDs

<!-- PreventInstallationOfMatchingDeviceInstanceIDs-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- PreventInstallationOfMatchingDeviceInstanceIDs-Applicability-End -->

<!-- PreventInstallationOfMatchingDeviceInstanceIDs-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceInstallation/PreventInstallationOfMatchingDeviceInstanceIDs
```
<!-- PreventInstallationOfMatchingDeviceInstanceIDs-OmaUri-End -->

<!-- PreventInstallationOfMatchingDeviceInstanceIDs-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify a list of Plug and Play device instance IDs for devices that Windows is prevented from installing. This policy setting takes precedence over any other policy setting that allows Windows to install a device.

- If you enable this policy setting, Windows is prevented from installing a device whose device instance ID appears in the list you create.

- If you enable this policy setting on a remote desktop server, the policy setting affects redirection of the specified devices from a remote desktop client to the remote desktop server.

- If you disable or don't configure this policy setting, devices can be installed and updated as allowed or prevented by other policy settings.
<!-- PreventInstallationOfMatchingDeviceInstanceIDs-Description-End -->

<!-- PreventInstallationOfMatchingDeviceInstanceIDs-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Peripherals can be specified by their [device instance ID](/windows-hardware/drivers/install/device-instance-ids). Test the configuration prior to rolling it out to ensure it allows the devices expected. Ideally test various instances of the hardware. For example, test multiple USB keys rather than only one.
<!-- PreventInstallationOfMatchingDeviceInstanceIDs-Editable-End -->

<!-- PreventInstallationOfMatchingDeviceInstanceIDs-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreventInstallationOfMatchingDeviceInstanceIDs-DFProperties-End -->

<!-- PreventInstallationOfMatchingDeviceInstanceIDs-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DeviceInstall_Instance_IDs_Deny |
| Friendly Name | Prevent installation of devices that match any of these device instance IDs |
| Location | Computer Configuration |
| Path | System > Device Installation > Device Installation Restrictions |
| Registry Key Name | Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions |
| Registry Value Name | DenyInstanceIDs |
| ADMX File Name | DeviceInstallation.admx |
<!-- PreventInstallationOfMatchingDeviceInstanceIDs-AdmxBacked-End -->

<!-- PreventInstallationOfMatchingDeviceInstanceIDs-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

To enable this policy, use the following SyncML. This example prevents Windows from installing compatible devices with device instance IDs of USB\VID_1F75 and USB\VID_0781. To configure multiple classes, use `&#xF000;` as a delimiter.

``` xml
<SyncML>
    <SyncBody>
        <Replace>
            <CmdID>$CmdID$</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/Policy/Config/DeviceInstallation/PreventInstallationOfMatchingDeviceInstanceIDs</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">string</Format>
                </Meta>
                <Data><enabled/><data id="DeviceInstall_Instance_IDs_Deny_Retroactive" value="true"/><Data id="DeviceInstall_Instance_IDs_Deny_List" value="1&#xF000;USB\VID_1F75&amp;PID_0917\47802411805883&#xF000;2&#xF000;USB\VID_0781&amp;PID_5530\4C530001191214116305"/></Data>
                </Item>
        </Replace>
    </SyncBody>
</SyncML>
```

**Verify**:

To verify the policy is applied, check C:\windows\INF\setupapi.dev.log and see if the following details are listed near the end of the log:

``` txt
>>>  [Device Installation Restrictions Policy Check]
>>>  Section start 2018/11/15 12:26:41.659
<<<  Section end 2018/11/15 12:26:41.751
<<<  [Exit status: SUCCESS]
```

You can also block installation and usage of prohibited peripherals by using a custom profile in Intune.

For example, this custom profile prevents installation of devices with matching device instance IDs.

![Custom profile.](images/custom-profile-prevent-device-instance-ids.png)

To prevent installation of devices with matching device instance IDs by using custom profile in Intune:

1. Locate the device instance ID.
1. Replace `&` in the device instance IDs with `&amp;`. For example: Replace `USBSTOR\DISK&VEN_SAMSUNG&PROD_FLASH_DRIVE&REV_1100\0376319020002347&0` with `USBSTOR\DISK&amp;VEN_SAMSUNG&amp;PROD_FLASH_DRIVE&amp;REV_1100\0376319020002347&amp;0`.

    > [!NOTE]
    > Don't use spaces in the value.

1. Replace the device instance IDs with `&amp;` into the sample SyncML. Add the SyncML into the Intune custom device configuration profile.
<!-- PreventInstallationOfMatchingDeviceInstanceIDs-Examples-End -->

<!-- PreventInstallationOfMatchingDeviceInstanceIDs-End -->

<!-- PreventInstallationOfMatchingDeviceSetupClasses-Begin -->
## PreventInstallationOfMatchingDeviceSetupClasses

<!-- PreventInstallationOfMatchingDeviceSetupClasses-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- PreventInstallationOfMatchingDeviceSetupClasses-Applicability-End -->

<!-- PreventInstallationOfMatchingDeviceSetupClasses-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceInstallation/PreventInstallationOfMatchingDeviceSetupClasses
```
<!-- PreventInstallationOfMatchingDeviceSetupClasses-OmaUri-End -->

<!-- PreventInstallationOfMatchingDeviceSetupClasses-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify a list of device setup class globally unique identifiers (GUIDs) for driver packages that Windows is prevented from installing. By default, this policy setting takes precedence over any other policy setting that allows Windows to install a device.

> [!NOTE]
> To enable the "Allow installation of devices that match any of these device IDs" and "Allow installation of devices that match any of these device instance IDs" policy settings to supersede this policy setting for applicable devices, enable the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting.

- If you enable this policy setting, Windows is prevented from installing or updating driver packages whose device setup class GUIDs appear in the list you create.

- If you enable this policy setting on a remote desktop server, the policy setting affects redirection of the specified devices from a remote desktop client to the remote desktop server.

- If you disable or don't configure this policy setting, Windows can install and update devices as allowed or prevented by other policy settings.
<!-- PreventInstallationOfMatchingDeviceSetupClasses-Description-End -->

<!-- PreventInstallationOfMatchingDeviceSetupClasses-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Peripherals can be specified by their [hardware identity](/windows-hardware/drivers/install/device-identification-strings). For a list of common identifier structures, see [Device Identifier Formats](/windows-hardware/drivers/install/device-identifier-formats). Test the configuration prior to rolling it out to ensure it blocks the devices expected. Ideally test various instances of the hardware. For example, test multiple USB keys rather than only one.
<!-- PreventInstallationOfMatchingDeviceSetupClasses-Editable-End -->

<!-- PreventInstallationOfMatchingDeviceSetupClasses-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreventInstallationOfMatchingDeviceSetupClasses-DFProperties-End -->

<!-- PreventInstallationOfMatchingDeviceSetupClasses-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DeviceInstall_Classes_Deny |
| Friendly Name | Prevent installation of devices using drivers that match these device setup classes |
| Location | Computer Configuration |
| Path | System > Device Installation > Device Installation Restrictions |
| Registry Key Name | Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions |
| Registry Value Name | DenyDeviceClasses |
| ADMX File Name | DeviceInstallation.admx |
<!-- PreventInstallationOfMatchingDeviceSetupClasses-AdmxBacked-End -->

<!-- PreventInstallationOfMatchingDeviceSetupClasses-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

To enable this policy, use the following SyncML. This example prevents Windows from installing:

- Floppy Disks, ClassGUID = {4d36e980-e325-11ce-bfc1-08002be10318}
- CD ROMs, ClassGUID = {4d36e965-e325-11ce-bfc1-08002be10318}
- Modems, ClassGUID = {4d36e96d-e325-11ce-bfc1-08002be10318}

Enclose the class GUID within curly brackets {}. To configure multiple classes, use `&#xF000;` as a delimiter. To apply the policy to matching device classes that are already installed, set DeviceInstall_Classes_Deny_Retroactive to true.


```xml
<SyncML>
    <SyncBody>
        <Replace>
            <CmdID>$CmdID$</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/Policy/Config/DeviceInstallation/PreventInstallationOfMatchingDeviceSetupClasses</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">string</Format>
                </Meta>
                <Data><enabled/><data id="DeviceInstall_Classes_Deny_Retroactive" value="true"/><Data id="DeviceInstall_Classes_Deny_List" value="1&#xF000;{4d36e980-e325-11ce-bfc1-08002be10318}&#xF000;2&#xF000;{4d36e965-e325-11ce-bfc1-08002be10318}&#xF000;3&#xF000;{4d36e96d-e325-11ce-bfc1-08002be10318}"/></Data>
                </Item>
        </Replace>
    </SyncBody>
</SyncML>
```

**Verify**:

To verify the policy is applied, check C:\windows\INF\setupapi.dev.log and see if the following details are listed near the end of the log:

```txt
>>>  [Device Installation Restrictions Policy Check]
>>>  Section start 2018/11/15 12:26:41.659
<<<  Section end 2018/11/15 12:26:41.751
<<<  [Exit status: SUCCESS]
```
<!-- PreventInstallationOfMatchingDeviceSetupClasses-Examples-End -->

<!-- PreventInstallationOfMatchingDeviceSetupClasses-End -->

<!-- DeviceInstallation-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- DeviceInstallation-CspMoreInfo-End -->

<!-- DeviceInstallation-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
