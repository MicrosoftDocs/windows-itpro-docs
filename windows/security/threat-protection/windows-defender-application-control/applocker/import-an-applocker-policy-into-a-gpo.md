---
title: Import an AppLocker policy into a GPO (Windows 10)
description: This topic for IT professionals describes the steps to import an AppLocker policy into a Group Policy Object (GPO).
ms.assetid: 0629ce44-f5e2-48a8-ba47-06544c73261f
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/21/2017
---

# Import an AppLocker policy into a GPO

**Applies to**
- Windows 10
- Windows Server

This topic for IT professionals describes the steps to import an AppLocker policy into a Group Policy Object (GPO).
AppLocker policies can be created as local security policies and modified like any other local security policy, or they can be created as part of a GPO and managed by using Group Policy. You can create AppLocker policies on any supported computer. For info about which Windows editions are supported, see [Requirements to Use AppLocker](requirements-to-use-applocker.md).

>**Important:**  Follow your organization's standard procedures for updating GPOs. For info about specific steps to follow for AppLocker policies, see [Maintain AppLocker policies](maintain-applocker-policies.md).
 
To complete this procedure, you must have the **Edit Setting** permission to edit a GPO. By default, members of the **Domain Admins** group, the **Enterprise Admins** group, and the **Group Policy Creator Owners** group have this permission.

**To import an AppLocker policy into a GPO**

1.  In the Group Policy Management Console (GPMC), open the GPO that you want to edit.
2.  In the console tree under **Computer Configuration\\Policies\\Windows Settings\\Security Settings\\Application Control Policies**, click **AppLocker**.
3.  Right-click **AppLocker**, and then click **Import Policy**.
4.  In the **Import Policy** dialog box, locate the XML policy file, and click **Open**.
5.  The **AppLocker** dialog box will notify you of how many rules were imported. Click **OK**.
