---
title: Enable SIEM integration in Windows Defender Advanced Threat Protection
description: Enable SIEM integration to receive alerts in your security information and event management (SIEM) solution.
keywords: enable siem connector, siem, connector, security information and events
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Enable SIEM integration in Windows Defender ATP

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

Enable security information and event management (SIEM) integration so that you can receive alerts in your SIEM solution from the Windows Defender ATP portal.

1. In the navigation pane, select **Preferences setup** > **SIEM integration**.

  ![Image of SIEM integration from Preferences setup menu](images/atp-siem-integration.png)

2. Select **Enable SIEM integration**. This activates the **SIEM connector access details** section with pre-populated values and an application is created under you Azure Active Directory (AAD) tenant.

  >[!WARNING]
  >The client secret is only displayed once. Make sure you keep a copy of it in a safe place.
  >For more information about getting a new secret see, [Learn how to get a new secret](troubleshoot-custom-ti-windows-defender-advanced-threat-protection.md#learn-how-to-get-a-new-client-secret).

3. Choose the SIEM type you use in your organization.
  >[!NOTE]
  >If you select HP ArcSight, you'll need to save these two configuration files:
  > - WDATP-connector.jsonparser.properties
  > - WDATP-connector.properties

4. Copy the individual values or select **Save details to file** to download a file that contains all the values.

5. Select **Generate tokens** to get an access and refresh token.

You can now proceed with configuring your SIEM solution. You'll need to use the tokens when configuring your SIEM solution to allow it to receive alerts from the Windows Defender ATP portal.

## Related topics
- [Configure Splunk to pull Windows Defender ATP alerts](configure-splunk-windows-defender-advanced-threat-protection.md)
- [Configure HP ArcSight to pull Windows Defender ATP alerts](configure-arcsight-windows-defender-advanced-threat-protection.md)
