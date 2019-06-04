---
title: Deploying the MBAM 1.0 Client
description: Deploying the MBAM 1.0 Client
author: msfttracyp
ms.assetid: f7ca233f-5035-4ff9-ab3a-f2453b4929d1
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Deploying the MBAM 1.0 Client


The Microsoft BitLocker Administration and Monitoring (MBAM) Client enables administrators to enforce and monitor BitLocker drive encryption on computers in the enterprise. The BitLocker client can be integrated into an organization by deploying the client through tools like Active Directory Domain Services or by directly encrypting the client computers as part of the initial imaging process.

Depending on when you deploy the MBAM Client, you can enable BitLocker encryption on a computer in your organization either before or after the end user receives the computer. To control this timing, you configure Group Policy and deploy the MBAM Client software by using an enterprise software deployment system.

You can use either or both of these methods in your organization. If you use both methods, you can improve compliance, reporting, and key recovery support.

## Deploy the MBAM Client to desktop or laptop computers


After you have configured Group Policy, you can deploy the MBAM Client installation Windows Installer files to target computers. You can do this by use of an enterprise software deployment system product like Microsoft System Center 2012 Configuration Manager or Active Directory Domain Services. The two available MBAM Client installation Windows Installer files are MBAMClient-64bit.msi and MBAMClient-32bit.msi. These files are provided with the MBAM software. For more information about how to deploy MBAM Group Policy Objects, see [Deploying MBAM 1.0 Group Policy Objects](deploying-mbam-10-group-policy-objects.md).

[How to Deploy the MBAM Client to Desktop or Laptop Computers](how-to-deploy-the-mbam-client-to-desktop-or-laptop-computers-mbam-1.md)

## Deploy the MBAM Client as part of a Windows deployment


In some organizations, new computers are received and configured centrally. This situation enables administrators to install the MBAM Client to manage BitLocker encryption on each computer before any user data is written to the computer. This approach helps to ensure that computers are properly encrypted because the administrator performs the action without reliance on end-user action. A key assumption for this scenario is that the policy of the organization installs a corporate Windows image before the computer is delivered to the user.

[How to Deploy the MBAM Client as Part of a Windows Deployment](how-to-deploy-the-mbam-client-as-part-of-a-windows-deployment-mbam-1.md)

## Other resources for deploying the MBAM Client


[Deploying MBAM 1.0](deploying-mbam-10.md)

[Planning for MBAM 1.0 Client Deployment](planning-for-mbam-10-client-deployment.md)

 

 





