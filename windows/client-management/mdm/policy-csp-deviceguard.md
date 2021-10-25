---
title: Policy CSP - DeviceGuard
description: Learn how to use the Policy CSP - DeviceGuard setting to allow the IT admin to configure the launch of System Guard.
ms.author: dansimp
ms.topic: article
ms.prod: m365-security
ms.technology: windows-sec
author: dansimp
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: dansimp
---

# Policy CSP - DeviceGuard


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
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th> 
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
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
This policy allows the IT admin to configure the launch of System Guard.

Secure Launch configuration:

- 0 - Unmanaged, configurable by Administrative user
- 1 - Enables Secure Launch if supported by hardware
- 2 - Disables Secure Launch.

For more information about System Guard, see [Introducing Windows Defender System Guard runtime attestation](https://cloudblogs.microsoft.com/microsoftsecure/2018/04/19/introducing-windows-defender-system-guard-runtime-attestation/) and [How a hardware-based root of trust helps protect Windows 10](/windows/security/threat-protection/windows-defender-system-guard/how-hardware-based-root-of-trust-helps-protect-windows).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Turn On Virtualization Based Security*
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
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th> 
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
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
Turns on virtualization based security(VBS) at the next reboot. virtualization based security uses the Windows Hypervisor to provide support for security services. Value type is integer.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Turn On Virtualization Based Security*
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
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th> 
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
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
This setting lets users turn on Credential Guard with virtualization-based security to help protect credentials at next reboot. Value type is integer.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Turn On Virtualization Based Security*
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
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th> 
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
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
Specifies the platform security level at the next reboot. Value type is integer.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Turn On Virtualization Based Security*
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



<!--/Policies-->