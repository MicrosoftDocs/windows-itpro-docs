---
title: Restrict Access to Only Specified Users or Computers (Windows 10)
description: Restrict Access to Only Specified Users or Computers
ms.assetid: a6106a07-f9e5-430f-8dbd-06d3bf7406df
author: brianlic-msft
---

# Restrict Access to Only Specified Users or Computers


Domain isolation (as described in the previous goal [Restrict Access to Only Trusted Computers](29805c5c-a8e4-4600-86b9-7abb9a068919)) prevents computers that are members of the isolated domain from accepting network traffic from untrusted computers. However, some computers on the network might host sensitive data that must be additionally restricted to only those users and computers that have a business requirement to access the data.

Windows Firewall with Advanced Security enables you to restrict access to computers and users that are members of domain groups authorized to access that computer. These groups are called *network access groups (NAGs)*. When a computer authenticates to a server, the server checks the group membership of the computer account and the user account, and grants access only if membership in the NAG is confirmed. Adding this check creates a virtual "secure zone" within the domain isolation zone. You can have multiple computers in a single secure zone, and it is likely that you will create a separate zone for each set of servers that have specific security access needs. Computers that are part of this server isolation zone are often also part of the encryption zone (see [Require Encryption When Accessing Sensitive Network Resources](261bd90d-5a8a-4de1-98c7-6d07e5d81267)).

Restricting access to only users and computers that have a business requirement can help you comply with regulatory and legislative requirements, such as those found in the Federal Information Security Management Act of 2002 (FISMA), the Sarbanes-Oxley Act of 2002, the Health Insurance Portability and Accountability Act of 1996 (HIPAA), and other government and industry regulations.

Windows Server 2012, Windows Server 2008 R2, Windows Server 2008, Windows 8, Windows 7, and Windows Vista enable you to restrict access by specifying either computer or user credentials.

The following illustration shows an isolated server, and examples of computers that can and cannot communicate with it. Computers that are outside the Woodgrove corporate network, or computers that are in the isolated domain but are not members of the required NAG, cannot communicate with the isolated server.

![isolated domain with network access groups](images/wfas-domainnag.gif)

This goal, which corresponds to [Server Isolation Policy Design](server-isolation-policy-design.md), provides the following features:

-   Isolated servers accept unsolicited inbound network traffic only from computers or users that are members of the NAG.

-   Isolated servers can be implemented as part of an isolated domain, and treated as another zone. Members of the zone group receive a GPO with rules that require authentication, and that specify that only network traffic authenticated as coming from a member of the NAG is allowed.

-   Server isolation can also be configured independently of an isolated domain. To do so, configure only the computers that must communicate with the isolated server with connection security rules to implement authentication and check NAG membership.

-   A server isolation zone can be simultaneously configured as an encryption zone. To do this, configure the GPO with rules that force encryption in addition to requiring authentication and restricting access to NAG members. For more information, see [Require Encryption When Accessing Sensitive Network Resources](require-encryption-when-accessing-sensitive-network-resources.md).

The following components are required for this deployment goal:

-   **Active Directory**: Active Directory supports centralized management of connection security rules by configuring the rules in one or more GPOs that can be automatically applied to all relevant computers in the domain. For more information about Active Directory, see [Additional Resources](additional-resources-wfasdesign.md).

**Next: **[Mapping Your Deployment Goals to a Windows Firewall with Advanced Security Design](mapping-your-deployment-goals-to-a-windows-firewall-with-advanced-security-design.md)

 

 





