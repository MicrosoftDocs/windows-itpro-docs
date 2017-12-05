---
title: Policy CSP - WirelessDisplay
description: Policy CSP - WirelessDisplay
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 11/01/2017
---

# Policy CSP - WirelessDisplay



<hr/>

<!--StartPolicies-->
## WirelessDisplay policies  

<dl>
  <dd>
    <a href="#wirelessdisplay-allowmdnsadvertisement">WirelessDisplay/AllowMdnsAdvertisement</a>
  </dd>
  <dd>
    <a href="#wirelessdisplay-allowmdnsdiscovery">WirelessDisplay/AllowMdnsDiscovery</a>
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
<!--StartPolicy-->
<a href="" id="wirelessdisplay-allowmdnsadvertisement"></a>**WirelessDisplay/AllowMdnsAdvertisement**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
</tr>
</table>

<!--EndSKU-->

<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1709. This policy setting allows you to turn off the Wireless Display multicast DNS service advertisement from a Wireless Display receiver. If the network administrator is concerned about network congestion, they may set this policy to 0, disabling mDNS advertisement.  

- 0 - Do not allow
- 1 - Allow

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="wirelessdisplay-allowmdnsdiscovery"></a>**WirelessDisplay/AllowMdnsDiscovery**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
</tr>
</table>

<!--EndSKU-->

<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1709. This policy setting allows you to turn off discovering the display service advertised over multicast DNS by a Wireless Display receiver. If the network administrator is concerned about network congestion, they may set this policy to 0, disabling mDNS discovery.  

- 0 - Do not allow
- 1 - Allow

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="wirelessdisplay-allowprojectionfrompc"></a>**WirelessDisplay/AllowProjectionFromPC**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy allows you to turn off projection from a PC.  

- 0 - your PC cannot discover or project to other devices.
- 1 - your PC can discover and project to other devices

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="wirelessdisplay-allowprojectionfrompcoverinfrastructure"></a>**WirelessDisplay/AllowProjectionFromPCOverInfrastructure**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy allows you to turn off projection from a PC over infrastructure.  

- 0 - your PC cannot discover or project to other infrastructure devices, although it is possible to discover and project over WiFi Direct.
- 1 - your PC can discover and project to other devices over infrastructure.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="wirelessdisplay-allowprojectiontopc"></a>**WirelessDisplay/AllowProjectionToPC**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Allow or disallow turning off the projection to a PC.

<p style="margin-left: 20px">If you set it to 0 (zero), your PC is not discoverable and you cannot project to it. If you set it to 1, your PC is discoverable and you can project to it above the lock screen. The user has an option to turn it always on or always off except for manual launch. In PCs that support Miracast, after the policy is applied you can verify the setting from the user interface in **Settings** &gt; **System** &gt; **Projecting to this PC**.

<p style="margin-left: 20px">Value type is integer. Valid value:

-   0 - projection to PC is not allowed. Always off and the user cannot enable it.
-   1 (default) - projection to PC is allowed. Enabled only above the lock screen.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="wirelessdisplay-allowprojectiontopcoverinfrastructure"></a>**WirelessDisplay/AllowProjectionToPCOverInfrastructure**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy setting allows you to turn off projection to a PC over infrastructure.  

- 0 - your PC is not discoverable and other devices cannot project to it over infrastructure, although it is possible to project to it over WiFi Direct.
- 1 - your PC is discoverable and other devices can project to it over infrastructure.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="wirelessdisplay-allowuserinputfromwirelessdisplayreceiver"></a>**WirelessDisplay/AllowUserInputFromWirelessDisplayReceiver**  

<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Setting this policy controls whether or not the wireless display can send input&#8212;keyboard, mouse, pen, and touch input if the display supports it&#8212;back to the source device.

<p style="margin-left: 20px">Allowed values:

-   0 - Wireless display input disabled.
-   1 (default) - Wireless display input enabled.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="wirelessdisplay-requirepinforpairing"></a>**WirelessDisplay/RequirePinForPairing**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Allow or disallow requirement for a PIN for pairing.

<p style="margin-left: 20px">If you turn this on, the pairing ceremony for new devices will always require a PIN. If you turn this off or do not configure it, a PIN is not required for pairing. In PCs that support Miracast, after the policy is applied you can verify the setting from the user interface in **Settings** &gt; **System** &gt; **Projecting to this PC**.

<p style="margin-left: 20px">Value type is integer. Valid value:

-   0 (default) - PIN is not required.
-   1 - PIN is required.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

