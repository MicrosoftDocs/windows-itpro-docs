---
title: Introduction to VAMT
description: VAMT enables administrators to automate and centrally manage the Windows, Microsoft Office, and select other Microsoft products volume and retail activation process.
ms.author: kaushika
author: kaushika-msft
manager: cshepard
ms.reviewer: nganguly
ms.service: windows-client
ms.subservice: activation
ms.date: 11/07/2022
ms.topic: overview
---

# Introduction to VAMT

The Volume Activation Management Tool (VAMT) enables network administrators and other IT professionals to automate and centrally manage the Windows, Office, and select other Microsoft products volume and retail activation process. VAMT can manage volume activation using Multiple Activation Keys (MAKs) or the Windows Key Management Service (KMS). VAMT is a standard Microsoft Management Console (MMC) snap-in and can be installed on any computer that has a supported Windows OS version.

> [!NOTE]
> VAMT can be installed on, and can manage, physical or virtual instances. VAMT can't detect whether or not the remote products are virtual. As long as the products can respond to Windows Management Instrumentation (WMI) calls, they will be discovered and activated.

## Managing MAK and retail activation

You can use a MAK or a retail product key to activate Windows, Windows Server, or Office on an individual computer or a group of computers. VAMT enables two different activation scenarios:

- **Online activation**: Many organizations maintain a single Windows system image or Office installation package for deployment across the organization. Occasionally there's also a need to use retail product keys in special situations. Online activation enables you to activate over the internet any products installed with MAK, KMS host, or retail product keys on one or more connected computers within a network. This process requires that each product communicate activation information directly to Microsoft.

- **Proxy activation**: This activation method enables you to perform volume activation for products installed on client computers that don't have internet access. The VAMT host computer distributes a MAK, KMS host key (CSVLK), or retail product key to one or more client products and collects the installation ID (IID) from each client product. The VAMT host sends the IIDs to Microsoft on behalf of the client products and obtains the corresponding Confirmation IDs (CIDs). The VAMT host then installs the CIDs on the client products to complete the activation. Using this method, only the VAMT host computer needs internet access. You can also activate products installed on computers in a workgroup that's isolated from any larger network, by installing a second instance of VAMT on a computer within the workgroup. Then, use removable media to transfer activation data between this new instance of VAMT and the internet-connected VAMT host.

## Managing KMS activation

In addition to MAK or retail activation, you can use VAMT to perform volume activation using the KMS. VAMT can install and activate GVLK (KMS client) keys on client products. GVLKs are the default product keys used by volume license editions of Windows, Windows Server, and Office.

VAMT treats a KMS host key (CSVLK) product key identically to a retail-type product key. The experience for product key entry and activation management are identical for both these product key types.

## Enterprise environment

VAMT is commonly implemented in enterprise environments. The following screenshot illustrates three common environments: core network, secure zone, and isolated lab.

![VAMT in the enterprise.](images/dep-win8-l-vamt-image001-enterprise.jpg)

- In the core network environment, all computers are within a common network managed by Active Directory Domain Services (AD DS).

- The secure zone represents higher-security core network computers that have extra firewall protection.

- The isolated lab environment is a workgroup that is physically separate from the core network, and its computers don't have internet access. The network security policy states that no information that could identify a specific computer or user may be transferred out of the isolated lab.

## VAMT user interface

The following screenshot shows the VAMT graphical user interface:

![VAMT user interface.](images/vamtuserinterfaceupdated.jpg)

VAMT provides a single, graphical user interface for managing activations, and for performing other activation-related tasks such as:

- **Adding and removing computers**: You can use VAMT to discover computers in the local environment. VAMT can discover computers by querying AD DS, workgroups, by individual computer name or IP address, or via a general LDAP query.

- **Discovering products**: You can use VAMT to discover Windows, Windows Server, Office, and select other products installed on the client computers.

- **Monitoring activation status**: You can collect activation information about each product, including the last five characters of the product key being used, the current license state (such as Licensed, Grace, Unlicensed), and the product edition information.

- **Managing product keys**: You can store multiple product keys and use VAMT to install these keys to remote client products. You can also determine the number of activations remaining for MAKs.

- **Managing activation data**: VAMT stores activation data in an SQL database. VAMT can export this data to other VAMT hosts or to an archive in XML format.

## Next steps

[VAMT requirements](vamt-requirements.md)
