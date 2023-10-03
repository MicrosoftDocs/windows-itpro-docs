---
title: Connectivity Policy CSP
description: Learn more about the Connectivity Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 08/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- Connectivity-Begin -->
# Policy CSP - Connectivity

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- Connectivity-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Connectivity-Editable-End -->

<!-- AllowBluetooth-Begin -->
## AllowBluetooth

<!-- AllowBluetooth-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowBluetooth-Applicability-End -->

<!-- AllowBluetooth-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Connectivity/AllowBluetooth
```
<!-- AllowBluetooth-OmaUri-End -->

<!-- AllowBluetooth-Description-Begin -->
<!-- Description-Source-DDF -->
Allows the user to enable Bluetooth or restrict access.

> [!NOTE]
> This value isn't supported in Windows Phone 8. 1 MDM and EAS, Windows 10 for desktop, or Windows 10 Mobile. If this isn't set or it's deleted, the default value of 2 (Allow) is used. Most restricted value is 0.
<!-- AllowBluetooth-Description-End -->

<!-- AllowBluetooth-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowBluetooth-Editable-End -->

<!-- AllowBluetooth-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 2 |
<!-- AllowBluetooth-DFProperties-End -->

<!-- AllowBluetooth-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disallow Bluetooth. If this is set to 0, the radio in the Bluetooth control panel will be grayed out and the user won't be able to turn Bluetooth on. |
| 2 (Default) | Allow Bluetooth. If this is set to 2, the radio in the Bluetooth control panel will be functional and the user will be able to turn Bluetooth on. |
<!-- AllowBluetooth-AllowedValues-End -->

<!-- AllowBluetooth-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowBluetooth-Examples-End -->

<!-- AllowBluetooth-End -->

<!-- AllowCellularData-Begin -->
## AllowCellularData

<!-- AllowCellularData-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowCellularData-Applicability-End -->

<!-- AllowCellularData-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Connectivity/AllowCellularData
```
<!-- AllowCellularData-OmaUri-End -->

<!-- AllowCellularData-Description-Begin -->
<!-- Description-Source-DDF -->
Allows the cellular data channel on the device. Device reboot isn't required to enforce the policy.
<!-- AllowCellularData-Description-End -->

<!-- AllowCellularData-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowCellularData-Editable-End -->

<!-- AllowCellularData-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowCellularData-DFProperties-End -->

<!-- AllowCellularData-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Don't allow the cellular data channel. The user can't turn it on. This value isn't supported in Windows 10, version 1511. |
| 1 (Default) | Allow the cellular data channel. The user can turn it off. |
| 2 | Allow the cellular data channel. The user can't turn it off. |
<!-- AllowCellularData-AllowedValues-End -->

<!-- AllowCellularData-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowCellularData-Examples-End -->

<!-- AllowCellularData-End -->

<!-- AllowCellularDataRoaming-Begin -->
## AllowCellularDataRoaming

<!-- AllowCellularDataRoaming-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowCellularDataRoaming-Applicability-End -->

<!-- AllowCellularDataRoaming-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Connectivity/AllowCellularDataRoaming
```
<!-- AllowCellularDataRoaming-OmaUri-End -->

<!-- AllowCellularDataRoaming-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents clients from connecting to Mobile Broadband networks when the client is registered on a roaming provider network.

- If this policy setting is enabled, all automatic and manual connection attempts to roaming provider networks are blocked until the client registers with the home provider network.

- If this policy setting isn't configured or is disabled, clients are allowed to connect to roaming provider Mobile Broadband networks.
<!-- AllowCellularDataRoaming-Description-End -->

<!-- AllowCellularDataRoaming-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowCellularDataRoaming-Editable-End -->

<!-- AllowCellularDataRoaming-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowCellularDataRoaming-DFProperties-End -->

<!-- AllowCellularDataRoaming-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Don't allow cellular data roaming. The user can't turn it on. This value isn't supported in Windows 10, version 1511. |
| 1 (Default) | Allow cellular data roaming. |
| 2 | Allow cellular data roaming on. The user can't turn it off. |
<!-- AllowCellularDataRoaming-AllowedValues-End -->

<!-- AllowCellularDataRoaming-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | WCM_DisableRoaming |
| Friendly Name | Prohibit connection to roaming Mobile Broadband networks |
| Location | Computer Configuration |
| Path | Network > Windows Connection Manager |
| Registry Key Name | Software\Policies\Microsoft\Windows\WcmSvc\GroupPolicy |
| Registry Value Name | fBlockRoaming |
| ADMX File Name | WCM.admx |
<!-- AllowCellularDataRoaming-GpMapping-End -->

<!-- AllowCellularDataRoaming-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Validate**:

To validate, the enterprise can confirm by observing the roaming enable switch in the UX. It will be inactive if the roaming policy is being enforced by the enterprise policy. To validate on a device, perform the following steps:

1. Go to Cellular & SIM.
2. Click on the SIM (next to the signal strength icon) and select **Properties**.
3. On the Properties page, select **Data roaming options**.
<!-- AllowCellularDataRoaming-Examples-End -->

<!-- AllowCellularDataRoaming-End -->

<!-- AllowConnectedDevices-Begin -->
## AllowConnectedDevices

<!-- AllowConnectedDevices-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowConnectedDevices-Applicability-End -->

<!-- AllowConnectedDevices-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Connectivity/AllowConnectedDevices
```
<!-- AllowConnectedDevices-OmaUri-End -->

<!-- AllowConnectedDevices-Description-Begin -->
<!-- Description-Source-DDF -->

> [!NOTE]
> This policy requires reboot to take effect. Allows IT Admins the ability to disable the Connected Devices Platform (CDP) component. CDP enables discovery and connection to other devices (either proximally with BT/LAN or through the cloud) to support remote app launching, remote messaging, remote app sessions, and other cross-device experiences.
<!-- AllowConnectedDevices-Description-End -->

<!-- AllowConnectedDevices-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowConnectedDevices-Editable-End -->

<!-- AllowConnectedDevices-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowConnectedDevices-DFProperties-End -->

<!-- AllowConnectedDevices-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disable (CDP service not available). |
| 1 (Default) | Allow (CDP service available). |
<!-- AllowConnectedDevices-AllowedValues-End -->

<!-- AllowConnectedDevices-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowConnectedDevices-Examples-End -->

<!-- AllowConnectedDevices-End -->

<!-- AllowNFC-Begin -->
## AllowNFC

> [!NOTE]
> This policy is deprecated and may be removed in a future release.

<!-- AllowNFC-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowNFC-Applicability-End -->

<!-- AllowNFC-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Connectivity/AllowNFC
```
<!-- AllowNFC-OmaUri-End -->

<!-- AllowNFC-Description-Begin -->
<!-- Description-Source-DDF -->
This policy is deprecated.
<!-- AllowNFC-Description-End -->

<!-- AllowNFC-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowNFC-Editable-End -->

<!-- AllowNFC-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowNFC-DFProperties-End -->

<!-- AllowNFC-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 (Default) | Enabled. |
<!-- AllowNFC-AllowedValues-End -->

<!-- AllowNFC-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowNFC-Examples-End -->

<!-- AllowNFC-End -->

<!-- AllowPhonePCLinking-Begin -->
## AllowPhonePCLinking

<!-- AllowPhonePCLinking-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- AllowPhonePCLinking-Applicability-End -->

<!-- AllowPhonePCLinking-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Connectivity/AllowPhonePCLinking
```
<!-- AllowPhonePCLinking-OmaUri-End -->

<!-- AllowPhonePCLinking-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy allows IT admins to turn off the ability to Link a Phone with a PC to continue reading, emailing and other tasks that requires linking between Phone and PC.

- If you enable this policy setting, the Windows device will be able to enroll in Phone-PC linking functionality and participate in Continue on PC experiences.

- If you disable this policy setting, the Windows device isn't allowed to be linked to Phones, will remove itself from the device list of any linked Phones, and can't participate in Continue on PC experiences.

- If you don't configure this policy setting, the default behavior depends on the Windows edition. Changes to this policy take effect on reboot.
<!-- AllowPhonePCLinking-Description-End -->

<!-- AllowPhonePCLinking-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowPhonePCLinking-Editable-End -->

<!-- AllowPhonePCLinking-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowPhonePCLinking-DFProperties-End -->

<!-- AllowPhonePCLinking-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Don't link. |
| 1 (Default) | Allow phone-PC linking. |
<!-- AllowPhonePCLinking-AllowedValues-End -->

<!-- AllowPhonePCLinking-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | EnableMMX |
| Friendly Name | Phone-PC linking on this device |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | EnableMmx |
| ADMX File Name | GroupPolicy.admx |
<!-- AllowPhonePCLinking-GpMapping-End -->

<!-- AllowPhonePCLinking-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Validate**:

If the Connectivity/AllowPhonePCLinking policy is configured to value 0, add a phone button in the Phones section in settings will be grayed out and clicking it will not launch the window for a user to enter their phone number.

Device that has previously opt-in to MMX will also stop showing on the device list.
<!-- AllowPhonePCLinking-Examples-End -->

<!-- AllowPhonePCLinking-End -->

<!-- AllowUSBConnection-Begin -->
## AllowUSBConnection

<!-- AllowUSBConnection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowUSBConnection-Applicability-End -->

<!-- AllowUSBConnection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Connectivity/AllowUSBConnection
```
<!-- AllowUSBConnection-OmaUri-End -->

<!-- AllowUSBConnection-Description-Begin -->
<!-- Description-Source-DDF -->

> [!NOTE]
> Currently, this policy is supported only in HoloLens 2, HoloLens (1st gen) Commercial Suite, and HoloLens (1st gen) Development Edition. Enables USB connection between the device and a computer to sync files with the device or to use developer tools to deploy or debug applications. Changing this policy doesn't affect USB charging. Both Media Transfer Protocol (MTP) and IP over USB are disabled when this policy is enforced. Most restricted value is 0.
<!-- AllowUSBConnection-Description-End -->

<!-- AllowUSBConnection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowUSBConnection-Editable-End -->

<!-- AllowUSBConnection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowUSBConnection-DFProperties-End -->

<!-- AllowUSBConnection-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowUSBConnection-AllowedValues-End -->

<!-- AllowUSBConnection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowUSBConnection-Examples-End -->

<!-- AllowUSBConnection-End -->

<!-- AllowVPNOverCellular-Begin -->
## AllowVPNOverCellular

<!-- AllowVPNOverCellular-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowVPNOverCellular-Applicability-End -->

<!-- AllowVPNOverCellular-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Connectivity/AllowVPNOverCellular
```
<!-- AllowVPNOverCellular-OmaUri-End -->

<!-- AllowVPNOverCellular-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies what type of underlying connections VPN is allowed to use. Most restricted value is 0.
<!-- AllowVPNOverCellular-Description-End -->

<!-- AllowVPNOverCellular-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowVPNOverCellular-Editable-End -->

<!-- AllowVPNOverCellular-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowVPNOverCellular-DFProperties-End -->

<!-- AllowVPNOverCellular-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | VPN isn't allowed over cellular. |
| 1 (Default) | VPN can use any connection, including cellular. |
<!-- AllowVPNOverCellular-AllowedValues-End -->

<!-- AllowVPNOverCellular-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowVPNOverCellular-Examples-End -->

<!-- AllowVPNOverCellular-End -->

<!-- AllowVPNRoamingOverCellular-Begin -->
## AllowVPNRoamingOverCellular

<!-- AllowVPNRoamingOverCellular-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowVPNRoamingOverCellular-Applicability-End -->

<!-- AllowVPNRoamingOverCellular-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Connectivity/AllowVPNRoamingOverCellular
```
<!-- AllowVPNRoamingOverCellular-OmaUri-End -->

<!-- AllowVPNRoamingOverCellular-Description-Begin -->
<!-- Description-Source-DDF -->
Prevents the device from connecting to VPN when the device roams over cellular networks. Most restricted value is 0.
<!-- AllowVPNRoamingOverCellular-Description-End -->

<!-- AllowVPNRoamingOverCellular-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowVPNRoamingOverCellular-Editable-End -->

<!-- AllowVPNRoamingOverCellular-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowVPNRoamingOverCellular-DFProperties-End -->

<!-- AllowVPNRoamingOverCellular-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowVPNRoamingOverCellular-AllowedValues-End -->

<!-- AllowVPNRoamingOverCellular-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowVPNRoamingOverCellular-Examples-End -->

<!-- AllowVPNRoamingOverCellular-End -->

<!-- DiablePrintingOverHTTP-Begin -->
## DiablePrintingOverHTTP

<!-- DiablePrintingOverHTTP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DiablePrintingOverHTTP-Applicability-End -->

<!-- DiablePrintingOverHTTP-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Connectivity/DiablePrintingOverHTTP
```
<!-- DiablePrintingOverHTTP-OmaUri-End -->

<!-- DiablePrintingOverHTTP-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether to allow printing over HTTP from this client.

Printing over HTTP allows a client to print to printers on the intranet as well as the Internet.

> [!NOTE]
> This policy setting affects the client side of Internet printing only. It doesn't prevent this computer from acting as an Internet Printing server and making its shared printers available via HTTP.

- If you enable this policy setting, it prevents this client from printing to Internet printers over HTTP.

- If you disable or don't configure this policy setting, users can choose to print to Internet printers over HTTP.

Also, see the "Web-based printing" policy setting in Computer Configuration/Administrative Templates/Printers.
<!-- DiablePrintingOverHTTP-Description-End -->

<!-- DiablePrintingOverHTTP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DiablePrintingOverHTTP-Editable-End -->

<!-- DiablePrintingOverHTTP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DiablePrintingOverHTTP-DFProperties-End -->

<!-- DiablePrintingOverHTTP-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableHTTPPrinting_2 |
| Friendly Name | Turn off printing over HTTP |
| Location | Computer Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| Registry Value Name | DisableHTTPPrinting |
| ADMX File Name | ICM.admx |
<!-- DiablePrintingOverHTTP-AdmxBacked-End -->

<!-- DiablePrintingOverHTTP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DiablePrintingOverHTTP-Examples-End -->

<!-- DiablePrintingOverHTTP-End -->

<!-- DisableDownloadingOfPrintDriversOverHTTP-Begin -->
## DisableDownloadingOfPrintDriversOverHTTP

<!-- DisableDownloadingOfPrintDriversOverHTTP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DisableDownloadingOfPrintDriversOverHTTP-Applicability-End -->

<!-- DisableDownloadingOfPrintDriversOverHTTP-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Connectivity/DisableDownloadingOfPrintDriversOverHTTP
```
<!-- DisableDownloadingOfPrintDriversOverHTTP-OmaUri-End -->

<!-- DisableDownloadingOfPrintDriversOverHTTP-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether to allow this client to download print driver packages over HTTP.

To set up HTTP printing, non-inbox drivers need to be downloaded over HTTP.

> [!NOTE]
> This policy setting doesn't prevent the client from printing to printers on the Intranet or the Internet over HTTP. It only prohibits downloading drivers that aren't already installed locally.

- If you enable this policy setting, print drivers can't be downloaded over HTTP.

- If you disable or don't configure this policy setting, users can download print drivers over HTTP.
<!-- DisableDownloadingOfPrintDriversOverHTTP-Description-End -->

<!-- DisableDownloadingOfPrintDriversOverHTTP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableDownloadingOfPrintDriversOverHTTP-Editable-End -->

<!-- DisableDownloadingOfPrintDriversOverHTTP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableDownloadingOfPrintDriversOverHTTP-DFProperties-End -->

<!-- DisableDownloadingOfPrintDriversOverHTTP-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableWebPnPDownload_2 |
| Friendly Name | Turn off downloading of print drivers over HTTP |
| Location | Computer Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Printers |
| Registry Value Name | DisableWebPnPDownload |
| ADMX File Name | ICM.admx |
<!-- DisableDownloadingOfPrintDriversOverHTTP-AdmxBacked-End -->

<!-- DisableDownloadingOfPrintDriversOverHTTP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableDownloadingOfPrintDriversOverHTTP-Examples-End -->

<!-- DisableDownloadingOfPrintDriversOverHTTP-End -->

<!-- DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards-Begin -->
## DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards

<!-- DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards-Applicability-End -->

<!-- DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Connectivity/DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards
```
<!-- DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards-OmaUri-End -->

<!-- DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows should download a list of providers for the web publishing and online ordering wizards.

These wizards allow users to select from a list of companies that provide services such as online storage and photographic printing. By default, Windows displays providers downloaded from a Windows website in addition to providers specified in the registry.

- If you enable this policy setting, Windows doesn't download providers, and only the service providers that are cached in the local registry are displayed.

- If you disable or don't configure this policy setting, a list of providers are downloaded when the user uses the web publishing or online ordering wizards.

See the documentation for the web publishing and online ordering wizards for more information, including details on specifying service providers in the registry.
<!-- DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards-Description-End -->

<!-- DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards-Editable-End -->

<!-- DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards-DFProperties-End -->

<!-- DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShellPreventWPWDownload_2 |
| Friendly Name | Turn off Internet download for Web publishing and online ordering wizards |
| Location | Computer Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoWebServices |
| ADMX File Name | ICM.admx |
<!-- DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards-AdmxBacked-End -->

<!-- DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards-Examples-End -->

<!-- DisableInternetDownloadForWebPublishingAndOnlineOrderingWizards-End -->

<!-- DisallowNetworkConnectivityActiveTests-Begin -->
## DisallowNetworkConnectivityActiveTests

<!-- DisallowNetworkConnectivityActiveTests-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DisallowNetworkConnectivityActiveTests-Applicability-End -->

<!-- DisallowNetworkConnectivityActiveTests-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Connectivity/DisallowNetworkConnectivityActiveTests
```
<!-- DisallowNetworkConnectivityActiveTests-OmaUri-End -->

<!-- DisallowNetworkConnectivityActiveTests-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off the active tests performed by the Windows Network Connectivity Status Indicator (NCSI) to determine whether your computer is connected to the Internet or to a more limited network.

As part of determining the connectivity level, NCSI performs one of two active tests: downloading a page from a dedicated Web server or making a DNS request for a dedicated address.

- If you enable this policy setting, NCSI doesn't run either of the two active tests. This may reduce the ability of NCSI, and of other components that use NCSI, to determine Internet access.

- If you disable or don't configure this policy setting, NCSI runs one of the two active tests.
<!-- DisallowNetworkConnectivityActiveTests-Description-End -->

<!-- DisallowNetworkConnectivityActiveTests-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisallowNetworkConnectivityActiveTests-Editable-End -->

<!-- DisallowNetworkConnectivityActiveTests-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisallowNetworkConnectivityActiveTests-DFProperties-End -->

<!-- DisallowNetworkConnectivityActiveTests-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Allow. |
| 0 (Default) | Block. |
<!-- DisallowNetworkConnectivityActiveTests-AllowedValues-End -->

<!-- DisallowNetworkConnectivityActiveTests-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | NoActiveProbe |
| Friendly Name | Turn off Windows Network Connectivity Status Indicator active tests |
| Location | Computer Configuration |
| Path | InternetManagement > Internet Communication settings |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator |
| Registry Value Name | NoActiveProbe |
| ADMX File Name | ICM.admx |
<!-- DisallowNetworkConnectivityActiveTests-GpMapping-End -->

<!-- DisallowNetworkConnectivityActiveTests-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisallowNetworkConnectivityActiveTests-Examples-End -->

<!-- DisallowNetworkConnectivityActiveTests-End -->

<!-- HardenedUNCPaths-Begin -->
## HardenedUNCPaths

<!-- HardenedUNCPaths-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- HardenedUNCPaths-Applicability-End -->

<!-- HardenedUNCPaths-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Connectivity/HardenedUNCPaths
```
<!-- HardenedUNCPaths-OmaUri-End -->

<!-- HardenedUNCPaths-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures secure access to UNC paths.

If you enable this policy, Windows only allows access to the specified UNC paths after fulfilling additional security requirements.
<!-- HardenedUNCPaths-Description-End -->

<!-- HardenedUNCPaths-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
For more information, see [MS15-011: Vulnerability in Group Policy could allow remote code execution](https://support.microsoft.com/kb/3000483).
<!-- HardenedUNCPaths-Editable-End -->

<!-- HardenedUNCPaths-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HardenedUNCPaths-DFProperties-End -->

<!-- HardenedUNCPaths-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_HardenedPaths |
| Friendly Name | Hardened UNC Paths |
| Location | Computer Configuration |
| Path | Network > Network Provider |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetworkProvider\HardenedPaths |
| ADMX File Name | NetworkProvider.admx |
<!-- HardenedUNCPaths-AdmxBacked-End -->

<!-- HardenedUNCPaths-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HardenedUNCPaths-Examples-End -->

<!-- HardenedUNCPaths-End -->

<!-- ProhibitInstallationAndConfigurationOfNetworkBridge-Begin -->
## ProhibitInstallationAndConfigurationOfNetworkBridge

<!-- ProhibitInstallationAndConfigurationOfNetworkBridge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- ProhibitInstallationAndConfigurationOfNetworkBridge-Applicability-End -->

<!-- ProhibitInstallationAndConfigurationOfNetworkBridge-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Connectivity/ProhibitInstallationAndConfigurationOfNetworkBridge
```
<!-- ProhibitInstallationAndConfigurationOfNetworkBridge-OmaUri-End -->

<!-- ProhibitInstallationAndConfigurationOfNetworkBridge-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether a user can install and configure the Network Bridge.

> [!IMPORTANT]
> This settings is location aware. It only applies when a computer is connected to the same DNS domain network it was connected to when the setting was refreshed on that computer. If a computer is connected to a DNS domain network other than the one it was connected to when the setting was refreshed, this setting doesn't apply.

The Network Bridge allows users to create a layer 2 MAC bridge, enabling them to connect two or more network segements together. This connection appears in the Network Connections folder.

If you disable this setting or don't configure it, the user will be able to create and modify the configuration of a Network Bridge. Enabling this setting doesn't remove an existing Network Bridge from the user's computer.
<!-- ProhibitInstallationAndConfigurationOfNetworkBridge-Description-End -->

<!-- ProhibitInstallationAndConfigurationOfNetworkBridge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ProhibitInstallationAndConfigurationOfNetworkBridge-Editable-End -->

<!-- ProhibitInstallationAndConfigurationOfNetworkBridge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ProhibitInstallationAndConfigurationOfNetworkBridge-DFProperties-End -->

<!-- ProhibitInstallationAndConfigurationOfNetworkBridge-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_AllowNetBridge_NLA |
| Friendly Name | Prohibit installation and configuration of Network Bridge on your DNS domain network |
| Location | Computer Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_AllowNetBridge_NLA |
| ADMX File Name | NetworkConnections.admx |
<!-- ProhibitInstallationAndConfigurationOfNetworkBridge-AdmxBacked-End -->

<!-- ProhibitInstallationAndConfigurationOfNetworkBridge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ProhibitInstallationAndConfigurationOfNetworkBridge-Examples-End -->

<!-- ProhibitInstallationAndConfigurationOfNetworkBridge-End -->

<!-- Connectivity-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Connectivity-CspMoreInfo-End -->

<!-- Connectivity-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
