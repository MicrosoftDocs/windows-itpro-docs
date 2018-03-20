---
title: Configure automation notifications in Windows Defender ATP
description: Send automation notifications to specified recipients to receive emails based on certain conditions
keywords: automation notifications, configure automation notifications, incrimination result, asset group, investigation status
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: high
ms.date: 04/16/2018
---

# Configure automation notifications in Windows Defender ATP

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

[!include[Prerelease information](prerelease.md)]

>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-automationnotifcations-abovefoldlink)

You can configure Windows Defender ATP to send automation notifications to specified recipients based on certain conditions that you define. This helps you to identify a group of individuals who will immediately be informed and can act on automation notifications.

> [!NOTE]
> Only users with full access can configure automation notifications.


## Set up automation notification rules

1. In the navigation pane, select **Settings** > **General** > **Automation notifications**.
2. Click **New notification rule**.
3.	Enter a rule name, email address, and select the condition for when the notification will be sent. 

    >[!NOTE]
    >You can add multiple email addresses and conditions.
    
    The following conditions are supported:
    - Asset groups
    - Investigation status
    - Remediation type
    - Incrimination result
    
4.	Click **Save notification rule**.


## Edit an automation notification rule

1. Click **Edit rule**.
2. Update the name of the rule, or recipients, or conditions.
3. Click **Save notification rule**.

## Delete an automation notification rule
1. Click **Delete rule**.
2. Confirm that you want to delete the rule. 

## Related topics
- [Update data retention settings](general-settings-windows-defender-advanced-threat-protection.md)
- [Configure alert notifications](configure-email-notifications-windows-defender-advanced-threat-protection.md)
- [Enable and create Power BI reports using Windows Defender ATP data](powerbi-reports-windows-defender-advanced-threat-protection.md)
- [Enable Secure score security controls](enable-security-analytics-windows-defender-advanced-threat-protection.md)
- [Configure advanced features](advanced-features-windows-defender-advanced-threat-protection.md)