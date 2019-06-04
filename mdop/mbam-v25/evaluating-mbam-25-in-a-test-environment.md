---
title: Evaluating MBAM 2.5 in a Test Environment
description: Evaluating MBAM 2.5 in a Test Environment
author: dansimp
ms.assetid: 72959b7a-e55f-4797-91b3-5be23c8c2844
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Evaluating MBAM 2.5 in a Test Environment


This topic describes how you can set up a test environment to evaluate Microsoft BitLocker Administration and Monitoring (MBAM) 2.5 in the Stand-alone or System Center Configuration Manager Integration topology.

## Evaluating MBAM 2.5 by using the Stand-alone topology


To evaluate MBAM by using the Stand-alone topology, use the information in the following tables to install the MBAM Server software, and then configure the MBAM Server features in your test environment.

**To evaluate MBAM 2.5 by using the Stand-alone topology**

1. Before installing MBAM, do the following:

   <table>
   <colgroup>
   <col width="50%" />
   <col width="50%" />
   </colgroup>
   <thead>
   <tr class="header">
   <th align="left">Task</th>
   <th align="left">Where to get instructions</th>
   </tr>
   </thead>
   <tbody>
   <tr class="odd">
   <td align="left"><p>Ensure that you have installed all of the prerequisite software.</p></td>
   <td align="left"><p><a href="mbam-25-server-prerequisites-for-stand-alone-and-configuration-manager-integration-topologies.md" data-raw-source="[MBAM 2.5 Server Prerequisites for Stand-alone and Configuration Manager Integration Topologies](mbam-25-server-prerequisites-for-stand-alone-and-configuration-manager-integration-topologies.md)">MBAM 2.5 Server Prerequisites for Stand-alone and Configuration Manager Integration Topologies</a></p></td>
   </tr>
   <tr class="even">
   <td align="left"><p>Check the required hardware, RAM, and other specifications.</p></td>
   <td align="left"><p><a href="mbam-25-supported-configurations.md" data-raw-source="[MBAM 2.5 Supported Configurations](mbam-25-supported-configurations.md)">MBAM 2.5 Supported Configurations</a></p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p>Review the prerequisites for using Windows PowerShell if you plan to use the cmdlets to configure MBAM.</p></td>
   <td align="left"><p><a href="configuring-mbam-25-server-features-by-using-windows-powershell.md" data-raw-source="[Configuring MBAM 2.5 Server Features by Using Windows PowerShell](configuring-mbam-25-server-features-by-using-windows-powershell.md)">Configuring MBAM 2.5 Server Features by Using Windows PowerShell</a></p></td>
   </tr>
   </tbody>
   </table>



2. Install the MBAM Server software, and then configure the features you want.

   <table>
   <colgroup>
   <col width="50%" />
   <col width="50%" />
   </colgroup>
   <thead>
   <tr class="header">
   <th align="left">Task</th>
   <th align="left">Where to get instructions</th>
   </tr>
   </thead>
   <tbody>
   <tr class="odd">
   <td align="left"><p>Install the MBAM Server software on each server where you want to configure an MBAM Server feature.</p></td>
   <td align="left"><p><a href="installing-the-mbam-25-server-software.md" data-raw-source="[Installing the MBAM 2.5 Server Software](installing-the-mbam-25-server-software.md)">Installing the MBAM 2.5 Server Software</a></p></td>
   </tr>
   <tr class="even">
   <td align="left"><p>Configure the Compliance and Audit Database and the Recovery Database.</p></td>
   <td align="left"><p><a href="how-to-configure-the-mbam-25-databases.md" data-raw-source="[How to Configure the MBAM 2.5 Databases](how-to-configure-the-mbam-25-databases.md)">How to Configure the MBAM 2.5 Databases</a></p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p>Configure the Reports feature.</p></td>
   <td align="left"><p><a href="how-to-configure-the-mbam-25-reports.md" data-raw-source="[How to Configure the MBAM 2.5 Reports](how-to-configure-the-mbam-25-reports.md)">How to Configure the MBAM 2.5 Reports</a></p></td>
   </tr>
   <tr class="even">
   <td align="left"><p>Configure the web applications.</p></td>
   <td align="left"><p><a href="how-to-configure-the-mbam-25-web-applications.md" data-raw-source="[How to Configure the MBAM 2.5 Web Applications](how-to-configure-the-mbam-25-web-applications.md)">How to Configure the MBAM 2.5 Web Applications</a></p></td>
   </tr>
   </tbody>
   </table>



3. On a client computer, do the following:

   1.  Install the MBAM Client on a client computer.

   2.  Apply the MBAM Group Policy Objects (GPOs) to the computer.

   3.  Set the following registry keys to force the MBAM Client to wake up faster and at regular intervals:

       ``` syntax
       [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\FVE\MDOPBitLockerManagement
       "ClientWakeupFrequency"=dword:00000001
       "StatusReportingFrequency"=dword:00000001
       ```

       ``` syntax
       [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MBAM]
       "NoStartupDelay"=dword:00000001
       ```

       **Note**  
       Because these keys wake up the MBAM Client every minute, we recommend that you use these registry key settings only in a test environment.



   4.  Restart the **BitLocker Management Client Service**.

## Evaluating MBAM 2.5 by using the System Center 2012 Configuration Manager Integration topology


To evaluate MBAM by using the Configuration Manager Integration topology, use the information in the following tables to install the MBAM Server software, and then configure the MBAM Server features in your test environment. After installing the MBAM Client on a client computer, you will complete additional steps to force the MBAM Client to report the computer’s status to MBAM more quickly.

**To evaluate MBAM 2.5 by using the System Center 2012 Configuration Manager Integration topology**

1. Before installing MBAM, review the prerequisite software and supported configuration.

   <table>
   <colgroup>
   <col width="50%" />
   <col width="50%" />
   </colgroup>
   <thead>
   <tr class="header">
   <th align="left">Task</th>
   <th align="left">Where to get instructions</th>
   </tr>
   </thead>
   <tbody>
   <tr class="odd">
   <td align="left"><p>Ensure that you have installed all of the prerequisite software.</p></td>
   <td align="left"><p><a href="mbam-25-server-prerequisites-for-stand-alone-and-configuration-manager-integration-topologies.md" data-raw-source="[MBAM 2.5 Server Prerequisites for Stand-alone and Configuration Manager Integration Topologies](mbam-25-server-prerequisites-for-stand-alone-and-configuration-manager-integration-topologies.md)">MBAM 2.5 Server Prerequisites for Stand-alone and Configuration Manager Integration Topologies</a></p>
   <p><a href="mbam-25-server-prerequisites-that-apply-only-to-the-configuration-manager-integration-topology.md" data-raw-source="[MBAM 2.5 Server Prerequisites that Apply Only to the Configuration Manager Integration Topology](mbam-25-server-prerequisites-that-apply-only-to-the-configuration-manager-integration-topology.md)">MBAM 2.5 Server Prerequisites that Apply Only to the Configuration Manager Integration Topology</a></p></td>
   </tr>
   <tr class="even">
   <td align="left"><p>Check the required hardware, RAM, and other specifications.</p></td>
   <td align="left"><p><a href="mbam-25-supported-configurations.md" data-raw-source="[MBAM 2.5 Supported Configurations](mbam-25-supported-configurations.md)">MBAM 2.5 Supported Configurations</a></p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p>Review the prerequisites for using Windows PowerShell if you plan to use the cmdlets to configure MBAM.</p></td>
   <td align="left"><p><a href="configuring-mbam-25-server-features-by-using-windows-powershell.md" data-raw-source="[Configuring MBAM 2.5 Server Features by Using Windows PowerShell](configuring-mbam-25-server-features-by-using-windows-powershell.md)">Configuring MBAM 2.5 Server Features by Using Windows PowerShell</a></p></td>
   </tr>
   <tr class="even">
   <td align="left"><p>Create or edit the .mof files.</p></td>
   <td align="left"><p><a href="edit-the-configurationmof-file-mbam-25.md" data-raw-source="[Edit the Configuration.mof File](edit-the-configurationmof-file-mbam-25.md)">Edit the Configuration.mof File</a></p>
   <p><a href="create-or-edit-the-sms-defmof-file-mbam-25.md" data-raw-source="[Create or Edit the Sms_def.mof File](create-or-edit-the-sms-defmof-file-mbam-25.md)">Create or Edit the Sms_def.mof File</a></p></td>
   </tr>
   </tbody>
   </table>



2. Install the MBAM Server software, and then configure the features you want.

   <table>
   <colgroup>
   <col width="50%" />
   <col width="50%" />
   </colgroup>
   <thead>
   <tr class="header">
   <th align="left">Task</th>
   <th align="left">Where to get instructions</th>
   </tr>
   </thead>
   <tbody>
   <tr class="odd">
   <td align="left"><p>Install the MBAM Server software on each server where you want to configure an MBAM Server feature.</p>
   <div class="alert">
   <strong>Note</strong><br/><p>You can install the databases to a remote SQL Server computer by using Windows PowerShell or an exported data-tier application (DAC) package. For more information about DAC packages, see <a href="https://technet.microsoft.com/library/ee210546.aspx" data-raw-source="[Data-tier Applications](https://technet.microsoft.com/library/ee210546.aspx)">Data-tier Applications</a>.</p>
   </div>
   <div>

   </div></td>
   <td align="left"><p><a href="installing-the-mbam-25-server-software.md" data-raw-source="[Installing the MBAM 2.5 Server Software](installing-the-mbam-25-server-software.md)">Installing the MBAM 2.5 Server Software</a></p></td>
   </tr>
   <tr class="even">
   <td align="left"><p>Configure the Compliance and Audit Database and the Recovery Database.</p></td>
   <td align="left"><p><a href="how-to-configure-the-mbam-25-databases.md" data-raw-source="[How to Configure the MBAM 2.5 Databases](how-to-configure-the-mbam-25-databases.md)">How to Configure the MBAM 2.5 Databases</a></p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p>Configure the Reports feature.</p></td>
   <td align="left"><p><a href="how-to-configure-the-mbam-25-reports.md" data-raw-source="[How to Configure the MBAM 2.5 Reports](how-to-configure-the-mbam-25-reports.md)">How to Configure the MBAM 2.5 Reports</a></p></td>
   </tr>
   <tr class="even">
   <td align="left"><p>Configure the web applications.</p></td>
   <td align="left"><p><a href="how-to-configure-the-mbam-25-web-applications.md" data-raw-source="[How to Configure the MBAM 2.5 Web Applications](how-to-configure-the-mbam-25-web-applications.md)">How to Configure the MBAM 2.5 Web Applications</a></p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p>Configure the System Center Configuration Manager to install the Configuration Manager objects.</p></td>
   <td align="left"><p><a href="how-to-configure-the-mbam-25-system-center-configuration-manager-integration.md" data-raw-source="[How to Configure the MBAM 2.5 System Center Configuration Manager Integration](how-to-configure-the-mbam-25-system-center-configuration-manager-integration.md)">How to Configure the MBAM 2.5 System Center Configuration Manager Integration</a></p></td>
   </tr>
   </tbody>
   </table>



3. On a client computer, do the following:

   1.  Install the MBAM Client and the Configuration Manager Client on a client computer.

   2.  Apply the MBAM Group Policy Objects to the computer.

   3.  Set the following registry keys to force the MBAM Client to wake up faster and at regular intervals:

       ``` syntax
       [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\FVE\MDOPBitLockerManagement
       "ClientWakeupFrequency"=dword:00000001
       "StatusReportingFrequency"=dword:00000001
       ```

       ``` syntax
       [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MBAM]
       "NoStartupDelay"=dword:00000001
       ```

       **Note**  
       Because these keys wake up the MBAM Client every minute, we recommend that you use these registry key settings only in a test environment.



   4.  Restart the **BitLocker Management Client Service**.

   5.  In Control Panel, open **Configuration Manager**, and then click the **Actions** tab.

   6.  Select **Hardware Inventory Cycle**, and then click **Run Now**. This step runs the hardware inventory by using the new classes that you imported to your .mof files, and then sends the data to the Configuration Manager server.

   7.  Select **Machine Policy Retrieval & Evaluation Cycle**, and then click **Run Now** to apply the Group Policy Objects that are relevant to that client computer.



4. In the Configuration Manager console, do the following:

   1.  In the navigation pane, right-click **MBAM Supported Computers**, click **Update Membership**, and then click **Yes** to force the client computer to report its membership immediately.

   2.  In the navigation pane, click **MBAM Supported Computers** to verify that the client computer appears in the collection.

5. On the client computer, in Control Panel, reopen **Configuration Manager** again, and do the following:

   1.  Click the **Actions** tab, and then rerun **Machine Policy Retrieval & Evaluation Cycle**.

   2.  Click the **Configurations** tab, select the BitLocker baseline, and then click **Evaluate**.

6. In the Configuration Manager console, verify that the client computer appears on the Enterprise Compliance Report: as follows:

   1.  In the navigation pane, select the **Monitoring** workspace.

   2.  In the console tree, expand **Overview** &gt; **Reporting** &gt; **Reports** &gt; **MBAM**.

   3.  Select the folder that represents the language in which you want to view reports, and then select the report in the results pane.

## Evaluating MBAM 2.5 by using the System Center Configuration Manager 2007 Integration topology


To evaluate MBAM by using the Configuration Manager Integration topology, follow the same steps to install and configure MBAM in your test environment as you use in a production environment. After installing the MBAM Client on a client computer, complete the additional steps in this topic to enable the MBAM Client to start reporting the computer’s status to MBAM more quickly.

**To evaluate MBAM by using the Configuration Manager 2007 Integration topology**

1. Before you install MBAM, do the following:

   <table>
   <colgroup>
   <col width="50%" />
   <col width="50%" />
   </colgroup>
   <thead>
   <tr class="header">
   <th align="left">Task</th>
   <th align="left">Where to get instructions</th>
   </tr>
   </thead>
   <tbody>
   <tr class="odd">
   <td align="left"><p>Ensure that you have installed all of the prerequisite software.</p></td>
   <td align="left"><p><a href="mbam-25-server-prerequisites-for-stand-alone-and-configuration-manager-integration-topologies.md" data-raw-source="[MBAM 2.5 Server Prerequisites for Stand-alone and Configuration Manager Integration Topologies](mbam-25-server-prerequisites-for-stand-alone-and-configuration-manager-integration-topologies.md)">MBAM 2.5 Server Prerequisites for Stand-alone and Configuration Manager Integration Topologies</a></p>
   <p><a href="mbam-25-server-prerequisites-that-apply-only-to-the-configuration-manager-integration-topology.md" data-raw-source="[MBAM 2.5 Server Prerequisites that Apply Only to the Configuration Manager Integration Topology](mbam-25-server-prerequisites-that-apply-only-to-the-configuration-manager-integration-topology.md)">MBAM 2.5 Server Prerequisites that Apply Only to the Configuration Manager Integration Topology</a></p></td>
   </tr>
   <tr class="even">
   <td align="left"><p>Check the required hardware, RAM, and other specifications.</p></td>
   <td align="left"><p><a href="mbam-25-supported-configurations.md" data-raw-source="[MBAM 2.5 Supported Configurations](mbam-25-supported-configurations.md)">MBAM 2.5 Supported Configurations</a></p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p>Create or edit the .mof files.</p></td>
   <td align="left"><p><a href="edit-the-configurationmof-file-mbam-25.md" data-raw-source="[Edit the Configuration.mof File](edit-the-configurationmof-file-mbam-25.md)">Edit the Configuration.mof File</a></p>
   <p><a href="create-or-edit-the-sms-defmof-file-mbam-25.md" data-raw-source="[Create or Edit the Sms_def.mof File](create-or-edit-the-sms-defmof-file-mbam-25.md)">Create or Edit the Sms_def.mof File</a></p></td>
   </tr>
   </tbody>
   </table>



2. Install the MBAM Server software, and then configure the features you want.

   <table>
   <colgroup>
   <col width="50%" />
   <col width="50%" />
   </colgroup>
   <thead>
   <tr class="header">
   <th align="left">Task</th>
   <th align="left">Where to get instructions</th>
   </tr>
   </thead>
   <tbody>
   <tr class="odd">
   <td align="left"><p>Install the MBAM Server software on each server where you want to configure an MBAM Server feature.</p>
   <div class="alert">
   <strong>Note</strong><br/><p>You can install the databases to a remote SQL Server computer by using Windows PowerShell or an exported data-tier application (DAC) package. For more information about DAC packages, see <a href="https://technet.microsoft.com/library/ee210546.aspx" data-raw-source="[Data-tier Applications](https://technet.microsoft.com/library/ee210546.aspx)">Data-tier Applications</a>.</p>
   </div>
   <div>

   </div></td>
   <td align="left"><p><a href="installing-the-mbam-25-server-software.md" data-raw-source="[Installing the MBAM 2.5 Server Software](installing-the-mbam-25-server-software.md)">Installing the MBAM 2.5 Server Software</a></p></td>
   </tr>
   <tr class="even">
   <td align="left"><p>Configure the Compliance and Audit Database and the Recovery Database.</p></td>
   <td align="left"><p><a href="how-to-configure-the-mbam-25-databases.md" data-raw-source="[How to Configure the MBAM 2.5 Databases](how-to-configure-the-mbam-25-databases.md)">How to Configure the MBAM 2.5 Databases</a></p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p>Configure the Reports feature.</p></td>
   <td align="left"><p><a href="how-to-configure-the-mbam-25-reports.md" data-raw-source="[How to Configure the MBAM 2.5 Reports](how-to-configure-the-mbam-25-reports.md)">How to Configure the MBAM 2.5 Reports</a></p></td>
   </tr>
   <tr class="even">
   <td align="left"><p>Configure the web applications.</p></td>
   <td align="left"><p><a href="how-to-configure-the-mbam-25-web-applications.md" data-raw-source="[How to Configure the MBAM 2.5 Web Applications](how-to-configure-the-mbam-25-web-applications.md)">How to Configure the MBAM 2.5 Web Applications</a></p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p>Configure the System Center Configuration Manager to install the Configuration Manager objects.</p></td>
   <td align="left"><p><a href="how-to-configure-the-mbam-25-system-center-configuration-manager-integration.md" data-raw-source="[How to Configure the MBAM 2.5 System Center Configuration Manager Integration](how-to-configure-the-mbam-25-system-center-configuration-manager-integration.md)">How to Configure the MBAM 2.5 System Center Configuration Manager Integration</a></p></td>
   </tr>
   </tbody>
   </table>



3. On a client computer, do the following:

   1.  Install the MBAM Client on a client computer.

   2.  Apply the MBAM Group Policy Objects to the computer.

   3.  Set the following registry keys to force the MBAM Client to wake up more quickly and at faster intervals:

       ``` syntax
       [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\FVE\MDOPBitLockerManagement
       "ClientWakeupFrequency"=dword:00000001
       "StatusReportingFrequency"=dword:00000001
       ```

       ``` syntax
       [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MBAM]
       "NoStartupDelay"=dword:00000001
       ```

       **Note**  
       Because these keys wake up the MBAM Client every minute, we recommend that you use these registry key settings only in an evaluation environment.



   4.  Restart the **BitLocker Management Client Service**.

   5.  In Control Panel, open **Configuration Manager**, and then click the **Actions** tab.

   6.  Select **Machine Policy Retrieval & Evaluation Cycle**, and then click **Run Now** to apply the Group Policy Objects that are relevant to that client computer.

   7.  Select **Hardware Inventory Cycle**, and then click **Run Now**. This step runs the hardware inventory by using the new classes that you imported to your .mof files and then sends the data to the Configuration Manager server.

4. In the Configuration Manager console, do the following:

   1.  In the navigation pane, right-click **MBAM Supported Computers**, click **Update Membership**, and then click **Yes** to force the client computer to report its membership immediately.

   2.  In the navigation pane, click **MBAM Supported Computers** to verify that the client computer appears in the collection.

5. On the client computer, in Control Panel, reopen **Configuration Manager** again, and do the following:

   1.  Click the **Actions** tab, and then rerun **Machine Policy Retrieval & Evaluation Cycle**.

   2.  Click the **Configurations** tab, select the BitLocker baseline, and click **Evaluate**.

6. In the Configuration Manager console, verify that the client computer appears on the Enterprise Compliance Report, as follows

   1.  In the navigation pane, expand **Computer Management** &gt; **Reporting** &gt; **Reporting Services** &gt; **&lt;server name&gt;MBAM**.

   2.  Within the **MBAM** node, select the folder that represents the language in which you want to view reports, and then select the report from the results pane.


## Related topics


[Getting Started with MBAM 2.5](getting-started-with-mbam-25.md)


## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring).
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).





