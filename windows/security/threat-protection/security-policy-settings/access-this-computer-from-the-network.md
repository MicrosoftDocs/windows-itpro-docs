---
title: Access this computer from the network - security policy setting (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Access this computer from the network security policy setting.
ms.assetid: f6767bc2-83d1-45f1-847c-54f5362db022
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/19/2017
---

# Access this computer from the network - security policy setting

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Access this computer from the network** security policy setting.

## Reference

The **Access this computer from the network** policy setting determines which users can connect to the device from the network. This capability is required by a number of network protocols, including Server Message Block (SMB)-based protocols, NetBIOS, Common Internet File System (CIFS), and Component Object Model Plus (COM+).

Users, devices, and service accounts gain or lose the **Access this computer from network** user right by being explicitly or implicitly added or removed from a security group that has been granted this user right. For example, a user account or a machine account may be explicitly added to a custom security group or a built-in security group, or it may be implicitly added by Windows to a computed security group such as Domain Users, Authenticated Users, or Enterprise Domain Controllers.
By default, user accounts and machine accounts are granted the **Access this computer from network** user right when computed groups such as Authenticated Users, and for domain controllers, the Enterprise Domain Controllers group, are defined in the default domain controllers Group Policy Object (GPO).

Constant: SeNetworkLogonRight

### Possible values

-   User-defined list of accounts
-   Not defined

### Best practices

-   On desktop devices or member servers, grant this right only to users and administrators.
-   On domain controllers, grant this right only to authenticated users, enterprise domain controllers, and administrators.
-   This setting includes the **Everyone** group to ensure backward compatibility. Upon Windows upgrade, after you have verified that all users and groups are correctly migrated, you should remove the **Everyone** group and use the **Authenticated Users** group instead.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

The following table lists the actual and effective default policy values for the most recent supported versions of Windows. Default values are also listed on the policy’s property page.

|Server type of GPO | Default value |
| - | - |
| Default domain policy | Not defined |
| Default domain controller policy | Everyone, Administrators, Authenticated Users, Enterprise Domain Controllers, Pre-Windows 2000 Compatible Access |
| Stand-alone server default settings |Everyone, Administrators, Users, Backup Operators |
| Domain controller effective default settings | Everyone, Administrators, Authenticated Users, Enterprise Domain Controllers, Pre-Windows 2000 Compatible Access |
| Member server effective default settings | Everyone, Administrators, Users, Backup Operators |
| Client computer effective default settings |Everyone, Administrators, Users, Backup Operators |
 
## Policy management

When modifying this user right, the following actions might cause users and services to experience network access issues:

-   Removing the Enterprise Domain Controllers security group
-   Removing the Authenticated Users group or an explicit group that allows users, computers, and service accounts the user right to connect to computers over the network
-   Removing all user and machine accounts

A restart of the device is not required for this policy setting to be effective.

Any change to the user rights assignment for an account becomes effective the next time the owner of the account logs on.

### Group Policy

Settings are applied in the following order through a Group Policy Object (GPO), which will overwrite settings on the local computer at the next Group Policy update:

1.  Local policy settings
2.  Site policy settings
3.  Domain policy settings
4.  OU policy settings

When a local setting is greyed out, it indicates that a GPO currently controls that setting.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Users who can connect from their device to the network can access resources on target devices for which they have permission. For example, the **Access this computer from the network** user right is required for users to connect to shared printers and folders. If this user right is assigned to the **Everyone** group, anyone in the group can read the files in those shared folders. This situation is unlikely because the groups created by a default installation of at least Windows Server 2008 R2 or Windows 7 do not include the **Everyone** group. However, if a device is upgraded and the original device includes the **Everyone** group as part of its defined users and groups, that group is transitioned as part of the upgrade process and is present on the device.

### Countermeasure

Restrict the **Access this computer from the network** user right to only those users and groups who require access to the computer. For example, if you configure this policy setting to the **Administrators** and **Users** groups, users who log on to the domain can access resources that are shared 
from servers in the domain if members of the **Domain Users** group are included in the local **Users** group.

> **Note**  If you are using IPsec to help secure network communications in your organization, ensure that a group that includes machine accounts is given this right. This right is required for successful computer authentication. Assigning this right to **Authenticated Users** or **Domain Computers** meets this requirement.
 
### Potential impact

If you remove the **Access this computer from the network** user right on domain controllers for all users, no one can log on to the domain or use network resources. If you remove this user right on member servers, users cannot connect to those servers through the network. If you have installed optional components such as ASP.NET or Internet Information Services (IIS), you may need to assign this user right to additional accounts that are required by those components. It is important to verify that authorized users are assigned this user right for the devices that they need to access the network.

## Related topics
[User Rights Assignment](user-rights-assignment.md)
 
 
