---
title: Configure the Rules to Require Encryption (Windows 10)
description: Configure the Rules to Require Encryption
ms.assetid: 07b7760f-3225-4b4b-b418-51787b0972a0
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

# Configure the Rules to Require Encryption

If you are creating a zone that requires encryption, you must configure the rules to add the encryption algorithms and delete the algorithm combinations that do not use encryption.

**Administrative credentials**

To complete this procedure, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

**To modify an authentication request rule to also require encryption**

1. Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2. In the navigation pane, click **Connection Security Rules**.

3. In the details pane, double-click the connection security rule you want to modify.

4. On the **Name** page, rename the connection security rule, edit the description to reflect the new use for the rule, and then click **OK**.

5. In the navigation pane, right-click **Windows Defender Firewall – LDAP://CN={**<em>guid</em>**}**, and then click **Properties**.

6. Click the **IPsec Settings** tab.

7. Under **IPsec defaults**, click **Customize**.

8. Under **Data protection (Quick Mode)**, click **Advanced**, and then click **Customize**.

9. Click **Require encryption for all connection security rules that use these settings**.

   This disables the data integrity rules section. Make sure the **Data integrity and encryption** list contains all of the combinations that your client devices will use to connect to members of the encryption zone. The client devices receive their rules through the GPO for the zone to which they reside. You must make sure that those rules contain at least one of the data integrity and encryption algorithms that are configured in this rule, or the client devices in that zone will not be able to connect to devices in this zone.

10. If you need to add an algorithm combination, click **Add**, and then select the combination of encryption and integrity algorithms. The options are described in [Configure Data Protection (Quick Mode) Settings](configure-data-protection-quick-mode-settings.md).

    **Note**  
    Not all of the algorithms available in Windows 8 or Windows Server 2012 and later can be selected in the Windows Defender Firewall with Advanced Security user interface. To select them, you can use Windows PowerShell.

    Quick mode settings can also be configured on a per-rule basis, but not by using the Windows Defender Firewall user interface. Instead, you can create or modify the rules by using Windows PowerShell.

    For more info, see [Windows Defender Firewall with Advanced Security Administration with Windows PowerShell](windows-firewall-with-advanced-security-administration-with-windows-powershell.md)

11. During negotiation, algorithm combinations are proposed in the order shown in the list. Make sure that the more secure combinations are at the top of the list so that the negotiating devices select the most secure combination that they can jointly support.

12. Click **OK** three times to save your changes.
