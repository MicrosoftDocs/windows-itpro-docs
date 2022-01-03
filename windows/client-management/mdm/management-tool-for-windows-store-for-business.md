---
title: Management tool for the Microsoft Store for Business
description: The Microsoft Store for Business has a new web service designed for the enterprise to acquire, manage, and distribute applications in bulk.
MS-HAID:
- 'p\_phdevicemgmt.business\_store\_portal\_management\_tool'
- 'p\_phDeviceMgmt.management\_tool\_for\_windows\_store\_for\_business'
ms.assetid: 0E39AE85-1703-4B24-9A7F-831C6455068F
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 10/27/2017
---

# Management tool for the Microsoft Store for Business

The Microsoft Store for Business has a new web service designed for the enterprise to acquire, manage, and distribute applications in bulk. The Store for Business enables several capabilities that are required for the enterprise to manage the lifecycle of applications from acquisition to updates.

Here's the list of the available capabilities:

-   Support for enterprise identities – Enables end users within an organization to use the identity that has been provided to them within the organization. This feature enables an organization to keep control of the application and eliminates the need for an organization to maintain another set of identities for their users.
-   Bulk acquisition support of applications – Enables an IT administrator to acquire applications in bulk. IT departments can now take control over the procurement and distribution of applications. Previously, users acquire applications manually.
-   License reclaim and reuse – Enables an enterprise to keep value in their purchases by allowing the ability to unassign access to an application, and then reassign the application to another user. In Microsoft Store today, when a user with a Microsoft account leaves the organization, they keep ownership of the application.
-   Flexible distribution models for Microsoft Store apps – Allows enterprises to integrate with an organization's infrastructure. It also allows the processes to distribute applications to devices that are connected to Store for Business services and to devices without connectivity to the Store for Business services.
-   Custom Line of Business app support – Enables management and distribution of enterprise applications through the Store for Business.
-   Support for Windows client devices - The Store for Business supports client devices.

For more information, see [Microsoft Store for Business and Education](/microsoft-store/).

## Management services

The Store for Business provides services that enable a management tool to synchronize new and updated applications for an organization. Once synchronized, you can distribute new and updated applications using the Windows Management framework. The services provide several features, including providing application data, can assign and reclaim applications, and can download offline-licensed application packages.

- **Application data**: The Store for Business service provides metadata for the applications that have been acquired via the Store for Business. This metadata includes:
  - The application identifier that's used to deploy online license applications
  - Artwork for an application that's used to create a company portal
  - Localized descriptions for applications

- **Licensing models**:

  - **Online-licensed** applications require connectivity to the Microsoft Store. Users require an Azure Active Directory identity, and rely on the store services on the device to get an application from the store. It's similar to how applications are acquired from the Microsoft Store using a Microsoft account. Assigning or reclaiming seats for an application require a call to the Store for Business services.
  - **Offline-licensed** applications enable an organization to use the application for imaging and for devices that may not have connectivity to the store or may not have Azure Active Directory. Offline-licensed applications don't require connectivity to the store. It can be updated directly from the store if the device has connectivity, and the app update policies allow updates to be distributed using the store.

### Offline-licensed application distribution

The following diagram is an overview of app distribution, from getting an offline-licensed application to distributing to clients. Once synchronized from the Store for Business, the management tool can use the Windows management framework to distribute applications to devices.

![business store offline app distribution.](images/businessstoreportalservices2.png)

### Online-licensed application distribution

The following diagram is an overview of app distribution, from getting an online-licensed application to distributing to clients. Once synchronized from the Store for Business, the management tool can use the Windows management framework to distribute applications to devices. For online-licensed applications, the management tool calls back into the Store for Business management services to assign an application before issuing the policy to install the application.

![business store online app distribution.](images/businessstoreportalservices3.png)

## Integrate with Azure Active Directory

The Store for Business services use Azure Active Directory for authentication. The management tool must be registered as an Azure AD application within an organization tenant to authenticate against the Store for Business.

The following articles have more information about Azure AD, and how to register your application within Azure AD:

-   Adding an application to Azure Active Directory - [Azure Active Directory integration with MDM](azure-active-directory-integration-with-mdm.md)
-   Accessing other Web applications and configuring your application to access other APIs - [Integrating Applications with Azure Active Directory](/azure/active-directory/develop/quickstart-register-app)
-   Authenticating to the Store for Business services via Azure AD - [Authentication Scenarios for Azure Active Directory](/azure/active-directory/develop/authentication-vs-authorization)

For code samples, see [Microsoft Azure Active Directory Samples and Documentation](https://go.microsoft.com/fwlink/p/?LinkId=623024) in GitHub. Patterns are similar to [Daemon-DotNet](https://go.microsoft.com/fwlink/p/?LinkId=623025) and [ConsoleApp-GraphAPI-DotNet](https://go.microsoft.com/fwlink/p/?LinkId=623026).

## Configure your Azure AD application

See [Quickstart: Register an application with the Microsoft identity platform](/azure/active-directory/develop/quickstart-register-app) for the steps to configure your Azure AD app. 

## Azure AD Authentication for MTS

MTS requires calls to be authenticated using an Azure AD OAuth bearer token. The authorization token is for the Azure AD application representing the MDM component (service/daemon/on-prem instance) within the context of the directory/tenant it will be working on behalf-of.

Here are the details for requesting an authorization token:

-   Login Authority = `https://login.windows.net/<TargetTenantId>`
-   Resource/audience = `https://onestore.microsoft.com`: The token audience URI is an application identifier for which the token is being generated. It's not a URL for a service endpoint or a web page.
-   ClientId = your Azure AD application client ID
-   ClientSecret = your Azure AD application client secret/key

## Using the management tool

After registering your management tool with Azure AD, the management tool can call into the management services. There are a couple of call patterns:

-   First the ability to get new or updated applications.
-   Second the ability to assign or reclaim applications.

The diagram below shows the call patterns for acquiring a new or updated application.

![business store portal service flow diagram.](images/businessstoreportalservicesflow.png)

**Here is the list of available operations**:

-   [Get Inventory](get-inventory.md)
-   [Get product details](get-product-details.md)
-   [Get localized product details](get-localized-product-details.md)
-   [Get offline license](get-offline-license.md)
-   [Get product packages](get-product-packages.md)
-   [Get product package](get-product-package.md)
-   [Get seats](get-seats.md)
-   [Get seat](get-seat.md)
-   [Assign seats](assign-seats.md)
-   [Reclaim seat from user](reclaim-seat-from-user.md)
-   [Bulk assign and reclaim seats for users](bulk-assign-and-reclaim-seats-from-user.md)
-   [Get seats assigned to a user](get-seats-assigned-to-a-user.md)

