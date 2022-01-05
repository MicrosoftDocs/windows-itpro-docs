---
title: Policy CSP - HumanPresence
description: Use the Policy CSP - HumanPresence setting allows wake on approach and lock on leave that can be managed from MDM.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: dansimp
---

# Policy CSP - HumanPresence



<hr/>

<!--Policies-->
## HumanPresence policies  

<dl>
  <dd>
    <a href="#humanpresence-forceinstantlock">HumanPresence/ForceInstantLock</a>
  </dd>
  <dd>
    <a href="#humanpresence-forceinstantwake">HumanPresence/ForceInstantWake</a>
  </dd>
  <dd>
    <a href="#humanpresence-forcelocktimeout">HumanPresence/ForceLockTimeout</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="humanpresence-forceinstantlock"></a>**HumanPresence/ForceInstantLock**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
|Enterprise|No|Yes|
|Education|No|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy specifies whether the device can lock when a human presence sensor detects a human.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Implements wake on approach and lock on leave that can be managed from MDM*
-   GP name: *ForceInstantLock*
-   GP path: *Windows Components/HumanPresence*
-   GP ADMX file name: *HumanPresence.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 2 = ForcedOff
- 1 = ForcedOn
- 0 = DefaultToUserChoice
- Defaults to 0.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="humanpresence-forceinstantwake"></a>**HumanPresence/ForceInstantWake**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy specifies whether the device can lock when a human presence sensor detects a human.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Implements wake on approach and lock on leave that can be managed from MDM*
-   GP name: *ForceInstantWake*
-   GP path: *Windows Components/HumanPresence*
-   GP ADMX file name: *HumanPresence.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 2 = ForcedOff
- 1 = ForcedOn
- 0 = DefaultToUserChoice
- Defaults to 0.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="humanpresence-forcelocktimeout"></a>**HumanPresence/ForceLockTimeout**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy specifies at what distance the sensor wakes up when it sees a human in seconds.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Implements wake on approach and lock on leave that can be managed from MDM*
-   GP name: *ForceLockTimeout*
-   GP path: *Windows Components/HumanPresence*
-   GP ADMX file name: *HumanPresence.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Integer value that specifies whether the device can lock when a human presence sensor detects a human.

The following list shows the supported values:

- 120 = 120 seconds
- 30 = 30 seconds
- 10 = 10 seconds
- 0 = DefaultToUserChoice
- Defaults to 0

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--/Policies-->

