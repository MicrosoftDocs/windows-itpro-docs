---
title: Troubleshoot custom threat intelligence issues in Windows Defender ATP
description: Troubleshoot issues that might arise when using the custom threat intelligence feature in Windows Defender ATP.
keywords: troubleshoot, custom threat intelligence, custom ti, rest api, api, alert definitions, indicators of compromise
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Troubleshoot custom threat intelligence issues

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

<span style="color:#ED1C24;">[Some information relates to pre-released product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

You might need to troubleshoot issues while using the custom threat intelligence feature.

This page provides detailed steps to troubleshoot issues you might encounter while using the feature.


## Learn how to get a new client secret
If your client secret expires or if you've misplaced the copy provided when you were enabling the custom threat intelligence application,  you'll need to get a new secret.

1. Login to the [Azure management portal](https://ms.portal.azure.com).

2. Select **Active Directory**.

3. Select your tenant.

4. Click **Application**, then select your custom threat intelligence application. The application name is **WindowsDefenderATPThreatIntelAPI** (formerly known as **WindowsDefenderATPCustomerTiConnector**).

5. Select **Keys** section, then provide a key description and specify the key validity duration.

6. Click **Save**. The key value is displayed.

7. Copy the value and save it in a safe place.


## Related topics
- [Understand threat intelligence](threat-indicator-concepts-windows-defender-advanced-threat-protection.md)
- [Enable the custom threat intelligence application](enable-custom-ti-windows-defender-advanced-threat-protection.md)
- [Create custom threat intelligence](custom-ti-api-windows-defender-advanced-threat-protection.md)
- [PowerShell code examples](powershell-example-code-windows-defender-advanced-threat-protection.md)
- [Python code examples](python-example-code-windows-defender-advanced-threat-protection.md)
