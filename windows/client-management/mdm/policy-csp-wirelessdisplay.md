---
title: Policy CSP - WirelessDisplay
description: Use the Policy CSP - WirelessDisplay setting to turn off the Wireless Display multicast DNS service advertisement from a Wireless Display receiver.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - WirelessDisplay

<hr/>

<!--Policies-->
## WirelessDisplay policies

<dl>
  <dd>
    <a href="#wirelessdisplay-allowmdnsadvertisement">WirelessDisplay/AllowMdnsAdvertisement</a>
  </dd>
  <dd>
    <a href="#wirelessdisplay-allowmdnsdiscovery">WirelessDisplay/AllowMdnsDiscovery</a>
  </dd>
  <dd>
    <a href="#wirelessdisplay-allowmovementdetectiononinfrastructure">WirelessDisplay/AllowMovementDetectionOnInfrastructure</a>
  </dd>
  <dd>
    <a href="#wirelessdisplay-allowprojectionfrompc">WirelessDisplay/AllowProjectionFromPC</a>
  </dd>
  <dd>
    <a href="#wirelessdisplay-allowprojectionfrompcoverinfrastructure">WirelessDisplay/AllowProjectionFromPCOverInfrastructure</a>
  </dd>
  <dd>
    <a href="#wirelessdisplay-allowprojectiontopc">WirelessDisplay/AllowProjectionToPC</a>
  </dd>
  <dd>
    <a href="#wirelessdisplay-allowprojectiontopcoverinfrastructure">WirelessDisplay/AllowProjectionToPCOverInfrastructure</a>
  </dd>
  <dd>
    <a href="#wirelessdisplay-allowuserinputfromwirelessdisplayreceiver">WirelessDisplay/AllowUserInputFromWirelessDisplayReceiver</a>
  </dd>
  <dd>
    <a href="#wirelessdisplay-requirepinforpairing">WirelessDisplay/RequirePinForPairing</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="wirelessdisplay-allowmdnsadvertisement"></a>**WirelessDisplay/AllowMdnsAdvertisement**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
This policy setting allows you to turn off the Wireless Display multicast DNS service advertisement from a Wireless Display receiver. If the network administrator is concerned about network congestion, they may set this policy to 0, disabling mDNS advertisement.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - Don't allow
- 1 - Allow

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="wirelessdisplay-allowmdnsdiscovery"></a>**WirelessDisplay/AllowMdnsDiscovery**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
This policy setting allows you to turn off discovering the display service advertised over multicast DNS by a Wireless Display receiver. If the network administrator is concerned about network congestion, they may set this policy to 0, disabling mDNS discovery.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Doesn't allow
-   1 - Allow

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="wirelessdisplay-allowmovementdetectiononinfrastructure"></a>**WirelessDisplay/AllowMovementDetectionOnInfrastructure**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
This policy setting allows you to disable the infrastructure movement detection feature.

- If you set it to 0, your PC may stay connected and continue to project if you walk away from a Wireless Display receiver to which you are projecting over infrastructure.

- If you set it to 1, your PC will detect that you have moved and will automatically disconnect your infrastructure Wireless Display session.

The default value is 1.

<!--/Description-->
<!--SupportedValues-->

The following list shows the supported values:

- 0 - Doesn't allow
- 1 (Default) - Allow

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="wirelessdisplay-allowprojectionfrompc"></a>**WirelessDisplay/AllowProjectionFromPC**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
This policy allows you to turn off projection from a PC.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - your PC can't discover or project to other devices.
-   1 - your PC can discover and project to other devices

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="wirelessdisplay-allowprojectionfrompcoverinfrastructure"></a>**WirelessDisplay/AllowProjectionFromPCOverInfrastructure**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
This policy allows you to turn off projection from a PC over infrastructure.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - your PC can't discover or project to other infrastructure devices, although it's possible to discover and project over WiFi Direct.
-   1 - your PC can discover and project to other devices over infrastructure.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="wirelessdisplay-allowprojectiontopc"></a>**WirelessDisplay/AllowProjectionToPC**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
Allow or disallow turning off the projection to a PC.

If you set it to 0 (zero), your PC isn't discoverable and you can't project to it. If you set it to 1, your PC is discoverable and you can project to it above the lock screen. The user has an option to turn it always on or always off except for manual launch. In PCs that support Miracast, after the policy is applied you can verify the setting from the user interface in **Settings** &gt; **System** &gt; **Projecting to this PC**.

Supported value type is integer.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Don't allow this PC to be projected to*
-   GP name: *AllowProjectionToPC*
-   GP path: *Windows Components/Connect*
-   GP ADMX file name: *WirelessDisplay.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - projection to PC isn't allowed. Always off and the user can't enable it.
-   1 (default) - projection to PC is allowed. Enabled only above the lock screen.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="wirelessdisplay-allowprojectiontopcoverinfrastructure"></a>**WirelessDisplay/AllowProjectionToPCOverInfrastructure**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
This policy setting allows you to turn off projection to a PC over infrastructure.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - your PC isn't discoverable and other devices can't project to it over infrastructure, although it's possible to project to it over WiFi Direct.
-   1 - your PC is discoverable and other devices can project to it over infrastructure.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="wirelessdisplay-allowuserinputfromwirelessdisplayreceiver"></a>**WirelessDisplay/AllowUserInputFromWirelessDisplayReceiver**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
Setting this policy controls whether or not the wireless display can send input&#8212;keyboard, mouse, pen, and touch input if the display supports it&#8212;back to the source device.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Wireless display input disabled.
-   1 (default) - Wireless display input enabled.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="wirelessdisplay-requirepinforpairing"></a>**WirelessDisplay/RequirePinForPairing**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
Allow or disallow requirement for a PIN for pairing.

If you turn on this policy, the pairing ceremony for new devices will always require a PIN. If you turn off this policy or don't configure it, a PIN isn't required for pairing. In PCs that support Miracast, after the policy is applied you can verify the setting from the user interface in **Settings** &gt; **System** &gt; **Projecting to this PC**.

Supported value type is integer.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Require pin for pairing*
-   GP name: *RequirePinForPairing*
-   GP path: *Windows Components/Connect*
-   GP ADMX file name: *WirelessDisplay.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - PIN isn't required.
-   1 - PIN is required.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--/Policies-->

CSP Article:

## Related topics
[Policy configuration service provider](policy-configuration-service-provider.md)