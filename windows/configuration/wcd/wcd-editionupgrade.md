---
title: EditionUpgrade (Windows 10)
description: This section describes the EditionUpgrade settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: windows-client
author: aczechowski
ms.localizationpriority: medium
ms.author: aaroncz
ms.topic: article
ms.date: 04/30/2018
ms.reviewer: 
manager: dougeby
ms.technology: itpro-configure
---

# EditionUpgrade (Windows Configuration Designer reference)

Use to upgrade the edition of Windows 10 on the device. [Learn about Windows 10 edition upgrades.](/windows/deployment/upgrade/windows-10-edition-upgrades)

## Applies to

| Setting  | Windows client | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: |
| [ChangeProductKey](#changeproductkey) | ✔️  |  |  |  |
| [UpgradeEditionWithLicense](#upgradeeditionwithlicense) | ✔️  |  | ✔️ |  |
| [UpgradeEditionWithProductKey](#upgradeeditionwithproductkey) | ✔️  |  |  |  |


## ChangeProductKey

Enter a product key, which will be used to update the existing product key on the device. 

## UpgradeEditionWithLicense

Browse to and select a license XML file for the edition upgrade. 


## UpgradeEditionWithProductKey

Enter a product key for an edition upgrade of Windows 10 devices.

If a product key is entered in a provisioning package and the user begins installation of the package, a notification is shown to the user that their system will restart to complete the package installation. Upon explicit consent from the user to proceed, the package continues installation and changepk.exe runs using the product key. The user will receive a reminder notification 30 seconds before the automatic restart.

After the device restarts, the edition upgrade process completes. The user will receive a notification of the successful upgrade.


## Related topics

- [WindowsLicensing configuration service provider (CSP)](/windows/client-management/mdm/windowslicensing-csp)
