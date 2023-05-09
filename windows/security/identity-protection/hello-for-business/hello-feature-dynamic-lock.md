---
title: Dynamic lock
description: Learn how to configure dynamic lock on Windows devices via group policies. This feature locks a device when a Bluetooth signal falls below a set value.
ms.date: 03/10/2023
ms.topic: how-to
---

# Dynamic lock

Dynamic lock is a feature that automatically locks a Windows device when a Bluetooth paired phone signal falls below the maximum Received Signal Strength Indicator (RSSI) value. The feature makes it more difficult for someone to gain access to your device if you step away from your PC and forget to lock it.

> [!IMPORTANT]
> The dynamic lock feature only locks the device if the Bluetooth signal falls **and** the system is idle. If the system isn't idle (for example, an intruder gets access *before* the Bluetooth signal falls below the limit), the device won't lock. Therefore, the dynamic lock feature is an additional barrier. It doesn't replace the need for the user to lock the computer. It only reduces the probability of someone gaining access if the user forgets to lock it.

You can configure Windows devices to use the **dynamic lock** using a Group Policy Object (GPO).

1. Using the Group Policy Management Console (GPMC), scope a domain-based Group Policy to computer accounts in Active Directory.
1. Edit the Group Policy object from Step 1.
1. Enable the **Configure dynamic lock factors** policy setting located under **Computer Configuration > Administrative Templates > Windows Components > Windows Hello for Business**.
1. Close the Group Policy Management Editor to save the Group Policy object.

The Group Policy Editor, when the policy is enabled, creates a default signal rule policy with the following value:

```xml
<rule schemaVersion="1.0">
    <signal type="bluetooth" scenario="Dynamic Lock" classOfDevice="512" rssiMin="-10" rssiMaxDelta="-10"/>
</rule>
```

>[!IMPORTANT]
>Microsoft recommends using the default values for this policy settings.  Measurements are relative based on the varying conditions of each environment.  Therefore, the same values may produce different results. Test policy settings in each environment prior to broadly deploying the setting.

For this policy setting, the **type** and **scenario** attribute values are static and can't change. The **classofDevice** is configurable but Phone is the only currently supported configuration. The attribute defaults to Phone and uses the values from the following table:

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

The **rssiMin** attribute value signal indicates the strength needed for the device to be considered *in-range*.  The default value of **-10** enables a user to move about an average size office or cubicle without triggering Windows to lock the device.  The **rssiMaxDelta** has a default value of **-10**, which instruct Windows to lock the device once the signal strength weakens by more than measurement of 10.  

RSSI measurements are relative and lower as the bluetooth signals between the two paired devices reduces. Therefore a measurement of 0 is stronger than -10, which is stronger than -60, which is an indicator the devices are moving further apart from each other.
