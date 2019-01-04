---
title: Threat protection report in Windows Defender ATP
description: Track alert detections, categories, and severity using the threat protection report
keywords: alert detection, source, alert by category, alert severity, alert classification, determination
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
ms.localizationpriority: medium
ms.date: 11/07/2018
---

# Threat protection report in Windows Defender ATP

**Applies to:**
- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

[!include[Prerelease information](prerelease.md)]

The threat protection report provides high-level information about alerts generated in your organization. The report includes trending information showing the detection sources, categories, severities, statuses, classifications, and determinations of alerts across time as well as the last full day.

## Alert attributes
The report is made up of cards that display the following alert attributes:

- **Alert detection sources**: shows information about the sensors and detection technologies that provide the data used by Windows Defender ATP to trigger alerts.

- **Alerts by categories**: shows the types of threat or attack activity that triggered alerts, indicating possible focus areas for your security operations.

- **Alerts by severity**: shows the severity level of alerts, indicating the collective potential impact of threat activities in your organization and the level of response you might need to address them.

- **Alert status**: shows the resolution status of alerts, indicating efficiency of your manual alert responses and of automated remediation (if enabled). 

- **Alert classification & determination**: shows how you have classified resolved alerts, whether you have classified them as actual threats (true alerts) or as incorrect detections (false alerts). The card also provide the determination of alerts, further explaining the resolution with information like the type of actual threat or the legitimate activity that was incorrectly detected.

## 30-day and today cards
For each of the described alert attributes, the report provides two cards: 
- **30-day cards**: shows daily trending information from a 30-day period
- **Today cards**: shows 24-hour snapshot information from the latest completed or full day

## Set start date of 30-day cards

By default, the 30-day cards in the report display data from the 30-day period ending in the latest full day. To adjust this 30-day window, select a different start day under **Filters > Start date for 30-day cards**.

For example, to show the period from December 1 to December 30, select December 1 as the start date. Click **Apply* after adjusting the start date.

## Filter data

Use the provided filters to include or exclude alerts with certain attributes. Filter settings apply to all the cards in the reports.

For example, to show data bout high-severity alerts only:

1. Under **Filters > Severity**, select **High**
2. Ensure that all other options under **Severity** are deselected.
3. Click **Apply**. 