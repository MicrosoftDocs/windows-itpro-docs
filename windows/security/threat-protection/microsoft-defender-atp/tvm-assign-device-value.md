---
title: Assign device value - threat and vulnerability management
description: Learn how to assign a low, normal, or high value to a device to help you differentiate between asset priorities.
keywords: microsoft defender atp device value, threat and vulnerability management device value, high value devices, device value exposure score
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: ellevin
author: levinec
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security-compliance 
- m365initiative-defender-endpoint 
ms.topic: article
---

# Assign device value - threat and vulnerability management

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-portaloverview-abovefoldlink)

[!include[Prerelease information](../../includes/prerelease.md)]

Defining a device’s value helps you differentiate between asset priorities. The device value is used to incorporate the risk appetite of an individual asset into the threat and vulnerability management exposure score calculation. Devices assigned as “high value” will receive more weight.

You can also use the [set device value API](set-device-value.md).

Device value options:

- Low
- Normal (Default)
- High

Examples of devices that should be assigned a high value:

- Domain controllers, Active Directory
- Internet facing devices
- VIP devices
- Devices hosting internal/external production services

## Choose device value

1. Navigate to any device page, the easiest place is from the device inventory.

2. Select **Device value** from three dots next to the actions bar at the top of the page.
    ![Example of the device value dropdown.](images/tvm-device-value-dropdown.png)

<br><br>

3. A flyout will appear with the current device value and what it means. Review the value of the device and choose the one that best fits your device.
![Example of the device value flyout.](images/tvm-device-value-flyout.png)

## Related topics

- [Threat and vulnerability management overview](next-gen-threat-and-vuln-mgt.md)
- [APIs](next-gen-threat-and-vuln-mgt.md#apis)
