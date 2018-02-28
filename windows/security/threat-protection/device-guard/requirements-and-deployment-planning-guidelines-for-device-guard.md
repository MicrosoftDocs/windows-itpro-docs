---
title: Requirements and deployment planning guidelines for Windows Defender Device Guard (Windows 10)
description: To help you plan a deployment of Microsoft Windows Defender Device Guard, this article describes hardware requirements for Windows Defender Device Guard, outlines deployment approaches, and describes methods for code signing and the deployment of code integrity policies. 
keywords: virtualization, security, malware
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: high
author: brianlic-msft
ms.date: 10/20/2017
---

# Planning guidelines for Windows Defender Device Guard

**Applies to**
-   Windows 10
-   Windows Server 2016


## Windows Defender Device Guard deployment in different scenarios: types of devices

Typically, deployment of Windows Defender Device Guard happens best in phases, rather than being a feature that you simply “turn on.” The choice and sequence of phases depends on the way various computers and other devices are used in your organization, and to what degree IT manages those devices. The following table can help you begin to develop a plan for deploying Windows Defender Device Guard in your organization.

| **Type of device**                 | **How Windows Defender Device Guard relates to this type of device**  | **Windows Defender Device Guard components that you can use to protect this kind of device**    |
|------------------------------------|------------------------------------------------------|--------------------------------------------------------------------------------|
| **Fixed-workload devices**: Perform same tasks every day.<br>Lists of approved applications rarely change.<br>Examples: kiosks, point-of-sale systems, call center computers. | Windows Defender Device Guard can be deployed fully, and deployment and ongoing administration are relatively straightforward.<br>After Windows Defender Device Guard deployment, only approved applications can run. This is because of protections offered by WDAC. | - VBS (hardware-based) protections, enabled.<br><br>• WDAC in enforced mode, with UMCI enabled. |
| **Fully managed devices**: Allowed software is restricted by IT department.<br>Users can request additional software, or install from a list of applications provided by IT department.<br>Examples: locked-down, company-owned desktops and laptops. | An initial baseline WDAC policy can be established and enforced. Whenever the IT department approves additional applications, it will update the WDAC policy and (for unsigned LOB applications) the catalog.<br>WDAC policies are supported by the HVCI service. | - VBS (hardware-based) protections, enabled.<br><br>• WDAC in enforced mode, with UMCI enabled. |
| **Lightly managed devices**: Company-owned, but users are free to install software.<br>Devices are required to run organization's antivirus solution and client management tools. | Windows Defender Device Guard can be used to help protect the kernel, and to monitor (audit) for problem applications rather than limiting the applications that can be run. | - VBS (hardware-based) protections, enabled. When enabled with a WDAC policy in audit mode only, VBS means the hypervisor helps enforce the default kernel-mode code integrity policy, which protects against unsigned drivers or system files.<br><br>• WDAC, with UMCI enabled, but running in audit mode only. This means applications are not blocked—the policy just logs an event whenever an application outside the policy is started.  |
| **Bring Your Own Device**: Employees are allowed to bring their own devices, and also use those devices away from work. | Windows Defender Device Guard does not apply. Instead, you can explore other hardening and security features with MDM-based conditional access solutions, such as Microsoft Intune. | N/A | 

## Windows Defender Device Guard deployment in virtual machines

Windows Defender Device Guard can protect a Hyper-V virtual machine, just as it would a physical machine. The steps to enable Windows Defender Device Guard are the same from within the virtual machine.

Windows Defender Device Guard protects against malware running in the guest virtual machine. It does not provide additional protection from the host administrator. From the host, you can disable Windows Defender Device Guard for a virtual machine:

```powershell
Set-VMSecurity -VMName <VMName> -VirtualizationBasedSecurityOptOut $true
```


### Requirements for running Windows Defender Device Guard in Hyper-V virtual machines 
 -   The Hyper-V host must run at least Windows Server 2016 or Windows 10 version 1607.
 -   The Hyper-V virtual machine must be Generation 2, and running at least Windows Server 2016 or Windows 10. 
 -   Windows Defender Device Guard and [nested virtualization](https://docs.microsoft.com/virtualization/hyper-v-on-windows/user-guide/nested-virtualization) cannot be enabled at the same time. 
 -   Virtual Fibre Channel adapters are not compatible with Windows Defender Device Guard. Before attaching a virtual Fibre Channel Adapter to a virtual machine, you must first opt out of virtualization-based security using Set-VMSecurity.
 -   The AllowFullSCSICommandSet option for pass-through disks is not compatible with Windows Defender Device Guard. Before configuring a pass-through disk with AllowFullSCSICommandSet, you must first opt out of virtualization-based security using Set-VMSecurity.


## Reviewing your applications: application signing and catalog files 

Typically, WDAC policies are configured to use the application's signing certificate as part or all of what identifies the application as trusted. This means that applications must either use embedded signing—where the signature is part of the binary—or catalog signing, where you generate a “catalog file” from the applications, sign it, and through the signed catalog file, configure the WDAC policy to recognize the applications as signed.

Catalog files can be very useful for unsigned LOB applications that cannot easily be given an embedded signature. However, catalogs need to be updated each time an application is updated. In contrast, with embedded signing, your WDAC policies typically do not have to be updated when an application is updated. For this reason, if code-signing is or can be included in your in-house application development process, it can simplify the management of WDAC (compared to using catalog signing).

To obtain signed applications or embed signatures in your in-house applications, you can choose from a variety of methods:

- Using the Microsoft Store publishing process. All apps that come out of the Microsoft Store are automatically signed with special signatures that can roll-up to our certificate authority (CA) or to your own.

- Using your own digital certificate or public key infrastructure (PKI). ISV's and enterprises can sign their own Classic Windows applications themselves, adding themselves to the trusted list of signers.

- Using a non-Microsoft signing authority. ISV's and enterprises can use a trusted non-Microsoft signing authority to sign all of their own Classic Windows applications.

To use catalog signing, you can choose from the following options:

- Use the Windows Defender Device Guard signing portal available in the Microsoft Store for Business. The portal is a Microsoft web service that you can use to sign your Classic Windows applications. For more information, see [Windows Defender Device Guard signing](https://technet.microsoft.com/itpro/windows/manage/device-guard-signing-portal).

- Create your own catalog files, which are described in the next section. For information about how creating catalog files fits into Windows Defender Device Guard deployment, see [Planning and getting started on the Windows Defender Device Guard deployment process](planning-and-getting-started-on-the-device-guard-deployment-process.md).

### Catalog files

Catalog files (which you can create in Windows 10 with a tool called Package Inspector) contain information about all deployed and executed binary files associated with your trusted but unsigned applications. When you create catalog files, you can also include signed applications for which you do not want to trust the signer but rather the specific application. After creating a catalog, you must sign the catalog file itself by using enterprise public key infrastructure (PKI), or a purchased code signing certificate. Then you can distribute the catalog, so that your trusted applications can be handled by WDAC in the same way as any other signed application.

Catalog files are simply Secure Hash Algorithm 2 (SHA2) hash lists of discovered binaries. These binaries’ hash values are updated each time an application is updated, which requires the catalog file to be updated also.

After you have created and signed your catalog files, you can configure your WDAC policies to trust the signer or signing certificate of those files.

> **Note**&nbsp;&nbsp;Package Inspector only works on operating systems that support Windows Defender Device Guard, such as Windows 10 Enterprise, Windows 10 Education, Windows 2016 Server, or Windows Enterprise IoT.

For information about how creating catalog files fits into Windows Defender Device Guard deployment, see [Planning and getting started on the Windows Defender Device Guard deployment process](planning-and-getting-started-on-the-device-guard-deployment-process.md). For procedures for working with catalog files, see [Deploy catalog files to support Windows Defender Application Control](deploy-catalog-files-to-support-windows-defender-application-control.md).

## Windows Defender Application Control policy formats and signing

When you generate a WDAC policy, you are generating a binary-encoded XML document that includes configuration settings for both the User and Kernel-modes of Windows 10 Enterprise, along with restrictions on Windows 10 script hosts. You can view your original XML document in a text editor, for example if you want to check the rule options that are present in the **&lt;Rules&gt;** section of the file.

We recommend that you keep the original XML file for use when you need to merge the WDAC policy with another policy or update its rule options. For deployment purposes, the file is converted to a binary format, which can be done using a simple Windows PowerShell command.

When the WDAC policy is deployed, it restricts the software that can run on a device. The XML document can be signed, helping to add additional protection against administrative users changing or removing the policy. 

## Related topics

- [Planning and getting started on the Windows Defender Device Guard deployment process](planning-and-getting-started-on-the-device-guard-deployment-process.md)
- [Deploy Windows Defender Application Control](deploy-windows-defender-application-control.md)


