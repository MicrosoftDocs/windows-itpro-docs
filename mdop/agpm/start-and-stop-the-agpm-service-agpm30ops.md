---
title: Start and Stop the AGPM Service
description: Start and Stop the AGPM Service
author: dansimp
ms.assetid: b9d26920-c439-4992-9a78-73e4fba8309d
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Start and Stop the AGPM Service


The AGPM Service is a Windows service that acts as a security proxy, managing client access to Group Policy Objects (GPOs) in the archive and production environment.

**Important**  
Stopping or disabling the AGPM Service will prevent AGPM Clients from performing any operations (such as listing or editing GPOs) through the server.

 

A user account with access to the AGPM Server (the computer on which the AGPM Service is installed) is required to complete this procedure.

**To start or stop the AGPM Service**

1.  On the computer on which Microsoft Advanced Group Policy Management - Server (and therefore the AGPM Service) is installed, click **Start**, click **Control Panel**, click **Administrative Tools**, and then click **Services**.

2.  In the list of services, right-click **AGPM Service** and select **Start**, **Restart**, or **Stop**.

    **Caution**  
    Do not modify settings for the AGPM Service through **Administrative Tools** and **Services** in the operating system. Doing so can prevent the AGPM Service from starting.

     

### Additional references

-   [Managing the AGPM Service](managing-the-agpm-service-agpm30ops.md)

 

 





