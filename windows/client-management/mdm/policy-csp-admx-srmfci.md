---
title: ADMX_srmfci Policy CSP
description: Learn more about the ADMX_srmfci Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 03/23/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_srmfci-Begin -->
# Policy CSP - ADMX_srmfci

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_srmfci-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_srmfci-Editable-End -->

<!-- AccessDeniedConfiguration-Begin -->
## AccessDeniedConfiguration

<!-- AccessDeniedConfiguration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- AccessDeniedConfiguration-Applicability-End -->

<!-- AccessDeniedConfiguration-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_srmfci/AccessDeniedConfiguration
```
<!-- AccessDeniedConfiguration-OmaUri-End -->

<!-- AccessDeniedConfiguration-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the message that users see when they are denied access to a file or folder. You can customize the Access Denied message to include additional text and links. You can also provide users with the ability to send an email to request access to the file or folder to which they were denied access.

- If you enable this policy setting, users receive a customized Access Denied message from the file servers on which this policy setting is applied.

- If you disable this policy setting, users see a standard Access Denied message that doesn't provide any of the functionality controlled by this policy setting, regardless of the file server configuration.

- If you do not configure this policy setting, users see a standard Access Denied message unless the file server is configured to display the customized Access Denied message. By default, users see the standard Access Denied message.
<!-- AccessDeniedConfiguration-Description-End -->

<!-- AccessDeniedConfiguration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AccessDeniedConfiguration-Editable-End -->

<!-- AccessDeniedConfiguration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AccessDeniedConfiguration-DFProperties-End -->

<!-- AccessDeniedConfiguration-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AccessDeniedConfiguration |
| Friendly Name | Customize message for Access Denied errors |
| Location | Computer Configuration |
| Path | System > Access-Denied Assistance |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\ADR\AccessDenied |
| Registry Value Name | Enabled |
| ADMX File Name | srm-fci.admx |
<!-- AccessDeniedConfiguration-AdmxBacked-End -->

<!-- AccessDeniedConfiguration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AccessDeniedConfiguration-Examples-End -->

<!-- AccessDeniedConfiguration-End -->

<!-- CentralClassificationList-Begin -->
## CentralClassificationList

<!-- CentralClassificationList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- CentralClassificationList-Applicability-End -->

<!-- CentralClassificationList-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_srmfci/CentralClassificationList
```
<!-- CentralClassificationList-OmaUri-End -->

<!-- CentralClassificationList-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls which set of properties is available for classifying files on affected computers.

Administrators can define the properties for the organization by using Active Directory Domain Services (AD DS), and then group these properties into lists. Administrators can supplement these properties on individual file servers by using File Classification Infrastructure, which is part of the File Server Resource Manager role service.

- If you enable this policy setting, you can select which list of properties is available for classification on the affected computers.

- If you disable or do not configure this policy setting, the Global Resource Property List in AD DS provides the default set of properties.
<!-- CentralClassificationList-Description-End -->

<!-- CentralClassificationList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CentralClassificationList-Editable-End -->

<!-- CentralClassificationList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CentralClassificationList-DFProperties-End -->

<!-- CentralClassificationList-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CentralClassificationList |
| Friendly Name | File Classification Infrastructure: Specify classification properties list |
| Location | Computer Configuration |
| Path | System > File Classification Infrastructure |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\FCI |
| ADMX File Name | srm-fci.admx |
<!-- CentralClassificationList-AdmxBacked-End -->

<!-- CentralClassificationList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CentralClassificationList-Examples-End -->

<!-- CentralClassificationList-End -->

<!-- EnableManualUX-Begin -->
## EnableManualUX

<!-- EnableManualUX-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableManualUX-Applicability-End -->

<!-- EnableManualUX-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_srmfci/EnableManualUX
```
<!-- EnableManualUX-OmaUri-End -->

<!-- EnableManualUX-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether the Classification tab is displayed in the Properties dialog box in File Explorer.

The Classification tab enables users to manually classify files by selecting properties from a list. Administrators can define the properties for the organization by using Group Policy, and supplement these with properties defined on individual file servers by using File Classification Infrastructure, which is part of the File Server Resource Manager role service.

- If you enable this policy setting, the Classification tab is displayed.

- If you disable or do not configure this policy setting, the Classification tab is hidden.
<!-- EnableManualUX-Description-End -->

<!-- EnableManualUX-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableManualUX-Editable-End -->

<!-- EnableManualUX-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableManualUX-DFProperties-End -->

<!-- EnableManualUX-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableManualUX |
| Friendly Name | File Classification Infrastructure: Display Classification tab in File Explorer |
| Location | Computer Configuration |
| Path | System > File Classification Infrastructure |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\FCI |
| Registry Value Name | EnableManualUX |
| ADMX File Name | srm-fci.admx |
<!-- EnableManualUX-AdmxBacked-End -->

<!-- EnableManualUX-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableManualUX-Examples-End -->

<!-- EnableManualUX-End -->

<!-- EnableShellAccessCheck-Begin -->
## EnableShellAccessCheck

<!-- EnableShellAccessCheck-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableShellAccessCheck-Applicability-End -->

<!-- EnableShellAccessCheck-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_srmfci/EnableShellAccessCheck
```
<!-- EnableShellAccessCheck-OmaUri-End -->

<!-- EnableShellAccessCheck-Description-Begin -->
<!-- Description-Source-ADMX -->
This Group Policy Setting should be set on Windows clients to enable access-denied assistance for all file types.
<!-- EnableShellAccessCheck-Description-End -->

<!-- EnableShellAccessCheck-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableShellAccessCheck-Editable-End -->

<!-- EnableShellAccessCheck-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableShellAccessCheck-DFProperties-End -->

<!-- EnableShellAccessCheck-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableShellAccessCheck |
| Friendly Name | Enable access-denied assistance on client for all file types |
| Location | Computer Configuration |
| Path | System > Access-Denied Assistance |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | EnableShellExecuteFileStreamCheck |
| ADMX File Name | srm-fci.admx |
<!-- EnableShellAccessCheck-AdmxBacked-End -->

<!-- EnableShellAccessCheck-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableShellAccessCheck-Examples-End -->

<!-- EnableShellAccessCheck-End -->

<!-- ADMX_srmfci-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_srmfci-CspMoreInfo-End -->

<!-- ADMX_srmfci-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
