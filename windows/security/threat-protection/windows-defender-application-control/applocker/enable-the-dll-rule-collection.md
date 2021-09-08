---
title: Enable the DLL rule collection (Windows)
description: This topic for IT professionals describes the steps to enable the DLL rule collection feature for AppLocker.
ms.assetid: 88ef9561-6eb2-491a-803a-b8cdbfebae27
ms.reviewer: 
ms.author: dansimp
ms.prod: m365-security
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
ms.technology: mde
---

# Enable the DLL rule collection

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2016 and above

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Defender App Guard feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This topic for IT professionals describes the steps to enable the DLL rule collection feature for AppLocker.

The DLL rule collection includes the .dll and .ocx file formats.

For info about these rules, see [DLL rules in AppLocker](dll-rules-in-applocker.md).

You can perform this task by using the Group Policy Management Console for an AppLocker policy in a Group Policy Object (GPO) or by using the Local Security Policy snap-in for an AppLocker policy on a local computer or in a security template. For info how to use these MMC snap-ins to administer 
AppLocker, see [Administer AppLocker](administer-applocker.md#bkmk-using-snapins).

**To enable the DLL rule collection**
1.  From the AppLocker console, right-click **AppLocker**, and then click **Properties.**
2.  Click the **Advanced** tab, select the **Enable the DLL rule collection** check box, and then click **OK**.

    >**Important:**  Before you enforce DLL rules, make sure that there are allow rules for each DLL that is used by any of the allowed apps.
