---
title: types of devices (Windows 10)
description: Typically, deployment of Windows Defender Application Control happens best in phases, rather than being a feature that you simply “turn on.” The choice and sequence of phases depends on the way various computers and other devices are used in your organization, and to what degree IT manages those devices.
keywords: virtualization, security, malware
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: high
author: brianlic-msft
ms.date: 03/01/2018
---

# Windows Defender Application Control deployment in different scenarios: types of devices

**Applies to**
-   Windows 10
-   Windows Server 2016

Typically, deployment of Windows Defender Application Control (WDAC) happens best in phases, rather than being a feature that you simply “turn on.” The choice and sequence of phases depends on the way various computers and other devices are used in your organization, and to what degree IT manages those devices. The following table can help you begin to develop a plan for deploying WDAC in your organization.

| **Type of device**                 | **How WDAC relates to this type of device**  | **WDAC components that you can use to protect this kind of device**    |
|------------------------------------|------------------------------------------------------|--------------------------------------------------------------------------------|
| **Fixed-workload devices**: Perform same tasks every day.<br>Lists of approved applications rarely change.<br>Examples: kiosks, point-of-sale systems, call center computers. | WDAC can be deployed fully, and deployment and ongoing administration are relatively straightforward.<br>After WDAC deployment, only approved applications can run. This is because of protections offered by WDAC. | - VBS (hardware-based) protections, enabled.<br><br>• WDAC in enforced mode, with UMCI enabled. |
| **Fully managed devices**: Allowed software is restricted by IT department.<br>Users can request additional software, or install from a list of applications provided by IT department.<br>Examples: locked-down, company-owned desktops and laptops. | An initial baseline WDAC policy can be established and enforced. Whenever the IT department approves additional applications, it will update the WDAC policy and (for unsigned LOB applications) the catalog.<br>WDAC policies are supported by the HVCI service. | - VBS (hardware-based) protections, enabled.<br><br>• WDAC in enforced mode, with UMCI enabled. |
| **Lightly managed devices**: Company-owned, but users are free to install software.<br>Devices are required to run organization's antivirus solution and client management tools. | WDAC can be used to help protect the kernel, and to monitor (audit) for problem applications rather than limiting the applications that can be run. | - VBS (hardware-based) protections, enabled. When enabled with a WDAC policy in audit mode only, VBS means the hypervisor helps enforce the default kernel-mode code integrity policy, which protects against unsigned drivers or system files.<br><br>• WDAC, with UMCI enabled, but running in audit mode only. This means applications are not blocked—the policy just logs an event whenever an application outside the policy is started.  |
| **Bring Your Own Device**: Employees are allowed to bring their own devices, and also use those devices away from work. | WDAC does not apply. Instead, you can explore other hardening and security features with MDM-based conditional access solutions, such as Microsoft Intune. | N/A | 

## WDAC deployment in virtual machines

WDAC can protect a Hyper-V virtual machine, just as it would a physical machine. The steps to enable WDAC are the same from within the virtual machine.

WDAC protects against malware running in the guest virtual machine. It does not provide additional protection from the host administrator. From the host, you can disable WDAC for a virtual machine:

```powershell
Set-VMSecurity -VMName <VMName> -VirtualizationBasedSecurityOptOut $true
```


### Requirements for running WDAC in Hyper-V virtual machines 
 -   The Hyper-V host must run at least Windows Server 2016 or Windows 10 version 1607.
 -   The Hyper-V virtual machine must be Generation 2, and running at least Windows Server 2016 or Windows 10. 
 -   WDAC and [nested virtualization](https://docs.microsoft.com/virtualization/hyper-v-on-windows/user-guide/nested-virtualization) cannot be enabled at the same time. 
 -   Virtual Fibre Channel adapters are not compatible with Windows Defender Device Guard. Before attaching a virtual Fibre Channel Adapter to a virtual machine, you must first opt out of virtualization-based security using Set-VMSecurity.
 -   The AllowFullSCSICommandSet option for pass-through disks is not compatible with Windows Defender Device Guard. Before configuring a pass-through disk with AllowFullSCSICommandSet, you must first opt out of virtualization-based security using Set-VMSecurity.

## Related topics

- [Windows Defender Application Control Design Guide](windows-defender-application-control-design-guide.md)
- [Windows Defender Application Control Deployment Guide](windows-defender-application-control-deployment-guide.md)


