---
title: Import an AppLocker policy from another computer (Windows 10)
description: This topic for IT professionals describes how to import an AppLocker policy.
ms.assetid: b48cb2b2-8ef8-4cc0-89bd-309d0b1832f6
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

# Import an AppLocker policy from another computer

**Applies to**
- Windows 10
- Windows Server

This topic for IT professionals describes how to import an AppLocker policy.

Before completing this procedure, you should have exported an AppLocker policy. For more information, see [Export an AppLocker policy to an XML file](export-an-applocker-policy-to-an-xml-file.md).

Membership in the local **Administrators** group, or equivalent, is the minimum required to complete this procedure.

>**Caution:**  Importing a policy will overwrite the existing policy on that computer.
 
**To import an AppLocker policy**

1.  From the AppLocker console, right-click **AppLocker**, and then click **Import Policy**.
2.  In the **Import Policy** dialog box, locate the file that you exported, and then click **Open**.
3.  The **Import Policy** dialog box will warn you that importing a policy will overwrite the existing rules and enforcement settings. If acceptable, click **OK** to import and overwrite the policy.
4.  The **AppLocker** dialog box will notify you of how many rules were overwritten and imported. Click **OK**.
