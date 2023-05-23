---
title: EnterpriseDesktopAppManagement CSP
description: Learn more about the EnterpriseDesktopAppManagement CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 05/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- EnterpriseDesktopAppManagement-Begin -->
# EnterpriseDesktopAppManagement CSP

<!-- EnterpriseDesktopAppManagement-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The EnterpriseDesktopAppManagement configuration service provider is used to handle enterprise desktop application management tasks, such as querying installed enterprise applications, installing applications, or removing applications.

Application installations can take some time to complete, hence they're done asynchronously. When the Exec command is completed, the client can send a generic alert to the management server with a status, whether it's a failure or success. For a SyncML example, see [Alert example](#alert-example).
<!-- EnterpriseDesktopAppManagement-Editable-End -->

<!-- EnterpriseDesktopAppManagement-Tree-Begin -->
The following list shows the EnterpriseDesktopAppManagement configuration service provider nodes:

- ./Device/Vendor/MSFT/EnterpriseDesktopAppManagement
  - [MSI](#devicemsi)
    - [{ProductID}](#devicemsiproductid)
      - [DownloadInstall](#devicemsiproductiddownloadinstall)
      - [InstallDate](#devicemsiproductidinstalldate)
      - [InstallPath](#devicemsiproductidinstallpath)
      - [LastError](#devicemsiproductidlasterror)
      - [LastErrorDesc](#devicemsiproductidlasterrordesc)
      - [Name](#devicemsiproductidname)
      - [Publisher](#devicemsiproductidpublisher)
      - [Status](#devicemsiproductidstatus)
      - [Version](#devicemsiproductidversion)
    - [UpgradeCode](#devicemsiupgradecode)
      - [{Guid}](#devicemsiupgradecodeguid)
- ./User/Vendor/MSFT/EnterpriseDesktopAppManagement
  - [MSI](#usermsi)
    - [{ProductID}](#usermsiproductid)
      - [DownloadInstall](#usermsiproductiddownloadinstall)
      - [InstallDate](#usermsiproductidinstalldate)
      - [InstallPath](#usermsiproductidinstallpath)
      - [LastError](#usermsiproductidlasterror)
      - [LastErrorDesc](#usermsiproductidlasterrordesc)
      - [Name](#usermsiproductidname)
      - [Publisher](#usermsiproductidpublisher)
      - [Status](#usermsiproductidstatus)
      - [Version](#usermsiproductidversion)
    - [UpgradeCode](#usermsiupgradecode)
      - [{Guid}](#usermsiupgradecodeguid)
<!-- EnterpriseDesktopAppManagement-Tree-End -->

<!-- Device-MSI-Begin -->
## Device/MSI

<!-- Device-MSI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MSI-Applicability-End -->

<!-- Device-MSI-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI
```
<!-- Device-MSI-OmaUri-End -->

<!-- Device-MSI-Description-Begin -->
<!-- Description-Source-DDF -->
Product Type is MSI.
<!-- Device-MSI-Description-End -->

<!-- Device-MSI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MSI-Editable-End -->

<!-- Device-MSI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-MSI-DFProperties-End -->

<!-- Device-MSI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MSI-Examples-End -->

<!-- Device-MSI-End -->

<!-- Device-MSI-{ProductID}-Begin -->
### Device/MSI/{ProductID}

<!-- Device-MSI-{ProductID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MSI-{ProductID}-Applicability-End -->

<!-- Device-MSI-{ProductID}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/{ProductID}
```
<!-- Device-MSI-{ProductID}-OmaUri-End -->

<!-- Device-MSI-{ProductID}-Description-Begin -->
<!-- Description-Source-DDF -->
The MSI product code for the application.
<!-- Device-MSI-{ProductID}-Description-End -->

<!-- Device-MSI-{ProductID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MSI-{ProductID}-Editable-End -->

<!-- Device-MSI-{ProductID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Atomic Required | True |
| Dynamic Node Naming | UniqueName: The MSI product code for the application. |
<!-- Device-MSI-{ProductID}-DFProperties-End -->

<!-- Device-MSI-{ProductID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MSI-{ProductID}-Examples-End -->

<!-- Device-MSI-{ProductID}-End -->

<!-- Device-MSI-{ProductID}-DownloadInstall-Begin -->
#### Device/MSI/{ProductID}/DownloadInstall

<!-- Device-MSI-{ProductID}-DownloadInstall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MSI-{ProductID}-DownloadInstall-Applicability-End -->

<!-- Device-MSI-{ProductID}-DownloadInstall-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/{ProductID}/DownloadInstall
```
<!-- Device-MSI-{ProductID}-DownloadInstall-OmaUri-End -->

<!-- Device-MSI-{ProductID}-DownloadInstall-Description-Begin -->
<!-- Description-Source-DDF -->
Executes the download and installation of the application. In Windows 10, version 1703 service release, a new tag `<DownloadFromAad>` was added to the `<Enforcement>` section of the XML. The default value is 0 (don't send token). This tag is optional and needs to be set to 1 in case the server wants the download URL to get the AADUserToken.
<!-- Device-MSI-{ProductID}-DownloadInstall-Description-End -->

<!-- Device-MSI-{ProductID}-DownloadInstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Here's an example:

```xml
<Enforcement>
  <CommandLine>/quiet</CommandLine>
  <TimeOut>5</TimeOut>
  <RetryCount>3</RetryCount>
  <RetryInterval>5</RetryInterval>
  <DownloadFromAad>1</DownloadFromAad>
</Enforcement>
```

For more information, see [DownloadInstall XSD Schema](#downloadinstall-xsd-schema).
<!-- Device-MSI-{ProductID}-DownloadInstall-Editable-End -->

<!-- Device-MSI-{ProductID}-DownloadInstall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `xml` |
| Access Type | Add, Delete, Exec, Get |
<!-- Device-MSI-{ProductID}-DownloadInstall-DFProperties-End -->

<!-- Device-MSI-{ProductID}-DownloadInstall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MSI-{ProductID}-DownloadInstall-Examples-End -->

<!-- Device-MSI-{ProductID}-DownloadInstall-End -->

<!-- Device-MSI-{ProductID}-InstallDate-Begin -->
#### Device/MSI/{ProductID}/InstallDate

<!-- Device-MSI-{ProductID}-InstallDate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MSI-{ProductID}-InstallDate-Applicability-End -->

<!-- Device-MSI-{ProductID}-InstallDate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/{ProductID}/InstallDate
```
<!-- Device-MSI-{ProductID}-InstallDate-OmaUri-End -->

<!-- Device-MSI-{ProductID}-InstallDate-Description-Begin -->
<!-- Description-Source-DDF -->
Installation date of the application.
<!-- Device-MSI-{ProductID}-InstallDate-Description-End -->

<!-- Device-MSI-{ProductID}-InstallDate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MSI-{ProductID}-InstallDate-Editable-End -->

<!-- Device-MSI-{ProductID}-InstallDate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-MSI-{ProductID}-InstallDate-DFProperties-End -->

<!-- Device-MSI-{ProductID}-InstallDate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MSI-{ProductID}-InstallDate-Examples-End -->

<!-- Device-MSI-{ProductID}-InstallDate-End -->

<!-- Device-MSI-{ProductID}-InstallPath-Begin -->
#### Device/MSI/{ProductID}/InstallPath

<!-- Device-MSI-{ProductID}-InstallPath-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MSI-{ProductID}-InstallPath-Applicability-End -->

<!-- Device-MSI-{ProductID}-InstallPath-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/{ProductID}/InstallPath
```
<!-- Device-MSI-{ProductID}-InstallPath-OmaUri-End -->

<!-- Device-MSI-{ProductID}-InstallPath-Description-Begin -->
<!-- Description-Source-DDF -->
Installation path of the application.
<!-- Device-MSI-{ProductID}-InstallPath-Description-End -->

<!-- Device-MSI-{ProductID}-InstallPath-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MSI-{ProductID}-InstallPath-Editable-End -->

<!-- Device-MSI-{ProductID}-InstallPath-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-MSI-{ProductID}-InstallPath-DFProperties-End -->

<!-- Device-MSI-{ProductID}-InstallPath-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MSI-{ProductID}-InstallPath-Examples-End -->

<!-- Device-MSI-{ProductID}-InstallPath-End -->

<!-- Device-MSI-{ProductID}-LastError-Begin -->
#### Device/MSI/{ProductID}/LastError

<!-- Device-MSI-{ProductID}-LastError-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MSI-{ProductID}-LastError-Applicability-End -->

<!-- Device-MSI-{ProductID}-LastError-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/{ProductID}/LastError
```
<!-- Device-MSI-{ProductID}-LastError-OmaUri-End -->

<!-- Device-MSI-{ProductID}-LastError-Description-Begin -->
<!-- Description-Source-DDF -->
The last error code during the application installation process. This is typically stored as an HRESULT format. Depending on what was occurring when the error happened, this could be the result of executing MSIExec.exe or the error result from an API that failed.
<!-- Device-MSI-{ProductID}-LastError-Description-End -->

<!-- Device-MSI-{ProductID}-LastError-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MSI-{ProductID}-LastError-Editable-End -->

<!-- Device-MSI-{ProductID}-LastError-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-MSI-{ProductID}-LastError-DFProperties-End -->

<!-- Device-MSI-{ProductID}-LastError-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MSI-{ProductID}-LastError-Examples-End -->

<!-- Device-MSI-{ProductID}-LastError-End -->

<!-- Device-MSI-{ProductID}-LastErrorDesc-Begin -->
#### Device/MSI/{ProductID}/LastErrorDesc

<!-- Device-MSI-{ProductID}-LastErrorDesc-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MSI-{ProductID}-LastErrorDesc-Applicability-End -->

<!-- Device-MSI-{ProductID}-LastErrorDesc-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/{ProductID}/LastErrorDesc
```
<!-- Device-MSI-{ProductID}-LastErrorDesc-OmaUri-End -->

<!-- Device-MSI-{ProductID}-LastErrorDesc-Description-Begin -->
<!-- Description-Source-DDF -->
Contains the last error code description. The LastErrorDesc value is looked up for the matching LastError value. Sometimes there is no LastErrorDesc returned.
<!-- Device-MSI-{ProductID}-LastErrorDesc-Description-End -->

<!-- Device-MSI-{ProductID}-LastErrorDesc-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MSI-{ProductID}-LastErrorDesc-Editable-End -->

<!-- Device-MSI-{ProductID}-LastErrorDesc-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-MSI-{ProductID}-LastErrorDesc-DFProperties-End -->

<!-- Device-MSI-{ProductID}-LastErrorDesc-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MSI-{ProductID}-LastErrorDesc-Examples-End -->

<!-- Device-MSI-{ProductID}-LastErrorDesc-End -->

<!-- Device-MSI-{ProductID}-Name-Begin -->
#### Device/MSI/{ProductID}/Name

<!-- Device-MSI-{ProductID}-Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MSI-{ProductID}-Name-Applicability-End -->

<!-- Device-MSI-{ProductID}-Name-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/{ProductID}/Name
```
<!-- Device-MSI-{ProductID}-Name-OmaUri-End -->

<!-- Device-MSI-{ProductID}-Name-Description-Begin -->
<!-- Description-Source-DDF -->
Name of the application.
<!-- Device-MSI-{ProductID}-Name-Description-End -->

<!-- Device-MSI-{ProductID}-Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MSI-{ProductID}-Name-Editable-End -->

<!-- Device-MSI-{ProductID}-Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-MSI-{ProductID}-Name-DFProperties-End -->

<!-- Device-MSI-{ProductID}-Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MSI-{ProductID}-Name-Examples-End -->

<!-- Device-MSI-{ProductID}-Name-End -->

<!-- Device-MSI-{ProductID}-Publisher-Begin -->
#### Device/MSI/{ProductID}/Publisher

<!-- Device-MSI-{ProductID}-Publisher-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MSI-{ProductID}-Publisher-Applicability-End -->

<!-- Device-MSI-{ProductID}-Publisher-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/{ProductID}/Publisher
```
<!-- Device-MSI-{ProductID}-Publisher-OmaUri-End -->

<!-- Device-MSI-{ProductID}-Publisher-Description-Begin -->
<!-- Description-Source-DDF -->
Publisher of application.
<!-- Device-MSI-{ProductID}-Publisher-Description-End -->

<!-- Device-MSI-{ProductID}-Publisher-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MSI-{ProductID}-Publisher-Editable-End -->

<!-- Device-MSI-{ProductID}-Publisher-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-MSI-{ProductID}-Publisher-DFProperties-End -->

<!-- Device-MSI-{ProductID}-Publisher-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MSI-{ProductID}-Publisher-Examples-End -->

<!-- Device-MSI-{ProductID}-Publisher-End -->

<!-- Device-MSI-{ProductID}-Status-Begin -->
#### Device/MSI/{ProductID}/Status

<!-- Device-MSI-{ProductID}-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MSI-{ProductID}-Status-Applicability-End -->

<!-- Device-MSI-{ProductID}-Status-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/{ProductID}/Status
```
<!-- Device-MSI-{ProductID}-Status-OmaUri-End -->

<!-- Device-MSI-{ProductID}-Status-Description-Begin -->
<!-- Description-Source-DDF -->
Status of the application. Valid values: 10-Initialized, 20-Download In Progress, 25-Pending Download Retry, 30-Download Failed, 40-Download Completed, 48-Pending User Session, 50-Enforcement In Progress, 55-Pending Enforcement Retry, 60-Enforcement Failed, 70-Enforcement Completed.
<!-- Device-MSI-{ProductID}-Status-Description-End -->

<!-- Device-MSI-{ProductID}-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MSI-{ProductID}-Status-Editable-End -->

<!-- Device-MSI-{ProductID}-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-MSI-{ProductID}-Status-DFProperties-End -->

<!-- Device-MSI-{ProductID}-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MSI-{ProductID}-Status-Examples-End -->

<!-- Device-MSI-{ProductID}-Status-End -->

<!-- Device-MSI-{ProductID}-Version-Begin -->
#### Device/MSI/{ProductID}/Version

<!-- Device-MSI-{ProductID}-Version-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-MSI-{ProductID}-Version-Applicability-End -->

<!-- Device-MSI-{ProductID}-Version-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/{ProductID}/Version
```
<!-- Device-MSI-{ProductID}-Version-OmaUri-End -->

<!-- Device-MSI-{ProductID}-Version-Description-Begin -->
<!-- Description-Source-DDF -->
MSI Product Version.
<!-- Device-MSI-{ProductID}-Version-Description-End -->

<!-- Device-MSI-{ProductID}-Version-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MSI-{ProductID}-Version-Editable-End -->

<!-- Device-MSI-{ProductID}-Version-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-MSI-{ProductID}-Version-DFProperties-End -->

<!-- Device-MSI-{ProductID}-Version-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MSI-{ProductID}-Version-Examples-End -->

<!-- Device-MSI-{ProductID}-Version-End -->

<!-- Device-MSI-UpgradeCode-Begin -->
### Device/MSI/UpgradeCode

<!-- Device-MSI-UpgradeCode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-MSI-UpgradeCode-Applicability-End -->

<!-- Device-MSI-UpgradeCode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/UpgradeCode
```
<!-- Device-MSI-UpgradeCode-OmaUri-End -->

<!-- Device-MSI-UpgradeCode-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-MSI-UpgradeCode-Description-End -->

<!-- Device-MSI-UpgradeCode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MSI-UpgradeCode-Editable-End -->

<!-- Device-MSI-UpgradeCode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
| Case Sensitive | True |
<!-- Device-MSI-UpgradeCode-DFProperties-End -->

<!-- Device-MSI-UpgradeCode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MSI-UpgradeCode-Examples-End -->

<!-- Device-MSI-UpgradeCode-End -->

<!-- Device-MSI-UpgradeCode-{Guid}-Begin -->
#### Device/MSI/UpgradeCode/{Guid}

<!-- Device-MSI-UpgradeCode-{Guid}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- Device-MSI-UpgradeCode-{Guid}-Applicability-End -->

<!-- Device-MSI-UpgradeCode-{Guid}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/UpgradeCode/{Guid}
```
<!-- Device-MSI-UpgradeCode-{Guid}-OmaUri-End -->

<!-- Device-MSI-UpgradeCode-{Guid}-Description-Begin -->
<!-- Description-Source-DDF -->
A gateway (or device management server) uses this method to detect matching upgrade MSI product when a Admin wants to update an existing MSI app. If the same upgrade product is installed, then the update is allowed.
<!-- Device-MSI-UpgradeCode-{Guid}-Description-End -->

<!-- Device-MSI-UpgradeCode-{Guid}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-MSI-UpgradeCode-{Guid}-Editable-End -->

<!-- Device-MSI-UpgradeCode-{Guid}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
| Dynamic Node Naming | ClientInventory |
<!-- Device-MSI-UpgradeCode-{Guid}-DFProperties-End -->

<!-- Device-MSI-UpgradeCode-{Guid}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-MSI-UpgradeCode-{Guid}-Examples-End -->

<!-- Device-MSI-UpgradeCode-{Guid}-End -->

<!-- User-MSI-Begin -->
## User/MSI

<!-- User-MSI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-MSI-Applicability-End -->

<!-- User-MSI-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI
```
<!-- User-MSI-OmaUri-End -->

<!-- User-MSI-Description-Begin -->
<!-- Description-Source-DDF -->
Product Type is MSI.
<!-- User-MSI-Description-End -->

<!-- User-MSI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-MSI-Editable-End -->

<!-- User-MSI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-MSI-DFProperties-End -->

<!-- User-MSI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-MSI-Examples-End -->

<!-- User-MSI-End -->

<!-- User-MSI-{ProductID}-Begin -->
### User/MSI/{ProductID}

<!-- User-MSI-{ProductID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-MSI-{ProductID}-Applicability-End -->

<!-- User-MSI-{ProductID}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/{ProductID}
```
<!-- User-MSI-{ProductID}-OmaUri-End -->

<!-- User-MSI-{ProductID}-Description-Begin -->
<!-- Description-Source-DDF -->
The MSI product code for the application.
<!-- User-MSI-{ProductID}-Description-End -->

<!-- User-MSI-{ProductID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-MSI-{ProductID}-Editable-End -->

<!-- User-MSI-{ProductID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Atomic Required | True |
| Dynamic Node Naming | UniqueName: The MSI product code for the application. |
<!-- User-MSI-{ProductID}-DFProperties-End -->

<!-- User-MSI-{ProductID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-MSI-{ProductID}-Examples-End -->

<!-- User-MSI-{ProductID}-End -->

<!-- User-MSI-{ProductID}-DownloadInstall-Begin -->
#### User/MSI/{ProductID}/DownloadInstall

<!-- User-MSI-{ProductID}-DownloadInstall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-MSI-{ProductID}-DownloadInstall-Applicability-End -->

<!-- User-MSI-{ProductID}-DownloadInstall-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/{ProductID}/DownloadInstall
```
<!-- User-MSI-{ProductID}-DownloadInstall-OmaUri-End -->

<!-- User-MSI-{ProductID}-DownloadInstall-Description-Begin -->
<!-- Description-Source-DDF -->
Executes the download and installation of the application. In Windows 10, version 1703 service release, a new tag `<DownloadFromAad>` was added to the `<Enforcement>` section of the XML. The default value is 0 (don't send token). This tag is optional and needs to be set to 1 in case the server wants the download URL to get the AADUserToken.
<!-- User-MSI-{ProductID}-DownloadInstall-Description-End -->

<!-- User-MSI-{ProductID}-DownloadInstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Here's an example:

```xml
<Enforcement>
  <CommandLine>/quiet</CommandLine>
  <TimeOut>5</TimeOut>
  <RetryCount>3</RetryCount>
  <RetryInterval>5</RetryInterval>
  <DownloadFromAad>1</DownloadFromAad>
</Enforcement>
```

For more information, see [DownloadInstall XSD Schema](#downloadinstall-xsd-schema).
<!-- User-MSI-{ProductID}-DownloadInstall-Editable-End -->

<!-- User-MSI-{ProductID}-DownloadInstall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `xml` |
| Access Type | Add, Delete, Exec, Get |
<!-- User-MSI-{ProductID}-DownloadInstall-DFProperties-End -->

<!-- User-MSI-{ProductID}-DownloadInstall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-MSI-{ProductID}-DownloadInstall-Examples-End -->

<!-- User-MSI-{ProductID}-DownloadInstall-End -->

<!-- User-MSI-{ProductID}-InstallDate-Begin -->
#### User/MSI/{ProductID}/InstallDate

<!-- User-MSI-{ProductID}-InstallDate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-MSI-{ProductID}-InstallDate-Applicability-End -->

<!-- User-MSI-{ProductID}-InstallDate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/{ProductID}/InstallDate
```
<!-- User-MSI-{ProductID}-InstallDate-OmaUri-End -->

<!-- User-MSI-{ProductID}-InstallDate-Description-Begin -->
<!-- Description-Source-DDF -->
Installation date of the application.
<!-- User-MSI-{ProductID}-InstallDate-Description-End -->

<!-- User-MSI-{ProductID}-InstallDate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-MSI-{ProductID}-InstallDate-Editable-End -->

<!-- User-MSI-{ProductID}-InstallDate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-MSI-{ProductID}-InstallDate-DFProperties-End -->

<!-- User-MSI-{ProductID}-InstallDate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-MSI-{ProductID}-InstallDate-Examples-End -->

<!-- User-MSI-{ProductID}-InstallDate-End -->

<!-- User-MSI-{ProductID}-InstallPath-Begin -->
#### User/MSI/{ProductID}/InstallPath

<!-- User-MSI-{ProductID}-InstallPath-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-MSI-{ProductID}-InstallPath-Applicability-End -->

<!-- User-MSI-{ProductID}-InstallPath-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/{ProductID}/InstallPath
```
<!-- User-MSI-{ProductID}-InstallPath-OmaUri-End -->

<!-- User-MSI-{ProductID}-InstallPath-Description-Begin -->
<!-- Description-Source-DDF -->
Installation path of the application.
<!-- User-MSI-{ProductID}-InstallPath-Description-End -->

<!-- User-MSI-{ProductID}-InstallPath-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-MSI-{ProductID}-InstallPath-Editable-End -->

<!-- User-MSI-{ProductID}-InstallPath-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-MSI-{ProductID}-InstallPath-DFProperties-End -->

<!-- User-MSI-{ProductID}-InstallPath-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-MSI-{ProductID}-InstallPath-Examples-End -->

<!-- User-MSI-{ProductID}-InstallPath-End -->

<!-- User-MSI-{ProductID}-LastError-Begin -->
#### User/MSI/{ProductID}/LastError

<!-- User-MSI-{ProductID}-LastError-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-MSI-{ProductID}-LastError-Applicability-End -->

<!-- User-MSI-{ProductID}-LastError-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/{ProductID}/LastError
```
<!-- User-MSI-{ProductID}-LastError-OmaUri-End -->

<!-- User-MSI-{ProductID}-LastError-Description-Begin -->
<!-- Description-Source-DDF -->
The last error code during the application installation process. This is typically stored as an HRESULT format. Depending on what was occurring when the error happened, this could be the result of executing MSIExec.exe or the error result from an API that failed.
<!-- User-MSI-{ProductID}-LastError-Description-End -->

<!-- User-MSI-{ProductID}-LastError-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-MSI-{ProductID}-LastError-Editable-End -->

<!-- User-MSI-{ProductID}-LastError-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-MSI-{ProductID}-LastError-DFProperties-End -->

<!-- User-MSI-{ProductID}-LastError-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-MSI-{ProductID}-LastError-Examples-End -->

<!-- User-MSI-{ProductID}-LastError-End -->

<!-- User-MSI-{ProductID}-LastErrorDesc-Begin -->
#### User/MSI/{ProductID}/LastErrorDesc

<!-- User-MSI-{ProductID}-LastErrorDesc-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-MSI-{ProductID}-LastErrorDesc-Applicability-End -->

<!-- User-MSI-{ProductID}-LastErrorDesc-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/{ProductID}/LastErrorDesc
```
<!-- User-MSI-{ProductID}-LastErrorDesc-OmaUri-End -->

<!-- User-MSI-{ProductID}-LastErrorDesc-Description-Begin -->
<!-- Description-Source-DDF -->
Contains the last error code description. The LastErrorDesc value is looked up for the matching LastError value. Sometimes there is no LastErrorDesc returned.
<!-- User-MSI-{ProductID}-LastErrorDesc-Description-End -->

<!-- User-MSI-{ProductID}-LastErrorDesc-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-MSI-{ProductID}-LastErrorDesc-Editable-End -->

<!-- User-MSI-{ProductID}-LastErrorDesc-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-MSI-{ProductID}-LastErrorDesc-DFProperties-End -->

<!-- User-MSI-{ProductID}-LastErrorDesc-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-MSI-{ProductID}-LastErrorDesc-Examples-End -->

<!-- User-MSI-{ProductID}-LastErrorDesc-End -->

<!-- User-MSI-{ProductID}-Name-Begin -->
#### User/MSI/{ProductID}/Name

<!-- User-MSI-{ProductID}-Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-MSI-{ProductID}-Name-Applicability-End -->

<!-- User-MSI-{ProductID}-Name-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/{ProductID}/Name
```
<!-- User-MSI-{ProductID}-Name-OmaUri-End -->

<!-- User-MSI-{ProductID}-Name-Description-Begin -->
<!-- Description-Source-DDF -->
Name of the application.
<!-- User-MSI-{ProductID}-Name-Description-End -->

<!-- User-MSI-{ProductID}-Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-MSI-{ProductID}-Name-Editable-End -->

<!-- User-MSI-{ProductID}-Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-MSI-{ProductID}-Name-DFProperties-End -->

<!-- User-MSI-{ProductID}-Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-MSI-{ProductID}-Name-Examples-End -->

<!-- User-MSI-{ProductID}-Name-End -->

<!-- User-MSI-{ProductID}-Publisher-Begin -->
#### User/MSI/{ProductID}/Publisher

<!-- User-MSI-{ProductID}-Publisher-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-MSI-{ProductID}-Publisher-Applicability-End -->

<!-- User-MSI-{ProductID}-Publisher-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/{ProductID}/Publisher
```
<!-- User-MSI-{ProductID}-Publisher-OmaUri-End -->

<!-- User-MSI-{ProductID}-Publisher-Description-Begin -->
<!-- Description-Source-DDF -->
Publisher of application.
<!-- User-MSI-{ProductID}-Publisher-Description-End -->

<!-- User-MSI-{ProductID}-Publisher-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-MSI-{ProductID}-Publisher-Editable-End -->

<!-- User-MSI-{ProductID}-Publisher-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-MSI-{ProductID}-Publisher-DFProperties-End -->

<!-- User-MSI-{ProductID}-Publisher-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-MSI-{ProductID}-Publisher-Examples-End -->

<!-- User-MSI-{ProductID}-Publisher-End -->

<!-- User-MSI-{ProductID}-Status-Begin -->
#### User/MSI/{ProductID}/Status

<!-- User-MSI-{ProductID}-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-MSI-{ProductID}-Status-Applicability-End -->

<!-- User-MSI-{ProductID}-Status-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/{ProductID}/Status
```
<!-- User-MSI-{ProductID}-Status-OmaUri-End -->

<!-- User-MSI-{ProductID}-Status-Description-Begin -->
<!-- Description-Source-DDF -->
Status of the application. Valid values: 10-Initialized, 20-Download In Progress, 25-Pending Download Retry, 30-Download Failed, 40-Download Completed, 48-Pending User Session, 50-Enforcement In Progress, 55-Pending Enforcement Retry, 60-Enforcement Failed, 70-Enforcement Completed.
<!-- User-MSI-{ProductID}-Status-Description-End -->

<!-- User-MSI-{ProductID}-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-MSI-{ProductID}-Status-Editable-End -->

<!-- User-MSI-{ProductID}-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-MSI-{ProductID}-Status-DFProperties-End -->

<!-- User-MSI-{ProductID}-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-MSI-{ProductID}-Status-Examples-End -->

<!-- User-MSI-{ProductID}-Status-End -->

<!-- User-MSI-{ProductID}-Version-Begin -->
#### User/MSI/{ProductID}/Version

<!-- User-MSI-{ProductID}-Version-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-MSI-{ProductID}-Version-Applicability-End -->

<!-- User-MSI-{ProductID}-Version-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/{ProductID}/Version
```
<!-- User-MSI-{ProductID}-Version-OmaUri-End -->

<!-- User-MSI-{ProductID}-Version-Description-Begin -->
<!-- Description-Source-DDF -->
MSI Product Version.
<!-- User-MSI-{ProductID}-Version-Description-End -->

<!-- User-MSI-{ProductID}-Version-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-MSI-{ProductID}-Version-Editable-End -->

<!-- User-MSI-{ProductID}-Version-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- User-MSI-{ProductID}-Version-DFProperties-End -->

<!-- User-MSI-{ProductID}-Version-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-MSI-{ProductID}-Version-Examples-End -->

<!-- User-MSI-{ProductID}-Version-End -->

<!-- User-MSI-UpgradeCode-Begin -->
### User/MSI/UpgradeCode

<!-- User-MSI-UpgradeCode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- User-MSI-UpgradeCode-Applicability-End -->

<!-- User-MSI-UpgradeCode-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/UpgradeCode
```
<!-- User-MSI-UpgradeCode-OmaUri-End -->

<!-- User-MSI-UpgradeCode-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-MSI-UpgradeCode-Description-End -->

<!-- User-MSI-UpgradeCode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-MSI-UpgradeCode-Editable-End -->

<!-- User-MSI-UpgradeCode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
| Case Sensitive | True |
<!-- User-MSI-UpgradeCode-DFProperties-End -->

<!-- User-MSI-UpgradeCode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-MSI-UpgradeCode-Examples-End -->

<!-- User-MSI-UpgradeCode-End -->

<!-- User-MSI-UpgradeCode-{Guid}-Begin -->
#### User/MSI/UpgradeCode/{Guid}

<!-- User-MSI-UpgradeCode-{Guid}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- User-MSI-UpgradeCode-{Guid}-Applicability-End -->

<!-- User-MSI-UpgradeCode-{Guid}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/UpgradeCode/{Guid}
```
<!-- User-MSI-UpgradeCode-{Guid}-OmaUri-End -->

<!-- User-MSI-UpgradeCode-{Guid}-Description-Begin -->
<!-- Description-Source-DDF -->
A gateway (or device management server) uses this method to detect matching upgrade MSI product when a Admin wants to update an existing MSI app. If the same upgrade product is installed, then the update is allowed.
<!-- User-MSI-UpgradeCode-{Guid}-Description-End -->

<!-- User-MSI-UpgradeCode-{Guid}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-MSI-UpgradeCode-{Guid}-Editable-End -->

<!-- User-MSI-UpgradeCode-{Guid}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
| Dynamic Node Naming | ClientInventory |
<!-- User-MSI-UpgradeCode-{Guid}-DFProperties-End -->

<!-- User-MSI-UpgradeCode-{Guid}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-MSI-UpgradeCode-{Guid}-Examples-End -->

<!-- User-MSI-UpgradeCode-{Guid}-End -->

<!-- EnterpriseDesktopAppManagement-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
## DownloadInstall XSD Schema

```xml
<?xml version="1.0" encoding="utf-8"?>
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="Data">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="MsiInstallJob">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="Product">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="Download">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element name="ContentURLList">
                            <xs:complexType>
                              <xs:sequence>
                                <xs:element maxOccurs="unbounded" name="ContentURL" type="xs:string" />
                              </xs:sequence>
                            </xs:complexType>
                          </xs:element>
                        </xs:sequence>
                      </xs:complexType>
                    </xs:element>
                    <xs:element name="Validation">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element name="FileHash" type="xs:string" />
                        </xs:sequence>
                      </xs:complexType>
                    </xs:element>
                    <xs:element name="Enforcement">
                      <xs:complexType>
                        <xs:sequence>
                          <xs:element name="CommandLine" type="xs:string" />
                          <xs:element name="TimeOut" type="xs:unsignedByte" />
                          <xs:element name="RetryCount" type="xs:unsignedByte" />
                          <xs:element name="RetryInterval" type="xs:unsignedByte" />
                          <xs:element name="DownloadFromAad" type="xs:unsignedByte" />
                        </xs:sequence>
                      </xs:complexType>
                    </xs:element>
                  </xs:sequence>
                  <xs:attribute name="Version" type="xs:string" use="required" />
                </xs:complexType>
              </xs:element>
            </xs:sequence>
            <xs:attribute name="id" type="xs:string" use="required" />
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>
```

## Examples

- SyncML to request CSP version information:

    ```xml
    <SyncML xmlns="SYNCML:SYNCML1.1">
      <SyncBody>
        <Get>
          <CmdID>12345</CmdID>
          <Item>
            <Target>
              <LocURI>./Device/Vendor/MSFT/EnterpriseDesktopAppManagement?prop=Type</LocURI>
            </Target>
          </Item>
        </Get>
        <Final/>
      </SyncBody>
    </SyncML>
    ```

    The following table describes the fields in the previous sample:

    | Name   | Description                                                                                                                  |
    |--------|------------------------------------------------------------------------------------------------------------------------------|
    | Get    | Operation being performed. The Get operation is a request to return information.                                             |
    | CmdID  | Input value used to reference the request. Responses will include this value that can be used to match request and response. |
    | LocURI | Path to Win32 CSP command processor.                                                                                         |

- SyncML to perform MSI operations for application uninstall:

    ```xml
    <SyncML xmlns="SYNCML:SYNCML1.1">
      <SyncBody>
        <Delete>
          <CmdID>12345</CmdID>
          <Item>
            <Target>
              <LocURI>./Device/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/%7B1803A630-3C38-4D2B-9B9A-0CB37243539C%7D</LocURI>
            </Target>
          </Item>
        </Delete>
        <Final/>
      </SyncBody>
    </SyncML>
    ```

    The following table describes the fields in the previous sample:

    | Name   | Description                                                                                                                                                                                                         |
    |--------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
    | Delete | Operation being performed. The Delete operation is a request to delete the CSP node that represents the specified MSI installed application and to perform and uninstall of the application as part of the process. |
    | CmdID  | Input value used to reference the request. Responses will include this value that can be used to match request and response.                                                                                        |
    | LocURI | Path to Win32 CSP command processor, including the Product ID (in this example, 1803A630-3C38-4D2B-9B9A-0CB37243539C) property escaped for XML formatting.                                                          |

- SyncML to perform MSI operations for application status reporting:

    ```xml
    <SyncML xmlns="SYNCML:SYNCML1.1">
      <SyncBody>
        <Get>
          <CmdID>12345</CmdID>
          <Item>
            <Target>
              <LocURI>./Device/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/%7B1803A630-3C38-4D2B-9B9A-0CB37243539C%7D</LocURI>
            </Target>
          </Item>
        </Get>
        <Final/>
      </SyncBody>
    </SyncML>
    ```

    The following table describes the fields in the previous sample:

    | Name   | Description                                                                                                                                                |
    |--------|------------------------------------------------------------------------------------------------------------------------------------------------------------|
    | Get    | Operation being performed. The Get operation is a request to report the status of the specified MSI installed application.                                 |
    | CmdID  | Input value used to reference the request. Responses will include this value that can be used to match request and response.                               |
    | LocURI | Path to Win32 CSP command processor, including the Product ID (in this example, 1803A630-3C38-4D2B-9B9A-0CB37243539C) property escaped for XML formatting. |

- SyncML to perform MSI install operations for an application targeted to a specific user on the device. The Add command is required to precede the Exec command.

    ```xml
    <SyncML xmlns="SYNCML:SYNCML1.1">
      <SyncBody>
        <Add>
          <CmdID>1</CmdID>
          <Item>
            <Target>
            <LocURI>./User/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/%7B1803A630-3C384D2B-9B9A-0CB37243539C%7D/DownloadInstall</LocURI>
            </Target>
          </Item>
        </Add>
        <Exec>
          <CmdID>6</CmdID>
          <Item>
            <Target>
              <LocURI>./User/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/%7B1803A630-3C38-4D2B-9B9A-0CB37243539C%7D/DownloadInstall</LocURI>
            </Target>
            <Meta>
              <Format xmlns="syncml:metinf">xml</Format>
              <Type xmlns="syncml:metinf">text/plain</Type>
            </Meta>
            <Data>
              <MsiInstallJob id="{9BD4F7CD-880A-40B5-B74C-1BEECB51E596}">
                <Product Version="1.0.0">
                  <Download>
                    <ContentURLList>
                      <ContentURL>
                        http://bcl-w2k12r2-vm/testapps/msi/reboot/reboot.msi
                      </ContentURL>
                      <ContentURL>https://dp2.com/packages/myApp.msi</ContentURL>
                    </ContentURLList>
                  </Download>
                  <Validation>
                  <FileHash>134D8F1F7C3C036DC3DCDA9F97515C8C7951DB154B73365C9C22962BD23E3EB3</FileHash>
                  </Validation>
                  <Enforcement>
                    <CommandLine>/quiet</CommandLine>
                    <TimeOut>5</TimeOut>
                    <RetryCount>3</RetryCount>
                    <RetryInterval>5</RetryInterval>
                  </Enforcement>
                </Product>
              </MsiInstallJob>
            </Data>
          </Item>
        </Exec>
        <Final/>
      </SyncBody>
    </SyncML>
    ```

    The following table describes the fields in the previous sample:

    |Name|Description|
    |--- |--- |
    |Add|This field is required to precede the Exec command.<li>CmdID - Input value used to reference the request. Responses include this value, which can be used to match the request and response.<li>LocURI - Path to Win32 CSP command processor, including the Product ID (in this example, 1803A630-3C38-4D2B-9B9A-0CB37243539C) property escaped for XML formatting.|
    |Exec|The Exec node includes the parameters and properties requires to locate, download, validate and perform product installation.<li>CmdID - Input value used to reference the request. Responses will include this value that can be used to match request and response.<li>LocURI - Path to Win32 CSP command processor, including the Product ID (in this example, 1803A630-3C38-4D2B-9B9A-0CB37243539C) property escaped for XML formatting.<li>Data - The Data node contains an embedded XML, of type “MsiInstallJob”<li>MsiInstallJob - Contains all information required for the successful download, validation and execution of the MSI installation process (see section at the end of this document for details on this embedded data object).|

    > [!NOTE]
    > Information status on the MSI job will be reported using standard OMA-DM notification mechanism. The status reported is represented using standard MSIEXEC return codes as HRESULT as defined in the MSIEXEC topic on Microsoft TechNet at [Msiexec (command-line options)](https://technet.microsoft.com/library/cc759262%28v=ws.10%29.aspx).

- SyncML to perform MSI install operations for an application targeted to all users on the device (per-device installation):

    ```xml
    <SyncML xmlns="SYNCML:SYNCML1.1">
      <SyncBody>
        <Add>
          <CmdID>1</CmdID>
          <Item>
            <Target>
              <LocURI>./Device /Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/%7B6F7CB29F-1319-4816-B345-0856916EB801%7D/DownloadInstall
              </LocURI>
          </Target>
        </Item>
      </Add>
        <Exec>
          <CmdID>67890</CmdID>
          <Item>
            <Target>
              <LocURI>./Device /Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/%7B6F7CB29F-1319-4816-B345-0856916EB801%7D/DownloadInstall</LocURI>
            </Target>
            <Meta>
              <Format xmlns="syncml:metinf">xml</Format>
              <Type xmlns="syncml:metinf">text/plain</Type>
            </Meta>
            <Data>
              <MsiInstallJob id="{9BD4F7CD-880A-40B5-B74C-1BEECB51E596}">
                <Product Version="1.0.0">
                  <Download>
                    <ContentURLList>
                      <ContentURL>http://bcl-w2k12r2-vm/testapps/msi/Orca/Orca.msi</ContentURL>
                      <ContentURL>https://dp2.com/packages/myApp.msi</ContentURL>
                    </ContentURLList>
                  </Download>
                  <Validation>
                    <FileHash>4525065777EF18B9444ABF71DD4B48E5F64F4F0E1E029995FB8DA441CDE4296E</FileHash>
                  </Validation>
                  <Enforcement>
                    <CommandLine>/quiet</CommandLine>
                    <TimeOut>5</TimeOut>
                    <RetryCount>3</RetryCount>
                    <RetryInterval>5</RetryInterval>
                  </Enforcement>
                </Product>
              </MsiInstallJob>
            </Data>
          </Item>
        </Exec>
        <Final/>
      </SyncBody>
    </SyncML>
    ```

    The following table MsiInstallJob describes the schema elements.

    | Element        | Description                                                                                                                                                                         |
    |-----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
    | MsiInstallJob  | root element<br>Attribute: "id" - the application identifier of the application being installed                                                                                     |
    | Product        | child element of MsiInstallJob<br>Attribute: "Version" - string representation of application version                                                                               |
    | Download       | child element of Product. Container for download configuration information.                                                                                                         |
    | ContentURLList | child element of Download. Contains list of one or more content download URL locators in the form of ContentURL elements.                                                           |
    | ContentURL     | Location content should be downloaded from. Must be a property formatted URL that points to the .MSI file.                                                                          |
    | Validation     | Contains information used to validate contend authenticity. • FileHash - SHA256 hash value of file content                                                                          |
    | FileHash       | SHA256 hash value of file content                                                                                                                                                   |
    | Enforcement    | installation properties to be used when installing this MSI                                                                                                                         |
    | CommandLine    | Command-line options to be used when calling MSIEXEC.exe                                                                                                                            |
    | TimeOut        | Amount of time, in minutes that the installation process can run before the installer considers the installation may have failed and no longer monitors the installation operation. |
    | RetryCount     | The number of times the download and installation operation will be retried before the installation will be marked as failed.                                                       |
    | RetryInterval  | Amount of time, in minutes between retry operations.                                                                                                                                |

    Here's an example of a common response to a request

    ```xml
    <?xml version="1.0" encoding="utf-16"?>
    <SyncML>
      <SyncHdr />
      <SyncBody>
        <Status>
          <CmdID>12345</CmdID>
          <MsgRef>1</MsgRef>
          <CmdRef>0</CmdRef>
          <Cmd>SyncHdr</Cmd>
          <Data>200</Data>
        </Status>
        <Status>
          <CmdID>67890</CmdID>
          <MsgRef>1</MsgRef>
          <CmdRef>1</CmdRef>
          <Cmd>Add</Cmd>
          <Data>200</Data>
        </Status>
        <Final />
      </SyncBody>
    </SyncML>
    ```

## How to determine which installation context to use for an MSI package

The following tables show how app targeting and MSI package type (per-user, per machine, or dual mode) are installed in the client.

For Intune standalone environment, the MSI package will determine the MSI execution context.

|Target|Per-user MSI|Per-machine MSI|Dual mode MSI|
|--- |--- |--- |--- |
|User|Install the MSI per-user<br>LocURI contains a User prefix, such as ./User|Install the MSI per-device<br>LocURI contains a Device prefix, such as ./Device|Install the MSI per-user<br>LocURI contains a User prefix, such as ./User|
|System|Install the MSI per-user<br>LocURI contains a User prefix, such as ./User|Install the MSI per-device<br>LocURI contains a Device prefix, such as ./Device|Install the MSI per-user<br>LocURI contains a User prefix, such as ./User|

The following table applies to Configuration Manager hybrid environment:

|Target|Per-user MSI|Per-machine MSI|Dual mode MSI|
|--- |--- |--- |--- |
|User|Install the MSI per-user<br>LocURI contains a User prefix, such as ./User|Install the MSI per-device<br>LocURI contains a Device prefix, such as ./Device|Install the MSI per-user<br>LocURI contains a User prefix, such as ./User|
|System|Install the MSI per-user<br>LocURI contains a User prefix, such as ./User|Install the MSI per-device<br>LocURI contains a Device prefix, such as ./Device|Install the MSI per- system context<br>LocURI contains a Device prefix, such as ./Device|

## How to determine the package type from the MSI package

- ALLUSERS="" - per-user package type
- ALLUSERS=1 - per-machine package type
- ALLUSERS=2, MSIINSTALLPERUSER=1 - dual mode package type

Properties can be specified in the package, passed through the command line, modified by a transform, or (more commonly) selected through a user interface dialog.

Here's a list of references:

- [Using Windows Installer](/previous-versions/windows/it-pro/windows-server-2003/cc782896(v=ws.10))
- [Authoring a single package for Per-User or Per-Machine Installation context in Windows 7](https://blogs.msdn.com/b/windows_installer_team/archive/2009/09/02/authoring-a-single-package-for-per-user-or-per-machine-installation-context-in-windows-7.aspx)

## Alert example

```xml
<Alert>
   <CmdID>4</CmdID>
   <Data>1224</Data>
   <Item>
      <Source>
         <LocURI>./Device/Vendor/MSFT/EnterpriseDesktopAppManagement/MSI/{AF9257BA-6BBD-4624-AA9B-0182D50292C3}/DownloadInstall</LocURI>
      </Source>
      <Meta>
         <Type xmlns="syncml:metinf">Reversed-Domain-Name:com.microsoft.mdm.win32csp_install</Type>
         <Format xmlns="syncml:metinf">int</Format>
         <Mark xmlns="syncml:metinf">informational</Mark>
      </Meta>
      <Data>0</Data>
   </Item>
</Alert>
```
<!-- EnterpriseDesktopAppManagement-CspMoreInfo-End -->

<!-- EnterpriseDesktopAppManagement-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
