---
title: Automatically provision your sequencing environment using Microsoft Application Virtualization Sequencer (App-V Sequencer) (Windows 10)
description: How to automatically provision your sequencing environment using Microsoft Application Virtualization Sequencer (App-V Sequencer) PowerShell cmdlet or the user interface.
author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/18/2018
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
---
# Automatically provision your sequencing environment using Microsoft Application Virtualization Sequencer (App-V Sequencer)

>Applies to: Windows 10, version 1703

Previous versions of the App-V Sequencer have required you to manually create your sequencing environment. Windows 10, version 1703 introduces two new PowerShell cmdlets, New-AppVSequencerVM and Connect-AppvSequencerVM, which automatically create your sequencing environment for you, including provisioning your virtual machine.

## Automatic VM provisioning of the sequencing environment

You have two options for provisioning an VM for auto-sequencing:

1. Using a Virtual Hard Disk (VHD)
2. Updating an existing VM

You can only choose one option.

>[!NOTE]
>We have reduced the number of environmental checks performed by the App-V Sequencer, narrowing down the list of apps that need to be disabled or turned off for a clean sequencing experience. We've also suppressed antivirus and other similar app warnings.

### Provision a new VM with a VHD file

Provisioning your new VM includes creating a VHD file, setting up a user account, turning on remote PowerShell scripting, and installing the App-V Sequencer.

#### Create a VHD file

For this process to work, you must have a base operating system available as a VHD image file, we recommend using the [Convert-WindowsImage.ps1](https://gallery.technet.microsoft.com/scriptcenter/Convert-WindowsImageps1-0fe23a8f) command-line tool.

#### Create a VHD file with the Convert-WindowsImage command-line tool

1. Open PowerShell as an admin and run the **Convert-WindowsImage** tool, using the following commands:

    ```ps1
    Convert-WindowsImage -SourcePath "<path_to_iso_image>" -VHDFormat "VHD" -VHDPartitionStyle "MBR"
    ```
    Where ```<path_to_iso_image>``` is the full path to your ISO image.

>[!IMPORTANT]
>You must specify the *VHDPartitionStyle* as **MBR**. If you use the default value, **GPT**, will cause a boot failure in your VHD image.

#### Provision your VM with your VHD file

After you have a VHD file, you must provision your VM for auto-sequencing.

1. On the Host device, install Windows 10, version 1703 and the **Microsoft Application Virtualization (App-V) Auto Sequencer** component from the matching version of the Windows Assessment and Deployment Kit (ADK). For more info on how to install the App-V Sequencer, see [Install the App-V Sequencer](appv-install-the-sequencer.md).
2. Make sure that Hyper-V is turned on. For more info about turning on and using Hyper-V, see [Hyper-V on Windows Server 2016](https://technet.microsoft.com/windows-server-docs/compute/hyper-v/hyper-v-on-windows-server).
3. Open PowerShell as an admin and run the **New-AppVSequencerVM** cmdlet, using the following parameters:

    ```PowerShell
    New-AppVSequencerVM -VMName "<name_of_new_vm>" -ADKPath "<path_to_adk_install_folder>" -VHDPath "<path_to_vhd_file>" -VMMemory "<vm_memory_size>" -VMSwitch "<name_of_network_switch>"
    ```

   This command creates a new Hyper-V VM file using the provided VHD file and also creates a "clean" checkpoint, from where all sequencing and updating will start.

### Provision an existing VM for auto-sequencing

If your apps require custom prerequisites, such as Microsoft SQL Server, we recommend that you preinstall the prerequisites on your VM and then use that VM for auto-sequencing. Using these steps will establish a connection to your existing VM.

#### Connect to your existing VM

- Open PowerShell as an admin and run the following commands on your existing VM:

    - **Set the network category of your connection profile on the VM to _Private_:** 
    
        ```PowerShell
        Get-netconnectionprofile | set-netconnectionprofile -NetworkCategory Private
        ```
        
    - **Enable firewall rules for _Remote Desktop_ and _Windows Remote Management_:**
    
        ```PowerShell
        Enable-NetFirewallRule -DisplayGroup “Remote Desktop”
        Enable-NetFirewallRule -DisplayGroup “Windows Remote Management”
        ```

    - **Set the VM to receive remote commands without a confirmation prompt:**
    
        ```PowerShell
        Enable-PSRemoting –Force
        ```

#### Provision an existing VM

1. On the Host device, install Windows 10, version 1703 and the **Microsoft Application Virtualization (App-V) Auto Sequencer** component from the matching version of the Windows Assessment and Deployment Kit (ADK). For more info on how to install the App-V Sequencer, see [Install the App-V Sequencer](appv-install-the-sequencer.md).

2. Open PowerShell as an admin and run the **Connect-AppvSequencerVM** cmdlet, using the following parameters:

    ```ps1
    Connect-AppvSequencerVM -VMName "<name_of_vm>"
    ```
    
    Where ```<name_of_vm>``` is the name of the VM as shown in the Hyper-V Manager tool.

This command connects to an existing Hyper-V VM using the provided VM name for auto-sequencing.

### Review the provisioning log files

The two types of provisioning log files, located at %temp%\AutoSequencer\Logs, are:

- **New-AppVSequencerVM-<time_stamp>.txt**. Includes info about the provisioning activities, such as "Waiting for VM session", "Copying installer for Sequencer", and so on.
- **Connect-AppvSequencerVM-report-<time_stamp>.txt**. Includes info about the connections made to the VM, showing whether there were any failures.

### Next steps

After provisioning your sequencing environment, you must sequence your apps, either as a group or individually. For more info about sequencing your apps, see the following articles

- [Manually sequence a single new app using Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-sequence-a-new-application.md)
- [Automatically sequence multiple apps at the same time using Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-auto-batch-sequencing.md)
- [Automatically update multiple apps at the same time using Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-auto-batch-updating.md)

After you sequence your packages, you can automatically clean up any unpublished packages on the App-V client. To learn more, see [Automatically clean up unpublished packages on the App-V client](appv-auto-clean-unpublished-packages.md).

### Related topics

- [Download the **Convert-WindowsImage** tool](https://www.powershellgallery.com/packages/Convert-WindowsImage/10.0)
- [Download the Windows ADK](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit)
- [How to install the App-V Sequencer](appv-install-the-sequencer.md)
- [Learn about Hyper-V on Windows Server 2016](https://technet.microsoft.com/windows-server-docs/compute/hyper-v/hyper-v-on-windows-server)



