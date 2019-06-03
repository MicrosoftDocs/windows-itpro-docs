---
title: App-V 5.1 Security Considerations
description: App-V 5.1 Security Considerations
author: dansimp
ms.assetid: 6bc6c1fc-f813-47d4-b763-06fd4faf6a72
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# App-V 5.1 Security Considerations


This topic contains a brief overview of the accounts and groups, log files, and other security-related considerations for Microsoft Application Virtualization (App-V) 5.1.

**Important**  
App-V 5.1 is not a security product and does not provide any guarantees for a secure environment.

 

## PackageStoreAccessControl (PSAC) feature has been deprecated


Effective as of June, 2014, the PackageStoreAccessControl (PSAC) feature that was introduced in Microsoft Application Virtualization (App-V) 5.0 Service Pack 2 (SP2) has been deprecated in both single-user and multi-user environments.

## General security considerations


**Understand the security risks.** The most serious risk to App-V 5.1 is that its functionality could be hijacked by an unauthorized user who could then reconfigure key data on App-V 5.1 clients. The loss of App-V 5.1 functionality for a short period of time due to a denial-of-service attack would not generally have a catastrophic impact.

**Physically secure your computers**. Security is incomplete without physical security. Anyone with physical access to an App-V 5.1 server could potentially attack the entire client base. Any potential physical attacks must be considered high risk and mitigated appropriately. App-V 5.1 servers should be stored in a physically secure server room with controlled access. Secure these computers when administrators are not physically present by having the operating system lock the computer, or by using a secured screen saver.

**Apply the most recent security updates to all computers**. To stay informed about the latest updates for operating systems, Microsoft SQL Server, and App-V 5.1, subscribe to the Security Notification service (<https://go.microsoft.com/fwlink/p/?LinkId=28819>).

**Use strong passwords or pass phrases**. Always use strong passwords with 15 or more characters for all App-V 5.1 and App-V 5.1 administrator accounts. Never use blank passwords. For more information about password concepts, see the “Account Passwords and Policies” white paper on TechNet (<https://go.microsoft.com/fwlink/p/?LinkId=30009>).

## Accounts and groups in App-V 5.1


A best practice for user account management is to create domain global groups and add user accounts to them. Then, add the domain global accounts to the necessary App-V 5.1 local groups on the App-V 5.1 servers.

**Note**  
App-V client computer accounts that need to connect to the publishing server must be part of the publishing server’s **Users** local group. By default, all computers in the domain are part of the **Authorized Users** group, which is part of the **Users** local group.

 

### <a href="" id="-------------app-v-5-1-server-security"></a> App-V 5.1 server security

No groups are created automatically during App-V 5.1 Setup. You should create the following Active Directory Domain Services global groups to manage App-V 5.1 server operations.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Group name</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>App-V Management Admin group</p></td>
<td align="left"><p>Used to manage the App-V 5.1 management server. This group is created during the App-V 5.1 Management Server installation.</p>
<div class="alert">
<strong>Important</strong>  
<p>There is no method to create the group using the management console after you have completed the installation.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>Database read/write for Management Service account</p></td>
<td align="left"><p>Provides read/write access to the management database. This account should be created during the App-V 5.1 management database installation.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>App-V Management Service install admin account</p>
<div class="alert">
<strong>Note</strong>  
<p>This is only required if management database is being installed separately from the service.</p>
</div>
<div>
 
</div></td>
<td align="left"><p>Provides public access to schema-version table in management database. This account should be created during the App-V 5.1 management database installation.</p></td>
</tr>
<tr class="even">
<td align="left"><p>App-V Reporting Service install admin account</p>
<div class="alert">
<strong>Note</strong>  
<p>This is only required if reporting database is being installed separately from the service.</p>
</div>
<div>
 
</div></td>
<td align="left"><p>Public access to schema-version table in reporting database. This account should be created during the App-V 5.1 reporting database installation.</p></td>
</tr>
</tbody>
</table>

 

Consider the following additional information:

-   Access to the package shares - If a share exists on the same computer as the management Server, the **Network** service requires read access to the share. In addition, each App-V client computer must have read access to the package share.

    **Note**  
    In previous versions of App-V, package share was referred to as content share.

     

-   Registering publishing servers with Management Server - A publishing server must be registered with the Management server. For example, it must be added to the database, so that the Publishing server machine accounts are able to call into the Management service API.

### <a href="" id="-------------app-v-5-1-package-security"></a> App-V 5.1 package security

The following will help you plan how to ensure that virtualized packages are secure.

-   If an application installer applies an access control list (ACL) to a file or directory, then that ACL is not persisted in the package. When the package is deployed, if the file or directory is modified by a user it will either inherit the ACL in the **%userprofile%** or inherit the ACL of the target computer’s directory. The former case occurs if the file or directory does not exist in a virtual file system location; the latter case occurs if the file or directory exists in a virtual file system location, for example **%windir%**.

## <a href="" id="---------app-v-5-1-log-files"></a> App-V 5.1 log files


During App-V 5.1 Setup, setup log files are created in the **%temp%** folder of the installing user.






## Related topics


[Preparing Your Environment for App-V 5.1](preparing-your-environment-for-app-v-51.md)

 

 





