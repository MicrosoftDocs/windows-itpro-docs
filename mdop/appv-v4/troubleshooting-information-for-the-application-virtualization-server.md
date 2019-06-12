---
title: Troubleshooting Information for the Application Virtualization Server
description: Troubleshooting Information for the Application Virtualization Server
author: manikadhiman
ms.assetid: e9d43d9b-84f2-4d1b-bb90-a13740151e0c
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Troubleshooting Information for the Application Virtualization Server


This topic includes information that you can use to troubleshoot various issues on the Application Virtualization (App-V) Servers.

## Warning Message 25017 in Setup Log After Installing the Server


You might find the following message in the server setup log after installation.

*Warning 25017. The installation Program could not create the Active Directory marker object for the server. The account used to install did not have the sufficient rights to write to Active Directory or Active Directory was unavailable.*

The App-V Management or Streaming Server installer creates a Service Connection Point entry under the Computer object in Active Directory Domain Services (AD DS) that corresponds to the computer on which the server is installed if the account used to run the installer has the appropriate rights. Failure to create this entry will not cause the install to fail and this should not otherwise affect the functioning of the product. The likely cause of any failure is that the user account used to run the install did not have sufficient rights to write to AD DS. Although registering the App-V server in AD DS is optional, one benefit of doing so enables centralized management tools to locate the App-V server for inventory and management purposes.

## Related topics


[Application Virtualization Server](application-virtualization-server.md)

 

 





