---
title: Deploying MBAM 1.0 Group Policy Objects
description: Deploying MBAM 1.0 Group Policy Objects
author: msfttracyp
ms.assetid: 2129291e-d2b2-41ed-b643-1e311c49fee7
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Deploying MBAM 1.0 Group Policy Objects


To successfully deploy Microsoft BitLocker Administration and Monitoring (MBAM), you must first determine the Group Policies that you will use in your implementation of MBAM. For more information about the various available policies, see [Planning for MBAM 1.0 Group Policy Requirements](planning-for-mbam-10-group-policy-requirements.md). When you have determined the policies that you are going to use, you must use the MBAM 1.0 Group Policy template to create and deploy one or more Group Policy objects (GPO) that include the MBAM policy settings.

## Install the MBAM 1.0 Group Policy template


In addition to providing server-related features of MBAM, the server setup application includes an MBAM Group Policy template. You can install this template on any computer that is able to run the Group Policy Management Console (GPMC) or Advanced Group Policy Management (AGPM).

[How to Install the MBAM 1.0 Group Policy Template](how-to-install-the-mbam-10-group-policy-template.md)

## Deploy MBAM 1.0 Group Policy settings


After you create the necessary GPOs, you must deploy the MBAM Group Policy settings to your organization’s client computers.

[How to Edit MBAM 1.0 GPO Settings](how-to-edit-mbam-10-gpo-settings.md)

## Display the MBAM Control Panel in Windows


Because MBAM offers a customized MBAM control panel that can replace the default Windows BitLocker control panel, you can also choose to hide the default BitLocker Control Panel from end users by using Group Policy.

[How to Hide Default BitLocker Encryption in The Windows Control Panel](how-to-hide-default-bitlocker-encryption-in-the-windows-control-panel.md)

## Other resources for deploying MBAM 1.0 Group Policy Objects


[Deploying MBAM 1.0](deploying-mbam-10.md)

 

 





