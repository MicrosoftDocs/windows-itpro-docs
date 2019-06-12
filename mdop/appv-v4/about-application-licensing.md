---
title: About Application Licensing
description: About Application Licensing
author: dansimp
ms.assetid: 6b487641-1627-4e91-b829-04f001008176
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# About Application Licensing


You can manage application licenses directly from the Application Virtualization Server Management Console.

## License Types


The System Center Application Virtualization System currently supports the following license types:

-   **Unlimited License**—Allows access to the application by any number of simultaneous users. This method of licensing is appropriate when you want to associate an enterprise-wide license with an application.

-   **Concurrent License**—Enables you to define the maximum number of concurrent users who are allowed to use the application.

-   **Named License**—Enables you to assign a license to an individual user. A named license can be used to ensure that a particular user will always be able to run the application.

You can combine concurrent and named licenses for the same application.

Licensing is disabled by default, but you can enable it from the **Provider Pipeline** tab of the **Provider Properties** dialog. For details about enabling and disabling licensing, see [How to Set Up or Disable Application Licensing](how-to-set-up-or-disable-application-licensing.md).

## Provider Policies


Provider policies were developed for the Application Service Provider (ASP) model. In this model, a single ASP can host a single Application Virtualization System for multiple clients, where each client needs to remain isolated. Clients might have dramatically different requirements—for example, one client might require authentication while another does not. You can use provider policies to associate permissions with clients so that only the approved users can access each virtual application or virtual application package.

For the enterprise customer, you can use this feature when you have strict licensing requirements for one or more applications. Under this situation, the licensing component is disabled on the **Provider Pipeline** tab of the **Provider Properties** dialog.

The **Provider Pipeline** tab also has check boxes to enable authentication, authorization (**Enforce Access Permission Settings**), and metering (**Log Usage Information**). If your configuration has special requirements, you can write your own pipeline components and add them to the system by clicking the **Advanced** button.

## Account Authorities


The account authority is the domain in which the Application Virtualization Server is installed. As you proceed through the server installation, you are prompted to supply a domain name; the domain in which the computer is installed is detected and used by default. When users attempt to log in to the system, they are prompted for their credentials before they can access that domain.

The Application Virtualization System supports multiple domains. You can grant application access to user groups in other domains if a trust relationship is established between domains. Users must supply credentials that are recognized by each domain.

In the Application Virtualization Server Management Console, you can change the primary domain (account authority) and the credentials that are used to access it.

## Authentication


Authentication is the mechanism used to confirm a user's identity. Any user with a recognized user name and password has access.

In the Application Virtualization System, you can enable or disable authentication through a check box on the **Provider Pipeline** tab. By default, Windows Authentication is enabled.

## Authorization


Authorization is the process used to confirm a user’s identity. After confirming the user's identity, the system determines whether the user was granted access to the system and to which applications the user was granted access. The Application Virtualization Server Management Console has an **Enforce Access Permission Settings** check box on the **Provider Pipeline** tab to enable or disable authorization.

In the Application Virtualization System, access is granted to a user group only, not to individual users.

## Related topics


[How to Manage Application Licenses in the Server Management Console](how-to-manage-application-licenses-in-the-server-management-console.md)

[How to Set Up or Disable Application Licensing](how-to-set-up-or-disable-application-licensing.md)

[Server Management Console: Provider Policies Node](server-management-console-provider-policies-node.md)

 

 





