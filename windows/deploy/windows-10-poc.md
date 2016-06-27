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

## Setting up a proof of concept deployment lab

This following topics provide instructions for setting up a proof of concept (PoC) lab where you can deploy Windows 10 in a private environment using a minimum amount of resources. The lab utilizes the Microsoft Hyper-V platform to run virtual machines that provide all the services and tools required to deploy Windows 10 on a network.

<table border="1" cellpadding="3">
    <tr>
        <td BGCOLOR="#a0e4fa">Topic</td>
        <td BGCOLOR="#a0e4fa">Description</td>
    </tr>
    <tr>
        <td>[Configure the PoC environment](#configure-the-poc-environment)</td>
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

Starting with Windows 8, the host computer’s microprocessor must support second level address translation (SLAT) to install Hyper-V. See [Hyper-V: List of SLAT-Capable CPUs for Hosts](http://social.technet.microsoft.com/wiki/contents/articles/1401.hyper-v-list-of-slat-capable-cpus-for-hosts.aspx) for more information.

If your processor supports SLAT Hyper-V Manager is already included in Windows under Programs and Features.

[hyper-v feature](images/hyper-v-feature.png)

Note  If you installed a 32-bit version of Windows, you won’t be able to create and manage local virtual machines. To fully manage virtual machines by using the host computer, you must install the 64-bit version of Windows 8.1 or Windows 8.

The Hyper-V feature is not installed by default in Windows 8. To get it, you can use the following Windows PowerShell command:

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V –All

You can also install it via the Control Panel in Windows under Turn Windows features on or off, as shown here:

Important  If you know that your processor supports SLAT, but you still get an error message that states Hyper-V cannot be installed, you might need to enable virtualization in the BIOS. The location of this setting will depend on the manufacturer and BIOS version. The following image shows an example of the required settings (under Security) in a Hewlett-Packard BIOS for an Intel processor:

[security BIOS settings](images/sec-bios.png)

### Configure Hyper-V

### Download VHDs

### Configure VHDs

## Related Topics

[Windows 10 deployment scenarios](windows-10-deployment-scenarios.md)
 

 





