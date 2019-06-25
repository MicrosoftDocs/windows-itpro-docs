---
title: About MBAM 2.5
description: About MBAM 2.5
author: dansimp
ms.assetid: 1ce218ec-4d2e-4a75-8d1a-68d737a8f3c9
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# About MBAM 2.5


Microsoft BitLocker Administration and Monitoring (MBAM) 2.5 provides a simplified administrative interface for BitLocker Drive Encryption. BitLocker offers enhanced protection against data theft or data exposure for computers that are lost or stolen. BitLocker encrypts all data that is stored on the Windows operating system volumes and drives and configured data drives.

## Overview of MBAM


MBAM 2.5 has the following features:

-   Enables administrators to automate the process of encrypting volumes on client computers across the enterprise.

-   Enables security officers to quickly determine the compliance state of individual computers or even of the enterprise itself.

-   Provides centralized reporting and hardware management with Microsoft System Center Configuration Manager.

-   Reduces the workload on the Help Desk to assist end users with BitLocker PIN and recovery key requests.

-   Enables end users to recover encrypted devices independently by using the Self-Service Portal.

-   Enables security officers to easily audit access to recover key information.

-   Empowers Windows Enterprise users to continue working anywhere with the assurance that their corporate data is protected.

MBAM enforces the BitLocker encryption policy options that you set for your enterprise, monitors the compliance of client computers with those policies, and reports on the encryption status of the enterprise’s and individual’s computers. In addition, MBAM lets you access the recovery key information when users forget their PIN or password, or when their BIOS or boot records change.

The following groups might be interested in using MBAM to manage BitLocker:

-   Administrators, IT security professionals, and compliance officers who are responsible for ensuring that confidential data is not disclosed without authorization

-   Administrators who are responsible for computer security in remote or branch offices

-   Administrators who are responsible for client computers that are running Windows

**Note**  
BitLocker is not explained in detail in this MBAM documentation. For more information, see [BitLocker Drive Encryption Overview](https://go.microsoft.com/fwlink/p/?LinkId=225013).

 

## <a href="" id="what-s-new-in-mbam-2-5"></a>What’s new in MBAM 2.5


This section describes the new features in MBAM 2.5.

### Support for Microsoft SQL Server 2014

MBAM adds support for Microsoft SQL Server 2014, in addition to the same software that is supported in earlier versions of MBAM.

### <a href="" id="-------------mbam-group-policy-templates-downloaded-separately"></a> MBAM Group Policy Templates downloaded separately

The MBAM Group Policy Templates must be downloaded separately from the MBAM installation. In previous versions of MBAM, the MBAM installer included an MBAM Policy Template, which contained the required MBAM-specific Group Policy Objects (GPOs) that define MBAM implementation settings for BitLocker Drive Encryption. These GPOs have been removed from the MBAM installer. You now download the GPOs from [How to Get MDOP Group Policy (.admx) Templates](https://go.microsoft.com/fwlink/p/?LinkId=393941) and copy them to a server or workstation before you begin the MBAM Client installation. You can copy the Group Policy Templates to any server or workstation that is running a supported version of the Windows Server or Windows operating system.

**Important**  
Do not change the Group Policy settings in the **BitLocker Drive Encryption** node, or MBAM will not work correctly. When you configure the Group Policy settings in the **MDOP MBAM (BitLocker Management)** node, MBAM automatically configures the BitLocker Drive Encryption settings for you.

 

The template files that you need to copy to a server or workstation are:

-   BitLockerManagement.adml

-   BitLockerManagement.admx

-   BitLockerUserManagement.adml

-   BitLockerUserManagement.admx

Copy the template files to the location that best meets your needs. For the language-specific files, which must be copied to a language-specific folder, the Group Policy Management Console is required to view the files.

- To install the template files locally on a server or workstation, copy the files to one of the following locations.

  <table>
  <colgroup>
  <col width="50%" />
  <col width="50%" />
  </colgroup>
  <thead>
  <tr class="header">
  <th align="left">File type</th>
  <th align="left">File location</th>
  </tr>
  </thead>
  <tbody>
  <tr class="odd">
  <td align="left"><p>language neutral (.admx)</p></td>
  <td align="left"><p><em>%systemroot%</em>\policyDefinitions</p></td>
  </tr>
  <tr class="even">
  <td align="left"><p>language specific (.adml)</p></td>
  <td align="left"><p><em>%systemroot%</em>\policyDefinitions[<em>MUIculture</em>] (for example, the U.S. English language specific file will be stored in <em>%systemroot%&lt;/em&gt;policyDefinitions\en-us)</p></td>
  </tr>
  </tbody>
  </table>

     

- To make the templates available to all Group Policy administrators in a domain, copy the files to one of the following locations on a domain controller.

  <table>
  <colgroup>
  <col width="50%" />
  <col width="50%" />
  </colgroup>
  <thead>
  <tr class="header">
  <th align="left">File type</th>
  <th align="left">Domain controller file location</th>
  </tr>
  </thead>
  <tbody>
  <tr class="odd">
  <td align="left"><p>Language neutral (.admx)</p></td>
  <td align="left"><p><em>%systemroot%</em>sysvol\domain\policies\PolicyDefinitions</p></td>
  </tr>
  <tr class="even">
  <td align="left"><p>Language specific (.adml)</p></td>
  <td align="left"><p><em>%systemroot%</em>\sysvol\domain\policies\PolicyDefinitions[<em>MUIculture</em>] (for example, the U.S. English language-specific file will be stored in <em>%systemroot%</em>\sysvol\domain\policies\PolicyDefinitions\en-us)</p></td>
  </tr>
  </tbody>
  </table>

     

For more information about template files, see [Managing Group Policy ADMX Files Step-by-Step Guide](https://go.microsoft.com/fwlink/?LinkId=392818).

### Ability to enforce encryption policies on operating system and fixed data drives

MBAM 2.5 enables you to enforce encryption policies on operating system and fixed data drives for computers in your organization and limit the number of days that end users can request a postponement of the requirement to comply with MBAM encryption policies.

To enable you to configure encryption policy enforcement, a new Group Policy setting, called Encryption Policy Enforcement Settings, has been added for operating system drives and fixed data drives. This policy is described in the following table.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Group Policy setting</th>
<th align="left">Description</th>
<th align="left">Group Policy node used to configure this setting</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Encryption Policy Enforcement Settings (Operating System Drive)</p></td>
<td align="left"><p>For this setting, use the option <strong>Configure the number of noncompliance grace period days for operating system drives</strong> to configure a grace period.</p>
<p>The grace period specifies the number of days that end users can postpone compliance with MBAM policies for their operating system drive after the drive is first detected as noncompliant.</p>
<p>After the configured grace period expires, users cannot postpone the required action or request an exemption from it.</p>
<p>If user interaction is required (for example, if you are using the Trusted Platform Module (TPM) + PIN or using a password protector), a dialog box appears, and users cannot close it until they provide the required information. If the protector is TPM only, encryption begins immediately in the background without user input.</p>
<p>Users cannot request exemptions through the BitLocker encryption wizard. Instead, they must contact their Help Desk or use whatever process their organization uses for exemption requests.</p></td>
<td align="left"><p>Computer Configuration &gt; Policies &gt; Administrative Templates &gt; Windows Components &gt; MDOP MBAM (BitLocker Management) &gt; Operating System Drive</p></td>
</tr>
<tr class="even">
<td align="left"><p>Encryption Policy Enforcement Settings (Fixed Data Drives)</p></td>
<td align="left"><p>For this setting, use the option <strong>Configure the number of noncompliance grace period days for fixed drives</strong> to configure a grace period.</p>
<p>The grace period specifies the number of days that end users can postpone compliance with MBAM policies for their fixed drive after the drive is first detected as noncompliant.</p>
<p>The grace period begins when the fixed drive is determined to be noncompliant. If you are using auto-unlock, the policy will not be enforced until the operating system drive is compliant. However, if you are not using auto-unlock, encryption of the fixed data drive can begin before the operating system drive is fully encrypted.</p>
<p>After the configured grace period expires, users cannot postpone the required action or request an exemption from it. If user interaction is required, a dialog box appears and users cannot close it until they provide the required information.</p></td>
<td align="left"><p>Computer Configuration &gt; Policies &gt; Administrative Templates &gt; Windows Components &gt; MDOP MBAM (BitLocker Management) &gt; Fixed Drive</p></td>
</tr>
</tbody>
</table>

 

### Ability to provide a URL in the BitLocker Drive Encryption wizard to point to your security policy

A new Group Policy setting, **Provide the URL for the Security Policy link**, enables you to configure a URL that will be presented to end users as a link called **Company Security Policy**. This link will appear when MBAM prompts users to encrypt a volume.

If you enable this policy setting, you can configure the URL for the **Company Security Policy** link. If you disable or do not configure this policy setting, the **Company Security Policy** link is not displayed to users.

The new Group Policy setting is located in the following GPO node: **Computer Configuration** &gt; **Policies** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **MDOP MBAM (BitLocker Management) &gt; Client Management**.

### Support for FIPS-compliant recovery keys

MBAM 2.5 supports Federal Information Processing Standard (FIPS)-compliant BitLocker recovery keys on devices that are running the Windows 8.1 operating system. The recovery key was not FIPS compliant in earlier versions of Windows. This enhancement improves the drive recovery process in organizations that require FIPS compliance because it enables end users to use the Self-Service Portal or Administration and Monitoring Website (Help Desk) to recover their drives if they forget their PIN or password or get locked out of their computers. The new FIPS compliance feature does not extend to password protectors.

To enable FIPS compliance in your organization, you must configure the Federal Information Processing Standard (FIPS) Group Policy settings. For configuration instructions, see [BitLocker Group Policy Settings](https://go.microsoft.com/fwlink/?LinkId=393560).

For client computers that are running the Windows 8 or Windows 7 operating systems without the [installed BitLocker hotfix](https://support.microsoft.com/kb/3015477), IT administrators will continue to use the Data Recovery Agents (DRA) protector in FIPS-compliant environments. For information about DRA, see [Using Data Recovery Agents with BitLocker](https://go.microsoft.com/fwlink/?LinkId=393557).

See [Hotfix Package 2 for BitLocker Administration and Monitoring 2.5](https://support.microsoft.com/kb/3015477) to download and install the BitLocker hotfix for Windows 7 and Windows 8 computers.

### Support for high availability deployments

MBAM supports the following high-availability scenarios in addition to the standard two-server and Configuration Manager Integration topologies:

-   SQL Server AlwaysOn availability groups

-   SQL Server clustering

-   Network load balancing (NLB)

-   SQL Server mirroring

-   Volume Shadow Copy Service (VSS) Backup

For more information about these features, see [Planning for MBAM 2.5 High Availability](planning-for-mbam-25-high-availability.md).

### <a href="" id="management-of-roles-for-administration-and-monitoring-website-changed-"></a>Management of roles for Administration and Monitoring Website changed

In MBAM 2.5, you must create security groups in Active Directory Domain Services (AD DS) to manage the roles that provide access rights to the Administration and Monitoring Website. Roles enable users who are in specific security groups to perform different tasks in the website such as viewing reports or helping end users recover encrypted drives. In previous versions of MBAM, roles were managed by using local groups.

In MBAM 2.5, the term “roles” replaces the term “administrator roles,” which was used in earlier versions of MBAM. In addition, in MBAM 2.5 the “MBAM System Administrators” role has been removed.

The following table lists the security groups that you must create in AD DS. You can use any name for the security groups.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Role</th>
<th align="left">Access rights for this role on the Administration and Monitoring Website</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>MBAM Helpdesk Users</p></td>
<td align="left"><p>Provides access to the Manage TPM and Drive Recovery areas of the MBAM Administration and Monitoring Website. Users who have access to these areas must fill in all fields when they use either area.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MBAM Report Users</p></td>
<td align="left"><p>Provides access to the Reports in the Administration and Monitoring Website.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MBAM Advanced Helpdesk Users</p></td>
<td align="left"><p>Provides access to all areas in the Administration and Monitoring Website. Users in this group have to enter only the recovery key, not the end user’s domain and user name, when helping end users recover their drives. If a user is a member of the MBAM Helpdesk Users group and the MBAM Advanced Helpdesk Users group, the MBAM Advanced Helpdesk Users group permissions override the MBAM Helpdesk Users group permissions.</p></td>
</tr>
</tbody>
</table>

 

After you create the security groups in AD DS, assign users and/or groups to the appropriate security group to enable the corresponding level of access to the Administration and Monitoring Website. To enable individuals with each role to access the Administration and Monitoring Website, you must also specify each security group when you are configuring the Administration and Monitoring Website.

### Windows PowerShell cmdlets for configuring MBAM Server features

Windows PowerShell cmdlets for MBAM 2.5 enable you to configure and manage the MBAM Server features. Each feature has a corresponding Windows PowerShell cmdlet that you can use to enable or disable features, or to get information about the feature.

For prerequisites and prerequisites for using Windows PowerShell, see [Configuring MBAM 2.5 Server Features by Using Windows PowerShell](configuring-mbam-25-server-features-by-using-windows-powershell.md).

**To load the MBAM 2.5 Help for Windows PowerShell cmdlets after installing the MBAM Server software**

1.  Open Windows PowerShell or Windows PowerShell Integrated Scripting Environment (ISE).

2.  Type **Update-Help –Module Microsoft.MBAM**.

Windows PowerShell Help for MBAM is available in the following formats:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Windows PowerShell Help format</th>
<th align="left">More information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>At a Windows PowerShell command prompt, type <strong>Get-Help</strong> &lt;<em>cmdlet</em>&gt;</p></td>
<td align="left"><p>To upload the latest Windows PowerShell cmdlets, follow the instructions in the previous section on how to load Windows PowerShell Help for MBAM.</p></td>
</tr>
<tr class="even">
<td align="left"><p>On TechNet as webpages</p></td>
<td align="left"><p><a href="https://go.microsoft.com/fwlink/?LinkId=393498" data-raw-source="https://go.microsoft.com/fwlink/?LinkId=393498">https://go.microsoft.com/fwlink/?LinkId=393498</a></p></td>
</tr>
<tr class="odd">
<td align="left"><p>On the Download Center as a Word .docx file</p></td>
<td align="left"><p><a href="https://go.microsoft.com/fwlink/?LinkId=393497" data-raw-source="https://go.microsoft.com/fwlink/?LinkId=393497">https://go.microsoft.com/fwlink/?LinkId=393497</a></p></td>
</tr>
<tr class="even">
<td align="left"><p>On the Download Center as a .pdf file</p></td>
<td align="left"><p><a href="https://go.microsoft.com/fwlink/?LinkId=393499" data-raw-source="https://go.microsoft.com/fwlink/?LinkId=393499">https://go.microsoft.com/fwlink/?LinkId=393499</a></p></td>
</tr>
</tbody>
</table>

 

### Support for ASCII-only and enhanced PINs and ability to prevent sequential and repeating characters

**Allow enhanced PINs for startup Group Policy setting**

The Group Policy setting, **Allow enhanced PINs for startup**, enables you to configure whether enhanced startup PINs are used with BitLocker. Enhanced startup PINs permit users to enter any keys on a full keyboard, including uppercase and lowercase letters, symbols, numbers, and spaces. If you enable this policy setting, all new BitLocker startup PINs that are set will be enhanced PINs. If you disable or do not configure this policy setting, enhanced PINs cannot be used.

Not all computers support the entry of enhanced PINs in the Pre-Boot Execution Environment (PXE). Before you enable this Group Policy setting for your organization, run a system check during the BitLocker setup process to ensure that the computer’s BIOS supports the use of the full keyboard in PXE. For more information, see [Planning for MBAM 2.5 Group Policy Requirements](planning-for-mbam-25-group-policy-requirements.md).

**Require ASCII-only PINs check box**

The **Allow enhanced PINs for startup** Group Policy setting also contains a **Require ASCII-only PINs** check box. If the computers in your organization do not support the use of the full keyboard in PXE, you can enable the **Allow enhanced PINs for startup** Group Policy setting, and then select the **Require ASCII-only PINs** check box to require that enhanced PINs use only printable ASCII characters.

**Enforced use of nonsequential and nonrepeating characters**

MBAM 2.5 prevents end users from creating PINs that consist of repeating numbers (such as 1111) or sequential numbers (such as 1234). If end users try to enter a password that contains three or more repeating or sequential numbers, the Bitlocker Drive Encryption wizard displays an error message and prevents users from entering a PIN with the prohibited characters.

### Addition of DRA Certificate to BitLocker Computer Compliance report

A new protector type, the Data Recovery Agent (DRA) Certificate, has been added to the BitLocker Computer Compliance Report in Configuration Manager. This protector type applies to operating system drives, and it appears in the **Computer Volume(s)** section in the **Protector Types** column.

### Support for multi-forest support deployments

MBAM 2.5 supports the following types of multi-forest deployments:

-   Single forest with single domain

-   Single forest with a single tree and multiple domains

-   Single forest with multiple trees and disjoint namespaces

-   Multiple forests in a central forest topology

-   Multiple forests in a resource forest topology

There is no support for forest migration (going from single to multiple, multiple to single, resource to across the forest, etc.), or upgrade or downgrade.

The prerequisites for deploying MBAM in multi-forest deployments are:

-   Forest must be running on supported versions of Windows Server.

-   A two-way or one-way trust is required. One-way trusts require that the server’s domain trusts the client’s domain. In other words, the server’s domain is pointed at the client’s domain.

### MBAM Client support for Encrypted Hard Drives

MBAM supports BitLocker on Encrypted Hard Drives that meet TCG specification requirements for Opal as well as IEEE 1667 standards. When BitLocker is enabled on these devices, it will generate keys and perform management functions on the encrypted drive. See [Encrypted Hard Drive](https://technet.microsoft.com/library/hh831627.aspx) for more information.

## How to Get MDOP Technologies


MBAM is a part of the Microsoft Desktop Optimization Pack (MDOP). MDOP is part of the Microsoft Software Assurance program. For more information about the Microsoft Software Assurance program and how to acquire the MDOP, see [How Do I Get MDOP?](https://go.microsoft.com/fwlink/?LinkId=322049).

## <a href="" id="---------mbam-2-5-release-notes"></a> MBAM 2.5 Release Notes


For more information and late-breaking news that is not included in this documentation, see [Release Notes for MBAM 2.5](release-notes-for-mbam-25.md).

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](https://support.microsoft.com/help/4021566/windows-10-send-feedback-to-microsoft-with-feedback-hub). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).

## Related topics


[Microsoft BitLocker Administration and Monitoring 2.5](index.md)

[Getting Started with MBAM 2.5](getting-started-with-mbam-25.md)

 

 





