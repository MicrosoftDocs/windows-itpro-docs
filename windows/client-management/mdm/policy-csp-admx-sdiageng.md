---
title: ADMX_sdiageng Policy CSP
description: Learn more about the ADMX_sdiageng Area in Policy CSP.
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

<!-- ADMX_sdiageng-Begin -->
# Policy CSP - ADMX_sdiageng

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_sdiageng-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_sdiageng-Editable-End -->

<!-- BetterWhenConnected-Begin -->
## BetterWhenConnected

<!-- BetterWhenConnected-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- BetterWhenConnected-Applicability-End -->

<!-- BetterWhenConnected-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_sdiageng/BetterWhenConnected
```
<!-- BetterWhenConnected-OmaUri-End -->

<!-- BetterWhenConnected-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows users who are connected to the Internet to access and search troubleshooting content that is hosted on Microsoft content servers. Users can access online troubleshooting content from within the Troubleshooting Control Panel UI by clicking "Yes" when they are prompted by a message that states, "Do you want the most up-to-date troubleshooting content?"

- If you enable or do not configure this policy setting, users who are connected to the Internet can access and search troubleshooting content that is hosted on Microsoft content servers from within the Troubleshooting Control Panel user interface.

- If you disable this policy setting, users can only access and search troubleshooting content that is available locally on their computers, even if they are connected to the Internet. They are prevented from connecting to the Microsoft servers that host the Windows Online Troubleshooting Service.
<!-- BetterWhenConnected-Description-End -->

<!-- BetterWhenConnected-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BetterWhenConnected-Editable-End -->

<!-- BetterWhenConnected-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- BetterWhenConnected-DFProperties-End -->

<!-- BetterWhenConnected-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | BetterWhenConnected |
| Friendly Name | Troubleshooting: Allow users to access online troubleshooting content on Microsoft servers from the Troubleshooting Control Panel (via the Windows Online Troubleshooting Service - WOTS) |
| Location | Computer Configuration |
| Path | System > Troubleshooting and Diagnostics > Scripted Diagnostics |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\ScriptedDiagnosticsProvider\Policy |
| Registry Value Name | EnableQueryRemoteServer |
| ADMX File Name | sdiageng.admx |
<!-- BetterWhenConnected-AdmxBacked-End -->

<!-- BetterWhenConnected-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BetterWhenConnected-Examples-End -->

<!-- BetterWhenConnected-End -->

<!-- ScriptedDiagnosticsExecutionPolicy-Begin -->
## ScriptedDiagnosticsExecutionPolicy

<!-- ScriptedDiagnosticsExecutionPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- ScriptedDiagnosticsExecutionPolicy-Applicability-End -->

<!-- ScriptedDiagnosticsExecutionPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_sdiageng/ScriptedDiagnosticsExecutionPolicy
```
<!-- ScriptedDiagnosticsExecutionPolicy-OmaUri-End -->

<!-- ScriptedDiagnosticsExecutionPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows users to access and run the troubleshooting tools that are available in the Troubleshooting Control Panel and to run the troubleshooting wizard to troubleshoot problems on their computers.

- If you enable or do not configure this policy setting, users can access and run the troubleshooting tools from the Troubleshooting Control Panel.

- If you disable this policy setting, users cannot access or run the troubleshooting tools from the Control Panel.

**Note** that this setting also controls a user's ability to launch standalone troubleshooting packs such as those found in .diagcab files.
<!-- ScriptedDiagnosticsExecutionPolicy-Description-End -->

<!-- ScriptedDiagnosticsExecutionPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ScriptedDiagnosticsExecutionPolicy-Editable-End -->

<!-- ScriptedDiagnosticsExecutionPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ScriptedDiagnosticsExecutionPolicy-DFProperties-End -->

<!-- ScriptedDiagnosticsExecutionPolicy-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ScriptedDiagnosticsExecutionPolicy |
| Friendly Name | Troubleshooting: Allow users to access and run Troubleshooting Wizards |
| Location | Computer Configuration |
| Path | System > Troubleshooting and Diagnostics > Scripted Diagnostics |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\ScriptedDiagnostics |
| Registry Value Name | EnableDiagnostics |
| ADMX File Name | sdiageng.admx |
<!-- ScriptedDiagnosticsExecutionPolicy-AdmxBacked-End -->

<!-- ScriptedDiagnosticsExecutionPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ScriptedDiagnosticsExecutionPolicy-Examples-End -->

<!-- ScriptedDiagnosticsExecutionPolicy-End -->

<!-- ScriptedDiagnosticsSecurityPolicy-Begin -->
## ScriptedDiagnosticsSecurityPolicy

<!-- ScriptedDiagnosticsSecurityPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- ScriptedDiagnosticsSecurityPolicy-Applicability-End -->

<!-- ScriptedDiagnosticsSecurityPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_sdiageng/ScriptedDiagnosticsSecurityPolicy
```
<!-- ScriptedDiagnosticsSecurityPolicy-OmaUri-End -->

<!-- ScriptedDiagnosticsSecurityPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether scripted diagnostics will execute diagnostic packages that are signed by untrusted publishers.

- If you enable this policy setting, the scripted diagnostics execution engine validates the signer of any diagnostic package and runs only those signed by trusted publishers.

- If you disable or do not configure this policy setting, the scripted diagnostics execution engine runs all digitally signed packages.
<!-- ScriptedDiagnosticsSecurityPolicy-Description-End -->

<!-- ScriptedDiagnosticsSecurityPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ScriptedDiagnosticsSecurityPolicy-Editable-End -->

<!-- ScriptedDiagnosticsSecurityPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ScriptedDiagnosticsSecurityPolicy-DFProperties-End -->

<!-- ScriptedDiagnosticsSecurityPolicy-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ScriptedDiagnosticsSecurityPolicy |
| Friendly Name | Configure Security Policy for Scripted Diagnostics |
| Location | Computer Configuration |
| Path | System > Troubleshooting and Diagnostics > Scripted Diagnostics |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\ScriptedDiagnostics |
| Registry Value Name | ValidateTrust |
| ADMX File Name | sdiageng.admx |
<!-- ScriptedDiagnosticsSecurityPolicy-AdmxBacked-End -->

<!-- ScriptedDiagnosticsSecurityPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ScriptedDiagnosticsSecurityPolicy-Examples-End -->

<!-- ScriptedDiagnosticsSecurityPolicy-End -->

<!-- ADMX_sdiageng-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_sdiageng-CspMoreInfo-End -->

<!-- ADMX_sdiageng-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
