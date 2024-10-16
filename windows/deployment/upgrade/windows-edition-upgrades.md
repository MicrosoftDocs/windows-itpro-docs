---
title: Windows edition upgrade
description: With Windows, you can quickly upgrade from one edition of Windows to another, provided the upgrade path is supported.
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
ms.localizationpriority: medium
author: frankroj
ms.topic: conceptual
ms.collection:
  - highpri
  - tier2
ms.subservice: itpro-deploy
ms.date: 10/04/2024
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

For a comprehensive list of all possible upgrade paths to Windows, see [Windows upgrade paths](windows-upgrade-paths.md). Downgrading the edition of Windows is discussed in the [License expiration](#license-expiration) section in this article.

The following table shows the methods and paths available to change the edition of Windows that is running on your computer.

| Edition upgrade | MDM | Provisioning<br>package | Command-<br>line tool | Manually entering<br>product key |
|-----| ----- | ----- | ----- | ----- |
| **Home > Pro** | ❌ | ❌ | ❌ | ☑️ |
| **Home > Pro for Workstations** | ❌ | ❌ | ❌ | ☑️|
| **Home > Pro Education** | ☑️ | ☑️ | ☑️ | ☑️ |
| **Home > Education** | ☑️ | ☑️ | ☑️ | ☑️ |
| **Pro > Pro for Workstations** | ✅ | ✅ | ✅ | ✅ |
| **Pro > Pro Education** | ✅ | ✅ | ✅ | ✅ |
| **Pro > Education** | ☑️ | ☑️ | ☑️ | ☑️ |
| **Pro > Enterprise** | ✅ | ✅ | ✅ | ✅ |
| **Pro for Workstations > Pro Education** | ✅ | ✅ | ✅ | ✅ |
| **Pro for Workstations > Education** | ☑️ | ☑️ | ☑️ | ☑️ |
| **Pro for Workstations > Enterprise** | ✅ | ✅ | ✅ | ✅ |
| **Pro Education > Education** | ☑️ | ☑️ | ☑️ | ☑️ |
| **Enterprise > Education** | ☑️ | ☑️ | ☑️ | ☑️ |

- ✅ = Supported, no reboot required.
- ☑️ = Supported, but reboot required.
- ❌ = Not supported.
- MDM = Modern device management.

> [!NOTE]
>
> - Each desktop edition in the table also has an N and KN SKU. These editions have had media-related functionality removed. Devices with N or KN SKUs installed can be upgraded to corresponding N or KN SKUs using the same methods.
>
> - Edition upgrades via Microsoft Store for Business are no longer available with the retirement of the Microsoft Store for Business. For more information, see [Microsoft Store for Business and Education retiring March 31, 2023](/lifecycle/announcements/microsoft-store-for-business-education-retiring).

> [!TIP]
> Edition upgrade is also possible using edition upgrade policy in Microsoft Configuration Manager. For more information, see [Upgrade Windows devices to a new edition with Configuration Manager](/mem/configmgr/compliance/deploy-use/upgrade-windows-version).

## Upgrade using modern device management (MDM)

To upgrade desktop editions of Windows using MDM, enter the product key for the upgraded edition in the **UpgradeEditionWithProductKey** policy setting of the **WindowsLicensing** CSP. For more info, see [WindowsLicensing CSP](/windows/client-management/mdm/windowslicensing-csp).

For information on upgrading editions of Windows using Microsoft Intune, including switching out of S mode, see [Upgrade Windows 10/11 editions or switch out of S mode on devices using Microsoft Intune](/mem/intune/configuration/edition-upgrade-configure-windows-10).

## Upgrade using a provisioning package

Use Windows Configuration Designer to create a provisioning package to upgrade a desktop edition of Windows. Windows Configuration Designer is available as part of the Windows Assessment and Deployment Kit (Windows ADK) or as a stand-alone Microsoft Store app. Download the Windows Configuration Designer from one of the following locations:

- [Download and install the Windows ADK](/windows-hardware/get-started/adk-install) - When installing the ADK, make sure to select **Configuration Designer**. After installation, Windows Configuration Designer can be found in the Start Menu under **Windows Kits** > **Windows Imaging and Configuration Designer**.

- [Windows Configuration Designer](https://apps.microsoft.com/store/detail/windows-configuration-designer/9NBLGGH4TX22) - Microsoft Store app. After installation, Windows Configuration Designer can be found in the Start menu as **Windows Configuration Designer**.
  > [!div class="nextstepaction"]
  > [Download Windows Configuration Designer from the Microsoft Store](ms-windows-store://pdp/?ProductId=9NBLGGH4TX22)

To create a provisioning package for upgrading desktop editions of Windows:

1. Open Windows Configuration Designer.

1. Select **Advanced provisioning**.

1. In the **New project** window that opens:

    1. Under **Enter project details**, give the project a name and then select the **Next** button.

    1. Under **Choose which settings to view and configure**, select **All Windows desktop editions** and then select the **Next** button.

    1. Under **Import a provisioning package (optional)**, select the **Finish** button.

1. Under **Available customizations**, expand **Runtime settings** > **EditionUpgrade** and then select **ChangeProductKey**.

1. In the **EditionUpgrade/ChangeProductKey** pane, next to **ChangeProductKey**, enter the product key for the upgraded edition.

1. Under the **File** menu, select **Save**.

1. Under the **Export** menu, select **Provisioning package**.

1. Step through the **Build** wizard to create the provisioning package, making sure to save the provisioning package to a known location.

For more info about Windows Configuration Designer, see the following articles:

- [Create a provisioning package](/windows/configuration/provisioning-packages/provisioning-create-package)
- [Apply a provisioning package](/windows/configuration/provisioning-packages/provisioning-apply-package)

## Upgrade using a command-line tool

The `changepk.exe` command-line tool can be used to upgrade devices to a supported edition of Windows:

```cmd
changepk.exe /ProductKey <product_key>`
```

Upgrades can also be performed using `slmgr.vbs` and a [KMS client setup key](/windows-server/get-started/kmsclientkeys).  For example:

```cmd
cscript.exe c:\windows\system32\slmgr.vbs /ipk <product_key>
```

## Upgrade by manually entering a product key

If only a few devices are being upgraded devices, a product key for the upgraded edition can be entered manually. To manually enter a product key:

1. Right click on the **Start** menu and select **Run**.

1. In the **Run** window, next to **Open**, enter

   `ms-settings:activation`
  
   and then select **OK**.

1. Select **Change product key**.

1. Enter your product key.

1. Follow the on-screen instructions.

Alternatively, select the following link to automatically open the **Settings** app to the activation page:

> [!div class="nextstepaction"]
> [Activation](ms-settings:activation)

## Upgrade by purchasing a license from the Microsoft Store

If you don't have a product key, you can upgrade your edition of Windows through the Microsoft Store. To upgrade through the Microsoft Store:

1. Right click on the **Start** menu and select **Run**.

1. In the **Run** window, next to **Open**, enter

   `ms-windows-store://windowsupgrade/`
  
   and then select **OK**.

1. Follow the on-screen instructions.

Alternatively, select the following link to automatically open the Microsoft Store to the page for upgrading the edition of Windows:

> [!div class="nextstepaction"]
> [Upgrade Windows Edition](ms-windows-store://windowsupgrade/)

## License expiration

Volume license customers whose license has expired need to change the edition of Windows to an edition with an active license. Downgrading the edition of Windows is possible using the same methods that were used to perform an edition upgrade. If the downgrade path is supported, then apps and settings can be migrated from the current edition. If a path isn't supported, then a clean install is required.

The following scenarios aren't supported:

- Downgrading Windows to a pervious version by entering a different product key, for example from Windows 11 Pro to Windows 10 Pro.

- Downgrading from a later version to an earlier version of the same edition of Windows, for example from Windows 11 Pro 22H2 to Windows 11 Pro 22H1, unless using rollback.

> [!NOTE]
>
> If you're using [Windows subscription activation](/windows/deployment/windows-10-enterprise-subscription-activation) and a license expires, devices automatically revert to the original edition when the grace period expires.

## Supported Windows downgrade paths

| Edition | Home | Pro | Pro for<br> Workstations | Pro<br>Education | Education | Enterprise<br>LTSC | Enterprise |
|-----------------| ------------------------------------ | --------------------------- | ------------------------- | -------------------------------------- | ----------------------------------- | --------------------------------------------- |--------------------------------------------- |
| **Home** | - | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ |
| **Pro** | ❌ | - | ❌ | ❌ | ❌ | ❌ | ❌ |
| **Pro for Workstations** | ❌ | ❌ | - | ❌ | ❌ | ❌ | ❌ |
| **Pro Education** | ❌ | ❌ | ❌ | - | ❌ | ❌ | ❌ |
| **Education** | ❌ | ✅ | ✅ | ✅ | - | ❌ | - |
| **Enterprise LTSC** | ❌ | ❌ | ❌ | ❌ | ❌ | - | ❌ |
| **Enterprise** | ❌ | ✅ | ✅ | ✅ | - | ❌ | - |

- ✅ = Supported downgrade path.
- ❌ = not supported or not a downgrade.
- \- = Not considered a downgrade or an upgrade.

> [!NOTE]
>
> Windows **N** and Windows **KN** SKUs follow the same rules shown in the table.

The table may not represent more complex scenarios. For example, you can perform an upgrade from Pro to Pro for Workstation on a computer with an embedded Pro key using a Pro for Workstation license key. You can then later downgrade this computer back to Pro with the firmware-embedded key. The downgrade is allowed but only because the pre-installed OS is Pro.

### Scenario example: Downgrading from Enterprise

- Original edition: **Professional OEM**
- Upgrade edition: **Enterprise**
- Valid downgrade paths: **Pro, Pro for Workstations, Pro Education, Education**

You can move directly from Enterprise to any valid destination edition. In this example, downgrading to Pro for Workstations, Pro Education, or Education requires an additional activation key to supersede the firmware-embedded Pro key. In all cases, you must comply with [Microsoft License Terms](https://www.microsoft.com/useterms). If you're a volume license customer, refer to the [Microsoft Volume Licensing Reference Guide](https://www.microsoft.com/download/details.aspx?id=11091).

## Related articles

- [Windows upgrade paths](./windows-upgrade-paths.md)
- [Volume Licensing Service Center](/licensing/)
- [Windows Subscription Activation](/windows/deployment/windows-10-enterprise-subscription-activation)
