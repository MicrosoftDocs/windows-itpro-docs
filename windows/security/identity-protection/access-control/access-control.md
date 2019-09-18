---
title: Access Control Overview (Windows 10)
description: Access Control Overview
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
audience: ITPro
author: dulcemontemayor
ms.author: dansimp
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
ms.localizationpriority: medium
ms.date: 07/18/2017
ms.reviewer: 
---

# Access Control Overview

**Applies to**
-   Windows 10
-   Windows Server 2016

This topic for the IT professional describes access control in Windows, which is the process of authorizing users, groups, and computers to access objects on the network or computer. Key concepts that make up access control are permissions, ownership of objects, inheritance of permissions, user rights, and object auditing.

## <a href="" id="bkmk-over"></a>Feature description


Computers that are running a supported version of Windows can control the use of system and network resources through the interrelated mechanisms of authentication and authorization. After a user is authenticated, the Windows operating system uses built-in authorization and access control technologies to implement the second phase of protecting resources: determining if an authenticated user has the correct permissions to access a resource.

Shared resources are available to users and groups other than the resource’s owner, and they need to be protected from unauthorized use. In the access control model, users and groups (also referred to as security principals) are represented by unique security identifiers (SIDs). They are assigned rights and permissions that inform the operating system what each user and group can do. Each resource has an owner who grants permissions to security principals. During the access control check, these permissions are examined to determine which security principals can access the resource and how they can access it.

Security principals perform actions (which include Read, Write, Modify, or Full control) on objects. Objects include files, folders, printers, registry keys, and Active Directory Domain Services (AD DS) objects. Shared resources use access control lists (ACLs) to assign permissions. This enables resource managers to enforce access control in the following ways:

-   Deny access to unauthorized users and groups

-   Set well-defined limits on the access that is provided to authorized users and groups

Object owners generally grant permissions to security groups rather than to individual users. Users and computers that are added to existing groups assume the permissions of that group. If an object (such as a folder) can hold other objects (such as subfolders and files), it is called a container. In a hierarchy of objects, the relationship between a container and its content is expressed by referring to the container as the parent. An object in the container is referred to as the child, and the child inherits the access control settings of the parent. Object owners often define permissions for container objects, rather than individual child objects, to ease access control management.

This content set contains:

-   [Dynamic Access Control Overview](dynamic-access-control.md)

-   [Security identifiers](security-identifiers.md)

-   [Security Principals](security-principals.md)

    -   [Local Accounts](local-accounts.md)

    -   [Active Directory Accounts](active-directory-accounts.md)

    -   [Microsoft Accounts](microsoft-accounts.md)

    -   [Service Accounts](service-accounts.md)

    -   [Active Directory Security Groups](active-directory-security-groups.md)

## <a href="" id="bkmk-app"></a>Practical applications


Administrators who use the supported version of Windows can refine the application and management of access control to objects and subjects to provide the following security:

-   Protect a greater number and variety of network resources from misuse.

-   Provision users to access resources in a manner that is consistent with organizational policies and the requirements of their jobs.

-   Enable users to access resources from a variety of devices in numerous locations.

-   Update users’ ability to access resources on a regular basis as an organization’s policies change or as users’ jobs change.

-   Account for a growing number of use scenarios (such as access from remote locations or from a rapidly expanding variety of devices, such as tablet computers and mobile phones).

-   Identify and resolve access issues when legitimate users are unable to access resources that they need to perform their jobs.

## Permissions


Permissions define the type of access that is granted to a user or group for an object or object property. For example, the Finance group can be granted Read and Write permissions for a file named Payroll.dat.

By using the access control user interface, you can set NTFS permissions for objects such as files, Active Directory objects, registry objects, or system objects such as processes. Permissions can be granted to any user, group, or computer. It is a good practice to assign permissions to groups because it improves system performance when verifying access to an object.

For any object, you can grant permissions to:

-   Groups, users, and other objects with security identifiers in the domain.

-   Groups and users in that domain and any trusted domains.

-   Local groups and users on the computer where the object resides.

The permissions attached to an object depend on the type of object. For example, the permissions that can be attached to a file are different from those that can be attached to a registry key. Some permissions, however, are common to most types of objects. These common permissions are:

-   Read

-   Modify

-   Change owner

-   Delete

When you set permissions, you specify the level of access for groups and users. For example, you can let one user read the contents of a file, let another user make changes to the file, and prevent all other users from accessing the file. You can set similar permissions on printers so that certain users can configure the printer and other users can only print.

When you need to change the permissions on a file, you can run Windows Explorer, right-click the file name, and click **Properties**. On the **Security** tab, you can change permissions on the file. For more information, see [Managing Permissions](https://technet.microsoft.com/library/cc770962.aspx).

**Note**  
Another kind of permissions, called share permissions, is set on the Sharing tab of a folder's **Properties** page or by using the Shared Folder Wizard. For more information see [Share and NTFS Permissions on a File Server](https://technet.microsoft.com/library/cc754178.aspx).

 

### Ownership of objects

An owner is assigned to an object when that object is created. By default, the owner is the creator of the object. No matter what permissions are set on an object, the owner of the object can always change the permissions. For more information, see [Manage Object Ownership](https://technet.microsoft.com/library/cc732983.aspx).

### Inheritance of permissions

Inheritance allows administrators to easily assign and manage permissions. This feature automatically causes objects within a container to inherit all the inheritable permissions of that container. For example, the files within a folder inherit the permissions of the folder. Only permissions marked to be inherited will be inherited.

## User rights


User rights grant specific privileges and sign-in rights to users and groups in your computing environment. Administrators can assign specific rights to group accounts or to individual user accounts. These rights authorize users to perform specific actions, such as signing in to a system interactively or backing up files and directories.

User rights are different from permissions because user rights apply to user accounts, and permissions are associated with objects. Although user rights can apply to individual user accounts, user rights are best administered on a group account basis. There is no support in the access control user interface to grant user rights. However, user rights assignment can be administered through **Local Security Settings**.

For more information about user rights, see [User Rights Assignment](/windows/device-security/security-policy-settings/user-rights-assignment).

## Object auditing


With administrator's rights, you can audit users' successful or failed access to objects. You can select which object access to audit by using the access control user interface, but first you must enable the audit policy by selecting **Audit object access** under **Local Policies** in **Local Security Settings**. You can then view these security-related events in the Security log in Event Viewer.

For more information about auditing, see [Security Auditing Overview](/windows/device-security/auditing/security-auditing-overview).

## See also

-   For more information about access control and authorization, see [Access Control and Authorization Overview](https://technet.microsoft.com/library/jj134043(v=ws.11).aspx).


 

 




