---
title: Deploying MBAM 2.5 Group Policy Objects
description: Deploying MBAM 2.5 Group Policy Objects
author: dansimp
ms.assetid: 4b835054-6846-463d-af58-8ac4639a1188
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Deploying MBAM 2.5 Group Policy Objects


To deploy MBAM, you have to set Group Policy settings that define MBAM implementation settings for BitLocker drive encryption. To complete this task, you must copy the MBAM Group Policy Templates to a server or workstation that are capable of running Group Policy Management Console (GPMC) or Advanced Group Policy Management (AGPM), and then edit the settings.

**Important**  
Do not change the Group Policy settings in the **BitLocker Drive Encryption** node, or MBAM will not work correctly. When you configure the Group Policy settings in the **MDOP MBAM (BitLocker Management)** node, MBAM automatically configures the **BitLocker Drive Encryption** settings for you.

 

## Copying the MBAM 2.5 Group Policy Templates


Before you install the MBAM Client, you must copy MBAM-specific Group Policy Objects (GPOs) to the Management Workstation. These GPOs define MBAM implementation settings for BitLocker drive encryption. You can copy the Group Policy templates to any server or workstation that is a supported Windows server or client computer and that is able to run the Group Policy Management Console (GPMC) or Advanced Group Policy Management (AGPM).

[Copying the MBAM 2.5 Group Policy Templates](copying-the-mbam-25-group-policy-templates.md)

## Editing MBAM 2.0 GPO settings


After you create the necessary GPOs, you must deploy the MBAM Group Policy settings to your organization’s client computers. To view and create GPOs, you must have Group Policy Management Console (GPMC) or Advanced Group Policy Management (AGPM) installed.

[Editing the MBAM 2.5 Group Policy Settings](editing-the-mbam-25-group-policy-settings.md)

## Showing or hiding the MBAM Control Panel in Windows Control Panel


Since MBAM offers a customized MBAM control panel that can replace the default Windows BitLocker control panel, you can also choose to show or hide the default BitLocker Control Panel from end users by using Group Policy settings.

[Hiding the Default BitLocker Drive Encryption Item in Control Panel](hiding-the-default-bitlocker-drive-encryption-item-in-control-panel-mbam-25.md)

## Other Resources for deploying MBAM 2.0 Group Policy Objects


[Deploying MBAM 2.5](deploying-mbam-25.md)

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).

 

 





