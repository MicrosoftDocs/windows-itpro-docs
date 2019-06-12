---
title: DCOM Machine Launch Restrictions in Security Descriptor Definition Language (SDDL) syntax (Windows 10)
description: Describes the best practices, location, values, and security considerations for the DCOM Machine Launch Restrictions in Security Descriptor Definition Language (SDDL) syntax security policy setting.
ms.assetid: 4b95d45f-dd62-4c34-ba32-43954528dabe
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

# DCOM: Machine Launch Restrictions in Security Descriptor Definition Language (SDDL) syntax

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **DCOM: Machine Launch Restrictions in Security Descriptor Definition Language (SDDL) syntax** security policy setting.

## Reference

This policy setting is similar to the [DCOM: Machine Access Restrictions in Security Descriptor Definition Language (SDDL) syntax](dcom-machine-access-restrictions-in-security-descriptor-definition-language-sddl-syntax.md) setting in that it allows you to define additional computer-wide controls that govern access to all DCOM–based applications on a device. However, the ACLs that are specified in this policy setting control local and remote COM launch requests (not access requests) on the device. A simple way to think about this access control is as an additional access check that is performed against a device-wide ACL on each launch of any COM-based server. If the access check fails, the call, activation, or launch request is denied. (This check is in addition to any access check that is run against the server-specific ACLs.) In effect, it provides a minimum authorization standard that must be passed to launch any COM-based server. The DCOM: Machine Access Restrictions in Security Descriptor Definition Language (SDDL) syntax policy setting differs in that it provides a minimum access check that is applied to attempts to access an already launched COM-based server.

These device-wide ACLs provide a way to override weak security settings that are specified by an application through CoInitializeSecurity or application-specific security settings. They provide a minimum security standard that must be passed, regardless of the settings of the specific COM-based server. These ACLs provide a centralized location for an administrator to set a general authorization policy that applies to all COM-based servers.
The **DCOM: Machine Launch Restrictions in the Security Descriptor Definition Language (SDDL) syntax** setting allows you to specify an ACL in two ways. You can type the security descriptor in SDDL, or you can grant or deny Local 
Access and Remote Access permissions to users and groups. We recommend that you use the built-in user interface to specify the ACL contents that you want to apply with this setting. The default ACL settings vary, depending on the version of Windows you are running.

### Possible values

-   Blank

    This represents how the local security policy deletes the policy enforcement key. This value deletes the policy and then sets it to Not defined. The Blank value is set by using the ACL editor to empty the list, and then pressing OK.

-   *User-defined input* of the SDDL representation of the groups and privileges

    When you specify the users or groups that are to be given permission, the security descriptor field is populated with the Security Descriptor Definition Language representation of those groups and privileges. Users and groups can be given explicit Allow or Deny privileges on both local access and remote access.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Blank | 
| Default Domain Controller Policy | Blank| 
| Stand-Alone Server Default Settings |Blank | 
| DC Effective Default Settings | Not defined| 
| Member Server Effective Default Settings | Not defined | 
| Client Computer Effective Default Settings | Not defined| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a computer restart when they are saved locally or distributed through Group Policy.

### Group Policy

The registry settings that are created as a result of this policy take precedence over the previous registry settings in this area. The Remote Procedure Call (RPC) service (RpcSs) checks the new registry keys in the Policies section for the computer restrictions; these entries take precedence over the existing registry keys under OLE.

If you are denied access to activate and launch DCOM applications due to the changes made to DCOM in the Windows operating system, this policy setting can be used to control the DCOM activation and launch to the device.

You can specify which users and groups can launch and activate DCOM applications on the device locally and remotely by using the **DCOM: Machine Launch Restrictions in Security Descriptor Definition Language (SDDL) syntax** policy setting. This restores control of the DCOM application to the administrator and specified users. To do this, open the **DCOM: Machine Launch Restrictions in Security Descriptor Definition Language (SDDL) syntax** setting, and click **Edit Security**. Specify the groups that you want to include and the device launch permissions for those groups. This defines the setting and sets the appropriate SDDL value.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Many COM applications include some security-specific code (for example, to call CoInitializeSecurity), but they use weak settings that allow unauthenticated access to the process. You cannot override these settings to force stronger security in earlier versions of Windows without modifying the application. An attacker could attempt to exploit weak security in an individual application by attacking it through COM calls.

Also, the COM infrastructure includes the Remote Procedure Call Service (RPCSS), a system service that runs during computer startup and always runs after that. This service manages activation of COM objects and the running object table and provides helper services to DCOM remoting. It exposes RPC interfaces that can be called remotely. Because some COM-based servers allow unauthenticated remote component activation, these interfaces can be called by anyone, including unauthenticated users. As a result, RPCSS can be attacked by malicious users using remote, unauthenticated computers.

### Countermeasure

To protect individual COM-based applications or services, set this policy setting to an appropriate computer-wide ACL.

### Potential impact

Windows implements default COM ACLs when they are installed. Modifying these ACLs from the default may cause some applications or components that communicate by using DCOM to fail. If you implement a COM-based server and you override the default security settings, confirm that the application-specific launch permissions ACL assigns include activation permissions to appropriate users. If it does not, you must change your application-specific launch permission ACL to provide appropriate users with activation rights so that applications and Windows components that use DCOM do not fail.

## Related topics

- [Security Options](security-options.md)
