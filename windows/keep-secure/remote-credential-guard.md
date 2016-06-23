---
title: Protect Remote Desktop credentials with Remote Credential Guard (Windows 10)
description: Remote Credential Guard helps to secure your Remote Desktop credentials by never sending them to the target device.
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---
#  Protect Remote Desktop credentials with Remote Credential Guard

**Applies to**
-   Windows 10
-   Windows Server 2016

Introduced in Windows 10, version 1607, Remote Credential Guard

Added to Restricted Admin mode

Does not send credentials to the target device

Credential derivatives sent to the target device are bound between the client device and the server using a virtual channel for authentication. 

Also note that in using this mode, no creds are send over to the target machine you are RDP-ing into, but the target sill acquires the Service Tickets on its own.



## Hardware and software requirements

Any requirements?

## Manage Remote Credential Guard

GP
registry

Switch: MSTSC /remoteGuard /v:\[TargetMachineName\]

## Considerations when using Remote Credential Guard

Note that it does not support FAST Armoring, especially in cases where the resources require that a user must come from a specified device. Specifically speaking, if Authentication Policies are deployed to limit access to a resource, this mode will file to provide access to such file shares and other resources. The RDP Connection itself should succeed though.

Remote Credential Guard must be turned off if you need to connect to a device that is joined to Azure Active Directory.

It will also be worth mentioning that if the user connecting to the remote server is an admin on the remove server, he can get SSO access as well as install software or drop tools that can listen on open ports etc.