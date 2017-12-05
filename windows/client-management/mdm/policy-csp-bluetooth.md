---
title: Policy CSP - Bluetooth
description: Policy CSP - Bluetooth
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 11/01/2017
---

# Policy CSP - Bluetooth



<hr/>

<!--StartPolicies-->
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
    <a href="#bluetooth-localdevicename">Bluetooth/LocalDeviceName</a>
  </dd>
  <dd>
    <a href="#bluetooth-servicesallowedlist">Bluetooth/ServicesAllowedList</a>
  </dd>
</dl>

<hr/>
<!--StartPolicy-->
<a href="" id="bluetooth-allowadvertising"></a>**Bluetooth/AllowAdvertising**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
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
<p style="margin-left: 20px">Specifies whether the device can send out Bluetooth advertisements.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed. When set to 0, the device will not send out advertisements. To verify, use any Bluetooth LE app and enable it to do advertising. Then, verify that the advertisement is not received by the peripheral.
-   1 (default) – Allowed. When set to 1, the device will send out advertisements. To verify, use any Bluetooth LE app and enable it to do advertising. Then, verify that the advertisement is received by the peripheral.

<p style="margin-left: 20px">If this is not set or it is deleted, the default value of 1 (Allow) is used.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="bluetooth-allowdiscoverablemode"></a>**Bluetooth/AllowDiscoverableMode**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
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
<p style="margin-left: 20px">Specifies whether other Bluetooth-enabled devices can discover the device.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed. When set to 0, other devices will not be able to detect the device. To verify, open the Bluetooth control panel on the device. Then, go to another Bluetooth-enabled device, open the Bluetooth control panel, and verify that you cannot see the name of the device.
-   1 (default) – Allowed. When set to 1, other devices will be able to detect the device. To verify, open the Bluetooth control panel on the device. Then, go to another Bluetooth-enabled device, open the Bluetooth control panel and verify that you can discover it.

<p style="margin-left: 20px">If this is not set or it is deleted, the default value of 1 (Allow) is used.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="bluetooth-allowprepairing"></a>**Bluetooth/AllowPrepairing**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
<p style="margin-left: 20px">Specifies whether to allow specific bundled Bluetooth peripherals to automatically pair with the host device.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default)– Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="bluetooth-localdevicename"></a>**Bluetooth/LocalDeviceName**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
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
<p style="margin-left: 20px">Sets the local Bluetooth device name.

<p style="margin-left: 20px">If this is set, the value that it is set to will be used as the Bluetooth device name. To verify the policy is set, open the Bluetooth control panel on the device. Then, go to another Bluetooth-enabled device, open the Bluetooth control panel, and verify that the value that was specified.

<p style="margin-left: 20px">If this policy is not set or it is deleted, the default local radio name is used.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="bluetooth-servicesallowedlist"></a>**Bluetooth/ServicesAllowedList**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
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
<p style="margin-left: 20px">Set a list of allowable services and profiles. String hex formatted array of Bluetooth service UUIDs in canonical format, delimited by semicolons. For example, {782AFCFC-7CAA-436C-8BF0-78CD0FFBD4AF}.

<p style="margin-left: 20px">The default value is an empty string.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

<!--StartHoloLens-->
## <a href="" id="hololenspolicies"></a>Bluetooth policies supported by Windows Holographic for Business  

-   [Bluetooth/AllowAdvertising](#bluetooth-allowadvertising)  
-   [Bluetooth/AllowDiscoverableMode](#bluetooth-allowdiscoverablemode)  
-   [Bluetooth/LocalDeviceName](#bluetooth-localdevicename)  
<!--EndHoloLens-->

<!--StartIoTCore-->
## <a href="" id="iotcore"></a>Bluetooth policies supported by IoT Core  

-   [Bluetooth/AllowAdvertising](#bluetooth-allowadvertising)  
-   [Bluetooth/AllowDiscoverableMode](#bluetooth-allowdiscoverablemode)  
-   [Bluetooth/LocalDeviceName](#bluetooth-localdevicename)  
-   [Bluetooth/ServicesAllowedList](#bluetooth-servicesallowedlist)  
<!--EndIoTCore-->

<!--StartSurfaceHub-->
## <a href="" id="surfacehubpolicies"></a>Bluetooth policies supported by Microsoft Surface Hub  

-   [Bluetooth/AllowAdvertising](#bluetooth-allowadvertising)  
-   [Bluetooth/AllowDiscoverableMode](#bluetooth-allowdiscoverablemode)  
-   [Bluetooth/AllowPrepairing](#bluetooth-allowprepairing)  
-   [Bluetooth/LocalDeviceName](#bluetooth-localdevicename)  
-   [Bluetooth/ServicesAllowedList](#bluetooth-servicesallowedlist)  
<!--EndSurfaceHub-->

