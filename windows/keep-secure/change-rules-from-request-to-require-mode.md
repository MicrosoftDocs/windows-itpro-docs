---
title: Change Rules from Request to Require Mode (Windows 10)
description: Change Rules from Request to Require Mode
ms.assetid: ad969eda-c681-48cb-a2c4-0b6cae5f4cff
author: brianlic-msft
---

# Change Rules from Request to Require Mode


After you confirm that network traffic is being correctly protected by using IPsec, you can change the rules for the domain isolation and encryption zones to require, instead of request, authentication. Do not change the rules for the boundary zone; they must stay in request mode so that computers in the boundary zone can continue to accept connections from computers that are not part of the isolated domain.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

In this topic:

-   [Convert a rule in a GPO for Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2](#bkmk-section1)

-   [Convert a rule for an earlier version of Windows](#bkmk-section2)

-   [Refresh policy on the client computers to receive the modified GPOs](#bkmk-section3)

## <a href="" id="bkmk-section1"></a>


**To convert a rule from request to require mode for Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2**

1.  [Open the Group Policy Management Console to Windows Firewall with Advanced Security](../p_server_archive/open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2.  In the navigation pane, click **Connection Security Rules**.

3.  In the details pane, double-click the connection security rule that you want to modify.

4.  Click the **Authentication** tab.

5.  In the **Requirements** section, change **Authenticated mode** to **Require inbound and request outbound**, and then click **OK**.

## <a href="" id="bkmk-section3"></a>


**To apply the modified GPOs to the client computers**

1.  The next time each computer refreshes its Group Policy, it will receive the updated GPO and apply the modified rule. To force an immediate refresh, [Start a Command Prompt as an Administrator](../p_server_archive/start-a-command-prompt-as-an-administrator.md) and run the following command:

    ``` syntax
    gpupdate /force
    ```

2.  To verify that the modified GPO is correctly applied to the client computers, you can run one of the following commands:

    On computers that are running Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2, run the following command:

    ``` syntax
    gpresult /r /scope computer
    ```

3.  Examine the command output for the list of GPOs that are applied to the computer, and make sure that the list contains the GPOs you expect to see on that computer.

 

 





