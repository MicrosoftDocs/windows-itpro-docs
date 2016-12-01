---
title: Wake On LAN for Surface devices (Surface)
description: See how you can use Wake On LAN to remotely wake up devices to perform management or maintenance tasks, or to enable management solutions automatically – even if the devices are powered down.
keywords: update, deploy, driver, wol
ms.prod: w10
ms.mktglfcycl: manage
ms.pagetype: surface, devices
ms.sitesec: library
author: jobotto
---

# Wake On LAN for Surface devices

Surface devices that run Windows 10, version 1607 (also known as Windows 10 Anniversary Update) or later and use a Surface Ethernet adapter to connect to a wired network, are capable of Wake On LAN from Connected Standby. With Wake On LAN, you can remotely wake up devices to perform management or maintenance tasks or enable management solutions (such as System Center Configuration Manager) automatically – even if the devices are powered down. For example, you can deploy applications to Surface devices left docked with a Surface Dock or Surface Pro 3 Docking Station by using System Center Configuration Manager during a window in the middle of the night, when the office is empty.

>[!NOTE]
>Surface devices must be connected to AC power to support Wake On LAN.

## Supported devices

The following devices are supported for Wake On LAN:

* Surface Book
* Surface Pro 4
* Surface Pro 3
* Surface 3
* Surface Ethernet adapter
* Surface Dock
* Surface Docking Station for Surface Pro 3

## Wake On LAN driver

To enable Wake On LAN support on Surface devices, a specific driver for the Surface Ethernet adapter is required. This driver is not included in the standard driver and firmware pack for Surface devices – you must download and install it separately. You can download the Surface Wake On LAN driver (SurfaceWOL.msi) from the [Surface Tools for IT](https://www.microsoft.com/download/details.aspx?id=46703) page in the Microsoft Download Center.

You can run this Microsoft Windows Installer (.msi) file on a Surface device to install the Surface Wake On LAN driver, or you can distribute it to Surface devices with an application deployment solution, such as System Center Configuration Manager. To include the Surface Wake On LAN driver during deployment, you can install the .msi file as an application during the deployment process. You can also extract the Surface Wake On LAN driver files to include them in the deployment process. For example, you can include them in your Microsoft Deployment Toolkit (MDT) deployment share. You can read more about Surface deployment with MDT in [Deploy Windows 10 to Surface devices with Microsoft Deployment Toolkit](https://technet.microsoft.com/itpro/surface/deploy-windows-10-to-surface-devices-with-mdt).

>[!NOTE]
>During the installation of SurfaceWOL.msi, the following registry key is set to a value of 1, which allows easy identification of systems where the Wake On LAN driver has been installed. If you chose to extract and install these drivers separately during deployment, this registry key will not be configured and must be configured manually or with a script.

>**HKLM\SYSTEM\CurrentControlSet\Control\Power AllowSystemRequiredPowerRequests** 

To extract the contents of SurfaceWOL.msi, use the MSIExec administrative installation option (**/a**), as shown in the following example, to extract the contents to the **C:\WOL\** folder:

   `msiexec /a surfacewol.msi targetdir=C:\WOL /qn`

## Using Surface Wake On LAN

The Surface Wake On LAN driver conforms to the Wake On LAN standard, whereby the device is woken by a special network communication known as a magic packet. The magic packet consists of 6 bytes of 255 (or FF in hexadecimal) followed by 16 repetitions of the target computer’s MAC address. You can read more about the magic packet and the Wake On LAN standard at [Wake-on-LAN](https://wikipedia.org/wiki/Wake-on-LAN#Magic_packet) on Wikipedia.

>[!NOTE]
>To send a magic packet and wake up a device by using Wake On LAN, you must know the MAC address of the target device and Ethernet adapter. Because the magic packet does not use the IP network protocol, it is not possible to use the IP address or DNS name of the device.

Many management solutions, such as System Center Configuration Manager, provide built-in support for Wake On LAN. There are also many solutions, including Windows Store apps, PowerShell modules, third-party applications, and third-party management solutions that allow you to send a magic packet to wake up a device. For example, you can use the [Wake On LAN PowerShell module](https://gallery.technet.microsoft.com/scriptcenter/Wake-On-Lan-815424c4) from the TechNet Script Center. 

>[!NOTE]
>After a device has been woken up with a magic packet, the device will return to sleep if an application is not actively preventing sleep on the system or if the AllowSystemRequiredPowerRequests registry key is not configured to 1, which allows applications to prevent sleep. See the [Wake On LAN driver](#wake-on-lan-driver) section of this article for more information about this registry key.
