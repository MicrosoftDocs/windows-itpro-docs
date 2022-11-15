---
title: Policy CSP - ADMX_DeviceInstallation
description: Learn about Policy CSP - ADMX_DeviceInstallation.
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

# Policy CSP - ADMX_DeviceInstallation

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_DeviceInstallation policies

<dl>
  <dd>
    <a href="#admx-deviceinstallation-deviceinstall-allowadmininstall">ADMX_DeviceInstallation/DeviceInstall_AllowAdminInstall</a>
  </dd>
  <dd>
    <a href="#admx-deviceinstallation-deviceinstall-deniedpolicy-detailtext">ADMX_DeviceInstallation/DeviceInstall_DeniedPolicy_DetailText</a>
  </dd>
  <dd>
    <a href="#admx-deviceinstallation-deviceinstall-deniedpolicy-simpletext">ADMX_DeviceInstallation/DeviceInstall_DeniedPolicy_SimpleText</a>
  </dd>
  <dd>
    <a href="#admx-deviceinstallation-deviceinstall-installtimeout">ADMX_DeviceInstallation/DeviceInstall_InstallTimeout</a>
  </dd>
  <dd>
    <a href="#admx-deviceinstallation-deviceinstall-policy-reboottime">ADMX_DeviceInstallation/DeviceInstall_Policy_RebootTime</a>
  </dd>
  <dd>
    <a href="#admx-deviceinstallation-deviceinstall-removable-deny">ADMX_DeviceInstallation/DeviceInstall_Removable_Deny</a>
  </dd>
  <dd>
    <a href="#admx-deviceinstallation-deviceinstall-systemrestore">ADMX_DeviceInstallation/DeviceInstall_SystemRestore</a>
  </dd>
  <dd>
    <a href="#admx-deviceinstallation-deviceinstall-classes-allowuser">ADMX_DeviceInstallation/DriverInstall_Classes_AllowUser</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-deviceinstallation-deviceinstall-allowadmininstall"></a>**ADMX_DeviceInstallation/DeviceInstall_AllowAdminInstall**

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
This policy setting allows you to determine whether members of the Administrators group can install and update the drivers for any device, regardless of other policy settings.

If you enable this policy setting, members of the Administrators group can use the Add Hardware wizard or the Update Driver wizard to install and update the drivers for any device. If you enable this policy setting on a remote desktop server, the policy setting affects redirection of the specified devices from a remote desktop client to the remote desktop server.

If you disable or don't configure this policy setting, members of the Administrators group are subject to all policy settings that restrict device installation.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow administrators to override Device Installation Restriction policies*
-   GP name: *DeviceInstall_AllowAdminInstall*
-   GP path: *System\Device Installation\Device Installation Restrictions*
-   GP ADMX file name: *DeviceInstallation.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-deviceinstallation-deviceinstall-deniedpolicy-detailtext"></a>**ADMX_DeviceInstallation/DeviceInstall_DeniedPolicy_DetailText**

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
This policy setting allows you to display a custom message to users in a notification when a device installation is attempted and a policy setting prevents the installation.

If you enable this policy setting, Windows displays the text you type in the Detail Text box when a policy setting prevents device installation.

If you disable or don't configure this policy setting, Windows displays a default message when a policy setting prevents device installation.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Display a custom message when installation is prevented by a policy setting*
-   GP name: *DeviceInstall_DeniedPolicy_DetailText*
-   GP path: *System\Device Installation\Device Installation Restrictions*
-   GP ADMX file name: *DeviceInstallation.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-deviceinstallation-deviceinstall-deniedpolicy-simpletext"></a>**ADMX_DeviceInstallation/DeviceInstall_DeniedPolicy_SimpleText**

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
This policy setting allows you to display a custom message title in a notification when a device installation is attempted and a policy setting prevents the installation.

If you enable this policy setting, Windows displays the text you type in the Main Text box as the title text of a notification when a policy setting prevents device installation.

If you disable or don't configure this policy setting, Windows displays a default title in a notification when a policy setting prevents device installation.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Display a custom message title when device installation is prevented by a policy setting*
-   GP name: *DeviceInstall_DeniedPolicy_SimpleText*
-   GP path: *System\Device Installation\Device Installation Restrictions*
-   GP ADMX file name: *DeviceInstallation.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-deviceinstallation-deviceinstall-installtimeout"></a>**ADMX_DeviceInstallation/DeviceInstall_InstallTimeout**

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
This policy setting allows you to configure the number of seconds Windows waits for a device installation task to complete.

If you enable this policy setting, Windows waits for the number of seconds you specify before terminating the installation.

If you disable or don't configure this policy setting, Windows waits 240 seconds for a device installation task to complete before terminating the installation.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure device installation time-out*
-   GP name: *DeviceInstall_InstallTimeout*
-   GP path: *System\Device Installation*
-   GP ADMX file name: *DeviceInstallation.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-deviceinstallation-deviceinstall-policy-reboottime"></a>**ADMX_DeviceInstallation/DeviceInstall_Policy_RebootTime**

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
This policy setting establishes the amount of time (in seconds) that the system will wait to reboot in order to enforce a change in device installation restriction policies.

If you enable this policy setting, set the number of seconds you want the system to wait until a reboot.

If you disable or don't configure this policy setting, the system doesn't force a reboot.

>[!Note]
> If no reboot is forced, the device installation restriction right won't take effect until the system is restarted.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Time (in seconds) to force reboot when required for policy changes to take effect*
-   GP name: *DeviceInstall_Policy_RebootTime*
-   GP path: *System\Device Installation\Device Installation Restrictions*
-   GP ADMX file name: *DeviceInstallation.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-deviceinstallation-deviceinstall-removable-deny"></a>**ADMX_DeviceInstallation/DeviceInstall_Removable_Deny**

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
This policy setting allows you to prevent Windows from installing removable devices. A device is considered removable when the driver for the device to which it's connected indicates that the device is removable. For example, a Universal Serial Bus (USB) device is reported to be removable by the drivers for the USB hub to which the device is connected. This policy setting takes precedence over any other policy setting that allows Windows to install a device.

If you enable this policy setting, Windows is prevented from installing removable devices and existing removable devices can't have their drivers updated. If you enable this policy setting on a remote desktop server, the policy setting affects redirection of removable devices from a remote desktop client to the remote desktop server.

If you disable or don't configure this policy setting, Windows can install and update device drivers for removable devices as allowed or prevented by other policy settings.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent installation of removable devices*
-   GP name: *DeviceInstall_Removable_Deny*
-   GP path: *System\Device Installation\Device Installation Restrictions*
-   GP ADMX file name: *DeviceInstallation.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-deviceinstallation-deviceinstall-systemrestore"></a>**ADMX_DeviceInstallation/DeviceInstall_SystemRestore**

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
This policy setting allows you to prevent Windows from creating a system restore point during device activity that would normally prompt Windows to create a system restore point. Windows normally creates restore points for certain driver activity, such as the installation of an unsigned driver. A system restore point enables you to more easily restore your system to its state before the activity.

If you enable this policy setting, Windows doesn't create a system restore point when one would normally be created.

If you disable or don't configure this policy setting, Windows creates a system restore point as it normally would.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent creation of a system restore point during device activity that would normally prompt creation of a restore point*
-   GP name: *DeviceInstall_SystemRestore*
-   GP path: *System\Device Installation*
-   GP ADMX file name: *DeviceInstallation.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-deviceinstallation-deviceinstall-classes-allowuser"></a>**ADMX_DeviceInstallation/DriverInstall_Classes_AllowUser**

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
This policy setting specifies a list of device setup class GUIDs describing device drivers that non-administrator members of the built-in Users group may install on the system.

If you enable this policy setting, members of the Users group may install new drivers for the specified device setup classes. The drivers must be signed according to Windows Driver Signing Policy, or be signed by publishers already in the TrustedPublisher store.

If you disable or don't configure this policy setting, only members of the Administrators group are allowed to install new device drivers on the system.


<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow non-administrators to install drivers for these device setup classes*
-   GP name: *DriverInstall_Classes_AllowUser*
-   GP path: *System\Device Installation*
-   GP ADMX file name: *DeviceInstallation.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)