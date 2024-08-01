---
title: Configure access to the Microsoft Store app
description: Learn how to configure access to the Microsoft Store app.
ms.topic: how-to
ms.date: 03/13/2024
---

# Configure access to the Microsoft Store app

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

When you turn off the Microsoft Store application, users get the following message when they open it:

:::image type="content" source="images/store-blocked.png" alt-text="Screenshot of the Microsoft Store app blocked access." border="false":::

## Considerations

Here are some considerations when you prevent access to the Microsoft Store app:

- Microsoft Store applications keep updating automatically, by default
- Users might still be able to install applications using Windows Package Manager (winget), or other methods, if they don't need to acquire the package from Microsoft Store
- Devices managed by Microsoft Intune can still install applications sourced from Microsoft Store, even if you block access to the Microsoft Store app. To learn more, see [Add Microsoft Store apps to Microsoft Intune][INT-2]

<!--links-->

[CSP-1]: /windows/client-management/mdm/policy-csp-admx-windowsstore
[INT-1]: /mem/intune/configuration/settings-catalog
[INT-2]: /mem/intune/apps/store-apps-microsoft
