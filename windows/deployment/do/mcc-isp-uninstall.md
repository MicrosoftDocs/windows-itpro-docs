---
title: Uninstall your cache node
manager: dougeby
description: How to uninstall a cache node
keywords: updates, downloads, network, bandwidth
ms.prod: w10
ms.mktglfcycl: deploy
audience: itpro
author: amyzhou
ms.localizationpriority: medium
ms.author: amyzhou
ms.collection: M365-modern-desktop
ms.topic: article
---

# Uninstall your cache node

There are two main steps required to uninstall your cache node:

1. Remove your cache node from Azure portal.
1. Run the uninstall script to cleanly remove MCC from your server.


## Remove your cache node from Azure portal

Within Azure portal, navigate to **Cache Nodes**, then select the cache node you wish to delete. Once selected, select **Delete** on the top bar to remove this cache node from your account. 

## Run the uninstall script to cleanly remove MCC from your server

In the installer zip file, you'll find the file **uninstallmcc.sh**. This script uninstalls MCC and all the related components. Only run it if you're facing issues with MCC installation.

The **uninstallmcc.sh** script removes the following components:

- IoT Edge
- Edge Agent
- Edge Hub
- MCC
- Moby CLI
- Moby engine

To run the script, use the following commands:

```bash
sudo chmod +x uninstallmcc.sh
sudo ./uninstallmcc.sh

```


