---
title: Troubleshoot custom threat intelligence issues in Windows Defender ATP
description: Troubleshoot issues that might arise when using the custom threat intelligence feature in Windows Defender ATP.
keywords: troubleshoot, custom threat intelligence, custom ti, rest api, api, alert definitions, indicators of compromise
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
ms.topic: troubleshooting
ms.date: 06/25/2018
---

# Troubleshoot custom threat intelligence issues

**Applies to:**


- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)



You might need to troubleshoot issues while using the custom threat intelligence feature.

This page provides detailed steps to troubleshoot issues you might encounter while using the feature.


## Learn how to get a new client secret
If your client secret expires or if you've misplaced the copy provided when you were enabling the custom threat intelligence application,  you'll need to get a new secret.

1. Login to the [Azure management portal](https://portal.azure.com).

2. Select **Active Directory**.

3. Select your tenant.

4. Click **App registrations** > **All apps**. Then select the relevant application name:
    - **WindowsDefenderATPThreatIntelAPI** (formerly known as **WindowsDefenderATPCustomerTiConnector**)
    - **WindowsDefenderATPSiemConnector**
    
5. Under **Settings**, select **Keys**, then provide a key description and specify the key validity duration.

6. Click **Save**. The key value is displayed.

7. Copy the value and save it in a safe place.


>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-troubleshootcustomti-belowfoldlink) 


## Related topics
- [Understand threat intelligence concepts](threat-indicator-concepts-windows-defender-advanced-threat-protection.md)
- [Enable the custom threat intelligence API in Windows Defender ATP](enable-custom-ti-windows-defender-advanced-threat-protection.md)
- [Create custom alerts using the threat intelligence API](custom-ti-api-windows-defender-advanced-threat-protection.md)
- [PowerShell code examples for the custom threat intelligence API](powershell-example-code-windows-defender-advanced-threat-protection.md)
- [Python code examples for the custom threat intelligence API](python-example-code-windows-defender-advanced-threat-protection.md)
- [Experiment with custom threat intelligence alerts](experiment-custom-ti-windows-defender-advanced-threat-protection.md)
