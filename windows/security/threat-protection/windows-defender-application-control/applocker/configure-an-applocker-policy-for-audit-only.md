---
title: Configure an AppLocker policy for audit only (Windows)
description: This topic for IT professionals describes how to set AppLocker policies to Audit only within your IT environment by using AppLocker.
ms.assetid: 10bc87d5-cc7f-4500-b7b3-9006e50afa50
ms.reviewer: 
ms.author: vinpa
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.topic: conceptual
ms.date: 06/08/2018
ms.technology: itpro-security
---

# Configure an AppLocker policy for audit only

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2016 and above

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This topic for IT professionals describes how to set AppLocker policies to **Audit only** within your IT environment by using AppLocker.

After AppLocker rules are created within the rule collection, you can configure the enforcement setting to **Enforce rules** or **Audit only**.

When AppLocker policy enforcement is set to **Enforce rules**, rules are enforced for the rule collection and all events are audited. When AppLocker policy enforcement is set to **Audit only**, rules are only evaluated but all events generated from that evaluation are written to the AppLocker log.
 
You can perform this task by using the Group Policy Management Console for an AppLocker policy in a Group Policy Object (GPO) or by using the Local Security Policy snap-in for an AppLocker policy on a local computer or in a security template. For info how to use these MMC snap-ins to administer AppLocker, see [Administer AppLocker](administer-applocker.md#bkmk-using-snapins).

**To audit rule collections**

1.  From the AppLocker console, right-click **AppLocker**, and then click **Properties**.
2.  On the **Enforcement** tab, select the **Configured** check box for the rule collection that you want to enforce, and then verify that **Audit only** is selected in the list for that rule collection.
3.  Repeat the above step to configure the enforcement setting to **Audit only** for additional rule collections.
4.  Click **OK**.
