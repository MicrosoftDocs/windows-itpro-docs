---
title: Configure Data Protection (Quick Mode) Settings (Windows 10)
description: Configure Data Protection (Quick Mode) Settings
ms.assetid: fdcb1b36-e267-4be7-b842-5df9a067c9e0
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

# Configure Data Protection (Quick Mode) Settings

**Applies to**
-   Windows 10
-   Windows Server 2016

This procedure shows you how to configure the data protection (quick mode) settings for connection security rules in an isolated domain or a standalone isolated server zone.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

**To configure quick mode settings**

1. Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2.  In the details pane on the main Windows Defender Firewall with Advanced Security page, click **Windows Defender Firewall Properties**.

3.  On the **IPsec Settings** tab, click **Customize**.

4.  In the **Data protection (Quick Mode)** section, click **Advanced**, and then click **Customize**.

5.  If you require encryption for all network traffic in the specified zone, then check **Require encryption for all connection security rules that use these settings**. Selecting this option disables the **Data integrity** section, and forces you to select only integrity algorithms that are combined with an encryption algorithm. If you do not select this option, then you can use only data integrity algorithms. Before selecting this option, consider the performance impact and the increase in network traffic that will result. We recommend that you use this setting only on network traffic that truly requires it, such as to and from computers in the encryption zone.

6.  If you did not select **Require encryption**, then select the data integrity algorithms that you want to use to help protect the data sessions between the two computers. If the data integrity algorithms displayed in the list are not what you want, then do the following:

    1.  From the left column, remove any of the data integrity algorithms that you do not want by selecting the algorithm and then clicking **Remove**.

    2.  Add any required data integrity algorithms by clicking **Add**, selecting the appropriate protocol (ESP or AH) and algorithm (SHA1 or MD5), selecting the key lifetime in minutes or sessions, and then clicking **OK**. We recommend that you do not include MD5 in any combination. It is included for backward compatibility only. We also recommend that you use ESP instead of AH if you have any devices on your network that use network address translation (NAT).

    3.  In **Key lifetime (in sessions)**, type the number of times that the quick mode session can be rekeyed. After this number is reached, the quick mode SA must be renegotiated. Be careful to balance performance with security requirements. Although a shorter key lifetime results in better security, it also reduces performance because of the more frequent renegotiating of the quick mode SA. We recommend that you use the default value unless your risk analysis indicates the need for a different value.

    4.  Click **OK** to save your algorithm combination settings.

    5.  After the list contains only the combinations you want, use the up and down arrows to the right of the list to rearrange them in the correct order for your design. The algorithm combination that is first in the list is tried first, and so on.

7.  Select the data integrity and encryption algorithms that you want to use to help protect the data sessions between the two computers. If the algorithm combinations displayed in the list are not what you want, then do the following:

    1.  From the second column, remove any of the data integrity and encryption algorithms that you do not want by selecting the algorithm combination and then clicking **Remove**.

    2.  Add any required integrity and encryption algorithm combinations by clicking **Add**, and then doing the following:

    3.  Select the appropriate protocol (ESP or AH). We recommend that you use ESP instead of AH if you have any devices on your network that use NAT.

    4.  Select the appropriate encryption algorithm. The choices include, in order of decreasing security: AES-256, AES-192, AES-128, 3DES, and DES. We recommend that you do not include DES in any combination. It is included for backward compatibility only.

    5.  Select the appropriate integrity algorithm (SHA1 or MD5). We recommend that you do not include MD5 in any combination. It is included for backward compatibility only.

    6.  In **Key lifetime (in minutes)**, type the number of minutes. When the specified number of minutes has elapsed, any IPsec operations between the two computers that negotiated this key will require a new key. Be careful to balance performance with security requirements. Although a shorter key lifetime results in better security, it also reduces performance because of the more frequent rekeying. We recommend that you use the default value unless your risk analysis indicates the need for a different value.

8.  Click **OK** three times to save your settings.
