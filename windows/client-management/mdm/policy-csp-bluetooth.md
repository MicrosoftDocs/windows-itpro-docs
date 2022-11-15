---
title: Policy CSP - Bluetooth
description: Learn how the Policy CSP - Bluetooth setting specifies whether the device can send out Bluetooth advertisements.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 02/12/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - Bluetooth

<hr/>

<!--Policies-->
## Bluetooth policies

<dl>
  <dd>
    <a href="#bluetooth-allowadvertising">Bluetooth/AllowAdvertising</a>
  </dd>
  <dd>
    <a href="#bluetooth-allowdiscoverablemode">Bluetooth/AllowDiscoverableMode</a>
  </dd>
  <dd>
    <a href="#bluetooth-allowprepairing">Bluetooth/AllowPrepairing</a>
  </dd>
  <dd>
    <a href="#bluetooth-allowpromptedproximalconnections">Bluetooth/AllowPromptedProximalConnections</a>
  </dd>
  <dd>
    <a href="#bluetooth-localdevicename">Bluetooth/LocalDeviceName</a>
  </dd>
  <dd>
    <a href="#bluetooth-servicesallowedlist">Bluetooth/ServicesAllowedList</a>
  </dd>
  <dd>
    <a href="#bluetooth-setminimumencryptionkeysize">Bluetooth/SetMinimumEncryptionKeySize</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="bluetooth-allowadvertising"></a>**Bluetooth/AllowAdvertising**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy specifies whether the device can send out Bluetooth advertisements.

If this policy isn't set or is deleted, the default value of 1 (Allow) is used.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed. When set to 0, the device won't send out advertisements. To verify, use any Bluetooth LE app and enable it to do advertising. Then, verify that the advertisement isn't received by the peripheral.
-   1 (default) – Allowed. When set to 1, the device will send out advertisements. To verify, use any Bluetooth LE app and enable it to do advertising. Then, verify that the advertisement is received by the peripheral.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="bluetooth-allowdiscoverablemode"></a>**Bluetooth/AllowDiscoverableMode**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy specifies whether other Bluetooth-enabled devices can discover the device.

If this policy isn't set or is deleted, the default value of 1 (Allow) is used.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed. When set to 0, other devices won't be able to detect the device. To verify, open the Bluetooth control panel on the device. Then, go to another Bluetooth-enabled device, open the Bluetooth control panel, and verify that you can't see the name of the device.
-   1 (default) – Allowed. When set to 1, other devices will be able to detect the device. To verify, open the Bluetooth control panel on the device. Then, go to another Bluetooth-enabled device, open the Bluetooth control panel and verify that you can discover it.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="bluetooth-allowprepairing"></a>**Bluetooth/AllowPrepairing**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy specifies whether to allow specific bundled Bluetooth peripherals to automatically pair with the host device.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default)– Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="bluetooth-allowpromptedproximalconnections"></a>**Bluetooth/AllowPromptedProximalConnections**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy allows the IT admin to block users on these managed devices from using Swift Pair and other proximity based scenarios.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Disallow. Block users on these managed devices from using Swift Pair and other proximity based scenarios
-   1 - Allow (default). Allow users on these managed devices to use Swift Pair and other proximity based scenarios

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="bluetooth-localdevicename"></a>**Bluetooth/LocalDeviceName**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Sets the local Bluetooth device name.

If this name is set, the value that it's set to will be used as the Bluetooth device name. To verify the policy is set, open the Bluetooth control panel on the device. Then, go to another Bluetooth-enabled device, open the Bluetooth control panel, and verify that the value that was specified.

If this policy isn't set or is deleted, the default local radio name is used.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="bluetooth-servicesallowedlist"></a>**Bluetooth/ServicesAllowedList**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Set a list of allowable services and profiles. String hex formatted array of Bluetooth service UUIDs in canonical format, delimited by semicolons. For example, {782AFCFC-7CAA-436C-8BF0-78CD0FFBD4AF}.

The default value is an empty string. For more information, see [ServicesAllowedList usage guide](#servicesallowedlist-usage-guide)

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="bluetooth-setminimumencryptionkeysize"></a>**Bluetooth/SetMinimumEncryptionKeySize**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
There are multiple levels of encryption strength when pairing Bluetooth devices. This policy helps prevent weaker devices cryptographically being used in high security environments.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:
- 0 (default) - All Bluetooth traffic is allowed.
- N - A number from 1 through 16 representing the bytes that must be used in the encryption process. Currently, 16 is the largest allowed value for N and 16 bytes is the largest key size that Bluetooth supports. If you want to enforce Windows to always use Bluetooth encryption, ignoring the precise encryption key strength, use 1 as the value for N.

For more information on allowed key sizes, see Bluetooth Core Specification v5.1.

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>


<!--/Policies-->

<hr/>

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

**Example of how to enable Hands Free Profile (HFP)**

BASE_UUID = 0x00000000-0000-1000-8000-00805F9B34FB

|UUID name  |Protocol specification  |UUID  |
|---------|---------|---------|
|HFP(Hands Free Profile)     |Hands-Free Profile (HFP) *         |0x111E         |

Footnote: * Used as both Service Class Identifier and Profile Identifier.

Hands Free Profile UUID = base UUID + 0x111E to the beginning = 0000**111E**-0000-1000-8000-00805F9B34FB

**Allow Audio Headsets (Voice)**

|Profile|Reasoning|UUID|
|-|-|-|
|HFP (Hands Free Profile)|For voice-enabled headsets|0x111E|
|Generic Audio Service|Generic audio service|0x1203|
|Headset Service Class|For older voice-enabled headsets|0x1108|
|PnP Information|Used to identify devices occasionally|0x1200|

If you only want Bluetooth headsets, the UUIDs to include are:

{0000111E-0000-1000-8000-00805F9B34FB};{00001203-0000-1000-8000-00805F9B34FB};{00001108-0000-1000-8000-00805F9B34FB};{00001200-0000-1000-8000-00805F9B34FB}

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

**Allow Audio Headsets and Speakers (Voice & Music)**

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

**Classic Keyboards and Mice**

|Profile  |Reasoning  |UUID  |
|---------|---------|---------|
|HID (Human Interface Device)     |For classic BR/EDR keyboards and mice         |0x1124         |
|PnP Information|Used to identify devices occasionally|0x1200|

{00001124-0000-1000-8000-00805F9B34FB};{00001200-0000-1000-8000-00805F9B34FB};


**LE Keyboards and Mice**

|Profile  |Reasoning  |UUID  |
|---------|---------|---------|
|Generic Access Attribute     |For the LE Protocol         |0x1801         |
|HID Over GATT *     |For LE keyboards and mice         |0x1812         |
|GAP (Generic Access Profile)     |Generic service used by Bluetooth         |0x1800         |
|DID (Device ID)     |Generic service used by Bluetooth         |0x180A         |
|Scan Parameters     |Generic service used by Bluetooth         |0x1813         |

Footnote: * The Surface pen uses the HID over GATT profile

{00001801-0000-1000-8000-00805F9B34FB};{00001812-0000-1000-8000-00805F9B34FB};{00001800-0000-1000-8000-00805F9B34FB};{0000180A-0000-1000-8000-00805F9B34FB};{00001813-0000-1000-8000-00805F9B34FB}

**Allow File Transfer**

|Profile  |Reasoning  |UUID  |
|---------|---------|---------|
|OBEX Object Push (OPP)     |For file transfer         |0x1105         |
|Object Exchange (OBEX)     |Protocol for file transfer         |0x0008         |
|PnP Information|Used to identify devices occasionally|0x1200|

{00001105-0000-1000-8000-00805F9B34FB};{00000008-0000-1000-8000-00805F9B34FB};{00001200-0000-1000-8000-00805F9B34FB}

Disabling file transfer shall have the following effects
- Fsquirt shall not allow sending of files
- Fsquirt shall not allow receiving of files
- Fsquirt shall display error message informing user of policy preventing file transfer
- 3rd-party apps shall not be permitted to send or receive files using MSFT Bluetooth API

