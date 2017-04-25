---
title: Choose the right BitLocker countermeasure (Windows 10)
description: This section outlines the best countermeasures you can use to protect your organization from bootkits and rootkits, brute force sign-in, Direct Memory Access (DMA) attacks, Hyberfil.sys attacks, and memory remanence attacks.
ms.assetid: b0b09508-7885-4030-8c61-d91458afdb14
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Choose the right BitLocker countermeasure

**Applies to**
-   Windows 10

This section outlines the best countermeasures you can use to protect your organization from bootkits and rootkits, brute force sign-in, Direct Memory Access (DMA) attacks, Hyberfil.sys attacks, and memory remanence attacks.
You can use BitLocker to protect your Windows 10 PCs. Whichever operating system you’re using, Microsoft and Windows-certified devices provide countermeasures to address attacks and improve your data security. In most cases, this protection can be implemented without the need for pre-boot authentication.

Tables 1 and 2 summarize the recommended mitigations for different types of attacks against PCs running recent versions of Windows. The orange blocks indicate that the system requires additional configuration from the default settings.

<table>
<colgroup>
<col width="20%" />
<col width="25%" />
<col width="55%" />
</colgroup>
<tr>
<td></td>
<td BGCOLOR="#01BCF3">
<p><font color="#FFFFFF"><strong>Windows 8.1<br>without TPM</strong></font></p></td>
<td BGCOLOR="#01BCF3">
<p><font color="#FFFFFF"><strong>Windows 8.1 Certified<br>(with TPM)</strong></font></p></td>
</tr>
<tr class="odd">
<td BGCOLOR="#FF8C01">
<p><font color="#FFFFFF">Bootkits and<br>Rootkits</p></font></td>
<td BGCOLOR="#FED198"><p>Without TPM, boot integrity checking is not available</p></td>
<td BGCOLOR="#99E4FB"><p>Secure by default when UEFI-based Secure Boot is enabled and a firmware password is required to change settings</p></td>
</tr>
<tr class="even">
<td BGCOLOR="FF8C01">
<p><font color="#FFFFFF">Brute Force<br>Sign-in</font></p></td>
<td BGCOLOR="#99E4FB"><p>Secure by default, and can be improved with account lockout Group Policy</p></td>
<td BGCOLOR="#99E4FB"><p>Secure by default, and can be improved with account lockout and device lockout Group Policy settings</p></td>
</tr>
<tr class="odd">
<td BGCOLOR="#FF8C01">
<p><font color="#FFFFFF">DMA<br>Attacks</p></font></td>
<td BGCOLOR="#99E4FB"><p>If policy is deployed, secure by default for all lost or stolen devices because new DMA devices are granted access only when an authorized user is signed in</p></td>
<td BGCOLOR="#99E4FB"><p>If policy is deployed, secure by default for all lost or stolen devices because new DMA devices are granted access only when an authorized user is signed in</p></td>
</tr>
<tr class="even">
<td BGCOLOR="FF8C01">
<p><font color="#FFFFFF">Hyberfil.sys<br>Attacks</font></p></td>
<td BGCOLOR="#99E4FB"><p>Secure by default; hyberfil.sys secured on encrypted volume</p></td>
<td BGCOLOR="#99E4FB"><p>Secure by default; hyberfil.sys secured on encrypted volume</p></td>
</tr>
<tr class="odd">
<td BGCOLOR="#FF8C01">
<p><font color="#FFFFFF">Memory<br>Remanence<br>Attacks</p></font></td>
<td BGCOLOR="#FED198"><p>Password protect the firmware and disable booting from external media. If an attack is viable, consider pre-boot authentication</p></td>
<td BGCOLOR="#99E4FB"><p>Password protect the firmware and ensure Secure Boot is enabled. If an attack is viable, consider pre-boot authentication</p></td>
</tr>
</table>

**Table 1.**&nbsp;&nbsp;How to choose the best countermeasures for Windows 8.1<br><br>

<table>
<colgroup>
<col width="20%" />
<col width="25%" />
<col width="55%" />
</colgroup>
<tr>
<td></td>
<td BGCOLOR="#01BCF3">
<p><font color="#FFFFFF"><strong>Windows 10<br>without TPM</strong></font></p></td>
<td BGCOLOR="#01BCF3">
<p><font color="#FFFFFF"><strong>Windows 10 Certified<br>(with TPM)</strong></font></p></td>
</tr>
<tr class="odd">
<td BGCOLOR="#FF8C01">
<p><font color="#FFFFFF">Bootkits and<br>Rootkits</p></font></td>
<td BGCOLOR="#FED198"><p>Without TPM, boot integrity checking is not available</p></td>
<td BGCOLOR="#99E4FB"><p>Secure by default when UEFI-based Secure Boot is enabled and a firmware password is required to change settings</p></td>
</tr>
<tr class="even">
<td BGCOLOR="FF8C01">
<p><font color="#FFFFFF">Brute Force<br>Sign-in</font></p></td>
<td BGCOLOR="#99E4FB"><p>Secure by default, and can be improved with account lockout Group Policy</p></td>
<td BGCOLOR="#99E4FB"><p>Secure by default, and can be improved with account lockout and device lockout Group Policy settings</p></td>
</tr>
<tr class="odd">
<td BGCOLOR="#FF8C01">
<p><font color="#FFFFFF">DMA<br>Attacks</p></font></td>
<td BGCOLOR="#99E4FB"><p>If policy is deployed, secure by default for all lost or stolen devices because new DMA devices are granted access only when an authorized user is signed in</p></td>
<td BGCOLOR="#99E4FB"><p>Secure by default; certified devices do not expose vulnerable DMA busses.<br>Can be additionally secured by deploying policy to restrict DMA devices:</p>
<ul>
<li><p><a href="https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#DataProtection_AllowDirectMemoryAccess">DataProtection/AllowDirectMemoryAccess</a></p></li>
<li><p><a href="https://support.microsoft.com/en-us/kb/2516445">Block 1394 and Thunderbolt</a></p></li></ul>
</td>
</tr>
<tr class="even">
<td BGCOLOR="FF8C01">
<p><font color="#FFFFFF">Hyberfil.sys<br>Attacks</font></p></td>
<td BGCOLOR="#99E4FB"><p>Secure by default; hyberfil.sys secured on encrypted volume</p></td>
<td BGCOLOR="#99E4FB"><p>Secure by default; hyberfil.sys secured on encrypted volume</p></td>
</tr>
<tr class="odd">
<td BGCOLOR="#FF8C01">
<p><font color="#FFFFFF">Memory<br>Remanence<br>Attacks</p></font></td>
<td BGCOLOR="#FED198"><p>Password protect the firmware and disable booting from external media. If an attack is viable, consider pre-boot authentication</p></td>
<td BGCOLOR="#99E4FB"><p>Password protect the firmware and ensure Secure Boot is enabled.<br>The most effective mitigation, which we advise for high-security devices, is to configure a TPM+PIN protector, disable Standby power management, and shut down or hibernate the device before it leaves the control of an authorized user.</p></td>
</tr>
</table>

**Table 2.**&nbsp;&nbsp;How to choose the best countermeasures for Windows 10

The latest InstantGo devices, primarily tablets, are designed to be secure by default against all attacks that might compromise the BitLocker encryption key. Other Windows devices can be secure by default too. DMA port–based attacks, which represent the attack vector of choice, are not possible on InstantGo devices because these port types are prohibited. The inclusion of DMA ports on even non-InstantGo devices is extremely rare on recent devices, particularly on mobile ones. This could change if Thunderbolt is broadly adopted, so IT should consider this when purchasing new devices. In any case, DMA ports can be disabled entirely, which is an increasingly popular option because the use of DMA ports is infrequent in the non-developer space. To prevent DMA port usage unless an authorized user is signed in, you can set the DataProtection/AllowDirectMemoryAccess policy by using Mobile Device Management (MDM) or the Group Policy setting **Disable new DMA devices when this computer is locked** (beginning with Windows 10, version 1703). This setting is **Not configured** by default. The path to the Group Policy setting is:

**Computer Configuration|Administrative Templates|Windows Components|BitLocker Drive Encryption**
    
Memory remanence attacks can be mitigated with proper configuration; in cases where the system memory is fixed and non-removable, they are not possible using published techniques. Even in cases where system memory can be removed and loaded into another device, attackers will find the attack vector extremely unreliable, as has been shown in the DRDC Valcartier group’s analysis (see [An In-depth Analysis of the Cold Boot Attack](http://www.dtic.mil/cgi-bin/GetTRDoc?AD=ADA545078)).

Windows 7 PCs share the same security risks as newer devices but are far more vulnerable to DMA and memory remanence attacks, because Windows 7 devices are more likely to include DMA ports, lack support for UEFI-based Secure Boot, and rarely have fixed memory. To eliminate the need for pre-boot authentication on Windows 7 devices, disable the ability to boot to external media, password-protect the BIOS configuration, and disable the DMA ports. If you believe that your devices may be a target of a memory remanence attack, where the system memory may be removed and put into another computer to gain access to its contents, consider testing your devices to determine whether they are susceptible to this type of attack.

In the end, many customers will find that pre-boot authentication improves security only for a shrinking subset of devices within their organization. Microsoft recommends a careful examination of the attack vectors and mitigations 
outlined in this document along with an evaluation of your devices before choosing to implement pre-boot authentication, which may not enhance the security of your devices and instead will only compromise the user experience and add to support costs.

## See also
-   [Types of attacks for volume encryption keys](types-of-attacks-for-volume-encryption-keys.md)
-   [BitLocker Countermeasures](bitlocker-countermeasures.md)
-   [Protect BitLocker from pre-boot attacks](protect-bitlocker-from-pre-boot-attacks.md)
-   [BitLocker overview](bitlocker-overview.md)
 
 
