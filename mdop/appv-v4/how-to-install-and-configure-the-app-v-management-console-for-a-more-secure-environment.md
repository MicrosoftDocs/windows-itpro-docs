---
title: How to Install and Configure the App-V Management Console for a More Secure Environment
description: How to Install and Configure the App-V Management Console for a More Secure Environment
author: dansimp
ms.assetid: 9d89ef09-cdbf-48fc-99da-b24fc987ef8f
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Install and Configure the App-V Management Console for a More Secure Environment


The default installation of the App-V Management Console includes support for secure communications. Each Management Console is configured on a per-connection basis when the console is started for the first time or when connecting to an additional App-V Web Management Service. The default configuration uses SSL over TCP port 443. You can change the port number if the port number was modified on the server. You can use the following procedure to connect to an App-V Web Management Service by using a secure connection.

**How to Connect to an App-V Management Service by Using an SSL Connection**

1.  Start the Application Virtualization Management Console.

2.  Click **Configure Connection** in the actions pane of the console.

3.  Type the **Web Service Host Name**, and ensure that **Use Secure Connection** is selected.

    **Important**  
    The name provided in the Web Service Host Name must match the common name on the certificate, or the connection will fail.

     

4.  Select the appropriate login credentials, and click **OK**.

## Related topics


[Configuring Certificates to Support the App-V Web Management Service](configuring-certificates-to-support-the-app-v-web-management-service.md)

 

 





