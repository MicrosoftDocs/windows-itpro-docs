---
title: Deploying the MBAM 2.5 Client
description: Deploying the MBAM 2.5 Client
author: dansimp
ms.assetid: 0a96a0ee-f280-49d9-a244-88f4147fe9fd
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Deploying the MBAM 2.5 Client


The Microsoft BitLocker Administration and Monitoring (MBAM) Client software enables administrators to enforce and monitor BitLocker Drive Encryption on computers in the enterprise. The BitLocker client can be integrated into an organization by deploying the client through an electronic software distribution system, such as Active Directory Domain Services, or by directly encrypting the client computers as part of the initial imaging process.

Depending on when you deploy the Microsoft BitLocker Administration and Monitoring Client software, you can enable BitLocker Drive Encryption on a computer in your organization either before the end user receives the computer or afterwards by configuring Group Policy and deploying the MBAM Client software by using an enterprise software deployment system.

## Deploy the MBAM Client to desktop or laptop computers


After configuring Group Policy settings, you can use an enterprise software deployment system product like Microsoft System Center 2012 Configuration Manager or Active Directory Domain Services to deploy the MBAM Client installation Windows Installer files to target computers. You can use either the 32-bit or 64-bit MbamClientSetup.exe files or the 32-bit or 64-bit MBAMClient.msi files, which are provided with the MBAM Client software. For more information about deploying MBAM Group Policy settings, see [Deploying MBAM 2.5 Group Policy Objects](deploying-mbam-25-group-policy-objects.md).

**Note**  
Beginning in MBAM 2.5 SP1, a separate MSI is no longer included with the MBAM product. However, you can extract the MSI from the executable file (.exe) that is included with the product.

 

[How to Deploy the MBAM Client to Desktop or Laptop Computers](how-to-deploy-the-mbam-client-to-desktop-or-laptop-computers-mbam-25.md)

## Deploy the MBAM Client as part of a Windows deployment


In organizations where computers are received and configured centrally, you can install the MBAM Client to manage BitLocker Drive Encryption on each computer before any user data is written to it. The benefit of this process is that every computer is then BitLocker Drive Encryption-compliant. This method does not rely on user action because the administrator has already encrypted the computer. A key assumption for this scenario is that the policy of the organization installs a corporate Windows image before the computer is delivered to the user. If the Group Policy settings has been configured to require a PIN, users are prompted to set a PIN after they receive the policy.

[How to Enable BitLocker by Using MBAM as Part of a Windows Deployment](how-to-enable-bitlocker-by-using-mbam-as-part-of-a-windows-deploymentmbam-25.md)

## How to deploy the MBAM Client by using a command line


This section explains how to install the MBAM Client by using a command line.

[How to Deploy the MBAM Client by Using a Command Line](how-to-deploy-the-mbam-client-by-using-a-command-line.md)

## Other resources for deploying the MBAM Client


[Deploying MBAM 2.5](deploying-mbam-25.md)



## Related topics


[Deploying MBAM 2.5](deploying-mbam-25.md)

[Planning for MBAM 2.5](planning-for-mbam-25.md)

 
## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).
 





