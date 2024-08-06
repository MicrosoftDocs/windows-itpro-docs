---
title: DevDetail CSP
description: Learn more about the DevDetail CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- DevDetail-Begin -->
# DevDetail CSP

<!-- DevDetail-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The DevDetail configuration service provider handles the management object that provides device-specific parameters to the OMA DM server. These device parameters can be queried by servers using OMA DM commands. They aren't sent from the client to the server automatically.

> [!NOTE]
> This configuration service provider requires the ID\_CAP\_CSP\_FOUNDATION and ID\_CAP\_DEVICE\_MANAGEMENT\_ADMIN capabilities to be accessed from a network configuration application.

For the DevDetail CSP, you can't use the Replace command unless the node already exists. The OMA Client Provisioning protocol isn't supported for this configuration service provider.
<!-- DevDetail-Editable-End -->

<!-- DevDetail-Tree-Begin -->
The following list shows the DevDetail configuration service provider nodes:

- ./DevDetail
  - [DevTyp](#devtyp)
  - [Ext](#ext)
    - [DeviceHardwareData](#extdevicehardwaredata)
    - [Microsoft](#extmicrosoft)
      - [CommercializationOperator](#extmicrosoftcommercializationoperator)
      - [DeviceName](#extmicrosoftdevicename)
      - [DNSComputerName](#extmicrosoftdnscomputername)
      - [FreeStorage](#extmicrosoftfreestorage)
      - [LocalTime](#extmicrosoftlocaltime)
      - [MobileID](#extmicrosoftmobileid)
      - [OSPlatform](#extmicrosoftosplatform)
      - [ProcessorArchitecture](#extmicrosoftprocessorarchitecture)
      - [ProcessorType](#extmicrosoftprocessortype)
      - [RadioSwV](#extmicrosoftradioswv)
      - [Resolution](#extmicrosoftresolution)
      - [SMBIOSSerialNumber](#extmicrosoftsmbiosserialnumber)
      - [SMBIOSVersion](#extmicrosoftsmbiosversion)
      - [SystemSKU](#extmicrosoftsystemsku)
      - [TotalRAM](#extmicrosofttotalram)
      - [TotalStorage](#extmicrosofttotalstorage)
    - [VoLTEServiceSetting](#extvolteservicesetting)
    - [WlanDnsSuffix](#extwlandnssuffix)
    - [WlanIPv4Address](#extwlanipv4address)
    - [WlanIPv6Address](#extwlanipv6address)
    - [WLANMACAddress](#extwlanmacaddress)
    - [WlanSubnetMask](#extwlansubnetmask)
  - [FwV](#fwv)
  - [HwV](#hwv)
  - [LrgObj](#lrgobj)
  - [OEM](#oem)
  - [SwV](#swv)
  - [URI](#uri)
    - [MaxDepth](#urimaxdepth)
    - [MaxSegLen](#urimaxseglen)
    - [MaxTotLen](#urimaxtotlen)
<!-- DevDetail-Tree-End -->

<!-- Device-DevTyp-Begin -->
## DevTyp

<!-- Device-DevTyp-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-DevTyp-Applicability-End -->

<!-- Device-DevTyp-OmaUri-Begin -->
```Device
./DevDetail/DevTyp
```
<!-- Device-DevTyp-OmaUri-End -->

<!-- Device-DevTyp-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the device model name /SystemProductName as a string.
<!-- Device-DevTyp-Description-End -->

<!-- Device-DevTyp-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DevTyp-Editable-End -->

<!-- Device-DevTyp-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-DevTyp-DFProperties-End -->

<!-- Device-DevTyp-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DevTyp-Examples-End -->

<!-- Device-DevTyp-End -->

<!-- Device-Ext-Begin -->
## Ext

<!-- Device-Ext-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Ext-Applicability-End -->

<!-- Device-Ext-OmaUri-Begin -->
```Device
./DevDetail/Ext
```
<!-- Device-Ext-OmaUri-End -->

<!-- Device-Ext-Description-Begin -->
<!-- Description-Source-DDF -->
Subtree to hold vendor-specific parameters.
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

<!-- Device-Ext-DeviceHardwareData-Begin -->
### Ext/DeviceHardwareData

<!-- Device-Ext-DeviceHardwareData-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-Ext-DeviceHardwareData-Applicability-End -->

<!-- Device-Ext-DeviceHardwareData-OmaUri-Begin -->
```Device
./DevDetail/Ext/DeviceHardwareData
```
<!-- Device-Ext-DeviceHardwareData-OmaUri-End -->

<!-- Device-Ext-DeviceHardwareData-Description-Begin -->
<!-- Description-Source-DDF -->
Added in Windows 10 version 1703. Returns a base64 encoded string of the hardware parameters of a device.
<!-- Device-Ext-DeviceHardwareData-Description-End -->

<!-- Device-Ext-DeviceHardwareData-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This node contains a raw blob used to identify a device in the cloud. It's not meant to be human readable by design and you can't parse the content to get any meaningful hardware information.
<!-- Device-Ext-DeviceHardwareData-Editable-End -->

<!-- Device-Ext-DeviceHardwareData-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Ext-DeviceHardwareData-DFProperties-End -->

<!-- Device-Ext-DeviceHardwareData-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-DeviceHardwareData-Examples-End -->

<!-- Device-Ext-DeviceHardwareData-End -->

<!-- Device-Ext-Microsoft-Begin -->
### Ext/Microsoft

<!-- Device-Ext-Microsoft-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Ext-Microsoft-Applicability-End -->

<!-- Device-Ext-Microsoft-OmaUri-Begin -->
```Device
./DevDetail/Ext/Microsoft
```
<!-- Device-Ext-Microsoft-OmaUri-End -->

<!-- Device-Ext-Microsoft-Description-Begin -->
<!-- Description-Source-DDF -->
Subtree to hold vendor-specific parameters.
<!-- Device-Ext-Microsoft-Description-End -->

<!-- Device-Ext-Microsoft-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-Editable-End -->

<!-- Device-Ext-Microsoft-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Ext-Microsoft-DFProperties-End -->

<!-- Device-Ext-Microsoft-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-Examples-End -->

<!-- Device-Ext-Microsoft-End -->

<!-- Device-Ext-Microsoft-CommercializationOperator-Begin -->
#### Ext/Microsoft/CommercializationOperator

<!-- Device-Ext-Microsoft-CommercializationOperator-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Ext-Microsoft-CommercializationOperator-Applicability-End -->

<!-- Device-Ext-Microsoft-CommercializationOperator-OmaUri-Begin -->
```Device
./DevDetail/Ext/Microsoft/CommercializationOperator
```
<!-- Device-Ext-Microsoft-CommercializationOperator-OmaUri-End -->

<!-- Device-Ext-Microsoft-CommercializationOperator-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the mobile operator if it exists; otherwise it returns 404.
<!-- Device-Ext-Microsoft-CommercializationOperator-Description-End -->

<!-- Device-Ext-Microsoft-CommercializationOperator-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-CommercializationOperator-Editable-End -->

<!-- Device-Ext-Microsoft-CommercializationOperator-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Ext-Microsoft-CommercializationOperator-DFProperties-End -->

<!-- Device-Ext-Microsoft-CommercializationOperator-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-CommercializationOperator-Examples-End -->

<!-- Device-Ext-Microsoft-CommercializationOperator-End -->

<!-- Device-Ext-Microsoft-DeviceName-Begin -->
#### Ext/Microsoft/DeviceName

<!-- Device-Ext-Microsoft-DeviceName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Ext-Microsoft-DeviceName-Applicability-End -->

<!-- Device-Ext-Microsoft-DeviceName-OmaUri-Begin -->
```Device
./DevDetail/Ext/Microsoft/DeviceName
```
<!-- Device-Ext-Microsoft-DeviceName-OmaUri-End -->

<!-- Device-Ext-Microsoft-DeviceName-Description-Begin -->
<!-- Description-Source-DDF -->
Contains the user-specified device name. Support for Replace operation for Windows 10 Mobile was added in Windows 10, version 1511. Replace operation isn't supported in the desktop or IoT Core. When you change the device name using this node, it triggers a dialog on the device asking the user to reboot. The new device name doesn't take effect until the device is restarted. If the user cancels the dialog, it will show again until a reboot occurs.
<!-- Device-Ext-Microsoft-DeviceName-Description-End -->

<!-- Device-Ext-Microsoft-DeviceName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-DeviceName-Editable-End -->

<!-- Device-Ext-Microsoft-DeviceName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
| Reboot Behavior | Automatic |
<!-- Device-Ext-Microsoft-DeviceName-DFProperties-End -->

<!-- Device-Ext-Microsoft-DeviceName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-DeviceName-Examples-End -->

<!-- Device-Ext-Microsoft-DeviceName-End -->

<!-- Device-Ext-Microsoft-DNSComputerName-Begin -->
#### Ext/Microsoft/DNSComputerName

<!-- Device-Ext-Microsoft-DNSComputerName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- Device-Ext-Microsoft-DNSComputerName-Applicability-End -->

<!-- Device-Ext-Microsoft-DNSComputerName-OmaUri-Begin -->
```Device
./DevDetail/Ext/Microsoft/DNSComputerName
```
<!-- Device-Ext-Microsoft-DNSComputerName-OmaUri-End -->

<!-- Device-Ext-Microsoft-DNSComputerName-Description-Begin -->
<!-- Description-Source-DDF -->
This node specifies the DNS name for a device. This setting can be managed remotely. A couple of macros can be embedded within the value for dynamic substitution: %RAND:`<# of digits>`% and %SERIAL%. Examples: (a) "Test%RAND:6%" will generate a name "Test" followed by 6 random digits (e.g., "Test123456"). (b) "Foo%SERIAL%", will generate a name "Foo" followed by the serial number derived from device's ID. If both macros are in the string, the RANDOM macro will take priority over the SERIAL macro (SERIAL will be ignored). The server must explicitly reboot the device for this value to take effect. This value has a maximum allowed length of 63 characters as per DNS standards.
<!-- Device-Ext-Microsoft-DNSComputerName-Description-End -->

<!-- Device-Ext-Microsoft-DNSComputerName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
 This node replaces the **Domain/ComputerName** node in [Accounts CSP](accounts-csp.md).

> [!NOTE]
> We recommend using `%SERIAL%` or `%RAND:x%` with a high character limit to reduce the chance of name collision when generating a random name. This feature doesn't check if a particular name is already present in the environment.

On desktop PCs, this setting specifies the DNS hostname of the computer (Computer Name) up to 63 characters. Use `%RAND:x%` to generate x number of random digits in the name, where x must be a number less than 63. For domain-joined computers, the unique name must use `%RAND:x%`. Use `%SERIAL%` to generate the name with the computer's serial number embedded. If the serial number exceeds the character limit, it will be truncated from the beginning of the sequence. The character restriction limit doesn't count the length of the macros, `%RAND:x%` and `%SERIAL%`. This setting is supported only in Windows 10, version 1803 and later. To change this setting in Windows 10, version 1709 and earlier releases, use the **ComputerName** setting under **Accounts** > **ComputerAccount**.
<!-- Device-Ext-Microsoft-DNSComputerName-Editable-End -->

<!-- Device-Ext-Microsoft-DNSComputerName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get, Replace |
| Reboot Behavior | ServerInitiated |
<!-- Device-Ext-Microsoft-DNSComputerName-DFProperties-End -->

<!-- Device-Ext-Microsoft-DNSComputerName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-DNSComputerName-Examples-End -->

<!-- Device-Ext-Microsoft-DNSComputerName-End -->

<!-- Device-Ext-Microsoft-FreeStorage-Begin -->
#### Ext/Microsoft/FreeStorage

<!-- Device-Ext-Microsoft-FreeStorage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Ext-Microsoft-FreeStorage-Applicability-End -->

<!-- Device-Ext-Microsoft-FreeStorage-OmaUri-Begin -->
```Device
./DevDetail/Ext/Microsoft/FreeStorage
```
<!-- Device-Ext-Microsoft-FreeStorage-OmaUri-End -->

<!-- Device-Ext-Microsoft-FreeStorage-Description-Begin -->
<!-- Description-Source-DDF -->
Total free storage in MB from first internal drive on the device.
<!-- Device-Ext-Microsoft-FreeStorage-Description-End -->

<!-- Device-Ext-Microsoft-FreeStorage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-FreeStorage-Editable-End -->

<!-- Device-Ext-Microsoft-FreeStorage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-Ext-Microsoft-FreeStorage-DFProperties-End -->

<!-- Device-Ext-Microsoft-FreeStorage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-FreeStorage-Examples-End -->

<!-- Device-Ext-Microsoft-FreeStorage-End -->

<!-- Device-Ext-Microsoft-LocalTime-Begin -->
#### Ext/Microsoft/LocalTime

<!-- Device-Ext-Microsoft-LocalTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Ext-Microsoft-LocalTime-Applicability-End -->

<!-- Device-Ext-Microsoft-LocalTime-OmaUri-Begin -->
```Device
./DevDetail/Ext/Microsoft/LocalTime
```
<!-- Device-Ext-Microsoft-LocalTime-OmaUri-End -->

<!-- Device-Ext-Microsoft-LocalTime-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the client local time in ISO 8601 format. Example: 2003-06-16. T18:37:44Z.
<!-- Device-Ext-Microsoft-LocalTime-Description-End -->

<!-- Device-Ext-Microsoft-LocalTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-LocalTime-Editable-End -->

<!-- Device-Ext-Microsoft-LocalTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Ext-Microsoft-LocalTime-DFProperties-End -->

<!-- Device-Ext-Microsoft-LocalTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-LocalTime-Examples-End -->

<!-- Device-Ext-Microsoft-LocalTime-End -->

<!-- Device-Ext-Microsoft-MobileID-Begin -->
#### Ext/Microsoft/MobileID

<!-- Device-Ext-Microsoft-MobileID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Ext-Microsoft-MobileID-Applicability-End -->

<!-- Device-Ext-Microsoft-MobileID-OmaUri-Begin -->
```Device
./DevDetail/Ext/Microsoft/MobileID
```
<!-- Device-Ext-Microsoft-MobileID-OmaUri-End -->

<!-- Device-Ext-Microsoft-MobileID-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the mobile device ID associated with the cellular network. Returns 404 for devices that don't have a cellular network support. The IMSI value is returned for GSM and UMTS networks. CDMA and worldwide phones will return a 404 Not Found status code error if queried for this element.
<!-- Device-Ext-Microsoft-MobileID-Description-End -->

<!-- Device-Ext-Microsoft-MobileID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-MobileID-Editable-End -->

<!-- Device-Ext-Microsoft-MobileID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Ext-Microsoft-MobileID-DFProperties-End -->

<!-- Device-Ext-Microsoft-MobileID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-MobileID-Examples-End -->

<!-- Device-Ext-Microsoft-MobileID-End -->

<!-- Device-Ext-Microsoft-OSPlatform-Begin -->
#### Ext/Microsoft/OSPlatform

<!-- Device-Ext-Microsoft-OSPlatform-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Ext-Microsoft-OSPlatform-Applicability-End -->

<!-- Device-Ext-Microsoft-OSPlatform-OmaUri-Begin -->
```Device
./DevDetail/Ext/Microsoft/OSPlatform
```
<!-- Device-Ext-Microsoft-OSPlatform-OmaUri-End -->

<!-- Device-Ext-Microsoft-OSPlatform-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the OS platform of the device. For Windows 10 for desktop editions, it returns the ProductName as defined in HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProductName.
<!-- Device-Ext-Microsoft-OSPlatform-Description-End -->

<!-- Device-Ext-Microsoft-OSPlatform-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-OSPlatform-Editable-End -->

<!-- Device-Ext-Microsoft-OSPlatform-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Ext-Microsoft-OSPlatform-DFProperties-End -->

<!-- Device-Ext-Microsoft-OSPlatform-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-OSPlatform-Examples-End -->

<!-- Device-Ext-Microsoft-OSPlatform-End -->

<!-- Device-Ext-Microsoft-ProcessorArchitecture-Begin -->
#### Ext/Microsoft/ProcessorArchitecture

<!-- Device-Ext-Microsoft-ProcessorArchitecture-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Ext-Microsoft-ProcessorArchitecture-Applicability-End -->

<!-- Device-Ext-Microsoft-ProcessorArchitecture-OmaUri-Begin -->
```Device
./DevDetail/Ext/Microsoft/ProcessorArchitecture
```
<!-- Device-Ext-Microsoft-ProcessorArchitecture-OmaUri-End -->

<!-- Device-Ext-Microsoft-ProcessorArchitecture-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the processor architecture of the device as "arm" or "x86".
<!-- Device-Ext-Microsoft-ProcessorArchitecture-Description-End -->

<!-- Device-Ext-Microsoft-ProcessorArchitecture-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-ProcessorArchitecture-Editable-End -->

<!-- Device-Ext-Microsoft-ProcessorArchitecture-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-Ext-Microsoft-ProcessorArchitecture-DFProperties-End -->

<!-- Device-Ext-Microsoft-ProcessorArchitecture-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-ProcessorArchitecture-Examples-End -->

<!-- Device-Ext-Microsoft-ProcessorArchitecture-End -->

<!-- Device-Ext-Microsoft-ProcessorType-Begin -->
#### Ext/Microsoft/ProcessorType

<!-- Device-Ext-Microsoft-ProcessorType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Ext-Microsoft-ProcessorType-Applicability-End -->

<!-- Device-Ext-Microsoft-ProcessorType-OmaUri-Begin -->
```Device
./DevDetail/Ext/Microsoft/ProcessorType
```
<!-- Device-Ext-Microsoft-ProcessorType-OmaUri-End -->

<!-- Device-Ext-Microsoft-ProcessorType-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the processor type of the device as documented in SYSTEM_INFO.
<!-- Device-Ext-Microsoft-ProcessorType-Description-End -->

<!-- Device-Ext-Microsoft-ProcessorType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-ProcessorType-Editable-End -->

<!-- Device-Ext-Microsoft-ProcessorType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-Ext-Microsoft-ProcessorType-DFProperties-End -->

<!-- Device-Ext-Microsoft-ProcessorType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-ProcessorType-Examples-End -->

<!-- Device-Ext-Microsoft-ProcessorType-End -->

<!-- Device-Ext-Microsoft-RadioSwV-Begin -->
#### Ext/Microsoft/RadioSwV

<!-- Device-Ext-Microsoft-RadioSwV-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Ext-Microsoft-RadioSwV-Applicability-End -->

<!-- Device-Ext-Microsoft-RadioSwV-OmaUri-Begin -->
```Device
./DevDetail/Ext/Microsoft/RadioSwV
```
<!-- Device-Ext-Microsoft-RadioSwV-OmaUri-End -->

<!-- Device-Ext-Microsoft-RadioSwV-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the radio stack software version number.
<!-- Device-Ext-Microsoft-RadioSwV-Description-End -->

<!-- Device-Ext-Microsoft-RadioSwV-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-RadioSwV-Editable-End -->

<!-- Device-Ext-Microsoft-RadioSwV-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Ext-Microsoft-RadioSwV-DFProperties-End -->

<!-- Device-Ext-Microsoft-RadioSwV-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-RadioSwV-Examples-End -->

<!-- Device-Ext-Microsoft-RadioSwV-End -->

<!-- Device-Ext-Microsoft-Resolution-Begin -->
#### Ext/Microsoft/Resolution

<!-- Device-Ext-Microsoft-Resolution-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Ext-Microsoft-Resolution-Applicability-End -->

<!-- Device-Ext-Microsoft-Resolution-OmaUri-Begin -->
```Device
./DevDetail/Ext/Microsoft/Resolution
```
<!-- Device-Ext-Microsoft-Resolution-OmaUri-End -->

<!-- Device-Ext-Microsoft-Resolution-Description-Begin -->
<!-- Description-Source-DDF -->
Resolution of the device in the format of WidthxLength (e.g., "400x800").
<!-- Device-Ext-Microsoft-Resolution-Description-End -->

<!-- Device-Ext-Microsoft-Resolution-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-Resolution-Editable-End -->

<!-- Device-Ext-Microsoft-Resolution-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Ext-Microsoft-Resolution-DFProperties-End -->

<!-- Device-Ext-Microsoft-Resolution-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-Resolution-Examples-End -->

<!-- Device-Ext-Microsoft-Resolution-End -->

<!-- Device-Ext-Microsoft-SMBIOSSerialNumber-Begin -->
#### Ext/Microsoft/SMBIOSSerialNumber

<!-- Device-Ext-Microsoft-SMBIOSSerialNumber-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-Ext-Microsoft-SMBIOSSerialNumber-Applicability-End -->

<!-- Device-Ext-Microsoft-SMBIOSSerialNumber-OmaUri-Begin -->
```Device
./DevDetail/Ext/Microsoft/SMBIOSSerialNumber
```
<!-- Device-Ext-Microsoft-SMBIOSSerialNumber-OmaUri-End -->

<!-- Device-Ext-Microsoft-SMBIOSSerialNumber-Description-Begin -->
<!-- Description-Source-DDF -->
SMBIOS Serial Number of the device.
<!-- Device-Ext-Microsoft-SMBIOSSerialNumber-Description-End -->

<!-- Device-Ext-Microsoft-SMBIOSSerialNumber-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-SMBIOSSerialNumber-Editable-End -->

<!-- Device-Ext-Microsoft-SMBIOSSerialNumber-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Ext-Microsoft-SMBIOSSerialNumber-DFProperties-End -->

<!-- Device-Ext-Microsoft-SMBIOSSerialNumber-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-SMBIOSSerialNumber-Examples-End -->

<!-- Device-Ext-Microsoft-SMBIOSSerialNumber-End -->

<!-- Device-Ext-Microsoft-SMBIOSVersion-Begin -->
#### Ext/Microsoft/SMBIOSVersion

<!-- Device-Ext-Microsoft-SMBIOSVersion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5007253](https://support.microsoft.com/help/5007253) [10.0.19041.1387] and later <br> ✅ Windows 10, version 20H2 with [KB5007253](https://support.microsoft.com/help/5007253) [10.0.19042.1387] and later <br> ✅ Windows 10, version 21H1 with [KB5007253](https://support.microsoft.com/help/5007253) [10.0.19043.1387] and later <br> ✅ Windows 10, version 21H2 with [KB5007253](https://support.microsoft.com/help/5007253) [10.0.19044.1387] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-Ext-Microsoft-SMBIOSVersion-Applicability-End -->

<!-- Device-Ext-Microsoft-SMBIOSVersion-OmaUri-Begin -->
```Device
./DevDetail/Ext/Microsoft/SMBIOSVersion
```
<!-- Device-Ext-Microsoft-SMBIOSVersion-OmaUri-End -->

<!-- Device-Ext-Microsoft-SMBIOSVersion-Description-Begin -->
<!-- Description-Source-DDF -->
SMBIOS version of the device.
<!-- Device-Ext-Microsoft-SMBIOSVersion-Description-End -->

<!-- Device-Ext-Microsoft-SMBIOSVersion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-SMBIOSVersion-Editable-End -->

<!-- Device-Ext-Microsoft-SMBIOSVersion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Ext-Microsoft-SMBIOSVersion-DFProperties-End -->

<!-- Device-Ext-Microsoft-SMBIOSVersion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-SMBIOSVersion-Examples-End -->

<!-- Device-Ext-Microsoft-SMBIOSVersion-End -->

<!-- Device-Ext-Microsoft-SystemSKU-Begin -->
#### Ext/Microsoft/SystemSKU

<!-- Device-Ext-Microsoft-SystemSKU-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Ext-Microsoft-SystemSKU-Applicability-End -->

<!-- Device-Ext-Microsoft-SystemSKU-OmaUri-Begin -->
```Device
./DevDetail/Ext/Microsoft/SystemSKU
```
<!-- Device-Ext-Microsoft-SystemSKU-OmaUri-End -->

<!-- Device-Ext-Microsoft-SystemSKU-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the System SKU, as defined in the registry key HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS\SystemSKU.
<!-- Device-Ext-Microsoft-SystemSKU-Description-End -->

<!-- Device-Ext-Microsoft-SystemSKU-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-SystemSKU-Editable-End -->

<!-- Device-Ext-Microsoft-SystemSKU-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Ext-Microsoft-SystemSKU-DFProperties-End -->

<!-- Device-Ext-Microsoft-SystemSKU-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-SystemSKU-Examples-End -->

<!-- Device-Ext-Microsoft-SystemSKU-End -->

<!-- Device-Ext-Microsoft-TotalRAM-Begin -->
#### Ext/Microsoft/TotalRAM

<!-- Device-Ext-Microsoft-TotalRAM-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Ext-Microsoft-TotalRAM-Applicability-End -->

<!-- Device-Ext-Microsoft-TotalRAM-OmaUri-Begin -->
```Device
./DevDetail/Ext/Microsoft/TotalRAM
```
<!-- Device-Ext-Microsoft-TotalRAM-OmaUri-End -->

<!-- Device-Ext-Microsoft-TotalRAM-Description-Begin -->
<!-- Description-Source-DDF -->
Total available memory in MB on the device (may be less than total physical memory).
<!-- Device-Ext-Microsoft-TotalRAM-Description-End -->

<!-- Device-Ext-Microsoft-TotalRAM-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-TotalRAM-Editable-End -->

<!-- Device-Ext-Microsoft-TotalRAM-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-Ext-Microsoft-TotalRAM-DFProperties-End -->

<!-- Device-Ext-Microsoft-TotalRAM-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-TotalRAM-Examples-End -->

<!-- Device-Ext-Microsoft-TotalRAM-End -->

<!-- Device-Ext-Microsoft-TotalStorage-Begin -->
#### Ext/Microsoft/TotalStorage

<!-- Device-Ext-Microsoft-TotalStorage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Ext-Microsoft-TotalStorage-Applicability-End -->

<!-- Device-Ext-Microsoft-TotalStorage-OmaUri-Begin -->
```Device
./DevDetail/Ext/Microsoft/TotalStorage
```
<!-- Device-Ext-Microsoft-TotalStorage-OmaUri-End -->

<!-- Device-Ext-Microsoft-TotalStorage-Description-Begin -->
<!-- Description-Source-DDF -->
Total available storage in MB from first internal drive on the device (may be less than total physical storage). Available for Windows Mobile only.
<!-- Device-Ext-Microsoft-TotalStorage-Description-End -->

<!-- Device-Ext-Microsoft-TotalStorage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-TotalStorage-Editable-End -->

<!-- Device-Ext-Microsoft-TotalStorage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-Ext-Microsoft-TotalStorage-DFProperties-End -->

<!-- Device-Ext-Microsoft-TotalStorage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-Microsoft-TotalStorage-Examples-End -->

<!-- Device-Ext-Microsoft-TotalStorage-End -->

<!-- Device-Ext-VoLTEServiceSetting-Begin -->
### Ext/VoLTEServiceSetting

<!-- Device-Ext-VoLTEServiceSetting-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Ext-VoLTEServiceSetting-Applicability-End -->

<!-- Device-Ext-VoLTEServiceSetting-OmaUri-Begin -->
```Device
./DevDetail/Ext/VoLTEServiceSetting
```
<!-- Device-Ext-VoLTEServiceSetting-OmaUri-End -->

<!-- Device-Ext-VoLTEServiceSetting-Description-Begin -->
<!-- Description-Source-DDF -->
The VoLTE service setting on or off. Only exposed to Mobile Operator-based OMA-DM servers.
<!-- Device-Ext-VoLTEServiceSetting-Description-End -->

<!-- Device-Ext-VoLTEServiceSetting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Ext-VoLTEServiceSetting-Editable-End -->

<!-- Device-Ext-VoLTEServiceSetting-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get |
<!-- Device-Ext-VoLTEServiceSetting-DFProperties-End -->

<!-- Device-Ext-VoLTEServiceSetting-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-VoLTEServiceSetting-Examples-End -->

<!-- Device-Ext-VoLTEServiceSetting-End -->

<!-- Device-Ext-WlanDnsSuffix-Begin -->
### Ext/WlanDnsSuffix

<!-- Device-Ext-WlanDnsSuffix-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Ext-WlanDnsSuffix-Applicability-End -->

<!-- Device-Ext-WlanDnsSuffix-OmaUri-Begin -->
```Device
./DevDetail/Ext/WlanDnsSuffix
```
<!-- Device-Ext-WlanDnsSuffix-OmaUri-End -->

<!-- Device-Ext-WlanDnsSuffix-Description-Begin -->
<!-- Description-Source-DDF -->
The DNS suffix of the active WiFi connection. Only exposed to Enterprise-based OMA-DM servers.
<!-- Device-Ext-WlanDnsSuffix-Description-End -->

<!-- Device-Ext-WlanDnsSuffix-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Ext-WlanDnsSuffix-Editable-End -->

<!-- Device-Ext-WlanDnsSuffix-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Ext-WlanDnsSuffix-DFProperties-End -->

<!-- Device-Ext-WlanDnsSuffix-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-WlanDnsSuffix-Examples-End -->

<!-- Device-Ext-WlanDnsSuffix-End -->

<!-- Device-Ext-WlanIPv4Address-Begin -->
### Ext/WlanIPv4Address

<!-- Device-Ext-WlanIPv4Address-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Ext-WlanIPv4Address-Applicability-End -->

<!-- Device-Ext-WlanIPv4Address-OmaUri-Begin -->
```Device
./DevDetail/Ext/WlanIPv4Address
```
<!-- Device-Ext-WlanIPv4Address-OmaUri-End -->

<!-- Device-Ext-WlanIPv4Address-Description-Begin -->
<!-- Description-Source-DDF -->
The IPv4 address of the active WiFi connection. Only exposed to Enterprise-based OMA-DM servers.
<!-- Device-Ext-WlanIPv4Address-Description-End -->

<!-- Device-Ext-WlanIPv4Address-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Ext-WlanIPv4Address-Editable-End -->

<!-- Device-Ext-WlanIPv4Address-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Ext-WlanIPv4Address-DFProperties-End -->

<!-- Device-Ext-WlanIPv4Address-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-WlanIPv4Address-Examples-End -->

<!-- Device-Ext-WlanIPv4Address-End -->

<!-- Device-Ext-WlanIPv6Address-Begin -->
### Ext/WlanIPv6Address

<!-- Device-Ext-WlanIPv6Address-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Ext-WlanIPv6Address-Applicability-End -->

<!-- Device-Ext-WlanIPv6Address-OmaUri-Begin -->
```Device
./DevDetail/Ext/WlanIPv6Address
```
<!-- Device-Ext-WlanIPv6Address-OmaUri-End -->

<!-- Device-Ext-WlanIPv6Address-Description-Begin -->
<!-- Description-Source-DDF -->
The IPv6 address of the active WiFi connection. Only exposed to Enterprise-based OMA-DM servers.
<!-- Device-Ext-WlanIPv6Address-Description-End -->

<!-- Device-Ext-WlanIPv6Address-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Ext-WlanIPv6Address-Editable-End -->

<!-- Device-Ext-WlanIPv6Address-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Ext-WlanIPv6Address-DFProperties-End -->

<!-- Device-Ext-WlanIPv6Address-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-WlanIPv6Address-Examples-End -->

<!-- Device-Ext-WlanIPv6Address-End -->

<!-- Device-Ext-WLANMACAddress-Begin -->
### Ext/WLANMACAddress

<!-- Device-Ext-WLANMACAddress-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Ext-WLANMACAddress-Applicability-End -->

<!-- Device-Ext-WLANMACAddress-OmaUri-Begin -->
```Device
./DevDetail/Ext/WLANMACAddress
```
<!-- Device-Ext-WLANMACAddress-OmaUri-End -->

<!-- Device-Ext-WLANMACAddress-Description-Begin -->
<!-- Description-Source-DDF -->
The MAC address of the active WiFi connection.
<!-- Device-Ext-WLANMACAddress-Description-End -->

<!-- Device-Ext-WLANMACAddress-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This isn't supported in Windows 10 for desktop editions.
<!-- Device-Ext-WLANMACAddress-Editable-End -->

<!-- Device-Ext-WLANMACAddress-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Ext-WLANMACAddress-DFProperties-End -->

<!-- Device-Ext-WLANMACAddress-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-WLANMACAddress-Examples-End -->

<!-- Device-Ext-WLANMACAddress-End -->

<!-- Device-Ext-WlanSubnetMask-Begin -->
### Ext/WlanSubnetMask

<!-- Device-Ext-WlanSubnetMask-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Ext-WlanSubnetMask-Applicability-End -->

<!-- Device-Ext-WlanSubnetMask-OmaUri-Begin -->
```Device
./DevDetail/Ext/WlanSubnetMask
```
<!-- Device-Ext-WlanSubnetMask-OmaUri-End -->

<!-- Device-Ext-WlanSubnetMask-Description-Begin -->
<!-- Description-Source-DDF -->
The subnet mask for the active WiFi connection. Only exposed to Enterprise-based OMA-DM servers.
<!-- Device-Ext-WlanSubnetMask-Description-End -->

<!-- Device-Ext-WlanSubnetMask-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Ext-WlanSubnetMask-Editable-End -->

<!-- Device-Ext-WlanSubnetMask-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Ext-WlanSubnetMask-DFProperties-End -->

<!-- Device-Ext-WlanSubnetMask-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Ext-WlanSubnetMask-Examples-End -->

<!-- Device-Ext-WlanSubnetMask-End -->

<!-- Device-FwV-Begin -->
## FwV

<!-- Device-FwV-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-FwV-Applicability-End -->

<!-- Device-FwV-OmaUri-Begin -->
```Device
./DevDetail/FwV
```
<!-- Device-FwV-OmaUri-End -->

<!-- Device-FwV-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the firmware version, as defined in the registry key HKEY_LOCAL_MACHINE\System\Platform\DeviceTargetingInfo\PhoneFirmwareRevision. For Windows 10 for desktop editions (Home, Pro, Enterprise, and Education), it returns the BIOS version as defined in the registry key HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS\BIOSVersion.
<!-- Device-FwV-Description-End -->

<!-- Device-FwV-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-FwV-Editable-End -->

<!-- Device-FwV-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-FwV-DFProperties-End -->

<!-- Device-FwV-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-FwV-Examples-End -->

<!-- Device-FwV-End -->

<!-- Device-HwV-Begin -->
## HwV

<!-- Device-HwV-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-HwV-Applicability-End -->

<!-- Device-HwV-OmaUri-Begin -->
```Device
./DevDetail/HwV
```
<!-- Device-HwV-OmaUri-End -->

<!-- Device-HwV-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the hardware version, as defined in the registry key HKEY_LOCAL_MACHINE\System\Platform\DeviceTargetingInfo\PhoneRadioHardwareRevision. For Windows 10 for desktop editions, it returns the BIOS version as defined in the registry key HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS\BIOSVersion.
<!-- Device-HwV-Description-End -->

<!-- Device-HwV-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-HwV-Editable-End -->

<!-- Device-HwV-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-HwV-DFProperties-End -->

<!-- Device-HwV-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-HwV-Examples-End -->

<!-- Device-HwV-End -->

<!-- Device-LrgObj-Begin -->
## LrgObj

<!-- Device-LrgObj-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-LrgObj-Applicability-End -->

<!-- Device-LrgObj-OmaUri-Begin -->
```Device
./DevDetail/LrgObj
```
<!-- Device-LrgObj-OmaUri-End -->

<!-- Device-LrgObj-Description-Begin -->
<!-- Description-Source-DDF -->
Returns whether the device uses OMA DM Large Object Handling, as defined in the specification SyncML Device Information, version 1.1.2.
<!-- Device-LrgObj-Description-End -->

<!-- Device-LrgObj-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-LrgObj-Editable-End -->

<!-- Device-LrgObj-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Get |
<!-- Device-LrgObj-DFProperties-End -->

<!-- Device-LrgObj-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-LrgObj-Examples-End -->

<!-- Device-LrgObj-End -->

<!-- Device-OEM-Begin -->
## OEM

<!-- Device-OEM-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-OEM-Applicability-End -->

<!-- Device-OEM-OmaUri-Begin -->
```Device
./DevDetail/OEM
```
<!-- Device-OEM-OmaUri-End -->

<!-- Device-OEM-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the name of the Original Equipment Manufacturer (OEM) as a string, as defined in the specification SyncML Device Information, version 1.1.2.
<!-- Device-OEM-Description-End -->

<!-- Device-OEM-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-OEM-Editable-End -->

<!-- Device-OEM-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-OEM-DFProperties-End -->

<!-- Device-OEM-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-OEM-Examples-End -->

<!-- Device-OEM-End -->

<!-- Device-SwV-Begin -->
## SwV

<!-- Device-SwV-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-SwV-Applicability-End -->

<!-- Device-SwV-OmaUri-Begin -->
```Device
./DevDetail/SwV
```
<!-- Device-SwV-OmaUri-End -->

<!-- Device-SwV-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the Windows 10 OS software version in the format MajorVersion. MinorVersion. BuildNumber. QFEnumber. Currently the BuildNumber returns the build number on the desktop and mobile build number on the phone. In the future, the build numbers may converge.
<!-- Device-SwV-Description-End -->

<!-- Device-SwV-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SwV-Editable-End -->

<!-- Device-SwV-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-SwV-DFProperties-End -->

<!-- Device-SwV-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SwV-Examples-End -->

<!-- Device-SwV-End -->

<!-- Device-URI-Begin -->
## URI

<!-- Device-URI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-URI-Applicability-End -->

<!-- Device-URI-OmaUri-Begin -->
```Device
./DevDetail/URI
```
<!-- Device-URI-OmaUri-End -->

<!-- Device-URI-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-URI-Description-End -->

<!-- Device-URI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-URI-Editable-End -->

<!-- Device-URI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-URI-DFProperties-End -->

<!-- Device-URI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-URI-Examples-End -->

<!-- Device-URI-End -->

<!-- Device-URI-MaxDepth-Begin -->
### URI/MaxDepth

<!-- Device-URI-MaxDepth-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-URI-MaxDepth-Applicability-End -->

<!-- Device-URI-MaxDepth-OmaUri-Begin -->
```Device
./DevDetail/URI/MaxDepth
```
<!-- Device-URI-MaxDepth-OmaUri-End -->

<!-- Device-URI-MaxDepth-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the maximum depth of the management tree that the device supports. The default is zero (0). This is the maximum number of URI segments that the device supports. The default value zero (0) indicates that the device supports a URI of unlimited depth.
<!-- Device-URI-MaxDepth-Description-End -->

<!-- Device-URI-MaxDepth-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-URI-MaxDepth-Editable-End -->

<!-- Device-URI-MaxDepth-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-URI-MaxDepth-DFProperties-End -->

<!-- Device-URI-MaxDepth-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-URI-MaxDepth-Examples-End -->

<!-- Device-URI-MaxDepth-End -->

<!-- Device-URI-MaxSegLen-Begin -->
### URI/MaxSegLen

<!-- Device-URI-MaxSegLen-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-URI-MaxSegLen-Applicability-End -->

<!-- Device-URI-MaxSegLen-OmaUri-Begin -->
```Device
./DevDetail/URI/MaxSegLen
```
<!-- Device-URI-MaxSegLen-OmaUri-End -->

<!-- Device-URI-MaxSegLen-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the total length of any URI segment in a URI that addresses a node or node property. The default is zero (0). This is the largest number of characters that the device can support in a single URI segment. The default value zero (0) indicates that the device supports URI segment of unlimited length.
<!-- Device-URI-MaxSegLen-Description-End -->

<!-- Device-URI-MaxSegLen-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-URI-MaxSegLen-Editable-End -->

<!-- Device-URI-MaxSegLen-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-URI-MaxSegLen-DFProperties-End -->

<!-- Device-URI-MaxSegLen-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-URI-MaxSegLen-Examples-End -->

<!-- Device-URI-MaxSegLen-End -->

<!-- Device-URI-MaxTotLen-Begin -->
### URI/MaxTotLen

<!-- Device-URI-MaxTotLen-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-URI-MaxTotLen-Applicability-End -->

<!-- Device-URI-MaxTotLen-OmaUri-Begin -->
```Device
./DevDetail/URI/MaxTotLen
```
<!-- Device-URI-MaxTotLen-OmaUri-End -->

<!-- Device-URI-MaxTotLen-Description-Begin -->
<!-- Description-Source-DDF -->
Returns the maximum total length of any URI used to address a node or node property. The default is zero (0). This is the largest number of characters in the URI that the device supports. The default value zero (0) indicates that the device supports a URI of unlimited length.
<!-- Device-URI-MaxTotLen-Description-End -->

<!-- Device-URI-MaxTotLen-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-URI-MaxTotLen-Editable-End -->

<!-- Device-URI-MaxTotLen-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-URI-MaxTotLen-DFProperties-End -->

<!-- Device-URI-MaxTotLen-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-URI-MaxTotLen-Examples-End -->

<!-- Device-URI-MaxTotLen-End -->

<!-- DevDetail-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- DevDetail-CspMoreInfo-End -->

<!-- DevDetail-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
