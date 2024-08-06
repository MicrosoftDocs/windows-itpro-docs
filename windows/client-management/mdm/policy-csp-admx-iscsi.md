---
title: ADMX_iSCSI Policy CSP
description: Learn more about the ADMX_iSCSI Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_iSCSI-Begin -->
# Policy CSP - ADMX_iSCSI

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_iSCSI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_iSCSI-Editable-End -->

<!-- iSCSIDiscovery_ConfigureiSNSServers-Begin -->
## iSCSIDiscovery_ConfigureiSNSServers

<!-- iSCSIDiscovery_ConfigureiSNSServers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- iSCSIDiscovery_ConfigureiSNSServers-Applicability-End -->

<!-- iSCSIDiscovery_ConfigureiSNSServers-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_iSCSI/iSCSIDiscovery_ConfigureiSNSServers
```
<!-- iSCSIDiscovery_ConfigureiSNSServers-OmaUri-End -->

<!-- iSCSIDiscovery_ConfigureiSNSServers-Description-Begin -->
<!-- Description-Source-ADMX -->
If enabled then new iSNS servers may not be added and thus new targets discovered via those iSNS servers; existing iSNS servers may not be removed. If disabled then new iSNS servers may be added and thus new targets discovered via those iSNS servers; existing iSNS servers may be removed.
<!-- iSCSIDiscovery_ConfigureiSNSServers-Description-End -->

<!-- iSCSIDiscovery_ConfigureiSNSServers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- iSCSIDiscovery_ConfigureiSNSServers-Editable-End -->

<!-- iSCSIDiscovery_ConfigureiSNSServers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- iSCSIDiscovery_ConfigureiSNSServers-DFProperties-End -->

<!-- iSCSIDiscovery_ConfigureiSNSServers-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | iSCSIDiscovery_ConfigureiSNSServers |
| Friendly Name | Do not allow manual configuration of iSNS servers |
| Location | Computer Configuration |
| Path | System > iSCSI > iSCSI Target Discovery |
| Registry Key Name | Software\Policies\Microsoft\Windows\iSCSI |
| Registry Value Name | ConfigureiSNSServers |
| ADMX File Name | iSCSI.admx |
<!-- iSCSIDiscovery_ConfigureiSNSServers-AdmxBacked-End -->

<!-- iSCSIDiscovery_ConfigureiSNSServers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- iSCSIDiscovery_ConfigureiSNSServers-Examples-End -->

<!-- iSCSIDiscovery_ConfigureiSNSServers-End -->

<!-- iSCSIDiscovery_ConfigureTargetPortals-Begin -->
## iSCSIDiscovery_ConfigureTargetPortals

<!-- iSCSIDiscovery_ConfigureTargetPortals-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- iSCSIDiscovery_ConfigureTargetPortals-Applicability-End -->

<!-- iSCSIDiscovery_ConfigureTargetPortals-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_iSCSI/iSCSIDiscovery_ConfigureTargetPortals
```
<!-- iSCSIDiscovery_ConfigureTargetPortals-OmaUri-End -->

<!-- iSCSIDiscovery_ConfigureTargetPortals-Description-Begin -->
<!-- Description-Source-ADMX -->
If enabled then new target portals may not be added and thus new targets discovered on those portals; existing target portals may not be removed. If disabled then new target portals may be added and thus new targets discovered on those portals; existing target portals may be removed.
<!-- iSCSIDiscovery_ConfigureTargetPortals-Description-End -->

<!-- iSCSIDiscovery_ConfigureTargetPortals-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- iSCSIDiscovery_ConfigureTargetPortals-Editable-End -->

<!-- iSCSIDiscovery_ConfigureTargetPortals-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- iSCSIDiscovery_ConfigureTargetPortals-DFProperties-End -->

<!-- iSCSIDiscovery_ConfigureTargetPortals-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | iSCSIDiscovery_ConfigureTargetPortals |
| Friendly Name | Do not allow manual configuration of target portals |
| Location | Computer Configuration |
| Path | System > iSCSI > iSCSI Target Discovery |
| Registry Key Name | Software\Policies\Microsoft\Windows\iSCSI |
| Registry Value Name | ConfigureTargetPortals |
| ADMX File Name | iSCSI.admx |
<!-- iSCSIDiscovery_ConfigureTargetPortals-AdmxBacked-End -->

<!-- iSCSIDiscovery_ConfigureTargetPortals-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- iSCSIDiscovery_ConfigureTargetPortals-Examples-End -->

<!-- iSCSIDiscovery_ConfigureTargetPortals-End -->

<!-- iSCSIDiscovery_ConfigureTargets-Begin -->
## iSCSIDiscovery_ConfigureTargets

<!-- iSCSIDiscovery_ConfigureTargets-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- iSCSIDiscovery_ConfigureTargets-Applicability-End -->

<!-- iSCSIDiscovery_ConfigureTargets-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_iSCSI/iSCSIDiscovery_ConfigureTargets
```
<!-- iSCSIDiscovery_ConfigureTargets-OmaUri-End -->

<!-- iSCSIDiscovery_ConfigureTargets-Description-Begin -->
<!-- Description-Source-ADMX -->
If enabled then discovered targets may not be manually configured. If disabled then discovered targets may be manually configured. Note if enabled there may be cases where this will break VDS.
<!-- iSCSIDiscovery_ConfigureTargets-Description-End -->

<!-- iSCSIDiscovery_ConfigureTargets-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- iSCSIDiscovery_ConfigureTargets-Editable-End -->

<!-- iSCSIDiscovery_ConfigureTargets-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- iSCSIDiscovery_ConfigureTargets-DFProperties-End -->

<!-- iSCSIDiscovery_ConfigureTargets-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | iSCSIDiscovery_ConfigureTargets |
| Friendly Name | Do not allow manual configuration of discovered targets |
| Location | Computer Configuration |
| Path | System > iSCSI > iSCSI Target Discovery |
| Registry Key Name | Software\Policies\Microsoft\Windows\iSCSI |
| Registry Value Name | ConfigureTargets |
| ADMX File Name | iSCSI.admx |
<!-- iSCSIDiscovery_ConfigureTargets-AdmxBacked-End -->

<!-- iSCSIDiscovery_ConfigureTargets-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- iSCSIDiscovery_ConfigureTargets-Examples-End -->

<!-- iSCSIDiscovery_ConfigureTargets-End -->

<!-- iSCSIDiscovery_NewStaticTargets-Begin -->
## iSCSIDiscovery_NewStaticTargets

<!-- iSCSIDiscovery_NewStaticTargets-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- iSCSIDiscovery_NewStaticTargets-Applicability-End -->

<!-- iSCSIDiscovery_NewStaticTargets-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_iSCSI/iSCSIDiscovery_NewStaticTargets
```
<!-- iSCSIDiscovery_NewStaticTargets-OmaUri-End -->

<!-- iSCSIDiscovery_NewStaticTargets-Description-Begin -->
<!-- Description-Source-ADMX -->
If enabled then new targets may not be manually configured by entering the target name and target portal; already discovered targets may be manually configured. If disabled then new and already discovered targets may be manually configured. Note if enabled there may be cases where this will break VDS.
<!-- iSCSIDiscovery_NewStaticTargets-Description-End -->

<!-- iSCSIDiscovery_NewStaticTargets-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- iSCSIDiscovery_NewStaticTargets-Editable-End -->

<!-- iSCSIDiscovery_NewStaticTargets-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- iSCSIDiscovery_NewStaticTargets-DFProperties-End -->

<!-- iSCSIDiscovery_NewStaticTargets-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | iSCSIDiscovery_NewStaticTargets |
| Friendly Name | Do not allow adding new targets via manual configuration |
| Location | Computer Configuration |
| Path | System > iSCSI > iSCSI Target Discovery |
| Registry Key Name | Software\Policies\Microsoft\Windows\iSCSI |
| Registry Value Name | NewStaticTargets |
| ADMX File Name | iSCSI.admx |
<!-- iSCSIDiscovery_NewStaticTargets-AdmxBacked-End -->

<!-- iSCSIDiscovery_NewStaticTargets-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- iSCSIDiscovery_NewStaticTargets-Examples-End -->

<!-- iSCSIDiscovery_NewStaticTargets-End -->

<!-- iSCSIGeneral_ChangeIQNName-Begin -->
## iSCSIGeneral_ChangeIQNName

<!-- iSCSIGeneral_ChangeIQNName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- iSCSIGeneral_ChangeIQNName-Applicability-End -->

<!-- iSCSIGeneral_ChangeIQNName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_iSCSI/iSCSIGeneral_ChangeIQNName
```
<!-- iSCSIGeneral_ChangeIQNName-OmaUri-End -->

<!-- iSCSIGeneral_ChangeIQNName-Description-Begin -->
<!-- Description-Source-ADMX -->
If enabled then don't allow the initiator iqn name to be changed. If disabled then the initiator iqn name may be changed.
<!-- iSCSIGeneral_ChangeIQNName-Description-End -->

<!-- iSCSIGeneral_ChangeIQNName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- iSCSIGeneral_ChangeIQNName-Editable-End -->

<!-- iSCSIGeneral_ChangeIQNName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- iSCSIGeneral_ChangeIQNName-DFProperties-End -->

<!-- iSCSIGeneral_ChangeIQNName-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | iSCSIGeneral_ChangeIQNName |
| Friendly Name | Do not allow changes to initiator iqn name |
| Location | Computer Configuration |
| Path | System > iSCSI > General iSCSI |
| Registry Key Name | Software\Policies\Microsoft\Windows\iSCSI |
| Registry Value Name | ChangeIQNName |
| ADMX File Name | iSCSI.admx |
<!-- iSCSIGeneral_ChangeIQNName-AdmxBacked-End -->

<!-- iSCSIGeneral_ChangeIQNName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- iSCSIGeneral_ChangeIQNName-Examples-End -->

<!-- iSCSIGeneral_ChangeIQNName-End -->

<!-- iSCSIGeneral_RestrictAdditionalLogins-Begin -->
## iSCSIGeneral_RestrictAdditionalLogins

<!-- iSCSIGeneral_RestrictAdditionalLogins-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- iSCSIGeneral_RestrictAdditionalLogins-Applicability-End -->

<!-- iSCSIGeneral_RestrictAdditionalLogins-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_iSCSI/iSCSIGeneral_RestrictAdditionalLogins
```
<!-- iSCSIGeneral_RestrictAdditionalLogins-OmaUri-End -->

<!-- iSCSIGeneral_RestrictAdditionalLogins-Description-Begin -->
<!-- Description-Source-ADMX -->
If enabled then only those sessions that are established via a persistent login will be established and no new persistent logins may be created. If disabled then additional persistent and non persistent logins may be established.
<!-- iSCSIGeneral_RestrictAdditionalLogins-Description-End -->

<!-- iSCSIGeneral_RestrictAdditionalLogins-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- iSCSIGeneral_RestrictAdditionalLogins-Editable-End -->

<!-- iSCSIGeneral_RestrictAdditionalLogins-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- iSCSIGeneral_RestrictAdditionalLogins-DFProperties-End -->

<!-- iSCSIGeneral_RestrictAdditionalLogins-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | iSCSIGeneral_RestrictAdditionalLogins |
| Friendly Name | Do not allow additional session logins |
| Location | Computer Configuration |
| Path | System > iSCSI > General iSCSI |
| Registry Key Name | Software\Policies\Microsoft\Windows\iSCSI |
| Registry Value Name | RestrictAdditionalLogins |
| ADMX File Name | iSCSI.admx |
<!-- iSCSIGeneral_RestrictAdditionalLogins-AdmxBacked-End -->

<!-- iSCSIGeneral_RestrictAdditionalLogins-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- iSCSIGeneral_RestrictAdditionalLogins-Examples-End -->

<!-- iSCSIGeneral_RestrictAdditionalLogins-End -->

<!-- iSCSISecurity_ChangeCHAPSecret-Begin -->
## iSCSISecurity_ChangeCHAPSecret

<!-- iSCSISecurity_ChangeCHAPSecret-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- iSCSISecurity_ChangeCHAPSecret-Applicability-End -->

<!-- iSCSISecurity_ChangeCHAPSecret-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_iSCSI/iSCSISecurity_ChangeCHAPSecret
```
<!-- iSCSISecurity_ChangeCHAPSecret-OmaUri-End -->

<!-- iSCSISecurity_ChangeCHAPSecret-Description-Begin -->
<!-- Description-Source-ADMX -->
If enabled then don't allow the initiator CHAP secret to be changed. If disabled then the initiator CHAP secret may be changed.
<!-- iSCSISecurity_ChangeCHAPSecret-Description-End -->

<!-- iSCSISecurity_ChangeCHAPSecret-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- iSCSISecurity_ChangeCHAPSecret-Editable-End -->

<!-- iSCSISecurity_ChangeCHAPSecret-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- iSCSISecurity_ChangeCHAPSecret-DFProperties-End -->

<!-- iSCSISecurity_ChangeCHAPSecret-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | iSCSISecurity_ChangeCHAPSecret |
| Friendly Name | Do not allow changes to initiator CHAP secret |
| Location | Computer Configuration |
| Path | System > iSCSI > iSCSI Security |
| Registry Key Name | Software\Policies\Microsoft\Windows\iSCSI |
| Registry Value Name | ChangeCHAPSecret |
| ADMX File Name | iSCSI.admx |
<!-- iSCSISecurity_ChangeCHAPSecret-AdmxBacked-End -->

<!-- iSCSISecurity_ChangeCHAPSecret-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- iSCSISecurity_ChangeCHAPSecret-Examples-End -->

<!-- iSCSISecurity_ChangeCHAPSecret-End -->

<!-- iSCSISecurity_RequireIPSec-Begin -->
## iSCSISecurity_RequireIPSec

<!-- iSCSISecurity_RequireIPSec-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- iSCSISecurity_RequireIPSec-Applicability-End -->

<!-- iSCSISecurity_RequireIPSec-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_iSCSI/iSCSISecurity_RequireIPSec
```
<!-- iSCSISecurity_RequireIPSec-OmaUri-End -->

<!-- iSCSISecurity_RequireIPSec-Description-Begin -->
<!-- Description-Source-ADMX -->
If enabled then only those connections that are configured for IPSec may be established. If disabled then connections that are configured for IPSec or connections not configured for IPSec may be established.
<!-- iSCSISecurity_RequireIPSec-Description-End -->

<!-- iSCSISecurity_RequireIPSec-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- iSCSISecurity_RequireIPSec-Editable-End -->

<!-- iSCSISecurity_RequireIPSec-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- iSCSISecurity_RequireIPSec-DFProperties-End -->

<!-- iSCSISecurity_RequireIPSec-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | iSCSISecurity_RequireIPSec |
| Friendly Name | Do not allow connections without IPSec |
| Location | Computer Configuration |
| Path | System > iSCSI > iSCSI Security |
| Registry Key Name | Software\Policies\Microsoft\Windows\iSCSI |
| Registry Value Name | RequireIPSec |
| ADMX File Name | iSCSI.admx |
<!-- iSCSISecurity_RequireIPSec-AdmxBacked-End -->

<!-- iSCSISecurity_RequireIPSec-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- iSCSISecurity_RequireIPSec-Examples-End -->

<!-- iSCSISecurity_RequireIPSec-End -->

<!-- iSCSISecurity_RequireMutualCHAP-Begin -->
## iSCSISecurity_RequireMutualCHAP

<!-- iSCSISecurity_RequireMutualCHAP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- iSCSISecurity_RequireMutualCHAP-Applicability-End -->

<!-- iSCSISecurity_RequireMutualCHAP-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_iSCSI/iSCSISecurity_RequireMutualCHAP
```
<!-- iSCSISecurity_RequireMutualCHAP-OmaUri-End -->

<!-- iSCSISecurity_RequireMutualCHAP-Description-Begin -->
<!-- Description-Source-ADMX -->
If enabled then only those sessions that are configured for mutual CHAP may be established. If disabled then sessions that are configured for mutual CHAP or sessions not configured for mutual CHAP may be established.
<!-- iSCSISecurity_RequireMutualCHAP-Description-End -->

<!-- iSCSISecurity_RequireMutualCHAP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- iSCSISecurity_RequireMutualCHAP-Editable-End -->

<!-- iSCSISecurity_RequireMutualCHAP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- iSCSISecurity_RequireMutualCHAP-DFProperties-End -->

<!-- iSCSISecurity_RequireMutualCHAP-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | iSCSISecurity_RequireMutualCHAP |
| Friendly Name | Do not allow sessions without mutual CHAP |
| Location | Computer Configuration |
| Path | System > iSCSI > iSCSI Security |
| Registry Key Name | Software\Policies\Microsoft\Windows\iSCSI |
| Registry Value Name | RequireMutualCHAP |
| ADMX File Name | iSCSI.admx |
<!-- iSCSISecurity_RequireMutualCHAP-AdmxBacked-End -->

<!-- iSCSISecurity_RequireMutualCHAP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- iSCSISecurity_RequireMutualCHAP-Examples-End -->

<!-- iSCSISecurity_RequireMutualCHAP-End -->

<!-- iSCSISecurity_RequireOneWayCHAP-Begin -->
## iSCSISecurity_RequireOneWayCHAP

<!-- iSCSISecurity_RequireOneWayCHAP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- iSCSISecurity_RequireOneWayCHAP-Applicability-End -->

<!-- iSCSISecurity_RequireOneWayCHAP-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_iSCSI/iSCSISecurity_RequireOneWayCHAP
```
<!-- iSCSISecurity_RequireOneWayCHAP-OmaUri-End -->

<!-- iSCSISecurity_RequireOneWayCHAP-Description-Begin -->
<!-- Description-Source-ADMX -->
If enabled then only those sessions that are configured for one-way CHAP may be established. If disabled then sessions that are configured for one-way CHAP or sessions not configured for one-way CHAP may be established. Note that if the "Do not allow sessions without mutual CHAP" setting is enabled then that setting overrides this one.
<!-- iSCSISecurity_RequireOneWayCHAP-Description-End -->

<!-- iSCSISecurity_RequireOneWayCHAP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- iSCSISecurity_RequireOneWayCHAP-Editable-End -->

<!-- iSCSISecurity_RequireOneWayCHAP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- iSCSISecurity_RequireOneWayCHAP-DFProperties-End -->

<!-- iSCSISecurity_RequireOneWayCHAP-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | iSCSISecurity_RequireOneWayCHAP |
| Friendly Name | Do not allow sessions without one way CHAP |
| Location | Computer Configuration |
| Path | System > iSCSI > iSCSI Security |
| Registry Key Name | Software\Policies\Microsoft\Windows\iSCSI |
| Registry Value Name | RequireOneWayCHAP |
| ADMX File Name | iSCSI.admx |
<!-- iSCSISecurity_RequireOneWayCHAP-AdmxBacked-End -->

<!-- iSCSISecurity_RequireOneWayCHAP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- iSCSISecurity_RequireOneWayCHAP-Examples-End -->

<!-- iSCSISecurity_RequireOneWayCHAP-End -->

<!-- ADMX_iSCSI-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_iSCSI-CspMoreInfo-End -->

<!-- ADMX_iSCSI-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
