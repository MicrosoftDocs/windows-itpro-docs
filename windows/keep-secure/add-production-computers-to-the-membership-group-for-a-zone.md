---
title: Add Production Computers to the Membership Group for a Zone (Windows 10)
description: Add Production Computers to the Membership Group for a Zone
ms.assetid: 7141de15-5840-4beb-aabe-21c1dd89eb23
author: brianlic-msft
---

# Add Production Computers to the Membership Group for a Zone


After you test the GPOs for your design on a small set of computers, you can deploy them to the production computers.

**Caution**  
For GPOs that contain connection security rules that prevent unauthenticated connections, be sure to set the rules to request, not require, authentication during testing. After you deploy the GPO and confirm that all of your computers are successfully communicating by using authenticated IPsec, then you can modify the GPO to require authentication. Do not change the boundary zone GPO to require mode.

 

The method discussed in this guide uses the **Domain Computers** built-in group. The advantage of this method is that all new computers that are joined to the domain automatically receive the isolated domain GPO. To do this successfully, you must make sure that the WMI filters and security group filters exclude computers that must not receive the GPOs. Use computer groups that deny both read and apply Group Policy permissions to the GPOs, such as a group used in the CG\_DOMISO\_NOIPSEC example design. Computers that are members of some zones must also be excluded from applying the GPOs for the main isolated domain. For more information, see the "Prevent members of a group from applying a GPO" section in [Assign Security Group Filters to the GPO](assign-security-group-filters-to-the-gpo.md).

Without such a group (or groups), you must either add computers individually or use the groups containing computer accounts that are available to you.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the membership of the group for the GPO.

In this topic:

-   [Add the group Domain Computers to the GPO membership group](#bkmk-toadddomaincomputerstothegpomembershipgroup)

-   [Refresh Group Policy on the computers in the membership group](#bkmk-torefreshgrouppolicyonacomputer)

-   [Check which GPOs apply to a computer](#bkmk-toseewhatgposareappliedtoacomputer)

## <a href="" id="bkmk-toadddomaincomputerstothegpomembershipgroup"></a>


**To add domain computers to the GPO membership group**

1.  On a computer that has the Active Directory management tools installed, click the **Start** charm, then click the **Active Directory Users and Computers** tile.

2.  In the navigation pane, expand **Active Directory Users and Computers**, expand *YourDomainName*, and then the container in which you created the membership group.

3.  In the details pane, double-click the GPO membership group to which you want to add computers.

4.  Select the **Members** tab, and then click **Add**.

5.  Type **Domain Computers** in the text box, and then click **OK**.

6.  Click **OK** to close the group properties dialog box.

After a computer is a member of the group, you can force a Group Policy refresh on the computer.

## <a href="" id="bkmk-torefreshgrouppolicyonacomputer"></a>


**To refresh Group Policy on a computer**

-   For a computer that is running Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2, [Start a Command Prompt as an Administrator](start-a-command-prompt-as-an-administrator.md), and then type the following command:

    ``` syntax
    gpupdate /target:computer /force
    ```

After Group Policy is refreshed, you can see which GPOs are currently applied to the computer.

## <a href="" id="bkmk-toseewhatgposareappliedtoacomputer"></a>


**To see which GPOs are applied to a computer**

-   For a computer that is running Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2, [Start a Command Prompt as an Administrator](start-a-command-prompt-as-an-administrator.md), and then type the following command:

    ``` syntax
    gpresult /r /scope:computer
    ```

 

 





