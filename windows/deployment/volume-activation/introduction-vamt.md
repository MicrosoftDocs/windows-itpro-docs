---
title: Introduction to VAMT (Windows 10)
description: Introduction to VAMT
ms.assetid: 0439685e-0bae-4967-b0d4-dd84ca6d7fa7
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: activation
author: greg-lindsay
ms.date: 04/25/2017
ms.topic: article
---

# Introduction to VAMT

The Volume Activation Management Tool (VAMT) enables network administrators and other IT professionals to automate and centrally manage the Windows®, Microsoft® Office®, and select other Microsoft products volume and retail activation process. VAMT can manage volume activation using Multiple Activation Keys (MAKs) or the Windows Key Management Service (KMS). VAMT is a standard Microsoft Management Console (MMC) snap-in and can be installed on any computer that has one of the following Windows operating systems: Windows® 7, Windows 8, Windows 8.1, Windows 10,Windows Server 2008 R2, or Windows Server 2012.

**Note**  
VAMT can be installed on, and can manage, physical or virtual instances. VAMT cannot detect whether or not the remote products are virtual. As long as the products can respond to Windows Management Instrumentation (WMI) calls, they will be discovered and activated.

## In this Topic
-   [Managing Multiple Activation Key (MAK) and Retail Activation](#bkmk-managingmak)
-   [Managing Key Management Service (KMS) Activation](#bkmk-managingkms)
-   [Enterprise Environment](#bkmk-enterpriseenvironment)
-   [VAMT User Interface](#bkmk-userinterface)

## <a href="" id="bkmk-managingmak"></a>Managing Multiple Activation Key (MAK) and Retail Activation

You can use a MAK or a retail product key to activate Windows, Windows Server, or Office on an individual computer or a group of computers. VAMT enables two different activation scenarios:
-   **Online activation.** Many enterprises maintain a single Windows system image or Office installation package for deployment across the enterprise. Occasionally there is also a need to use retail product keys in special situations. Online activation enables you to activate over the Internet any products installed with MAK, KMS host, or retail product keys on one or more connected computers within a network. This process requires that each product communicate activation information directly to Microsoft.
-   **Proxy activation.** This activation method enables you to perform volume activation for products installed on client computers that do not have Internet access. The VAMT host computer distributes a MAK, KMS Host key (CSVLK), or retail product key to one or more client products and collects the installation ID (IID) from each client product. The VAMT host sends the IIDs to Microsoft on behalf of the client products and obtains the corresponding Confirmation IDs (CIDs). The VAMT host then installs the CIDs on the client products to complete the activation. Using this method, only the VAMT host computer needs Internet access. You can also activate products installed on computers in a workgroup that is completely isolated from any larger network, by installing a second instance of VAMT on a computer within the workgroup. Then, use removable media to transfer activation data between this new instance of VAMT and the Internet-connected VAMT host.

## <a href="" id="bkmk-managingkms"></a>Managing Key Management Service (KMS) Activation

In addition to MAK or retail activation, you can use VAMT to perform volume activation using the Key Management Service (KMS). VAMT can install and activate GVLK (KMS client) keys on client products. GVLKs are the default product keys used by Volume License editions of Windows Vista, Windows 7, Windows 8, Windows 10, Windows Server 2008, Windows Server 2008 R2, and Windows Server 2012 as well as Microsoft Office 2010.
VAMT treats a KMS Host key (CSVLK) product key identically to a retail-type product key; therefore, the experience for product key entry and activation management are identical for both these product key types.

## <a href="" id="bkmk-enterpriseenvironment"></a>Enterprise Environment

VAMT is commonly implemented in enterprise environments. The following illustrates three common environments—Core Network, Secure Zone, and Isolated Lab.

![VAMT in the enterprise](images/dep-win8-l-vamt-image001-enterprise.jpg)

In the Core Network environment, all computers are within a common network managed by Active Directory® Domain Services (AD DS). The Secure Zone represents higher-security Core Network computers that have additional firewall protection.
The Isolated Lab environment is a workgroup that is physically separate from the Core Network, and its computers do not have Internet access. The network security policy states that no information that could identify a specific computer or user may be transferred out of the Isolated Lab.

## <a href="" id="bkmk-userinterface"></a>VAMT User Interface

The following screenshot shows the VAMT graphical user interface.

![VAMT user interface](images/vamtuserinterfaceupdated.jpg)

VAMT provides a single, graphical user interface for managing activations, and for performing other activation-related tasks such as:
-   **Adding and removing computers.** You can use VAMT to discover computers in the local environment. VAMT can discover computers by querying AD DS, workgroups, by individual computer name or IP address, or via a general LDAP query.
-   **Discovering products.** You can use VAMT to discover Windows, Windows Server, Office, and select other products installed on the client computers.
-   **Monitoring activation status.** You can collect activation information about each product, including the last 5 characters of the product key being used, the current license state (such as Licensed, Grace, Unlicensed), and the product edition information.
-   **Managing product keys.** You can store multiple product keys and use VAMT to install these keys to remote client products. You can also determine the number of activations remaining for MAKs.
-   **Managing activation data.** VAMT stores activation data in a SQL database. VAMT can export this data to other VAMT hosts or to an archive in XML format.

## Related topics
- [VAMT Step-by-Step Scenarios](vamt-step-by-step.md)
 
 
