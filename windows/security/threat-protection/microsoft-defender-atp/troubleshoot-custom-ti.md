---
title: Troubleshoot custom threat intelligence issues in Microsoft Defender ATP
description: Troubleshoot issues that might arise when using the custom threat intelligence feature in Microsoft Defender ATP.
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
---

# Troubleshoot custom threat intelligence issues (Deprecated)

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

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


>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-troubleshootcustomti-belowfoldlink) 


## Related topics
- [Understand threat intelligence concepts](threat-indicator-concepts.md)
- [Enable the custom threat intelligence API in Microsoft Defender ATP](enable-custom-ti.md)
- [Create custom alerts using the threat intelligence API](custom-ti-api.md)
- [PowerShell code examples for the custom threat intelligence API](powershell-example-code.md)
- [Python code examples for the custom threat intelligence API](python-example-code.md)
- [Experiment with custom threat intelligence alerts](experiment-custom-ti.md)
