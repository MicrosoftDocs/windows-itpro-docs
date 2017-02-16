---
title: Enable the custom threat intelligence application in Windows Defender ATP
description: Enable the custom threat intelligence application in Windows Defender ATP so that you can create custom threat intelligence using REST API.
keywords: enable custom threat intelligence application, custom ti application, application name, client id, authorization url, resource, client secret, access tokens
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Enable the custom threat intelligence application

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

<span style="color:#ED1C24;">[Some information relates to pre-released product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

Before you can create custom threat intelligence (TI) using REST API, you'll need to set up the custom threat intelligence application through the Windows Defender ATP portal.

1. In the navigation pane, select **Preference Setup** > **Custom TI**.

2. Select **Enable custom TI application**. This activates the **Azure Active Directory application** setup sections with pre-populated values.

3. Copy the individual values or select **Save details to file** to download a file that contains all the values.

  >[!WARNING]
  >The client secret is only displayed once. Make sure you keep a copy of it in a safe place.
  >For more information about getting a new secret see, [Learn how to get a new secret](troubleshoot-custom-ti-windows-defender-advanced-threat-protection.md#learn-how-to-get-a-new-client-secret).

4. Select **Generate tokens** to get an access and refresh token.

You'll need to use these values on the JSON file when doing REST API calls.

## Related topics
- [Understand threat intelligence](threat-indicator-concepts-windows-defender-advanced-threat-protection.md)
- [Create custom threat intelligence](custom-ti-api-windows-defender-advanced-threat-protection.md)
- [Troubleshoot custom threat intelligence issues](troubleshoot-custom-ti-windows-defender-advanced-threat-protection.md)
