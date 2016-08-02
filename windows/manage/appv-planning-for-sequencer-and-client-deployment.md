---
title: Planning for the App-V Sequencer and Client Deployment (Windows 10)
description: Planning for the App-V Sequencer and Client Deployment
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---

# Planning for the App-V Sequencer and Client Deployment


Before you can use App-V, you must install the App-V Sequencer, enable the App-V client, and optionally the App-V shared content store. The following sections address planning for these installations.

## Planning for App-V Sequencer deployment


App-V uses a process called sequencing to create virtualized applications and application packages. Sequencing requires the use of a computer that runs the App-V Sequencer.

> [!NOTE]  
> For information about the new functionality of App-V sequencer, see the **Sequencer Improvements** section of [About App-V](appv-about-appv.md).


The computer that runs the App-V sequencer must meet the minimum system requirements. For a list of these requirements, see [App-V Supported Configurations](appv-supported-configurations.md).

Ideally, you should install the sequencer on a computer running as a virtual machine. This enables you to more easily revert the computer running the sequencer to a “clean” state before sequencing another application. When you install the sequencer using a virtual machine, you should perform the following steps:

1.  Install all associated sequencer prerequisites.

2.  Install the sequencer.

3.  Take a “snapshot” of the environment.

> [!IMPORTANT]  
>You should have your corporate security team review and approve the sequencing process plan. For security reasons, you should keep the sequencer operations in a lab that is separate from the production environment. The separation arrangement can be as simple or as comprehensive as necessary, based on your business requirements. The sequencing computers must be able to connect to the corporate network to copy finished packages to the production servers. However, because the sequencing computers are typically operated without antivirus protection, they must not be on the corporate network unprotected. For example, you might be able to operate behind a firewall or on an isolated network segment. You might also be able to use virtual machines that are configured to share an isolated virtual network. Follow your corporate security policies to safely address these concerns.


## Planning for App-V client deployment

In Windows 10, version 1607, the App-V client is included with the operating system. For more info, see [Enable the App-V desktop client](appv-enable-the-app-v-desktop-client.md).

For a list of the client minimum requirements see [App-V Prerequisites](appv-prerequisites.md).


## Planning for the App-V Shared Content Store (SCS)

The App-V Shared Content Store mode allows the computer running the App-V client to run virtualized applications and none of the package contents is saved on the computer running the App-V client. Virtual applications are streamed to target computers only when requested by the client.

The following list displays some of the benefits of using the App-V Shared Content Store:

-   Reduced app-to-app and multi-user application conflicts and hence a reduced need for regression testing

-   Accelerated application deployment by reduction of deployment risk

-   Simplified profile management

## Have a suggestion for App-V?

Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Other resources for the App-V deployment

- [Planning to Deploy App-V](appv-planning-to-deploy-appv.md)

## Related topics

- [How to Install the Sequencer](appv-install-the-sequencer.md)

- [Enable the App-V desktop client](appv-enable-the-app-v-desktop-client.md)

- [How to Install the App-V Client for Shared Content Store Mode](appv-install-the-appv-client-for-shared-content-store-mode.md)
