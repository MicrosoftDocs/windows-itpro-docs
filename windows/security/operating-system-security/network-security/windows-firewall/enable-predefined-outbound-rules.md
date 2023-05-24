---
title: Enable Predefined Outbound Rules 
description: Learn to deploy predefined firewall rules that block outbound network traffic for common network functions in Windows Defender Firewall with Advanced Security.
ms.prod: windows-client
ms.topic: conceptual
ms.date: 09/07/2021
---

# Enable Predefined Outbound Rules


By default, Windows Defender Firewall with Advanced Security allows all outbound network traffic unless it matches a rule that prohibits the traffic. Windows Defender Firewall includes many predefined outbound rules that can be used to block network traffic for common networking roles and functions. When you install a new server role on a computer or enable a network feature on a client computer, the installer can install, but typically doesn't enable, outbound block rules for that role. When deploying firewall rules to the computers on the network, you can take advantage of these predefined rules instead of creating new ones. Using this advantage helps to ensure consistency and accuracy, because the rules have been thoroughly tested and are ready for use.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

To deploy predefined firewall rules that block outbound network traffic for common network functions

1.  Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2.  In the navigation pane, click **Outbound Rules**.

3.  Click **Action**, and then click **New rule**.

4.  On the **Rule Type** page of the New Inbound Rule Wizard, click **Predefined**, select the rule category from the list, and then click **Next**.

5.  On the **Predefined Rules** page, the list of rules defined in the group is displayed. They're all selected by default. For rules that you don't want to deploy, clear the check boxes next to the rules, and then click **Next**.

6.  On the **Action** page, select **Block the connection**, and then click **Finish**.

    The selected rules are added to the GPO.
