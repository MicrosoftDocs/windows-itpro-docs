---
title: Stand-Alone Delivery Scenario Overview
description: Stand-Alone Delivery Scenario Overview
author: v-madhi
ms.assetid: b109f309-f3c1-43af-996f-2a9b138dd171
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Stand-Alone Delivery Scenario Overview


The stand-alone delivery scenario is an ideal application virtualization solution for environments where either low bandwidth connectivity or no connectivity limits the ability of the Application Virtualization Desktop Client to stream applications from centralized servers. In these environments, users often work remotely and device owners install applications by using Windows Installer files.

You can use the Application Virtualization Sequencer to create sequenced applications that include Windows Installer files. These packages include the virtualized applications, publication information, and the necessary installer routines for installing the packages on the client systems. The installer adds the virtual application package to the Microsoft Application Virtualization Desktop Client. The publication information is configured to load applications from a local location rather than stream them across a WAN. Users can temporarily connect to a network to retrieve the Windows Installer files or can run them from a DVD.

The stand-alone delivery scenario provides users the following benefits:

-   Simple deployment operation.

-   Network and servers not needed at runtime.

-   Applications pre-cached and available to all users.

The stand-alone delivery scenario has the following limitations:

-   Built-in, automated reporting is unavailable; reports must be generated with external reporting tools.

-   Applications must be delivered to the client manually like the original Windows Installer files.

## Related topics


[How to Manually Install the Application Virtualization Client](how-to-manually-install-the-application-virtualization-client.md)

[How to Publish a Virtual Application on the Client](how-to-publish-a-virtual-application-on-the-client.md)

 

 





