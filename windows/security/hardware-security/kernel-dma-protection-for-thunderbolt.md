---
title: Kernel DMA Protection
description: Learn how Kernel DMA Protection protects Windows devices against drive-by Direct Memory Access (DMA) attacks using PCI hot plug devices.
ms.collection:
  - tier1
ms.topic: conceptual
ms.date: 07/10/2024
---

# Kernel DMA Protection

Kernel Direct Memory Access (DMA) Protection is a Windows security feature that protects against external peripherals from gaining unauthorized access to memory.

PCIe hot plug devices such as Thunderbolt, USB4, and CFexpress allow users to attach classes of external peripherals, including graphics cards, to their devices with the plug-and-play ease of USB. These devices are DMA-capable, and can access system memory and perform read and write operations without the need for the system processor's involvement. This capability is the reason behind the exceptional performance of PCI devices, but it also makes them susceptible to *drive-by DMA attacks*.

Drive-by DMA attacks are attacks that occur while the owner of the system isn't present and usually take just a few minutes, with simple-to-moderate attacking tools (affordable, off-the-shelf hardware and software), that don't require the disassembly of the device. For example, attackers can plug in a USB-like device while the device owner is on a break, and walk away with all the secrets on the machine, or inject a malware that allows them to have full control over the device remotely while bypassing the lock screen.

> [!NOTE]
> Kernel DMA Protection feature doesn't protect against DMA attacks via 1394/FireWire, PCMCIA, CardBus, or ExpressCard.

## How Windows protects against DMA drive-by attacks

Windows uses the system *Input/Output Memory Management Unit (IOMMU)* to block external peripherals from starting and performing DMA, unless the drivers for these peripherals support memory isolation (such as DMA-remapping). Peripherals with [DMA Remapping compatible drivers][LINK-1] are automatically enumerated, started, and allowed to perform DMA to their assigned memory regions.

By default, peripherals with DMA Remapping incompatible drivers are blocked from starting and performing DMA until an authorized user signs into the system or unlocks the screen. IT administrators can modify the default behavior applied to devices with DMA Remapping incompatible drivers using MDM or group policies.

## User experience

When Kernel DMA Protection is enabled:

- Peripherals with DMA Remapping-compatible device drivers are automatically enumerated and started
- Peripherals with DMA Remapping-incompatible drivers are blocked from starting if the peripheral was plugged in before an authorized user logs in, or while the screen is locked. Once the system is unlocked, the peripheral driver is started by the OS, and the peripheral continues to function normally until the system is rebooted, or the peripheral is unplugged. The peripheral will continue to function normally if the user locks the screen or signs out of the system.

[!INCLUDE [kernel-direct-memory-access-dma-protection](../../../includes/licensing/kernel-direct-memory-access-dma-protection.md)]

## System compatibility

Kernel DMA Protection requires UEFI firmware support, and Virtualization-based Security (VBS) isn't required.

Kernel DMA Protection isn't compatible with other BitLocker DMA attacks countermeasures. It's recommended to disable the BitLocker DMA attacks countermeasures if the system supports Kernel DMA Protection. Kernel DMA Protection provides higher security bar for the system over the BitLocker DMA attack countermeasures, while maintaining usability of external peripherals.

> [!NOTE]
> DMA remapping support for graphics devices was added in Windows 11 with the WDDM 3.0 driver model; Windows 10 doesn't support this feature.

## Check if Kernel DMA Protection is enabled

Systems that support Kernel DMA Protection enable the feature automatically, with no user or IT admin configuration required.

You can use the Windows Security settings to check if Kernel DMA Protection is enabled:

1. Open **Windows Security**.
1. Select **Device security > Core isolation details > Memory access protection**

   :::image type="content" source="images/kernel-dma-protection-security-center.png" alt-text="Screenshot of Kernel DMA protection in Windows Security." lightbox="images/kernel-dma-protection-security-center.png" border="true":::

   Alternatively, you can use the System Information desktop app (`msinfo32.exe`). If the system supports Kernel DMA Protection, the **Kernel DMA Protection** value is set to **ON**.

   :::image type="content" source="images/kernel-dma-protection.png" alt-text="Screenshot of Kernel DMA protection in System Information." lightbox="images/kernel-dma-protection.png" border="true":::

   If the current state of **Kernel DMA Protection** is **OFF** and **Hyper-V - Virtualization Enabled in Firmware** is **NO**:

   - Reboot into UEFI settings
   - Turn on Intel Virtualization Technology
   - Turn on Intel Virtualization Technology for I/O (VT-d)
   - Reboot system into Windows

   > [!NOTE]
   > If the **Hyper-V** Windows feature is enabled, all the Hyper-V-related features will be hidden, and **A hypervisor has been detected. Features required for Hyper-V will not be displayed** entity will be shown at the bottom of the list. It means that **Hyper-V - Virtualization Enabled in Firmware** is set to **YES**.
   >
   > Enabling Hyper-V virtualization in Firmware (IOMMU) is required to enable **Kernel DMA Protection**, even when the firmware has the flag of *ACPI Kernel DMA Protection Indicators* described in [Kernel DMA Protection (Memory Access Protection) for OEMs][LINK-3].

   If the state of **Kernel DMA Protection** remains Off, then the system doesn't support Kernel DMA Protection.

For systems that don't support Kernel DMA Protection, refer to the [BitLocker countermeasures](../operating-system-security/data-protection/bitlocker/countermeasures.md) or [Thunderbolt 3 and Security on Microsoft Windows Operating system][EXT-1] for other means of DMA protection.

## Frequently asked questions

### Does Kernel DMA Protection prevent drive-by DMA attacks during Boot?

No, Kernel DMA Protection only protects against drive-by DMA attacks after the OS is loaded. It's the responsibility of the system firmware/BIOS to protect against attacks via the Thunderbolt 3 ports during boot.

### How can I check if a certain driver supports DMA-remapping?

Not all devices and drivers support DMA-remapping. To check if a specific driver is opted into DMA-remapping, check the values corresponding to the DMA Remapping Policy property in the Details tab of a device in Device Manager*. A value of **0** or **1** means that the device driver doesn't support DMA-remapping. A value of **2** means that the device driver supports DMA-remapping. If the property isn't available, then the device driver doesn't support DMA-remapping. Check the driver instance for the device you're testing. Some drivers may have varying values depending on the location of the device (internal vs. external).

:::image type="content" source="images/device-details.png" alt-text="Screenshot of device details for a Thunderbolt controller showing a value of 2." border="false":::

### When the drivers for PCI or Thunderbolt 3 peripherals don't support DMA-remapping?

Use the Windows-provided drivers for the peripherals, when available. If there are no class drivers provided by Windows for your peripherals, contact your peripheral vendor/driver vendor to update the driver to support [DMA Remapping][LINK-1].

### My system's Kernel DMA Protection is off. Can DMA-remapping for a specific device be turned on?

Yes. DMA remapping for a specific device can be turned on independent from Kernel DMA Protection. For example, if the driver opts in and VT-d (Virtualization Technology for Directed I/O) is turned on, then DMA remapping is enabled for the devices driver even if Kernel DMA Protection is turned off.

Kernel DMA Protection is a policy that allows or blocks devices to perform DMA, based on their remapping state and capabilities.

### Do Microsoft drivers support DMA-remapping?

The Microsoft inbox drivers for USB XHCI (3.x) Controllers, Storage AHCI/SATA Controllers, and Storage NVMe Controllers support DMA Remapping.

### Do drivers for non-PCI devices need to be compatible with DMA-remapping?

No. Devices for non-PCI peripherals, such as USB devices, don't perform DMA, thus no need for the driver to be compatible with DMA Remapping.

### How can an enterprise enable the External device enumeration policy?

The External device enumeration policy controls whether to enumerate external peripherals that aren't compatible with DMA-remapping. Peripherals that are compatible with DMA-remapping are always enumerated. Peripherals that aren't, can be blocked, allowed, or allowed only after the user signs in (default).

The policy can be enabled by using:

- Group Policy: **Administrative Templates\System\Kernel DMA Protection\Enumeration policy for external devices incompatible with Kernel DMA Protection**
- Mobile Device Management (MDM): [DmaGuard policies][LINK-2]

<!--links-->

[LINK-1]: /windows-hardware/drivers/pci/enabling-dma-remapping-for-device-drivers
[LINK-2]: /windows/client-management/mdm/policy-csp-dmaguard#dmaguard-policies
[LINK-3]: /windows-hardware/design/device-experiences/oem-kernel-dma-protection
[EXT-1]: https://thunderbolttechnology.net/security/Thunderbolt%203%20and%20Security.pdf
