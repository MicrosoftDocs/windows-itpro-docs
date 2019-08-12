---
title: Deploying the MBAM 2.0 Client
description: Deploying the MBAM 2.0 Client
author: msfttracyp
ms.assetid: 3dd584fe-2a54-40f0-9bab-13ea74040b01
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Deploying the MBAM 2.0 Client


The Microsoft BitLocker Administration and Monitoring (MBAM) Client enables administrators to enforce and monitor BitLocker drive encryption on computers in the enterprise. The BitLocker client can be integrated into an organization by deploying the client through an electronic software distribution system, such as Active Directory Domain Services, or by directly encrypting the client computers as part of the initial imaging process.

Depending on when you deploy the Microsoft BitLocker Administration and Monitoring Client, you can enable BitLocker encryption on a computer in your organization either before the end user receives the computer or afterwards by configuring Group Policy and deploying the MBAM Client software by using an enterprise software deployment system.

## Deploy the MBAM Client to Desktop or Laptop Computers


After configuring Group Policy, you can use an enterprise software deployment system product like Microsoft System Center Configuration Manager 2012 or Active Directory Domain Services to deploy the MBAM Client installation Windows Installer files to target computers. You can deploy the client by using either the 32-bit or 64-bit MbamClientSetup.exe files, or the 32-bit or 64-bit MBAMClient.msi files, which are provided with the MBAM software. For more information about deploying MBAM Group Policy Objects, see [Deploying MBAM 2.0 Group Policy Objects](deploying-mbam-20-group-policy-objects-mbam-2.md).

[How to Deploy the MBAM Client to Desktop or Laptop Computers](how-to-deploy-the-mbam-client-to-desktop-or-laptop-computers-mbam-2.md)

## Deploy the MBAM Client as Part of a Windows Deployment


In organizations where computers are received and configured centrally, you can install the MBAM Client to manage BitLocker encryption on each computer before any user data is written to it. The benefit of this process is that every computer is then BitLocker encryption compliant. This method does not rely on user action because the administrator has already encrypted the computer. A key assumption for this scenario is that the policy of the organization installs a corporate Windows image before the computer is delivered to the user. If the Group Policy has been configured to require a PIN, users are prompted to set a PIN after they receive the Group Policy.

[How to Deploy the MBAM Client as Part of a Windows Deployment](how-to-deploy-the-mbam-client-as-part-of-a-windows-deployment-mbam-2.md)

## How to Use a Command Line to Install the MBAM Client


This section explains how to install the MBAM Client by using a command line.

[How to Use a Command Line to Install the MBAM Client](how-to-use-a-command-line-to-install-the-mbam-client.md)

## Other Resources for Deploying the MBAM Client


[Deploying MBAM 2.0](deploying-mbam-20-mbam-2.md)[Planning for MBAM 2.0 Client Deployment](planning-for-mbam-20-client-deployment-mbam-2.md)

 

 





