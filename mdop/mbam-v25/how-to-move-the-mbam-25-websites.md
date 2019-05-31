---
title: How to Move the MBAM 2.5 Websites
description: How to Move the MBAM 2.5 Websites
author: dansimp
ms.assetid: 71af9a54-c27b-408f-9d75-37c0d02e730e
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Move the MBAM 2.5 Websites


Use these procedures to move the following MBAM websites from one computer to another, that is, to move the following features from Server A to Server B:

-   Administration and Monitoring Website

-   Self-Service Portal

**Important**  
During the configuration of both websites, you must provide the same connection string, Reports URL, group accounts, and web service application pool domain account as the ones that you are currently using. If you don’t use the same values, you cannot access some of the servers. To get the current values, use the **Get-MbamWebApplication** Windows PowerShell cmdlet.

 

**To move the Administration and Monitoring Website to another server**

1.  On Server B, install the MBAM 2.5 Server software. For instructions, see [Installing the MBAM 2.5 Server Software](installing-the-mbam-25-server-software.md).

2.  On Server B, start the MBAM Server Configuration wizard, click **Add New Features**, and then select only the **Administration and Monitoring Website** feature.

    Alternatively, you can use the **Enable-MbamWebApplication** Windows PowerShell cmdlet to configure the Administration and Monitoring Website.

    For instructions on how to configure the Administration and Monitoring Website, see [How to Configure the MBAM 2.5 Web Applications](how-to-configure-the-mbam-25-web-applications.md).

**To move the Self-Service Portal to another server**

1.  On Server B, install the MBAM 2.5 Server software. For instructions, see [Installing the MBAM 2.5 Server Software](installing-the-mbam-25-server-software.md).

2.  On Server B, start the MBAM Server Configuration wizard, click **Add New Features**, and then select only the **Self-Service Portal** feature.

    Alternatively, you can use the **Enable-MbamWebApplication** Windows PowerShell cmdlet to configure the Self-Service Portal.

    For instructions on how to configure the Administration and Monitoring Website, see [How to Configure the MBAM 2.5 Web Applications](how-to-configure-the-mbam-25-web-applications.md).

3.  If the client computers in your organization do not have access to the Microsoft Content Delivery Network, you also have to move the JavaScript files. See [How to Configure the Self-Service Portal When Client Computers Cannot Access the Microsoft Content Delivery Network](how-to-configure-the-self-service-portal-when-client-computers-cannot-access-the-microsoft-content-delivery-network.md) for more information.

4.  Customize the Self-Service Portal for your organization. Use the instructions in [Customizing the Self-Service Portal for Your Organization](customizing-the-self-service-portal-for-your-organization.md) to review your current customizations and to configure custom settings on the Self-Server Portal on Server B.



## Related topics


[How to Configure the MBAM 2.5 Web Applications](how-to-configure-the-mbam-25-web-applications.md)

[Configuring MBAM 2.5 Server Features by Using Windows PowerShell](configuring-mbam-25-server-features-by-using-windows-powershell.md)

[Moving MBAM 2.5 Features to Another Server](moving-mbam-25-features-to-another-server.md)

 

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 





