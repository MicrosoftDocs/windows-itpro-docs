---
title: What's new in App-V for Windows 10, version 1703 and earlier (Windows 10)
description: Information about what's new in App-V for Windows 10, version 1703 and earlier. 
author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/08/2018
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
---
# What's new in App-V for Windows 10, version 1703 and earlier

>Applies to: Windows 10, version 1703 and earlier

Microsoft Application Virtualization (App-V) for Windows 10 delivers Win32 applications to users as virtual applications. Virtual applications are installed on centrally managed servers and delivered to users as a service in real time and on an as-needed basis. Users launch virtual applications from familiar access points and interact with them as if they were installed locally.

## What's new in App-V Windows 10, version 1703

### Auto-sequence and update your App-V packages singly or as a batch

Previous versions of the App-V Sequencer required manual sequencing and updating of app packages. This was time-consuming and required extensive interaction, causing many companies to deploy brand-new packages rather than update an existing one. Windows 10, version 1703 introduces the App-V Auto-Sequencer, which automatically sequences your app packages, improving your overall experience by streamlining prerequisite environment provisioning, automating app installation, and expediting package updating setup.

Using the automatic sequencer to package your apps gives you the following benefits:

* **Automatic virtual machine (VM) sequencing environment provisioning**. To learn more, see [Automatically provision your sequencing environment using Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-auto-provision-a-vm.md).
* **Package batch-sequencing**. This means that multiple apps can be sequenced at the same time, in a single group. To learn more, see [Automatically sequence multiple apps at the same time using Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-auto-batch-sequencing.md).
* **Package batch-updating**. This means that multiple apps can be updated at the same time, in a single group. To learn more, see [Automatically update multiple apps at the same time using Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-auto-batch-updating.md).

### Updates to the App-V project template

Starting with Windows 10, version 1703, you can now save an App-V project template (.appvt) file as part of a sequenced App-V package. This file will automatically load every time you open the package for edits or updates. Your template can include general option settings, file exclusion list settings, and target operating system settings. To learn more, see [Create and apply an App-V project template to a sequenced App-V package](../app-v/appv-create-and-use-a-project-template.md).

### Automatically clean up unpublished App-V packages from the App-V client

Previous versions of App-V have required you to manually remove your unpublished packages from your client devices, to free up additional storage space. Windows 10, version 1703 introduces the ability to use PowerShell or Group Policy settings to automatically clean up your unpublished packages after a device restart. To learn more, see [Automatically clean up unpublished packages on the App-V client](../app-v/appv-auto-clean-unpublished-packages.md).

## What's new in App-V in Windows 10, version 1607

### App-V is now a feature in Windows 10

With Windows 10, version 1607 and later releases, App-V is now included with [Windows 10 for Enterprise and Windows 10 for Education](https://www.microsoft.com/WindowsForBusiness/windows-product-home) and is no longer part of the Microsoft Desktop Optimization Pack.

To learn more about earlier versions of App-V, see [MDOP Information Experience](https://docs.microsoft.com/microsoft-desktop-optimization-pack/index).

The changes in App-V for Windows 10, version 1607 impact existing implementations of App-V in the following ways:

* The App-V client is installed on user devices automatically with Windows 10, version 1607, and no longer has to be deployed separately. Performing an in-place upgrade to Windows 10, version 1607, on user devices automatically installs the App-V client.
* In previous releases of App-V, the application sequencer was included in the Microsoft Desktop Optimization Pack. Although you’ll need to use the new application sequencer to create new virtualized applications, existing virtualized applications will continue to work. The App-V application sequencer is available from the [Windows 10 Assessment and Deployment Kit (ADK)](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit).

 > [!NOTE]
  >If you're already using App-V 5.x, you don't need to redeploy the App-V server components, as they haven't changed since App-V 5.0's release.

For more information about how to configure an existing App-V installation after upgrading user devices to Windows 10, see [Upgrading to App-V for Windows 10 from an existing installation](../app-v/appv-upgrading-to-app-v-for-windows-10-from-an-existing-installation.md) and [Migrating to App-V for Windows 10 from a previous version](../app-v/appv-migrating-to-appv-from-a-previous-version.md).

>[!IMPORTANT]
>You can only upgrade your existing App-V installation to Windows 10, version 1607 if it's version 5.0 SP2 or higher. If you're using an older version of App-V, you’ll need to upgrade from that version to App-V 5.0 SP2 before you can upgrade to Windows 10, version 1607.

## Support for System Center

App-V supports System Center 2016 and System Center 2012 R2 Configuration Manager SP1. See [Planning for App-V Integration with Configuration Manager](https://technet.microsoft.com/library/jj822982.aspx) to learn more about how to integrate your App-V environment with Configuration Manager.





## Related topics

* [Release Notes for App-V for Windows 10, version 1607](../app-v/appv-release-notes-for-appv-for-windows.md)
* [Release Notes for App-V for Windows 10, version 1703](../app-v/appv-release-notes-for-appv-for-windows-1703.md)
