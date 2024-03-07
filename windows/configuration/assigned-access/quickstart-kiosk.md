---
title: "Quickstart: Configure a kiosk experience with Assigned Access"
description: Learn how to configure a kiosk experience with Assigned Access using the Assigned Access configuration service provider (CSP), Microsoft Intune, PowerShell, or group policy (GPO).
ms.topic: quickstart
ms.date: 03/04/2024
---

# Quickstart: Configure a kiosk with Assigned Access

This quickstart provides practical examples of how to configure a *kiosk experience* on Windows with Assigne Access. The examples describe the steps using the Settings app, a mobile device management solution (MDM) like Microsoft Intune, provisioning packages (PPKG), and PowerShell. While different solutions are used, the configuration settings and results are the same.

The examples can be modified to fit your specific requirements. For example, you can change the app used, the URL specified when opening Microsoft Edge, or change the name of the user that automatically signs in to Windows.

## Prerequisites

>[!div class="checklist"]
>Here's a list of requirements to complete this quickstart:
>
>- A Windows device
>- Microsoft Intune, or a non-Microsoft MDM solution, if you want to configure the settings using MDM
>- Windows Configuration Designer, if you want to configure the settings using a provisioning package
>- Access to the [psexec tool](/sysinternals/downloads/psexec), if you want to test the configuration using Windows PowerShell

## Configure a kiosk

[!INCLUDE [tab-intro](../../../includes/configure/tab-intro.md)]

#### [:::image type="icon" source="../images/icons/intune.svg"::: **Intune/CSP**](#tab/intune)

> [!TIP]
> Use the following Graph call to automatically create a custom policy in your Microsoft Intune tenant without assignments nor scope tags.
>
> When using this call, authenticate to your tenant in the Graph Explorer window. If it's the first time using Graph Explorer, you may need to authorize the application to access your tenant or to modify the existing permissions. This graph call requires *DeviceManagementConfiguration.ReadWrite.All* permissions.

[!INCLUDE [quickstart-kiosk-intune](includes/quickstart-kiosk-intune.md)]

Alternatively, you can configure devices using a [custom policy][MEM-1] with the [AssignedAccess CSP][WIN-3].

- **Setting:** `./Vendor/MSFT/AssignedAccess/Configuration`
- **Value:**

[!INCLUDE [quickstart-kiosk-xml](includes/quickstart-kiosk-xml.md)]

Assign the policy to a group that contains as members the devices that you want to configure.

#### [:::image type="icon" source="../images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

[!INCLUDE [provisioning-package-1](../../../includes/configure/provisioning-package-1.md)]

- **Path:** `AssignedAccess/MultiAppAssignedAccessSettings`
- **Value:**

[!INCLUDE [quickstart-kiosk-xml](includes/quickstart-kiosk-xml.md)]

[!INCLUDE [provisioning-package-2](../../../includes/configure/provisioning-package-2.md)]

#### [:::image type="icon" source="../images/icons/powershell.svg"::: **PowerShell**](#tab/ps)

[!INCLUDE [powershell-wmi-bridge-1](../../../includes/configure/powershell-wmi-bridge-1.md)]

[!INCLUDE [quickstart-kiosk-ps](includes/quickstart-kiosk-ps.md)]

[!INCLUDE [powershell-wmi-bridge-2](../../../includes/configure/powershell-wmi-bridge-2.md)]



#### [:::image type="icon" source="../images/icons/settings.svg"::: **Settings**](#tab/settings)

Here are the steps to configure a kiosk using the Settings app:

1. Open the Settings app to view and configure a device as a kiosk. Go to **Settings > Accounts > Other Users**, or use the following shortcut:

    > [!div class="nextstepaction"]
    >
    > [Other Users](ms-settings:otherusers)

1. Under **Set up a kiosk**, select **Get Started**
1. In the **Create an account** dialog, enter the account name, and select **Next**
    >[!NOTE]
    >If there are any local standard user accounts already, the **Create an account** dialog offers the option to **Choose an existing account**

1. Choose the application to run when the kiosk account signs in. Only apps that can run above the lock screen are available in the list of apps to choose from. If you select **Microsoft Edge** as the kiosk app, you configure the following options:

    - Whether Microsoft Edge should display your website full-screen (digital sign) or with some browser controls available (public browser)
    - Which URL should be open when the kiosk accounts signs in
    - When Microsoft Edge should restart after a period of inactivity (if you select to run as a public browser)

1. Select **Close**

---

## User experience

After the settings are applied, reboot the device. A local user account is automatically signed in, opening Microsoft Edge.

## Next steps

> [!div class="nextstepaction"]
> Learn more about Assigned Access and how to configure it:
>
> [Assigned Access overview](overview.md)

[WIN-3]: /windows/client-management/mdm/assignedaccess-csp
[MEM-1]: /mem/intune/configuration/custom-settings-windows-10
