---
title: Require Encryption When Accessing Sensitive Network Resources (Windows 10)
description: Require Encryption When Accessing Sensitive Network Resources
ms.assetid: da980d30-a68b-4e2a-ba63-94726355ce6f
author: brianlic-msft
---

# Require Encryption When Accessing Sensitive Network Resources


The use of authentication in the previously described goal ([Restrict Access to Only Trusted Computers](restrict-access-to-only-trusted-computers.md)) enables a computer in the isolated domain to block traffic from untrusted computers. However, it does not prevent an untrusted computer from eavesdropping on the network traffic shared between two trusted computers, because by default network packets are not encrypted.

For computers that share sensitive information over the network, Windows Firewall with Advanced Security allows you to require that all such network traffic be encrypted. Using encryption can help you comply with regulatory and legislative requirements such as those found in the Federal Information Security Management Act of 2002 (FISMA), the Sarbanes-Oxley Act of 2002, the Health Insurance Portability and Accountability Act of 1996 (HIPAA), and other government and industry regulations. By creating connection security rules that apply to computers that host and exchange sensitive data, you can help protect the confidentiality of that data by encrypting it.

The following illustration shows an encryption zone in an isolated domain. The rules that implement both the isolated domain and the different zones are deployed by using Group Policy and Active Directory.

![encryption zone in an isolated domain](images/wfas-domainisoencrypt.gif)

This goal provides the following benefits:

-   Computers in the encryption zone require authentication to communicate with other computers. This works no differently from the domain isolation goal and design. For more information, see [Restrict Access to Only Trusted Computers](restrict-access-to-only-trusted-computers.md).

-   Computers in the encryption zone require that all inbound and outbound network traffic be encrypted.

    For example, Woodgrove Bank processes sensitive customer data on a computer that must be protected from eavesdropping by computers on the network. Connection security rules specify that all traffic must be encrypted by a sufficiently complex encryption algorithm to help protect the data.

-   Computers in the encryption zone are often good candidates for server isolation, where access is limited to only computer accounts and user accounts that are members of an authorized access group. In many organizations, the encryption zone and the server isolation zone are one and the same. For more information, see [Restrict Access to Only Specified Users or Computers](restrict-access-to-only-specified-users-or-computers.md).

The following components are required for this deployment goal:

-   **Active Directory**: Active Directory supports centralized management of connection security rules by configuring the rules in one or more GPOs that can be automatically applied to all relevant computers in the domain. For more information about Active Directory, see [Additional Resources](additional-resources-wfasdesign.md).

**Next: **[Restrict Access to Only Specified Users or Computers](restrict-access-to-only-specified-users-or-computers.md)

 

 





