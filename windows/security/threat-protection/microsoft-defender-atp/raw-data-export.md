---
title: Stream Microsoft Defender Advanced Threat Protection events. 
description: Learn how to configure Microsoft Defender ATP to stream Advanced Hunting events to your Event Hub or Azure storage account.
keywords: raw data export, streaming API, API, Event hub, Azure storage, storage account, Advanced Hunting, raw data sharing
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Raw Data Streaming API

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

- Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-configuresiem-abovefoldlink) 

## Stream Advanced Hunting events to your event hub and/or Azure storage account.

Microsoft Defender ATP supports streaming all the events available through [Advanced Hunting](overview-hunting.md) to an [Event hub](https://docs.microsoft.com/en-us/azure/event-hubs/) and/or [Azure storage account](https://docs.microsoft.com/en-us/azure/event-hubs/).

## In this section

Topic | Description
:---|:---
[Stream MDATP events to your event hub](raw-data-export-event-hub.md)| Learn about enabling the streaming API in your tenant and configure MDATP to stream [Advanced Hunting](overview-hunting.md) to your event hub.
[Stream MDATP events to your Azure storage account](raw-data-export-storage.md)| Learn about enabling the streaming API in your tenant and configure MDATP to stream [Advanced Hunting](overview-hunting.md) to your Azure storage account.


## Related topics
- [Overview of Advanced Hunting](overview-hunting.md)
- [Azure Event Hub documentation](https://docs.microsoft.com/en-us/azure/event-hubs/)
- [Azure Storage Account documentation](https://docs.microsoft.com/en-us/azure/storage/common/storage-account-overview)
