---
title: CloudDesktop Policy CSP
description: Learn more about the CloudDesktop Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 05/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- CloudDesktop-Begin -->
# Policy CSP - CloudDesktop

[!INCLUDE [Windows Insider tip](includes/mdm-insider-csp-note.md)]

<!-- CloudDesktop-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CloudDesktop-Editable-End -->

<!-- BootToCloudMode-Begin -->
## BootToCloudMode

<!-- BootToCloudMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE | ✅ Windows Insider Preview |
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

<!-- CloudDesktop-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- CloudDesktop-CspMoreInfo-End -->

<!-- CloudDesktop-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
