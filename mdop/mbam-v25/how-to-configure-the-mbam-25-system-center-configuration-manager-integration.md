---
title: How to Configure the MBAM 2.5 System Center Configuration Manager Integration
description: How to Configure the MBAM 2.5 System Center Configuration Manager Integration
author: dansimp
ms.assetid: 2b8a4c13-1dad-41e8-89ac-6889c5f7e051
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Configure the MBAM 2.5 System Center Configuration Manager Integration


This topic explains how to configure Microsoft BitLocker Administration and Monitoring (MBAM) to use the System Center Configuration Manager Integration topology, which integrates MBAM with Configuration Manager.

The instructions explain how to configure Configuration Manager Integration by using:

-   A Windows PowerShell cmdlet

-   The MBAM Server Configuration wizard

The instructions are based on the recommended architecture in [High-Level Architecture for MBAM 2.5](high-level-architecture-for-mbam-25.md).

**Before you start the configuration:**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Step</th>
<th align="left">Where to get instructions</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Review the recommended architecture for MBAM.</p></td>
<td align="left"><p>[High-Level Architecture of MBAM 2.5 with Configuration Manager Integration Topology](high-level-architecture-of-mbam-25-with-configuration-manager-integration-topology.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Review the supported configurations for MBAM.</p></td>
<td align="left"><p>[MBAM 2.5 Supported Configurations](mbam-25-supported-configurations.md)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Complete the required prerequisites on each server.</p></td>
<td align="left"><ul>
<li><p>[MBAM 2.5 Server Prerequisites for Stand-alone and Configuration Manager Integration Topologies](mbam-25-server-prerequisites-for-stand-alone-and-configuration-manager-integration-topologies.md)</p></li>
<li><p>[MBAM 2.5 Server Prerequisites that Apply Only to the Configuration Manager Integration Topology](mbam-25-server-prerequisites-that-apply-only-to-the-configuration-manager-integration-topology.md)</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Install the MBAM Server software on each server where you will configure an MBAM Server feature.</p>
<div class="alert">
<strong>Note</strong>  
<p>For this topology, you must install the Configuration Manager console on the computer where you are installing the MBAM Server software.</p>
</div>
<div>
 
</div></td>
<td align="left"><p>[Installing the MBAM 2.5 Server Software](installing-the-mbam-25-server-software.md)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Review Windows PowerShell prerequisites (applicable only if you are going to use Windows PowerShell cmdlets to configure MBAM).</p></td>
<td align="left"><p>[Configuring MBAM 2.5 Server Features by Using Windows PowerShell](configuring-mbam-25-server-features-by-using-windows-powershell.md)</p></td>
</tr>
</tbody>
</table>

 

**To configure Configuration Manager Integration by using Windows PowerShell**

1.  Before you start the configuration, see [Configuring MBAM 2.5 Server Features by Using Windows PowerShell](configuring-mbam-25-server-features-by-using-windows-powershell.md) to review the prerequisites for using Windows PowerShell.

2.  Use the **Enable-MbamCMIntegration** Windows PowerShell cmdlet to configure the Reports. To get information about this cmdlet, type **Get-Help Enable-MbamCMIntegration**.

**To configure the System Center Configuration Manager Integration by using the wizard**

1.  On the server where you want to configure the System Center Configuration Manager Integration feature, start the MBAM Server Configuration wizard. You can select **MBAM Server Configuration** from the **Start** menu to open the wizard.

2.  Click **Add New Features**, select **System Center Configuration Manager Integration**, and then click **Next**.

    The wizard checks that all prerequisites for the Configuration Manager Integration have been met.

3.  If the prerequisite check is successful, click **Next** to continue. Otherwise, resolve any missing prerequisites, and then click **Check prerequisites again**.

4.  Use the following descriptions to enter the field values in the wizard:

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Field</th>
    <th align="left">Description</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><strong>SQL Server Reporting Services server</strong></p></td>
    <td align="left"><p>Fully qualified domain name (FQDN) of the server with the Reporting Service point role. This is the server to which the MBAM Configuration Manager Reports are deployed.</p>
    <p>If you don’t specify a server, the Configuration Manager Reports will be deployed to the local server.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><strong>SQL Server Reporting Services instance</strong></p></td>
    <td align="left"><p>Name of the SQL Server Reporting Services (SSRS) instance where the Configuration Manager Reports are deployed.</p>
    <p>If you don’t specify an instance, the Configuration Manager Reports will be deployed to the default SSRS instance name. The value you enter is ignored if the server has System Center 2012 Configuration Manager installed.</p></td>
    </tr>
    </tbody>
    </table>

     

5.  On the **Summary** page, review the features that will be added.

    **Note**  
    To create a Windows PowerShell script of the entries you just made, click **Export PowerShell Script** and save the script.

     

6.  Click **Add** to add the Configuration Manager Integration feature to the server, and then click **Close**.



## Related topics


[Configuring the MBAM 2.5 Server Features](configuring-the-mbam-25-server-features.md)

[Validating the MBAM 2.5 Server Feature Configuration](validating-the-mbam-25-server-feature-configuration.md)

 
## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).
 





