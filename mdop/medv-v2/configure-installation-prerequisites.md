---
title: Configure Installation Prerequisites
description: Configure Installation Prerequisites
author: dansimp
ms.assetid: ff9cf28a-3eac-4b6c-8ce9-bfc202f57947
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 08/30/2016
---


# Configure Installation Prerequisites


The following instructions are prerequisites for installing and using Microsoft Enterprise Desktop Virtualization (MED-V) 2.0:

[Windows Virtual PC](#bkmk-howtoinstallandconfiguremicrosoftvirtualpc7)

[Windows Virtual PC Update](#bkmk-howtoinstallandconfiguremicrosoftvirtualpc7update)

[Antivirus/Backup Software Configuration](#bkmk-antivirusbackupsoftwareconfiguration)

## <a href="" id="bkmk-howtoinstallandconfiguremicrosoftvirtualpc7"></a>How to Install and Configure Windows Virtual PC


**Important**  
If a version of Virtual PC for Windows already exists on the host computer, you must uninstall it before you install Windows Virtual PC.

 

**To install Windows Virtual PC**

1.  Download [Windows Virtual PC](https://go.microsoft.com/fwlink/?LinkId=195918) from the Microsoft Download Center (https://go.microsoft.com/fwlink/?LinkId=195918).

2.  Run the installation file on the host computer, and follow the steps in the wizard.

**Important**  
Windows Virtual PC includes the Integration Components package, which provides features that improve the interaction between the virtual environment and the physical computer. For example, it lets your mouse move between the host and the guest computers. MED-V requires the installation of the Integration Components package.

 

## <a href="" id="bkmk-howtoinstallandconfiguremicrosoftvirtualpc7update"></a>How to Install and Configure the Windows Virtual PC Update


The Microsoft update associated with article KB977206 enables Windows XP Mode for computers without hardware-assisted virtualization (HAV) technology. We recommended that you install this update because some integration features might not work correctly if the Integration Components package in the guest operating system do not match the version of Windows Virtual PC that is installed on the host computer.

**Important**  
You do not have to install this update when you are installing MED-V on host computers that are running Windows 7 with Service Pack 1.

 

**Tip**  
In addition to the update listed here, we recommend that you review all available Windows Virtual PC updates and apply those updates that are appropriate or necessary for your environment.

 

**To install the Windows Virtual PC Update**

1.  Download the required Windows Virtual PC update from the Microsoft Download Center.

    [32-bit Update](https://go.microsoft.com/fwlink/?LinkId=195919) (https://go.microsoft.com/fwlink/?LinkId=195919).

    [64-bit Update](https://go.microsoft.com/fwlink/?LinkId=195920) (https://go.microsoft.com/fwlink/?LinkId=195920).

2.  Run the installation file on the host computer in elevated mode, and follow the steps in the wizard.

    For more information about the hotfix package for Windows Virtual PC, see [article 977206](https://go.microsoft.com/fwlink/?LinkId=195921) (https://go.microsoft.com/fwlink/?LinkId=195921).

## <a href="" id="bkmk-antivirusbackupsoftwareconfiguration"></a>How to Configure Antivirus/Backup Software


To prevent antivirus activity from affecting the performance of the virtual desktop, we recommend, where you can, to exclude the following virtual machine file types from any antivirus or backup process that is running on the host computer:

-   \*.VMC

-   \*.VUD

-   \*.VSV

-   \*.VHD

## Related topics


[Configure Environment Prerequisites](configure-environment-prerequisites.md)

[High-Level Architecture](high-level-architecturemedv2.md)

[MED-V 2.0 Supported Configurations](med-v-20-supported-configurations.md)

 

 





