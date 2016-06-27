---
title: Windows 10 upgrade paths (Windows 10)
description: Concepts and procedures for deploying Windows 10 in a proof of concept lab environment.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
---

# Windows 10 proof of concept deployment
**Applies to**

-   Windows 10

## Setting up a proof of concept deployment lab

This following topics provide instructions for setting up a proof of concept (PoC) lab where you can deploy Windows 10 in a private environment using a minimum amount of resources. The lab utilizes the Microsoft Hyper-V platform to run virtual machines that mimic server and client systems on a corporate network.

<table border="1" cellpadding="3">
    <tr>
        <td BGCOLOR="#a0e4fa">Topic</td>
        <td BGCOLOR="#a0e4fa">Description</td>
    </tr>
    <tr>
        <td>[Configure the PoC environment](configure-the-poc-environment)</td>
        <td>Instructions are provided for installing and configuring Hyper-V and configuring VHDs in preparation for different deployment scenarios.</td>
    </tr>
    <tr>
        <td>Topic 2</td>
        <td>Description 2</td>
    </tr>
    <tr>
        <td>Topic 3</td>
        <td>Description 3</td>
    </tr>
    <tr>
        <td>Topic 4</td>
        <td>Description 4</td>
    </tr>
</table>

## Configure the PoC environment

### Requirements

To complete the procedures in this topic

### Install Hyper-V

Use one of the following procedures to install Hyper-V on the Hyper-V host computer:
Install Hyper-V on a computer running Windows 8/8.1 or Windows 10

You might already have experience using Windows Virtual PC in Windows 7, which enables you to run virtual machines on a client operating system. You can still install Windows Virtual PC in Windows 8, but be aware that with Windows 8 there is now a requirement that the host computer’s microprocessor support SLAT. For more information, see Hyper-V: List of SLAT-Capable CPUs for Hosts.

The good news is that if your processor supports SLAT, you don’t need to download and install Windows Virtual PC because Hyper-V Manager is already included in Windows 8.1 and Windows 8 under Programs and Features. Hyper-V manager has several advantages over Windows Virtual PC, including the ability to create virtual switches with VLAN tagging and virtual machine snapshots.

Note  If you installed a 32-bit version of Windows 8, you won’t be able to create and manage local virtual machines. To fully manage virtual machines by using the host computer, you must install the 64-bit version of Windows 8.1 or Windows 8.

The Hyper-V feature is not installed by default in Windows 8. To get it, you can use the following Windows PowerShell command:

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V –All

You can also install it via the Control Panel in Windows under Turn Windows features on or off, as shown here:

Important  If you know that your processor supports SLAT, but you still get an error message that states Hyper-V cannot be installed, you might need to enable virtualization in the BIOS. The location of this setting will depend on the manufacturer and BIOS version. The following image shows an example of the required settings (under Security) in a Hewlett-Packard BIOS for an Intel processor:

### Configure Hyper-V

### Download VHDs

### Configure VHDs

## Related Topics

[Windows 10 deployment scenarios](windows-10-deployment-scenarios.md)
 

 





