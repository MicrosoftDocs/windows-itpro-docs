---
title: Windows edition upgrade
description: With Windows, you can quickly upgrade from one edition of Windows to another, provided the upgrade path is supported.
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

With Windows, you can quickly upgrade from one edition of Windows to another, provided the upgrade path is supported. For information on what edition of Windows is right for you, see the following articles:

- [Compare Windows 11 Editions](https://www.microsoft.com/windows/business/compare-windows-11).
- [Explore Windows 11 Pro features](https://www.microsoft.com/windows/business/windows-11-pro).
- [Windows 10 Pro vs Windows 11 Pro](https://www.microsoft.com/windows/business/windows-10-pro-vs-windows-11-pro).
- [Compare Windows 10 Editions](https://go.microsoft.com/fwlink/p/?LinkID=690882).
- [Windows For Business](https://www.microsoft.com/windows/business).

For a comprehensive list of all possible upgrade paths to Windows, see [Windows upgrade paths](windows-upgrade-paths.md). Downgrading the edition of Windows is discussed in the [License expiration](#license-expiration) section on this page.

The following table shows the methods and paths available to change the edition of Windows that is running on your computer.

> [!TIP]
>
> Although it isn't displayed yet in the table, edition upgrade is also possible using edition upgrade policy in Microsoft Configuration Manager. For more information, see [Upgrade Windows devices to a new edition with Configuration Manager](/mem/configmgr/compliance/deploy-use/upgrade-windows-version).

| Edition upgrade | MDM | Provisioning package | Command-line tool | Manually entering product key |
|-----------------| ------------------------------------ | --------------------------- | ------------------------- | ----------------------------------- |
| **Home > Pro** | ❌ | ❌ | ❌ | Yes w/ reboot |
| **Home > Pro for Workstations** | ❌ | ❌ | ❌ | Yes w/ reboot |
| **Home > Pro Education** | Yes w/ reboot | Yes w/ reboot | Yes w/ reboot | Yes w/ reboot |
| **Home > Education** | Yes w/ reboot | Yes w/ reboot | Yes w/ reboot | Yes w/ reboot |
| **Pro > Pro for Workstations** | Yes | Yes | Yes | Yes |
| **Pro > Pro Education** | Yes | Yes | Yes | Yes |
| **Pro > Education** | Yes w/ reboot | Yes w/ reboot | Yes w/ reboot | Yes w/ reboot |
| **Pro > Enterprise** | Yes | Yes | Yes | Yes |
| **Pro for Workstations > Pro Education** | Yes | Yes | Yes | Yes |
| **Pro for Workstations > Education** | Yes w/ reboot | Yes w/ reboot | Yes w/ reboot | Yes w/ reboot |
| **Pro for Workstations > Enterprise** | Yes | Yes | Yes | Yes |
| **Pro Education > Education** | Yes w/ reboot | Yes w/ reboot | Yes w/ reboot | Yes w/ reboot |
| **Enterprise > Education** | Yes w/ reboot | Yes w/ reboot | Yes w/ reboot | Yes w/ reboot |

- Yes w/ reboot = supported, but reboot required.
- Yes = supported, no reboot required.
- ❌ = not supported.
- MDM = Modern device management.
- Each desktop edition in the table also has an N and KN SKU. These editions have had media-related functionality removed. Devices with N or KN SKUs installed can be upgraded to corresponding N or KN SKUs using the same methods.

> [!NOTE]
>
> Edition upgrades via Microsoft Store for Business is no longer available with the [retirement of Microsoft Store for Business](/announcements/microsoft-store-for-business-education-retiring).

> [!TIP]
>
> For information on upgrading editions of Windows using Microsoft Intune, including switching out of S mode, please see [Upgrade Windows 10/11 editions or switch out of S mode on devices using Microsoft Intune](/mem/intune/configuration/edition-upgrade-configure-windows-10).

## Upgrade using modern device management (MDM)

- To upgrade desktop editions of Windows using MDM, enter the product key for the upgraded edition in the **UpgradeEditionWithProductKey** policy setting of the **WindowsLicensing** CSP. For more info, see [WindowsLicensing CSP](/windows/client-management/mdm/windowslicensing-csp).

## Upgrade using a provisioning package

Use Windows Configuration Designer to create a provisioning package to upgrade a desktop edition of Windows. Windows Configuration Designer is available as part of the Windows Assessment and Deployment Kit (Windows ADK) or as a stand-alone Microsoft Store app. Download the Windows Configuration Designer from one of the following locations:

- [Download and install the Windows ADK](/windows-hardware/get-started/adk-install) - When installing the ADK, make sure to select **Configuration Designer**. After installation, Windows Configuration Designer can be found in the Start Menu under **Windows Kits** > **Windows Imaging and Configuration Designer**.
- [Windows Configuration Designer](https://apps.microsoft.com/store/detail/windows-configuration-designer/9NBLGGH4TX22) - Microsoft Store app. After installation, Windows Configuration Designer can be found in the Start menu as **Windows Configuration Designer**.
  > [!div class="nextstepaction"]
  > [Download Windows Configuration Designer from the Microsoft Store](ms-windows-store://pdp/?ProductId=9NBLGGH4TX22)

- To create a provisioning package for upgrading desktop editions of Windows 10, go to **Runtime settings &gt; EditionUpgrade &gt; UpgradeEditionWithProductKey** in the **Available customizations** panel in Windows ICD and enter the product key for the upgraded edition.

For more info about Windows Configuration Designer, see the following articles:

- [Create a provisioning package](/windows/configuration/provisioning-packages/provisioning-create-package)
- [Apply a provisioning package](/windows/configuration/provisioning-packages/provisioning-apply-package)

## Upgrade using a command-line tool

You can run the `changepk.exe` command-line tool to upgrade devices to a supported edition of Windows:

```cmd
changepk.exe /ProductKey <product_key>`
```

You can also upgrade using `slmgr.vbs` and a [KMS client setup key](/windows-server/get-started/kmsclientkeys).  For example:

```cmd
cscript.exe c:\windows\system32\slmgr.vbs /ipk <product_key>
```

## Upgrade by manually entering a product key

If you're upgrading only a few devices, you may want to enter a product key for the upgraded edition manually. To manually enter a product key:

1. From either the Start menu or the Start screen, type 'Activation' and select on the Activation shortcut.

1. Select **Change product key**.

1. Enter your product key.

1. Follow the on-screen instructions.

## Upgrade by purchasing a license from the Microsoft Store

If you don't have a product key, you can upgrade your edition of Windows through the Microsoft Store. To upgrade through the Microsoft Store:

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
| **Home** | - | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ |
| **Pro** | ❌ | - | ❌ | ❌ | ❌ | ❌ | ❌ |
| **Pro for Workstations** | ❌ | ❌ | - | ❌ | ❌ | ❌ | ❌ |
| **Pro Education** | ❌ | ❌ | ❌ | - | ❌ | ❌ | ❌ |
| **Education** | ❌ | Yes | Yes | Yes | - | ❌ | - |
| **Enterprise LTSC** | ❌ | ❌ | ❌ | ❌ | ❌ | - | ❌ |
| **Enterprise** | ❌ | Yes | Yes | Yes | - | ❌ | - |

**Windows N/KN**: Windows **N** and **KN** SKUs follow the same rules shown in the table.

The table may not represent more complex scenarios. For example, you can perform an upgrade from Pro to Pro for Workstation on a computer with an embedded Pro key using a Pro for Workstation license key. You can then later downgrade this computer back to Pro with the firmware-embedded key. The downgrade is allowed but only because the pre-installed OS is Pro.

## Related articles

- [Windows 10 upgrade paths](./windows-10-upgrade-paths.md)
- [Windows 10 volume license media](../windows-10-media.md)
- cd win[Windows 10 Subscription Activation](/windows/deployment/windows-10-enterprise-subscription-activation)
