---
title: Modify the AGPM Service Account
description: Modify the AGPM Service Account
author: mjcaparas
ms.assetid: 0d8d8c7b-f299-4fee-8414-406492156942
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Modify the AGPM Service Account


The AGPM Service is a Windows service that acts as a security proxy, managing client access to Group Policy objects (GPOs) in the archive and production environment. If this service is stopped or disabled, AGPM clients cannot perform operations through the server.

The archive path and AGPM Service Account are configured during the installation of AGPM Server and can be changed afterward through **Add or Remove Programs** on the AGPM Server.

**Caution**  
Do not modify settings for the AGPM Service through **Administrative Tools** and **Services** in the operating system. Doing so can prevent the AGPM Service from starting.

 

A user account that is a member of the Domain Admins group and has access to the AGPM Server (the computer on which Microsoft Advanced Group Policy Management - Server is installed) is required to complete this procedure.

**Important**  
The AGPM Service Account must have full access to the GPOs that it will manage and will be granted **Log On As A Service** permission. If you will be managing GPOs on a single domain, you can make the Local System account for the primary domain controller the AGPM Service Account.

If you will be managing GPOs on multiple domains or if a member server will be the AGPM Server, you should configure a different account as the AGPM Service Account because the Local System account for one domain controller cannot access GPOs on other domains.

 

**To modify the AGPM Service Account**

1.  On the computer on which Microsoft Advanced Group Policy Management - Server is installed, click **Start**, click **Control Panel**, click **Add or Remove Programs**.

2.  Click **Microsoft Advanced Group Policy Management - Server**, and then click **Change**.

3.  Click **Next**, and then click **Modify**.

4.  Follow the instructions on screen to configure settings for the AGPM Service:

    1.  For the archive path, confirm or change the location for the archive relative to the AGPM Server. The archive path can point to a folder on the AGPM Server or elsewhere, but the location should have sufficient space to store all GPOs and history data managed by this AGPM Server.

    2.  Enter new credentials for the AGPM Service Account.

    3.  For the archive owner, enter the credentials of an AGPM Administrator (Full Control).

5.  Click **Change**, and when the installation is complete click **Finish**.

### Additional references

-   [Managing the AGPM Service](managing-the-agpm-service.md)

 

 





