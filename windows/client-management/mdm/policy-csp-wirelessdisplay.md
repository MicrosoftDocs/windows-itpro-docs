---
title: Policy CSP - WirelessDisplay
description: Policy CSP - WirelessDisplay
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
---

# Policy CSP - WirelessDisplay

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

<!--StartPolicies-->
<hr/>

## WirelessDisplay policies  

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
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy allows you to turn off projection from a PC.  

- 0 - your PC cannot discover or project to other devices.
- 1 - your PC can discover and project to other devices

<!--EndDescription-->
<!--EndPolicy-->
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
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy allows you to turn off projection from a PC over infrastructure.  

- 0 - your PC cannot discover or project to other infrastructure devices, although it is possible to discover and project over WiFi Direct.
- 1 - your PC can discover and project to other devices over infrastructure.

<!--EndDescription-->
<!--EndPolicy-->
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
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Allow or disallow turning off the projection to a PC.

<p style="margin-left: 20px">If you set it to 0 (zero), your PC is not discoverable and you cannot project to it. If you set it to 1, your PC is discoverable and you can project to it above the lock screen. The user has an option to turn it always on or always off except for manual launch. In PCs that support Miracast, after the policy is applied you can verify the setting from the user interface in **Settings** &gt; **System** &gt; **Projecting to this PC**.

<p style="margin-left: 20px">Value type is integer. Valid value:

-   0 - projection to PC is not allowed. Always off and the user cannot enable it.
-   1 (default) - projection to PC is allowed. Enabled only above the lock screen.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="wirelessdisplay-Allowprojectiontopcoverinfrastructure"></a>**WirelessDisplay/AllowProjectionToPCOverInfrastructure**  

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
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy setting allows you to turn off projection to a PC over infrastructure.  

- 0 - your PC is not discoverable and other devices cannot project to it over infrastructure, although it is possible to project to it over WiFi Direct.
- 1 - your PC is discoverable and other devices can project to it over infrastructure.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="wirelessdisplay-allowuserinputfromwirelessdisplayreceiver"></a>**WirelessDisplay/AllowUserInputFromWirelessDisplayReceiver**  

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
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703.

<!--EndDescription-->
<!--EndPolicy-->
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

