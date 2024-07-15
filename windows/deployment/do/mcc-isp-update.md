---
title: Update or uninstall your cache node
description: This article contains information on how to update or uninstall your cache node for Microsoft Connected Cache for ISPs.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: how-to
ms.author: carmenf
author: cmknox
manager: aaroncz
ms.reviewer: mstewart
ms.collection:
  - tier3
  - must-keep
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
- ✅ <a href=https://learn.microsoft.com/windows/deployment/do/waas-microsoft-connected-cache target=_blank>Microsoft Connected Cache for ISPs</a>	
ms.date: 05/23/2024
---

# Update or uninstall your cache node

This article details how to update or uninstall your cache node.

## Update cache node

Microsoft will release updates for Microsoft Connected Cache periodically to improve performance, functionality, and security. Updates won't require any action from the customer. Instead, when an update is available, your cache node will automatically update during low traffic hours with minimal to no impact to your end customers.

To view which version your cache nodes are currently on, navigate to the **Cache nodes** tab to view the versions in the list view.

## Uninstall cache node

There are two main steps required to uninstall your cache node:

1. Remove your cache node from Azure portal
1. Run the uninstall script to cleanly remove MCC from your server

You must complete both steps to ensure a clean uninstall of your cache node.

### Remove your cache node from Azure portal

Within the [Azure portal](https://www.portal.azure.com), navigate to **Cache Nodes**, then select the cache node you wish to delete. Once selected, select **Delete** on the top bar to remove this cache node from your account.

### Run the uninstall script to cleanly remove Microsoft Connected Cache from your server

In the installer zip file, you'll find the file **uninstallmcc.sh**. This script uninstalls Microsoft Connected Cache and all the related components. Only run it if you're facing issues with Microsoft Connected Cache installation.

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
