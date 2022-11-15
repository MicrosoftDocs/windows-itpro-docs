---
title: Policy CSP - Wifi
description: Learn how the Policy CSP - Wifi setting allows or disallows the device to automatically connect to Wi-Fi hotspots.
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

<hr/>

<!--Description-->
This policy has been deprecated.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="wifi-allowautoconnecttowifisensehotspots"></a>**Wifi/AllowAutoConnectToWiFiSenseHotspots**

<!--SupportedSKUs-->

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
Allow or disallow the device to automatically connect to Wi-Fi hotspots.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow Windows to automatically connect to suggested open hotspots, to networks shared by contacts, and to hotspots offering paid services*
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
Allow or disallow internet sharing.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Prohibit use of Internet Connection Sharing on your DNS domain network*
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
Allow WiFi Direct connection..

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
Allow an enterprise to control the WLAN scanning behavior and how aggressively devices should be actively scanning for Wi-Fi networks to get devices connected.

Supported values are 0-500, where 100 = normal scan frequency and 500 = low scan frequency.

The default value is 0.

Supported operations are Add, Delete, Get, and Replace.

<!--/Description-->
<!--/Policy-->
<hr/>


<!--/Policies-->

