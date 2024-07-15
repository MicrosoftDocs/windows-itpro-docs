---
title: Configure the Windows taskbar
description: Learn how to configure the Windows taskbar to provide quick access to the tools and applications that users need most.
ms.topic: how-to
ms.date: 04/17/2024
ms.collection:
- essentials-manage
appliesto:
zone_pivot_groups: windows-versions-11-10
---

# Configure the Windows taskbar

The Windows taskbar is an essential component of the Windows operating system. The taskbar acts as a versatile platform for multitasking and quick access to applications and system notifications. For organizations, the ability to customize the taskbar's layout and features through policy settings is invaluable, especially in scenarios where specific roles or functions require streamlined access to certain tools and programs.

::: zone pivot="windows-11"

:::image type="content" source="images/taskbar-11.png" alt-text="Screenshot of the Windows 11 taskbar." border="false" lightbox="./images/taskbar-11.png":::

::: zone-end

::: zone pivot="windows-10"

:::image type="content" source="images/taskbar-10.png" alt-text="Screenshot of the Windows 10 taskbar." border="false" lightbox="./images/taskbar-10.png":::

::: zone-end

For example, students can benefit from a customized taskbar that can provide access to educational tools and resources, minimizing distractions and optimizing the learning environment.

Frontline workers, who often operate in fast-paced and dynamic settings, can benefit from a taskbar that is configured to provide immediate access to the most critical applications and functions they need. The taskbar customization can streamline workflows and enhance productivity by reducing the time spent navigating through unnecessary applications or menus.

Kiosks, which are designed for public use, can also take advantage of taskbar customization to offer a simplified and focused interface. This can help users quickly find the information or services they're looking for, which is useful in environments like retail, information centers, or public service areas.

Overall, the ability to customize the Windows taskbar using policy settings enables organizations to create a more controlled, efficient, and user-friendly computing environment tailored to the specific needs of different user groups.

## Taskbar structure

The Windows taskbar consists of several key components that can be customized to meet the needs of different scenarios.

::: zone pivot="windows-11"

Let's review the components of the Windows taskbar by dividing it into three areas:

1. The *left area* contains Widgets, which provide personalized news, weather, and other information
1. The *center area* contains:
    1. Start menu
    1. Search
    1. Task view
    1. Pinned and running apps
1. The *right area* contains:
    1. The system tray, which displays icons like the pen menu, touch keyboard, virtual touchpad, and any application icons that are running in the background like OneDrive, Teams, or antivirus software
    1. Quick actions
    1. Calendar
    1. Notifications

:::image type="content" source="images/taskbar-sections-11.png" alt-text="Screenshot of the Windows 11 taskbar with the three areas highlighted." border="false" lightbox="./images/taskbar-sections-11.png":::

::: zone-end

::: zone pivot="windows-10"

Let's review the components of the Windows taskbar by dividing it into two areas:

1. The *left area* contains:
    - Start menu
    - Search
    - Cortana
    - Task view
    - Pinned and running apps

1. The *right area* contains:
    - People
    - News and interests
    - The system tray, which displays icons like the pen menu, touch keyboard, virtual touchpad, power, network, volume, and any application icons that are running in the background like OneDrive, Teams, or antivirus software
    - Calendar
    - Notifications and actions

:::image type="content" source="images/taskbar-sections-10.png" alt-text="Screenshot of the Windows 11 taskbar with the two areas highlighted." border="false" lightbox="./images/taskbar-sections-10.png":::

::: zone-end

## Configuration options

There are several options to configure the Windows taskbar.

If you need to configure a device for a single user, you can pin/unpin applications to the taskbar and rearrange them. The taskbar can be further customized from Settings. Go to **Settings** > **Personalization** > **[Taskbar](ms-settings:taskbar)**.

For advanced customizations and when you need to configure multiple devices, you can use one of the following options:

- Configuration Service Provider (CSP): commonly used for devices managed by a Mobile Device Management (MDM) solution, like Microsoft Intune. CSPs can also be configured with [provisioning packages](../provisioning-packages/how-it-pros-can-use-configuration-service-providers.md#csps-in-windows-configuration-designer), which are used at deployment time or for unmanaged devices. To configure the taskbar, use the [Start Policy CSP][WIN-1]
- Group policy (GPO): used for devices that are Active Directory joined or Microsoft Entra hybrid joined, and not managed by a device management solution. Group policy can also be used for devices that aren't joined to an Active Directory domain, using the local group policy editor

> [!NOTE]
> While many of the taskbar policy settings can be configured using both CSP and GPO, there are some settings that are exclusive to one or the other. To learn about the available policy settings to configure the Start menu via CSP and GPO, see [Taskbar policy settings](policy-settings.md).

## Next steps

In the next sections, you can learn more about the options available to configure Start menu settings using the Configuration Service Provider (CSP) and Group Policy (GPO):

- [Taskbar policy settings](policy-settings.md)
- [Configure the taskbar pinned applications](pinned-apps.md)

<!--links-->

[WIN-1]: /windows/client-management/mdm/policy-csp-start
