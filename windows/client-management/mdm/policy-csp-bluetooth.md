---
title: Bluetooth Policy CSP
description: Learn more about the Bluetooth Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 05/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- Bluetooth-Begin -->
# Policy CSP - Bluetooth

<!-- Bluetooth-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Bluetooth-Editable-End -->

<!-- AllowAdvertising-Begin -->
## AllowAdvertising

<!-- AllowAdvertising-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowAdvertising-Applicability-End -->

<!-- AllowAdvertising-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Bluetooth/AllowAdvertising
```
<!-- AllowAdvertising-OmaUri-End -->

<!-- AllowAdvertising-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether the device can send out Bluetooth advertisements. If this isn't set or it's deleted, the default value of 1 (Allow) is used. Most restricted value is 0.
<!-- AllowAdvertising-Description-End -->

<!-- AllowAdvertising-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowAdvertising-Editable-End -->

<!-- AllowAdvertising-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowAdvertising-DFProperties-End -->

<!-- AllowAdvertising-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. When set to 0, the device won't send out advertisements. To verify, use any Bluetooth LE app and enable it to do advertising. Then, verify that the advertisement isn't received by the peripheral. |
| 1 (Default) | Allowed. When set to 1, the device will send out advertisements. To verify, use any Bluetooth LE app and enable it to do advertising. Then, verify that the advertisement is received by the peripheral. |
<!-- AllowAdvertising-AllowedValues-End -->

<!-- AllowAdvertising-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowAdvertising-Examples-End -->

<!-- AllowAdvertising-End -->

<!-- AllowDiscoverableMode-Begin -->
## AllowDiscoverableMode

<!-- AllowDiscoverableMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowDiscoverableMode-Applicability-End -->

<!-- AllowDiscoverableMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Bluetooth/AllowDiscoverableMode
```
<!-- AllowDiscoverableMode-OmaUri-End -->

<!-- AllowDiscoverableMode-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether other Bluetooth-enabled devices can discover the device. If this isn't set or it's deleted, the default value of 1 (Allow) is used. Most restricted value is 0.
<!-- AllowDiscoverableMode-Description-End -->

<!-- AllowDiscoverableMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowDiscoverableMode-Editable-End -->

<!-- AllowDiscoverableMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowDiscoverableMode-DFProperties-End -->

<!-- AllowDiscoverableMode-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. When set to 0, other devices won't be able to detect the device. To verify, open the Bluetooth control panel on the device. Then, go to another Bluetooth-enabled device, open the Bluetooth control panel, and verify that you can't see the name of the device. |
| 1 (Default) | Allowed. When set to 1, other devices will be able to detect the device. To verify, open the Bluetooth control panel on the device. Then, go to another Bluetooth-enabled device, open the Bluetooth control panel and verify that you can discover it. |
<!-- AllowDiscoverableMode-AllowedValues-End -->

<!-- AllowDiscoverableMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowDiscoverableMode-Examples-End -->

<!-- AllowDiscoverableMode-End -->

<!-- AllowPrepairing-Begin -->
## AllowPrepairing

<!-- AllowPrepairing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowPrepairing-Applicability-End -->

<!-- AllowPrepairing-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Bluetooth/AllowPrepairing
```
<!-- AllowPrepairing-OmaUri-End -->

<!-- AllowPrepairing-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether to allow specific bundled Bluetooth peripherals to automatically pair with the host device.
<!-- AllowPrepairing-Description-End -->

<!-- AllowPrepairing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowPrepairing-Editable-End -->

<!-- AllowPrepairing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowPrepairing-DFProperties-End -->

<!-- AllowPrepairing-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowPrepairing-AllowedValues-End -->

<!-- AllowPrepairing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowPrepairing-Examples-End -->

<!-- AllowPrepairing-End -->

<!-- AllowPromptedProximalConnections-Begin -->
## AllowPromptedProximalConnections

<!-- AllowPromptedProximalConnections-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- AllowPromptedProximalConnections-Applicability-End -->

<!-- AllowPromptedProximalConnections-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Bluetooth/AllowPromptedProximalConnections
```
<!-- AllowPromptedProximalConnections-OmaUri-End -->

<!-- AllowPromptedProximalConnections-Description-Begin -->
<!-- Description-Source-DDF -->
This policy allows the IT admin to block users on these managed devices from using Swift Pair and other proximity based scenarios.
<!-- AllowPromptedProximalConnections-Description-End -->

<!-- AllowPromptedProximalConnections-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowPromptedProximalConnections-Editable-End -->

<!-- AllowPromptedProximalConnections-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowPromptedProximalConnections-DFProperties-End -->

<!-- AllowPromptedProximalConnections-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disallow. Block users on these managed devices from using Swift Pair and other proximity based scenarios. |
| 1 (Default) | Allow. Allow users on these managed devices to use Swift Pair and other proximity based scenarios. |
<!-- AllowPromptedProximalConnections-AllowedValues-End -->

<!-- AllowPromptedProximalConnections-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowPromptedProximalConnections-Examples-End -->

<!-- AllowPromptedProximalConnections-End -->

<!-- LocalDeviceName-Begin -->
## LocalDeviceName

<!-- LocalDeviceName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- LocalDeviceName-Applicability-End -->

<!-- LocalDeviceName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Bluetooth/LocalDeviceName
```
<!-- LocalDeviceName-OmaUri-End -->

<!-- LocalDeviceName-Description-Begin -->
<!-- Description-Source-DDF -->
Sets the local Bluetooth device name. If this is set, the value that it's set to will be used as the Bluetooth device name. To verify the policy is set, open the Bluetooth control panel on the device. Then, go to another Bluetooth-enabled device, open the Bluetooth control panel, and verify that the value that was specified. If this policy isn't set or it's deleted, the default local radio name is used.
<!-- LocalDeviceName-Description-End -->

<!-- LocalDeviceName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LocalDeviceName-Editable-End -->

<!-- LocalDeviceName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LocalDeviceName-DFProperties-End -->

<!-- LocalDeviceName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LocalDeviceName-Examples-End -->

<!-- LocalDeviceName-End -->

<!-- ServicesAllowedList-Begin -->
## ServicesAllowedList

<!-- ServicesAllowedList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- ServicesAllowedList-Applicability-End -->

<!-- ServicesAllowedList-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Bluetooth/ServicesAllowedList
```
<!-- ServicesAllowedList-OmaUri-End -->

<!-- ServicesAllowedList-Description-Begin -->
<!-- Description-Source-DDF -->
Set a list of allowable services and profiles. String hex formatted array of Bluetooth service UUIDs in canonical format, delimited by semicolons. For example, {782AFCFC-7. CAA-436. C-8. BF0-78. CD0FFBD4AF}. The default value is an empty string. For more information, see ServicesAllowedList usage guide.
<!-- ServicesAllowedList-Description-End -->

<!-- ServicesAllowedList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ServicesAllowedList-Editable-End -->

<!-- ServicesAllowedList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- ServicesAllowedList-DFProperties-End -->

<!-- ServicesAllowedList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ServicesAllowedList-Examples-End -->

<!-- ServicesAllowedList-End -->

<!-- SetMinimumEncryptionKeySize-Begin -->
## SetMinimumEncryptionKeySize

<!-- SetMinimumEncryptionKeySize-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- SetMinimumEncryptionKeySize-Applicability-End -->

<!-- SetMinimumEncryptionKeySize-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Bluetooth/SetMinimumEncryptionKeySize
```
<!-- SetMinimumEncryptionKeySize-OmaUri-End -->

<!-- SetMinimumEncryptionKeySize-Description-Begin -->
<!-- Description-Source-DDF -->
There are multiple levels of encryption strength when pairing Bluetooth devices. This policy helps prevent weaker devices cryptographically being used in high security environments.
<!-- SetMinimumEncryptionKeySize-Description-End -->

<!-- SetMinimumEncryptionKeySize-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SetMinimumEncryptionKeySize-Editable-End -->

<!-- SetMinimumEncryptionKeySize-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[1-16]` |
| Default Value  | 0 |
<!-- SetMinimumEncryptionKeySize-DFProperties-End -->

<!-- SetMinimumEncryptionKeySize-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetMinimumEncryptionKeySize-Examples-End -->

<!-- SetMinimumEncryptionKeySize-End -->

<!-- Bluetooth-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
## ServicesAllowedList usage guide

When the Bluetooth/ServicesAllowedList policy is provisioned, it will only allow pairing and connections of Windows PCs and phones to explicitly defined Bluetooth profiles and services. It's an allowed list, enabling admins to still allow custom Bluetooth profiles that aren't defined by the Bluetooth Special Interests Group (SIG).

- Disabling a service shall block incoming and outgoing connections for such services
- Disabling a service shall not publish an SDP record containing the service being blocked
- Disabling a service shall not allow SDP to expose a record for a blocked service
- Disabling a service shall log when a service is blocked for auditing purposes
- Disabling a service shall take effect upon reload of the stack or system reboot

To define which profiles and services are allowed, enter the semicolon delimited profile or service Universally Unique Identifiers (UUID). To get a profile UUID, refer to the [Service Discovery](https://www.bluetooth.com/specifications/assigned-numbers/service-discovery) page on the Bluetooth SIG website.

These UUIDs all use the same base UUID with the profile identifiers added to the beginning of the base UUID.

Here are some examples:

**Example of how to enable Hands Free Profile (HFP)**:

BASE_UUID = 0x00000000-0000-1000-8000-00805F9B34FB

| UUID name               | Protocol specification     | UUID   |
|-------------------------|----------------------------|--------|
| HFP(Hands Free Profile) | Hands-Free Profile (HFP) * | 0x111E |

Footnote: * Used as both Service Class Identifier and Profile Identifier.

Hands Free Profile UUID = base UUID + 0x111E to the beginning = 0000**111E**-0000-1000-8000-00805F9B34FB

**Allow Audio Headsets (Voice)**:

| Profile                  | Reasoning                             | UUID   |
|--------------------------|---------------------------------------|--------|
| HFP (Hands Free Profile) | For voice-enabled headsets            | 0x111E |
| Generic Audio Service    | Generic audio service                 | 0x1203 |
| Headset Service Class    | For older voice-enabled headsets      | 0x1108 |
| PnP Information          | Used to identify devices occasionally | 0x1200 |

If you only want Bluetooth headsets, the UUIDs to include are: `{0000111E-0000-1000-8000-00805F9B34FB};{00001203-0000-1000-8000-00805F9B34FB};{00001108-0000-1000-8000-00805F9B34FB};{00001200-0000-1000-8000-00805F9B34FB}`.

<!--
**Allow Audio Headsets only (Voice)**

|Profile  |Reasoning  |UUID  |
|---------|---------|---------|
|HFP (Hands Free Profile)     |For voice enabled headsets         |0x111E        |
|GAP (Generic Access Profile)*     |Generic service used by Bluetooth         |0x1800         |
|DID (Device ID)*     |Generic service used by Bluetooth         |0x180A         |
|Scan Parameters*     |Generic service used by Bluetooth         |0x1813         |

Footnote: * *GAP, DID, and Scan Parameter are required, as these are underlying profiles and services used by all Bluetooth devices.

This means that if you only want Bluetooth headsets, the UUIDs are:

{0000111E-0000-1000-8000-00805F9B34FB};{00001800-0000-1000-8000-00805F9B34FB};{0000180A-0000-1000-8000-00805F9B34FB};{00001813-0000-1000-8000-00805F9B34FB}
-->

**Allow Audio Headsets and Speakers (Voice & Music)**:

|Profile  |Reasoning  |UUID  |
|---------|---------|---------|
|HFP (Hands Free Profile)     |For voice enabled headsets         |0x111E         |
|A2DP Source (Advance Audio Distribution)|For streaming to Bluetooth speakers         |0x110B|
|Generic Audio Service|Generic service used by Bluetooth|0x1203|
|Headset Service Class|For older voice-enabled headsets|0x1108|
|AV Remote Control Target Service|For controlling audio remotely|0x110C|
|AV Remote Control Service|For controlling audio remotely|0x110E|
|AV Remote Control Controller Service|For controlling audio remotely|0x110F|
|PnP Information|Used to identify devices occasionally|0x1200|

{0000111E-0000-1000-8000-00805F9B34FB};{0000110B-0000-1000-8000-00805F9B34FB};{00001203-0000-1000-8000-00805F9B34FB};{00001108-0000-1000-8000-00805F9B34FB};{0000110C-0000-1000-8000-00805F9B34FB};{0000110E-0000-1000-8000-00805F9B34FB};{0000110F-0000-1000-8000-00805F9B34FB};{00001200-0000-1000-8000-00805F9B34FB};

**Classic Keyboards and Mice**:

|Profile  |Reasoning  |UUID  |
|---------|---------|---------|
|HID (Human Interface Device)     |For classic BR/EDR keyboards and mice         |0x1124         |
|PnP Information|Used to identify devices occasionally|0x1200|

{00001124-0000-1000-8000-00805F9B34FB};{00001200-0000-1000-8000-00805F9B34FB};

**LE Keyboards and Mice**:

|Profile  |Reasoning  |UUID  |
|---------|---------|---------|
|Generic Access Attribute     |For the LE Protocol         |0x1801         |
|HID Over GATT *     |For LE keyboards and mice         |0x1812         |
|GAP (Generic Access Profile)     |Generic service used by Bluetooth         |0x1800         |
|DID (Device ID)     |Generic service used by Bluetooth         |0x180A         |
|Scan Parameters     |Generic service used by Bluetooth         |0x1813         |

Footnote: * The Surface pen uses the HID over GATT profile

{00001801-0000-1000-8000-00805F9B34FB};{00001812-0000-1000-8000-00805F9B34FB};{00001800-0000-1000-8000-00805F9B34FB};{0000180A-0000-1000-8000-00805F9B34FB};{00001813-0000-1000-8000-00805F9B34FB}

**Allow File Transfer**:

|Profile  |Reasoning  |UUID  |
|---------|---------|---------|
|OBEX Object Push (OPP)     |For file transfer         |0x1105         |
|Object Exchange (OBEX)     |Protocol for file transfer         |0x0008         |
|PnP Information|Used to identify devices occasionally|0x1200|

{00001105-0000-1000-8000-00805F9B34FB};{00000008-0000-1000-8000-00805F9B34FB};{00001200-0000-1000-8000-00805F9B34FB}

Disabling file transfer shall have the following effects:

- Fsquirt shall not allow sending of files
- Fsquirt shall not allow receiving of files
- Fsquirt shall display error message informing user of policy preventing file transfer
- 3rd-party apps shall not be permitted to send or receive files using MSFT Bluetooth API
<!-- Bluetooth-CspMoreInfo-End -->

<!-- Bluetooth-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
