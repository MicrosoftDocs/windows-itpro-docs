---
title: How to Configure the Server to be Trusted for Delegation
description: How to Configure the Server to be Trusted for Delegation
author: dansimp
ms.assetid: d8d11588-17c0-4bcb-a7e6-86b5e4ba7e1c
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Configure the Server to be Trusted for Delegation


When you install the Microsoft Application Virtualization (App-V) Management Server software, you can choose to install it by using a distributed system architecture. If you install the console, the Management Web Service, and the database on different computers, you must configure the Internet Information Services (IIS) server to be trusted for delegation. This is necessary because the Management Web Service will attempt to connect to the App-V data store by using the credentials of the App-V administrator who is using the console. The database server on which the data store is installed will not accept the administrator’s credentials from the IIS server unless the IIS server is configured to be trusted for delegation, and so the Management Web Service will not be able to connect to the App-V data store.

**Note**  
If you install the App-V Management Server software on a single server and place the data store on a separate server, there is one situation in which you must still configure the server to be trusted for delegation even though the Management Web Service and Management Console are on the same server. This situation occurs if you need to connect to the Management Web Service in the console by using the **Use Alternate Credentials** option.

 

The type of delegation that you can use depends on the Domain Functional Level that you have configured in your Active Directory Domain Services (AD DS) infrastructure. The following table lists the types of delegation that can be configured for each Domain Functional Level for App-V. Detailed instructions follow the table.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Domain Functional Level</th>
<th align="left">Delegation Levels Available</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows 2000 native</p></td>
<td align="left"><ul>
<li><p>No delegation (default)</p></li>
<li><p>Unconstrained delegation</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2003, Windows Server 2008, or Windows Server 2008 R2</p></td>
<td align="left"><ul>
<li><p>No delegation (default)</p></li>
<li><p>Unconstrained delegation¹</p></li>
<li><p>Constrained delegation (Use Kerberos Only Protocols)</p></li>
<li><p>Constrained delegation (Use any authentication protocol) ¹</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

¹ Not recommended.

## To configure unconstrained delegation when the Domain Functional Level is Windows 2000 native


On the domain controller for your Web server’s domain, complete the following steps.

****

1.  Click **Start**, **Administrative Tools**, and then click **Active Directory Users and Computers**.

2.  Expand domain, and then expand the Computers folder.

3.  In the right pane, right-click the computer name for the Web server, and then click **Properties**.

4.  On the **General** tab, ensure that the **Trust computer for delegation** check box is selected.

5.  Click **OK**.

## To configure unconstrained delegation when the Domain Functional Level is Windows Server 2003, Windows Server 2008, or Windows Server 2008 R2


On the domain controller for your Web server’s domain, complete the following steps.

****

1.  Click **Start**, click **Administrative Tools**, and then click **Active Directory Users and Computers**.

2.  Expand domain, and expand the Computers folder.

3.  In the right pane, right-click the computer name for the Web server, select **Properties**, and then click the **Delegation** tab.

4.  Click to select **Trust this computer for delegation to any service (Kerberos only)**.

5.  Click **OK**.

## To configure constrained delegation when the Domain Functional Level is Windows Server 2003, Windows Server 2008, or Windows Server 2008 R2


On the domain controller for your Web server’s domain, complete the following steps.

****

1.  Click **Start**, click **Administrative Tools**, and then click **Active Directory Users and Computers**.

2.  Expand domain, and then expand the Computers folder.

3.  In the right pane, right-click the computer name for the Web server, select **Properties**, and then click the **Delegation** tab.

4.  Click to select **Trust this computer for delegation to specified services only**.

5.  Ensure that **Use Kerberos only** is selected, and then click **OK**.

6.  Click the **Add** button. In the **Add Services** dialog box, click **Users or Computers**, and then browse to or type the name of the Microsoft SQL server that has the App-V data store and is to receive the users credentials from IIS. Click **OK**.

7.  In the **Available Services** list, select the MSSQLSvc service that lists port number on which the Microsoft SQL Server is accepting connections for the App-V database (the default port is 1433). Click **OK**.

### Additional steps to configure IIS 7 for constrained delegation

If you are running the Management Web Service on an IIS 7 server, you must complete the following steps to set the IIS 7 *useAppPoolCredentials* variable to True.

1.  Open an elevated Command Prompt window. To open an elevated Command Prompt window, click **Start**, click **All Programs**, click **Accessories**, right-click **Command Prompt**, and then click **Run as administrator**.

2.  Navigate to %windir%\\system32\\inetsrv.

3.  Type **appcmd.exe set config -section:system.webServer/security/authentication/windowsAuthentication -useAppPoolCredentials:true**, and then press ENTER.

 

 





