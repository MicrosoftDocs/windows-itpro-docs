---
title: Getting Started with App-V (Windows 10)
description: Getting Started with App-V for Windows 10
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# Getting Started with App-V for Windows 10

Applies to: Windows 10, version 1607

Microsoft Application Virtualization (App-V) for Windows 10 enables organizations to deliver Win32 applications to users as virtual applications. Virtual applications are installed on centrally managed servers and delivered to users as a service – in real time and on as as-needed basis. Users launch virtual applications from familiar access points and interact with them as if they were installed locally.

With the release of Windows 10, version 1607, App-V is included with the [Windows 10 for Enterprise edition](https://www.microsoft.com/en-us/WindowsForBusiness/windows-for-enterprise). If you are new to Windows 10 and App-V, you’ll need to download, activate, and install server- and client-side components to start delivering virtual applications to users. For information about what you need to know before getting started with App-V, see the [Application Virtualization (App-V) overview](appv-for-windows.md).

If you’re already using App-V, performing an in-place upgrade to Windows 10 on user devices automatically installs the App-V client and migrates users’ App-V applications and settings. For more information about how to configure an existing App-V installation after upgrading user devices to Windows 10, see [Upgrading to App-V for Windows 10 from an existing installation](appv-upgrading-to-app-v-for-windows-10-from-an-existing-installation.md).

>**Important**
You can upgrade your existing App-V installation to App-V for Windows from App-V versions 5.0 SP2 and higher only. If you are using an earlier version of App-V, you’ll need to upgrade from that version to App-V 5.0 SP2 before you upgrade.

For information about previous versions of App-V, see [MDOP Information Experience](https://technet.microsoft.com/itpro/mdop/index).

## Getting started with App-V for Windows 10 (new installations)

To start using App-V to deliver virtual applications to users, you’ll need to download, enable, and install server- and client-side components. The following table provides information about the App-V for Windows 10 components and where to find them.

<!--App-V Remote Desktop Services (RDS) client once had its own row in the table below, and could have its own row again. As of 7/29/2016, it's in the same row as App-V client --> 

| Component  | What it does     | Where to find it     |
|------------|--|------|
| App-V server components         | App-V offers five server components that work together to allow you to host and publish virtual applications, generate usage reports, and manage your App-V environment. For information about the server components, see [Deploying the App-V Server](appv-deploying-the-appv-server.md).<br><br>**Note** If you're already using App-V 5.x, you don't need to re-deploy the App-V server components as they haven't changed since App-V 5.0 was released. | The App-V server components are included in the Microsoft Desktop Optimization Pack (MDOP) 2015 ISO package, which can be downloaded from:<br><br> - The [MSDN (Microsoft Developer Network) subscriptions site](https://msdn.microsoft.com/en-us/subscriptions/downloads/default.aspx#FileId=65215). You must have a MSDN subscription to download the MDOP ISO package from the MSDN subscriptions site.<br><br> -  The [Volume Licensing Service Center](https://www.microsoft.com/en-us/licensing/default.aspx) if you're using [Windows 10 for Enterprise or Education](https://www.microsoft.com/en-us/WindowsForBusiness/windows-product-home).<br><br>See [Deploying the App-V Server](appv-deploying-the-appv-server.md) for more information about installing and using the server components. 
| App-V client and App-V Remote Desktop Services (RDS) client       | The App-V client is the component that runs virtualized applications on user devices. The client enables users to interact with icons and file names to start virtualized applications. | The App-V client is automatically installed with Windows 10, version 1607. <br><br>For information about enabling the client, see [Enable the App-V desktop client](appv-enable-the-app-v-desktop-client.md).           |
| App-V sequencer      | Use the App-V sequencer to convert Win32 applications into virtual packages for deployment to user devices. Devices must be running the App-V client to allow users to interact with virtual applications.    | Installed with the [Windows Assessment and Deployment kit (ADK) for Windows 10, version 1607](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit).  |

For more information about these components, see [High Level Architecture for App-V](appv-high-level-architecture.md).

If you are new to this product, we recommend that you read the documentation thoroughly. Before you deploy it to a production environment, we also recommend that you validate your deployment plan in a test network environment. You might also consider taking a class about relevant technologies. For information about Microsoft training opportunities, see the [Microsoft Training Overview](https://www.microsoft.com/en-us/learning/default.aspx).

## Getting started with App-V


-   [What's new in App-V](appv-about-appv.md)

    Provides a high-level overview of App-V and how it can be used in your organization.

-   [Evaluating App-V](appv-evaluating-appv.md)

    Provides information about how you can best evaluate App-V for use in your organization.

-   [High Level Architecture for App-V](appv-high-level-architecture.md)

    Provides a description of the App-V features and how they work together.

## <a href="" id="other-resources-for-this-product-"></a>Other resources for this product


-   [Application Virtualization (App-V) overview](appv-for-windows.md)

-   [Planning for App-V](appv-planning-for-appv.md)

-   [Deploying App-V](appv-deploying-appv.md)

-   [Operations for App-V](appv-operations.md)

-   [Troubleshooting App-V](appv-troubleshooting.md)

-   [Technical Reference for App-V](appv-technical-reference.md)

## Have a suggestion for App-V?

Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

