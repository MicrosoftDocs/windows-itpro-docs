---
title: Policy CSP - ADMX_WindowsConnectNow
description: Policy CSP - ADMX_WindowsConnectNow
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 09/28/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_WindowsConnectNow
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

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
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting prohibits access to Windows Connect Now (WCN) wizards. 

If you enable this policy setting, the wizards are turned off and users have no access to any of the wizard tasks. All the configuration related tasks, including "Set up a wireless router or access point" and "Add a wireless device" are disabled. 

If you disable or do not configure this policy setting, users can access the wizard tasks, including "Set up a wireless router or access point" and "Add a wireless device." The default for this policy setting allows users to access all WCN wizards.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prohibit access of the Windows Connect Now wizards*
-   GP name: *WCN_DisableWcnUi_1*
-   GP path: *Network\Windows Connect Now*
-   GP ADMX file name: *WindowsConnectNow.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsconnectnow-wcn-disablewcnui-2"></a>**ADMX_WindowsConnectNow/WCN_DisableWcnUi_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting prohibits access to Windows Connect Now (WCN) wizards. 

If you enable this policy setting, the wizards are turned off and users have no access to any of the wizard tasks. All the configuration related tasks, including "Set up a wireless router or access point" and "Add a wireless device" are disabled. 

If you disable or do not configure this policy setting, users can access the wizard tasks, including "Set up a wireless router or access point" and "Add a wireless device." The default for this policy setting allows users to access all WCN wizards.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prohibit access of the Windows Connect Now wizards*
-   GP name: *WCN_DisableWcnUi_2*
-   GP path: *Network\Windows Connect Now*
-   GP ADMX file name: *WindowsConnectNow.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsconnectnow-wcn-enableregistrar"></a>**ADMX_WindowsConnectNow/WCN_EnableRegistrar**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows the configuration of wireless settings using Windows Connect Now (WCN). The WCN Registrar enables the discovery and configuration of devices over Ethernet (UPnP), over In-band 802.11 WLAN, through the Windows Portable Device API (WPD), and via USB Flash drives.

Additional options are available to allow discovery and configuration over a specific medium. 

If you enable this policy setting, additional choices are available to turn off the operations over a specific medium. 

If you disable this policy setting, operations are disabled over all media. 

If you do not configure this policy setting, operations are enabled over all media. 

The default for this policy setting allows operations over all media.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configuration of wireless settings using Windows Connect Now*
-   GP name: *WCN_EnableRegistrar*
-   GP path: *Network\Windows Connect Now*
-   GP ADMX file name: *WindowsConnectNow.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

> [!NOTE]
> These policies are currently only available as part of a Windows Insider release.

<!--/Policies-->

