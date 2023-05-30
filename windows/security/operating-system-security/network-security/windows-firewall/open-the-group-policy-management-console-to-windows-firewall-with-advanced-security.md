---
title: Group Policy Management of Windows Firewall with Advanced Security 
description: Group Policy Management of Windows Firewall with Advanced Security
ms.prod: windows-client
ms.collection: 
  - highpri
  - tier3
ms.topic: conceptual
ms.date: 09/08/2021
---

# Group Policy Management of Windows Firewall with Advanced Security


Most of the procedures in this guide instruct you to use Group Policy settings for Windows Firewall with Advanced Security.

To open a GPO to Windows Firewall with Advanced Security

1. Open the Group Policy Management console.

2. In the navigation pane, expand **Forest:** *YourForestName*, expand **Domains**, expand *YourDomainName*, expand **Group Policy Objects**, right-click the GPO you want to modify, and then click **Edit**.

3. In the navigation pane of the Group Policy Management Editor, navigate to **Computer Configuration** > **Policies** > **Windows Settings** > **Security Settings** > **Windows Firewall with Advanced Security** > **Windows Firewall with Advanced Security - LDAP://cn={**<em>GUID</em>**},cn=…**.
