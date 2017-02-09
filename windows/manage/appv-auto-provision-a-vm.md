---
title: Automatically sequence a new app using Microsoft Application Virtualization Sequencer (App-V Sequencer) (Windows 10)
description: How to automatically sequence a new app using Microsoft Application Virtualization Sequencer (App-V Sequencer) PowerShell cmdlet or the user interface.
author: eross-msft
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# Automatically provision a virtual machine (VM) using Microsoft Application Virtualization Sequencer (App-V Sequencer)

**Applies to**
-   Windows 10, version 1703

Previous versions of the App-V Sequencer have required you to manually sequence and update your app packages. This was time-consuming and required extensive interaction, causing many companies to deploy brand-new packages rather than update an existing one. Windows 10, version 1703 introduces the App-V Auto-Sequencer, which automatically sequences your app packages, improving your overall experience by streamlining the provisioning of the prerequisite environment, automating app installation, and expediting the package updating setup.

Using the automatic sequencer to package your apps provides:

- Automatic virtual machine (VM) provisioning of the sequencing environment. The process for this is covered in this topic.

- Batch-sequencing of packages. This means that multiple apps can be sequenced at the same time, in a single group. For info about this, see [Automatically sequence multiple apps at the same time using Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-auto-batch-sequencing.md).

- Batch-updating of packages. This means that multiple apps can be updated at the same time, in a single group. For info about this, see [Automatically update multiple apps at the same time using Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-auto-batch-updating.md).

- Automatic template creation. The App-V package template is automatically created when using the automatic App-V Sequencer cmdlet or interface.

## Automatic VM provisioning of the sequencing environment
You have 2 options for provisioning an VM for auto-sequencing:
- Using a Virtual Hard Disk (VHD)

    -OR-

- Updating an existing VM

   >[!NOTE]
   >We have reduced the number of environmental checks performed by the App-V Sequencer, narrowing down the list of apps that need to be disabled or turned off for a clean sequencing experience. We've also suppressed antivirus and other similar app warnings.

### Provision a new VM by using a VHD file
Provisioning your new VM includes creating a VHD file, setting up a user account, turning on remote PowerShell scripting, and installing the App-V Sequencer.

#### Create a VHD file
For this process to work, you must have a base operating system available as a VHD image file, we recommend using the [Convert-WindowsImage.ps1](https://gallery.technet.microsoft.com/scriptcenter/Convert-WindowsImageps1-0fe23a8f) command-line tool.

**To create a VHD file by using the Convert-WindowsImage command-line tool**
1. Open PowerShell as an admin and run the Convert-WindowsImage tool, using the following commands:

    ```ps1
    Convert-WindowsImage -SourcePath "<path_to_iso_image>" -VHDFormat "VHD" -VHDPartitionStyle "MBR"
    ```
    Where _SourcePath_ is the full path to your ISO image, _VHDFormat_ is always *VHD*, and _VHDPartitionStyle_ is always *MBR*. 
    
    >[!IMPORTANT]
    >You must specify the _VHDPartitionStyle_ as **MBR**. Using the default value, **GPT**, will cause a boot failure in your VHD image.

#### Provision your VM using your VHD file
After you have a VHD file, you must provision your VM for auto-sequencing.

**To provision your VM using your VHD file**
1. On the Host device, install Windows 10, version 1703 and the **Microsoft Application Virtualization (App-V) Auto Sequencer** component from the matching version of the Windows Assessment and Deployment Kit (ADK). For more info on how to install the App-V Sequencer, see [Install the App-V Sequencer](appv-install-the-sequencer.md).

2. Make sure that Hyper-V is turned on. For more info about turning on and using Hyper-V, see [Hyper-V on Windows Server 2016](https://technet.microsoft.com/en-us/windows-server-docs/compute/hyper-v/hyper-v-on-windows-server).

3. Open PowerShell as an admin and run the **New-AppVSequencerVM** cmdlet, using the following parameters:

    ```ps1
    New-AppVSequencerVM -VMName "<name_of_new_vm>" -ADKPath "<path_to_adk_install_folder>" -VHDPath "<path_to_vhd_file>" -VMMemory <vm_memory_size> -VMSwitch "<name_of_network_switch>"
    ```
    
This command creates a new Hyper-V VM file using the provided VHD file and also creates a "clean" checkpoint, from where all sequencing and updating will start.


### Provision an existing VM for auto-sequencing
If your apps require custom prerequisites, such as Microsoft SQL Server, we recommend that you preinstall the prerequisites on your VM and then use that VM for auto-sequencing. Using these steps will establish a connection to your existing VM.

**To connect to your existing VM**
- Open PowerShell as an admin and run the following commands on your existing VM:

    - **Set the network category of your connection profile on the VM to _Private_:** 
    
        ```ps1
        Get-netconnectionprofile | set-netconnectionprofile -NetworkCategory Private
        ```
        
    - **Enable firewall rules for _Remote Desktop_ and _Windows Remote Management_:** 
    
        ```ps1
        Enable-NetFirewallRule -DisplayGroup “Remote Desktop” 
        Enable-NetFirewallRule -DisplayGroup “Windows Remote Management”
        ```

    - **Set the VM to receive remote commands without a confirmation prompt:**
    
        ```ps1
        Enable-PSRemoting –Force
        ```

**To provision an existing VM**
1. On the Host device, install Windows 10, version 1703 and the **Microsoft Application Virtualization (App-V) Auto Sequencer** component from the matching version of the Windows Assessment and Deployment Kit (ADK). For more info on how to install the App-V Sequencer, see [Install the App-V Sequencer](appv-install-the-sequencer.md).

2. Open PowerShell as an admin and run the **Connect-AppvSequencerVM** cmdlet, using the following parameters:

    ```ps1
    Connect-AppvSequencerVM -VMName "<name_of_vm>" -ADKPath "<path_to_adk_install_folder>"
    ```
    
    Where _VMName_ is the name of the VM granted during its creation and shown in the Hyper-V Manager tool, and the _VMComputerName_ is the name of the VM, assigned after its creation and shown on the **Computer name** field of the **System Properties** screen.

This command creates a new Hyper-V VM file using the provided VHD file and also creates a "clean" checkpoint, from where all sequencing and updating will start.


### Review the provisioning log files
The 2 types of provisioning log files, located at %temp%\AutoSequencer\Logs, are:

- **New-AppVSequencerVM-&lt;*time_stamp*&gt;.txt**. Includes info about the provisioning activities, such as "Waiting for VM session", "Copying installer for Sequencer", and so on.

- **Connect-AppvSequencerVM-report-&lt;*time_stamp*&gt;.txt**. Includes info about the connections made to the VM, showing whether there were any failures.


### Related topics
- [Download the Convert-WindowsImage tool](https://gallery.technet.microsoft.com/scriptcenter/Convert-WindowsImageps1-0fe23a8f)

- [Download the Windows ADK](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit)

- [How to install the App-V Sequencer](appv-install-the-sequencer.md)

- [Learn about Hyper-V on Windows Server 2016](https://technet.microsoft.com/en-us/windows-server-docs/compute/hyper-v/hyper-v-on-windows-server)

- [Manually sequence a new app using Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-sequence-a-new-application.md)

- [Automatically sequence multiple apps at the same time using Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-auto-batch-sequencing.md)

- [Automatically update multiple apps at the same time using Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-auto-batch-updating.md)

- [Automatically cleanup unpublished packages on the App-V client](appv-auto-clean-unpublished-packages.md)


**Have a suggestion for App-V?**<p>
Add or vote on suggestions on the [Application Virtualization feedback site](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization).<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).