---
title: Firewall Policy Design Example (Windows 10)
description: Firewall Policy Design Example
ms.assetid: 0dc3bcfe-7a4d-4a15-93a9-64b13bd775a7
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

# Firewall Policy Design Example

**Applies to**
-   Windows 10
-   Windows Server 2016

In this example, the fictitious company Woodgrove Bank is a financial services institution.

Woodgrove Bank has an Active Directory domain that provides Group Policy-based management for all their Windows devices. The Active Directory domain controllers also host Domain Name System (DNS) for host name resolution. Separate devices host Windows Internet Name Service (WINS) for network basic input/output system (NetBIOS) name resolution. A set of devices that are running UNIX provide the Dynamic Host Configuration Protocol (DHCP) services for automatic IP addressing.

Woodgrove Bank is in the process of migrating their devices from Windows Vista and Windows Server 2008 to Windows 10 and Windows Server 2016. A significant number of the devices at Woodgrove Bank continue to run Windows Vista and Windows Server 2008. Interoperability between the previous and newer operating systems must be maintained. Wherever possible, security features applied to the newer operating systems must also be applied to the previous operating systems.

A key line-of-business program called WGBank consists of a client program running on most of the desktop devices in the organization. This program accesses several front-end server devices that run the server-side part of WGBank. These front-end servers only do the processing — they do not store the data. The data is stored in several back-end database devices that are running Microsoft SQL Server.

## Design requirements

The network administrators want to implement Windows Defender Firewall with Advanced Security throughout their organization to provide an additional security layer to their overall security strategy. They want to create firewall rules that allow their business programs to operate, while blocking network traffic that is not wanted.

The following illustration shows the traffic protection needs for this design example.

![design example 1](images/wfas-designexample1.gif)

1.  The network infrastructure servers that are running services, such as Active Directory, DNS, DHCP, or WINS, can receive unsolicited inbound requests from network clients. The network clients can receive the responses from the infrastructure servers.

2.  The WGBank front-end servers can receive unsolicited inbound traffic from the client devices and the WGBank partner servers. The WGBank client devices and partner servers can receive the response.

3.  The WGBank front-end servers can send updated information to the client devices to support real-time display. The clients do not poll for this unsolicited traffic, but must be able to receive it.

4.  The WGBank back-end servers can receive SQL query requests from the WGBank front-end servers. The WGBank front-end servers can receive the corresponding responses.

5.  There is no direct communications between the client devices and the WGBank back-end devices.

6.  There is no unsolicited traffic from the WGBank back-end devices to the WGBank front-end servers.

7.  Company policy prohibits the use of peer-to-peer file transfer software. A recent review by the IT staff found that although the perimeter firewall does prevent most of the programs in this category from working, two programs are being used by staff members that do not require an outside server. Firewall rules must block the network traffic created by these programs.

8.  The WGBank partner servers can receive inbound requests from partner devices through the Internet.

Other traffic notes:

-   Devices are not to receive any unsolicited traffic from any computer other than specifically allowed above.

-   Other outbound network traffic from the client devices not specifically identified in this example is permitted.

## Design details


Woodgrove Bank uses Active Directory groups and Group Policy Objects to deploy the firewall settings and rules to the devices on their network. They know that they must deploy policies to the following collections of devices:

-   Client devices that run Windows 10, Windows 8, or Windows 7

-   WGBank front-end servers that run Windows Server 2016, Windows Server 2012 R2, Windows Server 2012 or Windows Server 2008 R2 (there are none in place yet, but their solution must support adding them)

-   WGBank partner servers that run Windows Server 2008

-   WGBank back-end SQL Server devices that run Windows Server 2008 (there are none in place yet, but their solution must support adding them)

-   Infrastructure servers that run Windows Server 2008

-   Active Directory domain controllers that run Windows Server 2008 R2 or Windows Server 2012

-   DHCP servers that run the UNIX operating system

After evaluating these sets of devices, and comparing them to the Active Directory organizational unit (OU) structure, Woodgrove Bank network administrators determined that there was not a good one-to-one match between the OUs and the sets. Therefore the firewall GPOs will not be linked directly to OUs that hold the relevant devices. Instead, the GPOs are linked to the domain container in Active Directory, and then WMI and group filters are attached to the GPO to ensure that it is applied to the correct devices.

Setting up groups as described here ensures that you do not have to know what operating system a computer is running before assigning it to a group. A combination of WMI filters and security group filters are used to ensure that members of the group receive the GPO appropriate for the version of Windows running on that computer. For some groups, you might have four or even five GPOs.

The following groups were created by using the Active Directory Users and Computers Microsoft Management Console (MMC) snap-in, and all devices that run Windows were added to the correct groups:

-   **CG\_FIREWALL\_ALLCOMPUTERS**. Add the predefined and system managed **Domain computers** group as a member of this group. All members of the FIREWALL\_ALLCOMPUTERS group receive an operating system-specific GPO with the common firewall rules applied to all devices.

    The two device types (client and server) are distinguished by using a WMI filters to ensure that only the policy intended for devices that are running a client version of Windows can be applied to that computer. A similar WMI filter on the server GPO ensures that only devices that are running server versions of Windows can apply that GPO. Each of the GPOs also have security group filters to prevent members of the group FIREWALL\_NO\_DEFAULT from receiving either of these two GPOs.

    -   Client devices receive a GPO that configures Windows Defender Firewall to enforce the default Windows Defender Firewall behavior (allow outbound, block unsolicited inbound). The client default GPO also includes the built-in firewall rule groups Core Networking and File and Printer Sharing. The Core Networking group is enabled for all profiles, whereas the File and Printer Sharing group is enabled for only the Domain and Private profiles. The GPO also includes inbound firewall rules to allow the WGBank front-end server dashboard update traffic, and rules to prevent company-prohibited programs from sending or receiving network traffic, both inbound and outbound.

    -   Server devices receive a GPO that includes similar firewall configuration to the client computer GPO. The primary difference is that the rules are enabled for all profiles (not just domain and private). Also, the rules for WGBank dashboard update are not included, because it is not needed on server devices.

    All rules are scoped to allow network traffic only from devices on Woodgrove Bank's corporate network.

-   **CG\_FIREWALL\_NO\_DEFAULT**. Members of this group do not receive the default firewall GPO. Devices are added to this group if there is a business requirement for it to be exempted from the default firewall behavior. The use of a group to represent the exceptions instead of the group members directly makes it easier to support the dynamic nature of the client computer population. A new computer joined to the domain is automatically given the appropriate default firewall GPO, unless it is a member of this group.

-   **CG\_FIREWALL\_WGB\_FE**. This group contains the computer accounts for all the WGBank front-end server devices. Members of this group receive a GPO that configures Windows Defender Firewall with inbound firewall rules to allow unsolicited WGBank client traffic. Devices in this group also receive the default firewall GPO.

-   **CG\_FIREWALL\_WGB\_SQL**. This group contains the computer accounts for all the WGBank back-end devices that run SQL Server. Members of this group receive a GPO that configures Windows Defender Firewall with inbound firewall rules to allow the SQL Server program to receive unsolicited queries only from the WGBank front-end servers. Devices in this group also receive the default firewall GPO.

-   **CG\_FIREWALL\_BOUNDARY\_WGBANKFE**. This group contains the computer accounts for the servers that host Web services that can be accessed from the Internet. Members of this group receive a GPO that adds an inbound firewall rule to allow inbound HTTP and HTTPS network traffic from any address, including the Internet. Devices in this group also receive the default firewall GPO.

-   **CG\_FIREWALL\_WINS**. This group contains the computer accounts for all the WINS server devices. Members of this group receive a GPO that configures Windows Defender Firewall with an inbound firewall rule to allow unsolicited inbound requests from WINS clients. Devices in this group also receive the default firewall GPO.

-   **CG\_FIREWALL\_ADDC**. This group contains all the computer accounts for the Active Directory domain controller server devices. Members of this group receive a GPO that configures Windows Defender Firewall with inbound firewall rules to allow unsolicited Active Directory client and server-to-server traffic. Devices in this group also receive the default firewall GPO.

In your own design, create a group for each computer role in your organization that requires different or additional firewall rules. For example, file servers and print servers require additional rules to allow the incoming network traffic for those functions. If a function is ordinarily performed on most devices on the network, you might consider adding devices performing those roles to the common default firewall GPO set, unless there is a security reason not to include it there.

**Next:** [Domain Isolation Policy Design Example](domain-isolation-policy-design-example.md)

