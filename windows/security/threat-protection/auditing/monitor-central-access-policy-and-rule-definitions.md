---
title: Monitor central access policy and rule definitions (Windows 10)
description: This topic for the IT professional describes how to monitor changes to central access policy and central access rule definitions when you use advanced security auditing options to monitor dynamic access control objects.
ms.assetid: 553f98a6-7606-4518-a3c5-347a33105130
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

# Monitor central access policy and rule definitions

**Applies to**
-   Windows 10

This topic for the IT professional describes how to monitor changes to central access policy and central access rule definitions when you use advanced security auditing options to monitor dynamic access control objects.
Central access policies and rules determine access permissions for multiple files on multiple file servers. Therefore, it is important to monitor changes to them. Like user claim and device claim definitions, central access policy and rule definitions reside in Active Directory Domain Services (AD DS), and they can be monitored just like any other object in Active Directory. Central access policies and rules are critical elements in a Dynamic Access Control deployment. These policies and rules are stored in AD DS, so they should be less likely to be tampered with than other network objects. However, it is important to monitor these objects for potential changes in security auditing and to verify that policies are being enforced.

Use the following procedures to configure settings to monitor changes to central access policy and central access rule definitions and to verify the changes. These procedures assume that you have configured and deployed Dynamic Access Control, including central access policies, claims, and other components, in your network. If you have not yet deployed Dynamic Access Control in your network, see [Deploy a Central Access Policy (Demonstration Steps)](https://technet.microsoft.com/library/hh846167.aspx).

>**Note:**  Your server might function differently based on the version and edition of the operating system that is installed, your account permissions, and your menu settings.
 
**To configure settings to monitor changes to central access policy and rule definitions**

1.  Sign in to your domain controller by using domain administrator credentials.
2.  In Server Manager, point to **Tools**, and then click **Group Policy Management**.
3.  In the console tree, right-click the default domain controller Group Policy Object, and then click **Edit**.
4.  Double-click **Computer Configuration**, click **Security Settings**, expand **Advanced Audit Policy Configuration**, expand **System Audit Policies**, click **DS Access**, and then double-click **Audit directory service changes**.
5.  Select the **Configure the following audit events** check box, select the **Success** check box (and the **Failure** check box, if desired), and then click **OK**.
6.  Close the Group Policy Management Editor.
7.  Open the Active Directory Administrative Center.
8.  Under Dynamic Access Control, right-click **Central Access Policies**, and then select **Properties**.
9.  Click the **Security** tab, click **Advanced** to open the **Advanced Security Settings** dialog box, and then click the **Auditing** tab.
10. Click **Add**, add a security auditing setting for the container, and then close all Security properties dialog boxes.

After you configure settings to monitor changes to central access policy and central access rule definitions, verify that the changes are being monitored.

**To verify that changes to central access policy and rule definitions are monitored**

1.  Sign in to your domain controller by using domain administrator credentials.
2.  Open the Active Directory Administrative Center.
3.  Under **Dynamic Access Control**, right-click **Central Access Policies**, and then click **Properties**.
4.  Click the **Security** tab, click **Advanced** to open the **Advanced Security Settings** dialog box, and then click the **Auditing** tab.
5.  Click **Add**, add a security auditing setting for the container, and then close all Security properties dialog boxes.
6.  In the **Central Access Policies** container, add a new central access policy (or select one that exists), click **Properties** in the **Tasks** pane, and then change one or more attributes.
7.  Click **OK**, and then close the Active Directory Administrative Center.
8.  In Server Manager, click **Tools**, and then click **Event Viewer**.
9.  Expand **Windows Logs**, and then click **Security**. Verify that event 4819 appears in the security log.

### Related resource

- [Using advanced security auditing options to monitor dynamic access control objects](using-advanced-security-auditing-options-to-monitor-dynamic-access-control-objects.md)
