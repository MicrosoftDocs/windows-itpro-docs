---
title: Device Guard overview (Windows 10)
description: Device Guard is a combination of enterprise-related hardware and software security features that, when configured together, will lock a device down so that it can only run trusted applications.
ms.assetid: FFE244EE-5804-4CE8-A2A9-48F49DC3AEF2
ms.pagetype: security
keywords: ["Device Guard"]
ms.prod: W10
ms.mktglfcycl: explore
ms.sitesec: library
author: brianlic-msft
---
# Device Guard overview
**Applies to**
-   Windows 10
-   Windows 10 Mobile
Device Guard is a combination of enterprise-related hardware and software security features that, when configured together, will lock a device down so that it can only run trusted applications. If the app isn’t trusted it can’t run, period. It also means that even if an attacker manages to get control of the Windows kernel, he or she will be much less likely to be able to run malicious executable code after the computer restarts because of how decisions are made about what can run and when.
Device Guard uses the new virtualization-based security in Windows 10 Enterprise to isolate the Code Integrity service from the Microsoft Windows kernel itself, letting the service use signatures defined by your enterprise-controlled policy to help determine what is trustworthy. In effect, the Code Integrity service runs alongside the kernel in a Windows hypervisor-protected container.
For details on how to implement Device Guard, see [Device Guard deployment guide](../keep-secure/device-guard-deployment-guide.md).
## Why use Device Guard
With thousands of new malicious files created every day, using traditional methods like signature-based detection to fight against malware provides an inadequate defense against new attacks. Device Guard on Windows 10 Enterprise changes from a mode where apps are trusted unless blocked by an antivirus or other security solutions, to a mode where the operating system trusts only apps authorized by your enterprise.
Device Guard also helps protect against [zero day attacks](http://go.microsoft.com/fwlink/p/?linkid=534209) and works to combat the challenges of [polymorphic viruses](http://go.microsoft.com/fwlink/p/?LinkId=534210).
### Advantages to using Device Guard
You can take advantage of the benefits of Device Guard, based on what you turn on and use:
-   Helps provide strong malware protection with enterprise manageability
-   Helps provide the most advanced malware protection ever offered on the Windows platform
-   Offers improved tamper resistance
## How Device Guard works
Device Guard restricts the Windows 10 Enterprise operating system to only running code that’s signed by trusted signers, as defined by your Code Integrity policy through specific hardware and security configurations, including:
-   User Mode Code Integrity (UMCI)
-   New kernel code integrity rules (including the new Windows Hardware Quality Labs (WHQL) signing constraints)
-   Secure Boot with database (db/dbx) restrictions
-   Virtualization-based security to help protect system memory and kernel mode apps and drivers from possible tampering.
-   **Optional:** Trusted Platform Module (TPM) 1.2 or 2.0
Device Guard works with your image-building process, so you can turn the virtualization-based security feature on for capable devices, configure your Code Integrity policy, and set any other operating system settings you require for Windows 10 Enterprise. After that, Device Guard works to help protect your devices:
1.  Your device starts up using Universal Extensible Firmware Interface (UEFI) Secure Boot, so that boot kits can’t run and so that Windows 10 Enterprise starts before anything else.
2.  After securely starting up the Windows boot components, Windows 10 Enterprise can start the Hyper-V virtualization-based security services, including Kernel Mode Code Integrity. These services help protect the system core (kernel), privileged drivers, and system defenses, like anti-malware solutions, by preventing malware from running early in the boot process, or in kernel after startup.
3.  Device Guard uses UMCI to make sure that anything that runs in User mode, such as a service, a Universal Windows Platform (UWP) app, or a Classic Windows application is trusted, allowing only trusted binaries to run.
4.  At the same time that Windows 10 Enterprise starts up, so too does the trusted platform module (TPM). TPM provides an isolated hardware component that helps protect sensitive information, such as user credentials and certificates.
## Required hardware and software
The following table shows the hardware and software you need to install and configure to implement Device Guard.
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Requirement</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows 10 Enterprise</p></td>
<td align="left"><p>The PC must be running Windows 10 Enterprise.</p></td>
</tr>
<tr class="even">
<td align="left"><p>UEFI firmware version 2.3.1 or higher and Secure Boot</p></td>
<td align="left"><p>To verify that the firmware is using UEFI version 2.3.1 or higher and Secure Boot, you can validate it against the [System.Fundamentals.Firmware.CS.UEFISecureBoot.ConnectedStandby](http://msdn.microsoft.com/library/windows/hardware/dn932807.aspx#system-fundamentals-firmware-cs-uefisecureboot-connectedstandby) Windows Hardware Compatibility Program requirement.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Virtualization extensions</p></td>
<td align="left"><p>The following virtualization extensions are required to support virtualization-based security:</p>
<ul>
<li>Intel VT-x or AMD-V</li>
<li>Second Level Address Translation</li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Firmware lock</p></td>
<td align="left"><p>The firmware setup should be locked to prevent other operating systems from starting and to prevent changes to the UEFI settings. You should also disable boot methods other than from the hard drive.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>x64 architecture</p></td>
<td align="left"><p>The features that virtualization-based security uses in the Windows hypervisor can only run on a 64-bit PC.</p></td>
</tr>
<tr class="even">
<td align="left"><p>A VT-d or AMD-Vi IOMMU (Input/output memory management unit)</p></td>
<td align="left"><p>In Windows 10, an IOMMU enhances system resiliency against memory attacks. ¹</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Secure firmware update process</p></td>
<td align="left"><p>To verify that the firmware complies with the secure firmware update process, you can validate it against the [System.Fundamentals.Firmware.UEFISecureBoot](http://msdn.microsoft.com/library/windows/hardware/dn932805.aspx#system-fundamentals-firmware-uefisecureboot) Windows Hardware Compatibility Program requirement.</p><p>Device Guard relies on the security of the underlying hardware and firmware. It is critical to keep the firmware updated with the latest security fixes.</p></td>
</tr>
</tbody>
</table>
 
## <a href="" id="before-you-begin"></a>Before using Device Guard in your company
Before you can successfully use Device Guard, you must set up your environment and your policies.
### Signing your apps
Device Guard mode supports both UWP apps and Classic Windows applications. Trust between Device Guard and your apps happen when your apps are signed using a signature that you determine to be trustworthy. Not just any signature will work.
This signing can happen by:
-   **Using the Windows Store publishing process.** All apps that come out of the Microsoft Store are automatically signed with special signatures that can roll-up to our certificate authority (CA) or to your own.
-   **Using your own digital certificate or public key infrastructure (PKI).** ISV's and enterprises can sign their own Classic Windows applications themselves, adding themselves to the trusted list of signers.
-   **Using a non-Microsoft signing authority.** ISV's and enterprises can use a trusted non-Microsoft signing authority to sign all of their own Classic Windows applications.
-   **Use the Device Guard signing portal**. Available in the Windows Store for Business, you can use a Microsoft web service to sign your Classic Windows applications. For more info, see [Device Guard signing](../manage/device-guard-signing-portal.md).
### Code Integrity policy
Before you can use the app protection included in Device Guard, you must create a Code Integrity policy using tools provided by Microsoft, but deployed using your current management tools, like Group Policy. The Code Integrity policy is a binary-encoded XML document that includes configuration settings for both the User and Kernel-modes of Windows 10 Enterprise, along with restrictions on Windows 10 script hosts. This policy restricts what code can run on a device.
For the Device Guard feature, devices should only have Code Integrity pre-configured if the settings are provided by a customer for a customer-provided image.
**Note**  This XML document can be signed in Windows 10 Enterprise, helping to add additional protection against administrative users changing or removing this policy.
 
### <a href="" id="virtualization-based-security-using-windows-10-hypervisor"></a>Virtualization-based security using Windows 10 Enterprise Hypervisor
Windows 10 Enterprise Hypervisor introduces new capabilities around virtual trust levels, which helps Windows 10 Enterprise services to run in a protected environment, in isolation from the running operating system. Windows 10 Enterprise virtualization-based security helps protect kernel code integrity and helps to provide credential isolation for the local security authority (LSA). Letting the Kernel Code Integrity service run as a hypervisor-hosted service increases the level of protection around the root operating system, adding additional protections against any malware that compromises the kernel layer.
**Important**  Device Guard devices that run Kernel Code Integrity with virtualization-based security must have compatible drivers - legacy drivers can be updated - and have all virtualization capabilities turned on. This includes virtualization extensions and input/output memory management unit (IOMMU) support.
 
 
 
