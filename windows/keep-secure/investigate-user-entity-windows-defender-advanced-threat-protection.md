---
title: Investigate user entities in Windows Defender Advanced Threat Protection
description: Use the investigation options to investigate alerts related to a user account.
keywords: investigate, account, user, user entity, alert, windows defender atp
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---
# Investigate a user account associated with a Windows Defender ATP alert

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

<span style="color:#ED1C24;">[Some information relates to pre-released product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

## Investigate user entities
Identify user accounts with the most active alerts and investigate the associated alerts to identify possible lateral movement between machines and potential compromised credentials cases.

You can find user account information from the following views:
- Dashboard
- Alerts queue
- Machine details page

A clickable user account link is available from all these views. You'll be taken to the user account details page where more details about the account is shown.

When you investigate a user entity, you'll see:
- User account details and Logged on machines
- Alerts related to this user
- Observed in organization

![Image of the user entity details page](images/atp-user-details-view.png)

The user entity details and logged on machines section display various attributes about the user entity. You'll see details such as when the user was first and last seen and the total number of machines the user logged in to.

The **Alerts related to this user** section provides a list of alerts that are associated with the user. This list is a simplified version of the [Alerts queue](alerts-queue-windows-defender-advanced-threat-protection.md), and shows the date when the last activity was detected, a short description of the alert, the machine associated with the alert, the alert's severity, the alert's status in the queue, and who is addressing the alert.

The **Observed in organization** section allows you to specify a date range to see the total number of observed users logged in to specific machine and which machines the user most frequently and least frequently logged in to.

![Image of observed in organization section](images/atp-observed-in-organization.png)

## Search for specific user accounts
Use the search bar to look for specific user accounts:
