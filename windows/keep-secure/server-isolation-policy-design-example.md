---
title: Server Isolation Policy Design Example (Windows 10)
description: Server Isolation Policy Design Example
ms.assetid: 337e5f6b-1ec5-4b83-bee5-d0aea1fa5fc6
author: brianlic-msft
---

# Server Isolation Policy Design Example


This design example continues to use the fictitious company Woodgrove Bank, as described in the [Firewall Policy Design Example](../p_server_archive/firewall-policy-design-example.md) section and the [Domain Isolation Policy Design Example](../p_server_archive/domain-isolation-policy-design-example.md) section.

In addition to the protections provided by the firewall and domain isolation, Woodgrove Bank wants to provide additional protection to the computers that are running Microsoft SQL Server for the WGBank program. They contain personal data, including each customer's financial history. Government and industry rules and regulations specify that access to this information must be restricted to only those users who have a legitimate business need. This includes a requirement to prevent interception of and access to the information when it is in transit over the network.

The information presented by the WGBank front-end servers to the client computers, and the information presented by the WGPartner servers to the remote partner computers, are not considered sensitive for the purposes of the government regulations, because they are processed to remove sensitive elements before transmitting the data to the client computers.

In this guide, the examples show server isolation layered on top of a domain isolation design. If you have an isolated domain, the client computers are already equipped with GPOs that require authentication. You only have to add settings to the isolated server(s) to require authentication on inbound connections, and to check for membership in the NAG. The connection attempt succeeds only if NAG membership is confirmed.

## Server isolation without domain isolation


Server isolation can also be deployed by itself, to only the computers that must participate. The GPO on the server is no different from the one discussed in the previous paragraph for a server in an existing isolated domain. The difference is that you must also deploy a GPO with supporting connection security rules to the clients that must be able to communicate with the isolated server. Because those computers must be members of the NAG, that group can also be used in a security group filter on the client GPO. That GPO must contain rules that support the authentication requirements of the isolated server.

In short, instead of applying the client GPO to all clients in the domain, you apply the GPO to only the members of the NAG.

If you do not have an Active Directory domain then you can manually apply the connection security rules to the client computers, or you can use a netsh command-line script (or Windows PowerShell in Windows 8 and Windows Server 2012) to help automate the configuration of the rules on larger numbers of computers. If you do not have an Active Directory domain, you cannot use the Kerberos V5 protocol, but instead must provide the clients and the isolated servers with certificates that are referenced in the connection security rules.

## Design requirements


In addition to the protection provided by the firewall rules and domain isolation described in the previous design examples, the network administrators want to implement server isolation to help protect the sensitive data stored on the computers that run SQL Server.

The following illustration shows the traffic protection needs for this design example.

![isolated server example](images/wfas-design3example1.gif)

1.  Access to the SQL Server computers must be restricted to only those computer or user accounts that have a business requirement to access the data. This includes the service accounts that are used by the WGBank front-end servers, and administrators of the SQL Server computers. In addition, access is only granted when it is sent from an authorized computer. Authorization is determined by membership in a network access group (NAG).

2.  All network traffic to and from the SQL Server computers must be encrypted.

3.  Client computers or users whose accounts are not members of the NAG cannot access the isolated servers.

**Other traffic notes:**

-   All of the design requirements shown in the [Firewall Policy Design Example](../p_server_archive/firewall-policy-design-example.md) section are still enforced.

-   All of the design requirements shown in the [Domain Isolation Policy Design Example](../p_server_archive/domain-isolation-policy-design-example.md) section are still enforced.

## Design details


Woodgrove Bank uses Active Directory groups and GPOs to deploy the server isolation settings and rules to the computers on its network.

As in the previously described policy design examples, GPOs to implement the domain isolation environment are linked to the domain container in Active Directory, and then WMI filters and security group filters are attached to GPOs to ensure that the correct GPO is applied to each computer. The following groups were created by using the Active Directory Users and Computers snap-in, and all computers that run Windows were added to the correct groups.

-   **CG\_SRVISO\_WGBANK\_SQL**. This group contains the computer accounts for the computers that run SQL Server. Members of this group receive a GPO with firewall and connections security rules that require that only users who are members of the group CG\_NAG\_SQL\_USERS can access the server, and only when they are using a computer that is a member of the group CG\_NAG\_SQL\_COMPUTERS.

**Note**  
If you are designing GPOs for only Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2, you can design your GPOs in nested groups. For example, you can make the boundary group a member of the isolated domain group, so that it receives the firewall and basic isolated domain settings through that nested membership, with only the changes supplied by the boundary zone GPO. However, computers that are running older versions of Windows can only support a single IPsec policy being active at a time. The policies for each GPO must be complete (and to a great extent redundant with each other), because you cannot layer them as you can in the newer versions of Windows. For simplicity, this guide describes the techniques used to create the independent, non-layered policies. We recommend that you create and periodically run a script that compares the memberships of the groups that must be mutually exclusive and reports any computers that are incorrectly assigned to more than one group.

 

Network access groups (NAGs) are not used to determine which GPOs are applied to a computer. Instead, these groups determine which users and computers can access the services on the isolated server.

-   **CG\_NAG\_SQL\_COMPUTERS**. This network access group contains the computer accounts that are able to access the computers running SQL Server hosting the WGBank data. Members of this group include the WGBank front-end servers, and some client computers from which SQL Server administrators are permitted to work on the servers.

-   **CG\_NAG\_SQL\_USERS**. This network access group contains the user accounts of users who are permitted to access the SQL Server computers that host the WGBank data. Members of this group include the service account that the WGBank front-end program uses to run on its computers, and the user accounts for the SQL Server administration team members.

**Note**  
You can use a single group for both user and computer accounts. Woodgrove Bank chose to keep them separate for clarity.

 

If Woodgrove Bank wants to implement server isolation without domain isolation, the CG\_NAG\_SQL\_COMPUTERS group can also be attached as a security group filter on the GPOs that apply connection security rules to the client computers. By doing this, all the computers that are authorized to access the isolated server also have the required connection security rules.

You do not have to include the encryption-capable rules on all computers. Instead, you can create GPOs that are applied only to members of the NAG, in addition to the standard domain isolation GPO, that contain connection security rules to support encryption.

**Next: **[Certificate-based Isolation Policy Design Example](../p_server_archive/certificate-based-isolation-policy-design-example.md)

 

 





