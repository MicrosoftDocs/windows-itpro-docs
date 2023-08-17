---
title: Cache node configuration
manager: aaroncz
description: Configuring a cache node on Azure portal
ms.prod: windows-client
ms.author: carmenf
author: cmknox
ms.reviewer: mstewart
ms.topic: article
ms.date: 12/31/2017
ms.technology: itpro-updates
ms.collection: tier3
---

# Cache node configuration

All cache node configuration takes place within Azure portal. This article outlines all of the settings that you're able to configure. 

## Settings

| Field Name | Expected Value| Description |
| -- | --- | --- |
| **Cache node name** | Alphanumeric string that contains no spaces  | The name of the cache node. You may choose names based on location like Seattle-1. This name must be unique and can't be changed later. |
| **Server IP address** | IPv4 address  | IP address of your MCC server. This address is used to route end-user devices in your network to the server for Microsoft content downloads. The IP address must be publicly accessible. |
| **Max allowable egress (Mbps)** | Integer in Mbps | The maximum egress (Mbps) of your MCC based on the specifications of your hardware. For example, 10,000 Mbps.|
| **Enable cache node** | Enable or Disable | You can choose to enable or disable a cache node at any time. |

## Storage

| Field Name | Expected Value| Description |
| -- | --- | --- |
| **Cache drive** | File path string | Up to 9 drives can be configured for each cache node to configure cache storage. Enter the file path to each drive. For example: /dev/folder/ |
| **Cache drive size in gigabytes** | Integer in GB | Set the size of each drive configured for the cache node. |

## Client routing

| Field Name | Expected Value| Description |
| -- | --- | --- |
| **Manual routing - Address range/CIDR blocks** | IPv4 CIDR notation | The IP address range (CIDR blocks) that should be routed to the MCC server as a comma separated list. For example: 2.21.234.0/24, 3.22.235.0/24, 4.23.236.0/24 |
| **BGP - Neighbor ASN** | ASN | When configuring BGP, enter the ASN(s) of your neighbors that you want to establish. |
| **BGP - Neighbor IP address** | IPv4 address | When configuring BGP, enter the IP address(es) of neighbors that you want to establish. |

