---
title: Considerations for Surface and System Center Configuration Manager (Surface)
description: The management and deployment of Surface devices with Configuration Manager is fundamentally the same as any other PC; this article describes scenarios that may require additional considerations.
keywords: manage, deployment, updates, driver, firmware
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: surface, devices
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.date: 10/16/2017
ms.reviewer: 
manager: dansimp
---

# Considerations for Surface and System Center Configuration Manager

Fundamentally, management and deployment of Surface devices with System Center Configuration Manager is the same as the management and deployment of any other PC. Like any other PC, a deployment to Surface devices includes importing drivers, importing a Windows image, preparing a deployment task sequence, and then deploying the task sequence to a collection. After deployment, Surface devices are like any other Windows client – to publish apps, settings, and policies, you use the same process that you would use for any other device.

You can find more information about how to use Configuration Manager to deploy and manage devices in the [Documentation for System Center Configuration Manager](https://docs.microsoft.com/sccm/index).

Although the deployment and management of Surface devices is fundamentally the same as any other PC, there are some scenarios that may require additional considerations or steps. This article provides descriptions and guidance for these scenarios; the solutions documented in this article may apply to other devices and manufacturers as well.

>[!NOTE]
>For management of Surface devices it is recommended that you use the Current Branch of System Center Configuration Manager.

## Updating Surface device drivers and firmware

For devices that receive updates through Windows Update, drivers for Surface components – and even firmware updates – are applied automatically as part of the Windows Update process. For devices with managed updates, such as those updated through Windows Server Update Services (WSUS), the option to install drivers and firmware through Windows Update is not available. For these managed devices, the recommended driver management process is the deployment of driver and firmware updates using the Windows Installer (.msi) files, which are provided through the Microsoft Download Center. You can find a list of these downloads at [Download the latest firmware and drivers for Surface devices](https://technet.microsoft.com/itpro/surface/deploy-the-latest-firmware-and-drivers-for-surface-devices).

As .msi files, deployment of driver and firmware updates is performed in the same manner as deployment of an application. Instead of installing an application as would normally happen when an .msi file is run, the Surface driver and firmware .msi will apply the driver and firmware updates to the device. The single .msi file contains the driver and firmware updates required by each component of the Surface device. The updates for firmware are applied the next time the device reboots. You can read more about the .msi installation method for Surface drivers and firmware in [Manage Surface driver and firmware updates](https://technet.microsoft.com/itpro/surface/manage-surface-pro-3-firmware-updates). For more information about how to deploy applications with Configuration Manager, see [Packages and programs in System Center Configuration Manager](https://docs.microsoft.com/sccm/apps/deploy-use/packages-and-programs).

>[!NOTE]
>Surface device drivers and firmware are signed with SHA-256, which is not natively supported by Windows Server 2008 R2. A workaround is available for Configuration Manager environments running on Windows Server 2008 R2 – for more information see [Can't import drivers into System Center Configuration Manager (KB3025419)](https://support.microsoft.com/kb/3025419).

## Surface Ethernet adapters and Configuration Manager deployment

The default mechanism that Configuration Manager uses to identify devices during deployment is the Media Access Control (MAC) address. Because the MAC address is associated with the Ethernet controller, an Ethernet adapter shared among multiple devices will cause Configuration Manager to identify each of the devices as only a single device. This can cause a Configuration Manager deployment of Windows to not be applied to intended devices.

To ensure that Surface devices using the same Ethernet adapter are identified as unique devices during deployment, you can instruct Configuration Manager to identify devices using another method. This other method could be the MAC address of the wireless network adapter or the System Universal Unique Identifier (System UUID). You can specify that Configuration Manager use other identification methods with the following options:

* Add an exclusion for the MAC addresses of Surface Ethernet adapters, which forces Configuration Manager to overlook the MAC address in preference of the System UUID, as documented in the [Reusing the same NIC for multiple PXE initiated deployments in System Center Configuration Manager OSD](https://blogs.technet.microsoft.com/system_center_configuration_manager_operating_system_deployment_support_blog/2015/08/27/reusing-the-same-nic-for-multiple-pxe-initiated-deployments-in-system-center-configuration-manger-osd/) blog post.

* Prestage devices by System UUID as documented in the [Reusing the same NIC for multiple PXE initiated deployments in System Center Configuration Manager OSD](https://blogs.technet.microsoft.com/system_center_configuration_manager_operating_system_deployment_support_blog/2015/08/27/reusing-the-same-nic-for-multiple-pxe-initiated-deployments-in-system-center-configuration-manger-osd/) blog post.

* Use a script to identify a newly deployed Surface device by the MAC address of its wireless adapter, as documented in the [How to Use The Same External Ethernet Adapter For Multiple SCCM OSD](https://blogs.technet.microsoft.com/askpfeplat/2014/07/27/how-to-use-the-same-external-ethernet-adapter-for-multiple-sccm-osd/) blog post.

Another consideration for the Surface Ethernet adapter during deployments with Configuration Manager is the driver for the Ethernet controller. Beginning in Windows 10, version 1511, the driver for the Surface Ethernet adapter is included by default in Windows. For organizations that want to deploy the latest version of Windows 10 and use the latest version of WinPE, use of the Surface Ethernet adapter requires no additional actions.

For versions of Windows prior to Windows 10, version 1511 (including Windows 10 RTM and Windows 8.1), you may still need to install the Surface Ethernet adapter driver and include the driver in your WinPE boot media. With its inclusion in Windows 10, the driver is no longer available for download from the Microsoft Download Center. To download the Surface Ethernet adapter driver, download it from the Microsoft Update Catalog as documented in the [Surface Ethernet Drivers](https://blogs.technet.microsoft.com/askcore/2016/08/18/surface-ethernet-drivers/) blog post from the Ask The Core Team blog.

## Deploy Surface app with Configuration Manager

With the release of Microsoft Store for Business, Surface app is no longer available as a driver and firmware download. Organizations that want to deploy Surface app to managed Surface devices or during deployment with the use of Configuration Manager, must acquire Surface app through Microsoft Store for Business and then deploy Surface app with PowerShell. You can find the PowerShell commands for deployment of Surface app, instructions to download Surface app, and prerequisite frameworks from Microsoft Store for Business in the [Deploy Surface app with Microsoft Store for Business](https://technet.microsoft.com/itpro/surface/deploy-surface-app-with-windows-store-for-business) article in the TechNet Library.

## Use prestaged media with Surface clients

If your organization uses prestaged media to pre-load deployment resources on to machines prior to deployment with Configuration Manager, the nature of Surface devices as UEFI devices may require you to take additional steps. Specifically, a native UEFI environment requires that you create multiple partitions on the boot disk of the system. If you are following along with the [documentation for prestaged media](https://technet.microsoft.com/library/79465d90-4831-4872-96c2-2062d80f5583?f=255&MSPPError=-2147217396#BKMK_CreatePrestagedMedia), the instructions provide for only single partition boot disks and therefore will fail when applied to Surface devices.

Instructions for applying prestaged media to UEFI devices, such as Surface devices, can be found in the [How to apply Task Sequence Prestaged Media on multi-partitioned disks for BIOS or UEFI PCs in System Center Configuration Manager](https://blogs.technet.microsoft.com/system_center_configuration_manager_operating_system_deployment_support_blog/2014/04/02/how-to-apply-task-sequence-prestaged-media-on-multi-partitioned-disks-for-bios-or-uefi-pcs-in-system-center-configuration-manager/) blog post.

## Licensing conflicts with OEM Activation 3.0

Surface devices come preinstalled with a licensed copy of Windows. For example, Surface Pro 4 is preinstalled with Windows 10 Professional. The license key for this preinstalled copy of Windows is embedded in the firmware of the device with OEM Activation 3.0 (OA 3.0). When you run Windows installation media on a device with an OA 3.0 key, Windows setup automatically reads the license key and uses it to install and activate Windows. In most situations, this simplifies the reinstallation of Windows, because the user does not have to find or enter a license key.

When you reimage a device by using Windows Enterprise, this embedded license key does not cause a conflict. This is because the installation media for Windows Enterprise is configured to install only an Enterprise edition of Windows and therefore is incompatible with the license key embedded in the system firmware. If a product key is not specified (such as when you intend to activate with Key Management Services (KMS) or Active Directory Based Activation), a Generic Volume License Key (GVLK) is used until Windows is activated by one of those technologies.

However, issues may arise when organizations intend to use versions of Windows that are compatible with the firmware embedded key. For example, an organization that wants to install Windows 10 Professional on a Surface 3 device that originally shipped with Windows 10 Home edition may encounter difficulty when Windows setup automatically reads the Home edition key during installation and installs as Home edition rather than Professional. To avoid this conflict, you can use the Ei.cfg or Pid.txt file (see [Windows Setup Edition Configuration and Product ID Files](https://technet.microsoft.com/library/hh824952.aspx)) to explicitly instruct Windows setup to prompt for a product key, or you can enter a specific product key in the deployment task sequence. If you do not have a specific key, you can use the default product keys for Windows, which you can find in [Customize and deploy a Windows 10 operating system](https://dpcenter.microsoft.com/en/Windows/Build/cp-Windows-10-build) on the Device Partner Center.

## Apply an asset tag during deployment

Surface Studio, Surface Book, Surface Pro 4, Surface Pro 3, and Surface 3 devices all support the application of an asset tag in UEFI. This asset tag can be used to identify the device from UEFI even if the operating system fails, and it can also be queried from within the operating system. To read more about the Surface Asset Tag function, see the [Asset Tag Tool for Surface Pro 3](https://blogs.technet.microsoft.com/askcore/2014/10/20/asset-tag-tool-for-surface-pro-3/) blog post.

To apply an asset tag using the [Surface Asset Tag CLI Utility](https://www.microsoft.com/download/details.aspx?id=44076) during a Configuration Manager deployment task sequence, use the script and instructions found in the [Set Surface Asset Tag During a Configuration Manager Task Sequence](https://blogs.technet.microsoft.com/jchalfant/set-surface-pro-3-asset-tag-during-a-configuration-manager-task-sequence/) blog post.

## Configure push-button reset

When you deploy Windows to a Surface device, the push-button reset functionality of Windows is configured by default to revert the system back to a state where the environment is not yet configured. When the reset function is used, the system discards any installed applications and settings. Although in some situations it can be beneficial to restore the system to a state without applications and settings, in a professional environment this effectively renders the system unusable to the end user.

Push-button reset can be configured, however, to restore the system configuration to a state where it is ready for use by the end user. Follow the process outlined in [Deploy push-button reset features](https://msdn.microsoft.com/windows/hardware/commercialize/manufacture/desktop/deploy-push-button-reset-features) to customize the push-button reset experience for your devices.
