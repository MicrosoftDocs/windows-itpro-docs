---
title: Windows edition upgrade
description: Windows can quickly upgrade from one edition of Windows to another, provided the upgrade path is supported.
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
ms.localizationpriority: medium
author: frankroj
ms.topic: conceptual
ms.collection:
  - highpri
  - tier2
ms.technology: itpro-deploy
ms.date: 09/15/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
---

# Windows edition upgrade

With Windows 10, you can quickly upgrade from one edition of Windows 10 to another, provided the upgrade path is supported. For information on what edition of Windows 10 is right for you, see [Compare Windows 10 Editions](https://go.microsoft.com/fwlink/p/?LinkID=690882). For a comprehensive list of all possible upgrade paths to Windows 10, see [Windows 10 upgrade paths](windows-10-upgrade-paths.md). Downgrading the edition of Windows is discussed in the [License expiration](#license-expiration) section on this page.

The following table shows the methods and paths available to change the edition of Windows 10 that is running on your computer.

> [!NOTE]
>
> The reboot requirement for upgrading from Pro to Enterprise was removed in version 1607.

> [!TIP]
>
> Although it isn't displayed yet in the table, edition upgrade is also possible using [edition upgrade policy](/configmgr/compliance/deploy-use/upgrade-windows-version) in Microsoft Configuration Manager.

- Yes w/ reboot = supported, but reboot required.
- Yes = supported, no reboot required.
- No = not supported.

| Edition upgrade | Using mobile device management (MDM) | Using a provisioning package | Using a command-line tool | Using Microsoft Store for Business or PC | Entering a product key manually | Purchasing a license from the Microsoft Store |
|-----------------| ------------------------------------ | --------------------------- | ------------------------- | -------------------------------------- | ----------------------------------- | --------------------------------------------- |
| **Home > Pro** | No | No | No | No | Yes w/ reboot | Yes w/ reboot |
| **Home > Pro for Workstations** | No | No | No | No | Yes w/ reboot | Yes w/ reboot |
| **Home > Pro Education** | Yes w/ reboot | Yes w/ reboot | Yes w/ reboot | No | Yes w/ reboot | No |
| **Home > Education** | Yes w/ reboot | Yes w/ reboot | Yes w/ reboot | No | Yes w/ reboot | No |
| **Pro > Pro for Workstations** | Yes | Yes | Yes | Yes <br>(Microsoft Store for Business) | Yes | Yes |
| **Pro > Pro Education** | Yes | Yes | Yes | Yes <br>(Microsoft Store for Business) | Yes | No |
| **Pro > Education** | Yes w/ reboot | Yes w/ reboot | Yes w/ reboot | Yes w/ reboot <br>(Microsoft Store for Business) | Yes w/ reboot | No |
| **Pro > Enterprise** | Yes | Yes | Yes | Yes | Yes | No |
| **Pro for Workstations > Pro Education** | Yes | Yes | Yes | Yes <br>(Microsoft Store for Business) | Yes | No |
| **Pro for Workstations > Education** | Yes w/ reboot | Yes w/ reboot | Yes w/ reboot | Yes w/ reboot <br>(Microsoft Store for Business) | Yes w/ reboot | No |
| **Pro for Workstations > Enterprise** | Yes | Yes | Yes | Yes | Yes | No |
| **Pro Education > Education** | Yes w/ reboot | Yes w/ reboot | Yes w/ reboot | Yes w/ reboot <br>(Microsoft Store for Business) | Yes w/ reboot | No |
| **Enterprise > Education** | Yes w/ reboot | Yes w/ reboot | Yes w/ reboot | Yes w/ reboot <br>(Microsoft Store for Business) | Yes w/ reboot | No |

> [!NOTE]
>
> - For information about upgrade paths in Windows 10 in S mode (for Pro or Education), check out [Windows 10 Pro/Enterprise in S mode](../windows-10-pro-in-s-mode.md)
> - Each desktop edition in the table also has an N and KN SKU. These editions have had media-related functionality removed. Devices with N or KN SKUs installed can be upgraded to corresponding N or KN SKUs using the same methods.

## Upgrade using mobile device management (MDM)

- To upgrade desktop editions of Windows 10 using MDM, enter the product key for the upgraded edition in the **UpgradeEditionWithProductKey** policy setting of the **WindowsLicensing** CSP. For more info, see [WindowsLicensing CSP](/windows/client-management/mdm/windowslicensing-csp).

## Upgrade using a provisioning package

Use Windows Configuration Designer to create a provisioning package to upgrade a desktop edition. To get started, [install Windows Configuration Designer from the Microsoft Store](https://www.microsoft.com/store/apps/9nblggh4tx22).

- To create a provisioning package for upgrading desktop editions of Windows 10, go to **Runtime settings &gt; EditionUpgrade &gt; UpgradeEditionWithProductKey** in the **Available customizations** panel in Windows ICD and enter the product key for the upgraded edition.

For more info about Windows Configuration Designer, see the following articles:

- [Create a provisioning package for Windows 10](/windows/configuration/provisioning-packages/provisioning-create-package)
- [Apply a provisioning package](/windows/configuration/provisioning-packages/provisioning-apply-package)

## Upgrade using a command-line tool

You can run the `changepk.exe` command-line tool to upgrade devices to a supported edition of Windows 10:

`changepk.exe /ProductKey <enter your new product key here>`

You can also upgrade using `slmgr.vbs` and a [KMS client setup key](/windows-server/get-started/kmsclientkeys).  For example, the following command upgrades to Windows 10 Enterprise.

`Cscript.exe c:\windows\system32\slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43`

## Upgrade by manually entering a product key

If you're upgrading only a few devices, you may want to enter a product key for the upgraded edition manually. To manually enter a product key:

1. From either the Start menu or the Start screen, type 'Activation' and select on the Activation shortcut.

1. Select **Change product key**.

1. Enter your product key.

1. Follow the on-screen instructions.

## Upgrade by purchasing a license from the Microsoft Store

If you don't have a product key, you can upgrade your edition of Windows 10 through the Microsoft Store. To upgrade through the Microsoft Store:

1. From either the **Start** menu or the **Start** screen, type 'Activation' and select on the Activation shortcut.

1. Select **Go to Store**.

1. Follow the on-screen instructions.

    > [!NOTE]
    >
    > If you are a Windows 10 Home N or Windows 10 Home KN user and have trouble finding your applicable upgrade in the Microsoft Store, click [here](ms-windows-store://windowsupgrade/).

## License expiration

Volume license customers whose license has expired need to change the edition of Windows 10 to an edition with an active license. Switching to a downgraded edition of Windows 10 is possible using the same methods that were used to perform an edition upgrade. If the downgrade path is supported, then your apps and settings can be migrated from the current edition. If a path isn't supported, then a clean install is required.

Downgrading Windows 10 to Windows 7, 8, or 8.1 by entering a different product key isn't supported.  You also can't downgrade from a later version to an earlier version of the same edition (Ex: Windows 10 Pro 1709 to 1703) unless the rollback process is used. This article doesn't discuss version downgrades.

> [!NOTE]
>
> If you are using [Windows 10 Enterprise Subscription Activation](/windows/deployment/windows-10-enterprise-subscription-activation) and a license expires, devices will automatically revert to the original edition when the grace period expires.

### Scenario example

Downgrading from Enterprise

- Original edition: **Professional OEM**
- Upgrade edition: **Enterprise**
- Valid downgrade paths: **Pro, Pro for Workstations, Pro Education, Education**

You can move directly from Enterprise to any valid destination edition. In this example, downgrading to Pro for Workstations, Pro Education, or Education requires an additional activation key to supersede the firmware-embedded Pro key. In all cases, you must comply with [Microsoft License Terms](https://www.microsoft.com/useterms). If you're a volume license customer, refer to the [Microsoft Volume Licensing Reference Guide](https://www.microsoft.com/download/details.aspx?id=11091).

### Supported Windows 10 downgrade paths

- Yes = Supported downgrade path.
- No = not supported or not a downgrade.
- \- = Not considered a downgrade or an upgrade.

| **Edition** | **Home** | **Pro** | **Pro for Workstations** | **Pro Education** | **Education** | **Enterprise LTSC** | **Enterprise** |
|-----------------| ------------------------------------ | --------------------------- | ------------------------- | -------------------------------------- | ----------------------------------- | --------------------------------------------- |--------------------------------------------- |
| **Home** | - | No | No | No | No | No | No |
| **Pro** | No | - | No | No | No | No | No |
| **Pro for Workstations** | No | No | - | No | No | No | No |
| **Pro Education** | No | No | No | - | No | No | No |
| **Education** | No | Yes | Yes | Yes | - | No | - |
| **Enterprise LTSC** | No | No | No | No | No | - | No |
| **Enterprise** | No | Yes | Yes | Yes | - | No | - |

> **Windows N/KN**: Windows "N" and "KN" SKUs follow the same rules shown in table.

The table may not represent more complex scenarios. For example, you can perform an upgrade from Pro to Pro for Workstation on a computer with an embedded Pro key using a Pro for Workstation license key. You can then later downgrade this computer back to Pro with the firmware-embedded key. The downgrade is allowed but only because the pre-installed OS is Pro.

## Related articles

[Windows 10 upgrade paths](./windows-10-upgrade-paths.md)<br>
[Windows 10 volume license media](../windows-10-media.md)<br>
[Windows 10 Subscription Activation](/windows/deployment/windows-10-enterprise-subscription-activation)
