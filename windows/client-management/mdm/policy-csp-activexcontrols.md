---
title: ActiveXControls Policy CSP
description: Learn more about the ActiveXControls Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 08/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ActiveXControls-Begin -->
# Policy CSP - ActiveXControls

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ActiveXControls-Editable-End -->

<!-- ApprovedInstallationSites-Begin -->
## ApprovedInstallationSites

<!-- ApprovedInstallationSites-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- ApprovedInstallationSites-Applicability-End -->

<!-- ApprovedInstallationSites-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ActiveXControls/ApprovedInstallationSites
```
<!-- ApprovedInstallationSites-OmaUri-End -->

<!-- ApprovedInstallationSites-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines which ActiveX installation sites standard users in your organization can use to install ActiveX controls on their computers. When this setting is enabled, the administrator can create a list of approved Activex Install sites specified by host URL.

- If you enable this setting, the administrator can create a list of approved ActiveX Install sites specified by host URL.

- If you disable or don't configure this policy setting, ActiveX controls prompt the user for administrative credentials before installation.

> [!NOTE]
> Wild card characters can't be used when specifying the host URLs.
<!-- ApprovedInstallationSites-Description-End -->

<!-- ApprovedInstallationSites-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ApprovedInstallationSites-Editable-End -->

<!-- ApprovedInstallationSites-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ApprovedInstallationSites-DFProperties-End -->

<!-- ApprovedInstallationSites-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ApprovedActiveXInstallSites |
| Friendly Name | Approved Installation Sites for ActiveX Controls |
| Location | Computer Configuration |
| Path | Windows Components > ActiveX Installer Service |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\AxInstaller |
| Registry Value Name | ApprovedList |
| ADMX File Name | ActiveXInstallService.admx |
<!-- ApprovedInstallationSites-AdmxBacked-End -->

<!-- ApprovedInstallationSites-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ApprovedInstallationSites-Examples-End -->

<!-- ApprovedInstallationSites-End -->

<!-- ActiveXControls-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ActiveXControls-CspMoreInfo-End -->

<!-- ActiveXControls-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
