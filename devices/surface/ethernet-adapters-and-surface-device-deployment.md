---
title: Ethernet adapters and Surface deployment (Surface)
description: This article provides guidance and answers to help you perform a network deployment to Surface devices.
ms.assetid: 5273C59E-6039-4E50-96B3-426BB38A64C0
ms.reviewer: 
manager: dansimp
keywords: ethernet, deploy, removable, network, connectivity, boot, firmware, device, adapter, PXE boot, USB
ms.localizationpriority: medium
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: surface, devices
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.date: 07/27/2017
---

# Ethernet adapters and Surface deployment


This article provides guidance and answers to help you perform a network deployment to Surface devices.

Network deployment to Surface devices can pose some unique challenges for system administrators. Due to the lack of a native wired Ethernet adapter, administrators must provide connectivity through a removable Ethernet adapter.

## Select an Ethernet adapter for Surface devices


Before you can address the concerns of how you will boot to your deployment environment or how devices will be recognized by your deployment solution, you have to use a wired network adapter.

The primary concern when selecting an Ethernet adapter is how that adapter will boot your Surface device from the network. If you are pre-staging clients with Windows Deployment Services (WDS) or if you are using System Center Configuration Manager, you may also want to consider whether the removable Ethernet adapters will be dedicated to a specific Surface device or shared among multiple devices. See the [Manage MAC addresses with removable Ethernet adapters](#manage-mac-addresses) section of this article for more information on potential conflicts with shared adapters.

Booting from the network (PXE boot) is only supported when you use an Ethernet adapter or docking station from Microsoft. To boot from the network, the chipset in the Ethernet adapter or dock must be detected and configured as a boot device in the firmware of the Surface device. Microsoft Ethernet adapters, such as the Surface Ethernet Adapter and the [Surface Dock](https://www.microsoft.com/surface/accessories/surface-dock) use a chipset that is compatible with the Surface firmware.

The following Ethernet devices are supported for network boot with Surface devices:

-   Surface USB-C to Ethernet and USB 3.0 Adapter

-   Surface USB 3.0 to Gigabit Ethernet Adapter

-   Surface Dock

-   Surface 3 Docking Station

-   Surface Pro 3 Docking Station

-   Docking Station for Surface Pro and Surface Pro 2

Third-party Ethernet adapters are also supported for network deployment, although they do not support PXE boot. To use a third-party Ethernet adapter, you must load the drivers into the deployment boot image and you must launch that boot image from a separate storage device, such as a USB stick.

## Boot Surface devices from the network


To boot from the network or a connected USB stick, you must instruct the Surface device to boot from an alternate boot device. You can alter the boot order in the system firmware to prioritize USB boot devices, or you can instruct it to boot from an alternate boot device during the boot up process.

To boot a Surface device from an alternative boot device, follow these steps:

1.  Ensure the Surface device is powered off.
2.  Press and hold the **Volume Down** button.
3.  Press and release the **Power** button.
4.  After the system begins to boot from the USB stick or Ethernet adapter, release the **Volume Down** button.

>[!NOTE]
>In addition to an Ethernet adapter, a keyboard must also be connected to the Surface device to enter the preinstallation environment and navigate the deployment wizard.

 
For Windows 10, version 1511 and later – including the Windows Assessment and Deployment Kit (Windows ADK) for Windows 10, version 1511 – the drivers for Microsoft Surface Ethernet Adapters are present by default. If you are using a deployment solution that uses Windows Preinstallation Environment (WinPE), like the Microsoft Deployment Toolkit, and booting from the network with PXE, ensure that your deployment solution is using the latest version of the Windows ADK.

## <a href="" id="manage-mac-addresses"></a>Manage MAC addresses with removable Ethernet adapters


Another consideration for administrators performing Windows deployment over the network is how you will identify computers when you use the same Ethernet adapter to deploy to more than one computer. A common identifier used by deployment technologies is the Media Access Control (MAC) address that is associated with each Ethernet adapter. However, when you use the same Ethernet adapter to deploy to multiple computers, you cannot use a deployment technology that inspects MAC addresses because there is no way to differentiate the MAC address of the removable adapter when used on the different computers.

The simplest solution to avoid MAC address conflicts is to provide a dedicated removable Ethernet adapter for each Surface device. This can make sense in many scenarios where the Ethernet adapter or the additional functionality of the docking station will be used regularly. However, not all scenarios call for the additional connectivity of a docking station or support for wired networks.

Another potential solution to avoid conflict when adapters are shared is to use the [Microsoft Deployment Toolkit (MDT)](https://technet.microsoft.com/windows/dn475741) to perform deployment to Surface devices. MDT does not use the MAC address to identify individual computers and thus is not subject to this limitation. However, MDT does use Windows Deployment Services to provide PXE boot functionality, and is subject to the limitations regarding pre-staged clients which is covered later in this section.

When you use a shared adapter for deployment, the solution for affected deployment technologies is to use another means to identify unique systems. For Configuration Manager and WDS, both of which can be affected by this issue, the solution is to use the System Universal Unique Identifier (System UUID) that is embedded in the computer firmware by the computer manufacturer. For Surface devices, you can see this entry in the computer firmware under **Device Information**.

To access the firmware of a Surface device, follow these steps:

1.  Ensure the Surface device is powered off.
2.  Press and hold the **Volume Up** button.
3.  Press and release the **Power** button.
4.  After the device begins to boot, release the **Volume Up** button.

When deploying with WDS, the MAC address is only used to identify a computer when the deployment server is configured to respond only to known, pre-staged clients. When pre-staging a client, an administrator creates a computer account in Active Directory and defines that computer by the MAC address or the System UUID. To avoid the identity conflicts caused by shared Ethernet adapters, you should use [System UUID to define pre-staged clients](https://technet.microsoft.com/library/cc742034). Alternatively, you can configure WDS to respond to unknown clients that do not require definition by either MAC address or System UUID by selecting the **Respond to all client computers (known and unknown)** option on the [**PXE Response** tab](https://technet.microsoft.com/library/cc732360) in **Windows Deployment Server Properties**.

The potential for conflicts with shared Ethernet adapters is much higher with Configuration Manager. Where WDS only uses MAC addresses to define individual systems when configured to do so, Configuration Manager uses the MAC address to define individual systems whenever performing a deployment to new or unknown computers. This can result in improperly configured devices or even the inability to deploy more than one system with a shared Ethernet adapter. There are several potential solutions for this situation that are described in detail in the [How to Use The Same External Ethernet Adapter For Multiple SCCM OSD](https://blogs.technet.microsoft.com/askpfeplat/2014/07/27/how-to-use-the-same-external-ethernet-adapter-for-multiple-sccm-osd/) blog post on the Ask Premier Field Engineering (PFE) Platforms TechNet blog.

 

 





