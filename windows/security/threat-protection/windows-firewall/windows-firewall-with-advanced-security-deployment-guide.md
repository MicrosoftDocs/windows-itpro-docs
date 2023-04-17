---
title: Windows Defender Firewall with Advanced Security deployment overview (Windows)
description: Use this guide to deploy Windows Defender Firewall with Advanced Security for your enterprise to help protect devices and data that they share across a network.
ms.prod: windows-client
ms.topic: conceptual
ms.date: 09/08/2021
appliesto: 
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10 and later</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016 and later</a>
---

# Windows Defender Firewall with Advanced Security deployment overview


You can use the Windows Defender Firewall with Advanced Security MMC snap-in with devices running at least Windows Vista or Windows Server 2008 to help protect the devices and the data that they share across a network.

You can use Windows Defender Firewall to control access to the device from the network. You can create rules that allow or block network traffic in either direction based on your business requirements. You can also create IPsec connection security rules to help protect your data as it travels across the network from device to device.

## About this guide

This guide is intended for use by system administrators and system engineers. It provides detailed guidance for deploying a Windows Defender Firewall with Advanced Security design that you or an infrastructure specialist or system architect in your organization has selected.

Begin by reviewing the information in [Planning to Deploy Windows Defender Firewall with Advanced Security](planning-to-deploy-windows-firewall-with-advanced-security.md).

If you haven't yet selected a design, we recommend that you wait to follow the instructions in this guide until after you've reviewed the design options in the [Windows Defender Firewall with Advanced Security Design Guide](windows-firewall-with-advanced-security-design-guide.md) and selected the one most appropriate for your organization.

After you select your design and gather the required information about the zones (isolation, boundary, and encryption), operating systems to support, and other details, you can then use this guide to deploy your Windows Defender Firewall with Advanced Security design in your production environment. This guide provides steps for deploying any of the following primary designs that are described in the Design Guide:

-   [Basic Firewall Policy Design](basic-firewall-policy-design.md)

-   [Domain Isolation Policy Design](domain-isolation-policy-design.md)

-   [Server Isolation Policy Design](server-isolation-policy-design.md)

-   [Certificate-based Isolation Policy Design](certificate-based-isolation-policy-design.md)

Use the checklists in [Implementing Your Windows Defender Firewall with Advanced Security Design Plan](implementing-your-windows-firewall-with-advanced-security-design-plan.md) to determine how best to use the instructions in this guide to deploy your particular design.
> [!CAUTION]
> We recommend that you use the techniques documented in this guide only for GPOs that must be deployed to the majority of the devices in your organization, and only when the OU hierarchy in your Active Directory domain does not match the deployment needs of these GPOs. These characteristics are typical of GPOs for server and domain isolation scenarios, but are not typical of most other GPOs. When the OU hierarchy supports it, deploy a GPO by linking it to the lowest level OU that contains all of the accounts to which the GPO applies.

In a large enterprise environment with hundreds or thousands of GPOs, using this technique with too many GPOs can result in user or device accounts that are members of an excessive number of groups; this creation of accounts can result in network connectivity problems if network protocol limits are exceeded. 
 
## What this guide doesn't provide

This guide doesn't provide:

-   Guidance for creating firewall rules for specific network applications. For this information, see [Planning Settings for a Basic Firewall Policy](planning-settings-for-a-basic-firewall-policy.md) in the Windows Defender Firewall with Advanced Security Design Guide.

-   Guidance for setting up Active Directory Domain Services (AD DS) to support Group Policy.

-   Guidance for setting up certification authorities (CAs) to create certificates for certificate-based authentication.

For more information about Windows Defender Firewall with Advanced Security, see [Windows Defender Firewall with Advanced Security Overview](windows-firewall-with-advanced-security.md).
