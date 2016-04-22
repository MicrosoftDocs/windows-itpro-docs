---
title: Windows ADK for Windows 10 scenarios for IT Pros (Windows 10)
description: The Windows Assessment and Deployment Kit (Windows ADK) contains tools that can be used by IT Pros to deploy Windows.
ms.assetid: FC4EB39B-29BA-4920-87C2-A00D711AE48B
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: CFaw
---

# Windows ADK for Windows 10 scenarios for IT Pros


The Windows Assessment and Deployment Kit (Windows ADK) contains tools that can be used by IT Pros to deploy Windows. For an overview of what's new in the Windows ADK for Windows 10, see [What's new in kits and tools](http://msdn.microsoft.com/library/windows/hardware/dn927348.aspx).

In previous releases of Windows, the Windows ADK docs were published on both TechNet and the MSDN Hardware Dev Center. Starting with the Windows 10 release, Windows ADK documentation is available on the MSDN Hardware Dev Center. For the Windows 10 ADK reference content, see [Desktop manufacturing](http://msdn.microsoft.com/library/windows/hardware/dn938361.aspx).

Here are some key scenarios that will help you find the content on the MSDN Hardware Dev Center.

### Create a Windows image using command-line tools

[DISM](http://msdn.microsoft.com/library/windows/hardware/dn898558.aspx) is used to mount and service Windows images.

Here are some things you can do with DISM:

-   [Mount an offline image](http://msdn.microsoft.com/library/windows/hardware/dn938321.aspx)
-   [Add drivers to an offline image](http://msdn.microsoft.com/library/windows/hardware/dn898469.aspx)
-   [Enable or disable Windows features](http://msdn.microsoft.com/library/windows/hardware/dn898567.aspx)
-   [Add or remove packages](http://msdn.microsoft.com/library/windows/hardware/dn898481.aspx)
-   [Add language packs](http://msdn.microsoft.com/library/windows/hardware/dn898470.aspx)
-   [Add Universal Windows apps](http://msdn.microsoft.com/library/windows/hardware/dn898600.aspx)
-   [Upgrade the Windows edition](http://msdn.microsoft.com/library/windows/hardware/dn898500.aspx)

[Sysprep](http://msdn.microsoft.com/library/windows/hardware/dn938335.aspx) prepares a Windows installation for imaging and allows you to capture a customized installation.

Here are some things you can do with Sysprep:

-   [Generalize a Windows installation](http://msdn.microsoft.com/library/windows/hardware/dn938334.aspx)
-   [Customize the default user profile](http://msdn.microsoft.com/library/windows/hardware/dn898521.aspx)
-   [Use answer files](http://msdn.microsoft.com/library/windows/hardware/dn938346.aspx)

[Windows PE (WinPE)](http://msdn.microsoft.com/library/windows/hardware/dn938389.aspx) is a small operating system used to boot a computer that does not have an operating system. You can boot to Windows PE and then install a new operating system, recover data, or repair an existing operating system.

Here are ways you can create a WinPE image:

-   [Create a bootable USB drive](http://msdn.microsoft.com/library/windows/hardware/dn938386.aspx)
-   [Create a Boot CD, DVD, ISO, or VHD](http://msdn.microsoft.com/library/windows/hardware/dn938385.aspx)

[Windows Recovery Environment (Windows RE)](http://msdn.microsoft.com/library/windows/hardware/dn938364.aspx) is a recovery environment that can repair common operating system problems.

Here are some things you can do with Windows RE:

-   [Customize Windows RE](http://msdn.microsoft.com/library/windows/hardware/dn898523.aspx)
-   [Push-button reset](http://msdn.microsoft.com/library/windows/hardware/dn938307.aspx)

[Windows System Image Manager (Windows SIM)](http://msdn.microsoft.com/library/windows/hardware/dn922445.aspx) helps you create answer files that change Windows settings and run scripts during installation.

Here are some things you can do with Windows SIM:

-   [Create answer file](http://msdn.microsoft.com/library/windows/hardware/dn915085.aspx)
-   [Add a driver path to an answer file](http://msdn.microsoft.com/library/windows/hardware/dn915062.aspx)
-   [Add a package to an answer file](http://msdn.microsoft.com/library/windows/hardware/dn915066.aspx)
-   [Add a custom command to an answer file](http://msdn.microsoft.com/library/windows/hardware/dn915058.aspx)

For a list of settings you can change, see [Unattended Windows Setup Reference](http://msdn.microsoft.com/library/windows/hardware/dn923277.aspx) on the MSDN Hardware Dev Center.

### Create a Windows image using Windows ICD

Introduced in Windows 10, [Windows Imaging and Configuration Designer (ICD)](http://msdn.microsoft.com/library/windows/hardware/dn916113.aspx) streamlines the customizing and provisioning of a Windows 10 for desktop editions (Home, Pro, Enterprise, and Education), Windows 10 Mobile, or Windows 10 IoT Core (IoT Core) image.

Here are some things you can do with Windows ICD:

-   [Build and apply a provisioning package](http://msdn.microsoft.com/library/windows/hardware/dn916107.aspx)
-   [Export a provisioning package](http://msdn.microsoft.com/library/windows/hardware/dn916110.aspx)
-   [Build and deploy an image for Windows 10 for desktop editions](http://msdn.microsoft.com/library/windows/hardware/dn916105.aspx)

### IT Pro Windows deployment tools

There are also a few tools included in the Windows ADK that are specific to IT Pros and this documentation is available on TechNet:

-   [Volume Activation Management Tool (VAMT) Technical Reference](volume-activation-management-tool.md)
-   [User State Migration Tool (USMT) Technical Reference](usmt-technical-reference.md)

 

 





