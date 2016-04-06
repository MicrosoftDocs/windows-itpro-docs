---
title: Windows 10 edition upgrade (Windows 10)
description: With Windows 10, you can quickly upgrade from one edition of Windows 10 to another, provided the upgrade path is supported.
ms.assetid: A7642E90-A3E7-4A25-8044-C4E402DC462A
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: CFaw
---

# Windows 10 edition upgrade
**Applies to**

-   Windows 10
-   Windows 10 Mobile

With Windows 10, you can quickly upgrade from one edition of Windows 10 to another, provided the upgrade path is supported. For information on what edition of Windows 10 is right for you, see [Compare Windows 10 Editions](http://go.microsoft.com/fwlink/p/?LinkID=690882).

The following table shows the methods you can use to upgrade editions of Windows 10.

|Method |Home > Pro |Home > Education |Pro > Education |Pro > Enterprise |Ent > Education |Mobile > Mobile Enterprise |
|-------|-----------|-----------------|----------------|-----------------|----------------|--------|
| Using mobile device management (MDM) |![unsupported](images/crossmark.png) |![supported](images/checkmark.png) |![supported](images/checkmark.png) |![supported](images/checkmark.png) |![supported](images/checkmark.png) |![supported](images/checkmark.png) |
| Using a provisioning package |![unsupported](images/crossmark.png) |![supported](images/checkmark.png) |![supported](images/checkmark.png) |![supported](images/checkmark.png) |![supported](images/checkmark.png) |![supported](images/checkmark.png) |
| Using a command-line tool |![unsupported](images/crossmark.png) |![supported](images/checkmark.png) |![supported](images/checkmark.png) |![supported](images/checkmark.png) |![supported](images/checkmark.png) |![unsupported](images/crossmark.png) |
| Entering a product key manually |![supported](images/checkmark.png) |![supported](images/checkmark.png) |![supported](images/checkmark.png) |![supported](images/checkmark.png) |![supported](images/checkmark.png) |![unsupported](images/crossmark.png) |
| Purchasing a license from the Windows Store |![supported](images/checkmark.png) |![unsupported](images/crossmark.png) |![unsupported](images/crossmark.png) |![unsupported](images/crossmark.png) |![unsupported](images/crossmark.png) |![unsupported](images/crossmark.png) |

**Note**<br>Each desktop edition in the table also has an N and KN edition. These editions have had media-related functionality removed. Devices with N or KN editions installed can be upgraded to corresponding N or KN editions using the same methods.

## Upgrade using mobile device management (MDM)
- To upgrade desktop editions of Windows 10 using MDM, you'll need to enter the product key for the upgraded edition in the **UpgradeEditionWithProductKey** policy setting of the **WindowsLicensing** CSP. For more info, see [WindowsLicensing CSP](http://go.microsoft.com/fwlink/p/?LinkID=690907).

- To upgrade mobile editions of Windows 10 using MDM, you'll need to enter the product key for the upgraded edition in the **UpgradeEditionWithLicense** policy setting of the **WindowsLicensing** CSP. For more info, see [WindowsLicensing CSP](http://go.microsoft.com/fwlink/p/?LinkID=690907).

## Upgrade using a provisioning package
The Windows Imaging and Configuration Designer (ICD) tool is included in the Windows Assessment and Deployment Kit (ADK) for Windows 10. [Install the ADK.](http://go.microsoft.com/fwlink/p/?LinkId=526740)

- To use Windows ICD to create a provisioning package for upgrading desktop editions of Windows 10, go to **Runtime settings &gt; EditionUpgrade &gt; UpgradeEditionWithProductKey** in the **Available customizations** panel in Windows ICD and enter the product key for the upgraded edition.

- To use Windows ICD to create a provisioning package for upgrading mobile editions of Windows 10, go to **Runtime settings &gt; EditionUpgrade &gt; UpgradeEditionWithLicense** in the **Available customizations** panel in Windows ICD and enter the product key for the upgraded edition.

For more info on creating and applying a provisioning package using Windows ICD, see [Build and apply a provisioning package](http://go.microsoft.com/fwlink/p/?LinkID=533700).

## Upgrade using a command-line tool
You can run the changepk.exe command-line tool to upgrade devices to a supported edition of Windows 10:

`changepk.exe /ProductKey <enter your new product key here>`

## Upgrade by manually entering a product key
If you are upgrading only a few devices, you may want to enter a product key for the upgraded edition manually.

**To manually enter a product key**

1.  From either the Start menu or the Start screen, type 'Activation' and click on the Activation shortcut.

2.  Click **Change product key**.

3.  Enter your product key.

4.  Follow the on-screen instructions.

## Upgrade by purchasing a license from the Windows Store
If you do not have a product key, you can upgrade your edition of Windows 10 through the Windows Store.

**To upgrade through the Windows Store**

1.  From either the **Start** menu or the **Start** screen, type 'Activation' and click on the Activation shortcut.

2.  Click **Go to Store**.

3.  Follow the on-screen instructions.
    
    **Note**<br>If you are a Windows 10 Home N or Windows 10 Home KN user and have trouble finding your applicable upgrade in the Windows Store, click [here](ms-windows-store://windowsupgrade/).

 

 

 





