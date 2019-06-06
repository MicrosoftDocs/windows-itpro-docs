---
title: Create an Authentication Exemption List Rule (Windows 10)
description: Create an Authentication Exemption List Rule
ms.assetid: 8f6493f3-8527-462a-82c0-fd91a6cb5dd8
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

# Create an Authentication Exemption List Rule

**Applies to**
-   Windows 10
-   Windows Server 2016

In almost any isolated server or isolated domain scenario, there are some devices or devices that cannot communicate by using IPsec. This procedure shows you how to create rules that exempt those devices from the authentication requirements of your isolation policies.

**Important**  
Adding devices to the exemption list for a zone reduces security because it permits devices in the zone to send network traffic that is unprotected by IPsec to the devices on the list. As discussed in the Windows Defender Firewall with Advanced Security Design Guide, you must add only managed and trusted devices to the exemption list.

 
**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

**To create a rule that exempts specified hosts from authentication**

1.  Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2.  In the navigation pane, click **Connection Security Rules**.

3.  Click **Action**, and then click **New Rule**.

4.  On the **Rule Type** page of the New Connection Security Rule Wizard, click **Authentication exemption**, and then click **Next**.

5.  On the **Exempt Computers** page, to create a new exemption, click **Add**. To modify an existing exemption, click it, and then click **Edit**.

6.  In the **IP Address** dialog box, do one of the following:

    -   To add a single IP address, click **This IP address or subnet**, type the IP address of the host in the text box, and then click **OK**.

    -   To add an entire subnet by address, click **This IP address or subnet**, and then type the IP address of the subnet, followed by a forward slash (/) and the number of bits in the corresponding subnet mask. For example, **10.50.0.0/16** represents the class B subnet that begins with address 10.50.0.1, and ends with address **10.50.255.254**. Click **OK** when you are finished.

    -   To add the local device’s subnet, click **Predefined set of computers**, select **Local subnet** from the list, and then click **OK**.

        >**Note:**  If you select the local subnet from the list rather than typing the subnet address in manually, the device automatically adjusts the active local subnet to match the device’s current IP address.
        
    -   To add a discrete range of addresses that do not correspond to a subnet, click **This IP address range**, type the beginning and ending IP addresses in the **From** and **To** text boxes, and then click **OK**.

    -   To exempt all of the remote hosts that the local device uses for a specified network service, click **Predefined set of computers**, select the network service from the list, and then click **OK**.

7.  Repeat steps 5 and 6 for each exemption that you need to create.

8.  Click **Next** when you have created all of the exemptions.

9.  On the **Profile** page, check the profile for each network location type to which this set of exemptions applies, and then click **Next**.

    >**Caution:**  If all of the exemptions are on the organization’s network and that network is managed by an Active Directory domain, then consider restricting the rule to the Domain profile only. Selecting the wrong profile can reduce the protection for your computer because any computer with an IP address that matches an exemption rule will not be required to authenticate.

10. On the **Name** page, type the name of the exemption rule, type a description, and then click **Finish**.
