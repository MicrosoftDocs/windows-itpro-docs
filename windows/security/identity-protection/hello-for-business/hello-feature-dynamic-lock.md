---
title: Conditional Access
description: Conditional Access
keywords: identity, PIN, biometric, Hello, passport, WHFB, hybrid, cert-trust, device, registration, unlock, conditional access
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
audience: ITPro
author: mapalko
ms.author: mapalko
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 09/09/2019
ms.reviewer: 
---

## Dynamic lock

**Requirements:**

* Windows 10, version 1703

Dynamic lock enables you to configure Windows 10 devices to automatically lock when Bluetooth paired device signal falls below the maximum Received Signal Strength Indicator (RSSI) value.  You configure the dynamic lock policy using Group Policy.  You can locate the policy setting at **Computer Configuration\Administrative Templates\Windows Components\Windows Hello for Business**.  The name of the policy is **Configure dynamic lock factors**.

The Group Policy Editor, when the policy is enabled, creates a default signal rule policy with the following value:

```
<rule schemaVersion="1.0">
	<signal type="bluetooth" scenario="Dynamic Lock" classOfDevice="512" rssiMin="-10" rssiMaxDelta="-10"/>
</rule>
```

>[!IMPORTANT]
>Microsoft recommends using the default values for this policy settings.  Measurements are relative based on the varying conditions of each environment.  Therefore, the same values may produce different results. Test policy settings in each environment prior to broadly deploying the setting.

For this policy setting, the **type** and **scenario** attribute values are static and cannot change.  The **classofDevice** is configurable but Phone is the only currently supported configuration. The attribute defaults to Phones sand uses the values from the following table:

|Description|Value|
|:-------------|:-------:|
|Miscellaneous|0|
|Computer|256|
|Phone|512|
|LAN/Network Access Point|768|
|Audio/Video|1024|
|Peripheral|1280|
|Imaging|1536|
|Wearable|1792|
|Toy|2048|
|Health|2304|
|Uncategorized|7936|

The **rssiMin** attribute value signal indicates the strength needed for the device to be considered "in-range".  The default value of **-10** enables a user to move about an average size office or cubicle without triggering Windows to lock the device.  The **rssiMaxDelta** has a default value of **-10**, which instruct Windows 10 to lock the device once the signal strength weakens by more than measurement of 10.  

RSSI measurements are relative and lower as the bluetooth signals between the two paired devices reduces. Therefore a measurement of 0 is stronger than -10, which is stronger than -60, which is an indicator the devices are moving further apart from each other.

## Related topics

* [Windows Hello for Business](hello-identity-verification.md)
* [Manage Windows Hello for Business in your organization](hello-manage-in-organization.md)
* [Why a PIN is better than a password](hello-why-pin-is-better-than-password.md)
* [Prepare people to use Windows Hello](hello-prepare-people-to-use.md)
* [Windows Hello and password changes](hello-and-password-changes.md)
* [Windows Hello errors during PIN creation](hello-errors-during-pin-creation.md)
* [Event ID 300 - Windows Hello successfully created](hello-event-300.md)
* [Windows Hello biometrics in the enterprise](hello-biometrics-in-enterprise.md)
