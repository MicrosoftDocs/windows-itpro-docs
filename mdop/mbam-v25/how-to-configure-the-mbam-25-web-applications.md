---
title: How to Configure the MBAM 2.5 Web Applications
description: How to Configure the MBAM 2.5 Web Applications
author: dansimp
ms.assetid: 909bf2d3-028c-4ac1-9247-171532a1eeae
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Configure the MBAM 2.5 Web Applications


This topic explains how to configure the Microsoft BitLocker Administration and Monitoring (MBAM) 2.5 web applications for the recommended [High-Level Architecture for MBAM 2.5](high-level-architecture-for-mbam-25.md) by using one of the following methods:

-   A Windows PowerShell cmdlet

-   The MBAM Server Configuration wizard

The web applications comprise the following websites and their corresponding web services:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Website</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Administration and Monitoring Website</p></td>
<td align="left"><p>Website where specified users can view reports and help end users recover their computers when they forget their PIN or password</p></td>
</tr>
<tr class="even">
<td align="left"><p>Self-Service Portal</p></td>
<td align="left"><p>Website that end users can access to independently regain access to their computers if they forget their PIN or password</p></td>
</tr>
</tbody>
</table>

 

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
<td align="left"><p>[High-Level Architecture for MBAM 2.5](high-level-architecture-for-mbam-25.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Review the supported configurations for MBAM.</p></td>
<td align="left"><p>[MBAM 2.5 Supported Configurations](mbam-25-supported-configurations.md)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Complete the required prerequisites on each server.</p>
<div class="alert">
<strong>Note</strong>  
<p>Ensure that you configure SQL ServerReporting Services (SSRS) to use the Secure Sockets Layer (SSL) before you configure the Administration and Monitoring Website. Otherwise, the Reports feature will use HTTP instead of HTTPS.</p>
</div>
<div>
 
</div></td>
<td align="left"><ul>
<li><p>[MBAM 2.5 Server Prerequisites for Stand-alone and Configuration Manager Integration Topologies](mbam-25-server-prerequisites-for-stand-alone-and-configuration-manager-integration-topologies.md)</p></li>
<li><p>[MBAM 2.5 Server Prerequisites that Apply Only to the Configuration Manager Integration Topology](mbam-25-server-prerequisites-that-apply-only-to-the-configuration-manager-integration-topology.md) (if applicable)</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Register service principal names (SPNs) for the application pool account for the websites. You need to do this step only if you do not have administrative domain rights in Active Directory Domain Services (AD DS). If you do have these rights in AD DS, MBAM will create the SPNs for you.</p></td>
<td align="left"><p>[Planning How to Secure the MBAM Websites](planning-how-to-secure-the-mbam-websites.md#bkmk-regvirtualspn)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Install the MBAM Server software on each server where you will configure an MBAM Server feature.</p>
<div class="alert">
<strong>Note</strong>  
<p>If you plan to install the websites on one server and the web services on another, you will be able to configure them only by using the <strong>Enable-MbamWebApplication</strong> Windows PowerShell cmdlet. The MBAM Server Configuration wizard does not support configuring these items on separate servers.</p>
</div>
<div>
 
</div></td>
<td align="left"><p>[Installing the MBAM 2.5 Server Software](installing-the-mbam-25-server-software.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Review the prerequisites for using Windows PowerShell if you plan to use cmdlets to configure MBAM Server features.</p></td>
<td align="left"><p>[Configuring MBAM 2.5 Server Features by Using Windows PowerShell](configuring-mbam-25-server-features-by-using-windows-powershell.md)</p></td>
</tr>
</tbody>
</table>

 

**To configure the web applications by using Windows PowerShell**

1.  Before you start the configuration, see [Configuring MBAM 2.5 Server Features by Using Windows PowerShell](configuring-mbam-25-server-features-by-using-windows-powershell.md) to review the prerequisites for using Windows PowerShell.

2.  Use the **Enable-MbamWebApplication** cmdlet to configure the web applications using Windows PowerShell. To get information about this cmdlet, type **Get-Help Enable-MbamWebApplication**.

**To configure the settings for all web applications using the wizard**

1.  On the server where you want to configure the web applications, start the MBAM Server Configuration wizard. You can select **MBAM Server Configuration** from the **Start** menu to open the wizard.

2.  Click **Add New Features**, select **Administration and Monitoring Website** and **Self-Service Portal**, and then click **Next**. The wizard checks that all prerequisites for the web applications have been met.

3.  If the prerequisite check is successful, click **Next** to continue. Otherwise, resolve any missing prerequisites, and then click **Check prerequisites again**.

4.  Use the following descriptions to enter the field values in the wizard.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left"><strong>Field</strong></th>
    <th align="left">Description</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><strong>Security certificate</strong></p></td>
    <td align="left"><p>Select a previously created certificate to optionally encrypt the communication between the web services and the server on which you are configuring the websites. If you choose <strong>Do not use a certificate</strong>, your web communication may not be secure.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><strong>Host name</strong></p></td>
    <td align="left"><p>Name of the host computer where you are configuring the websites.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><strong>Installation path</strong></p></td>
    <td align="left"><p>Path where you are installing the websites.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><strong>Port</strong></p></td>
    <td align="left"><p>Port number to use for website and service communication.</p>
    <div class="alert">
    <strong>Note</strong>  
    <p>You must set a firewall exception to enable communication through the specified port.</p>
    </div>
    <div>
     
    </div></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><strong>Web service application pool domain account and password</strong></p></td>
    <td align="left"><p>Domain user account and password for the web service application pool.</p>
    <p>If you enter a user name in the <strong>Read/write access domain user or group</strong> field on the <strong>Configure Databases</strong> page, you must enter that same value in this field.</p>
    <p>If you enter a group name in the <strong>Read/write access domain user or group</strong> field on the <strong>Configure Databases</strong> page, the value you enter in this field must be a member of that group.</p>
    <p>If you do not specify credentials, the credentials that were specified for any previously enabled web application will be used. All web applications must use the same application pool credentials. If you specify different credentials for different web applications, the most recently specified value will be used.</p>
    <div class="alert">
    <strong>Important</strong>  
    <p>For improved security, set the account that is specified in the credentials to have limited user rights. Also, set the password of the account to never expire.</p>
    </div>
    <div>
     
    </div></td>
    </tr>
    </tbody>
    </table>

     

5.  Verify that the built-in IIS\_IUSRS account or the application pool account has been added to the **Impersonate a client after authentication** and the **Log on as a batch job** local security settings.

    To check whether it has been added to the local security settings, open the **Local Security Policy editor**, expand the **Local Policies** node, click the **User Rights Assignment** node, and double-click **Impersonate a client after authentication** and **Log on as a batch job** policies in the right pane.

**To configure connection information for the databases by using the wizard**

1.  Use the following field descriptions to configure the connection information in the wizard for the Compliance and Audit Database.

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
    <td align="left"><p><strong>SQL Server name</strong></p></td>
    <td align="left"><p>Name of the server where the Compliance and Audit Database is configured.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><strong>SQL Server database instance</strong></p></td>
    <td align="left"><p>SQL Server instance name where the Compliance and Audit Database is configured.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><strong>Database name</strong></p></td>
    <td align="left"><p>Name of the Compliance and Audit Database.</p></td>
    </tr>
    </tbody>
    </table>

     

2.  Use the following field descriptions to configure the connection information in the wizard for the Recovery Database.

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
    <td align="left"><p><strong>SQL Server name</strong></p></td>
    <td align="left"><p>Name of the server where the Recovery Database is configured.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><strong>SQL Server database instance</strong></p></td>
    <td align="left"><p>SQL Server instance name where the Recovery Database is configured.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><strong>Database name</strong></p></td>
    <td align="left"><p>Name of the Recovery Database.</p></td>
    </tr>
    </tbody>
    </table>

     

**To configure the web applications by using the wizard**

1.  Use the following descriptions to enter the field values in the wizard to configure the Administration and Monitoring Website.

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
    <td align="left"><p><strong>Advanced Helpdesk role domain group</strong></p></td>
    <td align="left"><p>Domain user group whose members have access to all areas of the Administration and Monitoring Website except the Reports area.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><strong>Helpdesk role domain group</strong></p></td>
    <td align="left"><p>Domain user group whose members have access to the <strong>Manage TPM</strong> and <strong>Drive Recovery</strong> areas of the Administration and Monitoring Website.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><strong>Use System Center Configuration Manager Integration</strong></p></td>
    <td align="left"><p>Select this check box if you are configuring MBAM with the Configuration Manager Integration topology. Selecting this check box makes all reports, except the Recovery Audit report, appear in Configuration Manager instead of in the Administration and Monitoring Website.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><strong>Reporting role domain group</strong></p></td>
    <td align="left"><p>Domain user group whose members have read-only access to the Reports area of the Administration and Monitoring Website.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><strong>SQL Server Reporting Services URL</strong></p></td>
    <td align="left"><p>URL for the SSRS server where the MBAM Reports are configured.</p>
    <p>Examples of report URLs:</p>
    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Type of host name</th>
    <th align="left">Example</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Example with a fully qualified domain name</p></td>
    <td align="left"><p>https://MyReportServer.Contoso.com/ReportServer</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Example with a custom host name</p></td>
    <td align="left"><p>https://MyReportServer/ReportServer</p></td>
    </tr>
    </tbody>
    </table>
    <p> </p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><strong>Virtual directory</strong></p></td>
    <td align="left"><p>Virtual directory of the Administration and Monitoring Website. This name corresponds to the website’s physical directory on the server and is appended to the website’s host name, for example:</p>
    <p>http(s)://&lt;<em>hostname</em>&gt;:&lt;<em>port</em>&gt;/HelpDesk/</p>
    <p>If you do not specify a virtual directory, the value <strong>HelpDesk</strong> will be used.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><strong>Data Migration role domain group</strong> (optional)</p></td>
    <td align="left"><p>Domain user group whose members have access to use the Write-Mbam*Information Cmdlets to write recovery information via this endpoint.</p></td>
    </tr>
    </tbody>
    </table>

     

2.  Use the following description to enter the field values in the wizard to configure the Self-Service Portal.

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
    <td align="left"><p><strong>Virtual directory</strong></p></td>
    <td align="left"><p>Virtual directory of the web application. This name corresponds to the website’s physical directory on the server, and is appended to the website’s host name, for example:</p>
    <p>http(s)://&lt;<em>hostname</em>&gt;:&lt;<em>port</em>&gt;/SelfService/</p>
    <p>If you do not specify a virtual directory, the value <strong>SelfService</strong> will be used.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Company name</p></td>
    <td align="left"><p>Specify a company name for the Self-Service Portal, for example:</p>
    <p>Contoso IT</p>
    <p>This company name is viewed by all Self-Service Portal users.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Helpdesk URL text</p></td>
    <td align="left"><p>Specify a text statement that directs users to your organization's Helpdesk website, for example:</p>
    <p>Contact Helpdesk or IT department</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Helpdesk URL</p></td>
    <td align="left"><p>Specify the URL for your organization's Helpdesk website, for example:</p>
    <p>http(s)://&lt;<em>companyHelpdeskURL</em>&gt;/</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Notice text file</p></td>
    <td align="left"><p>Select a file that contains the notice you want displayed to users on the Self-Service Portal landing page.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Do not display notice text to users</p></td>
    <td align="left"><p>Select this check box to specify that the notice text is not displayed to users.</p></td>
    </tr>
    </tbody>
    </table>

     

3.  When you finish your entries, click **Next**.

    The wizard checks that all prerequisites for the web applications have been met.

4.  Click **Next** to continue.

5.  On the **Summary** page, review the features that will be added.

    **Note**  
    To create a Windows PowerShell script for the entries you made, click **Export PowerShell Script** and save the script.

     

6.  Click **Add** to add the web applications to the server, and then click **Close**.

    To customize the Self-Service Portal by adding custom notice text, your company name, pointers to more information, and so on, see [Customizing the Self-Service Portal for Your Organization](customizing-the-self-service-portal-for-your-organization.md).

**To configure the Self-Service Portal if client computers cannot access the CDN**

1.  Determine whether you are running Microsoft BitLocker Administration and Monitoring (MBAM) 2.5 SP1. If so, do nothing. Your Self-Service Portal configuration is complete.

    **Note**  
    Microsoft BitLocker Administration and Monitoring (MBAM) 2.5 SP1 installs the JavaScript files in setup, and so does not need to be connected to the Microsoft Ajax Content Delivery Network in order to configure the Self-Service Portal. The following steps are necessary only if you are using a version of Microsoft BitLocker Administration and Monitoring (MBAM) 2.5 previous to SP1.

     

2.  Determine if your client computers have access to the Microsoft Ajax Content Delivery Network (CDN).

    The CDN gives the Self-Service Portal the access it requires to certain JavaScript files. If you don’t configure the Self-Service Portal when client computers cannot access the CDN, only the company name and the account under which the end user signed in will be displayed. No error message will be shown.

3.  Do one of the following:

    -   If your client computers have access to the CDN, do nothing. Your Self-Service Portal configuration is complete.

    -   If your client computers do not have access to the CDN, complete the steps in [How to Configure the Self-Service Portal When Client Computers Cannot Access the Microsoft Content Delivery Network](how-to-configure-the-self-service-portal-when-client-computers-cannot-access-the-microsoft-content-delivery-network.md).


## Related topics


[Server Event Logs](server-event-logs.md)

[Configuring the MBAM 2.5 Server Features](configuring-the-mbam-25-server-features.md)

[How to Configure the Self-Service Portal When Client Computers Cannot Access the Microsoft Content Delivery Network](how-to-configure-the-self-service-portal-when-client-computers-cannot-access-the-microsoft-content-delivery-network.md)

[Customizing the Self-Service Portal for Your Organization](customizing-the-self-service-portal-for-your-organization.md)

[Validating the MBAM 2.5 Server Feature Configuration](validating-the-mbam-25-server-feature-configuration.md)

 

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 





