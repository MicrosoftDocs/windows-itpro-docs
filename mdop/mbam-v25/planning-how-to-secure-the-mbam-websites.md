---
title: Planning How to Secure the MBAM Websites
description: Planning How to Secure the MBAM Websites
author: jamiejdt
ms.assetid: aea1d137-62cf-4da4-9989-541e0b5ad8d8
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Planning How to Secure the MBAM Websites


This topic describes the following methods for securing the Microsoft BitLocker Administration and Monitoring (MBAM) 2.5 Administration and Monitoring Website and Self-Service Portal:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Method</th>
<th align="left">Required or optional?</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Using certificates to secure MBAM websites</p></td>
<td align="left"><p>Optional, but highly recommended</p></td>
</tr>
<tr class="even">
<td align="left"><p>Registering Service Principal Names (SPN) for the application pool account</p></td>
<td align="left"><p>Required</p></td>
</tr>
</tbody>
</table>

 

For more information about how to secure your MBAM deployment, see [MBAM 2.5 Security Considerations](mbam-25-security-considerations.md).

## Using certificates to secure MBAM websites


We recommend that you use a certificate to secure the communication between the:

-   MBAM Client and the web services

-   Browser and the Administration and Monitoring Website and the Self-Service Portal websites

For information about requesting and installing a certificate, see [Configuring Internet Server Certificates](https://technet.microsoft.com/library/cc731977.aspx).

**Note**  
You can configure the websites and web services on different servers only if you are using Windows PowerShell. If you use the MBAM Server Configuration wizard to configure the websites, you must configure the websites and the web services on the same server.

 

To secure the communication between the web services and the databases, we also recommend that you force encryption in SQL Server. For information about securing all connections to SQL Server, including communication between the web services and SQL Server, see [MBAM 2.5 Security Considerations](mbam-25-security-considerations.md#bkmk-secure-databases).

## Registering SPNs for the application pool account


To enable the MBAM Servers to authenticate communication from the Administration and Monitoring Website and the Self-Service Portal, you must register a Service Principal Name (SPN) for the host name under the domain account that you are using for the web application pool.

This topic contains instructions on how to register SPNs for the following types of host names:

-   Fully qualified domain name

-   NetBIOS name

-   Virtual name

### Before you create SPNs for an initial MBAM installation

Review the information in the following table before you start creating SPNs.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task or item</th>
<th align="left">More information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Create a service account in Active Directory Domain Services (AD DS).</p></td>
<td align="left"><p>The service account is a user account that you create in AD DS to provide security for the MBAM websites. The MBAM websites run under an application pool, whose identity is the name of the service account. The SPNs are then registered in the application pool account.</p>
<div class="alert">
<strong>Note</strong>  
<p>You must use the same application pool account for all web servers.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>Verify that either the IIS-IUSRS group account or the application pool account has been granted the necessary rights.</p></td>
<td align="left"><p>To check this, follow these steps:</p>
<ol>
<li><p>Open the <strong>Local Security Policy editor</strong> and expand the <strong>Local Policies</strong> node.</p></li>
<li><p>Select the <strong>User Rights Assignment</strong> node, and double-click the <strong>Impersonate a client after authentication</strong> and <strong>Log on as a batch job</strong> Group Policy settings in the right pane.</p></li>
</ol></td>
</tr>
<tr class="odd">
<td align="left"><p>If you configure the MBAM websites by using a domain administrative account, MBAM will create the SPNs for you.</p></td>
<td align="left"><p>If you configure the MBAM websites by using a domain administrative account, follow the steps in this topic to register SPNs manually for the type of host name that you are using.</p></td>
</tr>
</tbody>
</table>

 

### Registering SPNs when you use a fully qualified domain host name

If you use a fully qualified domain host name when you configure MBAM, you have to register only one SPN, as shown in the following example.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">What you need to do</th>
<th align="left">Examples and more information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Register an SPN for the fully qualified domain name.</p></td>
<td align="left"><p><code>Setspn -s http/mybitlockerrecovery.contoso.com contoso\mbamapppooluser</code></p>
<p>The fully qualified host name is <strong>mybitlockerrecovery.contoso.com</strong>, and the domain account used for the web application pool is <strong>contoso\mbamapppooluser</strong>.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Configure constrained delegation for the SPN that you are registering for the application pool account.</p></td>
<td align="left"><p>[Configuring Constrained Delegation](https://go.microsoft.com/fwlink/?LinkId=394335)</p>
<p>This requirement only applies to MBAM 2.5; it is not necessary in MBAM 2.5 SP1.</p></td>
</tr>
</tbody>
</table>

 

### Registering SPNs when you use a NetBIOS host name

If you use a NetBIOS host name when you configure MBAM, register one SPN for the NetBIOS name, and another SPN for the fully qualified domain name, as shown in the following examples.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">What you need to do</th>
<th align="left">Examples and more information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Register an SPN for the NetBIOS host name.</p></td>
<td align="left"><p><code>Setspn -s http/nbname01 contoso\mbamapppooluser</code></p>
<p>The NetBIOS host name is <strong>nbname01</strong>, and the domain account used for the web application pool is <strong>contoso\mbamapppooluser</strong>.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Register an SPN for the fully qualified domain name.</p></td>
<td align="left"><p><code>Setspn –s http/nbname01.corp.contoso.com contoso\mbamapppooluser</code></p>
<p>The fully qualified domain name is <strong>nbname01.contoso.com</strong>, and the domain account used for the web application pool is <strong>contoso\mbamapppooluser</strong>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Configure constrained delegation for the SPNs that you are registering for the application pool account.</p></td>
<td align="left"><p>[Configuring Constrained Delegation](https://go.microsoft.com/fwlink/?LinkId=394335)</p>
<p>This requirement only applies to MBAM 2.5; it is not necessary in MBAM 2.5 SP1.</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-regvirtualspn"></a>Registering SPNs when you use a virtual host name

If you configure MBAM with a virtual host name that is a fully qualified domain name, register only one SPN for the virtual host name. If the virtual host name that you configure is not a fully qualified domain name, you must create a second SPN that specifies the fully qualified domain name, as described in the following examples.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">What you need to do</th>
<th align="left">Examples and more information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>If your virtual host name is a fully qualified domain name, as in this example, register only one SPN.</p></td>
<td align="left"><p><code>Setspn -s http/mbamvirtual.contoso.com contoso\mbamapppooluser</code></p>
<p>In the example, the virtual host name is <strong>mbamvirtual.contoso.com</strong>, and the domain account used for the web application pool is <strong>contoso\mbamapppooluser</strong>.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Register this additional SPN if your virtual host name is not a fully qualified domain name.</p></td>
<td align="left"><p><code>Setspn -s http/mbamvirtual contoso\mbamapppooluser</code></p>
<p>In the example, the virtual host name is <strong>mbamvirtual</strong>, and the domain account used for the web application pool is <strong>contoso\mbamapppooluser</strong>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Register this additional SPN if your virtual host name is not a fully qualified domain name.</p></td>
<td align="left"><p><code>Setspn -s http/mbamvirtual.contoso.com contoso\mbamapppooluser</code></p>
<p>In the example, the virtual host name is <strong>mbamvirtual.contoso.com</strong>, and the domain account used for the web application pool is <strong>contoso\mbamapppooluser</strong>.</p></td>
</tr>
<tr class="even">
<td align="left"><p>On the Domain Name Server (DNS) server, create an “A record” for the custom host name and point it to a web server or a load balancer.</p></td>
<td align="left"><p>See the “To configure DNS Host A Records” section in [Configure DNS Host Records](https://go.microsoft.com/fwlink/?LinkId=394337).</p>
<p>We recommend that you use A records instead of CNAMES. If you use CNAMES to point to the domain address, you must also register SPNs for the web server name in the application pool account.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Configure constrained delegation for the SPNs that you are registering for the application pool account.</p></td>
<td align="left"><p>[Configuring Constrained Delegation](https://go.microsoft.com/fwlink/?LinkId=394335)</p>
<p>This requirement only applies to MBAM 2.5; it is not necessary in MBAM 2.5 SP1.</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-registerspn"></a>Registering an SPN when you upgrade from previous versions of MBAM

Complete the steps in this section only if you want to:

-   Upgrade from a previous version of MBAM.

-   Run the websites in MBAM 2.5 in a load-balanced or distributed configuration, and you are currently running in a configuration that is not load balanced.

If you already registered SPNs on the machine account rather than in an application pool account, MBAM uses the existing SPNs, and you cannot configure the websites in a load-balanced or distributed configuration.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">What you need to do</th>
<th align="left">Examples and more information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Create an application pool account in Active Directory Domain Services (AD DS).</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>Remove the currently installed websites and web services.</p></td>
<td align="left"><p>[Removing MBAM Server Features or Software](removing-mbam-server-features-or-software.md)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Remove SPNs from the machine account.</p></td>
<td align="left"><p><code>Setspn –d http/mbamwebserver mbamwebserver</code></p>
<p><code>Setspn –d http/mbamwebserver.contoso.com mbamwebserver</code></p></td>
</tr>
<tr class="even">
<td align="left"><p>Register SPNs in the application pool account.</p></td>
<td align="left"><p>Follow the steps for [Registering SPNs when you use a virtual host name](#bkmk-regvirtualspn).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Reconfigure the web applications and web services.</p></td>
<td align="left"><p>[How to Configure the MBAM 2.5 Web Applications](how-to-configure-the-mbam-25-web-applications.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Do one of the following, depending on the method you use for the configuration:</p>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Method</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>MBAM Server Configuration wizard</strong></p></td>
<td align="left"><p>Enter the application pool account in the <strong>Web service application pool domain account</strong> field.</p></td>
</tr>
<tr class="even">
<td align="left"><p><code>Enable-MbamWebApplication</code> Windows PowerShell cmdlet</p></td>
<td align="left"><p>Enter the account in the <code>WebServiceApplicationPoolCredential</code> parameter.</p></td>
</tr>
</tbody>
</table>
<p> </p></td>
<td align="left"><div class="alert">
<strong>Important</strong>  
<p>The host name that you enter must be the same name as the virtual host name for which you are creating the SPNs. Also, in your web farm, the host names and the application pool credentials must be the same on every server that you are configuring.</p>
</div>
<div>
 
</div>
<p>When MBAM configures the web applications, it will try to register the SPNs for you, but it can do so only if you have Domain Admin rights on the server on which you are installing MBAM. If you do not have these rights, you can complete the configuration, but you will have to set the SPNs before or after you configure MBAM.</p></td>
</tr>
</tbody>
</table>

## Required Request Filtering Settings
 
 'Allow unlisted file name extensions' is required for the application to operate as expected.  This can be found by navigating to the 'Microsoft BitLocker Administration and Monitoring' -> Request Filtering -> Edit Feature Settings.


## Related topics


[Preparing your Environment for MBAM 2.5](preparing-your-environment-for-mbam-25.md)

[MBAM 2.5 Deployment Prerequisites](mbam-25-deployment-prerequisites.md)

 

 

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring).
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).



