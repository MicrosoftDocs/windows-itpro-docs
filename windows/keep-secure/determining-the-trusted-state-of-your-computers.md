---
title: Determining the Trusted State of Your Computers (Windows 10)
description: Determining the Trusted State of Your Computers
ms.assetid: 3e77f0d0-43aa-47dd-8518-41ccdab2f2b2
author: brianlic-msft
---

# Determining the Trusted State of Your Computers


After obtaining information about the computers that are currently part of the IT infrastructure, you must determine at what point a computer is considered trusted. The term *trusted* can mean different things to different people. Therefore, you must communicate a firm definition for it to all stakeholders in the project. Failure to do this can lead to problems with the security of the trusted environment, because the overall security cannot exceed the level of security set by the least secure client that achieves trusted status.

**Note**  
In this context, the term *trust* has nothing to do with an Active Directory trust relationship between domains. The trusted state of your computers just indicates the level of risk that you believe the computer brings to the network. Trusted computers bring little risk whereas untrusted computers can potentially bring great risk.

 

## Trust states


To understand this concept, consider the four basic states that apply to computers in a typical IT infrastructure. These states are (in order of risk, lowest risk first):

-   Trusted

-   Trustworthy

-   Known, untrusted

-   Unknown, untrusted

The remainder of this section defines these states and how to determine which computers in your organization belong in each state.

### <a href="" id="bkmk-1"></a>Trusted state

Classifying a computer as trusted means that the computer's security risks are managed, but it does not imply that it is perfectly secure or invulnerable. The responsibility for this managed state falls to the IT and security administrators, in addition to the users who are responsible for the configuration of the computer. A trusted computer that is poorly managed will likely become a point of weakness for the network.

When a computer is considered trusted, other trusted computers can reasonably assume that the computer will not initiate a malicious act. For example, trusted computers can expect that other trusted computers will not run a virus that attacks them, because all trusted computers are required to use mechanisms (such as antivirus software) to mitigate the threat of viruses.

Spend some time defining the goals and technology requirements that your organization considers appropriate as the minimum configuration for a computer to obtain trusted status.

A possible list of technology requirements might include the following:

-   **Operating system.** A trusted client computer should run Windows 8, Windows 7, or Windows Vista. A trusted server should run Windows Server 2012, Windows Server 2008 R2, or Windows Server 2008.

-   **Domain membership.** A trusted computer will belong to a managed Active Directory domain, which means that the IT department has security management rights and can configure member computers by using Group Policy.

-   **Management client.** All trusted computers must run a specific network management client to allow for centralized management and control of security policies, configurations, and software. Microsoft System Center Configuration Manager is one such management system with an appropriate client. For more information, see [System Center Configuration Manager](http://technet.microsoft.com/systemcenter/bb507744.aspx) at http://technet.microsoft.com/systemcenter/bb507744.aspx.

-   **Antivirus software.** All trusted computers will run antivirus software that is configured to check for and automatically update the latest virus signature files daily. Microsoft ForeFront Endpoint Protection is one such antivirus software program. For more information, see [ForeFront Endpoint Protection](http://technet.microsoft.com/forefront/ee822838.aspx) at http://technet.microsoft.com/forefront/ee822838.aspx.

-   **File system.** All trusted computers will be configured to use the NTFS file system.

-   **BIOS settings.** All trusted portable computers will be configured to use a BIOS-level password that is under the management of the IT support team.

-   **Password requirements.** Trusted clients must use strong passwords.

It is important to understand that the trusted state is not constant; it is a transient state that is subject to changing security standards and compliance with those standards. New threats and new defenses emerge constantly. For this reason, the organization's management systems must continually check the trusted computers to ensure ongoing compliance. Additionally, the management systems must be able to issue updates or configuration changes if they are required to help maintain the trusted status.

A computer that continues to meet all these security requirements can be considered trusted. However it is possible that most computers that were identified in the discovery process discussed earlier do not meet these requirements. Therefore, you must identify which computers can be trusted and which ones cannot. To help with this process, you use the intermediate *trustworthy* state. The remainder of this section discusses the different states and their implications.

### <a href="" id="bkmk-2"></a>Trustworthy state

It is useful to identify as soon as possible those computers in your current infrastructure that can achieve a trusted state. A *trustworthy state* can be assigned to indicate that the current computer can physically achieve the trusted state with required software and configuration changes.

For each computer that is assigned a trustworthy status, make an accompanying configuration note that states what is required to enable the computer to achieve trusted status. This information is especially important to both the project design team (to estimate the costs of adding the computer to the solution) and the support staff (to enable them to apply the required configuration).

Generally, trustworthy computers fall into one of the following two groups:

-   **Configuration required.** The current hardware, operating system, and software enable the computer to achieve a trustworthy state. However, additional configuration changes are required. For example, if the organization requires a secure file system before a computer can be considered trusted, a computer that uses a FAT32-formatted hard disk does not meet this requirement.

-   **Upgrade required.** These computers require upgrades before they can be considered trusted. The following list provides some examples of the type of upgrade these computers might require:

    -   **Operating system upgrade required.** If the computer's current operating system cannot support the security needs of the organization, an upgrade would be required before the computer could achieve a trusted state.

    -   **Software required.** A computer that is missing a required security application, such as an antivirus scanner or a management client, cannot be considered trusted until these applications are installed and active.

    -   **Hardware upgrade required.** In some cases, a computer might require a specific hardware upgrade before it can achieve trusted status. This type of computer usually needs an operating system upgrade or additional software that forces the required hardware upgrade. For example, security software might require additional hard disk space on the computer.

    -   **Computer replacement required.** This category is reserved for computers that cannot support the security requirements of the solution because their hardware cannot support the minimum acceptable configuration. For example, a computer that cannot run a secure operating system because it has an old processor (such as a 100-megahertz \[MHz\] x86-based computer).

Use these groups to assign costs for implementing the solution on the computers that require upgrades.

### <a href="" id="bkmk-3"></a>Known, untrusted state

During the process of categorizing an organization's computers, you will identify some computers that cannot achieve trusted status for specific well-understood and well-defined reasons. These reasons might include the following types:

-   **Financial.** The funding is not available to upgrade the hardware or software for this computer.

-   **Political.** The computer must remain in an untrusted state because of a political or business situation that does not enable it to comply with the stated minimum security requirements of the organization. It is highly recommended that you contact the business owner or independent software vendor (ISV) for the computer to discuss the added value of server and domain isolation.

-   **Functional.** The computer must run a nonsecure operating system or must operate in a nonsecure manner to perform its role. For example, the computer might be required to run an older operating system because a specific line of business application will only work on that operating system.

There can be multiple functional reasons for a computer to remain in the known untrusted state. The following list includes several examples of functional reasons that can lead to a classification of this state:

-   **Computers that run unsupported versions of Windows.** This includes Windows XP, Windows Millennium Edition, Windows 98, Windows 95, or Windows NT. Computers that run these versions of the Windows operating system cannot be classified as trustworthy because these operating systems do not support the required security infrastructure. For example, although Windows NT does support a basic security infrastructure, it does not support “deny” ACLs on local resources, any way to ensure the confidentiality and integrity of network communications, smart cards for strong authentication, or centralized management of computer configurations (although limited central management of user configurations is supported).

-   **Stand-alone computers.** Computers running any version of Windows that are configured as stand-alone computers or as members of a workgroup usually cannot achieve a trustworthy state. Although these computers fully support the minimum required basic security infrastructure, the required security management capabilities are unlikely to be available when the computer is not a part of a trusted domain.

-   **Computers in an untrusted domain.** A computer that is a member of a domain that is not trusted by an organization's IT department cannot be classified as trusted. An untrusted domain is a domain that cannot provide the required security capabilities to its members. Although the operating systems of computers that are members of this untrusted domain might fully support the minimum required basic security infrastructure, the required security management capabilities cannot be fully guaranteed when computers are not in a trusted domain.

### <a href="" id="bkmk-4"></a>Unknown, untrusted state

The unknown, untrusted state should be considered the default state for all computers. Because computers in this state have a configuration that is unknown, you can assign no trust to them. All planning for computers in this state must assume that the computer is an unacceptable risk to the organization. Designers of the solution should strive to minimize the impact that the computers in this state can have on their organizations.

## Capturing upgrade costs for current computers


The final step in this part of the process is to record the approximate cost of upgrading the computers to a point that they can participate in the server and domain isolation design. You must make several key decisions during the design phase of the project that require answers to the following questions:

-   Does the computer meet the minimum hardware requirements necessary for isolation?

-   Does the computer meet the minimum software requirements necessary for isolation?

-   What configuration changes must be made to integrate this computer into the isolation solution?

-   What is the projected cost or impact of making the proposed changes to enable the computer to achieve a trusted state?

By answering these questions, you can quickly determine the level of effort and approximate cost of bringing a particular computer or group of computers into the scope of the project. It is important to remember that the state of a computer is transitive, and that by performing the listed remedial actions you can change the state of a computer from untrusted to trusted. After you decide whether to place a computer in a trusted state, you are ready to begin planning and designing the isolation groups, which the next section [Planning Domain Isolation Zones](planning-domain-isolation-zones.md) discusses.

The following table is an example of a data sheet that you could use to help capture the current state of a computer and what would be required for the computer to achieve a trusted state.

<table style="width:100%;">
<colgroup>
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Computer name</strong></th>
<th><strong>Hardware reqs met</strong></th>
<th><strong>Software reqs met</strong></th>
<th><strong>Configuration required</strong></th>
<th><strong>Details</strong></th>
<th><strong>Projected cost</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>CLIENT001</p></td>
<td><p>No</p></td>
<td><p>No</p></td>
<td><p>Upgrade hardware and software.</p></td>
<td><p>Current operating system is Windows XP. Old hardware is not compatible with Windows 8.</p></td>
<td><p>$??</p></td>
</tr>
<tr class="even">
<td><p>SERVER001</p></td>
<td><p>Yes</p></td>
<td><p>No</p></td>
<td><p>Join trusted domain and upgrade from Windows Server 2003 to Windows Server 2012.</p></td>
<td><p>No antivirus software present.</p></td>
<td><p>$??</p></td>
</tr>
</tbody>
</table>

 

In the previous table, the computer CLIENT001 is currently "known, untrusted" because its hardware must be upgraded. However, it could be considered trustworthy if the required upgrades are possible. However, if many computers require the same upgrades, the overall cost of the solution would be much higher.

The computer SERVER001 is "trustworthy" because it meets the hardware requirements but its operating system must be upgraded. It also requires antivirus software. The projected cost is the amount of effort that is required to upgrade the operating system and install antivirus software, along with their purchase costs.

With the other information that you have gathered in this section, this information will be the foundation of the efforts performed later in the [Planning Domain Isolation Zones](planning-domain-isolation-zones.md) section.

The costs identified in this section only capture the projected cost of the computer upgrades. Many additional design, support, test, and training costs should be accounted for in the overall project plan.

For more information about how to configure firewalls to support IPsec, see "Configuring Firewalls" at <http://go.microsoft.com/fwlink/?linkid=69783>.

For more information about WMI, see "Windows Management Instrumentation" at <http://go.microsoft.com/fwlink/?linkid=110483>.

**Next: **[Planning Your Windows Firewall with Advanced Security Design](planning-your-windows-firewall-with-advanced-security-design.md)

 

 





