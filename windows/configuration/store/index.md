---
title: Configure access to Microsoft Store
description: Learn how to configure access to the Microsoft Store app.
ms.topic: how-to
ms.date: 03/12/2024
---

# Configure access to Microsoft Store

Microsoft Store is a digital distribution platform that provides a way for users to install applications on Windows devices. For some organizations, business policies require blocking access to Microsoft Store.

This article describes how to configure access to the Microsoft Store app in your organization.

## Prevent access to the Microsoft Store app

You can use configuration service provider (CSP) or group policy (GPO) settings to configure access to the Microsoft Store app. The CSP configuration is available to Windows Enterprise and Education editions only.

[!INCLUDE [tab-intro](../../../includes/configure/tab-intro.md)]

#### [:::image type="icon" source="../images/icons/intune.svg" border="false"::: **Intune/CSP**](#tab/intune)

[!INCLUDE [intune-settings-catalog-1](../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| **Administrative Templates > Windows Components > Store** | Turn off the Store application| **Enabled**|

[!INCLUDE [intune-settings-catalog-2](../../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][INT-1] with the [Policy CSP][CSP-1].

| Setting |
|--|
|- **OMA-URI:** `./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsStore/RemoveWindowsStore_2`<br>- **Data type:** string<br>- **Value:** `<enabled/>`|

#### [:::image type="icon" source="../images/icons/group-policy.svg" border="false"::: **GPO**](#tab/gpo)

[!INCLUDE [gpo-settings-1](../../../includes/configure/gpo-settings-1.md)]

| Group policy path | Group policy setting | Value |
| - | - | - |
| **Computer Configuration\Administrative Templates\Windows Components\Store** | Turn off the Store application| **Enabled**|

[!INCLUDE [gpo-settings-2](../../../includes/configure/gpo-settings-2.md)]

---

## User experience

When you prevent access to the Microsoft Store, users can't access the Store app. Here's a screenshot of the Store app when access is blocked:

<!--links-->

[CSP-1]: /windows/client-management/mdm/policy-csp-admx-windowsstore
[INT-1]: /mem/intune/configuration/settings-catalog
