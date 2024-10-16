---
title: Policy CSP
description: Learn more about the Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- Policy-Begin -->
# Policy CSP

<!-- Policy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The Policy configuration service provider enables the enterprise to configure policies on Windows 10 and Windows 11. Use this configuration service provider to configure any company policies.

The Policy configuration service provider has the following sub-categories:

- Policy/Config/**AreaName** - Handles the policy configuration request from the server.
- Policy/Result/**AreaName** - Provides a read-only path to policies enforced on the device.

## Policy scope

Policy scope is the level at which a policy can be configured. Some policies can only be configured at the device level, meaning the policy will take effect independent of who is logged into the device. Other policies can be configured at the user level, meaning the policy will only take effect for that user. To configure a policy under a specific scope (user vs. device), please use the following paths:

**User scope**:

- **./User/Vendor/MSFT/Policy/Config/_AreaName/PolicyName_** to configure the policy.
- **./User/Vendor/MSFT/Policy/Result/_AreaName/PolicyName_** to get the result.

**Device scope**:

- **./Device/Vendor/MSFT/Policy/Config/_AreaName/PolicyName_** to configure the policy.
- **./Device/Vendor/MSFT/Policy/Result/_AreaName/PolicyName_** to get the result.

> [!NOTE]
> For device wide configuration the **_Device/_**  portion may be omitted from the path, deeming the following paths respectively equivalent to the paths provided above:
>
> - **./Vendor/MSFT/Policy/Config/_AreaName/PolicyName_** to configure the policy.
> - **./Vendor/MSFT/Policy/Result/_AreaName/PolicyName_** to get the result.
<!-- Policy-Editable-End -->

<!-- Policy-Tree-Begin -->
The following list shows the Policy configuration service provider nodes:

- ./Device/Vendor/MSFT/Policy
  - [Config](#deviceconfig)
    - [{AreaName}](#deviceconfigareaname)
      - [{PolicyName}](#deviceconfigareanamepolicyname)
  - [ConfigOperations](#deviceconfigoperations)
    - [ADMXInstall](#deviceconfigoperationsadmxinstall)
      - [{AppName}](#deviceconfigoperationsadmxinstallappname)
        - [{SettingsType}](#deviceconfigoperationsadmxinstallappnamesettingstype)
          - [{AdmxFileId}](#deviceconfigoperationsadmxinstallappnamesettingstypeadmxfileid)
        - [Properties](#deviceconfigoperationsadmxinstallappnameproperties)
          - [{SettingsType}](#deviceconfigoperationsadmxinstallappnamepropertiessettingstype)
            - [{AdmxFileId}](#deviceconfigoperationsadmxinstallappnamepropertiessettingstypeadmxfileid)
              - [Version](#deviceconfigoperationsadmxinstallappnamepropertiessettingstypeadmxfileidversion)
  - [Result](#deviceresult)
    - [{AreaName}](#deviceresultareaname)
      - [{PolicyName}](#deviceresultareanamepolicyname)
- ./User/Vendor/MSFT/Policy
  - [Config](#userconfig)
    - [{AreaName}](#userconfigareaname)
      - [{PolicyName}](#userconfigareanamepolicyname)
  - [Result](#userresult)
    - [{AreaName}](#userresultareaname)
      - [{PolicyName}](#userresultareanamepolicyname)
<!-- Policy-Tree-End -->

<!-- Device-Config-Begin -->
## Device/Config

<!-- Device-Config-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Config-Applicability-End -->

<!-- Device-Config-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config
```
<!-- Device-Config-OmaUri-End -->

<!-- Device-Config-Description-Begin -->
<!-- Description-Source-DDF -->
Node for grouping all policies configured by one source. The configuration source can use this path to set policy values and later query any policy value that it previously set. One policy can be configured by multiple configuration sources. If a configuration source wants to query the result of conflict resolution (for example, if Exchange and MDM both attempt to set a value,) the configuration source can use the Policy/Result path to retrieve the resulting value.
<!-- Device-Config-Description-End -->

<!-- Device-Config-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Config-Editable-End -->

<!-- Device-Config-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-Config-DFProperties-End -->

<!-- Device-Config-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Config-Examples-End -->

<!-- Device-Config-End -->

<!-- Device-Config-{AreaName}-Begin -->
### Device/Config/{AreaName}

<!-- Device-Config-{AreaName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Config-{AreaName}-Applicability-End -->

<!-- Device-Config-{AreaName}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/{AreaName}
```
<!-- Device-Config-{AreaName}-OmaUri-End -->

<!-- Device-Config-{AreaName}-Description-Begin -->
<!-- Description-Source-DDF -->
The area group that can be configured by a single technology for a single provider. Once added, you can't change the value. See the individual Area DDFs for Policy CSP for a list of Areas that can be configured.
<!-- Device-Config-{AreaName}-Description-End -->

<!-- Device-Config-{AreaName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Config-{AreaName}-Editable-End -->

<!-- Device-Config-{AreaName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ClientInventory |
<!-- Device-Config-{AreaName}-DFProperties-End -->

<!-- Device-Config-{AreaName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Config-{AreaName}-Examples-End -->

<!-- Device-Config-{AreaName}-End -->

<!-- Device-Config-{AreaName}-{PolicyName}-Begin -->
#### Device/Config/{AreaName}/{PolicyName}

<!-- Device-Config-{AreaName}-{PolicyName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Config-{AreaName}-{PolicyName}-Applicability-End -->

<!-- Device-Config-{AreaName}-{PolicyName}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/{AreaName}/{PolicyName}
```
<!-- Device-Config-{AreaName}-{PolicyName}-OmaUri-End -->

<!-- Device-Config-{AreaName}-{PolicyName}-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the name/value pair used in the policy. See the individual Area DDFs for more information about the policies available to configure.
<!-- Device-Config-{AreaName}-{PolicyName}-Description-End -->

<!-- Device-Config-{AreaName}-{PolicyName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The following list shows some tips to help you when configuring policies:

- Separate substring values by Unicode `0xF000` in the XML file.
    > [!NOTE]
    > A query from a different caller could provide a different value as each caller could have different values for a named policy.
- In SyncML, wrap this policy with the Atomic command so that the policy settings are treated as a single transaction.
- Supported operations are Add, Get, Delete, and Replace.
- Value type is string.
<!-- Device-Config-{AreaName}-{PolicyName}-Editable-End -->

<!-- Device-Config-{AreaName}-{PolicyName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `null` |
| Access Type | Add, Delete, Get, Replace |
| Dynamic Node Naming | ClientInventory |
<!-- Device-Config-{AreaName}-{PolicyName}-DFProperties-End -->

<!-- Device-Config-{AreaName}-{PolicyName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Config-{AreaName}-{PolicyName}-Examples-End -->

<!-- Device-Config-{AreaName}-{PolicyName}-End -->

<!-- Device-ConfigOperations-Begin -->
## Device/ConfigOperations

<!-- Device-ConfigOperations-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-ConfigOperations-Applicability-End -->

<!-- Device-ConfigOperations-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/ConfigOperations
```
<!-- Device-ConfigOperations-OmaUri-End -->

<!-- Device-ConfigOperations-Description-Begin -->
<!-- Description-Source-DDF -->
The root node for grouping different configuration operations.
<!-- Device-ConfigOperations-Description-End -->

<!-- Device-ConfigOperations-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ConfigOperations-Editable-End -->

<!-- Device-ConfigOperations-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-ConfigOperations-DFProperties-End -->

<!-- Device-ConfigOperations-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ConfigOperations-Examples-End -->

<!-- Device-ConfigOperations-End -->

<!-- Device-ConfigOperations-ADMXInstall-Begin -->
### Device/ConfigOperations/ADMXInstall

<!-- Device-ConfigOperations-ADMXInstall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-ConfigOperations-ADMXInstall-Applicability-End -->

<!-- Device-ConfigOperations-ADMXInstall-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/ConfigOperations/ADMXInstall
```
<!-- Device-ConfigOperations-ADMXInstall-OmaUri-End -->

<!-- Device-ConfigOperations-ADMXInstall-Description-Begin -->
<!-- Description-Source-DDF -->
Allows settings for ADMX files for Win32 and Desktop Bridge apps to be imported (ingested) by your device and processed into new ADMX-backed policies or preferences. By using ADMXInstall, you can add ADMX-backed policies for those Win32 or Desktop Bridge apps that have been added between OS releases. ADMX-backed policies are ingested to your device by using the Policy CSP URI: ./Vendor/MSFT/Policy/ConfigOperations/ADMXInstall. Each ADMX-backed policy or preference that's added is assigned a unique ID. ADMX files that have been installed by using ConfigOperations/ADMXInstall can later be deleted by using the URI delete operation. Deleting an ADMX file will delete the ADMX file from disk, remove the metadata from the ADMXdefault registry hive, and delete all the policies that were set from the file. The MDM server can also delete all ADMX policies that are tied to a particular app by calling delete on the URI, ./Vendor/MSFT/Policy/ConfigOperations/ADMXInstall/{AppName}.
<!-- Device-ConfigOperations-ADMXInstall-Description-End -->

<!-- Device-ConfigOperations-ADMXInstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
 For more information about using Policy CSP to configure Win32 and Desktop Bridge app policies, see [Win32 and Desktop Bridge app policy configuration](../win32-and-centennial-app-policy-configuration.md).

> [!NOTE]
> The OPAX settings that are managed by the Microsoft Office Customization Tool are not supported by MDM. For more information about this tool, see [Office Customization Tool](/previous-versions/office/office-2013-resource-kit/cc179097(v=office.15)).
<!-- Device-ConfigOperations-ADMXInstall-Editable-End -->

<!-- Device-ConfigOperations-ADMXInstall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-ConfigOperations-ADMXInstall-DFProperties-End -->

<!-- Device-ConfigOperations-ADMXInstall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ConfigOperations-ADMXInstall-Examples-End -->

<!-- Device-ConfigOperations-ADMXInstall-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Begin -->
#### Device/ConfigOperations/ADMXInstall/{AppName}

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Applicability-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/ConfigOperations/ADMXInstall/{AppName}
```
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-OmaUri-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the name of the Win32 or Desktop Bridge app associated with the ADMX file.
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Description-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Editable-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName: Specifies the name of the Win32 or Desktop Bridge app associated with the ADMX file. |
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-DFProperties-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Examples-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-Begin -->
##### Device/ConfigOperations/ADMXInstall/{AppName}/{SettingsType}

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-Applicability-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/ConfigOperations/ADMXInstall/{AppName}/{SettingsType}
```
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-OmaUri-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-Description-Begin -->
<!-- Description-Source-DDF -->
Setting Type of Win32 App. Policy Or Preference.
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-Description-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-Editable-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName: Setting Type of Win32 App. Policy Or Preference |
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-DFProperties-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-Examples-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-{AdmxFileId}-Begin -->
###### Device/ConfigOperations/ADMXInstall/{AppName}/{SettingsType}/{AdmxFileId}

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-{AdmxFileId}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-{AdmxFileId}-Applicability-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-{AdmxFileId}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/ConfigOperations/ADMXInstall/{AppName}/{SettingsType}/{AdmxFileId}
```
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-{AdmxFileId}-OmaUri-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-{AdmxFileId}-Description-Begin -->
<!-- Description-Source-DDF -->
Unique ID of ADMX file.
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-{AdmxFileId}-Description-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-{AdmxFileId}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-{AdmxFileId}-Editable-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-{AdmxFileId}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-{AdmxFileId}-DFProperties-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-{AdmxFileId}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-{AdmxFileId}-Examples-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-{SettingsType}-{AdmxFileId}-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-Begin -->
##### Device/ConfigOperations/ADMXInstall/{AppName}/Properties

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 with [KB4520006](https://support.microsoft.com/help/4520006) [10.0.16299.1481] and later <br> ✅ Windows 10, version 1803 with [KB4519978](https://support.microsoft.com/help/4519978) [10.0.17134.1099] and later <br> ✅ Windows 10, version 1809 with [KB4520062](https://support.microsoft.com/help/4520062) [10.0.17763.832] and later <br> ✅ Windows 10, version 1903 with [KB4517211](https://support.microsoft.com/help/4517211) [10.0.18362.387] and later <br> ✅ Windows 10, version 1909 [10.0.18363] and later |
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-Applicability-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/ConfigOperations/ADMXInstall/{AppName}/Properties
```
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-OmaUri-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-Description-Begin -->
<!-- Description-Source-DDF -->
Properties of Win32 App ADMX Ingestion.
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-Description-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-Editable-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-DFProperties-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-Examples-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-Begin -->
###### Device/ConfigOperations/ADMXInstall/{AppName}/Properties/{SettingsType}

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 with [KB4520006](https://support.microsoft.com/help/4520006) [10.0.16299.1481] and later <br> ✅ Windows 10, version 1803 with [KB4519978](https://support.microsoft.com/help/4519978) [10.0.17134.1099] and later <br> ✅ Windows 10, version 1809 with [KB4520062](https://support.microsoft.com/help/4520062) [10.0.17763.832] and later <br> ✅ Windows 10, version 1903 with [KB4517211](https://support.microsoft.com/help/4517211) [10.0.18362.387] and later <br> ✅ Windows 10, version 1909 [10.0.18363] and later |
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-Applicability-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/ConfigOperations/ADMXInstall/{AppName}/Properties/{SettingsType}
```
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-OmaUri-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-Description-Begin -->
<!-- Description-Source-DDF -->
Setting Type of Win32 App. Policy Or Preference.
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-Description-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-Editable-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName: Setting Type of Win32 App. Policy Or Preference |
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-DFProperties-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-Examples-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-Begin -->
###### Device/ConfigOperations/ADMXInstall/{AppName}/Properties/{SettingsType}/{AdmxFileId}

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 with [KB4520006](https://support.microsoft.com/help/4520006) [10.0.16299.1481] and later <br> ✅ Windows 10, version 1803 with [KB4519978](https://support.microsoft.com/help/4519978) [10.0.17134.1099] and later <br> ✅ Windows 10, version 1809 with [KB4520062](https://support.microsoft.com/help/4520062) [10.0.17763.832] and later <br> ✅ Windows 10, version 1903 with [KB4517211](https://support.microsoft.com/help/4517211) [10.0.18362.387] and later <br> ✅ Windows 10, version 1909 [10.0.18363] and later |
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-Applicability-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/ConfigOperations/ADMXInstall/{AppName}/Properties/{SettingsType}/{AdmxFileId}
```
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-OmaUri-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-Description-Begin -->
<!-- Description-Source-DDF -->
Unique ID of ADMX file.
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-Description-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-Editable-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-DFProperties-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-Examples-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-Version-Begin -->
###### Device/ConfigOperations/ADMXInstall/{AppName}/Properties/{SettingsType}/{AdmxFileId}/Version

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-Version-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 with [KB4520006](https://support.microsoft.com/help/4520006) [10.0.16299.1481] and later <br> ✅ Windows 10, version 1803 with [KB4519978](https://support.microsoft.com/help/4519978) [10.0.17134.1099] and later <br> ✅ Windows 10, version 1809 with [KB4520062](https://support.microsoft.com/help/4520062) [10.0.17763.832] and later <br> ✅ Windows 10, version 1903 with [KB4517211](https://support.microsoft.com/help/4517211) [10.0.18362.387] and later <br> ✅ Windows 10, version 1909 [10.0.18363] and later |
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-Version-Applicability-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-Version-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/ConfigOperations/ADMXInstall/{AppName}/Properties/{SettingsType}/{AdmxFileId}/Version
```
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-Version-OmaUri-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-Version-Description-Begin -->
<!-- Description-Source-DDF -->
Version of ADMX file. This can be set by the server to keep a record of the versioning of the ADMX file ingested by the device.
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-Version-Description-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-Version-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-Version-Editable-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-Version-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-Version-DFProperties-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-Version-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-Version-Examples-End -->

<!-- Device-ConfigOperations-ADMXInstall-{AppName}-Properties-{SettingsType}-{AdmxFileId}-Version-End -->

<!-- Device-Result-Begin -->
## Device/Result

<!-- Device-Result-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Result-Applicability-End -->

<!-- Device-Result-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Result
```
<!-- Device-Result-OmaUri-End -->

<!-- Device-Result-Description-Begin -->
<!-- Description-Source-DDF -->
Groups the evaluated policies from all providers that can be configured.
<!-- Device-Result-Description-End -->

<!-- Device-Result-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Result-Editable-End -->

<!-- Device-Result-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Result-DFProperties-End -->

<!-- Device-Result-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Result-Examples-End -->

<!-- Device-Result-End -->

<!-- Device-Result-{AreaName}-Begin -->
### Device/Result/{AreaName}

<!-- Device-Result-{AreaName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Result-{AreaName}-Applicability-End -->

<!-- Device-Result-{AreaName}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Result/{AreaName}
```
<!-- Device-Result-{AreaName}-OmaUri-End -->

<!-- Device-Result-{AreaName}-Description-Begin -->
<!-- Description-Source-DDF -->
The area group that can be configured by a single technology independent of the providers. See the individual Area DDFs for Policy CSP for a list of Areas that can be configured.
<!-- Device-Result-{AreaName}-Description-End -->

<!-- Device-Result-{AreaName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Result-{AreaName}-Editable-End -->

<!-- Device-Result-{AreaName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
| Dynamic Node Naming | ClientInventory |
<!-- Device-Result-{AreaName}-DFProperties-End -->

<!-- Device-Result-{AreaName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Result-{AreaName}-Examples-End -->

<!-- Device-Result-{AreaName}-End -->

<!-- Device-Result-{AreaName}-{PolicyName}-Begin -->
#### Device/Result/{AreaName}/{PolicyName}

<!-- Device-Result-{AreaName}-{PolicyName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- Device-Result-{AreaName}-{PolicyName}-Applicability-End -->

<!-- Device-Result-{AreaName}-{PolicyName}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Result/{AreaName}/{PolicyName}
```
<!-- Device-Result-{AreaName}-{PolicyName}-OmaUri-End -->

<!-- Device-Result-{AreaName}-{PolicyName}-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the name/value pair used in the policy. See the individual Area DDFs for more information about the policies available to configure.
<!-- Device-Result-{AreaName}-{PolicyName}-Description-End -->

<!-- Device-Result-{AreaName}-{PolicyName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Result-{AreaName}-{PolicyName}-Editable-End -->

<!-- Device-Result-{AreaName}-{PolicyName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `null` |
| Access Type | Get |
| Dynamic Node Naming | ClientInventory |
<!-- Device-Result-{AreaName}-{PolicyName}-DFProperties-End -->

<!-- Device-Result-{AreaName}-{PolicyName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Result-{AreaName}-{PolicyName}-Examples-End -->

<!-- Device-Result-{AreaName}-{PolicyName}-End -->

<!-- User-Config-Begin -->
## User/Config

<!-- User-Config-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ❌ Pro <br> ❌ Enterprise <br> ❌ Education <br> ❌ Windows SE <br> ❌ IoT Enterprise / IoT Enterprise LTSC | <!-- Not-Found --> |
<!-- User-Config-Applicability-End -->

<!-- User-Config-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config
```
<!-- User-Config-OmaUri-End -->

<!-- User-Config-Description-Begin -->
<!-- Description-Source-DDF -->
Node for grouping all policies configured by one source. The configuration source can use this path to set policy values and later query any policy value that it previously set. One policy can be configured by multiple configuration sources. If a configuration source wants to query the result of conflict resolution (for example, if Exchange and MDM both attempt to set a value,) the configuration source can use the Policy/Result path to retrieve the resulting value.
<!-- User-Config-Description-End -->

<!-- User-Config-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Config-Editable-End -->

<!-- User-Config-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- User-Config-DFProperties-End -->

<!-- User-Config-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Config-Examples-End -->

<!-- User-Config-End -->

<!-- User-Config-{AreaName}-Begin -->
### User/Config/{AreaName}

<!-- User-Config-{AreaName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ❌ Pro <br> ❌ Enterprise <br> ❌ Education <br> ❌ Windows SE <br> ❌ IoT Enterprise / IoT Enterprise LTSC | <!-- Not-Found --> |
<!-- User-Config-{AreaName}-Applicability-End -->

<!-- User-Config-{AreaName}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/{AreaName}
```
<!-- User-Config-{AreaName}-OmaUri-End -->

<!-- User-Config-{AreaName}-Description-Begin -->
<!-- Description-Source-DDF -->
The area group that can be configured by a single technology for a single provider. Once added, you can't change the value. See the individual Area DDFs for Policy CSP for a list of Areas that can be configured.
<!-- User-Config-{AreaName}-Description-End -->

<!-- User-Config-{AreaName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The following list shows some tips to help you when configuring policies:

- Separate substring values by Unicode `0xF000` in the XML file.
    > [!NOTE]
    > A query from a different caller could provide a different value as each caller could have different values for a named policy.
- In SyncML, wrap this policy with the Atomic command so that the policy settings are treated as a single transaction.
- Supported operations are Add, Get, Delete, and Replace.
- Value type is string.
<!-- User-Config-{AreaName}-Editable-End -->

<!-- User-Config-{AreaName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | ClientInventory |
<!-- User-Config-{AreaName}-DFProperties-End -->

<!-- User-Config-{AreaName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Config-{AreaName}-Examples-End -->

<!-- User-Config-{AreaName}-End -->

<!-- User-Config-{AreaName}-{PolicyName}-Begin -->
#### User/Config/{AreaName}/{PolicyName}

<!-- User-Config-{AreaName}-{PolicyName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ❌ Pro <br> ❌ Enterprise <br> ❌ Education <br> ❌ Windows SE <br> ❌ IoT Enterprise / IoT Enterprise LTSC | <!-- Not-Found --> |
<!-- User-Config-{AreaName}-{PolicyName}-Applicability-End -->

<!-- User-Config-{AreaName}-{PolicyName}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/{AreaName}/{PolicyName}
```
<!-- User-Config-{AreaName}-{PolicyName}-OmaUri-End -->

<!-- User-Config-{AreaName}-{PolicyName}-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the name/value pair used in the policy. See the individual Area DDFs for more information about the policies available to configure.
<!-- User-Config-{AreaName}-{PolicyName}-Description-End -->

<!-- User-Config-{AreaName}-{PolicyName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Config-{AreaName}-{PolicyName}-Editable-End -->

<!-- User-Config-{AreaName}-{PolicyName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `null` |
| Access Type | Add, Delete, Get, Replace |
| Dynamic Node Naming | ClientInventory |
<!-- User-Config-{AreaName}-{PolicyName}-DFProperties-End -->

<!-- User-Config-{AreaName}-{PolicyName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Config-{AreaName}-{PolicyName}-Examples-End -->

<!-- User-Config-{AreaName}-{PolicyName}-End -->

<!-- User-Result-Begin -->
## User/Result

<!-- User-Result-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ❌ Pro <br> ❌ Enterprise <br> ❌ Education <br> ❌ Windows SE <br> ❌ IoT Enterprise / IoT Enterprise LTSC | <!-- Not-Found --> |
<!-- User-Result-Applicability-End -->

<!-- User-Result-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Result
```
<!-- User-Result-OmaUri-End -->

<!-- User-Result-Description-Begin -->
<!-- Description-Source-DDF -->
Groups the evaluated policies from all providers that can be configured.
<!-- User-Result-Description-End -->

<!-- User-Result-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Result-Editable-End -->

<!-- User-Result-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-Result-DFProperties-End -->

<!-- User-Result-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Result-Examples-End -->

<!-- User-Result-End -->

<!-- User-Result-{AreaName}-Begin -->
### User/Result/{AreaName}

<!-- User-Result-{AreaName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ❌ Pro <br> ❌ Enterprise <br> ❌ Education <br> ❌ Windows SE <br> ❌ IoT Enterprise / IoT Enterprise LTSC | <!-- Not-Found --> |
<!-- User-Result-{AreaName}-Applicability-End -->

<!-- User-Result-{AreaName}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Result/{AreaName}
```
<!-- User-Result-{AreaName}-OmaUri-End -->

<!-- User-Result-{AreaName}-Description-Begin -->
<!-- Description-Source-DDF -->
The area group that can be configured by a single technology independent of the providers. See the individual Area DDFs for Policy CSP for a list of Areas that can be configured.
<!-- User-Result-{AreaName}-Description-End -->

<!-- User-Result-{AreaName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Result-{AreaName}-Editable-End -->

<!-- User-Result-{AreaName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
| Dynamic Node Naming | ClientInventory |
<!-- User-Result-{AreaName}-DFProperties-End -->

<!-- User-Result-{AreaName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Result-{AreaName}-Examples-End -->

<!-- User-Result-{AreaName}-End -->

<!-- User-Result-{AreaName}-{PolicyName}-Begin -->
#### User/Result/{AreaName}/{PolicyName}

<!-- User-Result-{AreaName}-{PolicyName}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ❌ Pro <br> ❌ Enterprise <br> ❌ Education <br> ❌ Windows SE <br> ❌ IoT Enterprise / IoT Enterprise LTSC | <!-- Not-Found --> |
<!-- User-Result-{AreaName}-{PolicyName}-Applicability-End -->

<!-- User-Result-{AreaName}-{PolicyName}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Result/{AreaName}/{PolicyName}
```
<!-- User-Result-{AreaName}-{PolicyName}-OmaUri-End -->

<!-- User-Result-{AreaName}-{PolicyName}-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the name/value pair used in the policy. See the individual Area DDFs for more information about the policies available to configure.
<!-- User-Result-{AreaName}-{PolicyName}-Description-End -->

<!-- User-Result-{AreaName}-{PolicyName}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Result-{AreaName}-{PolicyName}-Editable-End -->

<!-- User-Result-{AreaName}-{PolicyName}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `null` |
| Access Type | Get |
| Dynamic Node Naming | ServerGeneratedUniqueIdentifier |
<!-- User-Result-{AreaName}-{PolicyName}-DFProperties-End -->

<!-- User-Result-{AreaName}-{PolicyName}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Result-{AreaName}-{PolicyName}-Examples-End -->

<!-- User-Result-{AreaName}-{PolicyName}-End -->

## Policy Areas

- [AboveLock](policy-csp-abovelock.md)
- [Accounts](policy-csp-accounts.md)
- [ActiveXControls](policy-csp-activexcontrols.md)
- [ADMX_ActiveXInstallService](policy-csp-admx-activexinstallservice.md)
- [ADMX_AddRemovePrograms](policy-csp-admx-addremoveprograms.md)
- [ADMX_AdmPwd](policy-csp-admx-admpwd.md)
- [ADMX_AppCompat](policy-csp-admx-appcompat.md)
- [ADMX_AppxPackageManager](policy-csp-admx-appxpackagemanager.md)
- [ADMX_AppXRuntime](policy-csp-admx-appxruntime.md)
- [ADMX_AttachmentManager](policy-csp-admx-attachmentmanager.md)
- [ADMX_AuditSettings](policy-csp-admx-auditsettings.md)
- [ADMX_Bits](policy-csp-admx-bits.md)
- [ADMX_CipherSuiteOrder](policy-csp-admx-ciphersuiteorder.md)
- [ADMX_COM](policy-csp-admx-com.md)
- [ADMX_ControlPanel](policy-csp-admx-controlpanel.md)
- [ADMX_ControlPanelDisplay](policy-csp-admx-controlpaneldisplay.md)
- [ADMX_Cpls](policy-csp-admx-cpls.md)
- [ADMX_CredentialProviders](policy-csp-admx-credentialproviders.md)
- [ADMX_CredSsp](policy-csp-admx-credssp.md)
- [ADMX_CredUI](policy-csp-admx-credui.md)
- [ADMX_CtrlAltDel](policy-csp-admx-ctrlaltdel.md)
- [ADMX_DataCollection](policy-csp-admx-datacollection.md)
- [ADMX_DCOM](policy-csp-admx-dcom.md)
- [ADMX_Desktop](policy-csp-admx-desktop.md)
- [ADMX_DeviceCompat](policy-csp-admx-devicecompat.md)
- [ADMX_DeviceGuard](policy-csp-admx-deviceguard.md)
- [ADMX_DeviceInstallation](policy-csp-admx-deviceinstallation.md)
- [ADMX_DeviceSetup](policy-csp-admx-devicesetup.md)
- [ADMX_DFS](policy-csp-admx-dfs.md)
- [ADMX_DigitalLocker](policy-csp-admx-digitallocker.md)
- [ADMX_DiskDiagnostic](policy-csp-admx-diskdiagnostic.md)
- [ADMX_DiskNVCache](policy-csp-admx-disknvcache.md)
- [ADMX_DiskQuota](policy-csp-admx-diskquota.md)
- [ADMX_DistributedLinkTracking](policy-csp-admx-distributedlinktracking.md)
- [ADMX_DnsClient](policy-csp-admx-dnsclient.md)
- [ADMX_DWM](policy-csp-admx-dwm.md)
- [ADMX_EAIME](policy-csp-admx-eaime.md)
- [ADMX_EncryptFilesonMove](policy-csp-admx-encryptfilesonmove.md)
- [ADMX_EnhancedStorage](policy-csp-admx-enhancedstorage.md)
- [ADMX_ErrorReporting](policy-csp-admx-errorreporting.md)
- [ADMX_EventForwarding](policy-csp-admx-eventforwarding.md)
- [ADMX_EventLog](policy-csp-admx-eventlog.md)
- [ADMX_EventLogging](policy-csp-admx-eventlogging.md)
- [ADMX_EventViewer](policy-csp-admx-eventviewer.md)
- [ADMX_Explorer](policy-csp-admx-explorer.md)
- [ADMX_ExternalBoot](policy-csp-admx-externalboot.md)
- [ADMX_FileRecovery](policy-csp-admx-filerecovery.md)
- [ADMX_FileRevocation](policy-csp-admx-filerevocation.md)
- [ADMX_FileServerVSSProvider](policy-csp-admx-fileservervssprovider.md)
- [ADMX_FileSys](policy-csp-admx-filesys.md)
- [ADMX_FolderRedirection](policy-csp-admx-folderredirection.md)
- [ADMX_FramePanes](policy-csp-admx-framepanes.md)
- [ADMX_fthsvc](policy-csp-admx-fthsvc.md)
- [ADMX_Globalization](policy-csp-admx-globalization.md)
- [ADMX_GroupPolicy](policy-csp-admx-grouppolicy.md)
- [ADMX_Help](policy-csp-admx-help.md)
- [ADMX_HelpAndSupport](policy-csp-admx-helpandsupport.md)
- [ADMX_hotspotauth](policy-csp-admx-hotspotauth.md)
- [ADMX_ICM](policy-csp-admx-icm.md)
- [ADMX_IIS](policy-csp-admx-iis.md)
- [ADMX_iSCSI](policy-csp-admx-iscsi.md)
- [ADMX_kdc](policy-csp-admx-kdc.md)
- [ADMX_Kerberos](policy-csp-admx-kerberos.md)
- [ADMX_LanmanServer](policy-csp-admx-lanmanserver.md)
- [ADMX_LanmanWorkstation](policy-csp-admx-lanmanworkstation.md)
- [ADMX_LeakDiagnostic](policy-csp-admx-leakdiagnostic.md)
- [ADMX_LinkLayerTopologyDiscovery](policy-csp-admx-linklayertopologydiscovery.md)
- [ADMX_LocationProviderAdm](policy-csp-admx-locationprovideradm.md)
- [ADMX_Logon](policy-csp-admx-logon.md)
- [ADMX_MicrosoftDefenderAntivirus](policy-csp-admx-microsoftdefenderantivirus.md)
- [ADMX_MMC](policy-csp-admx-mmc.md)
- [ADMX_MMCSnapins](policy-csp-admx-mmcsnapins.md)
- [ADMX_MobilePCMobilityCenter](policy-csp-admx-mobilepcmobilitycenter.md)
- [ADMX_MobilePCPresentationSettings](policy-csp-admx-mobilepcpresentationsettings.md)
- [ADMX_MSAPolicy](policy-csp-admx-msapolicy.md)
- [ADMX_msched](policy-csp-admx-msched.md)
- [ADMX_MSDT](policy-csp-admx-msdt.md)
- [ADMX_MSI](policy-csp-admx-msi.md)
- [ADMX_MsiFileRecovery](policy-csp-admx-msifilerecovery.md)
- [ADMX_MSS-legacy](policy-csp-admx-mss-legacy.md)
- [ADMX_nca](policy-csp-admx-nca.md)
- [ADMX_NCSI](policy-csp-admx-ncsi.md)
- [ADMX_Netlogon](policy-csp-admx-netlogon.md)
- [ADMX_NetworkConnections](policy-csp-admx-networkconnections.md)
- [ADMX_OfflineFiles](policy-csp-admx-offlinefiles.md)
- [ADMX_pca](policy-csp-admx-pca.md)
- [ADMX_PeerToPeerCaching](policy-csp-admx-peertopeercaching.md)
- [ADMX_PenTraining](policy-csp-admx-pentraining.md)
- [ADMX_PerformanceDiagnostics](policy-csp-admx-performancediagnostics.md)
- [ADMX_Power](policy-csp-admx-power.md)
- [ADMX_PowerShellExecutionPolicy](policy-csp-admx-powershellexecutionpolicy.md)
- [ADMX_PreviousVersions](policy-csp-admx-previousversions.md)
- [ADMX_Printing](policy-csp-admx-printing.md)
- [ADMX_Printing2](policy-csp-admx-printing2.md)
- [ADMX_Programs](policy-csp-admx-programs.md)
- [ADMX_PushToInstall](policy-csp-admx-pushtoinstall.md)
- [ADMX_QOS](policy-csp-admx-qos.md)
- [ADMX_Radar](policy-csp-admx-radar.md)
- [ADMX_Reliability](policy-csp-admx-reliability.md)
- [ADMX_RemoteAssistance](policy-csp-admx-remoteassistance.md)
- [ADMX_RemovableStorage](policy-csp-admx-removablestorage.md)
- [ADMX_RPC](policy-csp-admx-rpc.md)
- [ADMX_sam](policy-csp-admx-sam.md)
- [ADMX_Scripts](policy-csp-admx-scripts.md)
- [ADMX_sdiageng](policy-csp-admx-sdiageng.md)
- [ADMX_sdiagschd](policy-csp-admx-sdiagschd.md)
- [ADMX_Securitycenter](policy-csp-admx-securitycenter.md)
- [ADMX_Sensors](policy-csp-admx-sensors.md)
- [ADMX_ServerManager](policy-csp-admx-servermanager.md)
- [ADMX_Servicing](policy-csp-admx-servicing.md)
- [ADMX_SettingSync](policy-csp-admx-settingsync.md)
- [ADMX_SharedFolders](policy-csp-admx-sharedfolders.md)
- [ADMX_Sharing](policy-csp-admx-sharing.md)
- [ADMX_ShellCommandPromptRegEditTools](policy-csp-admx-shellcommandpromptregedittools.md)
- [ADMX_Smartcard](policy-csp-admx-smartcard.md)
- [ADMX_Snmp](policy-csp-admx-snmp.md)
- [ADMX_SoundRec](policy-csp-admx-soundrec.md)
- [ADMX_srmfci](policy-csp-admx-srmfci.md)
- [ADMX_StartMenu](policy-csp-admx-startmenu.md)
- [ADMX_SystemRestore](policy-csp-admx-systemrestore.md)
- [ADMX_TabletPCInputPanel](policy-csp-admx-tabletpcinputpanel.md)
- [ADMX_TabletShell](policy-csp-admx-tabletshell.md)
- [ADMX_Taskbar](policy-csp-admx-taskbar.md)
- [ADMX_tcpip](policy-csp-admx-tcpip.md)
- [ADMX_TerminalServer](policy-csp-admx-terminalserver.md)
- [ADMX_Thumbnails](policy-csp-admx-thumbnails.md)
- [ADMX_TouchInput](policy-csp-admx-touchinput.md)
- [ADMX_TPM](policy-csp-admx-tpm.md)
- [ADMX_UserExperienceVirtualization](policy-csp-admx-userexperiencevirtualization.md)
- [ADMX_UserProfiles](policy-csp-admx-userprofiles.md)
- [ADMX_W32Time](policy-csp-admx-w32time.md)
- [ADMX_WCM](policy-csp-admx-wcm.md)
- [ADMX_WDI](policy-csp-admx-wdi.md)
- [ADMX_WinCal](policy-csp-admx-wincal.md)
- [ADMX_WindowsColorSystem](policy-csp-admx-windowscolorsystem.md)
- [ADMX_WindowsConnectNow](policy-csp-admx-windowsconnectnow.md)
- [ADMX_WindowsExplorer](policy-csp-admx-windowsexplorer.md)
- [ADMX_WindowsMediaDRM](policy-csp-admx-windowsmediadrm.md)
- [ADMX_WindowsMediaPlayer](policy-csp-admx-windowsmediaplayer.md)
- [ADMX_WindowsRemoteManagement](policy-csp-admx-windowsremotemanagement.md)
- [ADMX_WindowsStore](policy-csp-admx-windowsstore.md)
- [ADMX_WinInit](policy-csp-admx-wininit.md)
- [ADMX_WinLogon](policy-csp-admx-winlogon.md)
- [ADMX_Winsrv](policy-csp-admx-winsrv.md)
- [ADMX_wlansvc](policy-csp-admx-wlansvc.md)
- [ADMX_WordWheel](policy-csp-admx-wordwheel.md)
- [ADMX_WorkFoldersClient](policy-csp-admx-workfoldersclient.md)
- [ADMX_WPN](policy-csp-admx-wpn.md)
- [AppDeviceInventory](policy-csp-appdeviceinventory.md)
- [ApplicationDefaults](policy-csp-applicationdefaults.md)
- [ApplicationManagement](policy-csp-applicationmanagement.md)
- [AppRuntime](policy-csp-appruntime.md)
- [AppVirtualization](policy-csp-appvirtualization.md)
- [AttachmentManager](policy-csp-attachmentmanager.md)
- [Audit](policy-csp-audit.md)
- [Authentication](policy-csp-authentication.md)
- [Autoplay](policy-csp-autoplay.md)
- [Bitlocker](policy-csp-bitlocker.md)
- [BITS](policy-csp-bits.md)
- [Bluetooth](policy-csp-bluetooth.md)
- [Browser](policy-csp-browser.md)
- [Camera](policy-csp-camera.md)
- [Cellular](policy-csp-cellular.md)
- [CloudDesktop](policy-csp-clouddesktop.md)
- [Connectivity](policy-csp-connectivity.md)
- [ControlPolicyConflict](policy-csp-controlpolicyconflict.md)
- [CredentialProviders](policy-csp-credentialproviders.md)
- [CredentialsDelegation](policy-csp-credentialsdelegation.md)
- [CredentialsUI](policy-csp-credentialsui.md)
- [Cryptography](policy-csp-cryptography.md)
- [DataProtection](policy-csp-dataprotection.md)
- [DataUsage](policy-csp-datausage.md)
- [Defender](policy-csp-defender.md)
- [DeliveryOptimization](policy-csp-deliveryoptimization.md)
- [Desktop](policy-csp-desktop.md)
- [DesktopAppInstaller](policy-csp-desktopappinstaller.md)
- [DeviceGuard](policy-csp-deviceguard.md)
- [DeviceHealthMonitoring](policy-csp-devicehealthmonitoring.md)
- [DeviceInstallation](policy-csp-deviceinstallation.md)
- [DeviceLock](policy-csp-devicelock.md)
- [Display](policy-csp-display.md)
- [DmaGuard](policy-csp-dmaguard.md)
- [Eap](policy-csp-eap.md)
- [Education](policy-csp-education.md)
- [EnterpriseCloudPrint](policy-csp-enterprisecloudprint.md)
- [ErrorReporting](policy-csp-errorreporting.md)
- [EventLogService](policy-csp-eventlogservice.md)
- [Experience](policy-csp-experience.md)
- [ExploitGuard](policy-csp-exploitguard.md)
- [FederatedAuthentication](policy-csp-federatedauthentication.md)
- [FileExplorer](policy-csp-fileexplorer.md)
- [FileSystem](policy-csp-filesystem.md)
- [Games](policy-csp-games.md)
- [Handwriting](policy-csp-handwriting.md)
- [HumanPresence](policy-csp-humanpresence.md)
- [InternetExplorer](policy-csp-internetexplorer.md)
- [Kerberos](policy-csp-kerberos.md)
- [KioskBrowser](policy-csp-kioskbrowser.md)
- [LanmanWorkstation](policy-csp-lanmanworkstation.md)
- [Licensing](policy-csp-licensing.md)
- [LocalPoliciesSecurityOptions](policy-csp-localpoliciessecurityoptions.md)
- [LocalSecurityAuthority](policy-csp-lsa.md)
- [LocalUsersAndGroups](policy-csp-localusersandgroups.md)
- [LockDown](policy-csp-lockdown.md)
- [Maps](policy-csp-maps.md)
- [MemoryDump](policy-csp-memorydump.md)
- [Messaging](policy-csp-messaging.md)
- [MixedReality](policy-csp-mixedreality.md)
- [MSSecurityGuide](policy-csp-mssecurityguide.md)
- [MSSLegacy](policy-csp-msslegacy.md)
- [Multitasking](policy-csp-multitasking.md)
- [NetworkIsolation](policy-csp-networkisolation.md)
- [NetworkListManager](policy-csp-networklistmanager.md)
- [NewsAndInterests](policy-csp-newsandinterests.md)
- [Notifications](policy-csp-notifications.md)
- [Power](policy-csp-power.md)
- [Printers](policy-csp-printers.md)
- [Privacy](policy-csp-privacy.md)
- [RemoteAssistance](policy-csp-remoteassistance.md)
- [RemoteDesktop](policy-csp-remotedesktop.md)
- [RemoteDesktopServices](policy-csp-remotedesktopservices.md)
- [RemoteManagement](policy-csp-remotemanagement.md)
- [RemoteProcedureCall](policy-csp-remoteprocedurecall.md)
- [RemoteShell](policy-csp-remoteshell.md)
- [RestrictedGroups](policy-csp-restrictedgroups.md)
- [Search](policy-csp-search.md)
- [Security](policy-csp-security.md)
- [ServiceControlManager](policy-csp-servicecontrolmanager.md)
- [Settings](policy-csp-settings.md)
- [SettingsSync](policy-csp-settingssync.md)
- [SmartScreen](policy-csp-smartscreen.md)
- [SpeakForMe](policy-csp-speakforme.md)
- [Speech](policy-csp-speech.md)
- [Start](policy-csp-start.md)
- [Stickers](policy-csp-stickers.md)
- [Storage](policy-csp-storage.md)
- [Sudo](policy-csp-sudo.md)
- [System](policy-csp-system.md)
- [SystemServices](policy-csp-systemservices.md)
- [TaskManager](policy-csp-taskmanager.md)
- [TaskScheduler](policy-csp-taskscheduler.md)
- [TenantDefinedTelemetry](policy-csp-tenantdefinedtelemetry.md)
- [TenantRestrictions](policy-csp-tenantrestrictions.md)
- [TextInput](policy-csp-textinput.md)
- [TimeLanguageSettings](policy-csp-timelanguagesettings.md)
- [Troubleshooting](policy-csp-troubleshooting.md)
- [Update](policy-csp-update.md)
- [UserRights](policy-csp-userrights.md)
- [VirtualizationBasedTechnology](policy-csp-virtualizationbasedtechnology.md)
- [WebThreatDefense](policy-csp-webthreatdefense.md)
- [Wifi](policy-csp-wifi.md)
- [WindowsAI](policy-csp-windowsai.md)
- [WindowsAutopilot](policy-csp-windowsautopilot.md)
- [WindowsConnectionManager](policy-csp-windowsconnectionmanager.md)
- [WindowsDefenderSecurityCenter](policy-csp-windowsdefendersecuritycenter.md)
- [WindowsInkWorkspace](policy-csp-windowsinkworkspace.md)
- [WindowsLogon](policy-csp-windowslogon.md)
- [WindowsPowerShell](policy-csp-windowspowershell.md)
- [WindowsSandbox](policy-csp-windowssandbox.md)
- [WirelessDisplay](policy-csp-wirelessdisplay.md)
<!-- Policy-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Policy-CspMoreInfo-End -->

<!-- Policy-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
