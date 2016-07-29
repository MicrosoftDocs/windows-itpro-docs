---
title: Getting Started with App-V (Windows 10)
description: Getting Started with App-V
author: jamiejdt
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# Getting Started with App-V


Microsoft Application Virtualization (App-V) enables organizations to deliver Win32 applications to users as virtual applications. Virtual applications are installed on centrally managed servers and delivered to users as a service – in real time and on as as-needed basis. Users launch virtual applications from familiar access points, including the Windows Store, and interact with them as if they were installed locally.

With the release of Windows 10, version 1607, App-V is included with the [Windows 10 Enterprise edition](https://www.microsoft.com/en-us/WindowsForBusiness/windows-for-enterprise) and is available with Software Assurance. If you are new to Windows 10 and App-V, you’ll need to download, activate, and install server- and client-side components to start delivering virtual applications to users. For information about what you need to know before getting started with App-V, see the [App-V Administrator's Guide](appv-microsoft-application-virtualization-administrators-guide.md).

If you’re already using App-V, performing an in-place upgrade to Windows 10 on user devices automatically installs the App-V client and migrates users’ App-V applications and settings. For more information about how to configure an existing App-V installation after upgrading user devices to Windows 10, see [Upgrading to App-V for Windows 10 from an existing installation](appv-upgrading-from-an-existing-installation.md).

Important: You can migrate your existing App-V installation to Windows 10 from App-V versions 5.0 SP2 and higher only. If you are using an earlier version of App-V, you’ll need to upgrade from that version to App-V 5.0 SP2 before you upgrade to Windows 10.

For information about previous versions of App-V, see [MDOP Information Experience](https://technet.microsoft.com/itpro/mdop/index).

## Getting started with App-V for Windows 10 (new installations)

To start using App-V to deliver virtual applications to users, you’ll need to download, enable, and install server- and client-side components. The following table provides information about the App-V for Windows 10 components and where to find them.

| Component  | What it does     | Where to find it     |
|------------|--|------|
| App-V server components         | App-V offers five server components that work together to allow you to host and publish virtual applications, generate usage reports, and manage your App-V environment. For information about the server components, see [Deploying the App-V Server](#_Deploying_the_App-V). | The App-V server components are included in the Microsoft Desktop Optimization Pack (MDOP) 2015 ISO package, which can be downloaded from the [MSDN (Microsoft Developer Network) subscriptions site](https://msdn.microsoft.com/en-us/subscriptions/downloads/default.aspx#FileId=65215). <br>You must have a MSDN subscription to download the MDOP ISO package.<br>See [Deploying the App-V Server](appv-deploying-the-appv-server.md) for more information about installing and using the server components. |
| App-V client         | The App-V client is the component that runs virtualized applications on user devices. The client enables users to interact with icons and file names to start virtualized applications. | The App-V client is automatically installed with Windows 10. <br>For information about enabling the client, see [Enable the App-V desktop client](enable-the-app-v-desktop-client.md).           |
| App-V Remote Desktop Services (RDS) Client | .       | .        |
| App-V Sequencer      | Use the App-V Sequencer to convert Win32 applications into virtual packages for deployment to user devices. Devices must be running the App-V client to allow users to interact with virtual applications.    | Installed with the [Windows 10 Assessment and Deployment Kit](https://developer.microsoft.com/en-us/windows/hardware/windows-assessment-deployment-kit) (Windows ADK).  |

<!-- The link above to enable-the-app-v-desktop-client.md does not correspond with a topic-file yet. -->

For more information about these elements, see [High Level Architecture for App-V](appv-high-level-architecture.md).

If you are new to this product, we recommend that you read the documentation thoroughly. Before you deploy it to a production environment, we also recommend that you validate your deployment plan in a test network environment. You might also consider taking a class about relevant technologies. For information about Microsoft training opportunities, see the [Microsoft Training Overview](https://www.microsoft.com/en-us/learning/default.aspx).

## Getting started with App-V


-   [About App-V](appv-about-appv.md)

    Provides a high-level overview of App-V and how it can be used in your organization.

-   [Evaluating App-V](appv-evaluating-appv.md)

    Provides information about how you can best evaluate App-V for use in your organization.

-   [High Level Architecture for App-V](appv-high-level-architecture.md)

    Provides a description of the App-V features and how they work together.

-   [Accessibility for App-V](appv-accessibility.md)

    Provides information about features and services that make this product and its corresponding documentation more accessible for people with disabilities.

## <a href="" id="other-resources-for-this-product-"></a>Other resources for this product


-   [Microsoft Application Virtualization Administrator's Guide](appv-microsoft-application-virtualization-administrators-guide.md)

-   [Planning for App-V](appv-planning-for-appv.md)

-   [Deploying App-V](appv-deploying-appv.md)

-   [Operations for App-V](appv-operations.md)

-   [Troubleshooting App-V](appv-troubleshooting.md)

-   [Technical Reference for App-V](appv-technical-reference.md)

## Have a suggestion for App-V?

Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). For App-V issues, use the [App-V TechNet Forum](http://social.technet.microsoft.com/Forums/en-US/mdopappv/threads).

