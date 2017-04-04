---
title: Troubleshoot SIEM tool integration issues in Windows Defender ATP
description: Troubleshoot issues that might arise when using SIEM tools with Windows Defender ATP.
keywords: troubleshoot, siem, client secret, secret
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Troubleshoot SIEM tool integration issues

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

You might need to troubleshoot issues while pulling alerts in your SIEM tools.

This page provides detailed steps to troubleshoot issues you might encounter.


## Learn how to get a new client secret
If your client secret expires or if you've misplaced the copy provided when you were enabling the custom threat intelligence application,  you'll need to get a new secret.

1. Login to the [Azure management portal](https://ms.portal.azure.com).

2. Select **Active Directory**.

3. Select your tenant.

4. Click **Application**, then select your custom threat intelligence application. The application name is **GET FROM SME**.

5. Select **Keys** section, then provide a key description and specify the key validity duration.

6. Click **Save**. The key value is displayed.

7. Copy the value and save it in a safe place.


## Related topics
- [Enable SIEM integration in Windows Defender ATP](enable-siem-integration-windows-defender-advanced-threat-protection.md)
- [Configure Splunk](configure-splunk-windows-defender-advanced-threat-protection.md)
- [Configure ArcSight](configure-arcsight-windows-defender-advanced-threat-protection.md)
- [Windows Defender ATP alert API fields](api-portal-mapping-windows-defender-advanced-threat-protection.md)
- [Pull Windows Defender ATP alerts using REST API](pull-alerts-using-rest-api-windows-defender-advanced-threat-protection.md)
