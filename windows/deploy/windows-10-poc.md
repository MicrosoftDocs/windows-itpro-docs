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

## In this guide

This guide provides step-by-step instructions for configuring a proof of concept (PoC) environment where you can deploy Windows 10. The PoC enviroment is configured using Hyper-V and a minimum amount of resources. Detailed steps are provided for setting up the test lab, and for deploying Windows 10 under common scenarios with current deployment tools. 

The following topics are available in this guide:

<table border="0" cellpadding="2">
    <tr>
        <td BGCOLOR="#a0e4fa">Topic</td>
        <td BGCOLOR="#a0e4fa">Description</td>
    <tr>
        <td>[Overview of procedures](#overview-of-procedures)</td>
        <td>A list of procedures provided in this guide.</td>
    </tr>
    <tr>
        <td>[Hardware and software requirements](#hardware-and-software-requirements)</td>
        <td>Prerequisites to complete this guide.</td>
    </tr>
    <tr>
        <td>[Lab setup](#lab-setup)</td>
        <td>A diagram of the PoC environment.</td>
    </tr>
    <tr>
        <td>[Configure the PoC environment](#configure-the-poc-environment)</td>
        <td>Step by step instructions to configure the PoC environment.</td>
    </tr>
    </tr>
     <tr>
        <td>[Step by step: Deploy Windows 10](#windows-10-poc-guides)</td>
        <td>Detailed, step by step instructions to demonstrate a Windows 10 deployment.</td>
    </tr>
    <tr>
        <td>[Appendix A: Configuring Hyper-V settings on 2008 R2](#appendix-a-configuring-hyper-v-on-windows-server-2008-r2)</td>
        <td>Instructions for configuring a Hyper-V host on Windows Server 2008 R2.</td>
    </tr>    
</table>

## Overview of procedures

The following procedures are documented in this guide:

1. Configure an internal network on a Hyper-V host computer.
2. Download a Windows Server evaluation VHD for use in the lab.
3. Convert a physical computer to VHD using the Disk2vhd utility.
4. Download a Windows 10 Enterprise evaluation .iso file.
5. Configure Windows Server virtual machines.
6. Download and install tools.
7. Upgrade the client VM to Windows 10 Enterprise.

## Hardware and software requirements

One computer that meets the hardware and software specifications below is required to complete the guide; A second computer is recommended to validate the upgrade process. 

The second computer is used to clone and mirror a client computer (computer 2) from your corporate network to the POC environment. Alternatively, you can use an arbitrary VM to represent this computer, therefore this computer is not required to complete the lab.

<table border="1" cellpadding="2">
    <tr>
        <td></td>
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
        <td>Windows 8/8.1/10 or Windows Server 2012/2012 R2/2016<B>*</B></td>
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
        <td>Any</td>
    </tr>
    <tr>
        <td BGCOLOR="#a0e4fa">RAM</td>
        <td>8 GB RAM (16 GB recommended)</td>
        <td>Any</td>
    </tr>
    <tr>
        <td BGCOLOR="#a0e4fa">Disk</td>
        <td>50 GB available hard disk space (100 GB recommended)</td>
        <td>Any</td>
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

>Retaining applications and settings during the upgrade process requires that architecture (32 or 64-bit) is the same before and after the upgrade.

<B>*</B>The Hyper-V server role can also be installed on a computer running Windows Server 2008 R2. However, the Windows PowerShell module for Hyper-V is not available on Windows Server 2008 R2, therefore you cannot use many of the steps provided in this guide to configure Hyper-V. The performance and features of the Hyper-V role are also much improved on later operating systems. If your host must be running Windows Server 2008 R2, steps to configure Hyper-V using WMI or the Hyper-V manager console are provided separately in [Appendix A: Configuring Hyper-V settings on 2008 R2](#appendix-a-configuring-hyper-v-on-windows-server-2008-r2).

The Hyper-V role cannot be installed on Windows 7 or earlier versions of Windows.

## Lab setup

- The Hyper-V host computer (computer 1) is configured to host four VMs on a private, proof of concept network. 
    - Two VMs are running Windows Server 2012 R2 with required network services and tools installed.
    - Two VMs are client systems: One VM is intended to mirror a host on your corporate network (computer 2) and one VM is running Windows 10 Enterprise to demonstrate the hardware replacement scenario.
- Links are provided to download trial versions of Windows Server 2012, Windows 10 Enterprise, and all deployment tools necessary to complete the lab.

The lab architecture is summarized in the following diagram:

![PoC](images/poc.png)

**Note**:
>If you have an existing Hyper-V host, you can use this host if desired and skip the Hyper-V installation section in this guide. If your Hyper-V host is running Windows Server 2008 R2, you must enable PowerShell functionality to complete the steps in this guide. 

>The two Windows Server VMs can be combined into a single VM to conserve RAM and disk space if required. However, instructions in this guide assume two server systems are used. Using two servers enables Active Directory Domain Services and DHCP to be installed on a server that is not directly connected to the corporate network. This mitigates the risk of clients on the corporate network receiving DHCP leases from the PoC network (i.e. "rogue" DHCP), and limits NETBIOS service broadcasts to the corporate network.

## Configure the PoC environment

### Procedures in this section

[Verify support and install Hyper-V](#verify-support-and-install-hyper-v)<BR>
[Download VHD and ISO files](#download-vhd-and-iso-files)<BR>
[Configure Hyper-V](#configure-hyper-v)<BR>
[Convert PC to VHD](#convert-pc-to-vhd)<BR>
[Configure VHDs](#configure-vhds)<BR>
[Verify the configuration](#verify-the-configuration)

### Verify support and install Hyper-V

1. Verify that the computer supports Hyper-V.

    Starting with Windows 8, the host computer’s microprocessor must support second level address translation (SLAT) to install Hyper-V. See [Hyper-V: List of SLAT-Capable CPUs for Hosts](http://social.technet.microsoft.com/wiki/contents/articles/1401.hyper-v-list-of-slat-capable-cpus-for-hosts.aspx) for more information. To verify your computer supports SLAT, open an administrator command prompt,  type systeminfo, press ENTER, and review the section displayed at the bottom of the output, next to Hyper-V Requirements. 
    
    See the following example:
    
    ```
    C:\>systeminfo
    ...
    Hyper-V Requirements:      VM Monitor Mode Extensions: Yes
                               Virtualization Enabled In Firmware: Yes
                               Second Level Address Translation: Yes
                               Data Execution Prevention Available: Yes
    ```   
    In this example, the computer supports SLAT and Hyper-V. 
    
    If one or more requirements are evaluated as "No" then the computer does not support installing Hyper-V.  However, if only the virtualization setting is incompatible, you might be able to enable virtualization in the BIOS and change the "Virtualization Enabled In Firmware" setting from "No" to "Yes." The location of this setting will depend on the manufacturer and BIOS version, but is typically found associated with the BIOS security settings.

    You can also identify Hyper-V support using [tools](https://blogs.msdn.microsoft.com/taylorb/2008/06/19/hyper-v-will-my-computer-run-hyper-v-detecting-intel-vt-and-amd-v/) provided by the processor manufacturer, the [msinfo32](https://technet.microsoft.com/en-us/library/cc731397.aspx) tool, or you can download the [coreinfo](http://technet.microsoft.com/en-us/sysinternals/cc835722) utility and run it, as shown in the following example:

    ```
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
    ```   

    Note: A 64-bit operating system is requried to run Hyper-V.

2. Enable Hyper-V.

    The Hyper-V feature is not installed by default. To install it, open an elevated Windows PowerShell window and type the following command:

    ```
    Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V –All
    ```
    When you are prompted to restart the computer, choose Yes. The computer might restart more than once.
    
    You can also install Hyper-V using the Control Panel in Windows under **Turn Windows features on or off** (client OS), or using Server Manager's **Add Roles and Features Wizard** (server OS), as shown below:
    
    ![hyper-v feature](images/hyper-v-feature.png)

    ![hyper-v](images/svr_mgr2.png)

### Download VHD and ISO files

1. Create a directory on your Hyper-V host named C:\VHD and download a single [Windows Server 2012 R2 VHD](https://www.microsoft.com/en-us/evalcenter/evaluate-windows-server-2012-r2) from the TechNet Evaluation Center to the C:\VHD directory. 

    **Important**: This guide assumes that VHDs are stored in the **C:\VHD** directory on the Hyper-V host. If you use a different directory to store VHDs, you must adjust steps in this guide appropriately.

    After completing registration you will be able to download the 7.47 GB Windows Server 2012 R2 evaluation VHD.

    ![VHD](images/download_vhd.png)

2. Rename the VHD file that you downloaded to **2012R2-poc-1.vhd**. This is not required, but is done to make the filename simpler to recognize.
3. Copy the VHD to a second file also in the C:\VHD directory and name this VHD **2012R2-poc-2.vhd**.
4. Download the [Windows 10 Enterprise ISO](https://www.microsoft.com/en-us/evalcenter/evaluate-windows-10-enterprise) from the TechNet Evaluation Center to the C:\VHD directory on your Hyper-V host. During registration, you must specify the type, version, and language of installation media to download. 
5. Rename the ISO file that you downloaded to **w10-enterprise.iso**. Again, this is done so that the filename is simpler to type and recognize.

    In this example, a Windows 10 Enterprise, 64 bit, English VHD is chosen. You can choose a different version if desired. Note that Windows 10 in-place upgrade is only possible if the source operating system and installation media are both 32-bit or both 64-bit, so you should download the file version that corresponds to the version of your source computer for upgrade testing. After completing registration you will be able to download the 3.63 GB Windows 10 Enterprise evaluation ISO. The following commands and output display the procedures described in this section:

    ```
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
    ```

### Convert PC to VHD

1. Download the [Disk2vhd utility](https://technet.microsoft.com/en-us/library/ee656415.aspx), extract the .zip file and copy disk2vhd.exe to a flash drive or other location that is accessible from the computer you wish to convert.
    >Note: You might experience timeouts if you attempt to run Disk2vhd from a network share, or specify a network share for the destination. To avoid timeouts, use local, portable media.
2. On the computer you wish to convert, double-click the disk2vhd utility to start the graphical user interface. 
3. Select checkboxes next to the volumes you wish to copy and specify a location to save the resulting VHD or VHDX file. If your Hyper-V host is running Windows Server 2008 R2 you must choose VHD, otherwise choose VHDX.
4. Click **Create** to start creating a VHDX file. See the following example: 

    ![disk2vhd](images/convert.png)

    In this example, the source computer has two hard drives, C: and E: and a system reserved partition. The VHDX file (w7.vhdx) is being saved to a flash drive (F:) in the F:\VHD directory.<BR> 
    **Note**: Disk2vhd can also save VHDs to local hard drives, even if they are the same as the volumes being converted. Performance is better however when the VHD is saved on a disk different than those being converted. 

    >If you have experience with Microsoft Virtual Machine Converter and prefer to use this tool instead of Disk2vhd, see [Appendix B: Microsoft Virtual Machine Converter](#appendix-b-microsoft-virtual-machine-converter).

5. When the Disk2vhd utility has completed converting the source computer to a VHD, copy the VHDX file (w7.vhdx) to your Hyper-V host in the C:\VHD directory. There should now be four files in this directory:

    ```
    C:\vhd>dir /B
    2012R2-poc-1.vhd
    2012R2-poc-2.vhd
    w10-enterprise.iso
    w7.VHDX
    ```

### Configure Hyper-V

Note: The Hyper-V Windows PowerShell module is not available on Windows Server 2008 R2. For more information, see [Appendix A: Configuring Hyper-V settings on 2008 R2](#appendix-a-configuring-hyper-v-on-windows-server-2008-r2).  

1. Open an elevated Windows PowerShell window and type the following command to create a virtual switch named "poc-internal":

    ```
    New-VMSwitch -Name poc-internal -SwitchType Internal -Notes "PoC Network"
    ```

2. At the elevated Windows PowerShell prompt, type the following command to determine the megabytes of RAM that are currently available on the Hyper-V host:

    ```
    (Get-Counter -Counter @("\Memory\Available MBytes")).countersamples.cookedvalue
    ```
    **Note**: On a Hyper-V host computer with 16 GB of RAM installed, 12,000 MB of RAM or greater should be available if the computer is not also running other applications. If the computer has less than 12,000 MB of available RAM, try closing applications to free up more memory.

3. Determine the available memory for VMs by dividing the available RAM by 4.  For example:

    ```
    (Get-Counter -Counter @("\Memory\Available MBytes")).countersamples.cookedvalue/4
    2775.5
    ```
    In this example, VMs must use a maximum of 2700 MB of RAM so that you can run four VMs simultaneously. 

4. At the elevated Windows PowerShell prompt, type the following command to create two new VMs. **Important**: Replace the value of 2700MB with the RAM value that you calculated in the previous step:

    ```
    $maxRAM = 2700MB
    New-VM –Name "2012R2-DC1" –VHDPath c:\vhd\2012R2-poc-1.vhd -SwitchName poc-internal
    Set-VMMemory -VMName "2012R2-DC1" -DynamicMemoryEnabled $true -MinimumBytes 512MB -MaximumBytes $maxRAM -Buffer 20
    New-VM –Name "2012R2-SRV1" –VHDPath c:\vhd\2012R2-poc-2.vhd -SwitchName poc-internal
    Set-VMMemory -VMName "2012R2-SRV1" -DynamicMemoryEnabled $true -MinimumBytes 512MB -MaximumBytes $maxRAM -Buffer 20
    ```
    
### Configure Windows Server 2012 R2 VHDs

1. Open an elevated Windows PowerShell window on the Hyper-V host and start the first VM by typing the following command:

    ```
    Start-VM 2012R2-DC1
    ```
2. Wait for the VM to complete starting up, and then connect to it either using the Hyper-V Manager console (virtmgmt.msc) or using an elevated command prompt:
    ```
    vmconnect localhost 2012R2-DC1
    ```
3. If the VM is configured as described in this guide, it will currently be assigned an APIPA address, have a randomly generated hostname, and a single network adapter named "Ethernet." At an elevated Windows PowerShell prompt on the VM, type the following commands to provide a new hostname and configure a static IP address and gateway:

    ```
    Rename-Computer DC1
    New-NetIPAddress –InterfaceAlias Ethernet –IPAddress 192.168.0.1 –PrefixLength 24 -DefaultGateway 192.168.0.2
    ```
4. Install the Active Directory Domain Services role by typing the following command at an elevated Windows PowerShell prompt:

    ```
    Install-WindowsFeature -Name AD-Domain-Services -IncludeAllSubFeature -IncludeManagementTools
    ```

5. Before promoting the server to a Domain Controller, you must reboot so that the name change in step 3 above takes effect:

    ```
    shutdown /r
    ```

5. When the VM has rebooted, sign in again and open an elevated Windows PowerShell prompt. Now you can promote the server to be a domain controller. The directory services restore mode password must be entered as a secure string:

    ```
    $pass = "pass@word1" | ConvertTo-SecureString -AsPlainText -Force
    Install-ADDSForest -DomainName contoso.com -InstallDns -SafeModeAdministratorPassword $pass -Force
    ```
    Ignore any warnings that are displayed. The computer will automatically reboot upon completion.
6. When the reboot has completed, sign in again and open an elevated Windows PowerShell prompt so that you can add the DHCP Server role:

    ```

    ```

## Appendix A: Configuring Hyper-V on Windows Server 2008 R2

If your Hyper-V host is running Windows Server 2008 R2, you can use the Hyper-V manager interface to configure Hyper-V, or you can use Hyper-V WMI. Some instructions to configure Hyper-V using WMI are also included in this section for convenience. 

For more information about the Hyper-V Manager interface in Windows Server 2008 R2, see [Hyper-V](https://technet.microsoft.com/library/cc730764.aspx) in the Windows Server TechNet Library.

To install Hyper-V on Windows Server 2008 R2, use the Add-WindowsFeature cmdlet:

```
Add-WindowsFeature -Name Hyper-V
```
Use the following Windows PowerShell commands to create a virtual switch on Windows Server 2008 R2:

```
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
```

Use the following Windows PowerShell commands to add VMs on Windows Server 2008 R2:

```
command here
```

## Appendix B: Microsoft Virtual Machine Converter

You can also use [Microsoft Virtual Machine Converter](https://www.microsoft.com/en-us/download/details.aspx?id=42497) (MVMC) to create VHDs from a physical computer. The MVMC utility has enhanced functionality compared to the Disk2vhd utility in that it can be run from any network location, enables you to specify both a remote source computer and remote destination Hyper-V host, and automatically configures and installs the VM on the Hyper-V host.  However, MVMC requires that the destination Hyper-V host be running the BITS compact server service, which is only available on Windows Server operating systems.  Therefore, you cannot use MVMC if Hyper-V is running on Windows 8 or Windows 10. If you choose to use the MVMC utility instead of disk2vhd, complete the steps in the [Configure Hyper-V](#configure-hyper-v) section first so that you can specify a virtual switch and allocate RAM appropriately to the destination VM when asked to specify these parameters in the MVMC utility.

## Windows 10 PoC guides

- [Step by step: Deploy Windows 10 PoC with System Center Configuration Manager](windows-10-poc-sccm.md)
- [Step by step: Deploy Windows 10 PoC with the Microsoft Deployment Toolkit](windows-10-poc-mdt.md)

## Related Topics

[Windows 10 deployment scenarios](windows-10-deployment-scenarios.md)
 

 





