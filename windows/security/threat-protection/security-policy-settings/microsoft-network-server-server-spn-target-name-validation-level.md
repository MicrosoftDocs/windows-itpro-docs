---
title: Microsoft network server Server SPN target name validation level (Windows 10)
description: Describes the best practices, location, and values, policy management and security considerations for the Microsoft network server Server SPN target name validation level security policy setting.
ms.assetid: 18337f78-eb45-42fd-bdbd-f8cd02c3e154
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

# Microsoft network server: Server SPN target name validation level

**Applies to**
-   Windows 10

Describes the best practices, location, and values, policy management and security considerations for the **Microsoft network server: Server SPN target name validation level** security policy setting.

## Reference

This policy setting controls the level of validation that a server with shared folders or printers performs on the service principal name (SPN) that is provided by the client device when the client device establishes a session by using the Server Message Block (SMB) protocol. The level of validation can help prevent a class of attacks against SMB services (referred to as SMB relay attacks). This setting affects both SMB1 and SMB2.

Servers that use SMB provide availability to their file systems and other resources, such as printers, to networked client devices. Most servers that use SMB validate user access to resources by using NT Domain authentication (NTLMv1 and NTLMv2) and the Kerberos protocol.

### Possible values

The options for validation levels are:

-   **Off**

    The SPN from a SMB client is not required or validated by the SMB server.

-   **Accept if provided by client**

    The SMB server will accept and validate the SPN provided by the SMB client and allow a session to be established if it matches the SMB server’s list of SPN’s. If the SPN does not match, the session request for that SMB client will be denied.

-   **Required from client**

    The SMB client must send a SPN name in session setup, and the SPN name provided must match the SMB server that is being requested to establish a connection. If no SPN is provided by the client device, or the SPN provided does not match, the session is denied.

The default setting is Off.

### Best practices

This setting affects the server SMB behavior, and its implementation should be carefully evaluated and tested to prevent disruptions to file and print serving capabilities.

>**Note:**  All Windows operating systems support a client-side SMB component and a server-side SMB component.
 
### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or Group Policy object (GPO) | Default value |
| - | - |
| Default domain policy | Off | 
| Default domain controller policy| Off| 
| Stand-alone server default settings | Off| 
| Domain controller effective default settings| Validation level check not implemented| 
| Member server effective default settings | Validation level check not implemented| 
| Effective GPO default settings on client computers | Validation level check not implemented| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

### Policy conflict considerations

None.

### Group Policy

This policy setting can be configured by using the Group Policy Management Console (GPMC) to be distributed through Group Policy Objects (GPOs). If this policy is not contained in a distributed GPO, this policy can be configured on the local computer by using the Local Security Policy snap-in.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

This policy setting controls the level of validation that a server with shared folders or printers performs on the service principal name (SPN) that is provided by the client device when the client device establishes a session by using the SMB protocol. The level of validation can help prevent a class of attacks against SMB servers (referred to as SMB relay attacks). This setting will affect both SMB1 and SMB2.

### Countermeasure

For countermeasures that are appropriate to your environment, see **Possible values** above.

### Potential impact

All Windows operating systems support a client-side SMB component and a server-side SMB component. This setting affects the server SMB behavior, and its implementation should be carefully evaluated and tested to prevent disruptions to file and print serving capabilities.

Because the SMB protocol is widely deployed, setting the options to **Accept if provided by client** or **Required from client** will prevent some clients from successfully authenticating to some servers in your environment.

## Related topics

- [Security Options](security-options.md)
