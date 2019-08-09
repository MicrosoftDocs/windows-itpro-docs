---
title: Planning for Application Virtualization Client Deployment
description: Planning for Application Virtualization Client Deployment
author: eavena
ms.assetid: a352f80f-f0f9-4fbf-ac10-24c510b2d6be
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Planning for Application Virtualization Client Deployment


After you have decided how you will publish and deploy virtual application packages to your end user computers, you should plan the deployment of the Application Virtualization Client software.

The Application Virtualization Client is the component that actually runs the virtual applications. The Application Virtualization Client enables users to interact with icons and to double-click file types to start a virtual application. It also handles streaming of the application content from a streaming server and caches it before starting the application. The application content is structured such that all the content needed to start the application and handle initial user interaction is streamed to the end user computer first. There are two different types of Application Virtualization Client software: the Application Virtualization Client for Remote Desktop Services (formerly Terminal Services), which is used on Remote Desktop Session Host (RD Session Host) server systems, and the Application Virtualization Desktop Client, which is used for all other computers.

The Application Virtualization Client should be configured at installation time, either in the Application Virtualization Management Console or via the installer command line, with a number of important settings, including the following:

-   Locations of the icons for all the applications.

-   The location of the OSD file that contains the package definition information.

-   The application content source.

-   The communications protocol to be used when retrieving the preceding items.

-   The cache size and cache size management method to be used.

To expedite the deployment of the Application Virtualization Client software when using an electronic software distribution (ESD) solution, the preceding settings must be defined carefully in advance. This is especially important when you have computers in different offices, where their clients would need to be configured to use different source locations.

**Note**  
-   The icon location and OSD file values are an important factor to consider when choosing your publishing method, whether using Windows Installer or SFTMIME. The setting for the application content source is defined by your choice of streaming method.

-   To ensure that the cache has sufficient space allocated for all packages that might be deployed, use the **Use free disk space threshold** setting when you configure the client so that the cache can grow as needed. Alternatively, determine in advance how much disk space will be needed for the App-V cache, and at installation time, set the cache size accordingly. For more information about the cache space management feature, see **How to Use the Cache Space Management Feature** in the Microsoft Application Virtualization (App-V) Operations Guide.

-   During both the publishing and HTTP(S) streaming operations,App-V 4.5 SP1 clients use the proxy server settings that are configured in Internet Explorer on the user’s computer.

For more information about configuring the client installation parameters, see [Application Virtualization Client Installer Command-Line Parameters](application-virtualization-client-installer-command-line-parameters.md).

 

Finally, you need to determine how to deploy the Application Virtualization Desktop Client software for the desktop clients. Although it is possible to deploy the Application Virtualization Desktop Client manually on each computer, most organizations would need to do this through some automated process. A medium or large organization might have an ESD system in operation, and that would be an ideal way to deploy the client. If no ESD system exists, you can use your standard method of installing software in your organization. Choices include Group Policy or various scripting techniques. Depending on the number and size of the offices you have, this deployment process can be complex, and it is essential that you take a structured approach to ensure all computers get a client installed with the correct configuration.

## Related topics


[Planning for Application Virtualization System Deployment](planning-for-application-virtualization-system-deployment.md)

[How to Install the Client by Using the Command Line](how-to-install-the-client-by-using-the-command-line-new.md)

[How to Publish a Virtual Application on the Client](how-to-publish-a-virtual-application-on-the-client.md)

[How to Upgrade the Application Virtualization Client](how-to-upgrade-the-application-virtualization-client.md)

[How to Uninstall the App-V Client](how-to-uninstall-the-app-v-client.md)

 

 





