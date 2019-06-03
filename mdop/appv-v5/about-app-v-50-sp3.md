---
title: About App-V 5.0 SP3
description: About App-V 5.0 SP3
author: dansimp
ms.assetid: 67b5268b-edc1-4027-98b0-b3937dd70a6b
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 11/02/2016
---


# About App-V 5.0 SP3


Use the following sections to review information about significant changes that apply to Microsoft Application Virtualization (App-V) 5.0 SP3:

-   [App-V 5.0 SP3 software prerequisites and supported configurations](#bkmk-sp3-prereq-configs)

-   [Migrating to App-V 5.0 SP3](#bkmk-migrate-to-50sp3)

-   [Manually created connection group xml file requires update to schema](#bkmk-update-schema-cg)

-   [Improvements to connection groups](#bkmk-cg-improvements)

-   [Administrators can publish and unpublish packages for a specific user](#bkmk-usersid-pub-pkgs-specf-user)

-   [Enable only administrators to publish and unpublish packages](#bkmk-admins-only-pub-unpub-pkgs)

-   [RunVirtual registry key supports packages that are published to the user](#bkmk-runvirtual-reg-key)

-   [New PowerShell cmdlets and updateable cmdlet help](#bkmk-posh-cmdlets-help)

-   [Primary virtual application directory (PVAD) is hidden but can be turned on](#bkmk-pvad-hidden)

-   [ClientVersion is required to view App-V publishing metadata](#bkmk-pub-metadata-clientversion)

-   [App-V event logs have been consolidated](#bkmk-event-logs-moved)

## <a href="" id="bkmk-sp3-prereq-configs"></a>App-V 5.0 SP3 software prerequisites and supported configurations


See the following links for the App-V 5.0 SP3 software prerequisites and supported configurations.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Links to prerequisites and supported configurations</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>[App-V 5.0 SP3 Prerequisites](app-v-50-sp3-prerequisites.md)</p></td>
<td align="left"><p>Prerequisite software that you must install before starting the App-V 5.0 SP3 installation</p></td>
</tr>
<tr class="even">
<td align="left"><p>[App-V 5.0 SP3 Supported Configurations](app-v-50-sp3-supported-configurations.md)</p></td>
<td align="left"><p>Supported operating systems and hardware requirements for the App-V Server, Sequencer, and Client components</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-migrate-to-50sp3"></a>Migrating to App-V 5.0 SP3


Use the following information to upgrade to App-V 5.0 SP3 from earlier versions.

### Before you start the upgrade

Review the following information before you start the upgrade:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Items to review before upgrading</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Components to upgrade</p></td>
<td align="left"><ol>
<li><p>App-V Server</p></li>
<li><p>Sequencer</p></li>
<li><p>App-V client or App-V Remote Desktop Services (RDS) client</p></li>
<li><p>Connection groups</p></li>
</ol>
<div class="alert">
<strong>Note</strong>  
<p>To use the App-V client user interface, download the existing version from [Microsoft Application Virtualization 5.0 Client UI Application](https://www.microsoft.com/download/details.aspx?id=41186).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>Upgrading from App-V 4.x</p></td>
<td align="left"><p>You must first upgrade to App-V 5.0. You cannot upgrade directly from App-V 4.x to App-V 5.0 SP3.</p>
<p>For more information, see:</p>
<ul>
<li><p>[About App-V 5.0](about-app-v-50.md) </p></li>
<li><p>[Planning for Migrating from a Previous Version of App-V](planning-for-migrating-from-a-previous-version-of-app-v.md)</p></li>
</ul>
<p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Upgrading from App-V 5.0 or later</p></td>
<td align="left"><p>You can upgrade to App-V 5.0 SP3 directly from any of the following versions:</p>
<ul>
<li><p>App-V 5.0</p></li>
<li><p>App-V 5.0 SP1</p></li>
<li><p>App-V 5.0 SP2</p></li>
</ul>
<p>To upgrade to App-V 5.0 SP3, follow the steps in the remaining sections of this article.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Required changes to packages and connection groups after upgrade</p></td>
<td align="left"><p>None. Packages and connection groups will continue to work as they currently do.</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-steps-upgrd-infrastruc"></a>Steps to upgrade the App-V infrastructure

Complete the following steps to upgrade each component of the App-V infrastructure to App-V 5.0 SP3.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Step</th>
<th align="left">For more information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Step 1: Upgrade the App-V Server.</p>
<p>If you are not using the App-V Server, skip this step and go to the next step.</p>
<div class="alert">
<strong>Note</strong>  
<p>The App-V 5.0 SP3 client is compatible with the App-V 5.0 SP1 Server.</p>
</div>
<div>
 
</div></td>
<td align="left"><p>Follow these steps:</p>
<ol>
<li><p>Review the [Release Notes for App-V 5.0 SP3](release-notes-for-app-v-50-sp3.md) for issues that may affect the App-V Server installation.</p></li>
<li><p>Do one of the following, depending on the method you are using to upgrade the Management database and/or Reporting database:</p>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Database upgrade method</th>
<th align="left">Step</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows Installer</p></td>
<td align="left"><p>Skip this step and go to step 3, “If you are upgrading the App-V Server...”</p></td>
</tr>
<tr class="even">
<td align="left"><p>SQL scripts</p></td>
<td align="left"><table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Management database</strong></p></td>
<td align="left"><p>To install or upgrade, see [SQL scripts to install or upgrade the App-V 5.0 SP3 Management Server database fail](https://support.microsoft.com/kb/3031340).</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Reporting database</strong></p></td>
<td align="left"><p>Follow the steps in [How to Deploy the App-V Databases by Using SQL Scripts](how-to-deploy-the-app-v-databases-by-using-sql-scripts.md).</p></td>
</tr>
</tbody>
</table>
<p> </p></td>
</tr>
</tbody>
</table>
<p> </p></li>
<li><p>If you are upgrading the App-V Server from App-V 5.0 SP1 Hotfix Package 3 or later, complete the steps in section [Check registry keys after installing the App-V 5.0 SP3 Server](#bkmk-check-reg-key-svr).</p></li>
<li><p>Follow the steps in [How to Deploy the App-V 5.0 Server](how-to-deploy-the-app-v-50-server-50sp3.md).</p></li>
</ol></td>
</tr>
<tr class="even">
<td align="left"><p>Step 2: Upgrade the App-V Sequencer.</p></td>
<td align="left"><p>See [How to Install the Sequencer](how-to-install-the-sequencer-beta-gb18030.md).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Step 3: Upgrade the App-V client or App-V RDS client.</p></td>
<td align="left"><p>See [How to Deploy the App-V Client](how-to-deploy-the-app-v-client-gb18030.md).</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-check-reg-key-svr"></a>Check registry keys before installing the App-V 5.0 SP3 Server

This is step 3 from the previous table.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p><strong>When this step is required</strong></p></td>
<td align="left"><p>You are upgrading from App-V SP1 with any subsequent Hotfix Packages that you installed by using an .msp file.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Which components require that you do this step</strong></p></td>
<td align="left"><p>Only the App-V Server components that you are upgrading.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>When you need to do this step</strong></p></td>
<td align="left"><p>Before you upgrade the App-V Server to App-V 5.0 SP3</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>What you need to do</strong></p></td>
<td align="left"><p>Using the information in the following tables, update each registry key value under <code>HKLM\Software\Microsoft\AppV\Server</code> with the value that you provided in your original server installation. Completing this step restores registry values that may have been removed when App-V SP1 Hotfix Packages were installed.</p></td>
</tr>
</tbody>
</table>

 

**ManagementDatabase key**

If you are installing the Management database, set these registry keys under `HKLM\Software\Microsoft\AppV\Server\ManagementDatabase`.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Key name</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>IS_MANAGEMENT_DB_PUBLIC_ACCESS_ACCOUNT_REQUIRED</p></td>
<td align="left"><p>Describes whether a public access account is required to access non-local management databases. Value is set to “1” if it is required.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MANAGEMENT_DB_NAME</p></td>
<td align="left"><p>Name of the Management database.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MANAGEMENT_DB_PUBLIC_ACCESS_ACCOUNT</p></td>
<td align="left"><p>Account used for read (public) access to the Management database.</p>
<p>Used when <code>IS_MANAGEMENT_DB_PUBLIC_ACCESS_ACCOUNT_REQUIRED</code> is set to 1.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MANAGEMENT_DB_PUBLIC_ACCESS_ACCOUNT_SID</p></td>
<td align="left"><p>Secure identifier (SID) of the account used for read (public) access to the Management database.</p>
<p>Used when <code>IS_MANAGEMENT_DB_PUBLIC_ACCESS_ACCOUNT_REQUIRED</code> is set to 1.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MANAGEMENT_DB_SQL_INSTANCE</p></td>
<td align="left"><p>SQL Server instance for the Management database.</p>
<p>If the value is blank, the default database instance is used.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MANAGEMENT_DB_WRITE_ACCESS_ACCOUNT</p></td>
<td align="left"><p>Account used for write (administrator) access to the Management database.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MANAGEMENT_DB_WRITE_ACCESS_ACCOUNT_SID</p></td>
<td align="left"><p>Secure identifier (SID) of the account used for write (administrator) access to the Management database.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MANAGEMENT_REMOTE_SERVER_MACHINE_ACCOUNT</p></td>
<td align="left"><p>Management server remote computer account (domain\account).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MANAGEMENT_SERVER_INSTALL_ADMIN_ACCOUNT</p></td>
<td align="left"><p>Installation administrator login for the Management server (domain\account).</p></td>
</tr>
<tr class="even">
<td align="left"><p>MANAGEMENT_SERVER_MACHINE_USE_LOCAL</p></td>
<td align="left"><p>Valid values are:</p>
<ul>
<li><p><strong>1</strong> – the Management service is on the local computer, that is, MANAGEMENT_REMOTE_SERVER_MACHINE_ACCOUNT is blank.</p></li>
<li><p><strong>0</strong> - the Management service is on a different computer from the local computer.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

**ManagementService key**

If you are installing the Management server, set these registry keys under `HKLM\Software\Microsoft\AppV\Server\ManagementService`.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Key name</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>MANAGEMENT_ADMINACCOUNT</p></td>
<td align="left"><p>Active Directory Domain Services (AD DS) group or account that is authorized to manage App-V (domain\account).</p></td>
</tr>
<tr class="even">
<td align="left"><p>MANAGEMENT_DB_SQL_INSTANCE</p></td>
<td align="left"><p>SQL server instance that contains the Management database.</p>
<p>If the value is blank, the default database instance is used.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MANAGEMENT_DB_SQL_SERVER_NAME</p></td>
<td align="left"><p>Name of the remote SQL server with the Management database.</p>
<p>If the value is blank, the local computer is used.</p></td>
</tr>
</tbody>
</table>

 

**ReportingDatabase key**

If you are installing the Reporting database, set these registry keys under `HKLM\Software\Microsoft\AppV\Server\ReportingDatabase`.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Key name</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>IS_REPORTING_DB_PUBLIC_ACCESS_ACCOUNT_REQUIRED</p></td>
<td align="left"><p>Describes whether a public access account is required to access non-local reporting databases. Value is set to “1” if it is required.</p></td>
</tr>
<tr class="even">
<td align="left"><p>REPORTING_DB_NAME</p></td>
<td align="left"><p>Name of the Reporting database.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>REPORTING_DB_PUBLIC_ACCESS_ACCOUNT</p></td>
<td align="left"><p>Account used for read (public) access to the Reporting database.</p>
<p>Used when <code>IS_REPORTING_DB_PUBLIC_ACCESS_ACCOUNT_REQUIRED</code> is set to 1.</p></td>
</tr>
<tr class="even">
<td align="left"><p>REPORTING_DB_PUBLIC_ACCESS_ACCOUNT_SID</p></td>
<td align="left"><p>Secure identifier (SID) of the account used for read (public) access to the Reporting database.</p>
<p>Used when <code>IS_REPORTING_DB_PUBLIC_ACCESS_ACCOUNT_REQUIRED</code> is set to 1.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>REPORTING_DB_SQL_INSTANCE</p></td>
<td align="left"><p>SQL Server instance for the Reporting database.</p>
<p>If the value is blank, the default database instance is used.</p></td>
</tr>
<tr class="even">
<td align="left"><p>REPORTING_DB_WRITE_ACCESS_ACCOUNT</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>REPORTING_DB_WRITE_ACCESS_ACCOUNT_SID</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>REPORTING_REMOTE_SERVER_MACHINE_ACCOUNT</p></td>
<td align="left"><p>Reporting server remote computer account (domain\account).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>REPORTING_SERVER_INSTALL_ADMIN_ACCOUNT</p></td>
<td align="left"><p>Installation administrator login for the Reporting server (domain\account).</p></td>
</tr>
<tr class="even">
<td align="left"><p>REPORTING_SERVER_MACHINE_USE_LOCAL</p></td>
<td align="left"><p>Valid values are:</p>
<ul>
<li><p><strong>1</strong> – the Reporting service is on the local computer, that is, REPORTING_REMOTE_SERVER_MACHINE_ACCOUNT is blank.</p></li>
<li><p><strong>0</strong> - the Reporting service is on a different computer from the local computer.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

**ReportingService key**

If you are installing the Reporting server, set these registry keys under `HKLM\Software\Microsoft\AppV\Server\ReportingService`.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Key name</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>REPORTING_DB_SQL_INSTANCE</p></td>
<td align="left"><p>SQL Server instance for the Reporting database.</p>
<p>If the value is blank, the default database instance is used.</p></td>
</tr>
<tr class="even">
<td align="left"><p>REPORTING_DB_SQL_SERVER_NAME</p></td>
<td align="left"><p>Name of the remote SQL server with the Reporting database.</p>
<p>If the value is blank, the local computer is used.</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-update-schema-cg"></a>Manually created connection group xml file requires update to schema


If you are manually creating the connection group XML file, and want to use the new “optional packages” and “use any version” features that are described in [Improvements to connection groups](#bkmk-cg-improvements), you must specify the following schema in the XML file:

`xmlns="http://schemas.microsoft.com/appv/2014/virtualapplicationconnectiongroup"`

For examples and more information, see [About the Connection Group File](about-the-connection-group-file.md).

## <a href="" id="bkmk-cg-improvements"></a>Improvements to connection groups


You can manage connection groups more easily by using optional packages and other improvements that have been added in App-V 5.0 SP3. The following table summarizes the tasks that you can perform by using the new connection group features, and links to more detailed information about each task.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task/feature</th>
<th align="left">Description</th>
<th align="left">Links to more information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Enable a connection group to include optional packages</p></td>
<td align="left"><p>Including optional packages in a connection group enables you to dynamically determine which applications will be included in the connection group’s virtual environment, based on the applications that users are entitled to.</p>
<p>You don’t need to manage as many connection groups because you can mix optional and non-optional packages in the same connection group. Mixing packages allows different groups of users to use the same connection group, even though users might have only one package in common.</p>
<p><strong>Example</strong>: You can enable a package with Microsoft Office for all users, but enable different optional packages, which contain different Office plug-ins, to different subsets of users.</p></td>
<td align="left"><p>[How to Use Optional Packages in Connection Groups](how-to-use-optional-packages-in-connection-groups.md#bkmk-apps-plugs-optional)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Unpublish or delete an optional package without changing the connection group</p></td>
<td align="left"><p>Unpublish or delete, or unpublish and republish an optional package, which is in a connection group, without having to disable or re-enable the connection group on the App-V client.</p></td>
<td align="left"><p>[How to Use Optional Packages in Connection Groups](how-to-use-optional-packages-in-connection-groups.md#bkmk-apps-plugs-optional)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Publish connection groups that contain user-published and globally published packages</p></td>
<td align="left"><p>Create a user-published connection group that contains user-published and globally published packages.</p></td>
<td align="left"><p>[How to Create a Connection Group with User-Published and Globally Published Packages](how-to-create-a-connection-group-with-user-published-and-globally-published-packages.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Make a connection group ignore the package version</p></td>
<td align="left"><p>Configure a connection group to accept any version of a package, which enables you to upgrade a package without having to disable the connection group. In addition, if there is an optional package with an incorrect version in the connection group, the package is ignored and won’t block the connection group’s virtual environment from being created.</p></td>
<td align="left"><p>[How to Make a Connection Group Ignore the Package Version](how-to-make-a-connection-group-ignore-the-package-version.md)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Limit end users’ publishing capabilities</p></td>
<td align="left"><p>Enable only administrators (not end users) to publish packages and to enable connection groups.</p></td>
<td align="left"><p>For information about connection groups, see [How to Allow Only Administrators to Enable Connection Groups](how-to-allow-only-administrators-to-enable-connection-groups.md)</p>
<p>For information about packages, see the following articles:</p>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Method</th>
<th align="left">Link to more information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Management console</p></td>
<td align="left"><p>[How to Publish a Package by Using the Management Console](how-to-publish-a-package-by-using-the-management-console-50.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>PowerShell</p></td>
<td align="left"><p>[How to Manage Connection Groups on a Stand-alone Computer by Using PowerShell](how-to-manage-connection-groups-on-a-stand-alone-computer-by-using-powershell.md#bkmk-admin-only-posh-topic-cg)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Third-party electronic software delivery system</p></td>
<td align="left"><p>[How to Enable Only Administrators to Publish Packages by Using an ESD](how-to-enable-only-administrators-to-publish-packages-by-using-an-esd.md)</p></td>
</tr>
</tbody>
</table>
<p> </p></td>
</tr>
<tr class="even">
<td align="left"><p>Enable or disable a connection group for a specific user</p></td>
<td align="left"><p>Administrators can enable or disable a connection group for a specific user by using the optional <strong>–UserSID</strong> parameter with the following cmdlets:</p>
<ul>
<li><p>Enable-AppVClientConnectionGroup</p></li>
<li><p>Disable-AppVClientConnectionGroup</p></li>
</ul></td>
<td align="left"><p>[How to Manage Connection Groups on a Stand-alone Computer by Using PowerShell](how-to-manage-connection-groups-on-a-stand-alone-computer-by-using-powershell.md#bkmk-enable-cg-for-user-poshtopic)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Merging identical package paths into one virtual directory in connection groups</p></td>
<td align="left"><p>If two or more packages in a connection group contain identical directory paths, the paths are merged into a single virtual directory inside the connection group virtual environment.</p>
<p>This merging of paths allows an application in one package to access files that are in a different package.</p></td>
<td align="left"><p>[About the Connection Group Virtual Environment](about-the-connection-group-virtual-environment.md#bkmk-merged-root-ve-exp)</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-usersid-pub-pkgs-specf-user"></a>Administrators can publish and unpublish packages for a specific user


Administrators can use the following cmdlets to publish or unpublish packages for a specific user. To use the cmdlets, enter the **–UserSID** parameter, followed by the user’s security identifier (SID). For more information, see:

-   [How to Manage App-V 5.0 Packages Running on a Stand-Alone Computer by Using PowerShell](how-to-manage-app-v-50-packages-running-on-a-stand-alone-computer-by-using-powershell.md#bkmk-pub-pkg-a-user-standalone-posh)

-   [How to Manage App-V 5.0 Packages Running on a Stand-Alone Computer by Using PowerShell](how-to-manage-app-v-50-packages-running-on-a-stand-alone-computer-by-using-powershell.md#bkmk-unpub-pkg-specfc-use)

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Cmdlet</th>
<th align="left">Examples</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Publish-AppvClientPackage</p></td>
<td align="left"><p>Publish-AppvClientPackage “ContosoApplication” -UserSID S-1-2-34-56789012-3456789012-345678901-2345</p></td>
</tr>
<tr class="even">
<td align="left"><p>Unpublish-AppvClientPackage</p></td>
<td align="left"><p>Unpublish-AppvClientPackage “ContosoApplication” -UserSID S-1-2-34-56789012-3456789012-345678901-2345</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-admins-only-pub-unpub-pkgs"></a>Enable only administrators to publish and unpublish packages


You can enable only administrators (not end users) to publish and unpublish packages by using one of the following methods:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Method</th>
<th align="left">More information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Group Policy setting</p></td>
<td align="left"><p>Navigate to the following Group Policy Object node:</p>
<p><strong>Computer Configuration &gt; Policies &gt; Administrative Templates &gt; System &gt; App-V &gt; Publishing</strong>.</p>
<p>Enable the <strong>Require publish as administrator</strong> Group Policy setting.</p></td>
</tr>
<tr class="even">
<td align="left"><p>PowerShell</p></td>
<td align="left"><p>[How to Manage App-V 5.0 Packages Running on a Stand-Alone Computer by Using PowerShell](how-to-manage-app-v-50-packages-running-on-a-stand-alone-computer-by-using-powershell.md#bkmk-admins-pub-pkgs)</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-runvirtual-reg-key"></a>RunVirtual registry key supports packages that are published to the user


App-V 5.0 SP3 adds support for using the **RunVirtual** registry key with virtualized applications that are in user-published packages. The **RunVirtual** registry key lets you run a locally installed application in a virtual environment, along with applications that have been virtualized by using App-V.

Previously, the virtualized applications in App-V packages had to be published globally. For more about **RunVirtual** and about other methods of running locally installed applications in a virtual environment with virtualized applications, see [Running a Locally Installed Application Inside a Virtual Environment with Virtualized Applications](running-a-locally-installed-application-inside-a-virtual-environment-with-virtualized-applications.md).

## <a href="" id="bkmk-posh-cmdlets-help"></a>New PowerShell cmdlets and updateable cmdlet help


New PowerShell cmdlets and updateable cmdlet help are included in App-V 5.0 SP3. To download the cmdlet modules, see [How to Load the PowerShell Cmdlets and Get Cmdlet Help](how-to-load-the-powershell-cmdlets-and-get-cmdlet-help-50-sp3.md#bkmk-load-cmdlets).

### New App-V 5.0 SP3 Server PowerShell cmdlets

New Windows PowerShell cmdlets for the App-V Server have been added to help you manage connection groups.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Cmdlet</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Add-AppvServerConnectionGroupPackage</p></td>
<td align="left"><p>Appends a package to the end of a connection group's package list and enables you to configure the package as optional and/or with no version within the connection group.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Set-AppvServerConnectionGroupPackage</p></td>
<td align="left"><p>Enables you to edit details about the connection group package, such as whether it is optional.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Remove-AppvServerConnectionGroupPackage</p></td>
<td align="left"><p>Removes a package from a connection group.</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-get-cmdlet-help"></a>Getting help for the PowerShell cmdlets

Cmdlet help is available in the following formats:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Format</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>As a downloadable module</p></td>
<td align="left"><p>To get the latest help after downloading the cmdlet module:</p>
<ol>
<li><p>Open Windows PowerShell or Windows PowerShell Integrated Scripting Environment (ISE).</p></li>
<li><p>Type one of the following commands to load the cmdlets for the module you want:</p></li>
</ol>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">App-V component</th>
<th align="left">Command to type</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>App-V Server</p></td>
<td align="left"><p>Update-Help-Module AppvServer</p></td>
</tr>
<tr class="even">
<td align="left"><p>App-V Sequencer</p></td>
<td align="left"><p>Update-Help-Module AppvSequencer</p></td>
</tr>
<tr class="odd">
<td align="left"><p>App-V client</p></td>
<td align="left"><p>Update-Help-Module AppvClient</p></td>
</tr>
</tbody>
</table>
<p> </p></td>
</tr>
<tr class="even">
<td align="left"><p>On TechNet as web pages</p></td>
<td align="left"><p>See the App-V node under [Microsoft Desktop Optimization Pack Automation with Windows PowerShell](https://technet.microsoft.com/library/dn520245.aspx).</p></td>
</tr>
</tbody>
</table>

 

For more information, see [How to Load the PowerShell Cmdlets and Get Cmdlet Help](how-to-load-the-powershell-cmdlets-and-get-cmdlet-help-50-sp3.md).

## <a href="" id="bkmk-pvad-hidden"></a>Primary virtual application directory (PVAD) is hidden but can be turned on


The primary virtual application directory (PVAD) is hidden in App-V 5.0 SP3, but you can turn it back on and make it visible by using one of the following methods:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Method</th>
<th align="left">Steps</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Use a command line parameter</p></td>
<td align="left"><p>Pass the <strong>–EnablePVADControl</strong> parameter to the <strong>Sequencer.exe</strong>.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Create a registry subkey</p></td>
<td align="left"><ol>
<li><p>In the Registry Editor, navigate to: <code>HKLM\SOFTWARE\Microsoft\AppV\Sequencer\Compatibility</code></p>
<div class="alert">
<strong>Note</strong>  
<p>If the <code>Compatability</code> subkey doesn’t exist, you must create it.</p>
</div>
<div>
 
</div></li>
<li><p>Create a DWORD Value named <strong>EnablePVADControl</strong>, and set the value to <strong>1</strong>.</p>
<p>A value of <strong>0</strong> means that PVAD is hidden.</p></li>
</ol></td>
</tr>
</tbody>
</table>

 

**More about PVAD:** When you use the Sequencer to create a package, you can enter any installation path for the package. In past versions of App-V, you were required to specify the primary virtual application directory (PVAD) of the application as the path. PVAD is the directory to which you would typically install an application on your local computer if you weren’t using App-V. For example, if you were installing Office on a computer, the PVAD typically would be C:\\Program Files\\Microsoft Office\\.

## <a href="" id="bkmk-pub-metadata-clientversion"></a>ClientVersion is required to view App-V publishing metadata


In App-V 5.0 SP3, you must provide the following values in the address when you query the App-V Publishing server for metadata:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Value</th>
<th align="left">Additional details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>ClientVersion</strong></p></td>
<td align="left"><p>If you omit the <strong>ClientVersion</strong> parameter from the query, the metadata excludes the new App-V 5.0 SP3 features.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>ClientOS</strong></p></td>
<td align="left"><p>You have to provide this value only if you select specific client operating systems when you sequence the package. If you select the default (all operating systems), do not specify this value in the query.</p>
<p>If you omit the <strong>ClientOS</strong> parameter from the query, only the packages that were sequenced to support any operating system appear in the metadata.</p></td>
</tr>
</tbody>
</table>

 

For syntax and examples of this query, see [Viewing App-V Server Publishing Metadata](viewing-app-v-server-publishing-metadata.md).

## <a href="" id="bkmk-event-logs-moved"></a>App-V event logs have been consolidated


The following event logs, previously located at **Applications and Services Logs/Microsoft/AppV/&lt;App-V component&gt;**, have been moved to **Applications and Services Logs/Microsoft/AppV/ServiceLog**.

To view the logs, select **View** &gt; **Show Analytic and Debug Logs** in the Event Viewer application.

Client-Catalog Client-Integration Client-Orchestration Client-PackageConfig Client-Scripting Client-Service Client-Vemgr Client-VFSC FilesystemMetadataLibrary ManifestLibrary PolicyLibrary Subsystems-ActiveX Subsystems-AppPath Subsystems-Com Subsystems-fta

## How to Get MDOP Technologies


App-V is a part of the Microsoft Desktop Optimization Pack (MDOP). MDOP is part of Microsoft Software Assurance. For more information about Microsoft Software Assurance and acquiring MDOP, see [How Do I Get MDOP](https://go.microsoft.com/fwlink/?LinkId=322049).






## Related topics


[Release Notes for App-V 5.0 SP3](release-notes-for-app-v-50-sp3.md)

 

 





