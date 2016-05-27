---
title: Types of attacks for volume encryption keys (Windows 10)
description: There are many ways Windows helps protect your organization from attacks, including Unified Extensible Firmware Interface (UEFI) secure boot, Trusted Platform Module (TPM), Group Policy, complex passwords, and account lockouts.
ms.assetid: 405060a9-2009-44fc-9f84-66edad32c6bc
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Types of attacks for volume encryption keys

**Applies to**
-   Windows 10

There are many ways Windows helps protect your organization from attacks, including Unified Extensible Firmware Interface (UEFI) secure boot, Trusted Platform Module (TPM), Group Policy, complex passwords, and account lockouts.

The next few sections describe each type of attack that could be used to compromise a volume encryption key, whether for BitLocker or a non-Microsoft encryption solution. After an attacker has compromised a volume encryption key, the attacker can read data from your system drive or even install malware while Windows is offline. Each section begins with a graphical overview of the attack’s strengths and weaknesses as well as suggested mitigations.

### Bootkit and rootkit attacks

Rootkits are a sophisticated and dangerous type of malware that runs in kernel mode, using the same privileges as the operating system. Because rootkits have the same or possibly even more rights than the operating system, they can completely hide themselves from Windows and even an antimalware solution. Often, rootkits are part of an entire suite of malware that can bypass local logins, record passwords, transfer private files, and capture cryptography keys.

Different types of bootkits and rootkits load at different software levels:

-   **Kernel level.** Rootkits running at the kernel level have the highest privilege in the operating system. They may be able to inject malicious code or replace portions of the core operating system, including both the kernel and device drivers.
-   **Application level.** These rootkits are aimed to replace application binaries with malicious code, such as a Trojan, and can even modify the behavior of existing applications.
-   **Library level.** The purpose of library-level rootkits is to hook, patch, or replace system calls with malicious code that can hide the malware’s presence.
-   **Hypervisor level.** Hypervisor rootkits target the boot sequence. Their primary purpose is to modify the boot sequence to load themselves as a hypervisor.
-   **Firmware level.** These rootkits overwrite the PC’s BIOS firmware, giving the malware low-level access and potentially the ability to install or hide malware, even if it’s cleaned or removed from the hard disk.

Regardless of the operating system or encryption method, rootkits have access to confidential data once installed. Application-level rootkits can read any files the user can access, bypassing volume-level encryption. Kernel-, library-, hypervisor-, and firmware-level rootkits have direct access to system files on encrypted volumes and can also retrieve an encryption key from memory.

Windows offers substantial protection from bootkits and rootkits, but it is possible to bypass operating system security when an attacker has physical access to the device and can install the malware to the device while Windows is offline. For example, an attacker might boot a PC from a USB flash drive containing malware that starts before Windows. The malware can replace system files or the PC’s firmware or simply start Windows under its control.

To sufficiently protect a PC from boot and rootkits, devices must use pre-boot authentication or Secure Boot, or the encryption solution must use the device’s Trusted Platform Module (TPM) as a means of monitoring the integrity of the end-to-end boot process. Pre-boot authentication is available for any device, regardless of the hardware, but because it is inconvenient to users, it should be used only to mitigate threats that are applicable to the device. On devices with Secure Boot enabled, you do not need to use pre-boot authentication to protect against boot and rootkit attacks.

Although password protection of the UEFI configuration is important for protecting a device’s configuration and preventing an attacker from disabling Secure Boot, use of a TPM and its Platform Configuration Register (PCR) measurements (PCR7) to ensure that the system’s bootloader (whether a Windows or non-Microsoft encryption solution) is tamper free and the first code to start on the device is critical. An encryption solution that doesn’t use a device’s TPM to protect its components from tampering may be unable to protect itself from bootkit-level infections that could log a user’s password or acquire encryption keys.

For this reason, when BitLocker is configured on devices that include a TPM, the TPM and its PCRs are always used to secure and confirm the integrity of the pre–operating system environment before making encrypted volumes accessible.

Any changes to the UEFI configuration invalidates the PCR7 and require the user to enter the BitLocker recovery key. Because of this feature, it’s not critical to password-protect your UEFI configuration. If an attacker successfully turns off Secure Boot or otherwise changes the UEFI configuration, they will need to enter the BitLocker recovery key, but UEFI password protection is a best practice and is still required for systems not using a TPM (such as non-Microsoft alternatives).

### Brute-force Sign-in Attacks

Attackers can find any password if you allow them to guess enough times. The process of trying millions of different passwords until you find the right one is known as a *brute-force sign-in attack*. In theory, an attacker could obtain any password by using this method.

Three opportunities for brute-force attacks exist:

-   **Against the pre-boot authenticator.** An attacker could attack the device directly by attempting to guess the user’s BitLocker PIN or an equivalent authenticator. The TPM mitigates this approach by invoking an anti-hammering lockout capability that requires the user to wait until the lockout period ends or enter the BitLocker recovery key.
-   **Against the recovery key.** An attacker could attempt to guess the 48-digit BitLocker recovery key. Even without a lockout period, the key is long enough to make brute-force attacks impractical. Specifically, the BitLocker recovery key has 128 bits of entropy; thus, the average brute-force attack would succeed after 18,446,744,073,709,551,616 guesses. If an attacker could guess 1 million passwords per second, the average brute-force attack would require more than 580,000 years to be successful.
-   **Against the operating system sign-in authenticator.** An attacker can attempt to guess a valid user name and password. Windows implements a delay between password guesses, slowing down brute-force attacks. In addition, all recent versions of Windows allow administrators to require complex passwords and password lockouts. Similarly, administrators can use Microsoft Exchange ActiveSync policy or Group Policy to configure Windows 8.1 and Windows 8 to automatically restart and require the user to enter the BitLocker 48-digit recovery key after a specified number of invalid password attempts. When these settings are enabled and users follow best practices for complex passwords, brute-force attacks against the operating system sign-in are impractical.

In general, brute-force sign-in attacks are not practical against Windows when administrators enforce complex passwords and account lockouts.

### Direct Memory Access Attacks

Direct memory access (DMA) allows certain types of hardware devices to communicate directly with a device’s system memory. For example, if you use Thunderbolt to connect another device to your computer, the second device automatically has Read and Write access to the target computer’s memory.

Unfortunately, DMA ports don’t use authentication and access control to protect the contents of the computer’s memory. Whereas Windows can often prevent system components and apps from reading and writing to protected parts of memory, a device can use DMA to read any location in memory, including the location of any encryption keys.

DMA attacks are relatively easy to execute and require little technical skills. Anyone can download a tool from the Internet, such as those made by [Passware](http://www.lostpassword.com/), [ElcomSoft](http://elcomsoft.com/), and 
others, and then use a DMA attack to read confidential data from a PC’s memory. Because encryption solutions store their encryption keys in memory, they can be accessed by a DMA attack.

Not all port types are vulnerable to DMA attacks. USB in particular does not allow DMA, but devices that have any of the following port types are vulnerable:

-   FireWire
-   Thunderbolt
-   ExpressCard
-   PCMCIA
-   PCI
-   PCI-X
-   PCI Express

To perform a DMA attack, attackers typically connect a second PC that is running a memory-scanning tool (for example, Passware, ElcomSoft) to the FireWire or Thunderbolt port of the target computer. When connected, the software 
scans the system memory of the target and locates the encryption key. Once acquired, the key can be used to decrypt the drive and read or modify its contents.

A much more efficient form of this attack exists in theory: An attacker crafts a custom FireWire or Thunderbolt device that has the DMA attack logic programmed on it. Now, the attacker simply needs to physically connect the device. If the attacker does not have physical access, they could disguise it as a free USB flash drive and distribute it to employees of a target organization. When connected, the attacking device could use a DMA attack to scan the PC’s memory for the encryption key. It could then transmit the key (or any data in the PC’s memory) using the PC’s Internet connection or its own wireless connection. This type of attack would require an extremely high level of sophistication, because it requires that the attacker create a custom device (devices of these types are not readily available in the marketplace at this time).

Today, one of the most common uses for DMA ports on Windows devices is for developer debugging, a task that some developers need to perform and one that few consumers will ever perform. Because USB; DisplayPort; and other, more secure port types satisfy consumers, most new mobile PCs do not include DMA ports. Microsoft’s view is that because of the inherent security risks of DMA ports, they do not belong on mobile devices, and Microsoft has prohibited their inclusion on any InstantGo-certified devices. InstantGo devices offer mobile phone–like power management and instant-on capabilities; at the time of writing, they are primarily found in Windows tablets.

DMA-based expansion slots are another avenue of attack, but these slots generally appear only on desktop PCs that are designed for expansion. Organizations can use physical security to prevent outside attacks against their desktop PCs. In addition, a DMA attack on the expansion slot would require a custom device; as a result, an attacker would most likely insert an interface with a traditional DMA port (for example, FireWire) into the slot to attack the PC.

To mitigate a port-based DMA attack an administrator can configure policy settings to disable FireWire and other device types that have DMA. Also, many PCs allow those devices to be disabled by using firmware settings. Although the need for pre-boot authentication can be eliminated at the device level or through Windows configuration, the BitLocker pre-boot authentication feature is still available when needed. When used, it successfully mitigates all types of DMA port and expansion slot attacks on any type of device.

### Hyberfil.sys Attacks

The hyberfil.sys file is the Windows hibernation file. It contains a snapshot of system memory that is generated when a device goes into hibernation and includes the encryption key for BitLocker and other encryption technologies. Attackers have claimed that they have successfully extracted encryption keys from the hyberfil.sys file.

Like the DMA port attack discussed in the previous section, tools are available that can scan the hyberfile.sys file and locate the encryption key, including a tool made by [Passware](http://www.lostpassword.com/). Microsoft does not consider Windows to be vulnerable to this type of attack, because Windows stores the hyberfil.sys file within the encrypted system volume. As a result, the file would be accessible only if the attacker had both physical and sign-in access to the PC. When an attacker has sign-in access to the PC, there are few reasons for the attacker to decrypt the drive, because they would already have full access to the data within it.

In practice, the only reason an attack on hyberfil.sys would grant an attacker additional access is if an administrator had changed the default Windows configuration and stored the hyberfil.sys file on an unencrypted drive. By default, Windows 10 is designed to be secure against this type of attack.

### Memory Remanence Attacks

A memory remanence attack is a side-channel attack that reads the encryption key from memory after restarting a PC. Although a PC’s memory is often considered to be cleared when the PC is restarted, memory chips don’t immediately lose their memory when you disconnect power. Therefore, an attacker who has physical access to the PC’s memory might be able to read data directly from the memory—including the encryption key.

When performing this type of cold boot attack, the attacker accesses the PC’s physical memory and recovers the encryption key within a few seconds or minutes of disconnecting power. This type of attack was demonstrated by researchers at [Princeton University](http://www.youtube.com/watch?v=JDaicPIgn9U). With the encryption key, the attacker would be able to decrypt the drive and access its files.

To acquire the keys, attackers follow this process:

1.  Freeze the PC’s memory. For example, an attacker can freeze the memory to −50°C by spraying it with aerosol air duster spray.
2.  Restart the PC.
3.  Instead of restarting Windows, boot to another operating system. Typically, this is done by connecting a bootable flash drive or loading a bootable DVD.
4.  The bootable media loads the memory remanence attack tools, which the attacker uses to scan the system memory and locate the encryption keys.
5.  The attacker uses the encryption keys to access the drive’s data.

If the attacker is unable to boot the device to another operating system (for example, if bootable flash drives have been disabled or Secure Boot is enabled), the attacker can attempt to physically remove the frozen memory from the device and attach it to a different, possibly identical device. Fortunately, this process has proven extremely unreliable, as evidenced by the Defence Research and Development Canada (DRDC) Valcartier group’s analysis (see [An In-depth Analysis of the Cold Boot Attack](http://www.dtic.mil/cgi-bin/GetTRDoc?AD=ADA545078)). On an increasing portion of modern devices, this type of attack is not even possible, because memory is soldered directly to the motherboard.

Although Princeton’s research proved that this type of attack was possible on devices that have removable memory, device hardware has changed since the research was published in 2008:

-   Secure Boot prevents the malicious tools that the Princeton attack depends on from running on the target device.
-   Windows systems with BIOS or UEFI can be locked down with a password, and booting to a USB drive can be prevented.
-   If booting to USB is required on the device, it can be limited to starting trusted operating systems by using Secure Boot.
-   The discharge rates of memory are highly variable among devices, and many devices have memory that is completely immune to memory remanence attacks.
-   Increased density of memory diminishes their remanence properties and reduces the likelihood that the attack can be successfully executed, even when memory is physically removed and placed in an identical system where the system’s configuration may enable booting to the malicious tools.

Because of these factors, this type of attack is rarely possible on modern devices. Even in cases where the risk factors exist on legacy devices, attackers will find the attack unreliable. For detailed info about the practical uses for forensic memory acquisition and the factors that make a computer vulnerable or resistant to memory remanence attacks, read [An In-depth Analysis of the Cold Boot Attack](http://www.dtic.mil/cgi-bin/GetTRDoc?AD=ADA545078).

The BitLocker pre-boot authentication feature can successfully mitigate memory remanence attacks on most devices, but you can also mitigate such attacks by protecting the system UEFI or BIOS and prevent the PC from booting from external media (such as a USB flash drive or DVD). The latter option is often a better choice, because it provides sufficient protection without inconveniencing users with pre-boot authentication.

## See also

-   [BitLocker countermeasures](bitlocker-countermeasures.md)
-   [Choose the right BitLocker countermeasure](choose-the-right-bitlocker-countermeasure.md)
-   [Protect BitLocker from pre-boot attacks](protect-bitlocker-from-pre-boot-attacks.md)
-   [BitLocker overview](bitlocker-overview.md)
