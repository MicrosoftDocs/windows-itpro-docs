---
title: Office CSP
description: Learn more about the Office CSP.
ms.date: 10/10/2024
---

<!-- Auto-Generated CSP Document -->

<!-- Office-Begin -->
# Office CSP

<!-- Office-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The Office configuration service provider (CSP) enables a Microsoft Office client to be installed on a device via the Office Deployment Tool (ODT). For more information, see [Configuration options for the Office Deployment Tool](/deployoffice/office-deployment-tool-configuration-options) and [Add Microsoft 365 Apps to Windows devices with Microsoft Intune](/mem/intune/apps/apps-add-office365).
<!-- Office-Editable-End -->

<!-- Office-Tree-Begin -->
The following list shows the Office configuration service provider nodes:

- ./Device/Vendor/MSFT/Office
  - [Installation](#deviceinstallation)
    - [{id}](#deviceinstallationid)
      - [FinalStatus](#deviceinstallationidfinalstatus)
      - [Install](#deviceinstallationidinstall)
      - [Status](#deviceinstallationidstatus)
    - [CurrentStatus](#deviceinstallationcurrentstatus)
- ./User/Vendor/MSFT/Office
  - [Installation](#userinstallation)
    - [{id}](#userinstallationid)
      - [FinalStatus](#userinstallationidfinalstatus)
      - [Install](#userinstallationidinstall)
      - [Status](#userinstallationidstatus)
    - [CurrentStatus](#userinstallationcurrentstatus)
<!-- Office-Tree-End -->

<!-- Device-Installation-Begin -->
## Device/Installation

<!-- Device-Installation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Installation-Applicability-End -->

<!-- Device-Installation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Office/Installation
```
<!-- Device-Installation-OmaUri-End -->

<!-- Device-Installation-Description-Begin -->
<!-- Description-Source-DDF -->
Installation options for the office CSP.
<!-- Device-Installation-Description-End -->

<!-- Device-Installation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Installation-Editable-End -->

<!-- Device-Installation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Installation-DFProperties-End -->

<!-- Device-Installation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Installation-Examples-End -->

<!-- Device-Installation-End -->

<!-- Device-Installation-{id}-Begin -->
### Device/Installation/{id}

<!-- Device-Installation-{id}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Installation-{id}-Applicability-End -->

<!-- Device-Installation-{id}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Office/Installation/{id}
```
<!-- Device-Installation-{id}-OmaUri-End -->

<!-- Device-Installation-{id}-Description-Begin -->
<!-- Description-Source-DDF -->
A unique identifier which represents the installation instance id.
<!-- Device-Installation-{id}-Description-End -->

<!-- Device-Installation-{id}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Installation-{id}-Editable-End -->

<!-- Device-Installation-{id}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName: A unique identifier which represents the installation instance id. |
<!-- Device-Installation-{id}-DFProperties-End -->

<!-- Device-Installation-{id}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Installation-{id}-Examples-End -->

<!-- Device-Installation-{id}-End -->

<!-- Device-Installation-{id}-FinalStatus-Begin -->
#### Device/Installation/{id}/FinalStatus

<!-- Device-Installation-{id}-FinalStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-Installation-{id}-FinalStatus-Applicability-End -->

<!-- Device-Installation-{id}-FinalStatus-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Office/Installation/{id}/FinalStatus
```
<!-- Device-Installation-{id}-FinalStatus-OmaUri-End -->

<!-- Device-Installation-{id}-FinalStatus-Description-Begin -->
<!-- Description-Source-DDF -->
Final Office 365 installation status.
<!-- Device-Installation-{id}-FinalStatus-Description-End -->

<!-- Device-Installation-{id}-FinalStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
- When Office CSP is triggered to install, it will first check if the FinalStatus node exists or not. If the node exists, delete it.
- When Office installation reaches any terminal states (either success or failure), this node is created that contains the following values:
  - When status = 0: 70 (succeeded)
  - When status != 0: 60 (failed)
<!-- Device-Installation-{id}-FinalStatus-Editable-End -->

<!-- Device-Installation-{id}-FinalStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-Installation-{id}-FinalStatus-DFProperties-End -->

<!-- Device-Installation-{id}-FinalStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Installation-{id}-FinalStatus-Examples-End -->

<!-- Device-Installation-{id}-FinalStatus-End -->

<!-- Device-Installation-{id}-Install-Begin -->
#### Device/Installation/{id}/Install

<!-- Device-Installation-{id}-Install-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Installation-{id}-Install-Applicability-End -->

<!-- Device-Installation-{id}-Install-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Office/Installation/{id}/Install
```
<!-- Device-Installation-{id}-Install-OmaUri-End -->

<!-- Device-Installation-{id}-Install-Description-Begin -->
<!-- Description-Source-DDF -->
The install action will install office given the configuration in the data. The string data is the xml configuration to use in order to install office.
<!-- Device-Installation-{id}-Install-Description-End -->

<!-- Device-Installation-{id}-Install-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Installation-{id}-Install-Editable-End -->

<!-- Device-Installation-{id}-Install-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Exec, Get |
<!-- Device-Installation-{id}-Install-DFProperties-End -->

<!-- Device-Installation-{id}-Install-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Installation-{id}-Install-Examples-End -->

<!-- Device-Installation-{id}-Install-End -->

<!-- Device-Installation-{id}-Status-Begin -->
#### Device/Installation/{id}/Status

<!-- Device-Installation-{id}-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Installation-{id}-Status-Applicability-End -->

<!-- Device-Installation-{id}-Status-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Office/Installation/{id}/Status
```
<!-- Device-Installation-{id}-Status-OmaUri-End -->

<!-- Device-Installation-{id}-Status-Description-Begin -->
<!-- Description-Source-DDF -->
The installation status of the CSP.
<!-- Device-Installation-{id}-Status-Description-End -->

<!-- Device-Installation-{id}-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Installation-{id}-Status-Editable-End -->

<!-- Device-Installation-{id}-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-Installation-{id}-Status-DFProperties-End -->

<!-- Device-Installation-{id}-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Installation-{id}-Status-Examples-End -->

<!-- Device-Installation-{id}-Status-End -->

<!-- Device-Installation-CurrentStatus-Begin -->
### Device/Installation/CurrentStatus

<!-- Device-Installation-CurrentStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-Installation-CurrentStatus-Applicability-End -->

<!-- Device-Installation-CurrentStatus-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Office/Installation/CurrentStatus
```
<!-- Device-Installation-CurrentStatus-OmaUri-End -->

<!-- Device-Installation-CurrentStatus-Description-Begin -->
<!-- Description-Source-DDF -->
The current Office 365 installation status on the machine.
<!-- Device-Installation-CurrentStatus-Description-End -->

<!-- Device-Installation-CurrentStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Installation-CurrentStatus-Editable-End -->

<!-- Device-Installation-CurrentStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Installation-CurrentStatus-DFProperties-End -->

<!-- Device-Installation-CurrentStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Installation-CurrentStatus-Examples-End -->

<!-- Device-Installation-CurrentStatus-End -->

<!-- User-Installation-Begin -->
## User/Installation

<!-- User-Installation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- User-Installation-Applicability-End -->

<!-- User-Installation-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Office/Installation
```
<!-- User-Installation-OmaUri-End -->

<!-- User-Installation-Description-Begin -->
<!-- Description-Source-DDF -->
Installation options for the office CSP.
<!-- User-Installation-Description-End -->

<!-- User-Installation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Installation-Editable-End -->

<!-- User-Installation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-Installation-DFProperties-End -->

<!-- User-Installation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Installation-Examples-End -->

<!-- User-Installation-End -->

<!-- User-Installation-{id}-Begin -->
### User/Installation/{id}

<!-- User-Installation-{id}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- User-Installation-{id}-Applicability-End -->

<!-- User-Installation-{id}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Office/Installation/{id}
```
<!-- User-Installation-{id}-OmaUri-End -->

<!-- User-Installation-{id}-Description-Begin -->
<!-- Description-Source-DDF -->
A unique identifier which represents the installation instance id.
<!-- User-Installation-{id}-Description-End -->

<!-- User-Installation-{id}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Installation-{id}-Editable-End -->

<!-- User-Installation-{id}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName: A unique identifier which represents the installation instance id. |
<!-- User-Installation-{id}-DFProperties-End -->

<!-- User-Installation-{id}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Installation-{id}-Examples-End -->

<!-- User-Installation-{id}-End -->

<!-- User-Installation-{id}-FinalStatus-Begin -->
#### User/Installation/{id}/FinalStatus

<!-- User-Installation-{id}-FinalStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- User-Installation-{id}-FinalStatus-Applicability-End -->

<!-- User-Installation-{id}-FinalStatus-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Office/Installation/{id}/FinalStatus
```
<!-- User-Installation-{id}-FinalStatus-OmaUri-End -->

<!-- User-Installation-{id}-FinalStatus-Description-Begin -->
<!-- Description-Source-DDF -->
Final Office 365 installation status.
<!-- User-Installation-{id}-FinalStatus-Description-End -->

<!-- User-Installation-{id}-FinalStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Installation-{id}-FinalStatus-Editable-End -->

<!-- User-Installation-{id}-FinalStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-Installation-{id}-FinalStatus-DFProperties-End -->

<!-- User-Installation-{id}-FinalStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Installation-{id}-FinalStatus-Examples-End -->

<!-- User-Installation-{id}-FinalStatus-End -->

<!-- User-Installation-{id}-Install-Begin -->
#### User/Installation/{id}/Install

<!-- User-Installation-{id}-Install-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- User-Installation-{id}-Install-Applicability-End -->

<!-- User-Installation-{id}-Install-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Office/Installation/{id}/Install
```
<!-- User-Installation-{id}-Install-OmaUri-End -->

<!-- User-Installation-{id}-Install-Description-Begin -->
<!-- Description-Source-DDF -->
The install action will install office given the configuration in the data. The string data is the xml configuration to use in order to install office.
<!-- User-Installation-{id}-Install-Description-End -->

<!-- User-Installation-{id}-Install-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Installation-{id}-Install-Editable-End -->

<!-- User-Installation-{id}-Install-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Exec, Get |
<!-- User-Installation-{id}-Install-DFProperties-End -->

<!-- User-Installation-{id}-Install-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Installation-{id}-Install-Examples-End -->

<!-- User-Installation-{id}-Install-End -->

<!-- User-Installation-{id}-Status-Begin -->
#### User/Installation/{id}/Status

<!-- User-Installation-{id}-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- User-Installation-{id}-Status-Applicability-End -->

<!-- User-Installation-{id}-Status-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Office/Installation/{id}/Status
```
<!-- User-Installation-{id}-Status-OmaUri-End -->

<!-- User-Installation-{id}-Status-Description-Begin -->
<!-- Description-Source-DDF -->
The installation status of the CSP.
<!-- User-Installation-{id}-Status-Description-End -->

<!-- User-Installation-{id}-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Installation-{id}-Status-Editable-End -->

<!-- User-Installation-{id}-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-Installation-{id}-Status-DFProperties-End -->

<!-- User-Installation-{id}-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Installation-{id}-Status-Examples-End -->

<!-- User-Installation-{id}-Status-End -->

<!-- User-Installation-CurrentStatus-Begin -->
### User/Installation/CurrentStatus

<!-- User-Installation-CurrentStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- User-Installation-CurrentStatus-Applicability-End -->

<!-- User-Installation-CurrentStatus-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Office/Installation/CurrentStatus
```
<!-- User-Installation-CurrentStatus-OmaUri-End -->

<!-- User-Installation-CurrentStatus-Description-Begin -->
<!-- Description-Source-DDF -->
The current Office 365 installation status on the machine.
<!-- User-Installation-CurrentStatus-Description-End -->

<!-- User-Installation-CurrentStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Installation-CurrentStatus-Editable-End -->

<!-- User-Installation-CurrentStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-Installation-CurrentStatus-DFProperties-End -->

<!-- User-Installation-CurrentStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Installation-CurrentStatus-Examples-End -->

<!-- User-Installation-CurrentStatus-End -->

<!-- Office-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
## Examples

Sample SyncML to install Microsoft 365 Apps for business Retail from current channel.

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Exec>
      <CmdID>7</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/Office/Installation/0AA79349-F334-4859-96E8-B4AB43E9FEA0/install</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">chr</Format>
          </Meta>
          <Data>&lt;Configuration&gt;&lt;Add OfficeClientEdition=&quot;32&quot; Channel=&quot;Current&quot;&gt;&lt;Product ID=&quot;O365BusinessRetail&quot;&gt;&lt;Language ID=&quot;en-us&quot; /&gt;&lt;/Product&gt;&lt;/Add&gt;&lt;Display Level=&quot;None&quot; AcceptEULA=&quot;TRUE&quot; /&gt;&lt;/Configuration&gt;</Data>
        </Item>
    </Exec>
    <Final/>
  </SyncBody>
</SyncML>
```

To uninstall the Office 365 from the system:

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Exec>
      <CmdID>7</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/Office/Installation/E24B23D8-94A8-4997-9E6E-8FF25025845B/install</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">chr</Format>
          </Meta>
          <Data>&lt;Configuration&gt;&lt;Remove All=&quot;TRUE&quot;/&gt;&lt;Display Level=&quot;None&quot; AcceptEULA=&quot;TRUE&quot; /&gt;&lt;/Configuration&gt;</Data>
        </Item>
    </Exec>
    <Final/>
  </SyncBody>
</SyncML>
```

To get the current status of Office 365 on the device.

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Get>
      <CmdID>7</CmdID>
      <Item>
        <Target>
          <LocURI>./Vendor/MSFT/Office/Installation/CurrentStatus</LocURI>
        </Target>
      </Item>
    </Get>
    <Final />
  </SyncBody>
</SyncML>
```

## Status code

| Status     | Description                                                                                                                                                                                                                                                                                                                       | Comment |
|------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------|
| 0          | Installation succeeded                                                                                                                                                                                                                                                                                                            | OK      |
| 997        | Installation in progress                                                                                                                                                                                                                                                                                                          |         |
| 13         | ERROR_INVALID_DATA <br>Cannot verify signature of the downloaded Office Deployment Tool (ODT)                                                                                                                                                                                                                                     | Failure |
| 1460       | ERROR_TIMEOUT <br>Failed to download ODT                                                                                                                                                                                                                                                                                          | Failure |
| 1602       | ERROR_INSTALL_USEREXIT <br>User canceled the installation                                                                                                                                                                                                                                                                         | Failure |
| 1603       | ERROR_INSTALL_FAILURE<br>Failed any pre-req check.<li>SxS (Tried to install when 2016 MSI is installed)<li>Bit mismatch between the currently installed Office and the Office that was attempting to be installed (such as when you try to install a 32-bit version while 64-bit version is currently installed.)                 | Failure |
| 17000      | ERROR_PROCESSPOOL_INITIALIZATION <br/>Failed to start C2RClient                                                                                                                                                                                                                                                                   | Failure |
| 17001      | ERROR_QUEUE_SCENARIO <br/>Failed to queue installation scenario in C2RClient                                                                                                                                                                                                                                                      | Failure |
| 17002      | ERROR_COMPLETING_SCENARIO <br>Failed to complete the process. Possible reasons:<li>Installation canceled by user<li>Installation canceled by another installation<li>Out of disk space during installation <li>Unknown language ID                                                                                                | Failure |
| 17003      | ERROR_ANOTHER_RUNNING_SCENARIO <br>Another scenario is running                                                                                                                                                                                                                                                                    | Failure |
| 17004      | ERROR_COMPLETING_SCENARIO_NEED_CLEAN_UP<br>Possible reasons:<li>Unknown SKUs<li>Content doesn't exist on CDN<ul><li>Such as trying to install an unsupported LAP, like zh-sg<li>CDN issue that content is not available</li></ul><li>Signature check issue, such as failed the signature check for Office content<li>User canceled | Failure |
| 17005      | ERROR_SCENARIO_CANCELLED_AS_PLANNED                                                                                                                                                                                                                                                                                               | Failure |
| 17006      | ERROR_SCENARIO_CANCELLED<br>Blocked update by running apps                                                                                                                                                                                                                                                                        | Failure |
| 17007      | ERROR_REMOVE_INSTALLATION_NEEDED<br>The client is requesting client clean-up in a "Remove Installation" scenario                                                                                                                                                                                                                  | Failure |
| 17100      | ERROR_HANDLING_COMMAND_LINE<br>C2RClient command-line error                                                                                                                                                                                                                                                                       | Failure |
| 0x80004005 | E_FAIL <br>ODT cannot be used to install Volume license                                                                                                                                                                                                                                                                           | Failure |
| 0x8000ffff | E_UNEXPECTED<br>Tried to uninstall when there is no C2R Office on the machine.                                                                                                                                                                                                                                                    | Failure |
<!-- Office-CspMoreInfo-End -->

<!-- Office-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
