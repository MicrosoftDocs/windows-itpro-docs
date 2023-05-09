---
title: ADMX_HelpAndSupport Policy CSP
description: Learn more about the ADMX_HelpAndSupport Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 01/09/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_HelpAndSupport-Begin -->
# Policy CSP - ADMX_HelpAndSupport

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_HelpAndSupport-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_HelpAndSupport-Editable-End -->

<!-- ActiveHelp-Begin -->
## ActiveHelp

<!-- ActiveHelp-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- ActiveHelp-Applicability-End -->

<!-- ActiveHelp-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_HelpAndSupport/ActiveHelp
```
<!-- ActiveHelp-OmaUri-End -->

<!-- ActiveHelp-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether active content links in trusted assistance content are rendered. By default, the Help viewer renders trusted assistance content with active elements such as ShellExecute links and Guided Help links.

- If you enable this policy setting, active content links are not rendered. The text is displayed, but there are no clickable links for these elements.

- If you disable or do not configure this policy setting, the default behavior applies (Help viewer renders trusted assistance content with active elements).
<!-- ActiveHelp-Description-End -->

<!-- ActiveHelp-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ActiveHelp-Editable-End -->

<!-- ActiveHelp-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ActiveHelp-DFProperties-End -->

<!-- ActiveHelp-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ActiveHelp |
| Friendly Name | Turn off Active Help |
| Location | Computer Configuration |
| Path | Windows Components > Online Assistance |
| Registry Key Name | Software\Policies\Microsoft\Assistance\Client\1.0 |
| Registry Value Name | NoActiveHelp |
| ADMX File Name | HelpAndSupport.admx |
<!-- ActiveHelp-AdmxBacked-End -->

<!-- ActiveHelp-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ActiveHelp-Examples-End -->

<!-- ActiveHelp-End -->

<!-- HPExplicitFeedback-Begin -->
## HPExplicitFeedback

<!-- HPExplicitFeedback-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- HPExplicitFeedback-Applicability-End -->

<!-- HPExplicitFeedback-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_HelpAndSupport/HPExplicitFeedback
```
<!-- HPExplicitFeedback-OmaUri-End -->

<!-- HPExplicitFeedback-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether users can provide ratings for Help content.

- If you enable this policy setting, ratings controls are not added to Help content.

- If you disable or do not configure this policy setting, ratings controls are added to Help topics.

Users can use the control to provide feedback on the quality and usefulness of the Help and Support content.
<!-- HPExplicitFeedback-Description-End -->

<!-- HPExplicitFeedback-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HPExplicitFeedback-Editable-End -->

<!-- HPExplicitFeedback-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HPExplicitFeedback-DFProperties-End -->

<!-- HPExplicitFeedback-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | HPExplicitFeedback |
| Friendly Name | Turn off Help Ratings |
| Location | User Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Policies\Microsoft\Assistance\Client\1.0 |
| Registry Value Name | NoExplicitFeedback |
| ADMX File Name | HelpAndSupport.admx |
<!-- HPExplicitFeedback-AdmxBacked-End -->

<!-- HPExplicitFeedback-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HPExplicitFeedback-Examples-End -->

<!-- HPExplicitFeedback-End -->

<!-- HPImplicitFeedback-Begin -->
## HPImplicitFeedback

<!-- HPImplicitFeedback-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- HPImplicitFeedback-Applicability-End -->

<!-- HPImplicitFeedback-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_HelpAndSupport/HPImplicitFeedback
```
<!-- HPImplicitFeedback-OmaUri-End -->

<!-- HPImplicitFeedback-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether users can participate in the Help Experience Improvement program. The Help Experience Improvement program collects information about how customers use Windows Help so that Microsoft can improve it.

- If you enable this policy setting, users cannot participate in the Help Experience Improvement program.

- If you disable or do not configure this policy setting, users can turn on the Help Experience Improvement program feature from the Help and Support settings page.
<!-- HPImplicitFeedback-Description-End -->

<!-- HPImplicitFeedback-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HPImplicitFeedback-Editable-End -->

<!-- HPImplicitFeedback-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HPImplicitFeedback-DFProperties-End -->

<!-- HPImplicitFeedback-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | HPImplicitFeedback |
| Friendly Name | Turn off Help Experience Improvement Program |
| Location | User Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Policies\Microsoft\Assistance\Client\1.0 |
| Registry Value Name | NoImplicitFeedback |
| ADMX File Name | HelpAndSupport.admx |
<!-- HPImplicitFeedback-AdmxBacked-End -->

<!-- HPImplicitFeedback-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HPImplicitFeedback-Examples-End -->

<!-- HPImplicitFeedback-End -->

<!-- HPOnlineAssistance-Begin -->
## HPOnlineAssistance

<!-- HPOnlineAssistance-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- HPOnlineAssistance-Applicability-End -->

<!-- HPOnlineAssistance-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_HelpAndSupport/HPOnlineAssistance
```
<!-- HPOnlineAssistance-OmaUri-End -->

<!-- HPOnlineAssistance-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether users can search and view content from Windows Online in Help and Support. Windows Online provides the most up-to-date Help content for Windows.

- If you enable this policy setting, users are prevented from accessing online assistance content from Windows Online.

- If you disable or do not configure this policy setting, users can access online assistance if they have a connection to the Internet and have not disabled Windows Online from the Help and Support Options page.
<!-- HPOnlineAssistance-Description-End -->

<!-- HPOnlineAssistance-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HPOnlineAssistance-Editable-End -->

<!-- HPOnlineAssistance-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HPOnlineAssistance-DFProperties-End -->

<!-- HPOnlineAssistance-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | HPOnlineAssistance |
| Friendly Name | Turn off Windows Online |
| Location | User Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Policies\Microsoft\Assistance\Client\1.0 |
| Registry Value Name | NoOnlineAssist |
| ADMX File Name | HelpAndSupport.admx |
<!-- HPOnlineAssistance-AdmxBacked-End -->

<!-- HPOnlineAssistance-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HPOnlineAssistance-Examples-End -->

<!-- HPOnlineAssistance-End -->

<!-- ADMX_HelpAndSupport-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_HelpAndSupport-CspMoreInfo-End -->

<!-- ADMX_HelpAndSupport-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
