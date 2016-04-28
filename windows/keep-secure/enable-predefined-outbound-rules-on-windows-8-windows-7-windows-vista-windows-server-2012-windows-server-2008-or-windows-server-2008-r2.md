---
title: Enable Predefined Outbound Rules on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2 (Windows 10)
description: Enable Predefined Outbound Rules on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2
ms.assetid: 71cc4157-a1ed-41d9-91e4-b3140c67c1be
author: brianlic-msft
---

# Enable Predefined Outbound Rules on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2


By default, Windows Firewall with Advanced Security allows all outbound network traffic unless it matches a rule that prohibits the traffic. Windows Firewall with Advanced Security includes many predefined outbound rules that can be used to block network traffic for common networking roles and functions. When you install a new server role on a computer or enable a network feature on a client computer, the installer can install, but typically does not enable, outbound block rules for that role. When deploying firewall rules to the computers on the network, you can take advantage of these predefined rules instead of creating new ones. Doing this helps to ensure consistency and accuracy, because the rules have been thoroughly tested and are ready for use.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

**To deploy predefined firewall rules that block outbound network traffic for common network functions**

1.  [Open the Group Policy Management Console to Windows Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2.  In the navigation pane, click **Outbound Rules**.

3.  Click **Action**, and then click **New rule**.

4.  On the **Rule Type** page of the New Inbound Rule Wizard, click **Predefined**, select the rule category from the list, and then click **Next**.

5.  On the **Predefined Rules** page, the list of rules defined in the group is displayed. They are all selected by default. For rules that you do not want to deploy, clear the check boxes next to the rules, and then click **Next**.

6.  On the **Action** page, select **Block the connection**, and then click **Finish**.

    The selected rules are added to the GPO.

    **Note**  
    If this GPO is targeted at server computers running Windows Server 2008 that never move, consider modifying the rules to apply to all network location type profiles. This prevents an unexpected change in the applied rules if the network location type changes due to the installation of a new network card or the disconnection of an existing network card’s cable. A disconnected network card is automatically assigned to the Public network location type.

     

If you arrived at this page by clicking a link in a checklist, use your browser’s **Back** button to return to the checklist.

 

 





