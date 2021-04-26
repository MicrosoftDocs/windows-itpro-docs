---
title: Windows ADK for Windows 10 scenarios for IT Pros (Windows 10)
description: The Windows Assessment and Deployment Kit (Windows ADK) contains tools that can be used by IT Pros to deploy Windows.
ms.assetid: FC4EB39B-29BA-4920-87C2-A00D711AE48B
ms.reviewer: 
manager: laurawi
ms.audience: itpro
author: greg-lindsay
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
audience: itpro
ms.date: 07/27/2017
ms.topic: article
---

# Windows ADK for Windows 10 scenarios for IT Pros


The [Windows Assessment and Deployment Kit](/windows-hardware/get-started/adk-install) (Windows ADK) contains tools that can be used by IT Pros to deploy Windows. For an overview of what's new in the Windows ADK for Windows 10, see [What's new in kits and tools](/windows-hardware/get-started/what-s-new-in-kits-and-tools).

In previous releases of Windows, the Windows ADK docs were published on both TechNet and the MSDN Hardware Dev Center. Starting with the Windows 10 release, Windows ADK documentation is available on the MSDN Hardware Dev Center. For the Windows 10 ADK reference content, see [Desktop manufacturing](/windows-hardware/manufacture/desktop/).

Here are some key scenarios that will help you find the content on the MSDN Hardware Dev Center.

### Create a Windows image using command-line tools

[DISM](/windows-hardware/manufacture/desktop/dism---deployment-image-servicing-and-management-technical-reference-for-windows) is used to mount and service Windows images.

Here are some things you can do with DISM:

-   [Mount an offline image](/windows-hardware/manufacture/desktop/mount-and-modify-a-windows-image-using-dism)
-   [Add drivers to an offline image](/windows-hardware/manufacture/desktop/add-and-remove-drivers-to-an-offline-windows-image)
-   [Enable or disable Windows features](/windows-hardware/manufacture/desktop/enable-or-disable-windows-features-using-dism)
-   [Add or remove packages](/windows-hardware/manufacture/desktop/add-or-remove-packages-offline-using-dism)
-   [Add language packs](/windows-hardware/manufacture/desktop/add-language-packs-to-windows)
-   [Add Universal Windows apps](/windows-hardware/manufacture/desktop/preinstall-apps-using-dism)
-   [Upgrade the Windows edition](/windows-hardware/manufacture/desktop/change-the-windows-image-to-a-higher-edition-using-dism)

[Sysprep](/windows-hardware/manufacture/desktop/sysprep--system-preparation--overview) prepares a Windows installation for imaging and allows you to capture a customized installation.

Here are some things you can do with Sysprep:

-   [Generalize a Windows installation](/windows-hardware/manufacture/desktop/sysprep--generalize--a-windows-installation)
-   [Customize the default user profile](/windows-hardware/manufacture/desktop/customize-the-default-user-profile-by-using-copyprofile)
-   [Use answer files](/windows-hardware/manufacture/desktop/use-answer-files-with-sysprep)

[Windows PE (WinPE)](/windows-hardware/manufacture/desktop/winpe-intro) is a small operating system used to boot a computer that does not have an operating system. You can boot to Windows PE and then install a new operating system, recover data, or repair an existing operating system.

Here are ways you can create a WinPE image:

-   [Create a bootable USB drive](/windows-hardware/manufacture/desktop/winpe-create-usb-bootable-drive)
-   [Create a Boot CD, DVD, ISO, or VHD](/windows-hardware/manufacture/desktop/winpe-create-usb-bootable-drive)

[Windows Recovery Environment (Windows RE)](/windows-hardware/manufacture/desktop/windows-recovery-environment--windows-re--technical-reference) is a recovery environment that can repair common operating system problems.

Here are some things you can do with Windows RE:

-   [Customize Windows RE](/windows-hardware/manufacture/desktop/customize-windows-re)
-   [Push-button reset](/windows-hardware/manufacture/desktop/push-button-reset-overview)

[Windows System Image Manager (Windows SIM)](/windows-hardware/customize/desktop/wsim/windows-system-image-manager-technical-reference) helps you create answer files that change Windows settings and run scripts during installation.

Here are some things you can do with Windows SIM:

-   [Create answer file](/windows-hardware/customize/desktop/wsim/create-or-open-an-answer-file)
-   [Add a driver path to an answer file](/windows-hardware/customize/desktop/wsim/add-a-device-driver-path-to-an-answer-file)
-   [Add a package to an answer file](/windows-hardware/customize/desktop/wsim/add-a-package-to-an-answer-file)
-   [Add a custom command to an answer file](/windows-hardware/customize/desktop/wsim/add-a-custom-command-to-an-answer-file)

For a list of settings you can change, see [Unattended Windows Setup Reference](/windows-hardware/customize/desktop/unattend/) on the MSDN Hardware Dev Center.

### Create a Windows image using Windows ICD

Introduced in Windows 10, [Windows Imaging and Configuration Designer (ICD)](/windows/configuration/provisioning-packages/provisioning-install-icd) streamlines the customizing and provisioning of a Windows 10 for desktop editions (Home, Pro, Enterprise, and Education), Windows 10 Mobile, or Windows 10 IoT Core (IoT Core) image.

Here are some things you can do with Windows ICD:

-   [Build and apply a provisioning package](/windows/configuration/provisioning-packages/provisioning-create-package)
-   [Export a provisioning package](/windows/configuration/provisioning-packages/provisioning-create-package)
-   [Build and deploy an image for Windows 10 for desktop editions](https://msdn.microsoft.com/library/windows/hardware/dn916105.aspx)

### IT Pro Windows deployment tools

There are also a few tools included in the Windows ADK that are specific to IT Pros and this documentation is available on TechNet:

-   [Volume Activation Management Tool (VAMT) Technical Reference](volume-activation/volume-activation-management-tool.md)
-   [User State Migration Tool (USMT) Technical Reference](usmt/usmt-technical-reference.md)

 

 