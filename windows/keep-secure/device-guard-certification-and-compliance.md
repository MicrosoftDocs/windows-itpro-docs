---
title: Device Guard certification and compliance (Windows 10)
description: Device Guard is a combination of hardware and software security features that, when configured together, will lock a device down so that it can only run trusted applications.
ms.assetid: 94167ECA-AB08-431D-95E5-7A363F42C7E3
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Device Guard certification and compliance
**Applies to**
-   Windows 10

Device Guard is a combination of hardware and software security features that, when configured together, will lock a device down so that it can only run trusted applications. If the app isn’t trusted it can’t run, period. It also means that even if an attacker manages to get control of the Windows kernel, he or she will be much less likely to be able to run malicious executable code after the computer restarts because of how decisions are made about what can run and when.
Device Guard uses the new virtualization-based security in Windows 10 to isolate the Code Integrity service from the Windows kernel itself, letting the service use signatures defined by your enterprise-controlled policy to help determine what is trustworthy. In effect, the Code Integrity service runs alongside the kernel in a Windows hypervisor-protected container.
For details on how to implement Device Guard, see [Device Guard deployment guide](device-guard-deployment-guide.md).
## Why use Device Guard
With thousands of new malicious files created every day, using traditional methods like signature-based detection to fight against malware provides an inadequate defense against new attacks. Device Guard on Windows 10 changes from a mode where apps are trusted unless blocked by an antivirus or other security solutions, to a mode where the operating system trusts only apps authorized by your enterprise.
Device Guard also helps protect against [zero day attacks](http://go.microsoft.com/fwlink/p/?linkid=534209) and works to combat the challenges of [polymorphic viruses](http://go.microsoft.com/fwlink/p/?LinkId=534210).

### Advantages to using Device Guard

You can take advantage of the benefits of Device Guard, based on what you turn on and use:
-   Helps provide strong malware protection with enterprise manageability
-   Helps provide the most advanced malware protection ever offered on the Windows platform
-   Offers improved tamper resistance

## How Device Guard works

Device Guard restricts the Windows 10 operating system to only running code that’s signed by trusted signers, as defined by your Code Integrity policy through specific hardware and security configurations, including:
-   User Mode Code Integrity (UMCI)
-   New kernel code integrity rules (including the new Windows Hardware Quality Labs (WHQL) signing constraints)
-   Secure Boot with database (db/dbx) restrictions
-   Virtualization-based security to help protect system memory and kernel mode apps and drivers from possible tampering.
-   Optional: Trusted Platform Module (TPM) 1.2 or 2.0
Device Guard works with your image-building process, so you can turn the virtualization-based security feature on for capable devices, configure your Code Integrity policy, and set any other operating system settings you require for Windows 10. After that, Device Guard works to help protect your devices:
1.  Your device starts up using Universal Extensible Firmware Interface (UEFI) Secure Boot, so that boot kits can’t run and so that Windows 10 starts before anything else.
2.  After securely starting up the Windows boot components, Windows 10 can start the Hyper-V virtualization-based security services, including Kernel Mode Code Integrity. These services help protect the system core (kernel), privileged drivers, and system defenses, like anti-malware solutions, by preventing malware from running early in the boot process, or in kernel after startup.
3.  Device Guard uses UMCI to make sure that anything that runs in User mode, such as a service, a Universal Windows Platform (UWP) app, or a Classic Windows application is trusted, allowing only trusted binaries to run.
4.  At the same time that Windows 10 starts up, so too does the trusted platform module (TPM). TPM provides an isolated hardware component that helps protect sensitive information, such as user credentials and certificates.
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
<td align="left"><p>UEFI firmware version 2.3.1 or higher with UEFI Secure Boot and Platform Secure Boot</p></td>
<td align="left"><p>UEFI Secure Boot ensures that the device boots only authorized code. Additionally, Boot Integrity, also known as Platform Secure Boot must be supported. You can validate it against the following Windows Hardware Compatibility Program requirements:</p>
<ul>
<li><p>[System.Fundamentals.Firmware.UEFISecureBoot](http://msdn.microsoft.com/library/windows/hardware/dn932805.aspx#system-fundamentals-firmware-uefisecureboot)</p></li>
<li><p>[System.Fundamentals.Firmware.CS.UEFISecureBoot.ConnectedStandby](http://msdn.microsoft.com/library/windows/hardware/dn932807.aspx#system-fundamentals-firmware-cs-uefisecureboot-connectedstandby)</p></li>
</ul></td>
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
<td align="left"><ul>
<li><p>The firmware setup should be locked to prevent other operating systems from starting and to prevent changes to the UEFI settings.</p></li>
<li><p>Work with your hardware manufacturer to ensure that the devices are Device Guard ready</p></li>
<li><p>You should require a firmware password or higher authentication to change firmware settings.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>x64 architecture</p></td>
<td align="left"><p>The features that virtualization-based security uses in the Windows hypervisor can only run on a 64-bit PC.</p></td>
</tr>
<tr class="even">
<td align="left"><p>A VT-d or AMD-Vi IOMMU (Input/output memory management unit)</p></td>
<td align="left"><p>In Windows 10, an IOMMU enhances system resiliency against memory attacks.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Secure firmware update process</p></td>
<td align="left"><p>To verify that the firmware complies with the secure firmware update process, you can validate it against the [System.Fundamentals.Firmware.UEFISecureBoot](http://msdn.microsoft.com/library/windows/hardware/dn932805.aspx#system-fundamentals-firmware-uefisecureboot) Windows Hardware Compatibility Program requirement.</p><p>Device Guard relies on the security of the underlying hardware and firmware. It is critical to keep the firmware updated with the latest security fixes.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Signed processor microcode updates</p></td>
<td align="left"><p>If the processor supports it, you must require signed microcode updates.</p></td>
</tr>
</tbody>
</table>
 
## Related topics
[Get apps to run on Device Guard-protected devices](getting-apps-to-run-on-device-guard-protected-devices.md)
[Create a Device Guard code integrity policy based on a reference device](creating-a-device-guard-policy-for-signed-apps.md)
 
 
