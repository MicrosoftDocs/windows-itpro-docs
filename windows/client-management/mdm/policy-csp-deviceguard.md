---
title: Policy CSP - DeviceGuard
description: Policy CSP - DeviceGuard
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 09/20/2018
ms.reviewer: 
manager: dansimp
---

# Policy CSP - DeviceGuard

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.


<hr/>

<!--Policies-->
## DeviceGuard policies  

<dl>
  <dd>
    <a href="#deviceguard-configuresystemguardlaunch">DeviceGuard/ConfigureSystemGuardLaunch</a>
  </dd>
  <dd>
    <a href="#deviceguard-enablevirtualizationbasedsecurity">DeviceGuard/EnableVirtualizationBasedSecurity</a>
  </dd>
  <dd>
    <a href="#deviceguard-lsacfgflags">DeviceGuard/LsaCfgFlags</a>
  </dd>
  <dd>
    <a href="#deviceguard-requireplatformsecurityfeatures">DeviceGuard/RequirePlatformSecurityFeatures</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="deviceguard-configuresystemguardlaunch"></a>**DeviceGuard/ConfigureSystemGuardLaunch**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td></td>
	<td></td>
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
This policy allows the IT admin to configure the launch of System Guard.

Secure Launch configuration:

- 0 - Unmanaged, configurable by Administrative user
- 1 - Enables Secure Launch if supported by hardware
- 2 - Disables Secure Launch.

For more information about System Guard, see [Introducing Windows Defender System Guard runtime attestation](https://cloudblogs.microsoft.com/microsoftsecure/2018/04/19/introducing-windows-defender-system-guard-runtime-attestation/) and [How hardware-based containers help protect Windows 10](https://docs.microsoft.com/windows/security/hardware-protection/how-hardware-based-containers-help-protect-windows).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Turn On Virtualization Based Security*
-   GP name: *VirtualizationBasedSecurity*
-   GP element: *SystemGuardDrop*
-   GP path: *System/Device Guard*
-   GP ADMX file name: *DeviceGuard.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deviceguard-enablevirtualizationbasedsecurity"></a>**DeviceGuard/EnableVirtualizationBasedSecurity**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Added in Windows 10, version 1709. Turns on virtualization based security(VBS) at the next reboot. virtualization based security uses the Windows Hypervisor to provide support for security services. Value type is integer.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Turn On Virtualization Based Security*
-   GP name: *VirtualizationBasedSecurity*
-   GP path: *System/Device Guard*
-   GP ADMX file name: *DeviceGuard.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - disable virtualization based security.
-   1 - enable virtualization based security.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deviceguard-lsacfgflags"></a>**DeviceGuard/LsaCfgFlags**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Added in Windows 10, version 1709. This setting lets users turn on Credential Guard with virtualization-based security to help protect credentials at next reboot. Value type is integer.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Turn On Virtualization Based Security*
-   GP name: *VirtualizationBasedSecurity*
-   GP element: *CredentialIsolationDrop*
-   GP path: *System/Device Guard*
-   GP ADMX file name: *DeviceGuard.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - (Disabled) Turns off Credential Guard remotely if configured previously without UEFI Lock.
-   1 - (Enabled with UEFI lock) Turns on Credential Guard with UEFI lock.
-   2 - (Enabled without lock) Turns on Credential Guard without UEFI lock.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deviceguard-requireplatformsecurityfeatures"></a>**DeviceGuard/RequirePlatformSecurityFeatures**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Added in Windows 10, version 1709. Specifies the platform security level at the next reboot. Value type is integer.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Turn On Virtualization Based Security*
-   GP name: *VirtualizationBasedSecurity*
-   GP element: *RequirePlatformSecurityFeaturesDrop*
-   GP path: *System/Device Guard*
-   GP ADMX file name: *DeviceGuard.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   1 (default) - Turns on VBS with Secure Boot.
-   3 - Turns on VBS with Secure Boot and direct memory access (DMA). DMA requires hardware support.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.
-   4 - Added in Windows 10, version 1803.
-   5 - Added in Windows 10, version 1809.
-   6 - Added in the next major release of Windows 10.

<!--/Policies-->

