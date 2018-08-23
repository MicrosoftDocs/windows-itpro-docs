---
title: Configure Microsoft Cloud App Security integration 
description: 
keywords: 
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: ellevin
author: levinec
ms.localizationpriority: high
ms.date: 09/03/2018
---

# Microsoft Cloud App Security configuration

To benefit from Windows Defender Advanced Threat Protection (ATP) cloud app discovery signals, turn on Microsoft Cloud App Security integration in the **Windows Defender ATP Settings** page, under **Advanced features**:

![Advanced features](./images/advanced-features.png)

Once activated, Windows Defender ATP will immediately start forwarding discovery signals to Cloud App Security.

## View the data collected

1. Browse to the [Cloud App Security portal](https://portal.cloudappsecurity.com/).

2. Navigate to the Cloud Discovery dashboard.

3. Select **Win10 Endpoint Users report**, which contains the data coming from Windows Defender ATP.

![Win10 endpoint users](./images/win10-endpoint-users.png)

This report is similar to the existing discovery report with one major difference: you can now benefit from visibility to the machine context.

Notice the new **Machine**s tab that allows you to view the data split to the device dimensions. This is available in the main report page or any subpage (e.g., when drilling down to a specific cloud app).

![Cloud discovery](./images/cloud-discovery.png)

## Related topic

- [Microsoft Cloud App Security integration](microsoft-cloud-app-security-integration.md)