---
title: Policy CSP - ADMX_WCM
description: Learn about Policy CSP - ADMX_WCM.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 10/22/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_WCM
> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_WCM policies

<dl>
  <dd>
    <a href="#admx-wcm-wcm-disablepowermanagement">ADMX_WCM/WCM_DisablePowerManagement</a>
  </dd>
  <dd>
    <a href="#admx-wcm-wcm-enablesoftdisconnect">ADMX_WCM/WCM_EnableSoftDisconnect</a>
  </dd>
  <dd>
    <a href="#admx-wcm-wcm-minimizeconnections">ADMX_WCM/WCM_MinimizeConnections</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-wcm-wcm-disablepowermanagement"></a>**ADMX_WCM/WCM_DisablePowerManagement**

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
This policy setting specifies that power management is disabled when the machine enters connected standby mode.

If this policy setting is enabled, Windows Connection Manager doesn't manage adapter radios to reduce power consumption when the machine enters connected standby mode.

If this policy setting isn't configured or is disabled, power management is enabled when the machine enters connected standby mode.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Disable power management in connected standby mode*
-   GP name: *WCM_DisablePowerManagement*
-   GP path: *Network\Windows Connection Manager*
-   GP ADMX file name: *WCM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-wcm-wcm-enablesoftdisconnect"></a>**ADMX_WCM/WCM_EnableSoftDisconnect**

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
This policy setting determines whether Windows will soft-disconnect a computer from a network.

If this policy setting is enabled or not configured, Windows will soft-disconnect a computer from a network when it determines that the computer should no longer be connected to a network.

If this policy setting is disabled, Windows will disconnect a computer from a network immediately when it determines that the computer should no longer be connected to a network.

When soft disconnect is enabled:

- Windows decides that the computer should no longer be connected to a network, it waits for traffic to settle on that network. The existing TCP session will continue uninterrupted.
- Windows then checks the traffic level on the network periodically. If the traffic level is above a certain threshold, no further action is taken. The computer stays connected to the network and continues to use it. For example, if the network connection is currently being used to download files from the Internet, the files will continue to be downloaded using that network connection.
- Network traffic drops below this threshold, the computer will be disconnected from the network. Apps that keep a network connection active even when they’re not actively using it (for example, email apps) might lose their connection. If this connection loss happens, these apps should re-establish their connection over a different network.

This policy setting depends on other group policy settings. For example, if 'Minimize the number of simultaneous connections to the Internet or a Windows Domain' is disabled, Windows won't disconnect from any networks.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable Windows to soft-disconnect a computer from a network*
-   GP name: *WCM_EnableSoftDisconnect*
-   GP path: *Network\Windows Connection Manager*
-   GP ADMX file name: *WCM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-wcm-wcm-minimizeconnections"></a>**ADMX_WCM/WCM_MinimizeConnections**

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
This policy setting determines if a computer can have multiple connections to the internet or to a Windows domain. If multiple connections are allowed, it then determines how network traffic will be routed.

If this policy setting is set to 0, a computer can have simultaneous connections to the internet, to a Windows domain, or to both. Internet traffic can be routed over any connection - including a cellular connection and any metered network. This value of 0 was previously the "Disabled" state for this policy setting. This option was first available in Windows 8.

If this policy setting is set to 1, any new automatic internet connection is blocked when the computer has at least one active internet connection to a preferred type of network. Here's the order of preference (from most preferred to least preferred): Ethernet, WLAN, then cellular. Ethernet is always preferred when connected. Users can still manually connect to any network. This value of 1 was previously the "Enabled" state for this policy setting. This option was first available in Windows 8.

If this policy setting is set to 2, the behavior is similar to 1. However, if a cellular data connection is available, it will always stay connected for services that require a cellular connection. When the user is connected to a WLAN or Ethernet connection, no internet traffic will be routed over the cellular connection. This option was first available in Windows 10 (Version 1703).

If this policy setting is set to 3, the behavior is similar to 2. However, if there's an Ethernet connection, Windows won't allow users to connect to a WLAN manually. A WLAN can only be connected (automatically or manually) when there's no Ethernet connection.

This policy setting is related to the "Enable Windows to soft-disconnect a computer from a network" policy setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Minimize the number of simultaneous connections to the Internet or a Windows Domain*
-   GP name: *WCM_MinimizeConnections*
-   GP path: *Network\Windows Connection Manager*
-   GP ADMX file name: *WCM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->


## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)
