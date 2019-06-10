---
title: App-V Security Considerations (Windows 10)
description: App-V Security Considerations
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/16/2018
ms.reviewer: 
manager: dansimp
ms.author: lomayor
ms.topic: article
---
# App-V security considerations

>Applies to: Windows 10, version 1607

This topic contains a brief overview of the accounts and groups, log files, and other security-related considerations for Microsoft Application Virtualization (App-V).

>[!IMPORTANT]
>App-V is not a security product and does not provide any guarantees for a secure environment.

## The PackageStoreAccessControl (PSAC) feature has been deprecated

Effective as of June, 2014, the PackageStoreAccessControl (PSAC) feature introduced in Microsoft Application Virtualization (App-V) 5.0 Service Pack 2 (SP2) has been deprecated in both single-user and multi-user environments.

## General security considerations

**Understand the security risks.** The most serious risk to App-V is from unauthorized users hijacking an App-V client's functionality, giving the hacker the ability to reconfigure key data on App-V clients. By comparison, short-term loss of App-V functionality from a denial-of-service attack would not be as catastrophic.

**Physically secure your computers**. A security strategy that doesn't consider physical security is incomplete. Anyone with physical access to an App-V server could potentially attack the entire client base, so potential physical attacks or thefts should be prevented at all cost. App-V servers should be stored in a physically secure server room with controlled access. Lock the computer with the operating system or a secured screen saver to keep computers secure when the administrators are away.

**Apply the most recent security updates to all computers**. To stay informed about the latest updates for operating systems, Microsoft SQL Server, and App-V, see the [Microsoft Security TechCenter](https://technet.microsoft.com/security/bb291012). (THIS LINK NEEDS TO BE UPDATED)

**Use strong passwords or pass phrases**. Always use strong passwords with 15 or more characters for all App-V and App-V administrator accounts. Never use blank passwords. For more information about password concepts, see [Password Policy](https://docs.microsoft.com/sql/relational-databases/security/password-policy) and [Strong Passwords](https://docs.microsoft.com/sql/relational-databases/security/strong-passwords). (THIS LINK NEEDS TO BE UPDATED)

## Accounts and groups in App-V

A best practice for user account management is to create domain global groups and add user accounts to them. After that, add the domain global accounts to the necessary App-V local groups on the App-V servers.

>[!NOTE]
>App-V client computer accounts that need to connect to the publishing server must be part of the publishing server’s **Users** local group. By default, all computers in the domain are part of the **Authorized Users** group, which is part of the **Users** local group.

### App-V server security

No groups are created automatically during App-V setup. You should create the following Active Directory Domain Services global groups to manage App-V server operations.

|Group name|Details|Important notes|
|---|---|---|
|App-V Management Admin group|Used to manage the App-V management server. This group is created during the App-V Management Server installation.|The management console can't create a new group after installation is complete.|
|Database read/write for Management Service account|Provides read/write access to the management database. This account should be created during App-V management database installation.||
|App-V Management Service install admin account|Provides public access to schema-version table in management database. This account should be created during App-V management database installation.|This is only required if the management database is being installed separately from the service.|
|App-V Reporting Service install admin account|Public access to schema-version table in reporting database. This account should be created during the App-V reporting database installation.|This is only required if reporting database is being installed separately from the service.|

Consider the following additional information:

* Access to the package shares: If a share exists on the same computer as the management Server, the **Network** service requires read access to the share. In addition, each App-V client computer must have read access to the package share.
 > [!NOTE]
  >In previous versions of App-V, package share was referred to as content share.
* Registering publishing servers with Management Server: A publishing server must be registered with the Management server. For example, it must be added to the database, so that the Publishing server machine accounts are able to call into the Management service API.

### App-V package security

The following will help you plan how to ensure that virtualized packages are secure.

* If an application installer applies an access control list (ACL) to a file or directory, then that ACL is not persisted in the package. If the file or directory is modified by a user when the package is deployed, the modified file or directory will either inherit the ACL in the **%userprofile%** or inherit the ACL of the target computer’s directory. The former occurs if the file or directory does not exist in a virtual file system location; the latter occurs if the file or directory exists in a virtual file system location, such as **%windir%**.

## App-V log files

During App-V setup, setup log files are created in the **%temp%** folder of the installing user.

## Related topics

[Preparing Your Environment for App-V](appv-preparing-your-environment.md)
