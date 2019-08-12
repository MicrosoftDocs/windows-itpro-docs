---
title: Windows 10 edition upgrade (Windows 10)
description: With Windows 10, you can quickly upgrade from one edition of Windows 10 to another, provided the upgrade path is supported.
ms.assetid: A7642E90-A3E7-4A25-8044-C4E402DC462A
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: mobile
audience: itproauthor: greg-lindsay
ms.topic: article
---

# Windows 10 edition upgrade

**Applies to**

-   Windows 10
-   Windows 10 Mobile

With Windows 10, you can quickly upgrade from one edition of Windows 10 to another, provided the upgrade path is supported. For information on what edition of Windows 10 is right for you, see [Compare Windows 10 Editions](https://go.microsoft.com/fwlink/p/?LinkID=690882). For a comprehensive list of all possible upgrade paths to Windows 10, see [Windows 10 upgrade paths](windows-10-upgrade-paths.md). Downgrading the edition of Windows is discussed in the [License expiration](#license-expiration) section on this page.

For a list of operating systems that qualify for the Windows 10 Pro Upgrade or Windows 10 Enterprise Upgrade through Microsoft Volume Licensing, see [Windows 10 Qualifying Operating Systems](https://download.microsoft.com/download/2/d/1/2d14fe17-66c2-4d4c-af73-e122930b60f6/Windows10-QOS.pdf).

The following table shows the methods and paths available to change the edition of Windows 10 that is running on your computer. **Note**: The reboot requirement for upgrading from Pro to Enterprise was removed in version 1607.

Note: Although it isn't displayed yet in the table, edition upgrade is also possible using [edition upgrade policy](https://docs.microsoft.com/sccm/compliance/deploy-use/upgrade-windows-version) in System Center Configuration Manager.

![not supported](../images/x_blk.png) (X) = not supported</br>
![supported, reboot required](../images/check_grn.png) (green checkmark) = supported, reboot required</br>
![supported, no reboot](../images/check_blu.png) (blue checkmark) = supported, no reboot required<br>

<!-- OLD TABLE and key
X = unsupported <BR>
&#x2714; (green) = supported; reboot required<BR>
&#x2714; (blue) = supported; no reboot required

|Method |Home > Pro |Home > Education |Pro > Education |Pro > Enterprise |Ent > Education |Mobile > Mobile Enterprise |
|-------|-----------|-----------------|----------------|-----------------|----------------|--------|
| Using mobile device management (MDM) |![unsupported](../images/x_blk.png) |![supported](../images/check_grn.png) |![supported](../images/check_grn.png) |![supported](../images/check_blu.png) |![supported](../images/check_grn.png) |![supported](../images/check_blu.png) |
| Using a provisioning package |![unsupported](../images/x_blk.png) |![supported](../images/check_grn.png) |![supported](../images/check_grn.png) |![supported](../images/check_grn.png) |![supported](../images/check_grn.png) |![supported](../images/check_blu.png) |
| Using a command-line tool |![unsupported](../images/x_blk.png) |![supported](../images/check_grn.png) |![supported](../images/check_grn.png) |![supported](../images/check_blu.png) |![supported](../images/check_grn.png) |![unsupported](../images/x_blk.png) |
| Entering a product key manually |![supported](../images/check_grn.png) |![supported](../images/check_grn.png) |![supported](../images/check_grn.png) |![supported](../images/check_blu.png) |![supported](../images/check_grn.png) |![unsupported](../images/x_blk.png) |
| Purchasing a license from the Microsoft Store |![supported](../images/check_grn.png) |![unsupported](../images/x_blk.png) |![unsupported](../images/x_blk.png) |![unsupported](../images/x_blk.png) |![unsupported](../images/x_blk.png) |![unsupported](../images/x_blk.png) |
-->

| Edition upgrade | Using mobile device management (MDM) | Using a provisioning package | Using a command-line tool | Using Microsoft Store for Business or PC | Entering a product key manually | Purchasing a license from the Microsoft Store |
|-----------------| ------------------------------------ | --------------------------- | ------------------------- | -------------------------------------- | ----------------------------------- | --------------------------------------------- |
| **Home > Pro** | ![not supported](../images/x_blk.png) | ![not supported](../images/x_blk.png) | ![not supported](../images/x_blk.png) | ![not supported](../images/x_blk.png) | ![supported, reboot required](../images/check_grn.png) | ![supported, reboot required](../images/check_grn.png) |
| **Home > Pro for Workstations** | ![not supported](../images/x_blk.png) | ![not supported](../images/x_blk.png) | ![not supported](../images/x_blk.png) | ![not supported](../images/x_blk.png) | ![supported, reboot required](../images/check_grn.png) | ![supported, reboot required](../images/check_grn.png) |
| **Home > Pro Education** | ![supported, reboot required](../images/check_grn.png) | ![supported, reboot required](../images/check_grn.png) | ![supported, reboot required](../images/check_grn.png) | ![not supported](../images/x_blk.png) | ![supported, reboot required](../images/check_grn.png) | ![not supported](../images/x_blk.png) |
| **Home > Education** | ![supported, reboot required](../images/check_grn.png) | ![supported, reboot required](../images/check_grn.png) | ![supported, reboot required](../images/check_grn.png) | ![not supported](../images/x_blk.png) | ![supported, reboot required](../images/check_grn.png) | ![not supported](../images/x_blk.png) |
| **Pro > Pro for Workstations** | ![supported, no reboot](../images/check_blu.png) | ![supported, no reboot](../images/check_blu.png) | ![supported, no reboot](../images/check_blu.png) | ![supported, no reboot](../images/check_blu.png) <br>(MSfB) | ![supported, no reboot](../images/check_blu.png) | ![supported, no reboot](../images/check_blu.png) |
| **Pro > Pro Education** | ![supported, no reboot](../images/check_blu.png) | ![supported, no reboot](../images/check_blu.png) | ![supported, no reboot](../images/check_blu.png) | ![supported, no reboot](../images/check_blu.png) <br>(MSfB) | ![supported, no reboot](../images/check_blu.png) | ![not supported](../images/x_blk.png) |
| **Pro > Education** | ![supported, reboot required](../images/check_grn.png) | ![supported, reboot required](../images/check_grn.png) | ![supported, reboot required](../images/check_grn.png) | ![supported, reboot required](../images/check_grn.png) <br>(MSfB) | ![supported, reboot required](../images/check_grn.png) | ![not supported](../images/x_blk.png) |
| **Pro > Enterprise** | ![supported, no reboot](../images/check_blu.png) | ![supported, no reboot](../images/check_blu.png) | ![supported, no reboot](../images/check_blu.png) | ![supported, no reboot](../images/check_blu.png) <br>(1703 - PC)<br>(1709 - MSfB) | ![supported, no reboot](../images/check_blu.png) | ![not supported](../images/x_blk.png) |
| **Pro for Workstations > Pro Education** | ![supported, no reboot](../images/check_blu.png) | ![supported, no reboot](../images/check_blu.png) | ![supported, no reboot](../images/check_blu.png) | ![supported, no reboot](../images/check_blu.png) <br>(MSfB) | ![supported, no reboot](../images/check_blu.png) | ![not supported](../images/x_blk.png) |
| **Pro for Workstations > Education** | ![supported, reboot required](../images/check_grn.png) | ![supported, reboot required](../images/check_grn.png) | ![supported, reboot required](../images/check_grn.png) | ![supported, reboot required](../images/check_grn.png) <br>(MSfB) | ![supported, reboot required](../images/check_grn.png) | ![not supported](../images/x_blk.png) |
| **Pro for Workstations > Enterprise** | ![supported, no reboot](../images/check_blu.png) | ![supported, no reboot](../images/check_blu.png) | ![supported, no reboot](../images/check_blu.png) | ![supported, no reboot](../images/check_blu.png) <br>(1703 - PC)<br>(1709 - MSfB) | ![supported, no reboot](../images/check_blu.png) | ![not supported](../images/x_blk.png) |
| **Pro Education > Education** | ![supported, reboot required](../images/check_grn.png) | ![supported, reboot required](../images/check_grn.png) | ![supported, reboot required](../images/check_grn.png) | ![supported, reboot required](../images/check_grn.png) <br>(MSfB) | ![supported, reboot required](../images/check_grn.png) | ![not supported](../images/x_blk.png) |
| **Enterprise > Education** | ![supported, reboot required](../images/check_grn.png) | ![supported, reboot required](../images/check_grn.png) | ![supported, reboot required](../images/check_grn.png) | ![supported, reboot required](../images/check_grn.png) <br>(MSfB) | ![supported, reboot required](../images/check_grn.png) | ![not supported](../images/x_blk.png) |
| **Mobile > Mobile Enterprise** | ![supported, no reboot](../images/check_blu.png) |![supported, no reboot](../images/check_blu.png) | ![not supported](../images/x_blk.png) | ![not supported](../images/x_blk.png) | ![not supported](../images/x_blk.png) | ![not supported](../images/x_blk.png) |

> [!NOTE]
> - For information about upgrade paths in Windows 10 in S mode (for Pro or Education), check out [Windows 10 Pro/Enterprise in S mode](../windows-10-pro-in-s-mode.md)
> - Each desktop edition in the table also has an N and KN SKU. These editions have had media-related functionality removed. Devices with N or KN SKUs installed can be upgraded to corresponding N or KN SKUs using the same methods.
> <br>
> - Due to [naming changes](https://docs.microsoft.com/windows/deployment/update/waas-overview#naming-changes) the term LTSB might still be displayed in some products. This name will change to LTSC with subsequent feature updates.

## Upgrade using mobile device management (MDM)
- To upgrade desktop editions of Windows 10 using MDM, you'll need to enter the product key for the upgraded edition in the **UpgradeEditionWithProductKey** policy setting of the **WindowsLicensing** CSP. For more info, see [WindowsLicensing CSP](https://go.microsoft.com/fwlink/p/?LinkID=690907).

- To upgrade mobile editions of Windows 10 using MDM, you'll need to enter the product key for the upgraded edition in the **UpgradeEditionWithLicense** policy setting of the **WindowsLicensing** CSP. For more info, see [WindowsLicensing CSP](https://go.microsoft.com/fwlink/p/?LinkID=690907).

## Upgrade using a provisioning package
Use Windows Configuration Designer to create a provisioning package to upgrade a desktop edition or mobile edition of Windows 10. To get started, [install Windows Configuration Designer from the Microsoft Store](https://www.microsoft.com/store/apps/9nblggh4tx22).

- To create a provisioning package for upgrading desktop editions of Windows 10, go to **Runtime settings &gt; EditionUpgrade &gt; UpgradeEditionWithProductKey** in the **Available customizations** panel in Windows ICD and enter the product key for the upgraded edition.

- To create a provisioning package for upgrading mobile editions of Windows 10, go to **Runtime settings &gt; EditionUpgrade &gt; UpgradeEditionWithLicense** in the **Available customizations** panel in Windows ICD and enter the product key for the upgraded edition.

For more info about Windows Configuration Designer, see these topics:
- [Create a provisioining package for Windows 10](https://docs.microsoft.com/windows/configuration/provisioning-packages/provisioning-create-package)
- [Apply a provisioning package](https://docs.microsoft.com/windows/configuration/provisioning-packages/provisioning-apply-package)


## Upgrade using a command-line tool
You can run the changepk.exe command-line tool to upgrade devices to a supported edition of Windows 10:

`changepk.exe /ProductKey <enter your new product key here>`

You can also upgrade using slmgr.vbs and a [KMS client setup key](https://docs.microsoft.com/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/jj612867(v%3dws.11)).  For example, the following command will upgrade to Windows 10 Enterprise.

`Cscript.exe c:\windows\system32\slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43`


## Upgrade by manually entering a product key
If you are upgrading only a few devices, you may want to enter a product key for the upgraded edition manually.

**To manually enter a product key**

1.  From either the Start menu or the Start screen, type 'Activation' and click on the Activation shortcut.

2.  Click **Change product key**.

3.  Enter your product key.

4.  Follow the on-screen instructions.

## Upgrade by purchasing a license from the Microsoft Store
If you do not have a product key, you can upgrade your edition of Windows 10 through the Microsoft Store.

**To upgrade through the Microsoft Store**

1.  From either the **Start** menu or the **Start** screen, type 'Activation' and click on the Activation shortcut.

2.  Click **Go to Store**.

3.  Follow the on-screen instructions.

    **Note**<br>If you are a Windows 10 Home N or Windows 10 Home KN user and have trouble finding your applicable upgrade in the Microsoft Store, click [here](ms-windows-store://windowsupgrade/).

## License expiration

Volume license customers whose license has expired will need to change the edition of Windows 10 to an edition with an active license. Switching to a downgraded edition of Windows 10 is possible using the same methods that were used to perform an edition upgrade. If the downgrade path is supported, then your apps and settings can be migrated from the current edition. If a path is not supported, then a clean install is required.

Downgrading from any edition of Windows 10 to Windows 7, 8, or 8.1 by entering a different product key is not supported.  You also cannot downgrade from a later version to an earlier version of the same edition (Ex: Windows 10 Pro 1709 to 1703) unless the rollback process is used. This topic does not discuss version downgrades.

Note: If you are using [Windows 10 Enterprise Subscription Activation](https://docs.microsoft.com/windows/deployment/windows-10-enterprise-subscription-activation) and a license expires, devices will automatically revert to the original edition when the grace period expires.

### Scenario example

Downgrading from Enterprise
- Original edition: **Professional OEM**
- Upgrade edition: **Enterprise**
- Valid downgrade paths: **Pro, Pro for Workstations, Pro Education, Education**

You can move directly from Enterprise to any valid destination edition. In this example, downgrading to Pro for Workstations, Pro Education, or Education requires an additional activation key to supersede the firmware-embedded Pro key. In all cases, you must comply with [Microsoft License Terms](https://www.microsoft.com/useterms). If you are a volume license customer, refer to the [Microsoft Volume Licensing Reference Guide](https://www.microsoft.com/en-us/download/details.aspx?id=11091).

### Supported Windows 10 downgrade paths

✔ = Supported downgrade path<br>
&nbsp;S&nbsp; = Supported; Not considered a downgrade or an upgrade<br>
[blank] = Not supported or not a downgrade<br>

<br>
<table border="0" cellpadding="1">
    <tr>
        <td colspan="10" align="center">Destination edition</td>
    </tr>
    <tr>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td></td>
        <td>Home</td>
        <td>Pro</td>
        <td>Pro for Workstations</td>
        <td>Pro Education</td>
        <td>Education</td>
        <td>Enterprise LTSC</td>
        <td>Enterprise</td>
    </tr>
    <tr>
        <td rowspan="9" nowrap="nowrap" valign="middle">Starting edition</td>
    </tr>
    <tr>
        <td>Home</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Pro</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Pro for Workstations</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Pro Education</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Education</td>
        <td></td>
        <td align="center">✔</td>
        <td align="center">✔</td>
        <td align="center">✔</td>
        <td></td>
        <td></td>
        <td>S</td>
    </tr>
    <tr>
        <td>Enterprise LTSC</td>
        <td></td>
        <td align="center"></td>
        <td align="center"></td>
        <td align="center"></td>
        <td align="center"></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Enterprise</td>
        <td></td>
        <td align="center">✔</td>
        <td align="center">✔</td>
        <td align="center">✔</td>
        <td align="center">S</td>
        <td></td>
        <td></td>
    </tr>
</table>

> **Windows 10 LTSC/LTSB**: Due to [naming changes](https://docs.microsoft.com/windows/deployment/update/waas-overview#naming-changes), product versions that display Windows 10 LTSB will be replaced with Windows 10 LTSC in subsequent feature updates. The term LTSC is used here to refer to all long term servicing versions.
> 
> **Windows N/KN**: Windows "N" and "KN" SKUs follow the same rules shown above.

Some slightly more complex scenarios are not represented by the table above. For example, you can perform an upgrade from Pro to Pro for Workstation on a computer with an embedded Pro key using a Pro for Workstation license key, and then later downgrade this computer back to Pro with the firmware-embedded key. The downgrade is allowed but only because the pre-installed OS is Pro.

## Related topics

[Windows 10 upgrade paths](https://docs.microsoft.com/windows/deployment/upgrade/windows-10-upgrade-paths)<br>
[Windows 10 volume license media](https://docs.microsoft.com/windows/deployment/windows-10-media)<br>
[Windows 10 Subscription Activation](https://docs.microsoft.com/windows/deployment/windows-10-enterprise-subscription-activation)
