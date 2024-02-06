---
title: Monitor central access policies on a file server
description: Learn how to monitor changes to the central access policies that apply to a file server when using advanced security auditing options.
ms.assetid: 126b051e-c20d-41f1-b42f-6cff24dcf20c
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

# Monitor the central access policies that apply on a file server


This article describes how to monitor changes to the central access policies (CAPs) that apply to a file server when using advanced security auditing options to monitor dynamic access control objects. CAPs are created on a domain controller and then applied to file servers through Group Policy management.

Use the following procedures to configure and verify security auditing settings that are used to monitor changes to the set of CAPs on a file server. The following procedures assume that you have configured and deployed dynamic access control, including CAPs and claims, in your network. If you haven't yet deployed dynamic access control in your network, see [Deploy a Central Access Policy (Demonstration Steps)](/windows-server/identity/solution-guides/deploy-a-central-access-policy--demonstration-steps-).

**To configure settings to monitor changes to central access policies**

1.  Sign in to your domain controller by using domain administrator credentials.
2.  In Server Manager, point to **Tools**, and then select **Group Policy Management**.
3.  In the console tree, select the flexible access Group Policy Object, and then select **Edit**.
4.  Select **Computer Configuration** > **Security Settings** > **Advanced Audit Policy Configuration** > **Policy Change** > **Other Policy Change Events**.

   > [!NOTE]
   > This policy setting monitors policy changes that might not be captured otherwise, such as CAP changes or trusted platform module configuration changes.
     
5.  Select the **Configure the following audit events** check box, select the **Success** check box (and the **Failure** check box, if desired), and then select **OK**.

After you modify the CAPs on the domain controller, verify that the changes have been applied to the file server and that the proper events are logged.

**To verify changes to the central access policies**

1.  Sign in to your domain controller by using domain administrator credentials.
2.  Open the Group Policy Management Console.
3.  Select **Default domain policy**, and then select **Edit**.
4.  Select **Computer Configuration** > **Policies**, and then select **Windows Settings**.
5.  Select **Security Settings** > **File system**, and then select **Manage CAPs**.
6.  In the wizard that appears, follow the instructions to add a new CAP, and then select **OK**.
7.  Use local administrator credentials to sign in to the server that hosts resources that are subject to the CAPs you changed.
8.  Select the Windows logo key+R, and then type **cmd** to open a command prompt window.

   > [!NOTE]
   > If the **User Account Control** dialog box appears, confirm that the action it displays is what you want, and then select **Yes**.
     
9.  Type **gpupdate /force**, and then select the Enter key.
10. In Server Manager, select **Tools**, and then select **Event Viewer**.
11. Expand **Windows Logs**, and then select **Security**. Verify that event 4819 appears in the security log.

## Related resources

- [Using advanced security auditing options to monitor dynamic access control objects](using-advanced-security-auditing-options-to-monitor-dynamic-access-control-objects.md)