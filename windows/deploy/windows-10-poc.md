---
title: Deploy Windows 10 in a test lab (Windows 10)
description: Concepts and procedures for deploying Windows 10 in a proof of concept lab environment.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
---

# Deploy Windows 10 in a test lab

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
        <td>[Windows 10 deployment PoC guides](#windows-10-poc-guides)</td>
        <td>A list of guides providing step by step instructions to deploy Windows 10 in the PoC environment.</td>
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
        <td>Windows 7 or a later*</td>
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

**Note**:
>Retaining applications and settings during the upgrade process requires that architecture (32 or 64-bit) is the same before and after the upgrade.

## Lab setup

The Hyper-V host computer is configured to host four VMs on a private, proof of concept network. 
- Two VMs are running Windows Server 2012 R2 with required network services and tools installed.
- Two VMs are client systems: One VM is intended to mirror a host on your corporate network; one VM is running Windows 10 to demonstrate the hardware replacement scenario.

Links are provided to download trial versions of Windows Server 2012 and all deployment tools necessary to complete the lab. See the following diagram:

![PoC](images/poc.png)

**Note**:
>If you have an existing Hyper-V host, you can use this host if desired and skip the Hyper-V installation section in this guide. If your Hyper-V host is running Windows Server 2008 R2, you must enable PowerShell functionality to complete the steps in this guide. 

>The two Windows Server VMs can be combined into a single VM to conserve RAM and disk space if required. However, instructions in this guide assume two server systems are used.

## Configure the PoC environment

### In this section

[Install Hyper-V](#install-hyper-v)<BR>
[Download VHDs](#download-vhds)<BR>
[Configure Hyper-V](#configure-hyper-v)<BR>
[Configure VHDs](#configure-vhds)<BR>
[Verify the configuration](#verify-the-configuration)

### Install Hyper-V

Use one of the following procedures to install Hyper-V on the Hyper-V host computer:

[Install Hyper-V on a computer running Windows 8/8.1/10](#to-install-hyper-v-on-a-computer-running-windows-8-8-1-10)<BR>
[Install Hyper-V on a computer running Windows Server 2012/2012 R2/2016](#to-install-hyper-v-on-a-computer-running-windows-server-2012-2012-r2-2016)

####To install Hyper-V on a computer running Windows 8/8.1/10

Starting with Windows 8, the host computer’s microprocessor must support second level address translation (SLAT) to install Hyper-V. See [Hyper-V: List of SLAT-Capable CPUs for Hosts](http://social.technet.microsoft.com/wiki/contents/articles/1401.hyper-v-list-of-slat-capable-cpus-for-hosts.aspx) for more information.

If your processor supports SLAT Hyper-V Manager is already included in Windows under Programs and Features.

![hyper-v feature](images/hyper-v-feature.png)

Note  If you installed a 32-bit version of Windows, you won’t be able to create and manage local virtual machines. To fully manage virtual machines by using the host computer, you must install the 64-bit version of Windows 8.1 or Windows 8.

The Hyper-V feature is not installed by default in Windows 8. To get it, you can use the following Windows PowerShell command:

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V –All

You can also install it via the Control Panel in Windows under Turn Windows features on or off, as shown here:

**Important**  If you know that your processor supports SLAT, but you still get an error message that states Hyper-V cannot be installed, you might need to enable virtualization in the BIOS. The location of this setting will depend on the manufacturer and BIOS version. The following image shows an example of the required settings (under Security) in a Hewlett-Packard BIOS for an Intel processor:

![security BIOS settings](images/sec-bios.png)

####To install Hyper-V on a computer running Windows Server 2012/2012 R2/2016

### Download VHDs

### Configure Hyper-V

### Configure VHDs

## Windows 10 PoC guides

- [Step by step: Deploy Windows 10 PoC with System Center Configuration Manager](windows-10-poc-sccm.md)
- [Step by step: Deploy Windows 10 PoC with the Microsoft Deployment Toolkit](windows-10-poc-mdt.md)

## Related Topics

[Windows 10 deployment scenarios](windows-10-deployment-scenarios.md)
 

 





