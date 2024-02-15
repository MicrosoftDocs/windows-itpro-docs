---
title: "Quickstart: Configure a restricted user experience with Assigned Access"
description: Learn how to configure a restricted user experience using Windows Configuration Designer, Microsoft Intune, PowerShell or GPO.
ms.topic: quickstart
ms.date: 02/05/2024
appliesto:
- ✅ <a href=/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
---

# Quickstart: Configure a restricted user experience with Assigned Access

With a *restricted user experience*, you can control the applications allowed in a locked down Windows desktop.

This quickstart provides practical examples of how to configure a restricted user experience on Windows 11. The examples describe the steps using a mobile device management solution (MDM) like Microsoft Intune, provisioning packages (PPKG), and PowerShell. While different solutions are used, the configuration settings and results are the same.

The examples can be modified to fit your specific requirements. For example, you can add or remove applications from the list of allowed apps, or change the name of the user that automatically signs in to Windows.

## Prerequisites

>[!div class="checklist"]
>Here's a list of requirements to complete this quickstart:
>
>- A Windows 11 device
>- Microsoft Intune, or a non-Microsoft MDM solution, if you want to configure the settings using MDM
>- Windows Configuration Designer, if you want to configure the settings using a provisioning package
>- Access to the [psexec tool](/sysinternals/downloads/psexec), if you want to test the configuration using Windows PowerShell

## Configure a restricted user experience

[!INCLUDE [tab-intro](../../../includes/configure/tab-intro.md)]

#### [:::image type="icon" source="../images/icons/intune.svg"::: **Intune/CSP**](#tab/intune)

> [!TIP]
> Use the following Graph call to automatically create a custom policy in your Microsoft Intune tenant without assignments nor scope tags.
>
> When using this call, authenticate to your tenant in the Graph Explorer window. If it's the first time using Graph Explorer, you may need to authorize the application to access your tenant or to modify the existing permissions. This graph call requires *DeviceManagementConfiguration.ReadWrite.All* permissions.

[!INCLUDE [assigned-access-quickstart-restricted-experience-intune](includes/assigned-access-quickstart-restricted-experience-intune.md)]

[!INCLUDE [intune-custom-settings-2](../../../includes/configure/intune-custom-settings-2.md)]

Alternatively, you can configure devices using a [custom policy][MEM-1] with the [AssignedAccess CSP][WIN-3].

- **Setting:** `./Vendor/MSFT/AssignedAccess/Configuration`
- **Value:**

[!INCLUDE [assigned-access-quickstart-restricted-experience-xml.md](includes/assigned-access-quickstart-restricted-experience-xml.md)]

#### [:::image type="icon" source="../images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

[!INCLUDE [provisioning-package-1](../../../includes/configure/provisioning-package-1.md)]

- **Path:** `AssignedAccess/MultiAppAssignedAccessSettings`
- **Value:**

[!INCLUDE [assigned-access-quickstart-restricted-experience-xml.md](includes/assigned-access-quickstart-restricted-experience-xml.md)]

[!INCLUDE [provisioning-package-2](../../../includes/configure/provisioning-package-2.md)]

#### [:::image type="icon" source="../images/icons/powershell.svg"::: **PowerShell**](#tab/ps)

[!INCLUDE [powershell-wmi-bridge-1](../../../includes/configure/powershell-wmi-bridge-1.md)]

[!INCLUDE [assigned-access-quickstart-restricted-experience-ps](includes/assigned-access-quickstart-restricted-experience-ps.md)]

[!INCLUDE [powershell-wmi-bridge-2](../../../includes/configure/powershell-wmi-bridge-2.md)]

---

## User experience

After the settings are applied, reboot the device. A user account named `Library Kiosk` is automatically signed in, with access to a limited set of applications, which are pinned to the Start menu.

:::image type="content" source="images/quickstart-restricted-experience.png" alt-text="Screenshot of the Windows desktop used for the quickstart." border="false":::

## Next steps

> [!div class="nextstepaction"]
> Learn more how to configure Windows to execute as a restricted user experience:
>
> [Configure a restricted user experience](lock-down-windows-11-to-specific-apps.md)

<!--links-->

[WIN-3]: /windows/client-management/mdm/assignedaccess-csp
[MEM-1]: /mem/intune/configuration/custom-settings-windows-10
