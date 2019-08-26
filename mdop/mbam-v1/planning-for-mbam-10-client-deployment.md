---
title: Planning for MBAM 1.0 Client Deployment
description: Planning for MBAM 1.0 Client Deployment
author: msfttracyp
ms.assetid: 3af2e7f3-134b-4ab9-9847-b07474ca6ac3
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Planning for MBAM 1.0 Client Deployment


Depending on when you deploy the Microsoft BitLocker Administration and Monitoring (MBAM) Client, you can enable BitLocker encryption on a computer in your organization either before the end user receives the computer or afterwards. To enable BitLocker encryption after the end user receives the computer, configure Group Policy. To enable BitLocker encryption before the end user receives the computer, deploy the MBAM Client software by using an enterprise software deployment system.

You can use one or both methods in your organization. If you use both methods, you can improve compliance, reporting, and key recovery support.

**Note**  
To review the MBAM Client system requirements, see [MBAM 1.0 Supported Configurations](mbam-10-supported-configurations.md).

 

## Deploying the MBAM Client to enable BitLocker encryption after computer distribution to end users


After you configure the Group Policy, you can use an enterprise software deployment system product, such as Microsoft System Center Configuration Manager 2012 or Active Directory Domain Services, to deploy the MBAM Client installation Windows Installer files to the target computers. The two MBAM Client installation Windows Installer files are MBAMClient-64bit.msi and MBAMClient-32bit.msi, which are provided with the MBAM software. For more information about how to deploy MBAM Group Policy Objects, see [Deploying MBAM 1.0 Group Policy Objects](deploying-mbam-10-group-policy-objects.md).

When you deploy the MBAM Client, after you distribute the computers to end users, the end users are prompted to encrypt their computers. This lets MBAM collect the data, to include the PIN and password, and then begin the encryption process.

**Note**  
In this approach, users are prompted to activate and initialize the Trusted Platform Module (TPM) chip, if it has not been previously activated.

 

## Using the MBAM Client to enable BitLocker encryption before computer distribution to end users


In organizations where computers are received and configured centrally, you can install the MBAM Client to manage BitLocker encryption on each computer before any user data is written on it. The benefit of this process is that every computer will then be compliant with the BitLocker encryption. This method does not rely on user action because the administrator has already encrypted the computer. A key assumption for this scenario is that the policy of the organization installs a corporate Windows image before the computer is delivered to the user.

If your organization wants to use (TPM) to encrypt computers, the administrator must encrypt the operating system volume of the computer with TPM protector. If your organization wants to use the TPM chip and a PIN protector, the administrator must encrypt the system volume with the TPM protector, and then the users select a PIN the first time they log on. If your organization decides to use only the PIN protector, the administrator does not have to encrypt the volume first. When users log on their computers, MBAM prompts them to provide a PIN or a PIN and a password that they will use when they restart their computer later.

**Note**  
The TPM protector option requires for the administrator to accept the BIOS prompt to activate and initialize the TPM before delivering the computer to the user.

 

## Related topics


[Planning to Deploy MBAM 1.0](planning-to-deploy-mbam-10.md)

[Deploying the MBAM 1.0 Client](deploying-the-mbam-10-client.md)

 

 





