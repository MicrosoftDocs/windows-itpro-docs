---
title: How to Change Deployment Properties
description: How to Change Deployment Properties
author: dansimp
ms.assetid: 0a214a7a-cc83-4d04-89f9-5727153be918
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Change Deployment Properties


You can use the following procedures to change the **Deployment** tab information for an application you are sequencing, including the Application Virtualization server URL, the operating systems required by the virtualized applications, and the output options for the virtual application to be installed.

**To change the server URL**

1.  Select the streaming protocol from the drop-down list box.

2.  Enter the host name of the virtual application server or the server group's load balancer. You can use the actual host name or IP address.

3.  Specify the port number on which the virtual application server or load balancer will listen for an Application Virtualization Desktop Client request for the streamed application.

4.  Specify the relative path on the virtual application server where the software package is stored.

**To change the application operating systems requirements**

1.  To add the required operating system(s), select it in the **Available** list and click the arrow button pointing to the **Selected** operating systems list control.

2.  To remove an operating system, select it in the **Selected** list control, and click the arrow button pointing to the **Available** operating systems list control.

**To change the application output options**

1.  From the **Compression Algorithm** drop-down list, select the compression method to use when streaming the application.

2.  Select the **Enforce Security Descriptors** check box to ensure security descriptors of the packaged applications are enforced when deployed.

3.  Select **Generate Difference File** to generate a difference file for the application from the previous sequenced version.

4.  Select **Generate Microsoft Windows Installer (MSI) Package** to create an installer package.

## Related topics


[About the Deployment Tab](about-the-deployment-tab.md)

[Sequencer Console](sequencer-console.md)

 

 





