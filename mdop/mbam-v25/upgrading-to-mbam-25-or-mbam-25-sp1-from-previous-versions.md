---
title: Upgrading to MBAM 2.5 or MBAM 2.5 SP1 from Previous Versions
description: Upgrading to MBAM 2.5 or MBAM 2.5 SP1 from Previous Versions
author: dansimp
ms.assetid: a9edb4b8-5d5e-42ab-8db6-619db2878e50
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Upgrading to MBAM 2.5 or MBAM 2.5 SP1 from Previous Versions


This topic describes the process for upgrading the Microsoft BitLocker Administration and Monitoring (MBAM) Server and the MBAM Client from earlier versions of MBAM.

**Note**  
You can upgrade directly to MBAM 2.5 or MBAM 2.5 SP1 from any previous version of MBAM.

 

## Before you start the upgrade


Review the following information before you start the upgrade.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">What to know before you start</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>If you are installing the MBAM websites on one server and the web services on another server, you have to use Windows PowerShell cmdlets to configure them.</p></td>
<td align="left"><p>The MBAM Server Configuration wizard does not support configuring the websites on one server and the web services on a different server.</p></td>
</tr>
<tr class="even">
<td align="left"><p>If you are upgrading to MBAM 2.5 or 2.5 SP1 from MBAM 2.0 or 2.0 SP1 in Windows Server 2008 R2:</p>
<p>The Administration and Monitoring Website and the Self-Service Portal will not work if you install the required .NET Framework 4.5 software after Internet Information Services (IIS) is already installed.</p>
<p>This issue occurs because ASP.NET cannot be registered correctly with IIS if the .NET Framework is installed after IIS has already been installed.</p></td>
<td align="left"><p><strong>To resolve this issue:</strong></p>
<p>Run <strong>aspnet_regiis –i</strong> from the following location:</p>
<p>C:\windows\microsoft.net\Framework\v4.0.30319</p>
<p>For more information, see: <a href="https://go.microsoft.com/fwlink/?LinkId=393272" data-raw-source="[ASP.NET IIS Registration Tool](https://go.microsoft.com/fwlink/?LinkId=393272)">ASP.NET IIS Registration Tool</a>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Register an SPN on the application pool account if all of the following are true:</p>
<ul>
<li><p>You are upgrading from a previous version of MBAM.</p></li>
<li><p>Currently, you are not running the MBAM websites in a load-balanced or distributed configuration, but you would like to do so when you upgrade to MBAM 2.5 or 2.5 SP1.</p></li>
</ul></td>
<td align="left"><p>For instructions, see <a href="planning-how-to-secure-the-mbam-websites.md#bkmk-registerspn" data-raw-source="[Planning How to Secure the MBAM Websites](planning-how-to-secure-the-mbam-websites.md#bkmk-registerspn)">Planning How to Secure the MBAM Websites</a>.</p>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p><strong>What we recommend</strong></p></td>
<td align="left"><p>Register a service principal name (SPN) for the application pool account, even though you may already have registered SPNs for the machine account.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Why we recommend it</strong></p></td>
<td align="left"><p>Registering an SPN on the application pool account is required to configure the websites in a load-balanced or distributed configuration.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>What happens if SPNs are already configured on a machine account?</strong></p></td>
<td align="left"><p>MBAM will use the SPNs that you have already registered, and you don’t need to configure additional SPNs, but you are not able to configure the websites in a load-balanced or distributed configuration.</p></td>
</tr>
</tbody>
</table>
<p> </p></td>
</tr>
</tbody>
</table>

 

## Steps to upgrade the MBAM Server infrastructure


Use the steps in the following sections to upgrade MBAM for the Stand-alone topology or the System Center Configuration Manager Integration topology.

**To upgrade the MBAM Server infrastructure for Stand-alone topology**

1.  Uninstall previous versions of MBAM from **Programs and Features** and from web servers to make sure that information is not being written from MBAM clients to the MBAM infrastructure. For instructions, see [Removing MBAM Server Features or Software](removing-mbam-server-features-or-software.md#bkmk-removeserverfeatures).

2.  Back up your databases.

3.  Uninstall previous versions of MBAM from SQL Server by using **Programs and Features**, including SQL Servers hosting the MBAM reports via SQL Server Reporting Services. Remove any remaining MBAM server temporary files or folders from the database server and reporting services.

    **Note**  
    The databases will not be removed, and all compliance and recovery data is maintained in the database.

     

4.  Install and configure the MBAM 2.5 or 2.5 SP1 databases, reports, and web applications, in that order. The databases are upgraded in place.

5.  Update the Group Policy Objects (GPOs) using the MBAM 2.5 Templates to leverage the new features in MBAM, such as enforced encryption. If you do not update the GPOs and the MBAM client to MBAM 2.5, earlier versions of MBAM clients will continue to report against your current GPOs with reduced functionality. See [How to Get MDOP Group Policy (.admx) Templates](https://www.microsoft.com/download/details.aspx?id=41183) to download the latest ADMX templates.

    After you upgrade the MBAM Server infrastructure, the existing client computers continue to successfully report to the MBAM 2.5 or 2.5 SP1 Server, and recovery data continues to be stored.

6.  Install the latest MBAM 2.5 or 2.5 SP1 Client. Client computers do not need to be rebooted after the deployment.

**To upgrade the MBAM infrastructure for System Center Configuration Manager Integration topology**

1.  Uninstall previous versions of MBAM from **Programs and Features** and from web servers to make sure that information is not being written from MBAM clients to the MBAM infrastructure. For instructions, see [Removing MBAM Server Features or Software](removing-mbam-server-features-or-software.md#bkmk-removeserverfeatures).

2.  Back up your databases.

3.  Uninstall previous versions of MBAM from SQL Server by using **Programs and Features**, including SQL Servers hosting the MBAM reports via SQL Server Reporting Services. Remove any remaining MBAM server temporary files or folders from the database server and reporting services.

4.  Uninstall MBAM from the Configuration Manager server.

    **Note**  
    The databases and the Configuration Manager objects (baseline, MBAM supported computers collection, and Reports) will not be removed, and all compliance and recovery data is maintained in the database.

     

5.  Update the .mof files.

6.  Install and configure the MBAM 2.5 or 2.5 SP1 databases, reports, web applications, and Configuration Manager integration, in that order. The databases and Configuration Manager objects are upgraded in place.

7.  Optionally, update the Group Policy Objects (GPOs), and edit the settings if you want to implement new features in MBAM, such as enforced encryption. If you do not update the GPOs, MBAM will continue to report against your current GPOs. See [How to Get MDOP Group Policy (.admx) Templates](https://docs.microsoft.com/microsoft-desktop-optimization-pack/solutions/how-to-download-and-deploy-mdop-group-policy--admx--templates) to download the latest ADMX templates.

    After you upgrade the MBAM Server infrastructure, the existing client computers continue to successfully report to the MBAM 2.5 or 2.5 SP1 Server, and recovery data continues to be stored.

8.  Install the latest MBAM 2.5 or 2.5 SP1 Client. Client computers do not need to be rebooted after the deployment.

## Upgrade support for the MBAM Client


MBAM supports upgrades to the MBAM 2.5 Client from any earlier version of the MBAM Client.

**Ways to install the MBAM Client:**

-   Upgrade the computers running MBAM Client all at once or gradually after you install the MBAM 2.5 Server infrastructure.

-   Install the MBAM Client through an electronic software distribution system or through tools such as Active Directory Domain Services or System Center Configuration Manager.



## Related topics


[Deploying MBAM 2.5](deploying-mbam-25.md)

[Deploying the MBAM 2.5 Client](deploying-the-mbam-25-client.md)

[Configuring the MBAM 2.5 Server Features](configuring-the-mbam-25-server-features.md)

 

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring).
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 





