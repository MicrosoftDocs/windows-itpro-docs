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

Enable security information and event management (SIEM) integration so you can pull alerts from the Windows Defender ATP portal using your SIEM solution or by connecting directly to the alerts REST API.

1. In the navigation pane, select **Preferences setup** > **SIEM integration**.

  ![Image of SIEM integration from Preferences setup menu](images/atp-siem-integration.png)

2. Select **Enable SIEM integration**. This activates the **SIEM connector access details** section with pre-populated values and an application is created under you Azure Active Directory (AAD) tenant.

  WARNING:<br>
  The client secret is only displayed once. Make sure you keep a copy of it in a safe place.<br>
  For more information about getting a new secret see, [Learn how to get a new secret](troubleshoot-custom-ti-windows-defender-advanced-threat-protection.md#learn-how-to-get-a-new-client-secret).

3. Choose the SIEM type you use in your organization.

  NOTE:<br>
  If you select HP ArcSight, you'll need to save these two configuration files:<br>
  - WDATP-connector.jsonparser.properties
  - WDATP-connector.properties <br>

  If you want to connect directly to the alerts REST API through programmatic access, choose **Generic API**.

4. Copy the individual values or select **Save details to file** to download a file that contains all the values.

5. Select **Generate tokens** to get an access and refresh token.

You can now proceed with configuring your SIEM solution or connecting to the alerts REST API through programmatic access. You'll need to use the tokens when configuring your SIEM solution to allow it to receive alerts from the Windows Defender ATP portal.

## Related topics
- [Configure Splunk](configure-splunk-windows-defender-advanced-threat-protection.md)
- [Configure ArcSight](configure-arcsight-windows-defender-advanced-threat-protection.md)
- [Windows Defender ATP alert API fields](api-portal-mapping-windows-defender-advanced-threat-protection.md)
- [Pull Windows Defender ATP alerts using REST API](pull-alerts-using-rest-api-windows-defender-advanced-threat-protection.md)
