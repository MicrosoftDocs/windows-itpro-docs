---
title: Win32AppInventory CSP
description: Learn how the Win32AppInventory configuration service provider (CSP) is used to provide an inventory of installed applications on a device.
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 06/26/2017
---

# Win32AppInventory CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The Win32AppInventory configuration service provider is used to provide an inventory of installed applications on a device.

The following example shows the Win32AppInventory configuration service provider management objects in tree format as used by Open Mobile Alliance Device Management (OMA DM), OMA Client Provisioning, and Enterprise DM.

```
./Vendor/MSFT/Win32AppInventory
----Win32InstalledProgram
--------InstalledProgram
------------Name
------------Publisher
------------Version
------------Language
------------RegKey
------------Source
------------MsiProductCode
------------MsiPackageCode
```

<a href="" id="--vendor-msft-win32appinventory"></a>**./Vendor/MSFT/Win32AppInventory**
The root node for the Win32AppInventory configuration service provider.

The supported operation is Get.

<a href="" id="win32installedprogram"></a>**Win32InstalledProgram**
This represents an inventory of installed Win32 applications on the device.

The supported operation is Get.

<a href="" id="win32installedprogram-installedprogram"></a>**Win32InstalledProgram/_InstalledProgram_**
A node that contains information for a specific application.

<a href="" id="win32installedprogram-installedprogram-name"></a>**Win32InstalledProgram/_InstalledProgram_/Name**
A string that specifies the name of the application.

The supported operation is Get.

<a href="" id="win32installedprogram-installedprogram-publisher"></a>**Win32InstalledProgram/_InstalledProgram_/Publisher**
A string that specifies the publisher of the application.

The supported operation is Get.

<a href="" id="win32installedprogram-installedprogram-version"></a>**Win32InstalledProgram/_InstalledProgram_/Version**
A string that specifies the version of the application.

The supported operation is Get.

<a href="" id="win32installedprogram-installedprogram-language"></a>**Win32InstalledProgram/_InstalledProgram_/Language**
A string that specifies the language of the application.

The supported operation is Get.

<a href="" id="win32installedprogram-installedprogram-regkey"></a>**Win32InstalledProgram/_InstalledProgram_/RegKey**
A string that specifies product code or registry subkey.

For MSI-based applications, this string is the product code.

For applications found in Add/Remove Programs, this string is the registry subkey.

The supported operation is Get.

<a href="" id="win32installedprogram-installedprogram-source"></a>**Win32InstalledProgram/_InstalledProgram_/Source**
A string that specifies where the application was discovered, such as MSI or Add/Remove Programs.

The supported operation is Get.

<a href="" id="win32installedprogram-installedprogram-msiproductcode"></a>**Win32InstalledProgram/_InstalledProgram_/MsiProductCode**
A GUID that uniquely identifies a particular MSI product.

The supported operation is Get.

<a href="" id="win32installedprogram-installedprogram-msipackagecode"></a>**Win32InstalledProgram/_InstalledProgram_/MsiPackageCode**
A GUID that identifies an MSI package. Multiple products can make up a single package.

The supported operation is Get.

## Related topics

[Configuration service provider reference](index.yml)
