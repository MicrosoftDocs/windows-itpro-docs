---
title: Monitor central access policy and rule definitions
description: Learn how to use advanced security auditing options to monitor changes to central access policy and central access rule definitions.
ms.assetid: 553f98a6-7606-4518-a3c5-347a33105130
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

# Monitor central access policy and rule definitions


This article for IT professionals describes how to monitor changes to central access policy and central access rule definitions when you use advanced security auditing options to monitor dynamic access control objects.

Central access policies and rules determine access permissions for files on multiple file servers, so it's important to monitor changes to them. Like user claim and device claim definitions, central access policy and rule definitions reside in Active Directory Domain Services (AD DS). You can monitor them just like any other object in Active Directory. These policies and rules are critical elements in a Dynamic Access Control deployment. They're stored in AD DS, so they're less likely to be tampered with than other network objects. But it's important to monitor them for potential changes in security auditing and to verify that policies are being enforced.

Follow the procedures in this article to configure settings to monitor changes to central access policy and central access rule definitions and to verify the changes. These procedures assume that you've configured and deployed Dynamic Access Control, including central access policies, claims, and other components, in your network. If you haven't yet deployed Dynamic Access Control in your network, see [Deploy a Central Access Policy (demonstration steps)](/windows-server/identity/solution-guides/deploy-a-central-access-policy--demonstration-steps-).

> [!NOTE]
> Your server might function differently based on the version and edition of the operating system that is installed, your account permissions, and your menu settings.

**Configure settings to monitor central access policy and rule definition changes**

1.  Sign in to your domain controller by using domain administrator credentials.
2.  In Server Manager, point to **Tools** and select **Group Policy Management**.
3.  In the console tree, right-click the default domain controller Group Policy Object, and then select **Edit**.
4.  Double-click **Computer Configuration** and select **Security Settings**. Expand **Advanced Audit Policy Configuration** and **System Audit Policies**, select **DS Access**, and then double-click **Audit directory service changes**.
5.  Select the **Configure the following audit events** and **Success** check boxes (and the **Failure** check box, if you want). Then select **OK**.
6.  Close the Group Policy Management Editor.
7.  Open the Active Directory Administrative Center.
8.  Under Dynamic Access Control, right-click **Central Access Policies**, and then select **Properties**.
9.  Select the **Security** tab, select **Advanced** to open the **Advanced Security Settings** dialog box, and then select the **Auditing** tab.
10. Select **Add**, add a security auditing setting for the container, and then close all the security properties dialog boxes.

After you configure settings to monitor changes to central access policy and central access rule definitions, verify that the changes are being monitored.

**Verify that central access policy and rule definition changes are monitored**

1.  Sign in to your domain controller by using domain administrator credentials.
2.  Open the Active Directory Administrative Center.
3.  Under **Dynamic Access Control**, right-click **Central Access Policies**, and then select **Properties**.
4.  Select the **Security** tab, select **Advanced** to open the **Advanced Security Settings** dialog box, and then select the **Auditing** tab.
5.  Select **Add**, add a security auditing setting for the container, and then close all security properties dialog boxes.
6.  In the **Central Access Policies** container, add a new central access policy (or select one that already exists). Select **Properties** in the **Tasks** pane, and then change one or more attributes.
7.  Select **OK**, and then close the Active Directory Administrative Center.
8.  In Server Manager, select **Tools** and then **Event Viewer**.
9.  Expand **Windows Logs**, and then select **Security**. Verify that event 4819 appears in the security log.

### Related topics

- [Using advanced security auditing options to monitor dynamic access control objects](using-advanced-security-auditing-options-to-monitor-dynamic-access-control-objects.md)