---
title: Policy CSP - VirtualizationBasedTechnology
description: Learn to use the Policy CSP - VirtualizationBasedTechnology setting to control the state of Hypervisor-protected Code Integrity (HVCI) on devices.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: aljupudi
ms.localizationpriority: medium
ms.date: 11/25/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - VirtualizationBasedTechnology

<hr/>

<!--Policies-->
## VirtualizationBasedTechnology policies

<dl>
  <dd>
    <a href="#virtualizationbasedtechnology-hypervisorenforcedcodeintegrity">VirtualizationBasedTechnology/HypervisorEnforcedCodeIntegrity</a>
  </dd>
  <dd>
    <a href="#virtualizationbasedtechnology-requireuefimemoryattributestable">VirtualizationBasedTechnology/RequireUEFIMemoryAttributesTable</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="virtualizationbasedtechnology-hypervisorenforcedcodeintegrity"></a>**VirtualizationBasedTechnology/HypervisorEnforcedCodeIntegrity**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Pro</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Business</td>
    <td>Yes</td>
    <td>Yes</td>
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
Allows the IT admin to control the state of Hypervisor-protected Code Integrity (HVCI) on devices. HVCI is a feature within Virtualization Based Security, and is frequently referred to as Memory integrity. Learn more [here](/windows-hardware/design/device-experiences/oem-vbs).

>[!NOTE]
>After the policy is pushed, a system reboot will be required to change the state of HVCI.

<!--/Description-->
<!--SupportedValues-->
The following are the supported values:

- 0: (Disabled) Turns off Hypervisor-Protected Code Integrity remotely if configured previously without UEFI Lock
- 1: (Enabled with UEFI lock) Turns on Hypervisor-Protected Code Integrity with UEFI lock
- 2: (Enabled without lock) Turns on Hypervisor-Protected Code Integrity without UEFI lock

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="virtualizationbasedtechnology-requireuefimemoryattributestable"></a>**VirtualizationBasedTechnology/RequireUEFIMemoryAttributesTable**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Pro</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Business</td>
    <td>Yes</td>
    <td>Yes</td>
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
Allows the IT admin to control the state of Hypervisor-protected Code Integrity (HVCI) on devices. HVCI is a feature within Virtualization Based Security, and is frequently referred to as Memory integrity. Learn more [here](/windows-hardware/design/device-experiences/oem-vbs).

>[!NOTE]
>After the policy is pushed, a system reboot will be required to change the state of HVCI.

<!--/Description-->
<!--SupportedValues-->

The following are the supported values:

- 0: (Disabled) Do not require UEFI Memory Attributes Table
- 1: (Enabled) Require UEFI Memory Attributes Table

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>

<!--/Policies-->

