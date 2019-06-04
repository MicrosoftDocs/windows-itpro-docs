---
title: Modify the AGPM Service
description: Modify the AGPM Service
author: mjcaparas
ms.assetid: 3485f85f-59d1-48dc-8748-36826214dcb1
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Modify the AGPM Service


The AGPM Service is a Windows service that acts as a security proxy, managing client access to Group Policy Objects (GPOs) in the archive and production environment. If this service is stopped or disabled, AGPM Clients cannot perform operations through the server. You can modify the archive path, the AGPM Service Account, and the port on which the AGPM Service listens.

**Caution**  
Do not modify settings for the AGPM Service through **Administrative Tools** and **Services** in the operating system. Doing so can prevent the AGPM Service from starting.

 

A user account that is a member of the Domain Admins group and has access to the AGPM Server (the computer on which Microsoft Advanced Group Policy Management - Server is installed) is required to complete this procedure. Additionally, you must provide credentials for the AGPM Service Account to complete this procedure.

**To modify the AGPM Service**

1.  On the computer on which Microsoft Advanced Group Policy Management - Server is installed:

    -   For Windows Server 2008, click **Start**, **Control Panel**, and **Programs and Features**.

    -   For Windows Vista, click **Start**, **Control Panel**, **Programs**, and **Programs and Features**.

2.  Right-click **Microsoft Advanced Group Policy Management - Server**, and then click **Change**.

3.  Click **Next**, and then click **Modify**.

4.  Follow the instructions to configure the AGPM Service:

    1.  In the **Archive Path** dialog box, enter a new location for the archive relative to the AGPM Server, or confirm the current archive path, and then click **Next**.

        **Important**  
        The archive path can point to a folder on the AGPM Server or elsewhere, but the location should have sufficient space to store all GPOs and history data managed by this AGPM Server.

         

    2.  In the **AGPM Service Account** dialog box, enter credentials for a service account under which the AGPM Service will run, and click **Next**.

        **Important**  
        Modifying the installation clears the credentials for the AGPM Service Account. You must re-enter credentials, but they are not required to match the credentials used during the original installation.

        The AGPM Service Account must have full access to the GPOs that it will manage and will be granted **Log On As A Service** permission. If you will be managing GPOs on a single domain, you can make the Local System account for the primary domain controller the AGPM Service Account.

        If you will be managing GPOs on multiple domains or if a member server will be the AGPM Server, you should configure a different account as the AGPM Service Account because the Local System account for one domain controller cannot access GPOs on other domains.

         

    3.  In the **Archive Owner** dialog box, enter the user name of an AGPM Administrator (Full Control) or group of AGPM Administrators, and click **Next**.

        **Note**  
        Modifying the installation clears the credentials for the Archive Owner. You must re-enter credentials, but they are not required to match the credentials used during the original installation.

         

    4.  In the **Port Configuration** dialog box, type a new port on which the AGPM Service should listen or confirm the port currently selected, and click **Next**.

        **Note**  
        By default, the AGPM Service listens on port 4600.

        If you manually configure port exceptions or have rules configuring port exceptions, you can clear the **Add port exception to firewall** check box.

         

5.  Click **Change**, and when the installation is complete click **Finish**.

6.  If you have changed the port on which the AGPM Service listens, modify the port in the AGPM Server connection for each Group Policy administrator. (For more information, see [Configure AGPM Server Connections](configure-agpm-server-connections-agpm30ops.md).)

7.  Repeat for each AGPM Server to which the configuration changes should be applied.

### Additional references

-   [Managing the AGPM Service](managing-the-agpm-service-agpm30ops.md)

 

 





