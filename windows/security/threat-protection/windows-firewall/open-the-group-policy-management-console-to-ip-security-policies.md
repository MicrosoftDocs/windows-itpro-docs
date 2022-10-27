---
title: Open the Group Policy Management Console to IP Security Policies (Windows)
description: Learn how to open the Group Policy Management Console to IP Security Policies to configure GPOs for earlier versions of the Windows operating system.
ms.reviewer: jekrynit
ms.author: paoloma
ms.prod: windows-client
ms.localizationpriority: medium
author: paolomatarazzo
manager: aaroncz
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/08/2021
ms.technology: itpro-security
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
  - ✅ <b>Windows Server 2016</b>
  - ✅ <b>Windows Server 2019</b>
  - ✅ <b>Windows Server 2022</b>
---

# Open the Group Policy Management Console to IP Security Policies


Procedures in this guide that refer to GPOs for earlier versions of the Windows operating system instruct you to work with the IP Security Policy section in the Group Policy Management Console (GPMC).

**To open a GPO to the IP Security Policies section**

1. Open the Group Policy Management console.

2. In the navigation pane, expand **Forest:** *YourForestName*, expand **Domains**, expand *YourDomainName*, expand **Group Policy Objects**, right-click the GPO you want to modify, and then click **Edit**.

3. In the navigation pane of the Group Policy Management Editor, expand **Computer Configuration**, expand **Policies**, expand **Windows Settings**, expand **Security Settings**, and then click **IP Security Policies on Active Directory (**<em>YourDomainName</em>**)**.
