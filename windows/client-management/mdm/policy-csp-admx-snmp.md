---
title: ADMX_Snmp Policy CSP
description: Learn more about the ADMX_Snmp Area in Policy CSP.
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

<!-- ADMX_Snmp-Begin -->
# Policy CSP - ADMX_Snmp

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_Snmp-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Snmp-Editable-End -->

<!-- SNMP_Communities-Begin -->
## SNMP_Communities

<!-- SNMP_Communities-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- SNMP_Communities-Applicability-End -->

<!-- SNMP_Communities-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Snmp/SNMP_Communities
```
<!-- SNMP_Communities-OmaUri-End -->

<!-- SNMP_Communities-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures a list of the communities defined to the Simple Network Management Protocol (SNMP) service.

SNMP is a protocol designed to give a user the capability to remotely manage a computer network, by polling and setting terminal values and monitoring network events.

A valid community is a community recognized by the SNMP service, while a community is a group of hosts (servers, workstations, hubs, and routers) that are administered together by SNMP. The SNMP service is a managed network node that receives SNMP packets from the network.

- If you enable this policy setting, the SNMP agent only accepts requests from management systems within the communities it recognizes, and only SNMP Read operation is allowed for the community.

- If you disable or do not configure this policy setting, the SNMP service takes the Valid Communities configured on the local computer instead.

Best practice: For security purposes, it is recommended to restrict the HKLM\SOFTWARE\Policies\SNMP\Parameters\ValidCommunities key to allow only the local admin group full control.

> [!NOTE]
> It is good practice to use a cryptic community name.

> [!NOTE]
> This policy setting has no effect if the SNMP agent is not installed on the client computer.

Also, see the other two SNMP settings: "Specify permitted managers" and "Specify trap configuration".
<!-- SNMP_Communities-Description-End -->

<!-- SNMP_Communities-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SNMP_Communities-Editable-End -->

<!-- SNMP_Communities-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SNMP_Communities-DFProperties-End -->

<!-- SNMP_Communities-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SNMP_Communities |
| Friendly Name | Specify communities |
| Location | Computer Configuration |
| Path | Network > SNMP |
| Registry Key Name | Software\Policies\SNMP\Parameters |
| ADMX File Name | Snmp.admx |
<!-- SNMP_Communities-AdmxBacked-End -->

<!-- SNMP_Communities-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SNMP_Communities-Examples-End -->

<!-- SNMP_Communities-End -->

<!-- SNMP_PermittedManagers-Begin -->
## SNMP_PermittedManagers

<!-- SNMP_PermittedManagers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- SNMP_PermittedManagers-Applicability-End -->

<!-- SNMP_PermittedManagers-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Snmp/SNMP_PermittedManagers
```
<!-- SNMP_PermittedManagers-OmaUri-End -->

<!-- SNMP_PermittedManagers-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines the permitted list of hosts that can submit a query to the Simple Network Management (SNMP) agent running on the client computer.

Simple Network Management Protocol is a protocol designed to give a user the capability to remotely manage a computer network by polling and setting terminal values and monitoring network events.

The manager is located on the host computer on the network. The manager's role is to poll the agents for certain requested information.

- If you enable this policy setting, the SNMP agent only accepts requests from the list of permitted managers that you configure using this setting.

- If you disable or do not configure this policy setting, SNMP service takes the permitted managers configured on the local computer instead.

Best practice: For security purposes, it is recommended to restrict the HKLM\SOFTWARE\Policies\SNMP\Parameters\PermittedManagers key to allow only the local admin group full control.

> [!NOTE]
> This policy setting has no effect if the SNMP agent is not installed on the client computer.

Also, see the other two SNMP policy settings: "Specify trap configuration" and "Specify Community Name".
<!-- SNMP_PermittedManagers-Description-End -->

<!-- SNMP_PermittedManagers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SNMP_PermittedManagers-Editable-End -->

<!-- SNMP_PermittedManagers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SNMP_PermittedManagers-DFProperties-End -->

<!-- SNMP_PermittedManagers-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SNMP_PermittedManagers |
| Friendly Name | Specify permitted managers |
| Location | Computer Configuration |
| Path | Network > SNMP |
| Registry Key Name | Software\Policies\SNMP\Parameters |
| ADMX File Name | Snmp.admx |
<!-- SNMP_PermittedManagers-AdmxBacked-End -->

<!-- SNMP_PermittedManagers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SNMP_PermittedManagers-Examples-End -->

<!-- SNMP_PermittedManagers-End -->

<!-- SNMP_Traps_Public-Begin -->
## SNMP_Traps_Public

<!-- SNMP_Traps_Public-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- SNMP_Traps_Public-Applicability-End -->

<!-- SNMP_Traps_Public-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Snmp/SNMP_Traps_Public
```
<!-- SNMP_Traps_Public-OmaUri-End -->

<!-- SNMP_Traps_Public-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows trap configuration for the Simple Network Management Protocol (SNMP) agent.

Simple Network Management Protocol is a protocol designed to give a user the capability to remotely manage a computer network by polling and setting terminal values and monitoring network events.

This policy setting allows you to configure the name of the hosts that receive trap messages for the community sent by the SNMP service. A trap message is an alert or significant event that allows the SNMP agent to notify management systems asynchronously.

- If you enable this policy setting, the SNMP service sends trap messages to the hosts within the "public" community.

- If you disable or do not configure this policy setting, the SNMP service takes the trap configuration configured on the local computer instead.

> [!NOTE]
> This setting has no effect if the SNMP agent is not installed on the client computer.

Also, see the other two SNMP settings: "Specify permitted managers" and "Specify Community Name".
<!-- SNMP_Traps_Public-Description-End -->

<!-- SNMP_Traps_Public-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SNMP_Traps_Public-Editable-End -->

<!-- SNMP_Traps_Public-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SNMP_Traps_Public-DFProperties-End -->

<!-- SNMP_Traps_Public-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SNMP_Traps_Public |
| Friendly Name | Specify traps for public community |
| Location | Computer Configuration |
| Path | Network > SNMP |
| Registry Key Name | Software\Policies\SNMP\Parameters |
| ADMX File Name | Snmp.admx |
<!-- SNMP_Traps_Public-AdmxBacked-End -->

<!-- SNMP_Traps_Public-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SNMP_Traps_Public-Examples-End -->

<!-- SNMP_Traps_Public-End -->

<!-- ADMX_Snmp-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Snmp-CspMoreInfo-End -->

<!-- ADMX_Snmp-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
