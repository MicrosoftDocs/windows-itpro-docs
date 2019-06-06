---
title: Policy CSP - Wifi
description: Policy CSP - Wifi
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 05/01/2019
ms.reviewer: 
manager: dansimp
---

# Policy CSP - Wifi



<hr/>

<!--Policies-->
## Wifi policies  

<dl>
  <dd>
    <a href="#wifi-allowwifihotspotreporting">WiFi/AllowWiFiHotSpotReporting</a>
  </dd>
  <dd>
    <a href="#wifi-allowautoconnecttowifisensehotspots">Wifi/AllowAutoConnectToWiFiSenseHotspots</a>
  </dd>
  <dd>
    <a href="#wifi-allowinternetsharing">Wifi/AllowInternetSharing</a>
  </dd>
  <dd>
    <a href="#wifi-allowmanualwificonfiguration">Wifi/AllowManualWiFiConfiguration</a>
  </dd>
  <dd>
    <a href="#wifi-allowwifi">Wifi/AllowWiFi</a>
  </dd>
  <dd>
    <a href="#wifi-allowwifidirect">Wifi/AllowWiFiDirect</a>
  </dd>
  <dd>
    <a href="#wifi-wlanscanmode">Wifi/WLANScanMode</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="wifi-allowwifihotspotreporting"></a>**WiFi/AllowWiFiHotSpotReporting**  

<!--Description-->
This policy has been deprecated.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="wifi-allowautoconnecttowifisensehotspots"></a>**Wifi/AllowAutoConnectToWiFiSenseHotspots**  

<!--SupportedSKUs-->
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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allow or disallow the device to automatically connect to Wi-Fi hotspots.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow Windows to automatically connect to suggested open hotspots, to networks shared by contacts, and to hotspots offering paid services*
-   GP name: *WiFiSense*
-   GP path: *Network/WLAN Service/WLAN Settings*
-   GP ADMX file name: *wlansvc.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="wifi-allowinternetsharing"></a>**Wifi/AllowInternetSharing**  

<!--SupportedSKUs-->
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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allow or disallow internet sharing.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Prohibit use of Internet Connection Sharing on your DNS domain network*
-   GP name: *NC_ShowSharedAccessUI*
-   GP path: *Network/Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Do not allow the use of Internet Sharing.
-   1 (default) – Allow the use of Internet Sharing.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="wifi-allowmanualwificonfiguration"></a>**Wifi/AllowManualWiFiConfiguration**  

<!--SupportedSKUs-->
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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allow or disallow connecting to Wi-Fi outside of MDM server-installed networks.

Most restricted value is 0.

> [!NOTE]
> Setting this policy deletes any previously installed user-configured and Wi-Fi sense Wi-Fi profiles from the device. Certain Wi-Fi profiles that are not user configured nor Wi-Fi sense might not be deleted. In addition, not all non-MDM profiles are completely deleted.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – No Wi-Fi connection outside of MDM provisioned network is allowed.
-   1 (default) – Adding new network SSIDs beyond the already MDM provisioned ones is allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="wifi-allowwifi"></a>**Wifi/AllowWiFi**  

<!--SupportedSKUs-->
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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allow or disallow WiFi connection.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – WiFi connection is not allowed.
-   1 (default) – WiFi connection is allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="wifi-allowwifidirect"></a>**Wifi/AllowWiFiDirect**  

<!--SupportedSKUs-->
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

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Allow WiFi Direct connection..

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - WiFi Direct connection is not allowed.
- 1 - WiFi Direct connection is allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="wifi-wlanscanmode"></a>**Wifi/WLANScanMode**  

<!--SupportedSKUs-->
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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allow an enterprise to control the WLAN scanning behavior and how aggressively devices should be actively scanning for Wi-Fi networks to get devices connected.

Supported values are 0-500, where 100 = normal scan frequency and 500 = low scan frequency.

The default value is 0.

Supported operations are Add, Delete, Get, and Replace.

<!--/Description-->
<!--/Policy-->

<!--/Policies-->

<!--StartEAS-->
## <a href="" id="eas"></a>Wifi policies that can be set using Exchange Active Sync (EAS)  

- [Wifi/AllowInternetSharing](#wifi-allowinternetsharing)  
- [Wifi/AllowWiFi](#wifi-allowwifi)  
<!--EndEAS-->

<!--StartHoloLens-->
## <a href="" id="hololenspolicies"></a>Wifi policies supported by Windows Holographic

- [Wifi/AllowManualWiFiConfiguration](#wifi-allowmanualwificonfiguration)
<!--EndHoloLens-->
  
<!--StartHoloLensBusiness-->
## <a href="" id="hololenbusinessspolicies"></a>Wifi policies supported by Windows Holographic for Business

- [Wifi/AllowManualWiFiConfiguration](#wifi-allowmanualwificonfiguration)
<!--EndHoloLensBusiness-->

<!--StartIoTCore-->
## <a href="" id="iotcore"></a>Wifi policies supported by IoT Core  

- [Wifi/AllowAutoConnectToWiFiSenseHotspots](#wifi-allowautoconnecttowifisensehotspots)  
- [Wifi/AllowInternetSharing](#wifi-allowinternetsharing)  
- [Wifi/AllowWiFi](#wifi-allowwifi)  
- [Wifi/WLANScanMode](#wifi-wlanscanmode)  
<!--EndIoTCore-->

<!--StartSurfaceHub-->
## <a href="" id="surfacehubpolicies"></a>Wifi policies supported by Microsoft Surface Hub  

- [WiFi/AllowWiFiHotSpotReporting](#wifi-allowwifihotspotreporting)  
<!--EndSurfaceHub-->

<hr/>

Footnotes:

- 1 - Added in Windows 10, version 1607.
- 2 - Added in Windows 10, version 1703.
- 3 - Added in Windows 10, version 1709.
- 4 - Added in Windows 10, version 1803.
- 5 - Added in Windows 10, version 1809.
