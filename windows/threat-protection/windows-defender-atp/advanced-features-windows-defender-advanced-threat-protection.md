---
title: Turn on advanced features in Windows Defender ATP
description: Turn on advanced features such as block file in Windows Defender Advanced Threat Protection.
keywords: advanced features, preferences setup, block file
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---
# Turn on advanced features in Windows Defender ATP

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

Depending on the Microsoft security products that you use, some advanced features might be available for you to integrate Windows Defender ATP with.

Turn on the following advanced features to get better protected from potentially malicious files and gain better insight during security investigations:

## Block file
This feature is only available if your organization uses Windows Defender Antivirus as the active antimalware solution and that the cloud-based protection feature is enabled.

If your organization satisfies this condition, the feature is enabled by default. This feature enables you to block potentially malicious files in your network. This operation will prevent it from being read, written, or executed on machines in your organization.

## Office 365 Security Center integration
This feature is only available if you have an active Office 365 E5 or the Threat Intelligence add-on. For more information, see the Office 365 Enterprise E5 product page.

When you enable this feature, you'll be able to incorporate data from Office 365 Advanced Threat Protection into the Windows Defender ATP portal to conduct a holistic security investigation across Office 365 mailboxes and Windows machines.


1. In the navigation pane, select **Preferences setup** > **Advanced features**.
2. Select the advanced feature you want to configure and toggle the setting between **On** and **Off**.
3. Click **Save preferences**.

## Related topics
- [Update general settings in Windows Defender ATP](general-settings-windows-defender-advanced-threat-protection.md)
- [Turn on the preview experience in Windows Defender ATP](preview-settings-windows-defender-advanced-threat-protection.md)
- [Configure email notifications in Windows Defender ATP](configure-email-notifications-windows-defender-advanced-threat-protection.md)
