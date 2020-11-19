---
title: Policy CSP - ADMX_DeviceSetup
description: Policy CSP - ADMX_DeviceSetup
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 11/19/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_DeviceSetup
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_DeviceSetup policies  

<dl>
  <dd>
    <a href="#admx-devicesetup-deviceinstall-balloontips">ADMX_DeviceSetup/DeviceInstall_BalloonTips</a>
  </dd>
  <dd>
    <a href="#admx-devicesetup-deviceinstall-genericdriversendtower">ADMX_DeviceSetup/DeviceInstall_GenericDriverSendToWER</a>
  </dd>
  <dd>
    <a href="#admx-devicesetup-deviceinstall-requestadditionalsoftwaresendtower">ADMX_DeviceSetup/DeviceInstall_RequestAdditionalSoftwareSendToWER</a>
  </dd>
  <dd>
    <a href="#admx-devicesetup-driversearchplaces">ADMX_DeviceSetup/DriverSearchPlaces</a>
  </dd>
  <dd>
    <a href="#admx-devicesetup-driversearchplaces-dontpromptforwindowsupdate-1">ADMX_DeviceSetup/DriverSearchPlaces_DontPromptForWindowsUpdate_1</a>
  </dd>
  <dd>
    <a href="#admx-devicesetup-driversearchplaces-dontpromptforwindowsupdate-2">ADMX_DeviceSetup/DriverSearchPlaces_DontPromptForWindowsUpdate_2</a>
  </dd>
  <dd>
    <a href="#admx-devicesetup-driversearchplaces-searchorderconfiguration">ADMX_DeviceSetup/DriverSearchPlaces_SearchOrderConfiguration</a>
  </dd>
  <dd>
    <a href="#admx-devicesetup-driversearchplaces-searchserverconfiguration">ADMX_DeviceSetup/DriverSearchPlaces_SearchServerConfiguration</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-devicesetup-deviceinstall-balloontips"></a>**ADMX_DeviceSetup/DeviceInstall_BalloonTips**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to turn off "Found New Hardware" balloons during device installation.

If you enable this policy setting, "Found New Hardware" balloons do not appear while a device is being installed.

If you disable or do not configure this policy setting, "Found New Hardware" balloons appear while a device is being installed, unless the driver for the device suppresses the balloons.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn off "Found New Hardware" balloons during device installation*
-   GP name: *DeviceInstall_BalloonTips*
-   GP path: *System\Device Installation*
-   GP ADMX file name: *DeviceSetup.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-devicesetup-deviceinstall-genericdriversendtower"></a>**ADMX_DeviceSetup/DeviceInstall_GenericDriverSendToWER**  

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
Available in the latest Windows 10 Insider Preview Build. Windows has a feature that sends "generic-driver-installed" reports through the Windows Error Reporting infrastructure. This policy allows you to disable the feature.

If you enable this policy setting, an error report is not sent when a generic driver is installed.

If you disable or do not configure this policy setting, an error report is sent when a generic driver is installed.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Do not send a Windows error report when a generic driver is installed on a device*
-   GP name: *DeviceInstall_GenericDriverSendToWER*
-   GP path: *System\Device Installation*
-   GP ADMX file name: *DeviceSetup.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-devicesetup-deviceinstall-requestadditionalsoftwaresendtower"></a>**ADMX_DeviceSetup/DeviceInstall_RequestAdditionalSoftwareSendToWER**  

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
Available in the latest Windows 10 Insider Preview Build. Windows has a feature that allows a device driver to request additional software through the Windows Error Reporting infrastructure. This policy allows you to disable the feature.

If you enable this policy setting, Windows will not send an error report to request additional software even if this is specified by the device driver.

If you disable or do not configure this policy setting, Windows sends an error report when a device driver that requests additional software is installed.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prevent Windows from sending an error report when a device driver requests additional software during installation*
-   GP name: *DeviceInstall_RequestAdditionalSoftwareSendToWER*
-   GP path: *System\Device Installation*
-   GP ADMX file name: *DeviceSetup.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-devicesetup-driversearchplaces"></a>**ADMX_DeviceSetup/DriverSearchPlaces**  

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
Available in the latest Windows 10 Insider Preview Build. This setting configures the location that Windows searches for drivers when a new piece of hardware is found.

By default, Windows searches the following places for drivers: local installation, floppy drives, CD-ROM drives, Windows Update.

Using this setting, you may remove the floppy and CD-ROM drives from the search algorithm.

If you enable this setting, you can remove the locations by selecting the associated check box beside the location name.

If you disable or do not configure this setting, Windows searches the installation location, floppy drives, and CD-ROM drives.

> [!NOTE]
> To prevent searching Windows Update for drivers also see "Turn off Windows Update device driver searching" in Administrative Templates/System/Internet Communication Management/Internet Communication settings.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure driver search locations*
-   GP name: *DriverSearchPlaces*
-   GP path: *System\Device Installation*
-   GP ADMX file name: *DeviceSetup.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-devicesetup-driversearchplaces-dontpromptforwindowsupdate-1"></a>**ADMX_DeviceSetup/DriverSearchPlaces_DontPromptForWindowsUpdate_1**  

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
Available in the latest Windows 10 Insider Preview Build. Specifies whether the administrator will be prompted about going to Windows Update to search for device drivers using the Internet.

> [!NOTE]
> This setting only has effect if "Turn off Windows Update device driver searching" in "Administrative Templates/System/Internet Communication Management/Internet Communication settings" is disabled or not configured.

If you enable this setting, administrators will not be prompted to search Windows Update.

If you disable or do not configure this setting, and "Turn off Windows Update device driver searching" is disabled or not configured, the administrator will be prompted for consent before going to Windows Update to search for device drivers.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn off Windows Update device driver search prompt*
-   GP name: *DriverSearchPlaces_DontPromptForWindowsUpdate_1*
-   GP path: *System\Device Installation*
-   GP ADMX file name: *DeviceSetup.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-devicesetup-driversearchplaces-dontpromptforwindowsupdate-2"></a>**ADMX_DeviceSetup/DriverSearchPlaces_DontPromptForWindowsUpdate_2**  

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
Available in the latest Windows 10 Insider Preview Build. Specifies whether the administrator will be prompted about going to Windows Update to search for device drivers using the Internet.

> [!NOTE]
> This setting only has effect if "Turn off Windows Update device driver searching" in "Administrative Templates/System/Internet Communication Management/Internet Communication settings" is disabled or not configured.

If you enable this setting, administrators will not be prompted to search Windows Update.

If you disable or do not configure this setting, and "Turn off Windows Update device driver searching" is disabled or not configured, the administrator will be prompted for consent before going to Windows Update to search for device drivers.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn off Windows Update device driver search prompt*
-   GP name: *DriverSearchPlaces_DontPromptForWindowsUpdate_2*
-   GP path: *System\Device Installation*
-   GP ADMX file name: *DeviceSetup.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-devicesetup-driversearchplaces-searchorderconfiguration"></a>**ADMX_DeviceSetup/DriverSearchPlaces_SearchOrderConfiguration**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to specify the order in which Windows searches source locations for device drivers.

If you enable this policy setting, you can select whether Windows searches for drivers on Windows Update unconditionally, only if necessary, or not at all.

Note that searching always implies that Windows will attempt to search Windows Update exactly one time. With this setting, Windows will not continually search for updates. This setting is used to ensure that the best software will be found for the device, even if the network is temporarily available. If the setting for searching only if needed is specified, then Windows will search for a driver only if a driver is not locally available on the system.

If you disable or do not configure this policy setting, members of the Administrators group can determine the priority order in which Windows searches source locations for device drivers.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify search order for device driver source locations*
-   GP name: *DriverSearchPlaces_SearchOrderConfiguration*
-   GP path: *System\Device Installation*
-   GP ADMX file name: *DeviceSetup.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-devicesetup-driversearchplaces-searchserverconfiguration"></a>**ADMX_DeviceSetup/DriverSearchPlaces_SearchServerConfiguration**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to specify the search server that Windows uses to find updates for device drivers.

If you enable this policy setting, you can select whether Windows searches Windows Update (WU), searches a Managed Server, or a combination of both.

Note that if both are specified, then Windows will first search the Managed Server, such as a Windows Server Update Services (WSUS) server. Only if no update is found will Windows then also search Windows Update.

If you disable or do not configure this policy setting, members of the Administrators group can determine the server used in the search for device drivers.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify the search server for device driver updates*
-   GP name: *DriverSearchPlaces_SearchServerConfiguration*
-   GP path: *System\Device Installation*
-   GP ADMX file name: *DeviceSetup.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

Footnotes:

- 1 - Available in Windows 10, version 1607.
- 2 - Available in Windows 10, version 1703.
- 3 - Available in Windows 10, version 1709.
- 4 - Available in Windows 10, version 1803.
- 5 - Available in Windows 10, version 1809.
- 6 - Available in Windows 10, version 1903.
- 7 - Available in Windows 10, version 1909.
- 8 - Available in Windows 10, version 2004.

<!--/Policies-->

