---
title: Troubleshoot SIEM tool integration issues in Windows Defender ATP
description: Troubleshoot issues that might arise when using SIEM tools with Windows Defender ATP.
keywords: troubleshoot, siem, client secret, secret
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
ms.date: 11/08/2018
---

# Troubleshoot SIEM tool integration issues

**Applies to:**
- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)




You might need to troubleshoot issues while pulling alerts in your SIEM tools.

This page provides detailed steps to troubleshoot issues you might encounter.


## Learn how to get a new client secret
If your client secret expires or if you've misplaced the copy provided when you were enabling the SIEM tool application,  you'll need to get a new secret.

1. Login to the [Azure management portal](https://portal.azure.com).

2. Select **Azure Active Directory**.

3. Select your tenant.

4. Click **App registrations**. Then in the applications list, select the application:
    - For SIEM: `https://WindowsDefenderATPSiemConnector`
    - For Threat intelligence API: `https://WindowsDefenderATPCustomerTiConnector`

5. Select **Keys** section, then provide a key description and specify the key validity duration.

6. Click **Save**. The key value is displayed.

7. Copy the value and save it in a safe place.


## Error when getting a refresh access token
If you encounter an error when trying to get a refresh token when using the threat intelligence API or SIEM tools, you'll need to add reply URL for relevant application in Azure Active Directory.

1. Login to the [Azure management portal](https://ms.portal.azure.com).

2. Select **Azure Active Directory**.

3. Select your tenant.

4. Click **App Registrations**. Then in the applications list, select the application:
    - For SIEM: `https://WindowsDefenderATPSiemConnector`
    - For Threat intelligence API: `https://WindowsDefenderATPCustomerTiConnector`

5. Add the following URL:
  - For the European Union: `https://winatpmanagement-eu.securitycenter.windows.com/UserAuthenticationCallback`
  - For the United Kingdom: `https://winatpmanagement-uk.securitycenter.windows.com/UserAuthenticationCallback`
  - For the United States:  `https://winatpmanagement-us.securitycenter.windows.com/UserAuthenticationCallback`.
 
6. Click **Save**.

## Error while enabling the SIEM connector application
If you encounter an error when trying to enable the SIEM connector application, check the pop-up blocker settings of your browser. It might be blocking the new window being opened when you enable the capability.




>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-troubleshootsiem-belowfoldlink) 

## Related topics
- [Enable SIEM integration in Windows Defender ATP](enable-siem-integration-windows-defender-advanced-threat-protection.md)
- [Configure ArcSight to pull Windows Defender ATP alerts](configure-arcsight-windows-defender-advanced-threat-protection.md)
- [Configure Splunk to pull Windows Defender ATP alerts](configure-splunk-windows-defender-advanced-threat-protection.md)
- [Windows Defender ATP alert API fields](api-portal-mapping-windows-defender-advanced-threat-protection.md)
- [Pull Windows Defender ATP alerts using REST API](pull-alerts-using-rest-api-windows-defender-advanced-threat-protection.md)
