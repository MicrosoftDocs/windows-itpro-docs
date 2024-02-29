---
title: "Quickstart: configure a kiosk experience with Shell Launcher"
description: Learn how to configure a kiosk experience with Shell Launcher, using Windows Configuration Designer, Microsoft Intune, or PowerShell.
ms.topic: quickstart
ms.date: 02/05/2024
---

# Quickstart: configure a kiosk experience with Shell Launcher

When you configure Windows as a *kiosk* with Shell Launcher, you configure an application to replace the default shell (`explorer.exe`). This is useful for public-facing scenarios, such as a point of sale or a business critical application.

This quickstart provides practical examples of how to configure a kiosk experience on Windows with Shell Launcher. The examples describe the steps using a mobile device management solution (MDM) like Microsoft Intune, and PowerShell. While different solutions are used, the configuration settings and results are the same.

The examples can be modified to fit your specific requirements. For example, you can change the app used, the URL specified when opening Microsoft Edge, or change the name of the user that automatically signs in to Windows.

## Prerequisites

>[!div class="checklist"]
>Here's a list of requirements to complete this quickstart:
>
>- A Windows Enterprise or Education device
>- Microsoft Intune, or a non-Microsoft MDM solution, if you want to configure the settings using MDM
>- Access to the [psexec tool](/sysinternals/downloads/psexec), if you want to test the configuration using Windows PowerShell

## Configure a kiosk device

[!INCLUDE [tab-intro](../../../../includes/configure/tab-intro.md)]

#### [:::image type="icon" source="../../images/icons/intune.svg"::: **Intune/CSP**](#tab/intune)

> [!TIP]
> Use the following Graph call to automatically create a custom policy in your Microsoft Intune tenant without assignments nor scope tags.
>
> When using this call, authenticate to your tenant in the Graph Explorer window. If it's the first time using Graph Explorer, you may need to authorize the application to access your tenant or to modify the existing permissions. This graph call requires *DeviceManagementConfiguration.ReadWrite.All* permissions.

[!INCLUDE [quickstart-intune](includes/quickstart-intune.md)]

Assign the policy to a group that contains as members the devices that you want to configure.

Alternatively, you can configure devices using a [custom policy][MEM-1] with the [AssignedAccess CSP][WIN-3].

- **Setting:** `./Vendor/MSFT/AssignedAccess/ShellLauncher`
- **Value:**

[!INCLUDE [quickstart-xml](includes/quickstart-xml.md)]

#### [:::image type="icon" source="../../images/icons/powershell.svg"::: **PowerShell**](#tab/ps)

[!INCLUDE [powershell-wmi-bridge-1](../../../../includes/configure/powershell-wmi-bridge-1.md)]

[!INCLUDE [quickstart-ps](includes/quickstart-ps.md)]

[!INCLUDE [powershell-wmi-bridge-2](../../../../includes/configure/powershell-wmi-bridge-2.md)]

---

## User experience

After the settings are applied, reboot the device. A local user account is automatically signed in, opening Microsoft Edge.

## Next steps

> [!div class="nextstepaction"]
> Learn more how to create a Shell Launcher configuration file:
>
> [Create a Shell Launcher configuration file](configuration-file.md)

<!--links-->

[WIN-3]: /windows/client-management/mdm/assignedaccess-csp
[MEM-1]: /mem/intune/configuration/custom-settings-windows-10
