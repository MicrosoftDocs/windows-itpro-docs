---
title: DevInfo CSP
description: Learn more about the DevInfo CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- DevInfo-Begin -->
# DevInfo CSP

<!-- DevInfo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The DevInfo configuration service provider handles the managed object, which provides device information to the OMA DM server. This device information is automatically sent to the OMA DM server at the beginning of each OMA DM session.

> [!NOTE]
> This configuration service provider requires the ID\_CAP\_CSP\_FOUNDATION and ID\_CAP\_DEVICE\_MANAGEMENT\_ADMIN capabilities to be accessed from a network configuration application.

For the DevInfo CSP, you can't use the Replace command unless the node already exists. The OMA Client provisioning protocol isn't supported by this configuration service provider.
<!-- DevInfo-Editable-End -->

<!-- DevInfo-Tree-Begin -->
The following list shows the DevInfo configuration service provider nodes:

- ./DevInfo
  - [DevId](#devid)
  - [DmV](#dmv)
  - [Ext](#ext)
    - [ICCID](#exticcid)
  - [Lang](#lang)
  - [Man](#man)
  - [Mod](#mod)
<!-- DevInfo-Tree-End -->

<!-- Device-DevId-Begin -->
## DevId

<!-- Device-DevId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-DevId-Applicability-End -->

<!-- Device-DevId-OmaUri-Begin -->
```Device
./DevInfo/DevId
```
<!-- Device-DevId-OmaUri-End -->

<!-- Device-DevId-Description-Begin -->
<!-- Description-Source-DDF -->
An unique device identifier. An application-specific global unique device identifier is provided in this node.
<!-- Device-DevId-Description-End -->

<!-- Device-DevId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
**UseHWDevID** node of the [DMAcc configuration service provider](dmacc-csp.md) can be used to modify the return value to instead return a hardware device ID as follows:

- For GSM phones, the IMEI is returned.
- For CDMA phones, the MEID is returned.
- For dual SIM phones, this value is retrieved from the UICC of the primary data line.
- For Windows 10 for desktop editions (Home, Pro, Enterprise, and Education), an application specific global unique identifier (GUID) is returned irrespective of the value of UseHWDevID.
<!-- Device-DevId-Editable-End -->

<!-- Device-DevId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-DevId-DFProperties-End -->

<!-- Device-DevId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DevId-Examples-End -->

<!-- Device-DevId-End -->

<!-- Device-DmV-Begin -->
## DmV

<!-- Device-DmV-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-DmV-Applicability-End -->

<!-- Device-DmV-OmaUri-Begin -->
```Device
./DevInfo/DmV
```
<!-- Device-DmV-OmaUri-End -->

<!-- Device-DmV-Description-Begin -->
<!-- Description-Source-DDF -->
The current management client revision of the device.
<!-- Device-DmV-Description-End -->

<!-- Device-DmV-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DmV-Editable-End -->

<!-- Device-DmV-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-DmV-DFProperties-End -->

<!-- Device-DmV-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DmV-Examples-End -->

<!-- Device-DmV-End -->

<!-- Device-Ext-Begin -->
## Ext

<!-- Device-Ext-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Ext-Applicability-End -->

<!-- Device-Ext-OmaUri-Begin -->
```Device
./DevInfo/Ext
```
<!-- Device-Ext-OmaUri-End -->

<!-- Device-Ext-Description-Begin -->
<!-- Description-Source-DDF -->
Parent node for nodes extended by Microsoft.
<!-- Device-Ext-Description-End -->

<!-- Device-Ext-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Ext-Editable-End -->

<!-- Device-Ext-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Ext-DFProperties-End -->

<!-- Device-Ext-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-Examples-End -->

<!-- Device-Ext-End -->

<!-- Device-Ext-ICCID-Begin -->
### Ext/ICCID

<!-- Device-Ext-ICCID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Ext-ICCID-Applicability-End -->

<!-- Device-Ext-ICCID-OmaUri-Begin -->
```Device
./DevInfo/Ext/ICCID
```
<!-- Device-Ext-ICCID-OmaUri-End -->

<!-- Device-Ext-ICCID-Description-Begin -->
<!-- Description-Source-DDF -->
Retrieves the ICCID of the first adapter.
<!-- Device-Ext-ICCID-Description-End -->

<!-- Device-Ext-ICCID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Ext-ICCID-Editable-End -->

<!-- Device-Ext-ICCID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Ext-ICCID-DFProperties-End -->

<!-- Device-Ext-ICCID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-ICCID-Examples-End -->

<!-- Device-Ext-ICCID-End -->

<!-- Device-Lang-Begin -->
## Lang

<!-- Device-Lang-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Lang-Applicability-End -->

<!-- Device-Lang-OmaUri-Begin -->
```Device
./DevInfo/Lang
```
<!-- Device-Lang-OmaUri-End -->

<!-- Device-Lang-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the current user interface (UI) language setting of the device as defined by RFC1766.
<!-- Device-Lang-Description-End -->

<!-- Device-Lang-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Lang-Editable-End -->

<!-- Device-Lang-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Lang-DFProperties-End -->

<!-- Device-Lang-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Lang-Examples-End -->

<!-- Device-Lang-End -->

<!-- Device-Man-Begin -->
## Man

<!-- Device-Man-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Man-Applicability-End -->

<!-- Device-Man-OmaUri-Begin -->
```Device
./DevInfo/Man
```
<!-- Device-Man-OmaUri-End -->

<!-- Device-Man-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the OEM. For Windows 10 for desktop editions, it returns the SystemManufacturer as defined in HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS\SystemManufacturer. If no name is found, this returns "Unknown".
<!-- Device-Man-Description-End -->

<!-- Device-Man-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Man-Editable-End -->

<!-- Device-Man-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Man-DFProperties-End -->

<!-- Device-Man-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Man-Examples-End -->

<!-- Device-Man-End -->

<!-- Device-Mod-Begin -->
## Mod

<!-- Device-Mod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Mod-Applicability-End -->

<!-- Device-Mod-OmaUri-Begin -->
```Device
./DevInfo/Mod
```
<!-- Device-Mod-OmaUri-End -->

<!-- Device-Mod-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the hardware device model as specified by the mobile operator. For Windows 10 for desktop editions, it returns the SystemProductName as defined in HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS\SystemProductName. If no name is found, this returns "Unknown".
<!-- Device-Mod-Description-End -->

<!-- Device-Mod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Mod-Editable-End -->

<!-- Device-Mod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Mod-DFProperties-End -->

<!-- Device-Mod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Mod-Examples-End -->

<!-- Device-Mod-End -->

<!-- DevInfo-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- DevInfo-CspMoreInfo-End -->

<!-- DevInfo-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
