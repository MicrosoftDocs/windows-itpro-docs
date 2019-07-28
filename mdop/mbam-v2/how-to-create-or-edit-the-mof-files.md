---
title: How to Create or Edit the mof Files
description: How to Create or Edit the mof Files
author: msfttracyp
ms.assetid: 4d19d707-b90f-4057-a6e9-e4221a607190
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Create or Edit the mof Files


Before you install Microsoft BitLocker Administration and Monitoring (MBAM) with Configuration Manager, you need to edit the Configuration.mof file. You also need to either edit or create the Sms\_def.mof file, depending on which version of Configuration Manager you are using.

## Edit the Configuration.mof File


To enable the client computers to report BitLocker compliance details through the MBAM Configuration Manager reports, you have to edit the Configuration.mof file for Microsoft System Center Configuration Manager 2007 and System Center 2012 Configuration Manager.

[Edit the Configuration.mof File](edit-the-configurationmof-file.md)

## <a href="" id="create-or-edit-the-sms-def-mof-file"></a>Create or Edit the Sms\_def.mof File


To enable the client computers to report BitLocker compliance details in the MBAM Configuration Manager reports, you have to create or edit the Sms\_def.mof file. In Configuration Manager 2007, the file already exists, so you need to edit, but not overwrite, the existing file. If you are using System Center 2012 Configuration Manager, you must create the file.

[Create or Edit the Sms\_def.mof File](create-or-edit-the-sms-defmof-file.md)

## Related topics


[Deploying MBAM with Configuration Manager](deploying-mbam-with-configuration-manager-mbam2.md)

 

 





