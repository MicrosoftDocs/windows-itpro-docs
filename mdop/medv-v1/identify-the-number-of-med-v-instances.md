---
title: Identify the Number of MED-V Instances
description: Identify the Number of MED-V Instances
author: dansimp
ms.assetid: edea9bdf-a28c-4d24-9298-7bd6536c3a94
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Identify the Number of MED-V Instances


You need to determine the number of MED-V instances, as well as define the scope for each instance so that you can design the server infrastructure. A MED-V instance includes the following:

-   The MED-V server and the MED-V workspaces stored on the server, including Active Directory permissions.

-   A SQL Server database that stores client events. The database may be shared by multiple MED-V instances.

-   The image repository for the packed MED-V images. The repository may be shared by multiple MED-V instances.

-   The management console used to create and pack images and to create MED-V workspaces. The console cannot be used simultaneously by multiple MED-V instances, but it can be disconnected from one MED-V server and then connected to a different MED-V server.

-   MED-V clients that receive MED-V workspaces, and authorization to use them, from the server.

Separate MED-V instances cannot be integrated or share MED-V workspaces. Therefore, each additional instance decentralizes the virtualization management.

## Determine the Number of MED-V Instances Required


Start by assuming you are using one MED-V instance. Then, consider the following conditions, and add additional instances for each condition that applies to your infrastructure.

-   Number of supported users—Each MED-V instance can support up to 5,000 concurrently active clients. Concurrently active means the client is online with the MED-V server and sending polls to the server for policy and image updates, as well as events. If your infrastructure will include more than 5,000 active users, add one instance for every 5,000 users.

-   Users in untrusted domains—The MED-V server associates MED-V workspace permissions with Active Directory users and/or groups. This requires MED-V users to exist within the trust boundary of the MED-V server. Add one MED-V instance for each group of MED-V users that is in a separate, untrusted domain.

-   Clients in isolated networks—Determine whether any clients reside in networks that are isolated and therefore require a separate MED-V instance. For example, organizations often isolate lab networks from production networks. Add a MED-V instance for each isolated network that will contain MED-V clients.

-   Organizational requirements—The organization may require that a group of clients be managed by a separate MED-V instance for security reasons, such as when sensitive applications are delivered only to a restricted set of users within a domain. For example, the payroll department may deny users from other departments access to the MED-V instance that stores policy for payroll processing. Additionally, if the organization uses a distributed management model, a separate MED-V instance may be required for each business group having MED-V clients in order to enable the group to manage its own virtualized environment. Add one MED-V instance for each separate organizational requirement.

-   Legal considerations—National security or privacy issues and fiduciary laws could require the separation of certain data or prevent other data from crossing national borders. If necessary, add additional MED-V instances to address this need.

After you determine the number of MED-V instances required for your infrastructure, as well as the reasoning for each one, provide a name for each instance.

 

 





