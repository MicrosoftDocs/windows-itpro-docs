---
title: Automatically sequence a new app using the Microsoft Application Virtualization Sequencer (App-V Sequencer) (Windows 10)
description: How to automatically sequence a new app using the App-V Sequencer
author: eross-msft
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# Automatically sequence a new app using the Microsoft Application Virtualization Sequencer (App-V Sequencer)

**Applies to**
-   Windows 10, version 1703

>[NOTE]
>In Windows 10, version 1703, the App-V Sequencer is included with the Windows ADK. For more info on how to install the App-V Sequencer, see [Install the App-V Sequencer](appv-install-the-sequencer.md).

With the previous versions of the App-V Sequencer, you've had to manually sequence your app packages. This was time-consuming and required extensive interaction, causing many companies to deploy brand-new packages rather than update an existing one. Windows 10, version 1703 has introduced an updated App-V Sequencer that can automatically sequence your app packages, improving your overall experience by streamlining the provisioning of the prerequisite environment, automating app installation, and expediting the package updating setup.

Using the automatic sequence to package your apps provides:

- Automatic virtual machine (VM) provisioning of the sequencing environment.

- Batch-sequencing of packages. This means that multiple apps can be sequenced at the same time, in a single group.

- Batch-updating of packages. This means that multiple apps can be updated at the same time, in a single group.

## Provision your VM
You have 2 options for provisioning an VM for auto-sequencing:
- Provision a new VM by using a Virtual Hard Disk (VHD)

    -OR-

- Provision an existing VM

### Provision a new VM for auto-sequencing by using a VHD file
The tasks of setting up user account, enabling auto-login, enabling remote PowerShell scripting, installing the App-V Sequencer, etc., will be covered by this OS provisioning stage. This stage is premised on a base OS being available in the form of VHD image

### Provision an existing VM for auto-sequencing
 


## Have a suggestion for App-V?
Add or vote on suggestions on the [Application Virtualization feedback site](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization).<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics
- [Install the App-V Sequencer](appv-install-the-sequencer.md)
- [Operations for App-V](appv-operations.md)
