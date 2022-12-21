---
title: ADMX_EventViewer Policy CSP
description: Learn more about the ADMX_EventViewer Area in Policy CSP
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 12/21/2022
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_EventViewer-Begin -->
# Policy CSP - ADMX_EventViewer

> [!TIP]
> Some of these are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_EventViewer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_EventViewer-Editable-End -->

<!-- EventViewer_RedirectionProgram-Begin -->
## EventViewer_RedirectionProgram

<!-- EventViewer_RedirectionProgram-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- EventViewer_RedirectionProgram-Applicability-End -->

<!-- EventViewer_RedirectionProgram-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventViewer/EventViewer_RedirectionProgram
```
<!-- EventViewer_RedirectionProgram-OmaUri-End -->

<!-- EventViewer_RedirectionProgram-Description-Begin -->
<!-- Description-Source-ADMX -->
This is the program that will be invoked when the user clicks the events.asp link.
<!-- EventViewer_RedirectionProgram-Description-End -->

<!-- EventViewer_RedirectionProgram-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EventViewer_RedirectionProgram-Editable-End -->

<!-- EventViewer_RedirectionProgram-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EventViewer_RedirectionProgram-DFProperties-End -->

<!-- EventViewer_RedirectionProgram-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EventViewer_RedirectionProgram |
| Friendly Name | Events.asp program |
| Location | Computer Configuration |
| Path | Windows Components > Event Viewer |
| Registry Key Name | Software\Policies\Microsoft\EventViewer |
| ADMX File Name | EventViewer.admx |
<!-- EventViewer_RedirectionProgram-AdmxBacked-End -->

<!-- EventViewer_RedirectionProgram-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EventViewer_RedirectionProgram-Examples-End -->

<!-- EventViewer_RedirectionProgram-End -->

<!-- EventViewer_RedirectionProgramCommandLineParameters-Begin -->
## EventViewer_RedirectionProgramCommandLineParameters

<!-- EventViewer_RedirectionProgramCommandLineParameters-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- EventViewer_RedirectionProgramCommandLineParameters-Applicability-End -->

<!-- EventViewer_RedirectionProgramCommandLineParameters-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventViewer/EventViewer_RedirectionProgramCommandLineParameters
```
<!-- EventViewer_RedirectionProgramCommandLineParameters-OmaUri-End -->

<!-- EventViewer_RedirectionProgramCommandLineParameters-Description-Begin -->
<!-- Description-Source-ADMX -->
This specifies the command line parameters that will be passed to the events.asp program
<!-- EventViewer_RedirectionProgramCommandLineParameters-Description-End -->

<!-- EventViewer_RedirectionProgramCommandLineParameters-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EventViewer_RedirectionProgramCommandLineParameters-Editable-End -->

<!-- EventViewer_RedirectionProgramCommandLineParameters-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EventViewer_RedirectionProgramCommandLineParameters-DFProperties-End -->

<!-- EventViewer_RedirectionProgramCommandLineParameters-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EventViewer_RedirectionProgramCommandLineParameters |
| Friendly Name | Events.asp program command line parameters |
| Location | Computer Configuration |
| Path | Windows Components > Event Viewer |
| Registry Key Name | Software\Policies\Microsoft\EventViewer |
| ADMX File Name | EventViewer.admx |
<!-- EventViewer_RedirectionProgramCommandLineParameters-AdmxBacked-End -->

<!-- EventViewer_RedirectionProgramCommandLineParameters-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EventViewer_RedirectionProgramCommandLineParameters-Examples-End -->

<!-- EventViewer_RedirectionProgramCommandLineParameters-End -->

<!-- EventViewer_RedirectionURL-Begin -->
## EventViewer_RedirectionURL

<!-- EventViewer_RedirectionURL-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- EventViewer_RedirectionURL-Applicability-End -->

<!-- EventViewer_RedirectionURL-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventViewer/EventViewer_RedirectionURL
```
<!-- EventViewer_RedirectionURL-OmaUri-End -->

<!-- EventViewer_RedirectionURL-Description-Begin -->
<!-- Description-Source-ADMX -->
This is the URL that will be passed to the Description area in the Event Properties dialog box. Change this value if you want to use a different Web server to handle event information requests.
<!-- EventViewer_RedirectionURL-Description-End -->

<!-- EventViewer_RedirectionURL-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EventViewer_RedirectionURL-Editable-End -->

<!-- EventViewer_RedirectionURL-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EventViewer_RedirectionURL-DFProperties-End -->

<!-- EventViewer_RedirectionURL-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EventViewer_RedirectionURL |
| Friendly Name | Events.asp URL |
| Location | Computer Configuration |
| Path | Windows Components > Event Viewer |
| Registry Key Name | Software\Policies\Microsoft\EventViewer |
| ADMX File Name | EventViewer.admx |
<!-- EventViewer_RedirectionURL-AdmxBacked-End -->

<!-- EventViewer_RedirectionURL-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EventViewer_RedirectionURL-Examples-End -->

<!-- EventViewer_RedirectionURL-End -->

<!-- ADMX_EventViewer-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_EventViewer-CspMoreInfo-End -->

<!-- ADMX_EventViewer-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
