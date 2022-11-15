---
title: Export an AppLocker policy from a GPO (Windows)
description: This topic for IT professionals describes the steps to export an AppLocker policy from a Group Policy Object (GPO) so that it can be modified.
ms.assetid: 7db59719-a8be-418b-bbfd-22cf2176c9c0
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
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/21/2017
ms.technology: itpro-security
---

# Export an AppLocker policy from a GPO

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2016 and above

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This topic for IT professionals describes the steps to export an AppLocker policy from a Group Policy Object (GPO) so that it can be modified.

Updating an AppLocker policy that is currently enforced in your production environment can have unintended results. Therefore, export the policy from the GPO and update the rule or rules by using AppLocker on your AppLocker reference device.

To complete this procedure, you must have the **Edit Setting** permission to edit a GPO. By default, members of the **Domain Admins** group, the **Enterprise Admins** group, and the **Group Policy Creator Owners** group have this permission.

**Export the policy from the GPO**

1.  In the Group Policy Management Console (GPMC), open the GPO that you want to edit.
2.  In the console tree under **Computer Configuration\\Policies\\Windows Settings\\Security Settings\\Application Control Policies**, click **AppLocker**.
3.  Right-click **AppLocker**, and then click **Export Policy**.
4.  In the **Export Policy** dialog box, type a name for the exported policy (for example, the name of the GPO), select a location to save the policy, and then click **Save**.
5.  The **AppLocker** dialog box will notify you of how many rules were exported. Click **OK**.
