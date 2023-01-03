---
title: ADMX_Kerberos Policy CSP
description: Learn more about the ADMX_Kerberos Area in Policy CSP
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 01/03/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_Kerberos-Begin -->
# Policy CSP - ADMX_Kerberos

> [!TIP]
> Some of these are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_Kerberos-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Kerberos-Editable-End -->

<!-- AlwaysSendCompoundId-Begin -->
## AlwaysSendCompoundId

<!-- AlwaysSendCompoundId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- AlwaysSendCompoundId-Applicability-End -->

<!-- AlwaysSendCompoundId-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Kerberos/AlwaysSendCompoundId
```
<!-- AlwaysSendCompoundId-OmaUri-End -->

<!-- AlwaysSendCompoundId-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether a device always sends a compound authentication request when the resource domain requests compound identity.

Note: For a domain controller to request compound authentication, the policies "KDC support for claims, compound authentication, and Kerberos armoring" and "Request compound authentication" must be configured and enabled in the resource account domain.

If you enable this policy setting and the resource domain requests compound authentication, devices that support compound authentication always send a compound authentication request.

If you disable or do not configure this policy setting and the resource domain requests compound authentication, devices will send a non-compounded authentication request first then a compound authentication request when the service requests compound authentication.
<!-- AlwaysSendCompoundId-Description-End -->

<!-- AlwaysSendCompoundId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AlwaysSendCompoundId-Editable-End -->

<!-- AlwaysSendCompoundId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AlwaysSendCompoundId-DFProperties-End -->

<!-- AlwaysSendCompoundId-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AlwaysSendCompoundId |
| Friendly Name | Always send compound authentication first |
| Location | Computer Configuration |
| Path | System > Kerberos |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters |
| Registry Value Name | AlwaysSendCompoundId |
| ADMX File Name | Kerberos.admx |
<!-- AlwaysSendCompoundId-AdmxBacked-End -->

<!-- AlwaysSendCompoundId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AlwaysSendCompoundId-Examples-End -->

<!-- AlwaysSendCompoundId-End -->

<!-- DevicePKInitEnabled-Begin -->
## DevicePKInitEnabled

<!-- DevicePKInitEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DevicePKInitEnabled-Applicability-End -->

<!-- DevicePKInitEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Kerberos/DevicePKInitEnabled
```
<!-- DevicePKInitEnabled-OmaUri-End -->

<!-- DevicePKInitEnabled-Description-Begin -->
<!-- Description-Source-ADMX -->
Support for device authentication using certificate will require connectivity to a DC in the device account domain which supports certificate authentication for computer accounts.

This policy setting allows you to set support for Kerberos to attempt authentication using the certificate for the device to the domain.

If you enable this policy setting, the devices credentials will be selected based on the following options:

Automatic: Device will attempt to authenticate using its certificate. If the DC does not support computer account authentication using certificates then authentication with password will be attempted.

Force: Device will always authenticate using its certificate. If a DC cannot be found which support computer account authentication using certificates then authentication will fail.

If you disable this policy setting, certificates will never be used.
If you do not configure this policy setting, Automatic will be used.
<!-- DevicePKInitEnabled-Description-End -->

<!-- DevicePKInitEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DevicePKInitEnabled-Editable-End -->

<!-- DevicePKInitEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DevicePKInitEnabled-DFProperties-End -->

<!-- DevicePKInitEnabled-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DevicePKInitEnabled |
| Friendly Name | Support device authentication using certificate |
| Location | Computer Configuration |
| Path | System > Kerberos |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters |
| Registry Value Name | DevicePKInitEnabled |
| ADMX File Name | Kerberos.admx |
<!-- DevicePKInitEnabled-AdmxBacked-End -->

<!-- DevicePKInitEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DevicePKInitEnabled-Examples-End -->

<!-- DevicePKInitEnabled-End -->

<!-- HostToRealm-Begin -->
## HostToRealm

<!-- HostToRealm-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- HostToRealm-Applicability-End -->

<!-- HostToRealm-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Kerberos/HostToRealm
```
<!-- HostToRealm-OmaUri-End -->

<!-- HostToRealm-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify which DNS host names and which DNS suffixes are mapped to a Kerberos realm.

If you enable this policy setting, you can view and change the list of DNS host names and DNS suffixes mapped to a Kerberos realm as defined by Group Policy. To view the list of mappings, enable the policy setting and then click the Show button. To add a mapping, enable the policy setting, note the syntax, and then click Show. In the Show Contents dialog box in the Value Name column, type a realm name. In the Value column, type the list of DNS host names and DNS suffixes using the appropriate syntax format. To remove a mapping from the list, click the mapping entry to be removed, and then press the DELETE key. To edit a mapping, remove the current entry from the list and add a new one with different parameters.

If you disable this policy setting, the host name-to-Kerberos realm mappings list defined by Group Policy is deleted.

If you do not configure this policy setting, the system uses the host name-to-Kerberos realm mappings that are defined in the local registry, if they exist.
<!-- HostToRealm-Description-End -->

<!-- HostToRealm-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HostToRealm-Editable-End -->

<!-- HostToRealm-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HostToRealm-DFProperties-End -->

<!-- HostToRealm-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | hosttorealm |
| Friendly Name | Define host name-to-Kerberos realm mappings |
| Location | Computer Configuration |
| Path | System > Kerberos |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos |
| Registry Value Name | domain_realm_Enabled |
| ADMX File Name | Kerberos.admx |
<!-- HostToRealm-AdmxBacked-End -->

<!-- HostToRealm-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HostToRealm-Examples-End -->

<!-- HostToRealm-End -->

<!-- KdcProxyDisableServerRevocationCheck-Begin -->
## KdcProxyDisableServerRevocationCheck

<!-- KdcProxyDisableServerRevocationCheck-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- KdcProxyDisableServerRevocationCheck-Applicability-End -->

<!-- KdcProxyDisableServerRevocationCheck-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Kerberos/KdcProxyDisableServerRevocationCheck
```
<!-- KdcProxyDisableServerRevocationCheck-OmaUri-End -->

<!-- KdcProxyDisableServerRevocationCheck-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to disable revocation check for the SSL certificate of the targeted KDC proxy server.

If you enable this policy setting, revocation check for the SSL certificate of the KDC proxy server is ignored by the Kerberos client. This policy setting should only be used in troubleshooting KDC proxy connections.
Warning: When revocation check is ignored, the server represented by the certificate is not guaranteed valid.

If you disable or do not configure this policy setting, the Kerberos client enforces the revocation check for the SSL certificate. The connection to the KDC proxy server is not established if the revocation check fails.
<!-- KdcProxyDisableServerRevocationCheck-Description-End -->

<!-- KdcProxyDisableServerRevocationCheck-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- KdcProxyDisableServerRevocationCheck-Editable-End -->

<!-- KdcProxyDisableServerRevocationCheck-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- KdcProxyDisableServerRevocationCheck-DFProperties-End -->

<!-- KdcProxyDisableServerRevocationCheck-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | KdcProxyDisableServerRevocationCheck |
| Friendly Name | Disable revocation checking for the SSL certificate of KDC proxy servers |
| Location | Computer Configuration |
| Path | System > Kerberos |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters |
| Registry Value Name | NoRevocationCheck |
| ADMX File Name | Kerberos.admx |
<!-- KdcProxyDisableServerRevocationCheck-AdmxBacked-End -->

<!-- KdcProxyDisableServerRevocationCheck-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- KdcProxyDisableServerRevocationCheck-Examples-End -->

<!-- KdcProxyDisableServerRevocationCheck-End -->

<!-- KdcProxyServer-Begin -->
## KdcProxyServer

<!-- KdcProxyServer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- KdcProxyServer-Applicability-End -->

<!-- KdcProxyServer-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Kerberos/KdcProxyServer
```
<!-- KdcProxyServer-OmaUri-End -->

<!-- KdcProxyServer-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the Kerberos client's mapping to KDC proxy servers for domains based on their DNS suffix names.

If you enable this policy setting, the Kerberos client will use the KDC proxy server for a domain when a domain controller cannot be located based on the configured mappings. To map a KDC proxy server to a domain, enable the policy setting, click Show, and then map the KDC proxy server name(s) to the DNS name for the domain using the syntax described in the options pane. In the Show Contents dialog box in the Value Name column, type a DNS suffix name. In the Value column, type the list of proxy servers using the appropriate syntax format. To view the list of mappings, enable the policy setting and then click the Show button. To remove a mapping from the list, click the mapping entry to be removed, and then press the DELETE key. To edit a mapping, remove the current entry from the list and add a new one with different parameters.

If you disable or do not configure this policy setting, the Kerberos client does not have KDC proxy servers settings defined by Group Policy.
<!-- KdcProxyServer-Description-End -->

<!-- KdcProxyServer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- KdcProxyServer-Editable-End -->

<!-- KdcProxyServer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- KdcProxyServer-DFProperties-End -->

<!-- KdcProxyServer-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | KdcProxyServer |
| Friendly Name | Specify KDC proxy servers for Kerberos clients |
| Location | Computer Configuration |
| Path | System > Kerberos |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos |
| Registry Value Name | KdcProxyServer_Enabled |
| ADMX File Name | Kerberos.admx |
<!-- KdcProxyServer-AdmxBacked-End -->

<!-- KdcProxyServer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- KdcProxyServer-Examples-End -->

<!-- KdcProxyServer-End -->

<!-- MitRealms-Begin -->
## MitRealms

<!-- MitRealms-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- MitRealms-Applicability-End -->

<!-- MitRealms-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Kerberos/MitRealms
```
<!-- MitRealms-OmaUri-End -->

<!-- MitRealms-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the Kerberos client so that it can authenticate with interoperable Kerberos V5 realms, as defined by this policy setting.

If you enable this policy setting, you can view and change the list of interoperable Kerberos V5 realms and their settings. To view the list of interoperable Kerberos V5 realms, enable the policy setting and then click the Show button. To add an interoperable Kerberos V5 realm, enable the policy setting, note the syntax, and then click Show. In the Show Contents dialog box in the Value Name column, type the interoperable Kerberos V5 realm name. In the Value column, type the realm flags and host names of the host KDCs using the appropriate syntax format. To remove an interoperable Kerberos V5 realm Value Name or Value entry from the list, click the entry, and then press the DELETE key. To edit a mapping, remove the current entry from the list and add a new one with different parameters.

If you disable this policy setting, the interoperable Kerberos V5 realm settings defined by Group Policy are deleted.

If you do not configure this policy setting, the system uses the interoperable Kerberos V5 realm settings that are defined in the local registry, if they exist.
<!-- MitRealms-Description-End -->

<!-- MitRealms-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MitRealms-Editable-End -->

<!-- MitRealms-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MitRealms-DFProperties-End -->

<!-- MitRealms-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MitRealms |
| Friendly Name | Define interoperable Kerberos V5 realm settings |
| Location | Computer Configuration |
| Path | System > Kerberos |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos |
| Registry Value Name | MitRealms_Enabled |
| ADMX File Name | Kerberos.admx |
<!-- MitRealms-AdmxBacked-End -->

<!-- MitRealms-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MitRealms-Examples-End -->

<!-- MitRealms-End -->

<!-- ServerAcceptsCompound-Begin -->
## ServerAcceptsCompound

<!-- ServerAcceptsCompound-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- ServerAcceptsCompound-Applicability-End -->

<!-- ServerAcceptsCompound-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Kerberos/ServerAcceptsCompound
```
<!-- ServerAcceptsCompound-OmaUri-End -->

<!-- ServerAcceptsCompound-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls configuring the device's Active Directory account for compound authentication.

Support for providing compound authentication which is used for access control will require enough domain controllers in the resource account domains to support the requests. The Domain Administrator must configure the policy "Support Dynamic Access Control and Kerberos armoring" on all the domain controllers to support this policy.

If you enable this policy setting, the device's Active Directory account will be configured for compound authentication by the following options:

Never: Compound authentication is never provided for this computer account.

Automatic: Compound authentication is provided for this computer account when one or more applications are configured for Dynamic Access Control.

Always: Compound authentication is always provided for this computer account.

If you disable this policy setting, Never will be used.
If you do not configure this policy setting, Automatic will be used.
<!-- ServerAcceptsCompound-Description-End -->

<!-- ServerAcceptsCompound-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ServerAcceptsCompound-Editable-End -->

<!-- ServerAcceptsCompound-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ServerAcceptsCompound-DFProperties-End -->

<!-- ServerAcceptsCompound-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ServerAcceptsCompound |
| Friendly Name | Support compound authentication |
| Location | Computer Configuration |
| Path | System > Kerberos |
| Registry Key Name | Software\Policies\Microsoft\Netlogon\Parameters |
| Registry Value Name | CompoundIdDisabled |
| ADMX File Name | Kerberos.admx |
<!-- ServerAcceptsCompound-AdmxBacked-End -->

<!-- ServerAcceptsCompound-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ServerAcceptsCompound-Examples-End -->

<!-- ServerAcceptsCompound-End -->

<!-- StrictTarget-Begin -->
## StrictTarget

<!-- StrictTarget-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- StrictTarget-Applicability-End -->

<!-- StrictTarget-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Kerberos/StrictTarget
```
<!-- StrictTarget-OmaUri-End -->

<!-- StrictTarget-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure this server so that Kerberos can decrypt a ticket that contains this system-generated SPN. When an application attempts to make a remote procedure call (RPC) to this server with a NULL value for the service principal name (SPN), computers running Windows 7 or later attempt to use Kerberos by generating an SPN.

If you enable this policy setting, only services running as LocalSystem or NetworkService are allowed to accept these connections. Services running as identities different from LocalSystem or NetworkService might fail to authenticate.

If you disable or do not configure this policy setting, any service is allowed to accept incoming connections by using this system-generated SPN.
<!-- StrictTarget-Description-End -->

<!-- StrictTarget-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- StrictTarget-Editable-End -->

<!-- StrictTarget-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- StrictTarget-DFProperties-End -->

<!-- StrictTarget-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | StrictTarget |
| Friendly Name | Require strict target SPN match on remote procedure calls |
| Location | Computer Configuration |
| Path | System > Kerberos |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters |
| Registry Value Name | StrictTargetContext |
| ADMX File Name | Kerberos.admx |
<!-- StrictTarget-AdmxBacked-End -->

<!-- StrictTarget-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- StrictTarget-Examples-End -->

<!-- StrictTarget-End -->

<!-- ADMX_Kerberos-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Kerberos-CspMoreInfo-End -->

<!-- ADMX_Kerberos-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
