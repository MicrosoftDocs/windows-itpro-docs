---
title: Configure the Start menu
description: Learn how to configure the Windows Start menu to provide quick access to the tools and applications that users need most.
ms.topic: overview
ms.date: 04/10/2024
zone_pivot_groups: windows-versions-11-10
ms.collection:
- essentials-manage
appliesto:
---

# Configure the Start menu

The Windows Start menu is a pivotal element in the Windows operating system, serving as a central hub for launching applications and managing tasks. For organizations, the ability to configure the Start menu's behavior through policy settings can be highly beneficial, particularly in environments where certain roles or functions necessitate tailored access to applications and tools.

For instance, in kiosk settings, organizations can configure the Start menu to limit access to a single application or a specific set of applications, ensuring that the kiosk serves its intended purpose without allowing for unnecessary or potentially disruptive interactions. This is useful in public spaces or in scenarios where devices are intended for a single function, such as information stands or check-in counters.

Frontline workers, who often operate in fast-paced and dynamic environments, can benefit from a Start menu that is configured to provide quick access to the tools and applications they need most. This streamlined approach can enhance productivity and reduce the time spent navigating through unnecessary options.

In educational settings, students can benefit from a Start menu that is customized to provide access to educational tools and resources while restricting distractions. By configuring policy settings, educational institutions can create a focused and conducive learning environment.

## Start structure

The Start menu structure consists five main areas, which you can configure to meet your organization's needs. These areas are as follows:

:::row:::
:::column span="2":::
::: zone pivot="windows-10"
1. **Start layout**: contains the arrangement of tiles that link to applications, folders, websites, or files
1. **All apps**: contains an alphabetical list of all installed applications. The list can include dynamic sections, such as *Most used* and *Recently added*
1. **Account**: contains links to change user account settings, sign out, lock the device, or switch user
1. **Pinned folders**: contains a customizable list of folders for quick access
1. **Power**: contains links to power options, such as shutdown, restart, and sleep
::: zone-end
::: zone pivot="windows-11"
1. **Start layout**: the *Pinned* section contains the arrangement of pins that link to applications, folders, websites, or files. The *Recommended* section is designed to enhance user productivity by providing quick access to frequently used apps, documents, or websites
1. **All apps**: contains an alphabetical list of all installed applications. The list can include dynamic sections, such as *Most used* and *Recently added*
1. **Account**: contains links to change user account settings, sign out, lock the device, or switch user
1. **Pinned folders**: contains a customizable list of folders for quick access
1. **Power**: contains links to power options, such as shutdown, restart, and sleep
::: zone-end
:::column-end:::
:::column span="2":::
::: zone pivot="windows-10"
    :::image type="content" source="./images/windows-10-settings.png" alt-text="Sample start menu layout with its components highlighted." border="false" lightbox="./images/windows-10-settings.png":::
::: zone-end
::: zone pivot="windows-11"
    :::image type="content" source="./images/windows-11-settings.png" alt-text="Sample start menu layout with its components highlighted." border="false" lightbox="./images/windows-11-settings.png":::
::: zone-end
    :::column-end:::
:::row-end:::

## Configuration options

There are several options to configure the Windows Start menu.

If you need to configure a device for a single user, you can pin/unpin applications to Start and rearrange them. Start can be further customized from Settings. Go to **Settings** > **Personalization** > **[Start](ms-settings:personalization-start)**.

For advanced customizations and when you need to configure multiple devices, you can use one of the following options:

- Configuration Service Provider (CSP): commonly used for devices managed by a Mobile Device Management (MDM) solution, like Microsoft Intune. CSPs can also be configured with [provisioning packages](../provisioning-packages/how-it-pros-can-use-configuration-service-providers.md#csps-in-windows-configuration-designer), which are used at deployment time or for unmanaged devices. To configure Start, use the [Start Policy CSP][WIN-1]
- Group policy (GPO): used for devices that are Active Directory joined or Microsoft Entra hybrid joined, and not managed by a device management solution. Group policy can also be used for devices that aren't joined to an Active Directory domain, using the local group policy editor

> [!NOTE]
> While many of the Start menu policy settings can be configured using both CSP and GPO, there are some settings that are only available using the Start Policy CSP. To learn about the available policy settings to configure the Start menu via CSP and GPO, see [Start menu policy settings](policy-settings.md).

::: zone pivot="windows-10"
The configuration of the Start layout requires the use of an XML file that specifies the layout. To learn more about how to create and apply an XML file to configure the Start layout, see [Customize the Start layout](layout.md).
::: zone-end

::: zone pivot="windows-11"
The configuration of the Start layout requires the use of a JSON file that specifies the layout. To learn more about how to create and apply a JSON file to configure the Start layout, see [Customize the Start layout](layout.md).

> [!IMPORTANT]
> The JSON file can be applied to devices using the [Start policy CSP][WIN-1] only. It's not possible to apply the JSON file using group policy.
::: zone-end

## Next steps

In the next sections, you can learn more about the options available to configure Start menu settings using the Configuration Service Provider (CSP) and Group Policy (GPO):

- [Customize the Start layout](layout.md)
- [Start menu policy settings](policy-settings.md)

<!--links-->

[WIN-1]: /windows/client-management/mdm/policy-csp-start