---
ms.localizationpriority: medium
ms.mktglfcycl: plan
description: Use the \[ConnectionSettings\] .INS file setting to specify the network connection settings needed to install your custom package.
author: lomayor
ms.prod: ie11
ms.assetid: 41410300-6ddd-43b2-b9e2-0108a2221355
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: lomayor
title: Use the ConnectionSettings .INS file to review the network connections for install (Internet Explorer Administration Kit 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Use the ConnectionSettings .INS file to review the network connections for install
Info about the network connection settings used to install your custom package. This section creates a common configuration on all of your employee’s computers.

|Name       |Value                      |Description  |
|-----------|---------------------------|-------------|
|ConnectName0 |`<connection_name>` |Name for the connection. |
|ConnectName1 |`<connection_name>` |Secondary name for the connection. |
|DeleteConnectionSettings |<ul><li>**0.** Don’t remove the connection settings during installation.</li><li>**1.** Remove the connection settings during installation.<p>**Note**<br>This only appears for the **Internal** version of the IEAK 11.</li></ul> |Determines whether to remove the existing connection settings during installation of your custom package. |
|Option |<ul><li>**0.** Don’t let employees import connection settings.</li><li>**1.** Let employees import connection settings.</li></ul> |Determines whether an employee can import connection settings into the Internet Explorer Customization Wizard. |

