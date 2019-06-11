---
title: Configure Key Exchange (Main Mode) Settings (Windows 10)
description: Configure Key Exchange (Main Mode) Settings
ms.assetid: 5c593b6b-2cd9-43de-9b4e-95943fe82f52
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

# Configure Key Exchange (Main Mode) Settings

**Applies to**
-   Windows 10
-   Windows Server 2016

This procedure shows you how to configure the main mode key exchange settings used to secure the IPsec authentication traffic.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

**To configure key exchange settings**

1. Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2.  In the details pane on the main Windows Defender Firewall with Advanced Security page, click **Windows Defender Firewall Properties**.

3.  On the **IPsec Settings** tab, click **Customize**.

4.  In the **Key exchange (Main Mode)** section, click **Advanced**, and then click **Customize**.

5.  Select the security methods to be used to help protect the main mode negotiations between the two devices. If the security methods displayed in the list are not what you want, then do the following:

    **Important**  
    In Windows Vista, Windows Server 2008, or later, you can specify only one key exchange algorithm. This means that if you want to communicate by using IPsec with another device running Windows 8 or Windows Server 2012, then you must select the same key exchange algorithm on both devices.

    Also, if you create a connection security rule that specifies an option that requires AuthIP instead of IKE, then only the one combination of the top integrity and encryption security method are used in the negotiation. Make sure that all of your devices that are running at least Windows Vista and Windows Server 2008 have the same methods at the top of the list and the same key exchange algorithm selected.

    **Note**  
    When AuthIP is used, no Diffie-Hellman key exchange protocol is used. Instead, when Kerberos V5 authentication is requested, the Kerberos V5 service ticket secret is used in place of a Diffie-Hellman value. When either certificate authentication or NTLM authentication is requested, a transport level security (TLS) session is established, and its secret is used in place of the Diffie-Hellman value. This happens no matter which Diffie-Hellman key exchange protocol you select.

    1.  Remove any of the security methods that you do not want by selecting the method and then clicking **Remove**.

    2.  Add any required security method combinations by clicking **Add**, selecting the appropriate encryption algorithm and integrity algorithm from the lists, and then clicking **OK**.

        >**Caution:**  We recommend that you do not include MD5 or DES in any combination. They are included for backward compatibility only.

    3.  After the list contains only the combinations you want, use the up and down arrows to the right of the list to arrange them in the order of preference. The combination that appears first in the list is tried first, and so on.

6.  From the list on the right, select the key exchange algorithm that you want to use.

    >**Caution:**  We recommend that you do not use Diffie-Hellman Group 1. It is included for backward compatibility only. 

7.  In **Key lifetime (in minutes)**, type the number of minutes. When the specified number of minutes has elapsed, any IPsec operation between the two devices requires a new key.

    >**Note:**  You need to balance performance with security requirements. Although a shorter key lifetime results in better security, it also reduces performance.

8.  In **Key lifetime (in sessions)**, type the number of sessions. After the specified number of quick mode sessions have been created within the security association protected by this key, IPsec requires a new key.

9.  Click **OK** three times to save your settings.
