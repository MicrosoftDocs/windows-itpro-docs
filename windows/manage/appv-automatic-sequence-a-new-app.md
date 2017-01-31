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
Provisioning your new VM includes setting up a user account, turning on remote PowerShell scripting, and installing the App-V Sequencer.

>[!IMPORTANT]
>For this process to work, you must have a base operating system available as a VHD image file. If you need a tool to create your VHD file, you can use the [Convert-WindowsImage.ps1](https://gallery.technet.microsoft.com/scriptcenter/Convert-WindowsImageps1-0fe23a8f) command-line tool. This tool is now a Function, so it must first be loaded and then called by its name, without the extension. Code examples and more info about the tool are included on the download site.<p>Additionally, when you run this tool to create your file, you must explicitly specify the parameter 'VHDPartitionStyle' as 'MBR'. The default partition value, 'GPT' will cause a boot failure in your VHD file. 

**On the Host device**
1. Install Windows 10, version 1703 and the matching ADK version, making sure that you've selected to install the **Microsoft Application Virtualization (App-V) Auto Sequencer** component.

2. Make sure that Hyper-V is turned on. For more info about turning on and using Hyper-V, see [Hyper-V on Windows Server 2016](https://technet.microsoft.com/en-us/windows-server-docs/compute/hyper-v/hyper-v-on-windows-server)

3. Open PowerShell as an admin and run the **New-AppVSequencerVM** cmdlet, using the required parameters:

    ```
    New-AppVSequencerVM -VMName <NameForVM> -ADKPath <PathToADKInstallerFolder> -VHDPath <PathToVHD> [-VMSwitch <NameForNetworkSwitch>] [-VMMemory <VMMemorySize>] [-CPUCount <CPUCoreCount>] [-SessionSetupTimeout <TimeoutValueInMinutes>] [UseADKWebInstaller]
    ```
    Where the VHD file and matching ADK tools are located on the Host device and referenced in the 'ADKPath' and the 'VHDPath' parameters.

A new Hyper-V VM file is created out of the provisioned VHD, creating a "clean" checkpoint, from where all of the sequencing and updating will start.

### Provision an existing VM for auto-sequencing
 


## Have a suggestion for App-V?
Add or vote on suggestions on the [Application Virtualization feedback site](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization).<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics
- [Install the App-V Sequencer](appv-install-the-sequencer.md)
- [Operations for App-V](appv-operations.md)
