---
title: CloudDesktop Policy CSP
description: Learn more about the CloudDesktop Area in Policy CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- CloudDesktop-Begin -->
# Policy CSP - CloudDesktop

<!-- CloudDesktop-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CloudDesktop-Editable-End -->

<!-- BootToCloudMode-Begin -->
## BootToCloudMode

<!-- BootToCloudMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621.2338] and later |
<!-- BootToCloudMode-Applicability-End -->

<!-- BootToCloudMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/CloudDesktop/BootToCloudMode
```
<!-- BootToCloudMode-OmaUri-End -->

<!-- BootToCloudMode-Description-Begin -->
<!-- Description-Source-DDF -->
This policy allows the user to configure the boot to cloud mode. Boot to Cloud mode enables users to seamlessly sign-in to a Cloud PC that's provisioned for them by an IT Admin. For using boot to cloud mode, users need to install and configure a Cloud Provider application (eg: Win365) on their PC and need to have a Cloud PC provisioned to them. For successful use of this policy, OverrideShellProgram policy needs to be configured as well. This policy supports the below options: 1. Not Configured: Machine won't trigger the Cloud PC connection automatically. 2. Enable Boot to Cloud Desktop: Users who have a Cloud PC provisioned will get connected seamlessly to the Cloud PC as they finish sign-in operation.
<!-- BootToCloudMode-Description-End -->

<!-- BootToCloudMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BootToCloudMode-Editable-End -->

<!-- BootToCloudMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- BootToCloudMode-DFProperties-End -->

<!-- BootToCloudMode-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not Configured. |
| 1 | Enable Boot to Cloud Desktop. |
<!-- BootToCloudMode-AllowedValues-End -->

<!-- BootToCloudMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BootToCloudMode-Examples-End -->

<!-- BootToCloudMode-End -->

<!-- SetMaxConnectionTimeout-Begin -->
## SetMaxConnectionTimeout

<!-- SetMaxConnectionTimeout-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621.2338] and later |
<!-- SetMaxConnectionTimeout-Applicability-End -->

<!-- SetMaxConnectionTimeout-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/CloudDesktop/SetMaxConnectionTimeout
```
<!-- SetMaxConnectionTimeout-OmaUri-End -->

<!-- SetMaxConnectionTimeout-Description-Begin -->
<!-- Description-Source-DDF -->
IT admins can use this policy to set the max connection timeout. The connection timeout decides the max wait time for connecting to Cloud PC after sign in. The default max value is 5 min. For best user experience, it's recommended to continue with the default timeout of 5 min. Update only if it takes more than 5 min to connect to the Cloud PC in your organization.
<!-- SetMaxConnectionTimeout-Description-End -->

<!-- SetMaxConnectionTimeout-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SetMaxConnectionTimeout-Editable-End -->

<!-- SetMaxConnectionTimeout-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 5 |
<!-- SetMaxConnectionTimeout-DFProperties-End -->

<!-- SetMaxConnectionTimeout-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 5 (Default) | 5 min. |
| 6 | 6 min. |
| 7 | 7 min. |
| 8 | 8 min. |
| 9 | 9 min. |
| 10 | 10 min. |
| 11 | 11 min. |
| 12 | 12 min. |
| 13 | 13 min. |
| 14 | 14 min. |
| 15 | 15 min. |
| 16 | 16 min. |
| 17 | 17 min. |
| 18 | 18 min. |
| 19 | 19 min. |
| 20 | 20 min. |
<!-- SetMaxConnectionTimeout-AllowedValues-End -->

<!-- SetMaxConnectionTimeout-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetMaxConnectionTimeout-Examples-End -->

<!-- SetMaxConnectionTimeout-End -->

<!-- CloudDesktop-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- CloudDesktop-CspMoreInfo-End -->

<!-- CloudDesktop-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
