---
title: Windows ADK for Windows scenarios for IT Pros
description: The Windows Assessment and Deployment Kit (Windows ADK) contains tools that IT Pros can use to deploy Windows.
author: frankroj
ms.author: frankroj
manager: aaroncz
ms.service: windows-client
ms.localizationpriority: medium
ms.date: 02/13/2024
ms.topic: conceptual
ms.subservice: itpro-deploy
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Windows ADK for Windows scenarios for IT Pros

The [Windows Assessment and Deployment Kit](/windows-hardware/get-started/adk-install) (Windows ADK) contains tools that IT Pros can use to deploy Windows. For an overview of what's new in the latest version of the Windows ADK, see [What's new in the ADK tools](/windows-hardware/get-started/what-s-new-in-kits-and-tools). For the ADK reference content, see [Desktop manufacturing](/windows-hardware/manufacture/desktop/).

## Create a Windows image using command-line tools

[DISM](/windows-hardware/manufacture/desktop/dism---deployment-image-servicing-and-management-technical-reference-for-windows) is used to mount and service Windows images.

Here are some things that can be done with DISM:

- [Mount an offline image](/windows-hardware/manufacture/desktop/mount-and-modify-a-windows-image-using-dism#mount-an-image).
- [Add and Remove Driver packages to an offline Windows Image](/windows-hardware/manufacture/desktop/add-and-remove-drivers-to-an-offline-windows-image).
- [Enable or Disable Windows Features Using DISM](/windows-hardware/manufacture/desktop/enable-or-disable-windows-features-using-dism).
- [Add or Remove Packages Offline Using DISM](/windows-hardware/manufacture/desktop/add-or-remove-packages-offline-using-dism).
- [Add languages to Windows images](/windows-hardware/manufacture/desktop/add-language-packs-to-windows).
- [Preinstall Apps Using DISM](/windows-hardware/manufacture/desktop/preinstall-apps-using-dism).
- [Change the Windows Image to a Higher Edition Using DISM](/windows-hardware/manufacture/desktop/change-the-windows-image-to-a-higher-edition-using-dism).

[Sysprep](/windows-hardware/manufacture/desktop/sysprep--system-preparation--overview) prepares a Windows installation for imaging and allows capturing a customized Windows installation.

Here are some things that can be done with Sysprep:

- [Generalize a Windows installation](/windows-hardware/manufacture/desktop/sysprep--generalize--a-windows-installation#generalize-a-windows-installation).
- [Customize the default user profile by using CopyProfile](/windows-hardware/manufacture/desktop/customize-the-default-user-profile-by-using-copyprofile).
- [Use answer files](/windows-hardware/manufacture/desktop/use-answer-files-with-sysprep).

[Windows PE (WinPE)](/windows-hardware/manufacture/desktop/winpe-intro) is a small operating system used to boot a computer that doesn't have an operating system. Windows PE can be booted into to install a new operating system, recover data, or repair an existing operating system.

A WinPE image can be created using the article [Create bootable Windows PE media](/windows-hardware/manufacture/desktop/winpe-create-usb-bootable-drive). Types of bootable media include:

- [Create a bootable Windows PE USB drive](/windows-hardware/manufacture/desktop/winpe-create-usb-bootable-drive#create-a-bootable-windows-pe-usb-drive).
- [Create a WinPE ISO, DVD, or CD](/windows-hardware/manufacture/desktop/winpe-create-usb-bootable-drive#create-a-winpe-iso-dvd-or-cd).
- [Create a Windows PE VHD to use with Hyper-V](/windows-hardware/manufacture/desktop/winpe-create-usb-bootable-drive#create-a-windows-pe-vhd-to-use-with-hyper-v).

[Windows Recovery Environment (Windows RE)](/windows-hardware/manufacture/desktop/windows-recovery-environment--windows-re--technical-reference) is a recovery environment that can repair common operating system problems.

Here are some things that can be done with Windows RE:

- [Customize Windows RE](/windows-hardware/manufacture/desktop/customize-windows-re).
- [Push-button reset](/windows-hardware/manufacture/desktop/push-button-reset-overview).

[Windows System Image Manager (WSIM)](/windows-hardware/customize/desktop/wsim/windows-system-image-manager-technical-reference) helps create answer files that change Windows settings and run scripts during Windows installation.

Here are some things that can be done with WSIM:

- [Create or Open an Answer File](/windows-hardware/customize/desktop/wsim/create-or-open-an-answer-file).
- [Add a Device Driver Path to an Answer File](/windows-hardware/customize/desktop/wsim/add-a-device-driver-path-to-an-answer-file).
- [Add a Package to an Answer File](/windows-hardware/customize/desktop/wsim/add-a-package-to-an-answer-file).
- [Add a Custom Command to an Answer File](/windows-hardware/customize/desktop/wsim/add-a-custom-command-to-an-answer-file).

For a list of settings that can be changed, see [Unattended Windows Setup Reference](/windows-hardware/customize/desktop/unattend/).

### Create a provisioning package using Windows ICD

[Windows Imaging and Configuration Designer (ICD)](/windows/configuration/provisioning-packages/provisioning-install-icd) streamlines the customizing and provisioning of a Windows for desktop editions (Home, Pro, Enterprise, and Education) or a Windows IoT Core (IoT Core) image. Creating, applying, and exporting provisioning packages with the Windows ICD is covered in the article [Create a provisioning package](/windows/configuration/provisioning-packages/provisioning-create-package).

### IT Pro Windows deployment tools

There are also a few tools included in the Windows ADK that are specific to IT Pros:

- [Volume Activation Management Tool (VAMT) Technical Reference](volume-activation/volume-activation-management-tool.md)
- [User State Migration Tool (USMT) Technical Reference](usmt/usmt-technical-reference.md)
