---
title: UniversalPrint CSP
description: Learn how the UniversalPrint configuration service provider (CSP) is used to install printers on Windows client devices.
ms.date: 06/02/2022
ms.reviewer: jimwu
---

# UniversalPrint CSP

The table below shows the applicability of Windows:

|Edition|Windows 11|Windows 10|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The UniversalPrint configuration service provider (CSP) is used to add Universal Print-compatible printers to Windows client endpoints. Universal Print is a cloud-based printing solution that runs entirely in Microsoft Azure. It doesn't require any on-premises infrastructure. For more specific information, see [Discover Universal Print](/universal-print/discover-universal-print).

This CSP was added in Windows 11 and in Windows 10, version 21H2 July 2022 update [KB5015807](https://support.microsoft.com/topic/july-12-2022-kb5015807-os-builds-19042-1826-19043-1826-and-19044-1826-8c8ea8fe-ec83-467d-86fb-a2f48a85eb41).

The following example shows the UniversalPrint configuration service provider in tree format.

```console
./Vendor/MSFT
PrinterProvisioning
----UPPrinterInstalls
--------<GUID> (PrinterSharedID)
--------CloudDeviceID
--------PrinterSharedName
--------Install
--------Status
--------ErrorCode
```

<a href="" id="PrinterProvisioning"></a>**./Vendor/MSFT/PrinterProvisioning**
The root node for the Universal Print PrinterProvisioning configuration service provider.

<a href="" id="upprinterinstalls"></a>**UPPrinterInstalls**

This setting will install or uninstall a specific printer to a targeted user account.

Valid values:

- Install (default) - The printer is installed.
- Uninstall - The printer is uninstalled.

The data type is node (XML node). Supported operation is Get.

<a href="" id="guidprintersharedid)"></a>**`<GUID>` (PrinterSharedID)**

The Share ID is used to identify the Universal Print printer you want to install on the targeted user account. You can get the printer's Share ID in the printer's properties in the [Universal Print portal](/universal-print/reference/portal/navigate-azure-portal).

The data type is node (XML node). Supported operations are Get, Add, and Delete.

> [!NOTE]
> The targeted user account must have access rights to the printer and to the Universal Print service.

<a href="" id="clouddeviceid"></a>**CloudDeviceID**

The Printer ID is used to identify the Universal Print printer you want to install on the targeted user account. You can get the printer's Printer ID in the printer's properties in the [Universal Print portal](/universal-print/reference/portal/navigate-azure-portal).

The data type is string/text (GUID). Supported operations are Get, Add, Delete, and Replace.

> [!NOTE]
> The targeted user account must have access rights to the printer and to the Universal Print service.

<a href="" id="printersharedname"></a>**PrinterSharedName**

The Share Name is used to identify the Universal Print printer you want to install on the targeted user account. You can get the printer's Share Name in the printer's properties in the [Universal Print portal](/universal-print/reference/portal/navigate-azure-portal).

The data type is string/text. Supported operations are Get, Add, Delete, and Replace.

> [!NOTE]
> The targeted user account must have access rights to the printer and to the Universal Print service.

<a href="" id="install"></a>**Install**

Installs the Universal Print printer. Supports async execute.

The data type is string/text (empty string). Supported operations are Get and Execute.

<a href="" id="status"></a>**Status**

The result status of the printer installation.

Valid values:

- 1 (default) - Installation completed successfully.
- 2 - Installation is in progress after receiving execute cmd.
- 4 - Installation failed.
- 8 - Installation initial status
- 32 - Unknown (not used)

The data type is int. Supported operations is Get.

<a href="" id="errorcode"></a>**ErrorCode**

HRESULT of the last installation returned code.

The data type is int. Supported operation is Get.
