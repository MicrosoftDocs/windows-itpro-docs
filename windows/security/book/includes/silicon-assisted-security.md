---
author: paolomatarazzo
ms.author: paoloma
ms.date: 04/09/2024
ms.topic: include
---

## Silicon assisted security

:::image type="content" source="..\images\silicon-assisted-security.svg" alt-text="Diagram containing a list of features." border="false":::

In addition to a modern hardware root-of-trust, there are numerous other capabilities in the latest chips that harden the operating system against threats by protecting the boot process, safeguarding the integrity of memory, isolating security-sensitive compute logic, and more.

### Secured kernel

To secure the kernel we have two key features: virtualization-based security (VBS) and hypervisor-protected code integrity (HVCI). All Windows 11 devices will support HVCI and most new devices will come with VBS and HVCI protection turned on by default.

Virtualization-based security (VBS), also known as core isolation, is a critical building block in a secure system. VBS uses hardware virtualization features to host a secure kernel separated from the operating system. This means that even if the operating system is compromised, the secure kernel is still protected. The isolated VBS environment protects processes, such as security solutions and credential managers, from other processes running in memory. Even if malware gains access to the main OS kernel, the hypervisor and virtualization hardware help prevent the malware from executing unauthorized code or accessing platform secrets in the VBS environment. VBS
implements virtual trust level 1 (VTL1), which has higher privilege than the virtual trust level 0 (VTL0) implemented in the main kernel.

Since more privileged VTLs can enforce their own memory protections, higher VTLs can effectively protect areas of memory from lower VTLs. In practice, this allows a lower VTL to protect isolated memory regions by securing them with a higher VTL. For example, VTL0 could store a secret in VTL1, at which point only VTL1 could access it. Even if VTL0 is compromised, the secret would be safe.

Learn more: [Virtualization-based security (VBS)](/windows-hardware/design/device-experiences/oem-vbs)

Hypervisor-protected code integrity (HVCI), also called memory integrity, uses VBS to run Kernel Mode Code Integrity (KMCI) inside the secure VBS environment instead of the main Windows kernel. This helps prevent attacks that attempt to modify kernel-mode code for things like drivers. The KMCI checks that all kernel code is properly signed and hasn't been tampered with before it is allowed to run. HVCI ensures that only validated code can be executed in kernel mode. The hypervisor leverages processor virtualization extensions to enforce memory protections that prevent kernel-mode software from executing code that has not been first validated by the code integrity subsystem. HVCI protects against common attacks like WannaCry that rely on the ability to inject malicious code into the kernel. HVCI can prevent injection of malicious kernel-mode code even when drivers and other kernel-mode software have bugs.

With new installs of Windows 11, OS support for VBS and HVCI is turned on by default for all devices that meet prerequisites.

Learn more:

- [Enable virtualization-based protection of code integrity](../../hardware-security/enable-virtualization-based-protection-of-code-integrity.md)
- [Hypervisor-protected Code Integrity (HVCI)](/windows/security/hardware-security/enable-virtualization-based-protection-of-code-integrity)

### Hardware-enforced stack protection

Hardware-enforced stack protection integrates software and hardware for a modern defense against cyberthreats like memory corruption and zero-day exploits. Based on Control- flow Enforcement Technology (CET) from Intel and AMD Shadow Stacks, hardware-enforced stack protection is designed to protect against exploit techniques that try to hijack return addresses on the stack.

Application code includes a program processing stack that hackers seek to corrupt or disrupt in a type of attack called stack smashing. When defenses like executable space protection began thwarting such attacks, hackers turned to new methods like return-oriented programming. Return-oriented programming, a form of advanced stack smashing, can bypass defenses, hijack the data stack, and ultimately force a device to perform harmful operations. To guard against these control-flow hijacking attacks, the Windows kernel creates a separate "shadow stack" for return addresses. Windows 11 extends stack protection capabilities to provide both user mode and kernel mode support.

Learn more:

- [Understanding Hardware-enforced Stack Protection](https://techcommunity.microsoft.com/t5/windows-os-platform-blog/understanding-hardware-enforced-stack-protection/ba-p/1247815)
- [Developer Guidance for Hardware-enforced Stack Protection](https://techcommunity.microsoft.com/t5/windows-kernel-internals/developer-guidance-for-hardware-enforced-stack-protection/ba-p/2163340)

### Kernel Direct Memory Access (DMA) protection

Windows 11 protects against physical threats such as drive-by Direct Memory Access (DMA) attacks. Peripheral Component Interconnect Express (PCIe) hot-pluggable devices such as Thunderbolt, USB4, and CFexpress allow users to attach new classes of external peripherals, including graphics cards or other PCI devices, to their PCs with the plug-and-play ease of USB. Because PCI hot-plug ports are external and easily accessible, PCs are susceptible to drive-by DMA attacks. Memory access protection (also known as Kernel DMA Protection) protects against these attacks by preventing external peripherals from gaining unauthorized access to memory. Drive-by DMA attacks typically happen quickly while the system owner isn't present. The attacks are performed using simple to moderate attacking tools created with affordable, off-the-shelf hardware and software that do not require the disassembly of the PC. For example, a PC owner might leave a device for a quick coffee break. Meanwhile, an attacker plugs an external tool into a port to steal information or inject code that gives the attacker remote control over the PCs, including the ability to bypass the lock screen. With memory access protection built in and enabled, Windows 11 is protected against physical attack wherever people work.

Learn more: [Kernel Direct Memory Access (DMA) protection](/windows/security/hardware-security/kernel-dma-protection-for-thunderbolt)

### Secured-core PC

The March 2021 Security Signals report found that more than 80% of enterprises have experienced at least one firmware attack in the past two years. For customers in data-sensitive industries like financial services, government, and healthcare, Microsoft has worked with OEM partners to offer a special category of devices called Secured-core PCs (SCPCs). The devices ship with additional security measures enabled at the firmware layer, or device core, that underpins Windows.

Secured-core PCs help prevent malware attacks and minimize firmware vulnerabilities by launching into a clean and trusted state at startup with a hardware-enforced root-of-trust. Virtualization-based security comes enabled by default. With built-in hypervisor-protected code integrity (HVCI) shielding system memory, Secured-core PCs ensure that all kernel executable code is signed only by known and approved authorities. Secured-core PCs also protect against physical threats such as drive-by Direct Memory Access (DMA) attacks with kernel DMA protection.

Secured-core PCs provide multiple layers of robust protection against hardware and firmware attacks. Sophisticated malware attacks may commonly attempt to install "bootkits" or "rootkits" on the system to evade detection and achieve persistence. This malicious software may run at the firmware level prior to Windows being loaded or during the Windows boot process itself, enabling the system to start with the highest level of privilege. Because critical subsystems in Windows leverage virtualization-based security, protecting the hypervisor becomes increasingly important. To ensure that no unauthorized firmware or software can start before the Windows bootloader, Windows PCs rely on the Unified Extensible Firmware Interface (UEFI) Secure Boot standard, a baseline security feature of all Windows 11 PCs. Secure Boot helps ensure that only authorized firmware and software with trusted digital signatures can execute. In addition, measurements of all boot components are securely stored in the TPM to help establish a non-repudiable audit log of the boot called the Static Root of Trust for Measurement (SRTM).

Thousands of PC vendors produce numerous device models with diverse UEFI firmware components, which in turn creates an incredibly large number of SRTM signatures and measurements at bootup. Because these signatures and measurements are inherently trusted by Secure Boot, it can be challenging to constrain trust to only what is needed to boot on any specific device. Traditionally, blocklists and allowlists were the two main techniques used to constrain trust, and they continue to expand if devices rely only on SRTM measurements.

In Secured-core PCs, [System Guard Secure Launch](/windows/security/hardware-security/system-guard-secure-launch-and-smm-protection) protects bootup with a technology known as the Dynamic Root of Trust for Measurement (DRTM). With DRTM, the system initially follows the normal UEFI Secure Boot process. However, before launching, the system enters a hardware-controlled trusted state that forces the CPU(s) down a hardware-secured code path. If a malware rootkit or bootkit has bypassed UEFI Secure Boot and resides in memory, DRTM will prevent it from accessing secrets and critical code protected by the virtualization-based security environment. [Firmware Attack Surface Reduction (FASR) technology](/windows-hardware/drivers/bringup/firmware-attack-surface-reduction) can be used instead of DRTM on supported devices, such as Microsoft Surface.

System Management Mode (SMM) isolation is an execution mode in x86-based processors that runs at a higher effective privilege than the hypervisor. SMM complements the protections provided by DRTM by helping to reduce the attack surface. Relying on capabilities provided by silicon providers like Intel and AMD, SMM isolation enforces policies that implement restrictions such as preventing SMM code from accessing OS memory. The SMM isolation policy is included as part of the DRTM measurements that can be sent to a verifier like Microsoft Azure Remote Attestation.

:::image type="content" source="..\images\architecture.png" alt-text="aas" lightbox="..\architecture.png" border="false":::

Learn more:

- [Dynamic Root of Trust measure and SMM isolation](https://www.microsoft.com/security/blog/2020/09/01/force-firmware-code-to-be-measured-and-attested-by-secure-launch-on-windows-10/)
- [Secured-core PC firmware protection](/windows-hardware/design/device-experiences/oem-highly-secure-11)

### Secured-core configuration lock

In many organizations, IT administrators enforce policies on their corporate devices to protect the OS and keep devices in a compliant state by preventing users from changing configurations and creating configuration drift. Configuration drift occurs when users with local admin rights change settings and put the device out of sync with security policies. Devices in a non-compliant state can be vulnerable until the next sync, when configuration is reset with the mobile device management (MDM) solution. Secured-core configuration lock (config lock) is a Secured-core PC (SCPC) feature that prevents users from making unwanted changes to security settings. With config lock, the OS monitors the registry keys that are supported and reverts to the IT-desired SCPC state in seconds after detecting a drift.

Learn more: [Windows 11 with config lock](/windows/client-management/mdm/config-lock)
