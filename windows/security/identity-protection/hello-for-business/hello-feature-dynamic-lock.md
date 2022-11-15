---
title: Dynamic lock
description: Learn how to set Dynamic lock on Windows 10 and Windows 11 devices, by configuring group policies. This feature locks a device when a Bluetooth signal falls below a set value.
ms.prod: windows-client
author: paolomatarazzo
ms.author: paoloma
manager: aaroncz
ms.reviewer: prsriva
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 07/12/2022
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
ms.technology: itpro-security
---

# Dynamic lock

Dynamic lock enables you to configure Windows devices to automatically lock when Bluetooth paired device signal falls below the maximum Received Signal Strength Indicator (RSSI) value. This makes it more difficult for someone to gain access to your device if you step away from your PC and forget to lock it.

> [!IMPORTANT]
> This feature only locks the computer if the Bluetooth signal falls and the system is idle. If the system isn't idle (for example, an intruder gets access _before_ the Bluetooth signal falls below the limit), the device won't lock. Therefore, the dynamic lock feature is an additional barrier. It doesn't replace the need for the user to lock the computer. It only reduces the probability of someone gaining access if the user forgets to lock it.

You configure the dynamic lock policy using Group Policy.  You can locate the policy setting at **Computer Configuration\Administrative Templates\Windows Components\Windows Hello for Business**.  The name of the policy is **Configure dynamic lock factors**.

The Group Policy Editor, when the policy is enabled, creates a default signal rule policy with the following value:

```
<rule schemaVersion="1.0">
	<signal type="bluetooth" scenario="Dynamic Lock" classOfDevice="512" rssiMin="-10" rssiMaxDelta="-10"/>
</rule>
```

>[!IMPORTANT]
>Microsoft recommends using the default values for this policy settings.  Measurements are relative based on the varying conditions of each environment.  Therefore, the same values may produce different results. Test policy settings in each environment prior to broadly deploying the setting.

For this policy setting, the **type** and **scenario** attribute values are static and cannot change.  The **classofDevice** is configurable but Phone is the only currently supported configuration. The attribute defaults to Phones and uses the values from the following table:

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

The **rssiMin** attribute value signal indicates the strength needed for the device to be considered "in-range".  The default value of **-10** enables a user to move about an average size office or cubicle without triggering Windows to lock the device.  The **rssiMaxDelta** has a default value of **-10**, which instruct Windows to lock the device once the signal strength weakens by more than measurement of 10.  

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
