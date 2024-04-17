---
title: Configure the Windows taskbar
description: Administrators can pin more apps to the taskbar and remove default pinned apps from the taskbar by adding a section to a layout modification XML file.
ms.topic: how-to
ms.date: 08/18/2023
appliesto:
zone_pivot_groups: windows-versions-11-10
---

# Configure the Windows taskbar

Customizing the Windows taskbar using policy settings offers a range of benefits for various user scenarios. For specialized devices, it allows for a tailored user experience that can be locked down to prevent unauthorized changes, ensuring that the device serves its specific purpose efficiently. For students, a customized taskbar can provide quick access to educational tools and resources, minimizing distractions and optimizing the learning environment.

Frontline workers, who often operate in fast-paced and dynamic settings, can benefit from a taskbar that is configured to provide immediate access to the most critical applications and functions they need. This customization can streamline workflows and enhance productivity by reducing the time spent navigating through unnecessary applications or menus.

Kiosks, which are designed for public use, can also take advantage of taskbar customization to offer a simplified and focused interface. This can help users quickly find the information or services they are looking for, which is particularly useful in environments like retail, information centers, or public service areas.

Overall, the ability to customize the Windows taskbar using policy settings enables organizations to create a more controlled, efficient, and user-friendly computing environment tailored to the specific needs of different user groups.

> **Looking for consumer information?** [See what's on the Start menu](https://support.microsoft.com/help/17195/windows-10-see-whats-on-the-menu)
>
> **Looking for OEM information?** See [Customize the Taskbar](/windows-hardware/customize/desktop/customize-the-windows-11-taskbar) and [Customize the Start layout](/windows-hardware/customize/desktop/customize-the-windows-11-start-menu).

## Configuration options

There are several options to configure the Windows taskbar.

If you need to configure a device for a single user, you can pin/unpin applications to the taskbar and rearrange them. The taskbar can be further customized from Settings. Go to **Settings** > **Personalization** > **[Taskbar](ms-settings:taskbar)**.

For advanced customizations and when you need to configure multiple devices, you can use one of the following options:

- Configuration Service Provider (CSP): commonly used for devices managed by a Mobile Device Management (MDM) solution, like Microsoft Intune. CSPs can also be configured with [provisioning packages](../provisioning-packages/how-it-pros-can-use-configuration-service-providers.md#csps-in-windows-configuration-designer), which are used at deployment time or for unmanaged devices. To configure the taskbar, use the [Start Policy CSP][WIN-1]
- Group policy (GPO): used for devices that are Active Directory joined or Microsoft Entra hybrid joined, and not managed by a device management solution. Group policy can also be used for devices that aren't joined to an Active Directory domain, using the local group policy editor

> [!NOTE]
> While many of the taskbar policy settings can be configured using both CSP and GPO, there are some settings that are exclusive to one or the other. To learn about the available policy settings to configure the Start menu via CSP and GPO, see [Taskbar policy settings](policy-settings.md).

## Taskbar components

The Windows taskbar consists of several key components that can be customized to meet the needs of different scenarios.

::: zone pivot="windows-11"

Let's review the components of the Windows taskbar by dividing it into three areas:

1. The *left area* contains Widgets, which users can personalize to quickly access feeds and information that they deem most relevant
1. The *center area* cantains:
    1. Start menu
    1. Search
    1. Task view
    1. Pinned and running apps. The configuration of pinned applications to the taskbar requires the use of an XML file that specifies their pinning order. To learn more about how to create and apply an XML file to configure pinned applications, see [Configure the taskbar pinned applications](pinned-apps.md)
1. The *right area* cantains:
    1. The system tray, which displays icons like the pen menu, touch keyboard, Virtual touchpad, and any application icons that are running in the background like OneDrive, Teams, or antivirus software
    1. Quick Actions
    1. Calendar
    1. Action Center
    1. Copilot

:::image type="content" source="images/taskbar-sections-11.png" alt-text="Sample Windows 11 taskbar." border="false" lightbox="./images/taskbar-sections-11.png":::

::: zone-end

::: zone pivot="windows-10"

1. **Taskbar items**: the icons in this area include Start, Search, Cortana, and Task view
1. **Taskbar layout**: the configuration of the taskbar layout requires the use of an XML file that specifies the order of the pinned elements. To learn more about how to create and apply an XML file to configure the taskbar layout, see [Customize the taskbar layout](layout.md).
1. **System tray**: the icons in this area include the pen menu, touch keyboard, Virtual touchpad, and any application icons that are running in the background like OneDrive, Teams, or antivirus software
1. **Notification System area**:

:::image type="content" source="images/taskbar-sections-10.png" alt-text="Sample Windows 10 taskbar." border="false" lightbox="./images/taskbar-sections-10.png":::

::: zone-end

## Next steps

In the next sections, you can learn more about the options available to configure Start menu settings using the Configuration Service Provider (CSP) and Group Policy (GPO):

- [Customize the taskbar layout](layout.md)
- [Taskbar policy settings](policy-settings.md)

<!--links-->

[WIN-1]: /windows/client-management/mdm/policy-csp-start
