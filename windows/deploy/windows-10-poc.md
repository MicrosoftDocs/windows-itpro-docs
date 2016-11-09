---
title: Deploy Windows 10 in a test lab (Windows 10)
description: Concepts and procedures for deploying Windows 10 in a proof of concept lab environment.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
---

# Step by step guide: Deploy Windows 10 in a test lab

**Applies to**

-   Windows 10

<P>This guide provides step-by-step instructions for setting up a proof of concept (PoC) environment where you test the tools and procedures necessary to deploy Windows 10. The PoC enviroment is configured by using Hyper-V and requires a minimum amount of resources. Windows PowerShell commands are provided to set up the test lab quickly. Instructions to "type" Windows PowerShell commands provided in this guide can be typed, but in most cases the preferred method is to copy and paste these commands. If you are not familiar with Hyper-V, review the [terms](#appendix-d-terminology-in-this-guide) used in this guide before starting. 

The guide contains detailed instructions for three general procedures:

<UL>
<LI>Install Hyper-V.  
<LI>Configure Hyper-V network and virtual machine (VM) settings.
<LI>Install and configure network services and settings on VMs.
</UL>

If you already have a computer running Hyper-V, you can use this computer and skip the first procedure.

After completing the instructions in this guide, you will have a PoC environment that enables you to test Windows 10 deployment procedures with current tools, as documented in subsequent guides:<BR>
- [Deploy Windows 10 in a test lab using MDT](windows-10-poc-mdt.md)<BR>
- [Deploy Windows 10 in a test lab using System Center Configuration Manager](windows-10-poc-sc-config-mgr.md)<BR>

Links are provided to download trial versions of Windows Server 2012, Windows 10 Enterprise, and all deployment tools necessary to complete the lab.

To complete this guide, you will need a Hyper-V capable computer running Windows 8.1 or later with 16GB of RAM. Detailed [requirements](#hardware-and-software-requirements) are provided below. 

## In this guide

The following topics and procedures are provided in this guide. An estimate of the time required to complete each procedure is also provided. Time required to complete procedures will vary depending on the resources available to the Hyper-V host and assigned to VMs, such as processor speed, memory allocation, disk speed, and network speed. 

<div style='font-size:9.0pt'>

<TABLE border=1 cellspacing=0 cellpadding=0>
<TR><TD BGCOLOR="#a0e4fa"><B>Topic</B><TD BGCOLOR="#a0e4fa"><B>Description</B><TD BGCOLOR="#a0e4fa"><B>Time</B>

<TR><TD>[Hardware and software requirements](#hardware-and-software-requirements)<TD>Prerequisites to complete this guide.<TD>
<TR><TD>[Lab setup](#lab-setup)<TD>A description and diagram of the PoC environment.<TD>
<TR><TD>[Configure the PoC environment](#configure-the-poc-environment)<TD>Parent topic for procedures.<TD>
<TR><TD>[Verify support and install Hyper-V](#verify-support-and-install-hyper-v)<TD>Verify that installation of Hyper-V is supported, and install the Hyper-V server role.<TD>10 minutes
<TR><TD>[Download VHD and ISO files](#download-vhd-and-iso-files)<TD>Download evaluation versions of Windows Server 2012 R2 and Windows 10 and prepare these files to be used on the Hyper-V host.<TD>30 minutes
<TR><TD>[Convert PC to VM](#convert-pc-to-vm)<TD>Convert a physical computer on your network to a VM hosted in Hyper-V.<TD>30 minutes
<TR><TD>[Resize VHD](#resize-vhd)<TD>Increase the storage capacity for one of the Windows Server VMs.<TD>5 minutes
<TR><TD>[Configure Hyper-V](#configure-hyper-v)<TD>Create virtual switches, determine available RAM for virtual machines, and add virtual machines.<TD>15 minutes
<TR><TD>[Configure VHDs](#configure-vhds)<TD>Start virtual machines and configure all services and settings.<TD>60 minutes
<TR><TD>[Appendix A: Verify the configuration](#appendix-a-verify-the-configuration)<TD>Verify and troubleshoot network connectivity and services in the PoC environment.<TD>30 minutes
<TR><TD>[Appendix B: Configuring Hyper-V on Windows Server 2008 R2](#appendix-b-configuring-hyper-v-on-windows-server-2008-r2)<TD>Information about using this guide with a Hyper-V host running Windows Server 2008 R2.<TD>
<TR><TD>[Appendix C: Disk2VHD](#appendix-c-disk2vhd)<TD>Information about the Disk2VHD application.<TD>
<TR><TD>[Appendix D: Terminology in this guide](#appendix-d-terminology-in-this-guide)<TD>Terms used in this guide.<TD>
</TABLE>

</div>

## Hardware and software requirements

One computer that meets the hardware and software specifications below is required to complete the guide; A second computer is recommended to validate the upgrade process. 

>Computer 2 is a client computer from your corporate network that is "shadow copied" to create a VM that can be added to the POC environment. This enables you to use a VM that is a mirror image of the computer on your corporate network, providing a realistic simulation of the upgrade process. If you do not have a computer to use for this simulation, you can create an arbitrary VM to represent this computer. Later guides use this computer to simulate Windows 10 replace and refresh scenarios, so the VM is required even if you cannot create one that is mirrored from computer 2.

<div style='font-size:9.0pt'>

<TABLE border=1 cellspacing=0 cellpadding=0>
    <tr>
        <TD></td>
        <td BGCOLOR="#a0e4fa">**Computer 1** (required)</td>
        <td BGCOLOR="#a0e4fa">**Computer 2** (recommended)</td>
    </tr>
    <tr>
        <td BGCOLOR="#a0e4fa">Role</td>
        <td>Hyper-V host</td>
        <td>Client computer</td>
    </tr>
    <tr>
        <td BGCOLOR="#a0e4fa">Description</td>
        <td>This computer will run Hyper-V, the Hyper-V management tools, and the Hyper-V Windows PowerShell module.</td>
        <td>This computer is a Windows 7 or Windows 8/8.1 client on your corporate network that will be converted to a VHD for upgrade demonstration purposes.</td>
    </tr>
    <tr>
        <td BGCOLOR="#a0e4fa">OS</td>
        <td>Windows 8.1/10 or Windows Server 2012/2012 R2/2016<B>*</B></td>
        <td>Windows 7 or a later</td>
    </tr>
    <tr>
        <td BGCOLOR="#a0e4fa">Edition</td>
        <td>Enterprise, Professional, or Education</td>
        <td>Any</td>
    </tr>
    <tr>
        <td BGCOLOR="#a0e4fa">Architecture</td>
        <td>64-bit</td>
        <td>Any<BR>Note: Retaining applications and settings during the upgrade process requires that architecture (32 or 64-bit) is the same before and after the upgrade.</td>
    </tr>
    <tr>
        <td BGCOLOR="#a0e4fa">RAM</td>
        <td>8 GB RAM (16 GB recommended) to test Windows 10 deployment with MDT.
        <BR>16 GB RAM to test Windows 10 deployment with System Center Configuration Manager.</td>
        <td>Any</td>
    </tr>
    <tr>
        <td BGCOLOR="#a0e4fa">Disk</td>
        <td>50 GB available hard disk space (100 GB recommended), any format.</td>
        <td>Any size, MBR formatted.</td>
    </tr>
    <tr>
        <td BGCOLOR="#a0e4fa">CPU</td>
        <td>SLAT-Capable CPU</td>
        <td>Any</td>
    </tr>
    <tr>
        <td BGCOLOR="#a0e4fa">Network</td>
        <td>Internet connection</td>
        <td>Any</td>
    </tr>
</table>



<B>*</B><I>The Hyper-V server role can also be installed on a computer running Windows Server 2008 R2. However, the Windows PowerShell module for Hyper-V is not available on Windows Server 2008 R2, therefore you cannot use many of the steps provided in this guide to configure Hyper-V. To manage Hyper-V on Windows Server 2008 R2, you can use Hyper-V WMI, or you can use the Hyper-V Manager console. Providing all steps in this guide as Hyper-V WMI or as 2008 R2 Hyper-V Manager procedures is beyond the scope of the guide.</I>

The Hyper-V role cannot be installed on Windows 7 or earlier versions of Windows.

</div>

## Lab setup

- Computer 1 is configured to host four VMs on a private, PoC network. 
    - Two VMs are running Windows Server 2012 R2 with required network services and tools installed.
    - Two VMs are client systems: One VM is intended to mirror a host on your corporate network (computer 2) and one VM is running Windows 10 Enterprise to demonstrate the hardware replacement scenario.

The lab architecture is summarized in the following diagram:

![PoC](images/poc.png)

**Note**:
>If you have an existing Hyper-V host, you can use this host and skip the Hyper-V installation section in this guide.

>The two Windows Server VMs can be combined into a single VM to conserve RAM and disk space if required. However, instructions in this guide assume two server systems are used. Using two servers enables Active Directory Domain Services and DHCP to be installed on a server that is not directly connected to the corporate network. This mitigates the risk of clients on the corporate network receiving DHCP leases from the PoC network (i.e. "rogue" DHCP), and limits NETBIOS service broadcasts.

## Configure the PoC environment

**Before you begin**: Ensure that Windows PowerShell is pinned to the taskbar for easy access. If the Hyper-V host is running Windows Server 2012 R2, or Windows Server 2016 then Windows PowerShell is automatically pinned to the taskbar. To pin Windows PowerShell to the taskbar on Windows 8.1 or Windows 10: Click **Start**, type **power**, right click **Windows PowerShell**, and then click **Pin to taskbar**. After Windows PowerShell is pinned to the taskbar, you can open an elevated Windows PowerShell prompt by right-clicking the icon on the taskbar and then clicking **Run as Administrator**.

### Procedures in this section

[Verify support and install Hyper-V](#verify-support-and-install-hyper-v)<BR>
[Download VHD and ISO files](#download-vhd-and-iso-files)<BR>
[Convert PC to VHD](#convert-pc-to-vhd)<BR>
[Resize VHD](#resize-vhd)<BR>
[Configure Hyper-V](#configure-hyper-v)<BR>
[Configure VMs](#configure-vms)<BR>

### Verify support and install Hyper-V

1. Verify that the computer supports Hyper-V.

    Starting with Windows 8, the host computer’s microprocessor must support second level address translation (SLAT) to install Hyper-V. See [Hyper-V: List of SLAT-Capable CPUs for Hosts](http://social.technet.microsoft.com/wiki/contents/articles/1401.hyper-v-list-of-slat-capable-cpus-for-hosts.aspx) for more information. To verify your computer supports SLAT, open an administrator command prompt,  type systeminfo, press ENTER, and review the section displayed at the bottom of the output, next to Hyper-V Requirements. 
    
    See the following example:
    
    <pre style="overflow-y: visible">
    C:\>systeminfo

    ...
    Hyper-V Requirements:      VM Monitor Mode Extensions: Yes
                               Virtualization Enabled In Firmware: Yes
                               Second Level Address Translation: Yes
                               Data Execution Prevention Available: Yes
    </pre>  
    
    In this example, the computer supports SLAT and Hyper-V. 
    
    If one or more requirements are evaluated as "No" then the computer does not support installing Hyper-V.  However, if only the virtualization setting is incompatible, you might be able to enable virtualization in the BIOS and change the **Virtualization Enabled In Firmware** setting from "No" to "Yes." The location of this setting will depend on the manufacturer and BIOS version, but is typically found associated with the BIOS security settings.

    You can also identify Hyper-V support using [tools](https://blogs.msdn.microsoft.com/taylorb/2008/06/19/hyper-v-will-my-computer-run-hyper-v-detecting-intel-vt-and-amd-v/) provided by the processor manufacturer, the [msinfo32](https://technet.microsoft.com/en-us/library/cc731397.aspx) tool, or you can download the [coreinfo](http://technet.microsoft.com/en-us/sysinternals/cc835722) utility and run it, as shown in the following example:

    <pre style="overflow-y: visible">
    C:\>coreinfo -v

    Coreinfo v3.31 - Dump information on system CPU and memory topology
    Copyright (C) 2008-2014 Mark Russinovich
    Sysinternals - www.sysinternals.com

    Intel(R) Core(TM) i7-2600 CPU @ 3.40GHz
    Intel64 Family 6 Model 42 Stepping 7, GenuineIntel
    Microcode signature: 0000001B
    HYPERVISOR      -       Hypervisor is present
    VMX             *       Supports Intel hardware-assisted virtualization
    EPT             *       Supports Intel extended page tables (SLAT)
    </pre>   

    Note: A 64-bit operating system is required to run Hyper-V.

2. Enable Hyper-V.

    The Hyper-V feature is not installed by default. To install it, open an elevated Windows PowerShell window and type the following command:

    <pre style="overflow-y: visible">
    Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V –All
    </pre>
    
    This command works on all operating systems that support Hyper-V. When you are prompted to restart the computer, choose **Yes**. The computer might restart more than once. After installation is complete, you can open Hyper-V Manager by typing **virtmgmt.msc** at an elevated command prompt.
    
    You can also install Hyper-V using the Control Panel in Windows under **Turn Windows features on or off** for a client operating system, or using Server Manager's **Add Roles and Features Wizard** on a server operating system, as shown below:
    
    ![hyper-v feature](images/hyper-v-feature.png)

    ![hyper-v](images/svr_mgr2.png)

    <P>If you choose to install Hyper-V using Server Manager, accept all default selections. 

### Download VHD and ISO files

When you have completed installation of Hyper-V on the host computer, begin configuration of Hyper-V by downloading VHD and ISO files to the computer. These files will be used to create the VMs used in the lab.

>Before you can download VHD and ISO files, you will need to register and sign in to the [TechNet Evaluation Center](https://www.microsoft.com/en-us/evalcenter/) using your Microsoft account.

1. Create a directory on your Hyper-V host named C:\VHD and download a single [Windows Server 2012 R2 VHD](https://www.microsoft.com/en-us/evalcenter/evaluate-windows-server-2012-r2) from the TechNet Evaluation Center to the C:\VHD directory. 

    **Important**: This guide assumes that VHDs are stored in the **C:\VHD** directory on the Hyper-V host. If you use a different directory to store VHDs, you must adjust steps in this guide appropriately.

    After completing registration you will be able to download the 7.47 GB Windows Server 2012 R2 evaluation VHD. An example of the download is shown below.
    
    <TABLE BORDER=1>
    <TR><TD>![VHD](images/download_vhd.png)
    </TABLE>

2. Download the file to the C:\VHD directory. When the download is complete, rename the VHD file that you downloaded to **2012R2-poc-1.vhd**. This is done to make the filename simpler to recognize and type.
3. Copy the VHD to a second file also in the C:\VHD directory and name this VHD **2012R2-poc-2.vhd**.
4. Download the [Windows 10 Enterprise ISO](https://www.microsoft.com/en-us/evalcenter/evaluate-windows-10-enterprise) from the TechNet Evaluation Center to the C:\VHD directory on your Hyper-V host. 

    >During registration, you must specify the type, version, and language of installation media to download. In this example, a Windows 10 Enterprise, 64 bit, English ISO is chosen. You can choose a different version if desired. Note that Windows 10 in-place upgrade is only possible if the source operating system and installation media are both 32-bit or both 64-bit, so you should download the file version that corresponds to the version of your source computer (computer 2) for upgrade testing. 

5. Rename the ISO file that you downloaded to **w10-enterprise.iso**. Again, this is done so that the filename is simpler to type and recognize. After completing registration you will be able to download the 3.63 GB Windows 10 Enterprise evaluation ISO. 

After completing these steps, you will have three files in the C:\VHD directory: 2012R2-poc-1.vhd, 2012R2-poc-2.vhd, w10-enterprise.iso.
    
The following commands and output display the procedures described in this section:


<pre style="overflow-y: visible">
C:\>mkdir VHD
C:\>cd VHD
C:\VHD>ren 9600*.vhd 2012R2-poc-1.vhd
C:\VHD>copy 2012R2-poc-1.vhd 2012R2-poc-2.vhd
   1 file(s) copied.
C:\VHD ren *.iso w10-enterprise.iso
C:\VHD>dir /B
2012R2-poc-1.vhd
2012R2-poc-2.vhd
w10-enterprise.iso
</pre>


### Convert PC to VM

If you do not have a PC available to convert to VM, see [Appendix E: Create PC1 VM](#appendix-e-create-pc1-vm).

If you have a PC available to convert to VM:

1. Verify that you have access to a local administrator account on the computer. Alternatively you can use a domain account with administrative rights, if these credentials are cached on the computer and your domain policy allows the use of cached credentials for login. After converting the computer to a VM, you must be able to sign in on this VM with local administrator privileges, while disconnected from the corporate network.
2. Determine the VM generation that is required. See below.
3. Based on the VM generation, perform the appropriate conversion procedure.

#### Determine VM generation

When creating a VM in Hyper-V, you must specify either generation 1 or generation 2. The following table describes requirements for these two types of VMs.

<div style='font-size:9.0pt'>

<TABLE border=1 cellspacing=0 cellpadding=0>
    <tr>
        <td>Generation</td>
        <td>Architecture</td>
        <td>Operating system</td>
        <td>Partition style</td>
    </tr>
    <tr>
        <td>Generation 1</td>
        <td>32-bit or 64-bit</td>
        <td>Windows 7 or later</td>
        <td>MBR</td>
    </tr>
    <tr>
        <td>Generation 2</td>
        <td>64-bit</td>
        <td>Windows 8 or later</td>
        <td>MBR or GPT</td>
    </tr>
</table>

</div>

To determine the OS and architecture of a PC, type **systeminfo** at a command prompt and review the output next to **OS Name** and **System Type**.

To determine the partition style, open a Windows PowerShell prompt on the PC and type the following command:

<pre style="overflow-y: visible">
Get-WmiObject -Class Win32_DiskPartition | Select-Object -Property SystemName,Caption,Type
</pre>

If the **Type** column does not indicate GPT, then the disk partition format is MBR ("Installable File System" = MBR).

>On a computer running Windows 8 or later, you can also type **Get-Disk** at a Windows PowerShell prompt to discover the partition style. The default output of this cmdlet displays the partition style for all attached disks.

**Choosing a VM generation**

The following table displays the Hyper-V VM generation to choose based on the OS, architecture, and partition style. Links to procedures to create the corresponding VMs are included.

<div style='font-size:9.0pt'>

<TABLE border=1 cellspacing=0 cellpadding=0>
    <tr>
        <td>OS</td>
        <td>Partition style</td>
        <td>Architecture</td>
        <td>VM generation</td>
        <td>Procedures</td>
    </tr>
    <tr>
        <td rowspan=4>Windows 7</td>
        <td rowspan=2>MBR</td>
        <td>32</td>
        <td>1</td>
        <td>A</td>
    </tr>
    <tr>
        <td>64</td>
        <td>1</td>
        <td>A</td>
    </tr>
    <tr>
        <td rowspan=2>GPT</td>
        <td>32</td>
        <td>N/A</td>
        <td>N/A</td>
    </tr>
    <tr>
        <td>64</td>
        <td>1</td>
        <td>C, A</td>
    </tr>
    <tr>
        <td rowspan=4>Windows 8 or later</td>
        <td rowspan=2>MBR</td>
        <td>32</td>
        <td>1</td>
        <td>A</td>
    </tr>
    <tr>
        <td>64</td>
        <td>1, 2</td>
        <td>A</td>
    </tr>
    <tr>
        <td rowspan=2>GPT</td>
        <td>32</td>
        <td>1</td>
        <td>C, A</td>
    </tr>
    <tr>
        <td>64</td>
        <td>2</td>
        <td>B</td>
    </tr>
</table>

</div>

>If the PC is running Windows 7, it can only be converted and hosted in Hyper-V as a generation 1 VM. If the Windows 7 PC is also using a GPT partition style, the disk contents must be captured and then used to create a VHD with the MBR partition style. If this is required, see [Appendix C: Convert GPT to MBR](#appendix-c-convert-gpt-to-mbr).
><BR>If the PC is running Windows 8 or later and uses the GPT partition style, you can capture the disk image and create a generation 2 VM. To do this, you must temporarily mount the EFI system partition which is a simple procedure using the mountvol command.
><BR>If the PC is using an MBR partition style, you can convert the disk to VHD and use it to create a generation 1 VM. If you use the Disk2VHD tool described in this guide, it is not necessary to mount the MBR system partition, but it is still necessary to capture it.

#### Prepare a generation 1 VM

1. Download the [Disk2vhd utility](https://technet.microsoft.com/en-us/library/ee656415.aspx), extract the .zip file and copy **disk2vhd.exe** to a flash drive or other location that is accessible from the computer you wish to convert.

    >You might experience timeouts if you attempt to run Disk2vhd from a network share, or specify a network share for the destination. To avoid timeouts, use local, portable media such as a USB drive.

2. On the computer you wish to convert, double-click the disk2vhd utility to start the graphical user interface. 
3. Select the checkboxes next to the **C:\** and the **system reserved** (BIOS/MBR) volumes. The system volume is not assigned a drive letter, but will be displayed in the Disk2VHD tool with a volume label similar to **\\?\Volume{**. See the following example. **Important**: You must include the system volume in order to create a bootable VHD. If this volume is not displayed in the disk2vhd tool, then the computer is likely to be using the GPT partition style. In this case, see [Determine VM generation](#determine-vm-generation). 
4. Specify a location to save the resulting VHD or VHDX file (F:\VHD\w7.vhdx in the following example) and click **Create**. Note: Hyper-V on Windows Server 2008 R2 does not support VHDX. See the following example:

    ![disk2vhd](images/disk2vhd.png)

5. Click **Create** to start creating a VHDX file.

    >Disk2vhd can save VHDs to local hard drives, even if they are the same as the volumes being converted. Performance is better however when the VHD is saved on a disk different than those being converted, such as a flash drive.

6. When the Disk2vhd utility has completed converting the source computer to a VHD, copy the VHDX file (w7.vhdx) to your Hyper-V host in the C:\VHD directory. There should now be four files in this directory:

    <pre style="overflow-y: visible">
    C:\vhd>dir /B
    2012R2-poc-1.vhd
    2012R2-poc-2.vhd
    w10-enterprise.iso
    w7.VHDX
    </pre>

#### Prepare a generation 2 VM

1. Download the [Disk2vhd utility](https://technet.microsoft.com/en-us/library/ee656415.aspx), extract the .zip file and copy **disk2vhd.exe** to a flash drive or other location that is accessible from the computer you wish to convert.

    >You might experience timeouts if you attempt to run Disk2vhd from a network share, or specify a network share for the destination. To avoid timeouts, use local, portable media such as a USB drive.

2. On the computer you wish to convert, open an elevated command prompt and type the following command:

    <pre style="overflow-y: visible">
    mountvol s: /s
    </pre>

    >This command temporarily assigns a drive letter of S to the system volume and mounts it. If the letter S is already assigned to a different volume on the computer, then choose one that is available (ex: mountvol z: /s).

2. On the computer you wish to convert, double-click the disk2vhd utility to start the graphical user interface. 
3. Select the checkboxes next to the **C:\** and the **S:\** volumes, and clear the **Use Volume Shadow Copy checkbox**. Volume shadow copy will not work if the EFI system partition is selected.

    **Important**: You must include the EFI system partition in order to create a bootable VHD. The Windows RE tools partition is not requried, but it can also be converted if desired.

4. Specify a location to save the resulting VHD or VHDX file (F:\VHD\PC1.vhdx in the following example) and click **Create**. Note: Hyper-V on Windows Server 2008 R2 does not support VHDX. See the following example:

    ![disk2vhd](images/disk2vhd-gen2.png)

5. Click **Create** to start creating a VHDX file.

    >Disk2vhd can save VHDs to local hard drives, even if they are the same as the volumes being converted. Performance is better however when the VHD is saved on a disk different than those being converted, such as a flash drive.

6. When the Disk2vhd utility has completed converting the source computer to a VHD, copy the VHDX file (PC1.vhdx) to your Hyper-V host in the C:\VHD directory. There should now be four files in this directory:

    <pre style="overflow-y: visible">
    C:\vhd>dir /B
    2012R2-poc-1.vhd
    2012R2-poc-2.vhd
    w10-enterprise.iso
    PC1.VHDX
    </pre>

### Resize VHD

The second Windows Server 2012 R2 VHD needs to be expanded in size from 40GB to 80GB to support installing imaging tools and storing OS images.

1. To add available space for the partition, type the following commands at an elevated Windows PowerShell prompt on the Hyper-V host:

    <pre style="overflow-y: visible">
    Resize-VHD –Path c:\VHD\2012R2-poc-2.vhd –SizeBytes 80GB
    $x = (Mount-VHD –Path c:\VHD\2012R2-poc-2.vhd -passthru | Get-Disk | Get-Partition | Get-Volume).DriveLetter
    Resize-Partition -DriveLetter $x -Size (Get-PartitionSupportedSize -DriveLetter $x).SizeMax
    </pre>

2. Verify that the mounted VHD drive is resized to 80 GB, and then dismount the drive:

    <pre style="overflow-y: visible">
    Get-Volume -DriveLetter $x
    Dismount-VHD –Path c:\VHD\2012R2-poc-2.vhd
    </pre>

### Configure Hyper-V

**Important**: You should take advantage of [enhanced session mode](https://technet.microsoft.com/windows-server-docs/compute/hyper-v/learn-more/Use-local-resources-on-Hyper-V-virtual-machine-with-VMConnect) when completing instructions in this guide. Enhanced session mode enables you to copy and paste the commands from the Hyper-V host to VMs and between VMs. After copying some text, you can paste into a Windows PowerShell window by simply right-clicking. Before right-clicking, do not left click other locations as this can empty the clipboard. You can also copy and paste <U>files</U> directly from one computer to another by right-clicking and selecting copy on one computer, then right-clicking and selecting paste on another computer.

As mentioned previously: instructions to "type" commands provided in this guide can be typed, but the preferred method is to copy and paste these commands.

1. Open an elevated Windows PowerShell window and type the following command to create two virtual switches named "poc-internal" and "poc-external":
    >If the Hyper-V host already has an external virtual switch bound to a physical NIC, do not attempt to add a second external virtual switch. Attempting to add a second external switch will result in an error indicating that the NIC is **already bound to the Microsoft Virtual Switch protocol.** In this case, choose one of the following options:<BR>
    &nbsp;&nbsp;&nbsp;A) Remove the existing external virtual switch, then add the poc-external switch<BR> 
    &nbsp;&nbsp;&nbsp;B) Rename the existing external switch to "poc-external"<BR>
    &nbsp;&nbsp;&nbsp;C) Replace each instance of "poc-external" used in this guide with the name of your existing external virtual switch<BR>
    If you choose B) or C), then do not run the second command below.

    <pre style="overflow-y: visible">
    New-VMSwitch -Name poc-internal -SwitchType Internal -Notes "PoC Network"
    New-VMSwitch -Name poc-external -NetAdapterName (Get-NetAdapter |?{$_.Status -eq "Up" -and !$_.Virtual}).Name -Notes "PoC External"
    </pre>
    
    **Note**: The second command above will temporarily interrupt network connectivity on the Hyper-V host.
    
    >Since an external virtual switch is associated to a physical network adapter on the Hyper-V host, this adapter must be specified when adding the virtual switch. This is automated here by filtering for active non-virtual ethernet adapters using the Get-NetAdapter cmdlet ($_.Status -eq "Up" -and !$_.Virtual). If your Hyper-V host is dual-homed with multiple active ethernet adapters, this automation will not work, and the second command above will fail. In this case, you must edit the command used to add the "poc-external" virtual switch by inserting the NetAdapterName. The NetAdapterName value corresponds to the name of the network interface you wish to use. For example, if the network interface you use on the Hyper-V host to connect to the Internet is named "Ethernet 2" then type the following command to create an external virtual switch:

    <pre style="overflow-y: visible">
    New-VMSwitch -Name poc-external -NetAdapterName "Ethernet 2" -Notes "PoC External"
    </pre>
    
2. At the elevated Windows PowerShell prompt, type the following command to determine the megabytes of RAM that are currently available on the Hyper-V host:

    <pre style="overflow-y: visible">
    (Get-VMHostNumaNode).MemoryAvailable
    </pre>

    >This command will display the megabytes of RAM available. On a Hyper-V host computer with 16 GB of physical RAM installed, 10,000 MB of RAM or greater should be available if the computer is not also running other applications. On a computer with 8 GB of physical RAM installed, at least 4000 MB should be available. If the computer has less RAM available than this, try closing applications to free up more memory.

3. Determine the available memory for VMs by dividing the available RAM by 4.  For example:

    <pre style="overflow-y: visible">
    (Get-VMHostNumaNode).MemoryAvailable/4
    2775.5
    </pre>

    In this example, VMs can use a maximum of 2700 MB of RAM each, to run four VMs simultaneously. 

4. At the elevated Windows PowerShell prompt, type the following command to create two new VMs. Other VMs will be added later. 
    >**Important**: Replace the value of 2700MB for $maxRAM in the first command below with the RAM value that you calculated in the previous step.

    <pre style="overflow-y: visible">
    $maxRAM = 2700MB
    New-VM -Name "DC1" -VHDPath c:\vhd\2012R2-poc-1.vhd -SwitchName poc-internal
    Set-VMMemory -VMName "DC1" -DynamicMemoryEnabled $true -MinimumBytes 512MB -MaximumBytes $maxRAM -Buffer 20
    Enable-VMIntegrationService -Name "Guest Service Interface" -VMName DC1
    New-VM -Name "SRV1" -VHDPath c:\vhd\2012R2-poc-2.vhd -SwitchName poc-internal
    Add-VMNetworkAdapter -VMName "SRV1" -SwitchName "poc-external"
    Set-VMMemory -VMName "SRV1" -DynamicMemoryEnabled $true -MinimumBytes 512MB -MaximumBytes $maxRAM -Buffer 80
    Enable-VMIntegrationService -Name "Guest Service Interface" -VMName SRV1
    </pre>
    
    **Note**: The RAM values assigned to VMs in this step are not permanent, and can be easily increased or decreased later if needed to address performance issues. 

5. Using the same elevated Windows PowerShell prompt that was used in the previous step, type one of the following sets of commands, depending on the type of VM that was prepared in the [Determine VM generation](#determine-vm-generation) section, either generation 1 or generation 2.

    To create a generation 1 VM:

    <pre style="overflow-y: visible">
    New-VM -Name "PC1" -VHDPath c:\vhd\w7.vhdx -SwitchName poc-internal
    Set-VMMemory -VMName "PC1" -DynamicMemoryEnabled $true -MinimumBytes 512MB -MaximumBytes $maxRAM -Buffer 20
    Enable-VMIntegrationService -Name "Guest Service Interface" -VMName PC1
    </pre>

    To create a generation 2 VM:

    <pre style="overflow-y: visible">
    New-VM -Name "PC1" -Generation 2 -VHDPath c:\vhd\PC1.vhdx -SwitchName poc-internal
    Set-VMMemory -VMName "PC1" -DynamicMemoryEnabled $true -MinimumBytes 512MB -MaximumBytes $maxRAM -Buffer 20
    Enable-VMIntegrationService -Name "Guest Service Interface" -VMName PC1
    </pre>
    
### Configure VMs 

1. At an elevated Windows PowerShell prompt on the Hyper-V host, start the first VM by typing the following command:

    <pre style="overflow-y: visible">
    Start-VM DC1
    </pre>

2. Wait for the VM to complete starting up, and then connect to it either using the Hyper-V Manager console (virtmgmt.msc) or using an elevated command prompt on the Hyper-V host:

    <pre style="overflow-y: visible">
    vmconnect localhost DC1
    </pre>

3. Click **Next** to accept the default settings, read the license terms and click **I accept**, provide an administrator password of **pass@word1**, and click **Finish**. 
4. Click the **Ctrl+Alt+Del** button in the upper left corner of the virtual machine connection window, and then sign in to DC1 using the local administrator account. 
5. Right-click **Start**, point to **Shut down or sign out**, and click **Sign out**. The VM connection will reset and a new connection dialog box will appear enabling you to choose a custom display configuration. Select a desktop size, click **Connect** and sign in again with the local Administrator account. Note: Signing in this way ensures that [enhanced session mode](https://technet.microsoft.com/windows-server-docs/compute/hyper-v/learn-more/Use-local-resources-on-Hyper-V-virtual-machine-with-VMConnect) is enabled. It is only necessary to do this the first time you sign in to a new VM.
6. If DC1 is configured as described in this guide, it will currently be assigned an APIPA address, have a randomly generated hostname, and a single network adapter named "Ethernet." Open an elevated Windows PowerShell prompt on DC1 and type or paste the following commands to provide a new hostname and configure a static IP address and gateway:

    <pre style="overflow-y: visible">
    Rename-Computer DC1
    New-NetIPAddress –InterfaceAlias Ethernet –IPAddress 192.168.0.1 –PrefixLength 24 -DefaultGateway 192.168.0.2
    Set-DnsClientServerAddress -InterfaceAlias Ethernet -ServerAddresses 192.168.0.1,192.168.0.2
    </pre>

    >The default gateway at 192.168.0.2 will be configured later in this guide.

7. Install the Active Directory Domain Services role by typing the following command at an elevated Windows PowerShell prompt:

    <pre style="overflow-y: visible">
    Install-WindowsFeature -Name AD-Domain-Services -IncludeAllSubFeature -IncludeManagementTools
    </pre>

8. Before promoting DC1 to a Domain Controller, you must reboot so that the name change in step 3 above takes effect. To restart the computer, type the following command at an elevated Windows PowerShell prompt:

    <pre style="overflow-y: visible">
    Restart-Computer
    </pre>

9. When DC1 has rebooted, sign in again and open an elevated Windows PowerShell prompt. Now you can promote the server to be a domain controller. The directory services restore mode password must be entered as a secure string. Type the following commands at the elevated Windows PowerShell prompt:

    <pre style="overflow-y: visible">
    $pass = "pass@word1" | ConvertTo-SecureString -AsPlainText -Force
    Install-ADDSForest -DomainName contoso.com -InstallDns -SafeModeAdministratorPassword $pass -Force
    </pre>

    Ignore any warnings that are displayed. The computer will automatically reboot upon completion.

10. When the reboot has completed, reconnect to DC1, sign in using the CONTOSO\Administrator account, open an elevated Windows PowerShell prompt, and use the following commands to add a reverse lookup zone for the PoC network, add the DHCP Server role, authorize DHCP in Active Directory, and supress the post-DHCP-install alert:

    <pre style="overflow-y: visible">
    Add-DnsServerPrimaryZone -NetworkID "192.168.0.0/24" -ReplicationScope Forest
    Add-WindowsFeature -Name DHCP -IncludeManagementTools
    netsh dhcp add securitygroups
    Restart-Service DHCPServer
    Add-DhcpServerInDC  dc1.contoso.com  192.168.0.1
    Set-ItemProperty –Path registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\ServerManager\Roles\12 –Name ConfigurationState –Value 2
    </pre>

11. Next, add a DHCP scope and set option values:

    <pre style="overflow-y: visible">
    Add-DhcpServerv4Scope -Name "PoC Scope" -StartRange 192.168.0.100 -EndRange 192.168.0.199 -SubnetMask 255.255.255.0 -Description "Windows 10 PoC" -State Active
    Set-DhcpServerv4OptionValue -ScopeId 192.168.0.0 -DnsDomain contoso.com -Router 192.168.0.2 -DnsServer 192.168.0.1,192.168.0.2 -Force
    </pre>

    >The -Force option is necessary when adding scope options to skip validation of 192.168.0.2 as a DNS server because we have not configured it yet. The scope should immediately begin issuing leases on the PoC network. The first DHCP lease that will be issued is to vEthernet interface on the Hyper-V host, which is a member of the internal network. You can verify this by using the command: Get-DhcpServerv4Lease -ScopeId 192.168.0.0.
12. Add a user account to the contoso.com domain that can be used with client computers:

    <pre style="overflow-y: visible">
    New-ADUser -Name "User1" -UserPrincipalName user1 -AccountPassword (ConvertTo-SecureString "pass@word1" -AsPlainText -Force) -ChangePasswordAtLogon $false -Enabled $true
    </pre>

13. The DNS server role will also be installed on the member server, SRV1, at 192.168.0.2 so that we can forward DNS queries from DC1 to SRV1 to resolve Internet names without having to configure a forwarder outside the PoC network. Since the IP address of SRV1 already exists on DC1's network adapter, it will be automatically added during the DCPROMO process. To verify this server-level DNS forwarder on DC1, type the following command at an elevated Windows PowerShell prompt on DC1:

    <pre style="overflow-y: visible">
    Get-DnsServerForwarder
    </pre>

    The following output should be displayed:

    <pre style="overflow-y: visible">
    UseRootHint        : True
    Timeout(s)         : 3
    EnableReordering   : True
    IPAddress          : 192.168.0.2
    ReorderedIPAddress : 192.168.0.2
    </pre>

    If this output is not displayed, you can use the following command to add SRV1 as a forwarder:

    <pre style="overflow-y: visible">
    Add-DnsServerForwarder -IPAddress 192.168.0.2
    </pre>

14. Minimize the DC1 VM window but **do not stop** the VM.

    Next, the client VM will be started and joined to the contoso.com domain. This is done before adding a gateway to the PoC network so that there is no danger of duplicate DNS registrations for the physical client and its cloned VM in the corporate domain.

15. Using an elevated Windows PowerShell prompt on the Hyper-V host, start the client VM (PC1), and connect to it:

    <pre style="overflow-y: visible">
    Start-VM PC1
    vmconnect localhost PC1
    </pre>

16. Sign on to PC1 using an account that has local administrator rights.

    >PC1 will be disconnected from its current domain, so you cannot use a domain account to sign on unless these credentials are cached and the use of cached credentials is permitted by Group Policy. If cached credentials are available and permitted, you can use these credentials to sign in. Otherwise, use an existing local administrator account.

17. After signing in, the operating system detects that it is running in a new environment. New drivers will be automatically installed, including the network adapter driver. The network adapter driver must be updated before you can proceed, so that you will be able to join the contoso.com domain. Depending on the resources allocated to PC1, installing the network adapter driver might take a few minutes. You can monitor device driver installation by clicking **Show hidden icons** in the notification area.

    ![PoC](images/installing-drivers.png)

    >If the client was configured with a static address, you must change this to a dynamic one so that it can obtain a DHCP lease. 

18. When the new network adapter driver has completed installation, you will receive an alert to set a network location for the contoso.com network. Select **Work network** and then click **Close**. When you receive an alert that a restart is required, click **Restart Later**.
19. Open an elevated Windows PowerShell prompt on PC1 and verify that the client VM has received a DHCP lease and can communicate with the consoto.com domain controller. To open Windows PowerShell on Windows 7, click **Start**, and search for "**power**." Right-click **Windows PowerShell** and then click **Pin to Taskbar** so that it is simpler to use Windows Powershell during this lab. Click **Windows PowerShell** on the taskbar, and then type **ipconfig** at the prompt to see the client's current IP address. Also type **ping dc1.contoso.com** and **nltest /dsgetdc:contoso.com** to verify that it can reach the domain controller. See the following examples of a successful network connection:
    
    <pre style="overflow-y: visible">

    Pinging dc1.contoso.com [192.168.0.1] with 32 bytes of data:

    </pre>

    >If PC1 is running Windows 7, enhanced session mode is not available, which means that you cannot copy and paste commands from the Hyper-V host to a Windows PowerShell prompt on PC1. However, it is possible to use integration services to copy a file from the Hyper-V host to a VM. The next procedure demonstrates this. If the Copy-VMFile command fails, then type the commands below at an elevated Windows PowerShell prompt on PC1 instead of saving them to a script to run remotely. If PC1 is running Windows 8 or a later operating system, you can use enhanced session mode to copy and paste these commands instead of typing them.

20. Minimize the PC1 window and switch to the Hyper-V host computer. Open an elevated Windows PowerShell ISE window on the Hyper-V host (right-click Windows PowerShell and then click Run ISE as Administrator) and type the following commands in the (upper) script editor pane: 

    <pre style="overflow-y: visible">
    (Get-WmiObject Win32_ComputerSystem).UnjoinDomainOrWorkgroup($null,$null,0)
    $pass = "pass@word1" | ConvertTo-SecureString -AsPlainText -Force
    $user = "contoso\administrator"
    $cred = New-Object System.Management.Automation.PSCredential($user,$pass)
    Add-Computer -DomainName contoso.com -Credential $cred
    Restart-Computer
    </pre>

    >If you do not see the script pane, click **View** and then click **Show Script Pane Top**.
    
    See the following example:

    ![ISE](images/ISE.png)

21. Click **File**, click **Save As**, and save the commands as **c:\VHD\pc1.ps1** on the Hyper-V host.
22. In the (lower) terminal input window, type the following command to copy the script to PC1 using integration services:

    <pre style="overflow-y: visible">
    Copy-VMFile "PC1" –SourcePath "C:\VHD\pc1.ps1"  –DestinationPath "C:\pc1.ps1" –CreateFullPath –FileSource Host
    </pre>

    >In order for this command to work properly, PC1 must be running the vmicguestinterface (Hyper-V Guest Service Interface) service. If this service is not installed, you can try updating integration services on the VM. This can be done by mounting the Hyper-V Integration Services Setup (vmguest.iso), which is located in C:\Windows\System32 on Windows Server operating systems that are running the Hyper-V role service. Otherwise, just create the file c:\pc1.ps1 on the VM and type the commands into this file manually. Be sure to save the file as a Windows PowerShell script file with the .ps1 extension and not as a text (.txt) file.

23. On PC1, type the following commands at an elevated Windows PowerShell prompt:

    <pre style="overflow-y: visible">
    Get-Content c:\pc1.ps1 | powershell.exe -noprofile - 
    </pre>

    >PC1 is removed from its domain in this step while not connected to the corporate network so as to ensure the computer object in the corporate domain is unaffected. We have not also renamed PC1 to "PC1" in system properties so that it maintains some of its mirrored identity. However, if desired you can also rename the computer.

24. The script will take a minute or two to run. After PC1 restarts, sign in to the contoso.com domain using the **Switch User** option, with the **user1** account you created in step 11 of this section.
    >The settings that will be used to migrate user data specifically select only accounts that belong to the CONTOSO domain. If you wish to test migration of user data and settings with an account other than the user1 account, you must copy this account's profile to the user1 profile.
25. Minimize the PC1 window but do not turn it off while the second Windows Server 2012 R2 VM (SRV1) is configured. This verifies that the Hyper-V host has enough resources to run all VMs simultaneously. Next, SRV1 will be started, joined to the contoso.com domain, and configured with RRAS and DNS services. 
26. On the Hyper-V host computer, at an elevated Windows PowerShell prompt, type the following commands:

    <pre style="overflow-y: visible">
    Start-VM SRV1
    vmconnect localhost SRV1
    </pre>

27. Accept the default settings, read license terms and accept them, provide an administrator password of **pass@word1**, and click **Finish**. When you are prompted about finding PCs, devices, and content on the network, click **Yes**.
28. Sign in to SRV1 using the local administrator account. In the same way that was done on DC1, sign out of SRV1 and then sign in again to enable enhanced session mode. This will enable you to copy and paste Windows PowerShell commands from the Hyper-V host to the VM.
29. Open an elevated Windows PowerShell prompt on SRV1 and type the following commands:

    <pre style="overflow-y: visible">
    Rename-Computer SRV1
    New-NetIPAddress –InterfaceAlias Ethernet –IPAddress 192.168.0.2 –PrefixLength 24
    Set-DnsClientServerAddress -InterfaceAlias Ethernet -ServerAddresses 192.168.0.1,192.168.0.2
    Restart-Computer
    </pre>

30. Wait for the computer to restart, then type or paste the following commands at an elevated Windows PowerShell prompt:

    <pre style="overflow-y: visible">  
    $pass = "pass@word1" | ConvertTo-SecureString -AsPlainText -Force
    $user = "contoso\administrator"
    $cred = New-Object System.Management.Automation.PSCredential($user,$pass)
    Add-Computer -DomainName contoso.com -Credential $cred
    Restart-Computer
    </pre>

31. Sign in to the contoso.com domain on SRV1 using the domain administrator account (enter contoso\administrator as the user), open an elevated Windows PowerShell prompt, and type the following commands:

    <pre style="overflow-y: visible">
    Install-WindowsFeature -Name DNS -IncludeManagementTools
    Install-WindowsFeature -Name WDS -IncludeManagementTools
    Install-WindowsFeature -Name Routing -IncludeManagementTools
    </pre>

32. Before configuring the routing service that was just installed, verify that network interfaces were added to SRV1 in the right order, resulting in an interface alias of "Ethernet" for the private interface, and an interface alias of "Ethernet 2" for the public interface. Also verify that the external interface has a valid external DHCP IP address lease.

    To view a list of interfaces, associated interface aliases, and IP addresses on SRV1, type the following Windows PowerShell command. Example output of the command is also shown below:

    <pre style="overflow-y: visible">
    Get-NetAdapter | ? status -eq ‘up’ | Get-NetIPAddress -AddressFamily IPv4 | ft IPAddress, InterfaceAlias

    IPAddress                                                                  InterfaceAlias
    ---------                                                                  --------------
    10.137.130.118                                                             Ethernet 2
    192.168.0.2                                                                Ethernet
    </pre>

    In this example, the poc-internal network interface at 192.168.0.2 is associated with the "Ethernet" interface and the Internet-facing poc-external interface is associated with the "Ethernet 2" interface. If your interfaces are different, you must adjust the commands provided in the next step appropriately to configure routing services.

33. To configure SRV1 with routing capability for the PoC network, type or paste the following commands at an elevated Windows PowerShell prompt on SRV1:

    <pre style="overflow-y: visible">
    Install-RemoteAccess -VpnType Vpn
    cmd /c netsh routing ip nat install
    cmd /c netsh routing ip nat add interface name="Ethernet 2" mode=FULL 
    cmd /c netsh routing ip nat add interface name="Ethernet" mode=PRIVATE
    cmd /c netsh routing ip nat add interface name="Internal" mode=PRIVATE
    </pre>

34. The DNS service on SRV1 also needs to resolve hosts in the contoso.com domain. This can be accomplished with a conditional forwarder. Open an elevated Windows PowerShell prompt on SRV1 and type the following command:

    <pre style="overflow-y: visible">
    Add-DnsServerConditionalForwarderZone -Name contoso.com -MasterServers 192.168.0.1
    </pre>

35. In most cases, this completes configuration of the PoC network. However, if your corporate network has a firewall that filters queries from local DNS servers, you will also need to configure a server-level DNS forwarder on SRV1 to resolve Internet names. To test whether or not DNS is working without this forwarder, try to reach a name on the Internet from DC1 or PC1, which are only using DNS services on the PoC network. You can test DNS with the ping command, for example:

    <pre style="overflow-y: visible">
    ping www.microsoft.com
    </pre>

    If you see "Ping request could not find host www.microsoft.com" on PC1 and DC1, but not on SRV1, then you will need to configure a server-level DNS forwarder on SRV1. To do this, open an elevated Windows PowerShell prompt on SRV1 and type the following command. 
    
    **Note**: This command also assumes that "Ethernet 2" is the external-facing network adapter on SRV1. If the external adapter has a different name, replace "Ethernet 2" in the command below with that name:

    <pre style="overflow-y: visible">
    Add-DnsServerForwarder -IPAddress (Get-DnsClientServerAddress -InterfaceAlias "Ethernet 2").ServerAddresses
    </pre>

36. If DNS and routing are both working correctly, you will see the following on DC1 and PC1:

    <pre style="overflow-y: visible">
    PS C:\> ping www.microsoft.com

    Pinging e2847.dspb.akamaiedge.net [23.222.146.170] with 32 bytes of data:
    Reply from 23.222.146.170: bytes=32 time=3ms TTL=51
    Reply from 23.222.146.170: bytes=32 time=2ms TTL=51
    Reply from 23.222.146.170: bytes=32 time=2ms TTL=51
    Reply from 23.222.146.170: bytes=32 time=1ms TTL=51

    Ping statistics for 23.222.146.170:
        Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
    Approximate round trip times in milli-seconds:
        Minimum = 1ms, Maximum = 3ms, Average = 2ms
    </pre>

37. Verify that all three VMs can reach each other, and the Internet. See [Appendix B: Verify the configuration](#appendix-b-verify-the-configuration) for more information. 
38. Lastly, because the client computer has different hardware after copying it to a VM, its Windows activation will be invalidated and you might receive a message that you must activate Windows in 3 days.  To extend this period to 30 days, type the following commands at an elevated Windows PowerShell prompt on PC1:

    <pre style="overflow-y: visible">
    slmgr -rearm
    Restart-Computer
    </pre>

## Appendix A: Verify the configuration

Use the following procedures to verify that the PoC environment is configured properly and working as expected.

1. On DC1, open an elevated Windows PowerShell prompt and type the following commands:

    <pre style="overflow-y: visible">
    Get-Service NTDS,DNS,DHCP
    DCDiag -a
    Get-DnsServerResourceRecord -ZoneName contoso.com -RRType A
    Get-DnsServerForwarder
    Resolve-DnsName -Server dc1.contoso.com -Name www.microsoft.com
    Get-DhcpServerInDC
    Get-DhcpServerv4Statistics
    ipconfig /all
    </pre>

    **Get-Service** displays a status of "Running" for all three services.<BR>
    **DCDiag** displays "passed test" for all tests.<BR>
    **Get-DnsServerResourceRecord** displays the correct DNS address records for DC1, SRV1, and the computername of PC1. Additional address records for the zone apex (@), DomainDnsZones, and ForestDnsZones will also be registered.<BR>
    **Get-DnsServerForwarder** displays a single forwarder of 192.168.0.2.<BR>
    **Resolve-DnsName** displays public IP address results for www.microsoft.com.<BR>
    **Get-DhcpServerInDC** displays 192.168.0.1, dc1.contoso.com.<BR>
    **Get-DhcpServerv4Statistics** displays 1 scope with 2 addresses in use (these belong to PC1 and the Hyper-V host).<BR>
    **ipconfig** displays a primary DNS suffix and suffix search list of contoso.com, IP address of 192.168.0.1, subnet mask of 255.255.255.0, default gateway of 192.168.0.2, and DNS server addresses of 192.168.0.1 and 192.168.0.2. 

2. On SRV1, open an elevated Windows PowerShell prompt and type the following commands:

    <pre style="overflow-y: visible">
    Get-Service DNS,RemoteAccess
    Get-DnsServerForwarder
    Resolve-DnsName -Server dc1.contoso.com -Name www.microsoft.com
    ipconfig /all
    netsh int ipv4 show address
    </pre>

    **Get-Service** displays a status of "Running" for both services.<BR>
    **Get-DnsServerForwarder** either displays no forwarders, or displays a list of forwarders you are required to use so that SRV1 can resolve Internet names.<BR>
    **Resolve-DnsName** displays public IP address results for www.microsoft.com.<BR>
    **ipconfig** displays a primary DNS suffix of contoso.com. The suffix search list contains contoso.com and your corporate domain. Two ethernet adapters are shown: Ethernet adapter "Ethernet" has an IP addresses of 192.168.0.2, subnet mask of 255.255.255.0, no default gateway, and DNS server addresses of 192.168.0.1 and 192.168.0.2. Ethernet adapter "Ethernet 2" has an IP address, subnet mask, and default gateway configured by DHCP on your corporate network.<BR>
    **netsh** displays three interfaces on the computer: interface "Ethernet 2" with DHCP enabled = Yes and IP address assigned by your corporate network, interface "Ethernet" with DHCP enabled = No and IP address of 192.168.0.2, and interface "Loopback Pseudo-Interface 1" with IP address of 127.0.0.1.

3. On PC1, open an elevated Windows PowerShell prompt and type the following commands:

    <pre style="overflow-y: visible">
    whoami
    hostname
    nslookup www.microsoft.com
    ping -n 1 dc1.contoso.com
    tracert www.microsoft.com
    </pre>

    **whoami** displays the current user context, for example in an elevated Windows PowerShell prompt, contoso\administrator is displayed.<BR>
    **hostname** displays the name of the local computer, for example W7PC-001.<BR>
    **nslookup** displays the DNS server used for the query, and the results of the query. For example, server dc1.contoso.com, address 192.168.0.1, Name e2847.dspb.akamaiedge.net.<BR>
    **ping** displays if the source can resolve the target name, and whether or not the target responds to ICMP. If it cannot be resolved, "..could not find host" will be diplayed and if the target is found and also responds to ICMP, you will see "Reply from" and the IP address of the target.<BR>
    **tracert** displays the path to reach the destination, for example srv1.contoso.com [192.168.0.2] followed by a list of hosts and IP addresses corresponding to subsequent routing nodes between the source and the destination.

## Appendix B: Configuring Hyper-V on Windows Server 2008 R2

If your Hyper-V host is running Windows Server 2008 R2, several of the steps in this guide will not work because they use the Hyper-V Module for Windows PowerShell, which is not available on Windows Server 2008 R2. The performance and features of the Hyper-V role are also much improved on later operating systems. 

This section is a placeholder for instructions to configure Hyper-V on Windows Server 2008 R2. Full documentation of these procedures is currently out of scope for this guide, due to significant differences in the Hyper-V role in Windows Server 2008 R2. For more information about the Hyper-V Manager interface in Windows Server 2008 R2, see [Hyper-V](https://technet.microsoft.com/library/cc730764.aspx) in the Windows Server TechNet Library.

To install Hyper-V on Windows Server 2008 R2, you can use the Add-WindowsFeature cmdlet:

<pre style="overflow-y: visible">
Add-WindowsFeature -Name Hyper-V
</pre>

An example that uses Hyper-V WMI to create a virtual switch on Windows Server 2008 R2 is provided below. 

<pre style="overflow-y: visible">
$SwitchFriendlyName = "poc-internal"
$InternalEthernetPortFriendlyName = $SwitchFriendlyName
$InternalSwitchPortFriendlyName = "poc"
$SwitchName = [guid]::NewGuid().ToString()
$InternalSwitchPortName = [guid]::NewGuid().ToString()
$InternalEthernetPortName = [guid]::NewGuid().ToString()
$NumLearnableAddresses = 1024
$ScopeOfResidence = ""
$VirtualSwitchManagementService = gwmi Msvm_VirtualSwitchManagementService -namespace "root\virtualization"
$Result = $VirtualSwitchManagementService.CreateSwitch($SwitchName, $SwitchFriendlyName, $NumLearnableAddresses, $ScopeOfResidence) 
$Switch = [WMI]$Result.CreatedVirtualSwitch 
$Result = $VirtualSwitchManagementService.CreateSwitchPort($Switch, $InternalSwitchPortName, $InternalSwitchPortFriendlyName, $ScopeOfResidence)
$InternalSwitchPort = [WMI]$Result.CreatedSwitchPort 
$Result = $VirtualSwitchManagementService.CreateInternalEthernetPortDynamicMac($InternalEthernetPortName, $InternalEthernetPortFriendlyName)
$InternalEthernetPort = [WMI]$Result.CreatedInternalEthernetPort
$query = "Associators of {$InternalEthernetPort} Where ResultClass=CIM_LanEndpoint"
$InternalLanEndPoint = gwmi -namespace root\virtualization -query $query
$Result = $VirtualSwitchManagementService.ConnectSwitchPort($InternalSwitchPort, $InternalLanEndPoint)
$filter = "SettingID='" + $InternalEthernetPort.DeviceID +"'"
$NetworkAdapterConfiguration = gwmi Win32_NetworkAdapterConfiguration -filter $filter
</pre>

## Appendix C: Convert GPT to MBR

This appendix provides a procedure to convert physical disk that is using the GPT partition style to a VHD that can be used to create a generation 1 VM in Hyper-V. Because generation 1 VMs require an MBR partition style, the physical disk is saved and then converted.

>Conversion of a disk directly from GPT to MBR without data loss is not possible without the use of external, specialized applications and tools.  However, it is possible to create an image of the GPT disk and then restore this image to an MBR disk using standard tools. At a high level, this can be done by obtaining an image of the source drive, creating a blank MBR-formatted disk, applying the source drive image to the MBR disk, and then configuring the MBR disk to boot the applied image. This procedure is described below:

1. Download the [Disk2vhd utility](https://technet.microsoft.com/en-us/library/ee656415.aspx), extract the .zip file and copy **disk2vhd.exe** to a flash drive or other location that is accessible from the computer you wish to convert.

    >You might experience timeouts if you attempt to run Disk2vhd from a network share, or specify a network share for the destination. To avoid timeouts, use local, portable media such as a USB drive.

2. On the computer you wish to convert, double-click the disk2vhd utility to start the graphical user interface. 
3. Select the checkbox next to the **C:\** volume. On a computer using the GPT partition style, the system volume will not be displayed in the Disk2VHD tool.  
4. Specify a location to save the resulting VHDX file (F:\VHD\w7-convert.vhdx in the following example) and click **Create**. See the following example:

    ![disk2vhd](images/disk2vhd-convert.png)

5. Click **Create** to start creating a VHDX file.

    >Disk2vhd can save VHDs to local hard drives, even if they are the same as the volumes being converted. Performance is better however when the VHD is saved on a disk different than those being converted, such as a flash drive.


--here is where I need to insert the procedure to convert this to a bootable disk, given a vhdx file.

How shall I do this?



6. When the Disk2vhd utility has completed converting the source computer to a VHD, copy the VHDX file (w7.vhdx) to your Hyper-V host in the C:\VHD directory. There should now be four files in this directory:

    <pre style="overflow-y: visible">
    C:\vhd>dir /B
    2012R2-poc-1.vhd
    2012R2-poc-2.vhd
    w10-enterprise.iso
    w7.VHDX
    </pre>


First I capture a VSS image of the GPT disk using disk2vhd

Then I create a new VHD using the command below, attach both, robocopy from one to the other, detach the original and load the second.




1. Create VHD (function thanks to Senthil Rajaram).

function CreateVHD ($VHDPath, $Size)
{
  $drive = (New-VHD -path $vhdpath -SizeBytes $size -Dynamic   | `
              Mount-VHD -Passthru |  `
              get-disk -number {$_.DiskNumber} | `
              Initialize-Disk -PartitionStyle MBR -PassThru | `
              New-Partition -Size 100MB -AssignDriveLetter:$False -MbrType FAT32 -IsActive | `
              Format-Volume -Confirm:$false -FileSystem FAT32 -force | `
              get-partition | `
              New-Partition -UseMaximumSize -AssignDriveLetter:$False -MbrType IFS | `
              Format-Volume -Confirm:$false -FileSystem NTFS -force | `
              get-partition | `
              Add-PartitionAccessPath -AssignDriveLetter -PassThru | `
              get-volume).DriveLetter 
    Dismount-VHD $VHDPath
}

Be sure to use a size sufficient for the backup (i.e. 100GB) and specify a path to a USB drive.  For Windows 7 to mount the drive it must be .vhd not .vhdx.

CreateVHD F:\pc1.vhd 100GB



2. Insert USB into client and mount using disk management. It is possible also using diskpart but easier with disk manager. Note the drive letter of the mount. Assuming G:

wbadmin start backup -backupTarget:g: -include:c: -quiet

- this takes a few minutes then you see:

Creating a backup of volume C(C:), copied (98%).
Creating a backup of volume C(C:), copied (98%).
Creating a backup of volume C(C:), copied (99%).
Creating a backup of volume C(C:), copied (99%).
Creating a backup of volume C(C:), copied (100%).
The backup operation successfully completed.
Summary of the backup operation:
------------------

The backup of volume C(C:) successfully completed.

C:\>

Note: Alternatively you can back up the client to a network share, then access the network share from system restore. 

3. Detatch the VHD, remove the USB, insert USB in Hyper-V host.

4. Create new VM with blank VHD, add the usb vhd as secondary. remove it later...no need to keep the image on the same disk.



### Appendix D: Terminology used in this guide

See the following table for a list of terms used in this guide.

<div style='font-size:9.0pt'>

<TABLE border=1 cellspacing=0 cellpadding=0>
<TR><TD BGCOLOR="#a0e4fa"><B>Term</B><TD BGCOLOR="#a0e4fa"><B>Definition</B>
<TR><TD>GPT<TD>GUID partition table (GPT) is an updated hard-disk formatting scheme that enables the use of newer hardware. GPT is one of the partition formats that can be chosen when first initializing a hard drive, prior to creating and formatting partitions.
<TR><TD>Hyper-V<TD>Hyper-V is a server role introduced with Windows Server 2008 that lets you create a virtualized computing environment. Hyper-V can also be installed as a Windows feature on Windows client operating systems, starting with Windows 8.
<TR><TD>Hyper-V host<TD>The computer where Hyper-V is installed.
<TR><TD>Hyper-V Manager<TD>The user-interface console used to view and configure Hyper-V.
<TR><TD>MBR<TD>Master Boot Record (MBR) is a legacy hard-disk formatting scheme that limits support for newer hardware. MBR is one of the partition formats that can be chosen when first initializing a hard drive, prior to creating and formatting partitions. MBR is in the process of being replaced by the GPT partition format.
<TR><TD>Proof of concept (PoC)<TD>Confirmation that a process or idea works as intended. A PoC is carried out in a test environment to learn about and verify a process. 
<TR><TD>Shadow copy<TD>A copy or "snapshot" of a computer at a point in time, created by the Volume Shadow Copy Service (VSS), typically for backup purposes.
<TR><TD>Virtual machine (VM)<TD>A VM is a virtual computer with its own operating system, running on the Hyper-V host.
<TR><TD>Virtual switch<TD>A virtual network connection used to connect VMs to each other and to physical network adapters on the Hyper-V host.
<TR><TD>VM snapshot<TD>A point in time image of a VM that includes its disk, memory and device state. It can be used to return a virtual machine to a former state corresponding to the time the snapshot was taken.
</TABLE>

</div>

### Appendix E: Create PC1 VM

Here is where I provide a procedure to create a blank client VM.

## Related Topics


[Windows 10 deployment scenarios](windows-10-deployment-scenarios.md)
 

 





