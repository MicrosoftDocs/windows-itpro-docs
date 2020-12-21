---
title: Stream Microsoft Defender Advanced Threat Protection event 
description: Learn how to configure Microsoft Defender ATP to stream Advanced Hunting events to Event Hubs or Azure storage account
keywords: raw data export, streaming API, API, Event hubs, Azure storage, storage account, Advanced Hunting, raw data sharing
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

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

- Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-configuresiem-abovefoldlink) 

## Stream Advanced Hunting events to Event Hubs and/or Azure storage account.

Defender for Endpoint supports streaming all the events available through [Advanced Hunting](advanced-hunting-overview.md) to an [Event Hubs](https://docs.microsoft.com/azure/event-hubs/) and/or [Azure storage account](https://docs.microsoft.com/azure/event-hubs/).

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4r4ga]


## In this section

Topic | Description
:---|:---
[Stream Microsoft Defender for Endpoint events to Azure Event Hubs](raw-data-export-event-hub.md)| Learn about enabling the streaming API in your tenant and configure Defender for Endpoint to stream [Advanced Hunting](advanced-hunting-overview.md) to Event Hubs.
[Stream Defender for Endpoint events to your Azure storage account](raw-data-export-storage.md)| Learn about enabling the streaming API in your tenant and configure Defender for Endpoint to stream [Advanced Hunting](advanced-hunting-overview.md) to your Azure storage account.


## Related topics
- [Overview of Advanced Hunting](advanced-hunting-overview.md)
- [Azure Event Hubs documentation](https://docs.microsoft.com/azure/event-hubs/)
- [Azure Storage Account documentation](https://docs.microsoft.com/azure/storage/common/storage-account-overview)
