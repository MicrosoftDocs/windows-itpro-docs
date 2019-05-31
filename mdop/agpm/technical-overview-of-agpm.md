---
title: Technical Overview of AGPM
description: Technical Overview of AGPM
author: mjcaparas
ms.assetid: 36bc0ab5-f752-474c-8559-721ea95169c2
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Technical Overview of AGPM


Microsoft Advanced Group Policy Management (AGPM) is a client/server application. The AGPM Server stores Group Policy Objects (GPOs) offline in the archive that AGPM creates on the server's file system. Group Policy administrators use the AGPM snap-in for the Group Policy Management Console (GPMC) to work with GPOs on the server that hosts the archive. Understanding the parts of AGPM and related items, how they store GPOs in the file system, and how permissions control the actions available to each user role can improve Group Policy administrators' effectiveness with AGPM.

## Terminology


The following explains the basic AGPM terms.

-   **AGPM Client:** A computer that runs the AGPM snap-in for the Group Policy Management Console (GPMC) and from which Group Policy administrators manage GPOs.

-   **AGPM snap-in:** The software component of AGPM installed on AGPM Clients so that they can manage GPOs.

-   **AGPM Server:** A server that runs the AGPM Service and manages an archive. Each AGPM Server can manage only one archive, but one AGPM Server can manage archive data for multiple domains in one archive. An archive can be hosted on a computer other than an AGPM Server.

-   **AGPM Service:** The software component of AGPM that runs on an AGPM Server as a service. The service manages GPOs in the archive and in the production environment in that forest.

-   **Archive:** In AGPM, a central store that contains the controlled GPOs that the associated AGPM Server manages, in addition to the history for each of those GPOs. This includes all previous controlled versions of each GPO. An archive consists of an archive index file and associated archive data that may include data for GPOs in multiple domains. An archive can be hosted on a computer other than an AGPM Server.

-   **Controlled GPO:** A GPO that is being managed by AGPM. AGPM manages the history and permissions of controlled GPOs, which it stores in the archive.

-   **Uncontrolled GPO:** A GPO in the production environment for a domain and not managed by AGPM.

## What AGPM installs, creates, and affects


On an AGPM Server, the AGPM Setup program installs the AGPM Service. AGPM does not alter the Active Directory® directory service or the schema. By default, the AGPM Server program files are installed in %ProgramFiles%\\Microsoft\\AGPM\\Server. You can install the AGPM Service on a domain controller if you have to; however, we recommend that you install the AGPM Service on a member server.

On an AGPM Client, the AGPM Setup program installs the AGPM snap-in, adding a **Change Control** folder to each domain that appears in the GPMC. By default, the AGPM Client program files are installed in %ProgramFiles%\\Microsoft\\AGPM\\Client.

Table 1 describes both the items that AGPM installs or creates and the parts of the operating system that affect AGPM operation.

**Table 1: Items installed, created, or affected by AGPM**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Item</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>AGPM Service</p></td>
<td align="left"><p>The AGPM Service runs on the AGPM Server. The service manages the archive, which contains offline GPOs, and controlled GPOs in the production environment. The default configuration of the AGPM Service is as follows:</p>
<ul>
<li><p><strong>Service name:</strong> AGPM Service</p></li>
<li><p><strong>Display name:</strong> AGPM Service</p></li>
<li><p><strong>Path to executable:</strong> %ProgramFiles%\Microsoft\AGPM\Server\Agpm.exe</p></li>
<li><p><strong>Startup:</strong> Automatic</p></li>
<li><p><strong>Log on as:</strong> AGPM Service Account specified during installation of AGPM Server, which can be changed using <strong>Programs and Features</strong> in the <strong>Control Panel</strong>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>AGPM archive</p></td>
<td align="left"><p>By default, AGPM creates the archive in %ProgramData%\Microsoft\AGPM on the AGPM Server. The archive provides storage for offline GPOs, and it can store multiple versions of each GPO. Changes that AGPM makes to GPOs in the archive do not affect the production environment until an AGPM Administrator or Approver deploys the GPO to the production environment and links the GPO to an organizational unit (OU).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Firewall</p></td>
<td align="left"><p>During installation, AGPM enables an inbound Windows Firewall rule that allows the AGPM Client to communicate with the AGPM Server. The default Windows Firewall rule is the following:</p>
<ul>
<li><p><strong>Name:</strong> AGPM Service</p></li>
<li><p><strong>Action:</strong> Allow the connection</p></li>
<li><p><strong>Programs:</strong> All programs that meet the specified conditions</p></li>
<li><p><strong>Protocol type:</strong> TCP</p></li>
<li><p><strong>Local port:</strong> 4600</p></li>
<li><p><strong>Remote port:</strong> All ports</p></li>
<li><p><strong>Local IP address:</strong> Any</p></li>
<li><p><strong>Remote IP address:</strong> Any</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>E-mail server</p></td>
<td align="left"><p>AGPM uses Simple Mail Transfer Protocol (SMTP) to send e-mail requests to the addresses configured on the <strong>Domain Delegation</strong> tab. For example, when an Editor requests that a new GPO be created, AGPM notifies each e-mail address specified on the <strong>Domain Delegation</strong> tab.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>AGPM snap-in</p></td>
<td align="left"><p>The AGPM snap-in for the GPMC runs on AGPM Clients and is used by Group Policy administrators to manage GPOs. The snap-in appears in the GPMC as a <strong>Change Control</strong> folder in each domain.</p></td>
</tr>
</tbody>
</table>

 

### Additional references

For more information about the files installed by AGPM, see the [Planning Guide for AGPM](https://go.microsoft.com/fwlink/?LinkId=160060).

## Archive


By default, the AGPM Server installation process creates the archive on the local hard disk of the AGPM Server at %ProgramData%\\Microsoft\\AGPM. However, you can change the path during installation and even create the archive on a server other than the AGPM Server.

The archive contains a subfolder for each version of each GPO the archive contains. The name of each subfolder is a GUID that identifies a version of the GPO.

The gpostate.xml file records the state of each GPO in the archive. The file is a manifest that describes the contents of the archive. For example, a GPO can have many versions, and each version is in its own subfolder in the archive. The gpostate.xml file indicates which subfolders contain different versions of a single GPO. Additionally, GPO templates have subfolders in the archive, but gpostate.xml indicates that these are templates and not controlled GPOs. Similarly, when Group Policy administrators delete GPOs, AGPM changes their states in gpostate.xml to indicate that they are in the **Recycle Bin** but does not actually remove the GPOs' subfolders from the archive.

**Caution**  
Do not manually edit gpostate.xml or the GPOs the archive contains. This information is provided only to enhance understanding of the AGPM archive. Instead, use the AGPM snap-in to change GPOs.

 

When AGPM creates the archive, it gives Full Control to SYSTEM, Administrators, and the AGPM Service Account (specified in the setup of AGPM Server). Changing permissions by using the AGPM user interface on the AGPM snap-in does not alter permissions on the archive, because the AGPM Service Account performs all operations on behalf of the logged-on user.

### Additional references

For information about how to back up the archive, restore the archive from a backup, or move both the AGPM Server and the archive, see the "Performing AGPM Administrator Tasks" section in the [Operations Guide for AGPM](https://go.microsoft.com/fwlink/?LinkId=160061).

## Roles and permissions


Roles simplify delegation. Instead of assigning detailed permissions to Group Policy administrators, AGPM Administrators can assign one of four roles to Group Policy administrators to let them perform work related to that role:

-   **AGPM Administrator:** Group Policy administrators assigned the AGPM Administrator (Full Control) role can perform any task in AGPM. AGPM Administrators can configure domain-wide options and delegate permissions to other Group Policy administrators.

-   **Approver:** Group Policy administrators assigned the Approver role can deploy GPOs to the production environment for a domain. Approvers can also create and delete GPOs and approve or reject requests from Editors. Approvers can view the list of GPOs in a domain, view the policy settings in GPOs, and create and view reports of the policy settings in a GPO. They cannot edit the policy settings in GPOs unless they are also assigned the Editor role.

-   **Editor:** Group Policy administrators assigned the Editor role can view the list of GPOs in a domain, view the policy settings in GPOs, edit the policy settings in GPOs, and create and view reports of the policy settings in a GPO. Unless they are also assigned the Approver role, Editors cannot create, deploy, or delete GPOs. However, they can request that GPOs be created, deployed, or deleted.

-   **Reviewer:** Group Policy administrators assigned the Reviewer role can view the list of GPOs in a domain and create and view reports of the policy settings in a GPO. Unless they are also assigned the Editor role, they cannot edit policy settings in a GPO.

AGPM gives AGPM Administrators the flexibility to configure permissions at a more detailed level than roles by using the AGPM snap-in. Table 2 describes these permissions and indicates the permissions granted to each role by default.

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
<th align="left">Permission</th>
<th align="left">Description</th>
<th align="left">AGPM Administrator</th>
<th align="left">Approver</th>
<th align="left">Editor</th>
<th align="left">Reviewer</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Full Control</strong></p></td>
<td align="left"><p>Have all permissions.</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Create GPO</strong></p></td>
<td align="left"><p>Create GPOs in a domain.</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>List Contents</strong></p></td>
<td align="left"><p>List the GPOs in a domain.</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Read Settings</strong></p></td>
<td align="left"><p>Read the policy settings within a GPO.</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Edit Settings</strong></p></td>
<td align="left"><p>Change the policy settings in a GPO.</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p></p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Delete GPO</strong></p></td>
<td align="left"><p>Delete a GPO.</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Modify Security</strong></p></td>
<td align="left"><p>Delegate domain-level access, delegate access to a single GPO, and delegate access to the production environment.</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Deploy GPO</strong></p></td>
<td align="left"><p>Deploy a GPO from the archive to the production environment.</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Create Template</strong></p></td>
<td align="left"><p>Create a GPO template in AGPM.</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p></p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Modify Options</strong></p></td>
<td align="left"><p>Configure AGPM e-mail notification and limit the GPO versions stored in the archive.</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Export GPO</strong></p></td>
<td align="left"><p>Export a GPO to a file.</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p></p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Import GPO</strong></p></td>
<td align="left"><p>Import a GPO from a file.</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p></p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p></p></td>
</tr>
</tbody>
</table>

 

**Note**  
**Export GPO** and **Import GPO** permissions are not available in AGPM 3.0 or 2.5.

The ability to delegate access to GPOs in the production environment for a domain and the ability to limit the number of GPO versions stored are not available in AGPM 2.5.

 

### Additional references

For information about what tasks can be performed by Group Policy administrators assigned a particular role or about which permissions are required to perform a specific task, see the [Operations Guide for AGPM](https://go.microsoft.com/fwlink/?LinkId=160061).

 

 





