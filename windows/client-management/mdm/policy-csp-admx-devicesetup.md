---
title: Policy CSP - ADMX_DeviceSetup
description: Learn about Policy CSP - ADMX_DeviceSetup.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 11/19/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_DeviceSetup

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_DeviceSetup policies

<dl>
  <dd>
    <a href="#admx-devicesetup-deviceinstall-balloontips">ADMX_DeviceSetup/DeviceInstall_BalloonTips</a>
  </dd>
  <dd>
    <a href="#admx-devicesetup-driversearchplaces-searchorderconfiguration">ADMX_DeviceSetup/DriverSearchPlaces_SearchOrderConfiguration</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-devicesetup-deviceinstall-balloontips"></a>**ADMX_DeviceSetup/DeviceInstall_BalloonTips**

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
This policy setting allows you to turn off "Found New Hardware" balloons during device installation.

If you enable this policy setting, "Found New Hardware" balloons don't appear while a device is being installed.

If you disable or don't configure this policy setting, "Found New Hardware" balloons appear while a device is being installed, unless the driver for the device suppresses the balloons.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off "Found New Hardware" balloons during device installation*
-   GP name: *DeviceInstall_BalloonTips*
-   GP path: *System\Device Installation*
-   GP ADMX file name: *DeviceSetup.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-devicesetup-driversearchplaces-searchorderconfiguration"></a>**ADMX_DeviceSetup/DriverSearchPlaces_SearchOrderConfiguration**

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
This policy setting allows you to specify the order in which Windows searches source locations for device drivers.

If you enable this policy setting, you can select whether Windows searches for drivers on Windows Update unconditionally, only if necessary, or not at all.

>[!Note]
> Searching always implies that Windows will attempt to search Windows Update exactly one time. With this setting, Windows won't continually search for updates.

This setting is used to ensure that the best software will be found for the device, even if the network is temporarily available. If the setting for searching is enabled and only when needed is specified, then Windows will search for a driver only if a driver isn't locally available on the system.

If you disable or don't configure this policy setting, members of the Administrators group can determine the priority order in which Windows searches source locations for device drivers.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify search order for device driver source locations*
-   GP name: *DriverSearchPlaces_SearchOrderConfiguration*
-   GP path: *System\Device Installation*
-   GP ADMX file name: *DeviceSetup.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)