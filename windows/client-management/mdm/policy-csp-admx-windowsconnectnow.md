---
title: Policy CSP - ADMX_WindowsConnectNow
description: Policy CSP - ADMX_WindowsConnectNow
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/28/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_WindowsConnectNow
> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_WindowsConnectNow policies

<dl>
  <dd>
    <a href="#admx-windowsconnectnow-wcn-disablewcnui-1">ADMX_WindowsConnectNow/WCN_DisableWcnUi_1</a>
  </dd>
  <dd>
    <a href="#admx-windowsconnectnow-wcn-disablewcnui-2">ADMX_WindowsConnectNow/WCN_DisableWcnUi_2</a>
  </dd>
  <dd>
    <a href="#admx-windowsconnectnow-wcn-enableregistrar">ADMX_WindowsConnectNow/WCN_EnableRegistrar</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-windowsconnectnow-wcn-disablewcnui-1"></a>**ADMX_WindowsConnectNow/WCN_DisableWcnUi_1**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prohibits access to Windows Connect Now (WCN) wizards.

- If you enable this policy setting, the wizards are turned off and users have no access to any of the wizard tasks.

All the configuration-related tasks, including "Set up a wireless router or access point" and "Add a wireless device" are disabled.

- If you disable or don't configure this policy setting, users can access the wizard tasks.

They are "Set up a wireless router or access point" and "Add a wireless device." The default for this policy setting allows users to access all WCN wizards.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prohibit access of the Windows Connect Now wizards*
-   GP name: *WCN_DisableWcnUi_1*
-   GP path: *Network\Windows Connect Now*
-   GP ADMX file name: *WindowsConnectNow.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsconnectnow-wcn-disablewcnui-2"></a>**ADMX_WindowsConnectNow/WCN_DisableWcnUi_2**

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
This policy setting prohibits access to Windows Connect Now (WCN) wizards.

- If you enable this policy setting, the wizards are turned off and users have no access to any of the wizard tasks.

All the configuration-related tasks, including "Set up a wireless router or access point" and "Add a wireless device" are disabled.

- If you disable or don't configure this policy setting, users can access the wizard tasks.

They are "Set up a wireless router or access point" and "Add a wireless device." The default for this policy setting allows users to access all WCN wizards.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prohibit access of the Windows Connect Now wizards*
-   GP name: *WCN_DisableWcnUi_2*
-   GP path: *Network\Windows Connect Now*
-   GP ADMX file name: *WindowsConnectNow.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsconnectnow-wcn-enableregistrar"></a>**ADMX_WindowsConnectNow/WCN_EnableRegistrar**

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
This policy setting allows the configuration of wireless settings using Windows Connect Now (WCN). The WCN Registrar enables the discovery and configuration of devices over Ethernet (UPnP), over In-band 802.11 WLAN, through the Windows Portable Device API (WPD), and via USB Flash drives.

More options are available to allow discovery and configuration over a specific medium.

- If you enable this policy setting, more choices are available to turn off the operations over a specific medium.
- If you disable this policy setting, operations are disabled over all media.

If you don't configure this policy setting, operations are enabled over all media.

The default for this policy setting allows operations over all media.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configuration of wireless settings using Windows Connect Now*
-   GP name: *WCN_EnableRegistrar*
-   GP path: *Network\Windows Connect Now*
-   GP ADMX file name: *WindowsConnectNow.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

