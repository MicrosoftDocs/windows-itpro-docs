---
title: Manage Surface UEFI settings 
description: Use Surface UEFI settings to enable or disable devices or components, configure security settings, and adjust Surface device boot settings. 
keywords: firmware, security, features, configure, hardware
ms.localizationpriority: medium
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: devices, surface
author: coveminer
ms.author: greglin
ms.topic: article
ms.reviewer: 
manager: laurawi
---

# Manage Surface UEFI settings

All current and future generations of Surface devices use a unique Unified Extensible Firmware Interface (UEFI) engineered by Microsoft specifically for these devices. Surface UEFI settings provide the ability to enable or disable built-in devices and components, protect UEFI settings from being changed, and adjust the Surface device boot settings. 

## Support for cloud-based management

With Device Firmware Configuration Interface (DFCI) profiles built into Microsoft Intune (now available in public preview), Surface UEFI management extends the modern management stack down to the UEFI hardware level. DFCI supports zero-touch provisioning, eliminates BIOS passwords, provides control of security settings including boot options and built-in peripherals, and lays the groundwork for advanced security scenarios in the future. DFCI is currently available for Surface Pro 7, Surface Pro X, and Surface Laptop 3. For more information, refer to [Intune management of Surface UEFI settings](surface-manage-dfci-guide.md).

## Open Surface UEFI menu

To adjust UEFI settings during system startup:

1. Shut down your Surface and wait about 10 seconds to make sure it's off.
2. Press and hold the **Volume-up** button  and - at the same time - press and release the **Power button.**
3. As the Microsoft or Surface logo appears on your screen, continue to hold the **Volume-up** button until the UEFI screen appears.

## UEFI PC information page

The PC information page includes detailed information about your Surface device: 

- **Model** – Your Surface device’s model will be displayed here, such as Surface Book 2 or Surface Pro 7. The exact configuration of your device is not shown, (such as processor, disk size, or memory size). 
- **UUID** – This Universally Unique Identification number is specific to your device and is used to identify the device during deployment or management. 

- **Serial Number** – This number is used to identify this specific Surface device for asset tagging and support scenarios.
- **Asset Tag** – The asset tag is assigned to the Surface device with the [Asset Tag Tool](https://docs.microsoft.com/surface/assettag). 

You will also find detailed information about the firmware of your Surface device. Surface devices have several internal components that each run different versions of firmware. The firmware version of each of the following devices is displayed on the **PC information** page (as shown in Figure 1): 

- System UEFI 

- SAM Controller 

- Intel Management Engine 

- System Embedded Controller 

- Touch Firmware 

![System information and firmware version information](images/manage-surface-uefi-figure-1.png "System information and firmware version information")

*Figure 1. System information and firmware version information*

You can find up-to-date information about the latest firmware version for your Surface device in the [Surface Update History](https://www.microsoft.com/surface/support/install-update-activate/surface-update-history) for your device. 

## UEFI Security page 

![Configure Surface UEFI security settings](images/manage-surface-uefi-fig4.png "Configure Surface UEFI security settings")

*Figure 2. Configure Surface UEFI security settings*

The Security page allows you to set a password to protect UEFI settings. This password must be entered when you boot the Surface device to UEFI. The password can contain the following characters (as shown in Figure 3): 

- Uppercase letters: A-Z 

- Lowercase letters: a-z 

- Numbers: 1-0 

- Special characters: !@#$%^&*()?<>{}[]-_=+|.,;:’`” 

The password must be at least 6 characters and is case sensitive. 

![Add a password to protect Surface UEFI settings](images/manage-surface-uefi-fig2.png "Add a password to protect Surface UEFI settings")

*Figure 3. Add a password to protect Surface UEFI settings*

On the Security page you can also change the configuration of Secure Boot on your Surface device. Secure Boot technology prevents unauthorized boot code from booting on your Surface device, which protects against bootkit and rootkit-type malware infections. You can disable Secure Boot to allow your Surface device to boot third-party operating systems or bootable media. You can also configure Secure Boot to work with third-party certificates, as shown in Figure 4. Read more about [Secure Boot](https://msdn.microsoft.com/windows/hardware/commercialize/manufacture/desktop/secure-boot-overview) in the TechNet Library.

![Configure Secure Boot](images/manage-surface-uefi-fig3.png "Configure Secure Boot")

*Figure 4. Configure Secure Boot*

Depending on your device, you may also be able to see if your TPM is enabled or disabled. If you do not see the **Enable TPM**  setting, open tpm.msc in Windows to check the status, as shown in Figure 5. The TPM is used to authenticate encryption for your device’s data with BitLocker. To learn more, see [BitLocker overview](https://docs.microsoft.com/windows/security/information-protection/bitlocker/bitlocker-overview). 

![TPM console](images/manage-surface-uefi-fig5-a.png "TPM console")

*Figure 5. TPM console*


## UEFI menu: Devices 

The Devices page allows you to  enable or disable specific devices and components including:

- Docking and USB Ports 

- MicroSD or SD Card Slot 

- Rear Camera 

- Front Camera 

- Infrared (IR) Camera 

- Wi-Fi and Bluetooth 

- Onboard Audio (Speakers and Microphone) 

Each device is listed with a slider button that you can move to **On** (enabled) or **Off** (disabled) position, as shown in Figure 6. 

![Enable and disable specific devices](images/manage-surface-uefi-fig5a.png "Enable and disable specific devices")

*Figure 6. Enable and disable specific devices*

## UEFI menu: Boot configuration 

The Boot Configuration page allows you to change the order of your boot devices as well as enable or disable boot of the following devices: 

- Windows Boot Manager 

- USB Storage 

- PXE Network 

- Internal Storage 

You can boot from a specific device immediately, or you can swipe left on that device’s entry in the list using the touchscreen. You can also boot immediately to a USB device or USB Ethernet adapter when the Surface device is powered off by pressing the **Volume Down** button and the **Power** button simultaneously. 

For the specified boot order to take effect, you must set the **Enable Alternate Boot Sequence** option to **On**, as shown in Figure 7. 

![Configure the boot order for your Surface device](images/manage-surface-uefi-fig6.png "Configure the boot order for your Surface device")

*Figure 7. Configure the boot order for your Surface device* 

You can also turn on and off IPv6 support for PXE with the **Enable IPv6 for PXE Network Boot** option, for example when performing a Windows deployment using PXE where the PXE server is configured for IPv4 only.  

## UEFI menu: Management
The Management page allows you to manage use of Zero Touch UEFI Management and other features on eligible devices including Surface Pro 7, Surface Pro X, and Surface Laptop 3.  

![Manage access to Zero Touch UEFI Management and other features](images/manage-surface-uefi-fig7a.png "Manage access to Zero Touch UEFI Management and other features")
*Figure 8. Manage access to Zero Touch UEFI Management and other features* 


Zero Touch UEFI Management lets you remotely manage UEFI settings  by using a device profile within Intune called Device Firmware Configuration Interface (DFCI). If you do not configure this setting, the ability to manage eligible devices with DFCI is set to **Ready**. To prevent DFCI, select **Opt-Out**. 

> [!NOTE]
> The UEFI Management settings page and use of DFCI is only available on Surface Pro 7, Surface Pro X, and Surface Laptop 3.  

For more information, refer to [Intune management of Surface UEFI settings](surface-manage-dfci-guide.md).

## UEFI menu: Exit 

Use the **Restart Now** button on the **Exit** page to exit UEFI settings, as shown in Figure 9. 

![Exit Surface UEFI and restart the device](images/manage-surface-uefi-fig7.png "Exit Surface UEFI and restart the device")

*Figure 9. Click Restart Now to exit Surface UEFI and restart the device*

## Surface UEFI boot screens

When you update Surface device firmware, by using either Windows Update or manual installation, the updates are not applied immediately to the device, but instead during the next reboot cycle. You can find out more about the Surface firmware update process in [Manage Surface driver and firmware updates](https://docs.microsoft.com/surface/manage-surface-pro-3-firmware-updates). The progress of the firmware update is displayed on a screen with progress bars of differing colors to indicate the firmware for each component. Each component’s progress bar is shown in Figures 9 through 18.

![Surface UEFI firmware update with blue progress bar](images/manage-surface-uefi-fig8.png "Surface UEFI firmware update with blue progress bar")

*Figure 10. The Surface UEFI firmware update displays a blue progress bar*

![System Embedded Controller firmware with green progress bar](images/manage-surface-uefi-fig9.png "System Embedded Controller firmware with green progress bar")

*Figure 11. The System Embedded Controller firmware update displays a green progress bar*

![SAM Controller firmware update with orange progress bar](images/manage-surface-uefi-fig10.png "SAM Controller firmware update with orange progress bar")

*Figure 12. The SAM Controller firmware update displays an orange progress bar*

![Intel Management Engine firmware with red progress bar](images/manage-surface-uefi-fig11.png "Intel Management Engine firmware with red progress bar")

*Figure 13. The Intel Management Engine firmware update displays a red progress bar*

![Surface touch firmware with gray progress bar](images/manage-surface-uefi-fig12.png "Surface touch firmware with gray progress bar")

*Figure 14. The Surface touch firmware update displays a gray progress bar*

![Surface KIP firmware with light green progress bar](images/manage-surface-uefi-fig13.png "Surface touch firmware with light green progress bar")

*Figure 15. The Surface KIP firmware update displays a light green progress bar*

![Surface ISH firmware with pink progress bar](images/manage-surface-uefi-fig14.png "Surface ISH firmware with pink progress bar")

*Figure 16 The Surface ISH firmware update displays a light pink progress bar*

![Surface Trackpad firmware with gray progress bar](images/manage-surface-uefi-fig15.png "Surface Trackpad firmware with gray progress bar")

*Figure 17. The Surface Trackpad firmware update displays a pink progress bar*

![Surface TCON firmware with light gray progress bar](images/manage-surface-uefi-fig16.png "Surface TCON firmware with light gray progress bar")

*Figure 18. The Surface TCON firmware update displays a light gray progress bar*


![Surface TPM firmware with light purple progress bar](images/manage-surface-uefi-fig17.png "Surface TPM firmware with purple progress bar")

*Figure 19. The Surface TPM firmware update displays a purple progress bar*


>[!NOTE]
>An additional warning message that indicates Secure Boot is disabled is displayed, as shown in Figure 19.

![Surface boot screen that indicates Secure Boot has been disabled](images/manage-surface-uefi-fig18.png "Surface boot screen that indicates Secure Boot has been disabled")

*Figure 20. Surface boot screen that indicates Secure Boot has been disabled in Surface UEFI settings*

## Related topics

- [Intune management of Surface UEFI settings](surface-manage-dfci-guide.md)

-  [Surface Enterprise Management Mode](surface-enterprise-management-mode.md)
