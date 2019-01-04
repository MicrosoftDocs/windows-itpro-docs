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

The threat protection report provides high-level information about alerts generated in your organization. The report includes trending information showing the detection sources, categories, severities, statuses, classifications, and determinations of alerts across time as well as a current day snapshot.

The report is made up of cards that display the following alert attributes:

## Alert detection sources
Shows information about the sensors and detection technologies that provide the data used by Windows Defender ATP to trigger alerts.

## Alerts by categories
Shows the types of threat or attack activity that triggered alerts, indicating possible focus areas for your security operations.

## Alerts by severity
Shows the severity level of alerts, indicating the collective potential impact of threat activities in your organization and the level of response you might need to address them.

## Alert status
Shows the resolution status of alerts, indicating efficiency of your manual alert responses and of automated remediation (if enabled). 

## Alert classification & determination
Shows how you have resolved alerts, whether you have identified them as actual threats or as incorrect detections, as well additional information about the resolution.


# Set start date of 30-day cards

By default, the 30-day cards in the report display data from the 30-day period ending in the latest completed day. To adjust this 30-day window, select a different start day under Filters > Start date for 30-day cards. 

# Filter data

Use the filters to include or exclude alerts with specific attributes. These filters apply to all the cards in the reports.

For example, selecting only High under the Severity filters configures the report to display data about high-severity alerts only.
