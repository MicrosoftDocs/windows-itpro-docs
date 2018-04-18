---
title: Administering App-V Virtual Applications by Using the Management Console (Windows 10)
description: Administering App-V Virtual Applications by Using the Management Console
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
---
# Administering App-V Virtual Applications by Using the Management Console

>Applies to: Windows 10, version 1607

Use the Microsoft Application Virtualization (App-V) management server to manage packages, connection groups, and package access in your environment. The server publishes application icons, shortcuts, and file type associations to authorized computers that run the App-V client. One or more management servers typically share a common data store for configuration and package information.

The management server uses Active Directory Domain Services (AD DS) groups to manage user authorization and has SQL Server installed to manage the database and data store.

Because the management servers stream applications to end users on demand, these servers are ideally suited for system configurations that have reliable, high-bandwidth LANs. The management server consists of the following components:

- Management Server—Use the management server to manage packages and connection groups.
- Publishing Server—Use the publishing server to deploy packages to computers that run the App-V client.
- Management Database—Use the management database to manage the package access and to publish the server’s synchronization with the management server.

## Management Console tasks

The most common tasks that you can perform with the App-V Management console are:

- [How to connect to the Management Console](appv-connect-to-the-management-console.md)
- [How to add or upgrade packages by using the Management Console](appv-add-or-upgrade-packages-with-the-management-console.md)
- [How to configure access to packages by using the Management Console](appv-configure-access-to-packages-with-the-management-console.md)
- [How to publish a package by using the Management Console](appv-publish-a-packages-with-the-management-console.md)
- [How to delete a package in the Management Console](appv-delete-a-package-with-the-management-console.md)
- [How to add or remove an administrator by using the Management Console](appv-add-or-remove-an-administrator-with-the-management-console.md)
- [How to register and unregister a publishing server by using the Management Console](appv-register-and-unregister-a-publishing-server-with-the-management-console.md)
- [How to create a custom configuration file by using the App-V Management Console](appv-create-a-custom-configuration-file-with-the-management-console.md)
- [How to transfer access and configurations to another version of a package by using the Management Console](appv-transfer-access-and-configurations-to-another-version-of-a-package-with-the-management-console.md)
- [How to customize virtual application extensions for a specific AD group by using the Management Console](appv-customize-virtual-application-extensions-with-the-management-console.md)
- [How to view and configure applications and default virtual application extensions by using the Management Console](appv-view-and-configure-applications-and-default-virtual-application-extensions-with-the-management-console.md)

The main elements of the App-V Management Console are:

|Management Console tab|Description|
|---|---|
|Packages tab|Use the **Packages** tab to add or upgrade packages.|
|Connection Groups tab|Use the **Connection Groups** tab to manage connection groups.|
|Servers tab|Use the **Servers** tab to register a new server.|
|Administrators tab|Use the **Administrators** tab to register, add, or remove administrators in your App-V environment.|

>[!IMPORTANT]
>JavaScript must be enabled on the browser that opens the Web Management Console.

## Have a suggestion for App-V?

Add or vote on suggestions on the [Application Virtualization feedback site](https://appv.uservoice.com/forums/280448-microsoft-application-virtualization).

## Other resources for this App-V deployment

- [Application Virtualization (App-V) overview](appv-for-windows.md)
- [Operations for App-V](appv-operations.md)