---
title: Impersonate a client after authentication (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Impersonate a client after authentication security policy setting.
ms.assetid: 4cd241e2-c680-4b43-8ed0-3b391925cec5
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

# Impersonate a client after authentication

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Impersonate a client after authentication** security policy setting.

## Reference

This policy setting determines which programs are allowed to impersonate a user or another specified account and act on behalf of the user. If this user right is required for this type of impersonation, an unauthorized user cannot cause a client to connect (for example, by remote procedure call (RPC) or named pipes) to a service that they have created to impersonate that client. (Such an action could elevate the unauthorized user's permissions to administrative or system levels.)

Impersonation is the ability of a thread to run in a security context that is different from the context of the process that owns the thread. Impersonation is designed to meet the security requirements of client/server applications. When running in a client's security context, a service "is" the client, to some degree. One of the service's threads uses an access token representing the client's credentials to obtain access to the objects to which the client has access.
The primary reason for impersonation is to cause access checks to be performed against the client's identity. Using the client's identity for access checks can cause access to be either restricted or expanded, depending on what the client has permission to do.

Services that are started by the Service Control Manager have the built-in Service group added by default to their access tokens. COM servers that are started by the COM infrastructure and configured to run under a specific account also have the Service group added to their access tokens. As a result, these processes are assigned this user right when they are started.

Constant: SeImpersonatePrivilege

### Possible values

-   User-defined list of accounts
-   Default values
-   Not defined

### Best practices

-   A user can impersonate an access token if any of the following conditions exist:

    -   The access token that is being impersonated is for this user.
    -   The user in this session logged on to the network with explicit credentials to create the access token.
    -   The requested level is less than Impersonate, such as Anonymous or Identify.

    Because of these factors, users do not usually need to have this user right assigned.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

By default, this setting is Administrators, Local Service, Network Service, and Service on domain controllers and stand-alone servers.

The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined |
| Default Domain Controller Policy| Administrators<br/>Local Service<br/>Network Service<br/>Service| 
| Stand-Alone Server Default Settings | Administrators<br/>Local Service<br/>Network Service<br/>Service| 
| Domain Controller Effective Default Settings | Administrators<br/>Local Service<br/>Network Service<br/>Service| 
| Member Server Effective Default Settings | Administrators<br/>Local Service<br/>Network Service<br/>Service| 
| Client Computer Effective Default Settings | Administrators<br/>Local Service<br/>Network Service<br/>Service| 
 
## Policy management

This section describes features, tools, and guidance to help you manage this policy.

A restart of the computer is not required for this policy setting to be effective.

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

An attacker with the **Impersonate a client after authentication** user right could create a service, mislead a client into connecting to the service, and then impersonate that computer to elevate the attacker's level of access to that of the device.

### Countermeasure

On member servers, ensure that only the Administrators and Service groups (Local Service, Network Service, and Service) have the **Impersonate a client after authentication** user right assigned to them.

### Potential impact

In most cases, this configuration has no impact. If you have installed optional components such as ASP.NET or IIS, you may need to assign the **Impersonate a client after authentication** user right to additional accounts that are required by those components, such as IUSR\_*&lt;ComputerName&gt;*, IIS\_WPG, ASP.NET, or IWAM\_*&lt;ComputerName&gt;*.

## Related topics

- [User Rights Assignment](user-rights-assignment.md)
