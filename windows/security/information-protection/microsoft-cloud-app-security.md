---
title: Microsoft Cloud App Security
description: Information protection in MIP and Windows
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
ms.date: 04/19/2017
---

# Microsoft Cloud App Security (MCAS)
 
## Overview

MCAS is Microsoft’s Cloud Access Security Broker (CASB), it gives you visibility into your cloud apps and services, allow you to control and limit access to cloud apps and enforce compliance requirements on data stored in the cloud.

![Cloud apps](./images/cloud-apps.png)

## Configuring MCAS

To benefit from WDATP cloud app discovery signals, just turn on Microsoft Cloud App Security integration in WDATP Settings page, under Advanced features:

![Advanced features](./images/advanced-features.png)

Once activated, WDATP will immediately start forwarding discovery signals to MCAS.

To view the data collected, browse to Cloud App Security portal (portal.cloudappsecurity.com). Navigate to Cloud Discovery dashboard and select Win10 Endpoint Users report, which contains the data coming from WDATP.  

![Win10 endpoint users](./images/win10-endpoint-users.png)

This report is similar to the existing discovery report with one major difference: you can now benefit from visibility to the machine context. Notice the new Machines tab that allows you to view the data split to the device dimensions. This is available in the main report page or any subpage (e.g., when drilling down to a specific cloud app).

![Cloud discovery](./images/cloud-discovery.png)