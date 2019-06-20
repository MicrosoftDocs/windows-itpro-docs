---
title: Planning for MBAM 2.5 Client Deployment
description: Planning for MBAM 2.5 Client Deployment
author: dansimp
ms.assetid: 23c89976-af24-4753-9412-ce0ea42d1964
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Planning for MBAM 2.5 Client Deployment


Depending on when you deploy the Microsoft BitLocker Administration and Monitoring (MBAM) Client software, you can enable BitLocker Drive Encryption on a computer in your organization either before the end user receives the computer or afterwards. For both the MBAM Stand-alone and the System Center Configuration Manager Integration topologies, you have to configure Group Policy settings for MBAM.

If you are using the MBAM Stand-alone topology, we recommend that you use an enterprise software deployment system to deploy the MBAM Client software to end-user computers.

If you deploy MBAM with the Configuration Manager Integration topology, you can use Configuration Manager to deploy the MBAM Client software to end-user computers. In Configuration Manager, the MBAM installation creates a collection of computers that MBAM can manage. This collection includes workstations and devices that do not have a Trusted Platform Module (TPM), but that are running Windows 8, Windows 8.1, or Windows 10.

**Note**  
Windows To Go is not supported for the Configuration Manager Integration topology installation when you are using Configuration Manager 2007.

 

## Deploying the MBAM Client to enable BitLocker Drive Encryption after computer distribution to end users


After you configure Group Policy, you can use an enterprise software deployment system product like Microsoft System Center Configuration Manager or Active Directory Domain Services (AD DS) to deploy the Windows Installer files of the MBAM Client installation to target computers. To deploy the MBAM Client, you can use either the 32-bit or 64-bit MbamClientSetup.exe files or MBAMClient.msi files, which are provided with the MBAM Client software.

**Note**  
Beginning in MBAM 2.5 SP1, a separate MSI is no longer included with the MBAM product. However, you can extract the MSI from the executable file (.exe) that is included with the product.

 

When you deploy the MBAM Client after you distribute computers to client computers, end users are prompted to encrypt their computer. This action enables MBAM to collect the data, which includes the PIN and password (if required by policy), and then to begin the encryption process.

**Note**  
In this approach, end users who have computers with a TPM chip are prompted to activate and initialize the TPM chip if the chip has not been previously activated.

 

## Using the MBAM Client to enable BitLocker Drive Encryption before computer distribution to end users


In organizations where computers are received and configured centrally, and where computers have a compliant TPM chip, you can use the MBAM Client to manage BitLocker Drive Encryption on each computer before any user data is written to it. The benefit of this process is that every computer is then compliant. This method does not rely on end-user action because the administrator has already encrypted the computer. A key assumption for this scenario is that the policy of the organization installs a corporate Windows image before the computer is delivered to the end user.

If your organization wants to use the TPM chip to encrypt computers, the administrator adds the TPM protector to encrypt the operating system volume of the computer. If your organization wants to use the TPM chip and a PIN protector, the administrator encrypts the operating system volume with the TPM protector, and then end users select a PIN when they log on for the first time. If your organization decides to use only the PIN protector, the administrator does not have to encrypt the volume first. When end users log on, Microsoft BitLocker Administration and Monitoring prompts them to provide a PIN, or a PIN and password to be used on later computer restarts.

**Note**  
The TPM protector option requires the administrator to accept the BIOS prompt to activate and initialize the TPM before the computer is delivered to the end user.

 

## MBAM Client support for Encrypted Hard Drives


MBAM supports BitLocker on Encrypted Hard Drives that meet TCG specification requirements for Opal as well as IEEE 1667 standards. When BitLocker is enabled on these devices, it will generate keys and perform management functions on the encrypted drive. See [Encrypted Hard Drive](https://technet.microsoft.com/library/hh831627.aspx) for more information.


## Related topics


[Planning to Deploy MBAM 2.5](planning-to-deploy-mbam-25.md)

[Deploying the MBAM 2.5 Client](deploying-the-mbam-25-client.md)

 

 
## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).




