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

Previous versions of the App-V Sequencer have required you to manually sequence your app packages. This was time-consuming and required extensive interaction, causing many companies to deploy brand-new packages rather than update an existing one. Windows 10, version 1703 introduces an updated App-V Sequencer that automatically sequences your app packages, improving your overall experience by streamlining the provisioning of the prerequisite environment, automating app installation, and expediting the package updating setup.

Using the automatic sequence to package your apps provides:

- Automatic virtual machine (VM) provisioning of the sequencing environment.

- Batch-sequencing of packages. This means that multiple apps can be sequenced at the same time, in a single group.

- Batch-updating of packages. This means that multiple apps can be updated at the same time, in a single group.

You have 2 options for provisioning an VM for auto-sequencing:
- Using a Virtual Hard Disk (VHD)

    -OR-

- Updating an existing VM

## Provision a new VM by using a VHD file
Provisioning your new VM includes creating a VHD file, setting up a user account, turning on remote PowerShell scripting, and installing the App-V Sequencer.

### Create a VHD file
For this process to work, you must have a base operating system available as a VHD image file, we recommend using the [Convert-WindowsImage.ps1](https://gallery.technet.microsoft.com/scriptcenter/Convert-WindowsImageps1-0fe23a8f) command-line tool.

**To create a VHD file by using the Convert-WindowsImage command-line tool**
1. Open PowerShell as an admin and run the Convert-WindowsImage tool, using the following commands:

    ```ps1
    Convert-WindowsImage -SourcePath "<path_to_iso_image>" -VHDFormat "VHD" -VHDPartitionStyle "MBR"
    ```
    Where `SourcePath` is the full file path to your ISO image, `VHDFormat` is *VHD*, and `VHDPartitionStyle` is *MBR*. 
    
    >[!IMPORTANT]
    >You must specify the `VHDPartitionStyle` as **MBR**. Using the default value, **GPT**, will cause a boot failure in your VHD image.

### Provision your VM using your VHD file
After you have a VHD file, you must provision your VM for auto-sequencing.

**To provision your VM using your VHD file**
1. On the Host device, install Windows 10, version 1703 and the matching ADK version, making sure that you've selected to install the **Microsoft Application Virtualization (App-V) Auto Sequencer** component.

2. Make sure that Hyper-V is turned on. For more info about turning on and using Hyper-V, see [Hyper-V on Windows Server 2016](https://technet.microsoft.com/en-us/windows-server-docs/compute/hyper-v/hyper-v-on-windows-server).

3. Open PowerShell as an admin and run the **New-AppVSequencerVM** cmdlet, using the following parameters:

    ```ps1
    New-AppVSequencerVM -VMName "<name_of_new_vm>" -ADKPath "<path_to_adk_install_folder>" -VHDPath "<path_to_vhd_file>" -VMMemory <vm_memory_size> -VMSwitch "<name_of_network_switch>"
    ```
    
    Where you create a unique name for your VM, ensure that the VHD file and matching ADK tools are located on the Host device and referenced in the 'ADKPath' and the 'VHDPath' parameters, determine the amount of memory to be allocated for use by your VM, and provide the name of your network switch.

A new Hyper-V VM file is created out of the provisioned VHD, creating a "clean" checkpoint, from where all of the sequencing and updating will start.


## Provision an existing VM for auto-sequencing
If your apps require custom prerequesites, such as Microsoft SQL Server, we recommend that you preinstall the prerequisites on your VM and then use that VM for auto-sequencing. Using these steps will establish a connection to your existing VM, install the Microsoft Application Virtualization (App-V) Auto Sequencer from the ADK tools, and provision your VM for auto-sequencing.

**To connect to your existing VM**
- Open PowerShell as an admin and run the following commands on your existing VM:

    - **Set the network category of your connection profile on the VM to `Private`:** 
    
        `Get-netconnectionprofile | set-netconnectionprofile -NetworkCategory Private`
        
    - **Set the Windows Firewall rules for the display groups, `Remote Desktop` and `Windows Remote Management`:** 
    
        `Enable-NetFirewallRule -DisplayGroup “Remote Desktop”` and `Enable-NetFirewallRule -DisplayGroup “Windows Remote Management”`

    - **Set the VM to receive remote commands without a confirmation prompt:**
    
        `Enable-PSRemoting –Force`

    These commands turn on [PowerShell Remoting](https://msdn.microsoft.com/powershell/reference/5.1/Microsoft.PowerShell.Core/about/about_Remote) and turn on the necessary Windows Firewall rules so you can connect to your VM.

**To provision an existing VM**
1. On the Host device, install Windows 10, version 1703 and the matching ADK version, making sure that you've selected to install the **Microsoft Application Virtualization (App-V) Auto Sequencer** component.

2. Open PowerShell as an admin and run the **New-AppVSequencerVM** cmdlet, using the following parameters:

    ```ps1
    New-AppVSequencerVM -VMName "<name_of_vm>" -VMComputerName "<computer_name_for_vm>" -ADKPath "<path_to_adk_install_folder>"
    ```
    
    Where `VMName` is the name of the VM granted during its creation and shown in the Hyper-V Manager tool, and the `VMComputerName` is the name of the VM, assigned after its creation and shown on the **Computer name** field of the **System Properties** screen.

A new Hyper-V VM file is created from the existing VM, creating a "clean" checkpoint, from where all of the sequencing and updating will start.

## Reviewing the provisioning log files
The 2 types of provisioning log files, located at `“%temp%\AutoSequencer\Logs”`, are:

- **New-AppVSequencerVM-<time_stamp>.txt**: Includes info about the provisioning activities, such as "Waiting for VM session", "Copying installer for Sequencer", and so on.

- **New-AppVSequencerVM-report-<time_stamp>.txt**: Includes info about the connections made to the VM, showing whether there were any failures.

## Related topics
- [Convert-WindowsImage.ps1](https://gallery.technet.microsoft.com/scriptcenter/Convert-WindowsImageps1-0fe23a8f)

- [Download the Windows ADK](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit)

- [Install the App-V Sequencer](appv-install-the-sequencer.md)

- [Hyper-V on Windows Server 2016](https://technet.microsoft.com/en-us/windows-server-docs/compute/hyper-v/hyper-v-on-windows-server)

- [Manually sequence a new app using the Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-sequence-a-new-application.md)

## Have a suggestion for App-V?
Add or vote on suggestions on the [Application Virtualization feedback site](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization).<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

