---
title: ADMX_NCSI Policy CSP
description: Learn more about the ADMX_NCSI Area in Policy CSP
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 01/06/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_NCSI-Begin -->
# Policy CSP - ADMX_NCSI

> [!TIP]
> Some of these are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_NCSI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_NCSI-Editable-End -->

<!-- NCSI_CorpDnsProbeContent-Begin -->
## NCSI_CorpDnsProbeContent

<!-- NCSI_CorpDnsProbeContent-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- NCSI_CorpDnsProbeContent-Applicability-End -->

<!-- NCSI_CorpDnsProbeContent-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_NCSI/NCSI_CorpDnsProbeContent
```
<!-- NCSI_CorpDnsProbeContent-OmaUri-End -->

<!-- NCSI_CorpDnsProbeContent-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting enables you to specify the expected address of the host name used for the DNS probe. Successful resolution of the host name to this address indicates corporate connectivity.
<!-- NCSI_CorpDnsProbeContent-Description-End -->

<!-- NCSI_CorpDnsProbeContent-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NCSI_CorpDnsProbeContent-Editable-End -->

<!-- NCSI_CorpDnsProbeContent-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NCSI_CorpDnsProbeContent-DFProperties-End -->

<!-- NCSI_CorpDnsProbeContent-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NCSI_CorpDnsProbeContent |
| Friendly Name | Specify corporate DNS probe host address |
| Location | Computer Configuration |
| Path | Network > Network Connectivity Status Indicator |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator\CorporateConnectivity |
| ADMX File Name | NCSI.admx |
<!-- NCSI_CorpDnsProbeContent-AdmxBacked-End -->

<!-- NCSI_CorpDnsProbeContent-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NCSI_CorpDnsProbeContent-Examples-End -->

<!-- NCSI_CorpDnsProbeContent-End -->

<!-- NCSI_CorpDnsProbeHost-Begin -->
## NCSI_CorpDnsProbeHost

<!-- NCSI_CorpDnsProbeHost-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- NCSI_CorpDnsProbeHost-Applicability-End -->

<!-- NCSI_CorpDnsProbeHost-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_NCSI/NCSI_CorpDnsProbeHost
```
<!-- NCSI_CorpDnsProbeHost-OmaUri-End -->

<!-- NCSI_CorpDnsProbeHost-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting enables you to specify the host name of a computer known to be on the corporate network. Successful resolution of this host name to the expected address indicates corporate connectivity.
<!-- NCSI_CorpDnsProbeHost-Description-End -->

<!-- NCSI_CorpDnsProbeHost-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NCSI_CorpDnsProbeHost-Editable-End -->

<!-- NCSI_CorpDnsProbeHost-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NCSI_CorpDnsProbeHost-DFProperties-End -->

<!-- NCSI_CorpDnsProbeHost-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NCSI_CorpDnsProbeHost |
| Friendly Name | Specify corporate DNS probe host name |
| Location | Computer Configuration |
| Path | Network > Network Connectivity Status Indicator |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator\CorporateConnectivity |
| ADMX File Name | NCSI.admx |
<!-- NCSI_CorpDnsProbeHost-AdmxBacked-End -->

<!-- NCSI_CorpDnsProbeHost-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NCSI_CorpDnsProbeHost-Examples-End -->

<!-- NCSI_CorpDnsProbeHost-End -->

<!-- NCSI_CorpSitePrefixes-Begin -->
## NCSI_CorpSitePrefixes

<!-- NCSI_CorpSitePrefixes-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- NCSI_CorpSitePrefixes-Applicability-End -->

<!-- NCSI_CorpSitePrefixes-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_NCSI/NCSI_CorpSitePrefixes
```
<!-- NCSI_CorpSitePrefixes-OmaUri-End -->

<!-- NCSI_CorpSitePrefixes-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting enables you to specify the list of IPv6 corporate site prefixes to monitor for corporate connectivity. Reachability of addresses with any of these prefixes indicates corporate connectivity.
<!-- NCSI_CorpSitePrefixes-Description-End -->

<!-- NCSI_CorpSitePrefixes-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NCSI_CorpSitePrefixes-Editable-End -->

<!-- NCSI_CorpSitePrefixes-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NCSI_CorpSitePrefixes-DFProperties-End -->

<!-- NCSI_CorpSitePrefixes-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NCSI_CorpSitePrefixes |
| Friendly Name | Specify corporate site prefix list |
| Location | Computer Configuration |
| Path | Network > Network Connectivity Status Indicator |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator\CorporateConnectivity |
| ADMX File Name | NCSI.admx |
<!-- NCSI_CorpSitePrefixes-AdmxBacked-End -->

<!-- NCSI_CorpSitePrefixes-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NCSI_CorpSitePrefixes-Examples-End -->

<!-- NCSI_CorpSitePrefixes-End -->

<!-- NCSI_CorpWebProbeUrl-Begin -->
## NCSI_CorpWebProbeUrl

<!-- NCSI_CorpWebProbeUrl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- NCSI_CorpWebProbeUrl-Applicability-End -->

<!-- NCSI_CorpWebProbeUrl-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_NCSI/NCSI_CorpWebProbeUrl
```
<!-- NCSI_CorpWebProbeUrl-OmaUri-End -->

<!-- NCSI_CorpWebProbeUrl-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting enables you to specify the URL of the corporate website, against which an active probe is performed.
<!-- NCSI_CorpWebProbeUrl-Description-End -->

<!-- NCSI_CorpWebProbeUrl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NCSI_CorpWebProbeUrl-Editable-End -->

<!-- NCSI_CorpWebProbeUrl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NCSI_CorpWebProbeUrl-DFProperties-End -->

<!-- NCSI_CorpWebProbeUrl-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NCSI_CorpWebProbeUrl |
| Friendly Name | Specify corporate Website probe URL |
| Location | Computer Configuration |
| Path | Network > Network Connectivity Status Indicator |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator\CorporateConnectivity |
| ADMX File Name | NCSI.admx |
<!-- NCSI_CorpWebProbeUrl-AdmxBacked-End -->

<!-- NCSI_CorpWebProbeUrl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NCSI_CorpWebProbeUrl-Examples-End -->

<!-- NCSI_CorpWebProbeUrl-End -->

<!-- NCSI_DomainLocationDeterminationUrl-Begin -->
## NCSI_DomainLocationDeterminationUrl

<!-- NCSI_DomainLocationDeterminationUrl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- NCSI_DomainLocationDeterminationUrl-Applicability-End -->

<!-- NCSI_DomainLocationDeterminationUrl-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_NCSI/NCSI_DomainLocationDeterminationUrl
```
<!-- NCSI_DomainLocationDeterminationUrl-OmaUri-End -->

<!-- NCSI_DomainLocationDeterminationUrl-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting enables you to specify the HTTPS URL of the corporate website that clients use to determine the current domain location (i.e. whether the computer is inside or outside the corporate network). Reachability of the URL destination indicates that the client location is inside corporate network; otherwise it is outside the network.
<!-- NCSI_DomainLocationDeterminationUrl-Description-End -->

<!-- NCSI_DomainLocationDeterminationUrl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NCSI_DomainLocationDeterminationUrl-Editable-End -->

<!-- NCSI_DomainLocationDeterminationUrl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NCSI_DomainLocationDeterminationUrl-DFProperties-End -->

<!-- NCSI_DomainLocationDeterminationUrl-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NCSI_DomainLocationDeterminationUrl |
| Friendly Name | Specify domain location determination URL |
| Location | Computer Configuration |
| Path | Network > Network Connectivity Status Indicator |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator\CorporateConnectivity |
| ADMX File Name | NCSI.admx |
<!-- NCSI_DomainLocationDeterminationUrl-AdmxBacked-End -->

<!-- NCSI_DomainLocationDeterminationUrl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NCSI_DomainLocationDeterminationUrl-Examples-End -->

<!-- NCSI_DomainLocationDeterminationUrl-End -->

<!-- NCSI_GlobalDns-Begin -->
## NCSI_GlobalDns

<!-- NCSI_GlobalDns-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- NCSI_GlobalDns-Applicability-End -->

<!-- NCSI_GlobalDns-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_NCSI/NCSI_GlobalDns
```
<!-- NCSI_GlobalDns-OmaUri-End -->

<!-- NCSI_GlobalDns-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting enables you to specify DNS binding behavior. NCSI by default will restrict DNS lookups to the interface it is currently probing on. If you enable this setting, NCSI will allow the DNS lookups to happen on any interface.
<!-- NCSI_GlobalDns-Description-End -->

<!-- NCSI_GlobalDns-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NCSI_GlobalDns-Editable-End -->

<!-- NCSI_GlobalDns-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NCSI_GlobalDns-DFProperties-End -->

<!-- NCSI_GlobalDns-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NCSI_GlobalDns |
| Friendly Name | Specify global DNS |
| Location | Computer Configuration |
| Path | Network > Network Connectivity Status Indicator |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator |
| ADMX File Name | NCSI.admx |
<!-- NCSI_GlobalDns-AdmxBacked-End -->

<!-- NCSI_GlobalDns-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NCSI_GlobalDns-Examples-End -->

<!-- NCSI_GlobalDns-End -->

<!-- NCSI_PassivePolling-Begin -->
## NCSI_PassivePolling

<!-- NCSI_PassivePolling-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- NCSI_PassivePolling-Applicability-End -->

<!-- NCSI_PassivePolling-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_NCSI/NCSI_PassivePolling
```
<!-- NCSI_PassivePolling-OmaUri-End -->

<!-- NCSI_PassivePolling-Description-Begin -->
<!-- Description-Source-ADMX -->
This Policy setting enables you to specify passive polling behavior. NCSI polls various measurements throughout the network stack on a frequent interval to determine if network connectivity has been lost. Use the options to control the passive polling behavior.
<!-- NCSI_PassivePolling-Description-End -->

<!-- NCSI_PassivePolling-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NCSI_PassivePolling-Editable-End -->

<!-- NCSI_PassivePolling-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NCSI_PassivePolling-DFProperties-End -->

<!-- NCSI_PassivePolling-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NCSI_PassivePolling |
| Friendly Name | Specify passive polling |
| Location | Computer Configuration |
| Path | Network > Network Connectivity Status Indicator |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator |
| ADMX File Name | NCSI.admx |
<!-- NCSI_PassivePolling-AdmxBacked-End -->

<!-- NCSI_PassivePolling-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NCSI_PassivePolling-Examples-End -->

<!-- NCSI_PassivePolling-End -->

<!-- ADMX_NCSI-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_NCSI-CspMoreInfo-End -->

<!-- ADMX_NCSI-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
