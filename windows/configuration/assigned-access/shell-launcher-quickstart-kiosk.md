---
title: "Quickstart: configure a kiosk experience with Shell Launcher"
description: Learn how to configure a kiosk experience with Shell Launcher, using Windows Configuration Designer, Microsoft Intune, or PowerShell.
ms.topic: quickstart
ms.date: 02/05/2024
appliesto:
- ✅ <a href=/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
---

# Quickstart: configure a kiosk experience with Shell Launcher

This quickstart provides the information to configure a kiosk experience with Shell Launcher, using Windows Configuration Designer, Microsoft Intune, or PowerShell.

## Prerequisites

>[!div class="checklist"]
>Here's a list of requirements to complete this quickstart:
>
>- A Windows Enterprise or Education device
>- Microsoft Intune, or a non-Microsoft MDM solution, if you want to configure the settings using MDM
>- Access to the [psexec tool](/sysinternals/downloads/psexec), if you want to test the configuration using Windows PowerShell

## Configure a kiosk device

[!INCLUDE [tab-intro](../../../includes/configure/tab-intro.md)]

#### [:::image type="icon" source="../images/icons/intune.svg"::: **Intune/CSP**](#tab/intune)

> [!TIP]
> Use the following Graph call to automatically create a custom policy in your Microsoft Intune tenant without assignments nor scope tags.
>
> When using this call, authenticate to your tenant in the Graph Explorer window. If it's the first time using Graph Explorer, you may need to authorize the application to access your tenant or to modify the existing permissions. This graph call requires *DeviceManagementConfiguration.ReadWrite.All* permissions.

[!INCLUDE [shell-launcher-quickstart-intune](includes/shell-launcher-quickstart-intune.md)]

[!INCLUDE [intune-custom-settings-2](../../../includes/configure/intune-custom-settings-2.md)]

Alternatively, you can configure devices using a [custom policy][MEM-1] with the [AssignedAccess CSP][WIN-3].

- **Setting:** `./Vendor/MSFT/AssignedAccess/ShellLauncher`
- **Value:**

[!INCLUDE [quickstart-shell-launcher-xml](includes/quickstart-shell-launcher-xml.md)]

#### [:::image type="icon" source="../images/icons/powershell.svg"::: **PowerShell**](#tab/ps)

[!INCLUDE [powershell-wmi-bridge-1](../../../includes/configure/powershell-wmi-bridge-1.md)]

[!INCLUDE [shell-launcher-quickstart-ps](includes/shell-launcher-quickstart-ps.md)]

[!INCLUDE [powershell-wmi-bridge-2](../../../includes/configure/powershell-wmi-bridge-2.md)]

---

## User experience

After the settings are applied, reboot the device. A local user account named `Airport Kiosk` is automatically signed in, opening Microsoft Edge with an airport map.

## Next steps

> [!div class="nextstepaction"]
> Learn more how to configure Windows to execute as a restricted user experience:
>
> [Configure a shell launcher configuration](create-shell-launcher-configuration.md)

<!--links-->

[WIN-3]: /windows/client-management/mdm/assignedaccess-csp
[MEM-1]: /mem/intune/configuration/custom-settings-windows-10
