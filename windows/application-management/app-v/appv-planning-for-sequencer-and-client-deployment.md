---
title: Planning for the App-V Sequencer and Client Deployment (Windows 10)
description: Planning for the App-V Sequencer and Client Deployment
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/18/2018
ms.topic: article
---
# Planning for the App-V Sequencer and Client Deployment

>Applies to: Windows 10, version 1607

Before you can use App-V, you must install the App-V Sequencer and enable the App-V client. You can also the App-V shared content store, although it isn't required. The following sections will tell you how to set these up.

## Planning for App-V Sequencer deployment

App-V uses a process called sequencing to create virtualized applications and application packages. Sequencing requires the use of a computer that runs the App-V Sequencer.

> [!NOTE]
> For information about the new functionality of App-V sequencer, see [What's new in App-V](appv-about-appv.md).

The computer running the App-V sequencer must meet the minimum system requirements. For a list of these requirements, see [App-V supported configurations](appv-supported-configurations.md).

Ideally, you should install the sequencer on a computer running as a virtual machine. This lets you revert the computer that's running the sequencer to a “clean” state before sequencing another application. When installing the sequencer using a virtual machine, you should do the following things:

1. Install all associated sequencer prerequisites.
2. Install the sequencer.
3. Take a “snapshot” of the environment.

>[!IMPORTANT]
>Your corporate security team should review and approve the sequencing process plan before implementing it. For security reasons, it's a good idea to keep sequencer operations in a lab separate from the production environment. The sequencing computers must be capable of connecting to the corporate network to copy finished packages to the production servers. However, because the sequencing computers are typically operated without antivirus protection, they shouldn't remain on the corporate network unprotected. You can protect your sequencing computers by operating them on an isolated network, behind a firewall, or by using virtual machines on an isolated virtual network. Make sure your solution follows your company's corporate security policies.

## Planning for App-V client deployment

In Windows 10, version 1607, the App-V client is included with the operating system. For more information, see [Enable the App-V desktop client](appv-enable-the-app-v-desktop-client.md).

## Planning for the App-V Shared Content Store (SCS)

The App-V Shared Content Store mode allows computers running the App-V client to run virtualized applications without saving any package contents to the App-V client computer. Virtual applications are streamed to target computers only when requested by the client.

The following list displays some of the benefits of using App-V SCS:

* Reduced app-to-app and multi-user application conflicts reduces the need for regression testing
* Reduced deployment risk accelerates application deployment
* Simplified profile management





## Other App-V deployment resources

* [Planning to deploy App-V](appv-planning-to-deploy-appv.md)

## Related topics

* [How to install the sequencer](appv-install-the-sequencer.md)
* [Enable the App-V desktop client](appv-enable-the-app-v-desktop-client.md)
* [Deploying the App-V Sequencer and configuring the client](appv-deploying-the-appv-sequencer-and-client.md)
