---
title: Change Rules from Request to Require Mode (Windows 10)
description: Change Rules from Request to Require Mode
ms.assetid: ad969eda-c681-48cb-a2c4-0b6cae5f4cff
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
ms.date: 08/17/2017
---

# Change Rules from Request to Require Mode

**Applies to**
-   Windows 10
-   Windows Server 2016

After you confirm that network traffic is being correctly protected by using IPsec, you can change the rules for the domain isolation and encryption zones to require, instead of request, authentication. Do not change the rules for the boundary zone; they must stay in request mode so that devices in the boundary zone can continue to accept connections from devices that are not part of the isolated domain.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

In this topic:

-   [Convert a rule from request to require mode](#to-convert-a-rule-from-request-to-require-mode)

-   [Apply the modified GPOs to the client devices](#to-apply-the-modified-gpos-to-the-client-devices)

## To convert a rule from request to require mode

1.  Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2.  In the right navigation pane, click **Connection Security Rules**.

3.  In the details pane, double-click the connection security rule that you want to modify.

4.  Click the **Authentication** tab.

5.  In the **Requirements** section, change **Authenticated mode** to **Require inbound and request outbound**, and then click **OK**.

## To apply the modified GPOs to the client devices

1.  The next time each device refreshes its Group Policy, it will receive the updated GPO and apply the modified rule. To force an immediate refresh, run the following command from an elevated command prompt:

    ``` syntax
    gpupdate /force
    ```

2.  To verify that the modified GPO is correctly applied to the client devices, you can run the following command:

    ``` syntax
    gpresult /r /scope computer
    ```

3.  Examine the command output for the list of GPOs that are applied to the device, and make sure that the list contains the GPOs you expect to see on that device.
