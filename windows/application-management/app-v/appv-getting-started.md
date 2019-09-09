---
title: Getting Started with App-V (Windows 10)
description: Getting Started with App-V for Windows 10
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/18/2018
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
---
# Getting started with App-V for Windows 10

>Applies to: Windows 10, version 1607

Microsoft Application Virtualization (App-V) for Windows 10 delivers Win32 applications to users as virtual applications. Virtual applications are installed on centrally managed servers and delivered to users as a service in real time and on an as-needed basis. Users launch virtual applications from familiar access points and interact with them as if they were installed locally.

With the release of Windows 10, version 1607, App-V is included with the [Windows 10 for Enterprise edition](https://www.microsoft.com/WindowsForBusiness/windows-for-enterprise). If you're new to Windows 10 and App-V, you’ll need to download, activate, and install server- and client-side components to start delivering virtual applications to users. To learn what you need to know before getting started with App-V, see the [Application Virtualization (App-V) overview](appv-for-windows.md).

If you’re already using App-V, performing an in-place upgrade to Windows 10 on user devices automatically installs the App-V client and migrates users’ App-V applications and settings. For more information about how to configure an existing App-V installation after upgrading user devices to Windows 10, see [Upgrading to App-V for Windows 10 from an existing installation](appv-upgrading-to-app-v-for-windows-10-from-an-existing-installation.md).

>[!IMPORTANT]
>You can upgrade your existing App-V installation to App-V for Windows from App-V versions 5.0 SP2 and higher only. If you are using an earlier version of App-V, you’ll need to upgrade your existing App-V installation to App-V 5.0 SP2 before upgrading to App-V for Windows.

To learn more about previous versions of App-V, see [MDOP information experience](https://docs.microsoft.com/microsoft-desktop-optimization-pack/index).

## Getting started with App-V for Windows 10 (new installations)

To start using App-V to deliver virtual applications to users, you’ll need to download, enable, and install server- and client-side components. The following table describes the App-V for Windows 10 components, what they do, and where to find them.

<!--App-V Remote Desktop Services (RDS) client once had its own row in the table below, and could have its own row again. As of 7/29/2016, it's in the same row as App-V client --> 

| Component  | What it does     | Where to find it     |
|------------|--|------|
| App-V server components | App-V offers five server components that work together to allow you to host and publish virtual applications, generate usage reports, and manage your App-V environment. For more details, see [Deploying the App-V Server](appv-deploying-the-appv-server.md).<br><br>If you're already using App-V 5.x, you don't need to redeploy the App-V server components, as they haven't changed since App-V 5.0's release. | The App-V server components are included in the Microsoft Desktop Optimization Pack (MDOP) 2015 ISO package that can be downloaded from the following locations:<br><br> If you have a Microsoft Developer Network (MSDN) subscription, use the [MSDN (Microsoft Developer Network) subscriptions site](https://msdn.microsoft.com/subscriptions/downloads/default.aspx#FileId=65215) to download the MDOP ISO package.<br><br> If you're using [Windows 10 for Enterprise or Education](https://www.microsoft.com/WindowsForBusiness/windows-product-home), download it from the [Volume Licensing Service Center](https://www.microsoft.com/licensing/default.aspx).<br><br>See [Deploying the App-V Server](appv-deploying-the-appv-server.md) for more information about installing and using the server components.|
| App-V client and App-V Remote Desktop Services (RDS) client | The App-V client is the component that runs virtualized applications on user devices, allowing users to interact with icons and file names to start virtualized applications. | The App-V client is automatically installed with Windows 10, version 1607. <br><br>To learn how to enable the client, see [Enable the App-V desktop client](appv-enable-the-app-v-desktop-client.md).           |
| App-V sequencer      | Use the App-V sequencer to convert Win32 applications into virtual packages for deployment to user devices. Devices must run the App-V client to allow users to interact with virtual applications.    | Installed with the [Windows Assessment and Deployment kit (ADK) for Windows 10, version 1607](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit).  |

For more information about these components, see [High Level Architecture for App-V](appv-high-level-architecture.md).

If you're new to App-V, it's a good idea to read the documentation thoroughly. Before deploying App-V in a production environment, you can ensure installation goes smoothly by validating your deployment plan in a test network environment. You might also consider taking a class about relevant technologies. To get started, see the [Microsoft Training Overview](https://www.microsoft.com/learning/default.aspx).

## Getting started with App-V

[What's new in App-V](appv-about-appv.md) provides a high-level overview of App-V and how it can be used in your organization.

[Evaluating App-V](appv-evaluating-appv.md) provides information about how you can best evaluate App-V for use in your organization.

[High Level Architecture for App-V](appv-high-level-architecture.md) provides a description of the App-V features and how they work together.

## Other resources for this product

* [Application Virtualization (App-V) overview](appv-for-windows.md)
* [Planning for App-V](appv-planning-for-appv.md)
* [Deploying App-V](appv-deploying-appv.md)
* [Operations for App-V](appv-operations.md)
* [Troubleshooting App-V](appv-troubleshooting.md)
* [Technical reference for App-V](appv-technical-reference.md)
