---
title: Domain-Joined and Non-Domain-Joined Clients
description: Domain-Joined and Non-Domain-Joined Clients
author: dansimp
ms.assetid: a935dc98-de60-45f3-ab74-2444ce082e88
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Domain-Joined and Non-Domain-Joined Clients


The App-V Desktop Client can be configured to allow connection to a network regardless of whether the client is domain joined or non-domain joined.

## Domain-Joined Clients


Clients that are domain joined, but outside the internal network, can communicate with the App-V infrastructure by using a VPN connection. When you want to provide users the ability to leave the internal network but still communicate in an App-V infrastructure, your environment requires very little setup. Because the users are already part of the domain, you simply need to ensure that Cached Credentials are supported on the client. This is the default configuration, and any changes to this setting can be accomplished from Group Policies.

As mentioned in the App-V Security Best Practices Guide, the user will attempt to send their user ticket to the App-V infrastructure for authentication. If the ticket is expired, it will revert to using NTLM and the cached credentials on the computer. To allow roaming, administrators must ensure that the publishing server being accessed internally is available at the same name externally for the names to resolve properly.

## Non-Domain-Joined Clients


Clients that are non-domain joined but need to communicate in the App-V infrastructure must be configured to ensure that authentication to the App-V infrastructure is successful. The App-V Desktop Client does not permit prompting for the publishing refresh process, so the client must be configured to present the proper credentials to the App-V Management Server.

The publishing server, which is configured for publishing refresh from the non-domain joined client, requires that the external name that clients access is configured as the common name or a subject alternate name (SAN) on the publishing server’s certificate.

## Related topics


[How to Assign the Proper Credentials for Windows Vista](how-to-assign--the-proper-credentials-for-windows-vista.md)

[How to Assign the Proper Credentials for Windows XP](how-to-assign--the-proper-credentials-for-windows-xp.md)

 

 





