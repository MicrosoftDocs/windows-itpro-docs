---
title: Turn on advanced features in Windows Defender ATP
description: Turn on advanced features such as block file in Windows Defender Advanced Threat Protection.
keywords: advanced features, preferences setup, block file
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: high
ms.date: 10/17/2017
---

# Turn on advanced features in Windows Defender ATP

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)



>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-advancedfeats-abovefoldlink)

Depending on the Microsoft security products that you use, some advanced features might be available for you to integrate Windows Defender ATP with.

Turn on the following advanced features to get better protected from potentially malicious files and gain better insight during security investigations:

## Block file
This feature is only available if your organization uses Windows Defender Antivirus as the active antimalware solution and that the cloud-based protection feature is enabled.

If your organization satisfies these conditions, the feature is enabled by default. This feature enables you to block potentially malicious files in your network. This operation will prevent it from being read, written, or executed on machines in your organization.

## Show user details
When you enable this feature, you'll be able to see user details stored in Azure Active Directory including a user's picture, name, title, and department information  when investigating user account entities. You can find user account information in the following views:
- Security operations dashboard
- Alert queue
- Machine details page

For more information, see [Investigate a user account](investigate-user-windows-defender-advanced-threat-protection.md).

## Skype for Business integration
Enabling the Skype for Business integration gives you the ability to communicate with users using Skype for Business, email, or phone. This can be handy when you need to communicate with the user and mitigate risks.

## Office 365 Threat Intelligence connection
This feature is only available if you have an active Office 365 E5 or the Threat Intelligence add-on. For more information, see the Office 365 Enterprise E5 product page.

When you enable this feature, you'll be able to incorporate data from Office 365 Advanced Threat Protection into the Windows Defender ATP portal to conduct a holistic security investigation across Office 365 mailboxes and Windows machines.

To receive contextual machine integration in Office 365 Threat Intelligence, you'll need to enable the Windows Defender ATP settings in the Security & Compliance dashboard. For more information, see [Office 365 Threat Intelligence overview](https://support.office.com/en-us/article/Office-365-Threat-Intelligence-overview-32405DA5-BEE1-4A4B-82E5-8399DF94C512).

## Enable advanced features
1. In the navigation pane, select **Preferences setup** > **Advanced features**.
2. Select the advanced feature you want to configure and toggle the setting between **On** and **Off**.
3. Click **Save preferences**.

## Related topics
- [Update general settings in Windows Defender ATP](general-settings-windows-defender-advanced-threat-protection.md)
- [Turn on the preview experience in Windows Defender ATP](preview-settings-windows-defender-advanced-threat-protection.md)
- [Configure email notifications in Windows Defender ATP](configure-email-notifications-windows-defender-advanced-threat-protection.md)
- [Enable SIEM integration in Windows Defender ATP](enable-siem-integration-windows-defender-advanced-threat-protection.md)
- [Enable the custom threat intelligence API in Windows Defender ATP](enable-custom-ti-windows-defender-advanced-threat-protection.md)
- [Create and build Power BI reports](powerbi-reports-windows-defender-advanced-threat-protection.md)