---
title: Windows Firewall with Advanced Security Deployment Guide (Windows 10)
description: Windows Firewall with Advanced Security Deployment Guide
ms.assetid: 56b51b97-1c38-481e-bbda-540f1216ad56
author: brianlic-msft
---

# Windows Firewall with Advanced Security Deployment Guide


You can use the Windows Firewall with Advanced Security MMC snap-in in Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2 to help protect the computers and the data that they share across a network.

You can use Windows Firewall to control access to the computer from the network. You can create rules that allow or block network traffic in either direction based on your business requirements. You can also create IPsec connection security rules to help protect your data as it travels across the network from computer to computer.

## About this guide


This guide is intended for use by system administrators and system engineers. It provides detailed guidance for deploying a Windows Firewall with Advanced Security design that you or an infrastructure specialist or system architect in your organization has selected.

Begin by reviewing the information in [Planning to Deploy Windows Firewall with Advanced Security](planning-to-deploy-windows-firewall-with-advanced-security.md).

If you have not yet selected a design, we recommend that you wait to follow the instructions in this guide until after you have reviewed the design options in the [Windows Firewall with Advanced Security Design Guide](windows-firewall-with-advanced-security-design-guide.md) and selected the one most appropriate for your organization.

After you select your design and gather the required information about the zones (isolation, boundary, and encryption), operating systems to support, and other details, you can then use this guide to deploy your Windows Firewall with Advanced Security design in your production environment. This guide provides steps for deploying any of the following primary designs that are described in the Design Guide:

-   [Basic Firewall Policy Design](basic-firewall-policy-design.md)

-   [Domain Isolation Policy Design](domain-isolation-policy-design.md)

-   [Server Isolation Policy Design](server-isolation-policy-design.md)

-   [Certificate-based Isolation Policy Design](certificate-based-isolation-policy-design.md)

Use the checklists in [Implementing Your Windows Firewall with Advanced Security Design Plan](implementing-your-windows-firewall-with-advanced-security-design-plan.md) to determine how best to use the instructions in this guide to deploy your particular design.

**Caution**  
We recommend that you use the techniques documented in this guide only for GPOs that must be deployed to the majority of the computers in your organization, and only when the OU hierarchy in your Active Directory domain does not match the deployment needs of these GPOs. These characteristics are typical of GPOs for server and domain isolation scenarios, but are not typical of most other GPOs. When the OU hierarchy supports it, deploy a GPO by linking it to the lowest level OU that contains all of the accounts to which the GPO applies.

In a large enterprise environment with hundreds or thousands of GPOs, using this technique with too many GPOs can result in user or computer accounts that are members of an excessive number of groups; this can result in network connectivity problems if network protocol limits are exceeded. For more information about the problems associated with excessive group membership, see the following articles in the Microsoft Knowledge Base:

-   Article 327825, “New resolution for problems with Kerberos authentication when users belong to many groups” (<http://go.microsoft.com/fwlink/?linkid=128367>)

-   Article 263693 “Group Policy may not be applied to users belonging to many groups” (<http://go.microsoft.com/fwlink/?linkid=128368>)

-   Article 328889 “Users who are members of more than 1,015 groups may fail logon authentication” (<http://go.microsoft.com/fwlink/?linkid=128369>)

 

## What this guide does not provide


This guide does not provide:

-   Guidance for creating firewall rules for specific network applications. For this information, see [Planning Settings for a Basic Firewall Policy](planning-settings-for-a-basic-firewall-policy.md) in the Windows Firewall with Advanced Security Design Guide.

-   Guidance for setting up Active Directory Domain Services (AD DS) to support Group Policy. For more information, see Active Directory Domain Services (<http://go.microsoft.com/fwlink/?linkid=102573>) and Group Policy (<http://go.microsoft.com/fwlink/?linkid=93542>).

-   Guidance for setting up certification authorities (CAs) to create certificates for certificate-based authentication. For this information, see Active Directory Certificate Services (<http://go.microsoft.com/fwlink/?linkid=110820>).

## Overview of Windows Firewall with Advanced Security


Windows Firewall with Advanced Security in Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2 is a stateful host firewall that helps secure the computer by allowing you to create rules that determine which network traffic is permitted to enter the computer from the network and which network traffic the computer is allowed to send to the network. Windows Firewall with Advanced Security also supports Internet Protocol security (IPsec), which you can use to require authentication from any computer that is attempting to communicate with your computer. When authentication is required, computers that cannot be authenticated as a trusted computer cannot communicate with your computer. You can also use IPsec to require that certain network traffic is encrypted to prevent it from being read by network packet analyzers that could be attached to the network by a malicious user.

The Windows Firewall with Advanced Security MMC snap-in is more flexible and provides much more functionality than the consumer-friendly Windows Firewall interface found in the Control Panel. Both interfaces interact with the same underlying services, but provide different levels of control over those services. While the Windows Firewall Control Panel program can protect a single computer in a home environment, it does not provide enough centralized management or security features to help secure more complex network traffic found in a typical business enterprise environment.

For more information about Windows Firewall with Advanced Security, see [Windows Firewall with Advanced Security Overview](http://technet.microsoft.com/library/hh831365.aspx) at http://technet.microsoft.com/library/hh831365.aspx.

 

 





