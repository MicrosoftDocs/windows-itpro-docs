---
title: PrinterProvisioning CSP
description: Learn more about the PrinterProvisioning CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- PrinterProvisioning-Begin -->
# PrinterProvisioning CSP

<!-- PrinterProvisioning-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PrinterProvisioning-Editable-End -->

<!-- PrinterProvisioning-Tree-Begin -->
The following list shows the PrinterProvisioning configuration service provider nodes:

- ./User/Vendor/MSFT/PrinterProvisioning
  - [UPPrinterInstalls](#upprinterinstalls)
    - [{PrinterSharedID}](#upprinterinstallsprintersharedid)
      - [CloudDeviceID](#upprinterinstallsprintersharedidclouddeviceid)
      - [ErrorCode](#upprinterinstallsprintersharediderrorcode)
      - [Install](#upprinterinstallsprintersharedidinstall)
      - [PrinterSharedName](#upprinterinstallsprintersharedidprintersharedname)
      - [Status](#upprinterinstallsprintersharedidstatus)
<!-- PrinterProvisioning-Tree-End -->

<!-- User-UPPrinterInstalls-Begin -->
## UPPrinterInstalls

<!-- User-UPPrinterInstalls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 with [KB5014666](https://support.microsoft.com/help/5014666) [10.0.19042.1806] and later <br> ✅ Windows 10, version 21H1 with [KB5014666](https://support.microsoft.com/help/5014666) [10.0.19043.1806] and later <br> ✅ Windows 10, version 21H2 with [KB5014666](https://support.microsoft.com/help/5014666) [10.0.19044.1806] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- User-UPPrinterInstalls-Applicability-End -->

<!-- User-UPPrinterInstalls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PrinterProvisioning/UPPrinterInstalls
```
<!-- User-UPPrinterInstalls-OmaUri-End -->

<!-- User-UPPrinterInstalls-Description-Begin -->
<!-- Description-Source-DDF -->
This setting will take the action on the specified user account to install or uninstall the specified printer. Install action is selected by default.
<!-- User-UPPrinterInstalls-Description-End -->

<!-- User-UPPrinterInstalls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-UPPrinterInstalls-Editable-End -->

<!-- User-UPPrinterInstalls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-UPPrinterInstalls-DFProperties-End -->

<!-- User-UPPrinterInstalls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-UPPrinterInstalls-Examples-End -->

<!-- User-UPPrinterInstalls-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-Begin -->
### UPPrinterInstalls/{PrinterSharedID}

<!-- User-UPPrinterInstalls-{PrinterSharedID}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 with [KB5014666](https://support.microsoft.com/help/5014666) [10.0.19042.1806] and later <br> ✅ Windows 10, version 21H1 with [KB5014666](https://support.microsoft.com/help/5014666) [10.0.19043.1806] and later <br> ✅ Windows 10, version 21H2 with [KB5014666](https://support.microsoft.com/help/5014666) [10.0.19044.1806] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- User-UPPrinterInstalls-{PrinterSharedID}-Applicability-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PrinterProvisioning/UPPrinterInstalls/{PrinterSharedID}
```
<!-- User-UPPrinterInstalls-{PrinterSharedID}-OmaUri-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-Description-Begin -->
<!-- Description-Source-DDF -->
Identifies the Universal Print printer, by its Share ID, you wish to install on the targeted user account. The printer's Share ID can be found in the printer's properties via the Universal Print portal. Note the targeted user account must have access rights to both the printer and to the Universal Print service.
<!-- User-UPPrinterInstalls-{PrinterSharedID}-Description-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-UPPrinterInstalls-{PrinterSharedID}-Editable-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName: PrinterSharedID from the Universal Print system, which is used to discover and install Univeral Print printer |
<!-- User-UPPrinterInstalls-{PrinterSharedID}-DFProperties-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-UPPrinterInstalls-{PrinterSharedID}-Examples-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-CloudDeviceID-Begin -->
#### UPPrinterInstalls/{PrinterSharedID}/CloudDeviceID

<!-- User-UPPrinterInstalls-{PrinterSharedID}-CloudDeviceID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 with [KB5014666](https://support.microsoft.com/help/5014666) [10.0.19042.1806] and later <br> ✅ Windows 10, version 21H1 with [KB5014666](https://support.microsoft.com/help/5014666) [10.0.19043.1806] and later <br> ✅ Windows 10, version 21H2 with [KB5014666](https://support.microsoft.com/help/5014666) [10.0.19044.1806] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- User-UPPrinterInstalls-{PrinterSharedID}-CloudDeviceID-Applicability-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-CloudDeviceID-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PrinterProvisioning/UPPrinterInstalls/{PrinterSharedID}/CloudDeviceID
```
<!-- User-UPPrinterInstalls-{PrinterSharedID}-CloudDeviceID-OmaUri-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-CloudDeviceID-Description-Begin -->
<!-- Description-Source-DDF -->
Identifies the Universal Print printer, by its Printer ID, you wish to install on the targeted user account. The printer's Printer ID can be found in the printer's properties via the Universal Print portal. Note the targeted user account must have access rights to both the printer and to the Universal Print service.
<!-- User-UPPrinterInstalls-{PrinterSharedID}-CloudDeviceID-Description-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-CloudDeviceID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-UPPrinterInstalls-{PrinterSharedID}-CloudDeviceID-Editable-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-CloudDeviceID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-UPPrinterInstalls-{PrinterSharedID}-CloudDeviceID-DFProperties-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-CloudDeviceID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-UPPrinterInstalls-{PrinterSharedID}-CloudDeviceID-Examples-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-CloudDeviceID-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-ErrorCode-Begin -->
#### UPPrinterInstalls/{PrinterSharedID}/ErrorCode

<!-- User-UPPrinterInstalls-{PrinterSharedID}-ErrorCode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 with [KB5014666](https://support.microsoft.com/help/5014666) [10.0.19042.1806] and later <br> ✅ Windows 10, version 21H1 with [KB5014666](https://support.microsoft.com/help/5014666) [10.0.19043.1806] and later <br> ✅ Windows 10, version 21H2 with [KB5014666](https://support.microsoft.com/help/5014666) [10.0.19044.1806] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- User-UPPrinterInstalls-{PrinterSharedID}-ErrorCode-Applicability-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-ErrorCode-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PrinterProvisioning/UPPrinterInstalls/{PrinterSharedID}/ErrorCode
```
<!-- User-UPPrinterInstalls-{PrinterSharedID}-ErrorCode-OmaUri-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-ErrorCode-Description-Begin -->
<!-- Description-Source-DDF -->
HRESULT of the last installation returned code.
<!-- User-UPPrinterInstalls-{PrinterSharedID}-ErrorCode-Description-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-ErrorCode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-UPPrinterInstalls-{PrinterSharedID}-ErrorCode-Editable-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-ErrorCode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-UPPrinterInstalls-{PrinterSharedID}-ErrorCode-DFProperties-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-ErrorCode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-UPPrinterInstalls-{PrinterSharedID}-ErrorCode-Examples-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-ErrorCode-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-Install-Begin -->
#### UPPrinterInstalls/{PrinterSharedID}/Install

<!-- User-UPPrinterInstalls-{PrinterSharedID}-Install-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 with [KB5014666](https://support.microsoft.com/help/5014666) [10.0.19042.1806] and later <br> ✅ Windows 10, version 21H1 with [KB5014666](https://support.microsoft.com/help/5014666) [10.0.19043.1806] and later <br> ✅ Windows 10, version 21H2 with [KB5014666](https://support.microsoft.com/help/5014666) [10.0.19044.1806] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- User-UPPrinterInstalls-{PrinterSharedID}-Install-Applicability-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-Install-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PrinterProvisioning/UPPrinterInstalls/{PrinterSharedID}/Install
```
<!-- User-UPPrinterInstalls-{PrinterSharedID}-Install-OmaUri-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-Install-Description-Begin -->
<!-- Description-Source-DDF -->
Support async execute. Install Universal Print printer.
<!-- User-UPPrinterInstalls-{PrinterSharedID}-Install-Description-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-Install-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-UPPrinterInstalls-{PrinterSharedID}-Install-Editable-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-Install-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `null` |
| Access Type | Exec, Get |
<!-- User-UPPrinterInstalls-{PrinterSharedID}-Install-DFProperties-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-Install-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-UPPrinterInstalls-{PrinterSharedID}-Install-Examples-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-Install-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-PrinterSharedName-Begin -->
#### UPPrinterInstalls/{PrinterSharedID}/PrinterSharedName

<!-- User-UPPrinterInstalls-{PrinterSharedID}-PrinterSharedName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 with [KB5014666](https://support.microsoft.com/help/5014666) [10.0.19042.1806] and later <br> ✅ Windows 10, version 21H1 with [KB5014666](https://support.microsoft.com/help/5014666) [10.0.19043.1806] and later <br> ✅ Windows 10, version 21H2 with [KB5014666](https://support.microsoft.com/help/5014666) [10.0.19044.1806] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- User-UPPrinterInstalls-{PrinterSharedID}-PrinterSharedName-Applicability-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-PrinterSharedName-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PrinterProvisioning/UPPrinterInstalls/{PrinterSharedID}/PrinterSharedName
```
<!-- User-UPPrinterInstalls-{PrinterSharedID}-PrinterSharedName-OmaUri-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-PrinterSharedName-Description-Begin -->
<!-- Description-Source-DDF -->
Identifies the Universal Print printer, by its Share Name, you wish to install on the targeted user account. The printer's Share Name can be found in the printer's properties via the Universal Print portal. Note the targeted user account must have access rights to both the printer and to the Universal Print service.
<!-- User-UPPrinterInstalls-{PrinterSharedID}-PrinterSharedName-Description-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-PrinterSharedName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-UPPrinterInstalls-{PrinterSharedID}-PrinterSharedName-Editable-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-PrinterSharedName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- User-UPPrinterInstalls-{PrinterSharedID}-PrinterSharedName-DFProperties-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-PrinterSharedName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-UPPrinterInstalls-{PrinterSharedID}-PrinterSharedName-Examples-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-PrinterSharedName-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-Status-Begin -->
#### UPPrinterInstalls/{PrinterSharedID}/Status

<!-- User-UPPrinterInstalls-{PrinterSharedID}-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 20H2 with [KB5014666](https://support.microsoft.com/help/5014666) [10.0.19042.1806] and later <br> ✅ Windows 10, version 21H1 with [KB5014666](https://support.microsoft.com/help/5014666) [10.0.19043.1806] and later <br> ✅ Windows 10, version 21H2 with [KB5014666](https://support.microsoft.com/help/5014666) [10.0.19044.1806] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- User-UPPrinterInstalls-{PrinterSharedID}-Status-Applicability-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-Status-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PrinterProvisioning/UPPrinterInstalls/{PrinterSharedID}/Status
```
<!-- User-UPPrinterInstalls-{PrinterSharedID}-Status-OmaUri-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-Status-Description-Begin -->
<!-- Description-Source-DDF -->
1 finished installation successfully, 2 installation in progress after receiving execute cmd, 4 installation failed, 8 installation initial status, 32 unknown (not used).
<!-- User-UPPrinterInstalls-{PrinterSharedID}-Status-Description-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-UPPrinterInstalls-{PrinterSharedID}-Status-Editable-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-UPPrinterInstalls-{PrinterSharedID}-Status-DFProperties-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-UPPrinterInstalls-{PrinterSharedID}-Status-Examples-End -->

<!-- User-UPPrinterInstalls-{PrinterSharedID}-Status-End -->

<!-- PrinterProvisioning-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- PrinterProvisioning-CspMoreInfo-End -->

<!-- PrinterProvisioning-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
