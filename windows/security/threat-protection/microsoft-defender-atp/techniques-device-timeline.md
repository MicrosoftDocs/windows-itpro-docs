---
title: Device timeline techniques
description: Understanding the device timeline in Microsoft Defender for Endpoint
keywords: device timeline, endpoint, MITRE, MITRE ATT&CK, techniques, tactics
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: maccruz
author: schmurky
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Techniques in the device timeline


**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)


You can gather more insight about a device by selecting any device from the [Devices list](machines-view-overview.md). This brings you to the individual device's page. On the device page, you can select the **Timeline** tab to view all the events related to it.

## Understand techniques in the timeline

>[!IMPORTANT]
>Some information relates to a prereleased product feature in public preview which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

In Microsoft Defender for Endpoint, **Techniques** are an additional data type in the event timeline that provides more insight on activities associated with certain [MITRE ATT&CK](https://attack.mitre.org/) techniques or sub-techniques. 

This feature simplifies the investigation experience by helping analysts understand at a glance whether suspicious activities happened on or affected a device and whether those activities indicate a need for closer investigation.

For the public preview, Techniques are available by default and are shown together with events when a device's timeline is viewed. 

![Techniques in device timeline screenshot](images/device-timeline-with-techniques.png)

Techniques are highlighted in bold text and appear with a blue icon on the left. The corresponding MITRE ATT&CK ID and technique name also appear as tags under Additional information. 

Search and Export options are also available for Techniques.

## Investigate using the side pane

Selecting a Technique opens the side pane and shows additional information and insights like related ATT&CK techniques, tactics, and descriptions. 

Selecting the specific *Attack technique* opens the related ATT&CK technique page where you can find more information about it.

You can also select event entities to copy them using the blue icon on the right. For instance, to copy a related file's SHA1, select the blue page icon.

![Copy entity details](images/techniques-side-pane-clickable.png)

You can do the same for command lines.

![Copy command line](images/techniques-side-pane-command.png)


## Investigate related events

To use [advanced hunting](advanced-hunting-overview.md) to find events related to the selected Technique, you can select **Hunt for related events**. This leads to the advanced hunting page with a query to find events related to the Technique.

![Hunt for related events](images/techniques-hunt-for-related-events.png)

>[!NOTE]
>Querying using the **Hunt for related events** button from a Technique side pane displays all the events related to the identified technique but does not include the Technique itself in the query results.


## Customize your device timeline

On the upper right-hand side of the device timeline, you can choose a date range to limit the number of events and techniques in the timeline. You can also customize which columns to expose, and filter for flagged events by data type or by event group.

### Choose columns to expose
You can choose which columns to expose in the timeline by selecting the **Choose columns** button.

![Customize columns](images/filter-customize-columns.png)

From there you can select which information set to include.

### Filter to view techniques or events only

To view only either events or techniques, select Filters from the device timeline and choose your preferred Data type to view.

![Filters screenshot](images/device-timeline-filters.png)



## See also
- [View and organize the Devices list](machines-view-overview.md)
- [Microsoft Defender for Endpoint device timeline event flags](device-timeline-event-flag.md) 


 
