---
title: WindowsAutopilot CSP
description: Learn how without the ability to mark a device as remediation required, the device will remain in a broken state, which results in security and privacy concerns in Autopilot.
ms.date: 05/09/2022
---

# WindowsAutopilot CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|Yes|
|Windows SE|No|Yes|
|Business|No|Yes|
|Enterprise|No|Yes|
|Education|No|Yes|

> [!WARNING]
> Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The WindowsAutopilot CSP exposes Windows Autopilot related device information. The WindowsAutopilot CSP collects hardware information about a device and formats it into a BLOB. This BLOB is used as input for calling Windows Autopilot Service to mark a device as remediation required if the device underwent a hardware change that affects its ability to use Windows Autopilot.

**./Vendor/MSFT/WindowsAutopilot**

Root node for the WindowsAutopilot configuration service provider.
Supported operation is Get.

**HardwareMismatchRemediationData**

Interior node for the HardwareMismatchRemediationData configuration service provider. Collects hardware information about a device and returns it as an encoded string. This string is used as input for calling Windows Autopilot Service to remediate a device if the device underwent a hardware change that affects its ability to use Windows Autopilot.

Supported operation is Get.

## Related topics

[Configuration service provider reference](index.yml)