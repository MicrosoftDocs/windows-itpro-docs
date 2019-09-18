---
title: Deploying MBAM 2.0 Group Policy Objects
description: Deploying MBAM 2.0 Group Policy Objects
author: dansimp
ms.assetid: f17f3897-73ab-431b-a6ec-5a6cff9f279a
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Deploying MBAM 2.0 Group Policy Objects


To successfully deploy Microsoft BitLocker Administration and Monitoring (MBAM), you first have to determine the Group Policies that you will use in your implementation of Microsoft BitLocker Administration and Monitoring. See [Planning for MBAM 2.0 Group Policy Requirements](planning-for-mbam-20-group-policy-requirements-mbam-2.md) for more information on the different policies that are available. When you have determined the policies that you are going to use, you then must create and deploy one or more Group Policy Objects (GPO) that include the policy settings for MBAM by using the MBAM 2.0 Group Policy template.

## Install the MBAM 2.0 Group Policy Template


In addition to the server-related Microsoft BitLocker Administration and Monitoring features, the server setup application includes a MBAM Group Policy template. This template can be installed on any computer able to run the Group Policy Management Console (GPMC) or Advanced Group Policy Management (AGPM).

[How to Install the MBAM 2.0 Group Policy Template](how-to-install-the-mbam-20-group-policy-template-mbam-2.md)

## Deploy MBAM 2.0 Group Policy Settings


After you create the necessary GPOs, you must deploy the MBAM Group Policy settings to your organization’s client computers.

[How to Edit MBAM 2.0 GPO Settings](how-to-edit-mbam-20-gpo-settings-mbam-2.md)

## Display the MBAM Control Panel in Windows


Because MBAM offers a customized MBAM control panel that can replace the default Windows BitLocker control panel, you can also choose to hide the default BitLocker Control Panel from end users by using Group Policy.

[How to Hide Default BitLocker Encryption in the Windows Control Panel](how-to-hide-default-bitlocker-encryption-in-the-windows-control-panel-mbam-2.md)

## Other Resources for Deploying MBAM 2.0 Group Policy Objects


[Deploying MBAM 2.0](deploying-mbam-20-mbam-2.md)

 

 





