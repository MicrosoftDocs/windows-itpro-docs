---
title: DCOM Machine Access Restrictions in Security Descriptor Definition Language (SDDL) syntax (Windows 10)
description: Describes the best practices, location, values, and security considerations for the DCOM Machine Access Restrictions in Security Descriptor Definition Language (SDDL) syntax policy setting.
ms.assetid: 0fe3521a-5252-44df-8a47-8d92cf936e7c
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

# DCOM: Machine Access Restrictions in Security Descriptor Definition Language (SDDL) syntax

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **DCOM: Machine Access Restrictions in Security Descriptor Definition Language (SDDL) syntax** policy setting.

## Reference

This policy setting allows you to define additional computer-wide controls that govern access to all Distributed Component Object Model (DCOM)–based applications on a device. These controls restrict call, activation, or launch requests on the device. A simple way to think about these access controls is as an additional access check that is performed against a device-wide access control list (ACL) on each call, activation, or launch of any COM-based server. If the access check fails, the call, activation, or launch request is denied. (This check is in addition to any access check that is run against the server-specific ACLs.) In effect, it provides a minimum authorization standard that must be passed to access any COM-based server. This policy setting controls access permissions to cover call rights.

These device-wide ACLs provide a way to override weak security settings that are specified by an application through the CoInitializeSecurity function or application-specific security settings. They provide a minimum security standard that must be passed, regardless of the settings of the specific server.

These ACLs also provide a centralized location for an administrator to set a general authorization policy that applies to all COM-based servers on the device.

This policy setting allows you to specify an ACL in two different ways. You can type the security descriptor in SDDL, or you can grant or deny Local Access and Remote Access permissions to users and groups. We recommend that you use the built-in user interface to specify the ACL contents that you want to apply with this setting. The default ACL settings vary, depending on the version of Windows you are running.

### Possible values

-   *User-defined input* of the SDDL representation of the groups and privileges

    When you specify the users or groups that are to be given permissions, the security descriptor field is populated with the Security Descriptor Definition Language representation of those groups and privileges. Users and groups can be given explicit Allow or Deny privileges for local access and remote access.

-   Blank

    This represents how the local security policy deletes the policy enforcement key. This value deletes the policy and then sets it as Not defined. The Blank value is set by using the ACL editor to empty the list, and then pressing OK.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value
| - | - |
| Default Domain Policy | Blank |
| Default Domain Controller Policy | Blank | 
| Stand-Alone Server Default Settings | Blank | 
| DC Effective Default Settings | Not defined | 
| Member Server Effective Default Settings | Not defined | 
| Client Computer Effective Default Settings | Not defined | 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.
### Restart requirement

None. Changes to this policy become effective without a computer restart when they are saved locally or distributed through Group Policy.

### Group Policy

The registry settings that are created as a result of enabling the **DCOM: Machine Access Restrictions in Security Descriptor Definition Language (SDDL) syntax** policy setting take precedence over the previous registry settings when this policy setting was configured. The Remote Procedure Call (RPC) service checks the new registry keys in the Policies section for the computer restrictions, and these registry entries take precedence over the existing registry keys under OLE. This means that previously existing registry settings are no longer effective, and if you make changes to the existing settings, device access permissions for users are not changed. Use care in configuring the list of users and groups.

If the administrator is denied permission to access DCOM applications due to the changes made to DCOM in the Windows operating system, the administrator can use the **DCOM: Machine Access Restrictions in Security Descriptor Definition Language (SDDL) syntax** policy setting to manage DCOM access to the computer. The administrator can use this setting to specify which users and groups can access the DCOM application on the computer locally and remotely. This will restore control of the DCOM application to the administrator and users. To do this, open the **DCOM: Machine Access Restrictions in Security Descriptor Definition Language (SDDL) syntax** setting, and click 
**Edit Security**. Specify the users or groups you want to include and the computer access permissions for those users or groups. This defines the setting and sets the appropriate SDDL value.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Many COM applications include some security-specific code (for example, to call CoInitializeSecurity), but they use weak settings that allow unauthenticated access to the process. Administrators cannot override these settings to force stronger security in earlier versions of Windows without modifying the application. An attacker could attempt to exploit weak security in an individual application by attacking it through COM calls.

Also, the COM infrastructure includes the Remote Procedure Call Services (RPCSS), a system service that runs during and after computer startup. This service manages activation of COM objects and the running object table and provides helper services to DCOM remoting. It exposes RPC interfaces that can be called remotely. Because some COM-based servers allow unauthenticated remote access, these interfaces can be called by anyone, including unauthenticated users. As a result, RPCSS can be attacked by malicious users who use remote, unauthenticated computers.

### Countermeasure

To protect individual COM-based applications or services, set the **DCOM: Machine Access Restrictions in Security Descriptor Definition Language (SDDL) syntax** setting to an appropriate device-wide ACL.

### Potential impact

Windows implements default COM ACLs when they are installed. Modifying these ACLs from the default may cause some applications or components that communicate by using DCOM to fail. If you implement a COM-based server and you override the default security settings, confirm that the application-specific call permissions that ACL assigns are the correct permissions for appropriate users. If it does not, you must change your application-specific permission ACL to provide appropriate users with activation rights so that applications and Windows components that use DCOM do not fail.

## Related topics

- [Security Options](security-options.md)
 
 
