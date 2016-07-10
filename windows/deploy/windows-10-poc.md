---
title: Deploy Windows 10 in a test lab (Windows 10)
description: Concepts and procedures for deploying Windows 10 in a proof of concept lab environment.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
---

# Step by step guide: Demonstrate Windows 10 deployment in a test lab

**Applies to**

-   Windows 10

## In this guide

This guide provides instructions for configuring a test lab to be used as a proof of concept (PoC) environment where you can deploy Windows 10. The PoC enviroment is configured using Hyper-V and a minimum amount of resources. Additional guides leverage the PoC environment and provide detailed steps for deploying Windows 10 under common scenarios with current deployment tools. The following topics are available in this guide:

<table border="0" cellpadding="2">
    <tr>
        <td BGCOLOR="#a0e4fa">Topic</td>
        <td BGCOLOR="#a0e4fa">Description</td>
    <tr>
        <td>[Hardware and software requirements](#hardware-and-software-requirements)</td>
        <td>Prerequisites to configure the PoC environment.</td>
    </tr>
    <tr>
        <td>[Lab setup](#lab-setup)</td>
        <td>A summary of the PoC environment.</td>
    </tr>
    <tr>
        <td>[Configure the PoC environment](#configure-the-poc-environment)</td>
        <td>Step by step instructions to configure the PoC environment.</td>
    </tr>
    </tr>
     <tr>
        <td>[Step by step: Deploy Windows 10](#windows-10-poc-guides)</td>
        <td>Child topics that provide step by step instructions to deploy Windows 10 using the PoC environment.</td>
    </tr>
</table>

## Hardware and software requirements

Two computers are required to complete this guide: 

<table border="1" cellpadding="2">
    <tr>
        <td></td>
        <td BGCOLOR="#a0e4fa">**Computer 1**</td>
        <td BGCOLOR="#a0e4fa">**Computer 2**</td>
    </tr>
    <tr>
        <td BGCOLOR="#a0e4fa">Role</td>
        <td>Hyper-V host</td>
        <td>Client</td>
    </tr>
    <tr>
        <td BGCOLOR="#a0e4fa">Description</td>
        <td>This computer will run Hyper-V, the Hyper-V management tools, and the Hyper-V Windows PowerShell module.</td>
        <td>This computer is a test system on your corporate network that will be converted to a VHD.</td>
    </tr>
    <tr>
        <td BGCOLOR="#a0e4fa">OS</td>
        <td>Windows 8/8.1/10 or Windows Server 2012/2012 R2/2016</td>
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
        <td>Any*</td>
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

>*Retaining applications and settings during the upgrade process requires that architecture (32 or 64-bit) is the same before and after the upgrade.

## Lab setup

The Hyper-V host computer is configured to host four VMs on a private, proof of concept network. Links are provided to download trial versions of Windows Server 2012 and all deployment tools necessary to complete the lab.
- Two VMs are running Windows Server 2012 R2 with required network services and tools installed.
- Two VMs are client systems: One VM is intended to mirror a host on your corporate network and one VM is running Windows 10 to demonstrate the hardware replacement scenario.

See the following diagram:

![PoC](images/poc.png)

**Note**:
>If you have an existing Hyper-V host, you can use this host if desired and skip the Hyper-V installation section in this guide. If your Hyper-V host is running Windows Server 2008 R2, you must enable PowerShell functionality to complete the steps in this guide. 

>The two Windows Server VMs can be combined into a single VM to conserve RAM and disk space if required. However, instructions in this guide assume two server systems are used. Using two servers enables Active Directory Domain Services and DHCP to be installed on a server that is not directly connected to the corporate network. This mitigates the risk of clients on the corporate network receiving DHCP leases from the PoC network (i.e. "rogue" DHCP), and limits NETBIOS service broadcasts to the corporate network.

## Configure the PoC environment

### In this section

[Install Hyper-V](#install-hyper-v)<BR>
[Download VHDs](#download-vhds)<BR>
[Configure Hyper-V](#configure-hyper-v)<BR>
[Configure VHDs](#configure-vhds)<BR>
[Verify the configuration](#verify-the-configuration)

### Install Hyper-V

Use one of the following procedures to install Hyper-V on the Hyper-V host computer:

- [Install Hyper-V on a computer running Windows 8/8.1/10](#to-install-hyper-v-on-a-computer-running-windows-8-8-1-10)<BR>
- [Install Hyper-V on a computer running Windows Server 2012/2012 R2/2016](#to-install-hyper-v-on-a-computer-running-windows-server-2012-2012-r2-2016)

####To install Hyper-V on a computer running Windows 8/8.1/10

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

    Note: A 64-bit operating system is requried to run Hyper-V.

2. Enable Hyper-V.

    The Hyper-V feature is not installed by default. To get it, open an elevated Windows PowerShell window and type the following command:

    ```
    Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V –All
    ```
    When you are prompted to restart the computer, choose Yes. The computer might restart more than once.
    
    You can also install Hyper-V using the Control Panel in Windows, under Turn Windows features on or off, as shown below:
    
    ![hyper-v feature](images/hyper-v-feature.png)

####To install Hyper-V on a computer running Windows Server 2012/2012 R2/2016

### Download VHDs

### Configure Hyper-V

### Configure VHDs

## Windows 10 PoC guides

- [Step by step: Deploy Windows 10 PoC with System Center Configuration Manager](windows-10-poc-sccm.md)
- [Step by step: Deploy Windows 10 PoC with the Microsoft Deployment Toolkit](windows-10-poc-mdt.md)

## Related Topics

[Windows 10 deployment scenarios](windows-10-deployment-scenarios.md)
 

 





