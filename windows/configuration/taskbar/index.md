---
title: Configure the Windows taskbar
description: Administrators can pin more apps to the taskbar and remove default pinned apps from the taskbar by adding a section to a layout modification XML file.
ms.topic: how-to
ms.date: 08/18/2023
appliesto:
zone_pivot_groups: windows-versions-11-10
---

# Configure the Windows taskbar


::: zone pivot="windows-11"

:::image type="content" source="images/taskbar-11.png" alt-text="Sample Windows 11 taskbar." border="false" lightbox="./images/taskbar-11.png":::

::: zone-end

::: zone pivot="windows-10"

:::image type="content" source="images/taskbar-10.png" alt-text="Sample Windows 10 taskbar." border="false" lightbox="./images/taskbar-10.png":::

::: zone-end

## Configuration options

There are several options to configure the Windows taskbar.

If you need to configure a device for a single user, you can pin/unpin applications to the taskbar and rearrange them. The taskbar can be further customized from Settings. Go to **Settings** > **Personalization** > **[Taskbar](ms-settings:taskbar)**.

For advanced customizations and when you need to configure multiple devices, you can use one of the following options:

- Configuration Service Provider (CSP): commonly used for devices managed by a Mobile Device Management (MDM) solution, like Microsoft Intune. CSPs can also be configured with [provisioning packages](../provisioning-packages/how-it-pros-can-use-configuration-service-providers.md#csps-in-windows-configuration-designer), which are used at deployment time or for unmanaged devices. To configure the taskbar, use the [Start Policy CSP][WIN-1]
- Group policy (GPO): used for devices that are Active Directory joined or Microsoft Entra hybrid joined, and not managed by a device management solution. Group policy can also be used for devices that aren't joined to an Active Directory domain, using the local group policy editor

> [!NOTE]
> While many of the taskbar policy settings can be configured using both CSP and GPO, there are some settings that are exclusive to one or the other. To learn about the available policy settings to configure the Start menu via CSP and GPO, see [Taskbar policy settings](policy-settings.md).

The configuration of the Start layout requires the use of an XML file that specifies the layout. To learn more about how to create and apply an XML file to configure the taskbar layout, see [Customize the taskbar layout](layout.md).


## Next steps

In the next sections, you can learn more about the options available to configure Start menu settings using the Configuration Service Provider (CSP) and Group Policy (GPO):

- [Customize the taskbar layout](layout.md)
- [Taskbar policy settings](policy-settings.md)

<!--links-->

[WIN-1]: /windows/client-management/mdm/policy-csp-start


<!-- form Start article to move

Configuring the taskbar allows you to pin useful apps for your users, and remove apps that are pinned by default.

> **Looking for consumer information?** [See what's on the Start menu](https://support.microsoft.com/help/17195/windows-10-see-whats-on-the-menu)
>
> **Looking for OEM information?** See [Customize the Taskbar](/windows-hardware/customize/desktop/customize-the-windows-11-taskbar) and [Customize the Start layout](/windows-hardware/customize/desktop/customize-the-windows-11-start-menu).

For the **taskbar**, you can use the same XML file as the start screen. Or, you can create a new XML file. When you have the XML file, add this file to a group policy or a provisioning package. Using these methods, you can deploy the XML file to your devices. When the devices receive your policy, they'll use the taskbar settings you configured in the XML file.

## Taskbar options

There are three app categories that could be pinned to a taskbar:

- Apps pinned by the user
- Default Windows apps pinned during the OS installation, such as Microsoft Edge, File Explorer, and Store
- Apps pinned by your organization, such as in an unattended Windows setup

  In an unattended Windows setup file, it's recommended to use the [layoutmodification.xml method](../taskbar/configure.md) to configure the taskbar options. It's not recommended to use [TaskbarLinks](/windows-hardware/customize/desktop/unattend/microsoft-windows-shell-setup-taskbarlinks).

The following example shows how apps are pinned. In OS configured to use a right-to-left language, the taskbar order is reversed:

- Windows default apps to the left (blue circle)
- Apps pinned by the user in the center (orange triangle)
- Apps that you pin using XML to the right (green square)

![Windows left, user center, enterprise to the right.](images/taskbar-generic.png)

If you apply the taskbar configuration to a clean install or an update, users can still:

- Pin more apps
- Change the order of pinned apps
- Unpin any app

-->
