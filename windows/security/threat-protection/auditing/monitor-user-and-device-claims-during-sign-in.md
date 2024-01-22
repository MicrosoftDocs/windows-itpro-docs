---
title: Monitor user and device claims during sign-in
description: Learn how to monitor user and device claims that are associated with a user’s security token. This advice assumes you have deployed Dynamic Access Control.
ms.assetid: 71796ea9-5fe4-4183-8475-805c3c1f319f
ms.reviewer:
ms.author: vinpa
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.topic: reference
ms.date: 09/09/2021
---

# Monitor user and device claims during sign-in


This topic for the IT professional describes how to monitor user and device claims that are associated with a user’s security token when you're using advanced security auditing options to monitor dynamic access control objects.

Device claims are associated with the system that is used to access resources that are protected with Dynamic Access Control. User claims are attributes that are associated with a user. User claims and device claims are included in the user’s security token used at the sign-in stage. For example, information about Department, Company, Project, or Security clearances might be included in the token.

Use the following procedures to monitor changes to user claims and device claims in the user’s sign-in token and to verify the changes. These procedures assume that you have configured and deployed Dynamic Access Control, including central access policies, claims, and other components, in your network. If you haven't yet deployed Dynamic Access Control in your network, see [Deploy a Central Access Policy (Demonstration Steps)](/windows-server/identity/solution-guides/deploy-a-central-access-policy--demonstration-steps-).

>**Note:**  Your server might function differently based on the version and edition of the operating system that is installed, your account permissions, and your menu settings.

**To monitor user and device claims in user logon token**

1.  Sign in to your domain controller by using domain administrator credentials.
2.  In Server Manager, point to **Tools**, and then click **Group Policy Management**.
3.  In the console tree, right-click the flexible access Group Policy Object, and then click **Edit**.
4.  Double-click **Computer Configuration**, click **Security Settings**, expand **Advanced Audit Policy Configuration**, expand **System Audit Policies**, click **Logon/Logoff**, and then double-click **Audit User/Device claims**.
5.  Select the **Configure the following audit events** check box, select the **Success** check box (and the **Failure** check box, if desired), and then click **OK**.
6.  Close the Group Policy Management Editor.

After you configure settings to monitor user and device claims, verify that the changes are being monitored.

**To verify that user and device claims in user logon token are monitored**

1.  With local administrator credentials, sign in to a file server that is subject to the flexible access Group Policy Object.
2.  Open an elevated command prompt, and run the following command:

    `gpupdate force`

3.  From a client computer, connect to a file share on the file server as a user who has access permissions to the file server.
4.  On the file server, open Event Viewer, expand **Windows Logs**, and select the **Security** log. Look for event 4626, and confirm that it contains information about user claims and device claims.

### Related resource

- [Using advanced security auditing options to monitor dynamic access control objects](using-advanced-security-auditing-options-to-monitor-dynamic-access-control-objects.md)