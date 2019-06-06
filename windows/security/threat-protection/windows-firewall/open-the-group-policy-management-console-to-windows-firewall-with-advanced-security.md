---
title: Open the Group Policy Management Console to Windows Firewall with Advanced Security (Windows 10)
description: Open the Group Policy Management Console to Windows Firewall with Advanced Security
ms.assetid: 28afab36-8768-4938-9ff2-9d6dab702e98
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
ms.date: 04/19/2017
---

# Open the Group Policy Management Console to Windows Firewall with Advanced Security

**Applies to**
-   Windows 10
-   Windows Server 2016

Most of the procedures in this guide instruct you to use Group Policy settings for Windows Firewall with Advanced Security.

To open a GPO to Windows Firewall with Advanced Security

1.  Open the Group Policy Management console.

2.  In the navigation pane, expand **Forest:** *YourForestName*, expand **Domains**, expand *YourDomainName*, expand **Group Policy Objects**, right-click the GPO you want to modify, and then click **Edit**.

3.  In the navigation pane of the Group Policy Management Editor, navigate to **Computer Configuration** > **Policies** > **Windows Settings** > **Security Settings** > **Windows Firewall with Advanced Security** > **Windows Firewall with Advanced Security - LDAP://cn={***GUID***},cn=…**.
