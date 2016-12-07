---
title: Check the Windows Defender ATP service status
description: Check Windows Defender ATP service status, see if the service is experiencing issues and review previous issues that have been resolved.
keywords: dashboard, service, issues, service status, current issues, status history, summary of impact, preliminary root cause, resolution, resolution time, expected resolution time
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Check the Windows Defender Advanced Threat Protection service status

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

The **Service health** provides information on the current status of the Window Defender ATP service. You'll be able to verify that the service status is healthy or if there are current issues and the details related to the issue such as when the issue was detected, what the preliminary root cause is, and the expected resolution time.

You'll also see information on historical issues that have been resolved and details such as the date and time when the issue was resolved. When there are no issues on the service, you'll see a healthy status.

You can view details on the service status by clicking the tile from the **Dashboard** or selecting the **Service health** menu from the navigation pane.

The **Service health** details page has the following tabs:

- **Current issues**
- **Status History**

## Current issues
The **Current issues** tab shows the current state of the Windows Defender ATP service. When the service is running smoothly a healthy service status is shown. If there are issues seen on telemetry or detection functionality, and the **Deep analysis** feature, the following service details are shown to help you gain better insight about the issue:

- Date and time for when the issue was detected
- A short description of the issue
- Update time
- Summary of impact
- Preliminary root cause
- Next steps
- Expected resolution time

When an issue is resolved, it gets recorded in the **Status history** tab.

## Status history
The **Status history** tab reflects all the historical issues that were seen and resolved. The following service details are shown to help you gain better insight about the historical issues:

- Date and time for when the issue was detected
- Preliminary root cause
- Next steps
- Resolution time

### Related topic
- [View the Windows Defender Advanced Threat Protection Dashboard](dashboard-windows-defender-advanced-threat-protection.md)
