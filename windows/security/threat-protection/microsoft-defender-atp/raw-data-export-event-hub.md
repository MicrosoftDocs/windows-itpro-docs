---
title: Stream Microsoft Defender Advanced Threat Protection events. 
description: Learn how to configure Microsoft Defender ATP to stream Advanced Hunting events to your Event Hub.
keywords: raw data export, streaming API, API, Azure Event Hubs, Azure storage, storage account, Advanced Hunting, raw data sharing
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

# Configure Microsoft Defender ATP to stream Advanced Hunting events to your Azure Event Hubs

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-configuresiem-abovefoldlink) 

## Before you begin:

1. Create an [event hub](https://docs.microsoft.com/azure/event-hubs/) in your tenant.
2. Log in to your [Azure tenant](https://ms.portal.azure.com/), go to **Subscriptions > Your subscription > Resource Providers > Register to **Microsoft.insights****.

## Enable raw data streaming:

1. Log in to [Microsoft Defender Security Center](https://securitycenter.windows.com) with a Global Admin user.
2. Go to [Data export settings page](https://securitycenter.windows.com/interoperability/dataexport) on Microsoft Defender Security Center.
3. Click on **Add data export settings**.
4. Choose a name for your new settings.
5. Choose **Forward events to Azure Event Hubs**.
6. Type your **Event Hubs name** and your **Event Hubs resource ID**.
  In order to get your **Event Hubs resource ID**, go to your Azure Event Hubs namespace page on [Azure](https://ms.portal.azure.com/) > properties tab > copy the text under **Resource ID**:

  ![Image of event hub resource Id](images/event-hub-resource-id.png)

7. Choose the events you want to stream and click **Save**.

## The schema of the events in Azure Event Hubs:

```
{
	"records": [
					{
						"time": "<The time WDATP received the event>"
						"tenantId": "<The Id of the tenant that the event belongs to>"
						"category": "<The Advanced Hunting table name with 'AdvancedHunting-' prefix>"
						"properties": { <WDATP Advanced Hunting event as Json> }
					}
					...
				]
}
```

- Each event hub message in Azure Event Hubs contains list of records.
- Each record contains the event name, the time Microsoft Defender ATP received the event, the tenant it belongs (you will only get events from your tenant), and the event in JSON format in a property called "**properties**".
- For more information about the schema of Microsoft Defender ATP events, see [Advanced Hunting overview](overview-hunting.md).

## Data types mapping:

To get the data types for event properties do the following:

1. Log in to [Microsoft Defender Security Center](https://securitycenter.windows.com) and go to [Advanced Hunting page](https://securitycenter.windows.com/hunting-package).
2. Run the following query to get the data types mapping for each event:
 
```
{EventType}
| getschema
| project ColumnName, ColumnType 

```

- Here is an example for Machine Info event: 

![Image of event hub resource Id](images/machine-info-datatype-example.png)

## Related topics
- [Overview of Advanced Hunting](overview-hunting.md)
- [Microsoft Defender ATP streaming API](raw-data-export.md)
- [Stream Microsoft Defender ATP events to your Azure storage account](raw-data-export-storage.md)
- [Azure Event Hubs documentation](https://docs.microsoft.com/azure/event-hubs/)
