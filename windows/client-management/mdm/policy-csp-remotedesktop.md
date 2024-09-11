---
title: RemoteDesktop Policy CSP
description: Learn more about the RemoteDesktop Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- RemoteDesktop-Begin -->
# Policy CSP - RemoteDesktop

<!-- RemoteDesktop-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RemoteDesktop-Editable-End -->

<!-- AutoSubscription-Begin -->
## AutoSubscription

<!-- AutoSubscription-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1370] and later <br> ✅ Windows 10, version 20H2 [10.0.19042.1370] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1370] and later <br> ✅ Windows 10, version 21H2 [10.0.19044.1370] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AutoSubscription-Applicability-End -->

<!-- AutoSubscription-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/RemoteDesktop/AutoSubscription
```
<!-- AutoSubscription-OmaUri-End -->

<!-- AutoSubscription-Description-Begin -->
<!-- Description-Source-ADMX -->
Controls the list of URLs that the user should be auto-subscribed to.
<!-- AutoSubscription-Description-End -->

<!-- AutoSubscription-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

This policy lets you enable automatic subscription for the Microsoft Remote Desktop client. If you define this policy, the client uses the specified URL to subscribe the signed-in user and retrieve the remote resources assigned to them.

To automatically subscribe to [Azure Virtual Desktop](/azure/virtual-desktop/overview) in the Azure public cloud, set the URL to `https://rdweb.wvd.microsoft.com/api/arm/feeddiscovery`.
<!-- AutoSubscription-Editable-End -->

<!-- AutoSubscription-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `|`) |
<!-- AutoSubscription-DFProperties-End -->

<!-- AutoSubscription-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AutoSubscription |
| Friendly Name | Enable auto-subscription |
| Location | User Configuration |
| Path | AutoSubscription |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | AutoSubscription |
| ADMX File Name | TerminalServer.admx |
<!-- AutoSubscription-GpMapping-End -->

<!-- AutoSubscription-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AutoSubscription-Examples-End -->

<!-- AutoSubscription-End -->

<!-- LoadAadCredKeyFromProfile-Begin -->
## LoadAadCredKeyFromProfile

<!-- LoadAadCredKeyFromProfile-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LoadAadCredKeyFromProfile-Applicability-End -->

<!-- LoadAadCredKeyFromProfile-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteDesktop/LoadAadCredKeyFromProfile
```
<!-- LoadAadCredKeyFromProfile-OmaUri-End -->

<!-- LoadAadCredKeyFromProfile-Description-Begin -->
<!-- Description-Source-DDF -->
Allow encrypted DPAPI cred keys to be loaded from user profiles for Microsoft Entra accounts.
<!-- LoadAadCredKeyFromProfile-Description-End -->

<!-- LoadAadCredKeyFromProfile-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

This policy allows the user to load the data protection API (DPAPI) cred key from their user profile, and decrypt any previously encrypted DPAPI data in the user profile or encrypt any new DPAPI data. This policy is needed when using [FSLogix user profiles](/fslogix/overview) from Microsoft Entra joined VMs.
<!-- LoadAadCredKeyFromProfile-Editable-End -->

<!-- LoadAadCredKeyFromProfile-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LoadAadCredKeyFromProfile-DFProperties-End -->

<!-- LoadAadCredKeyFromProfile-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not allowed. |
| 1 | Allowed. |
<!-- LoadAadCredKeyFromProfile-AllowedValues-End -->

<!-- LoadAadCredKeyFromProfile-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LoadAadCredKeyFromProfile-Examples-End -->

<!-- LoadAadCredKeyFromProfile-End -->

<!-- RemoteDesktop-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- RemoteDesktop-CspMoreInfo-End -->

<!-- RemoteDesktop-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
