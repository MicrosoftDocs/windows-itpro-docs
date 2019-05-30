---
title: Planning for MBAM 2.0 Client Deployment
description: Planning for MBAM 2.0 Client Deployment
author: msfttracyp
ms.assetid: 3a92cf29-092f-4cad-bdfa-d5f6aafe554b
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Planning for MBAM 2.0 Client Deployment


Depending on when you deploy the Microsoft BitLocker Administration and Monitoring (MBAM) Client, you can enable BitLocker drive encryption on a computer in your organization either before the end user receives the computer or afterwards. For both the MBAM Stand-alone and the Configuration Manager topologies, you have to configure Group Policy settings for MBAM.

If you are using the MBAM Stand-alone topology, it is recommended that you use an enterprise software deployment system to deploy the MBAM Client software to end-user computers.

If you deploy MBAM with the Configuration Manager topology, you can use Configuration Manager to deploy the MBAM Client software to end-user computers. In Configuration Manager, the MBAM installation creates a collection of computers that MBAM can manage. This collection includes workstations and devices that do not have a Trusted Platform Module (TPM), but that are running Windows 8.

**Note**  
Windows To Go is not supported for integrated Configuration Manager installations of MBAM if you are using Configuration Manager 2007.

 

## Deploying the MBAM Client to Enable BitLocker Encryption After Computer Distribution to End Users


After you configure Group Policy, you can use an enterprise software deployment system product like Microsoft System Center Configuration Manager or Active Directory Domain Services (AD DS) to deploy the Windows Installer files of the MBAM Client installation to target computers. To deploy the MBAM Client, you can use either the 32-bit or 64-bit MbamClientSetup.exe files or MBAMClient.msi files, which are provided with the MBAM software.

When you deploy the MBAM Client after you distribute computers to client computers, end users are prompted to encrypt their computer. This enables MBAM to collect the data, which includes the PIN and password, and then to begin the encryption process.

**Note**  
In this approach, users who have computers with a TPM chip are prompted to activate and initialize the TPM chip if the chip has not been previously activated.

 

## Using the MBAM Client to Enable BitLocker Encryption Before Computer Distribution to End Users


In organizations where computers are received and configured centrally, and where computers have a compliant TPM chip, you can install the MBAM Client to manage BitLocker encryption on each computer before any user data is written to it. The benefit of this process is that every computer will then be BitLocker encryption-compliant. This method does not rely on user action because the administrator has already encrypted the computer. A key assumption for this scenario is that the policy of the organization installs a corporate Windows image before the computer is delivered to the user.

If your organization wants to use the TPM chip to encrypt computers, the administrator adds the TPM protector to encrypt the operating system volume of the computer. If your organization wants to use the TPM chip and a PIN protector, the administrator encrypts the operating system volume with the TPM protector, and then users select a PIN when they log on for the first time. If your organization decides to use only the PIN protector, the administrator does not have to encrypt the volume first. When users log on, Microsoft BitLocker Administration and Monitoring prompts them to provide a PIN, or a PIN and password to be used on later computer restarts.

**Note**  
The TPM protector option requires the administrator to accept the BIOS prompt to activate and initialize the TPM before the computer is delivered to the user.

 

## Related topics


[Planning to Deploy MBAM 2.0](planning-to-deploy-mbam-20-mbam-2.md)

[Deploying the MBAM 2.0 Client](deploying-the-mbam-20-client-mbam-2.md)

 

 





