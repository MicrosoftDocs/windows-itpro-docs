---
title: Use the Device Guard Signing Portal in the Microsoft Store for Business  (Windows)
description: You can sign code integrity policies with the Device Guard signing portal to prevent them from being tampered with after they're deployed.
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.author: vinpa
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: isbrahm
manager: aaroncz
ms.date: 02/19/2019
ms.technology: itpro-security
---

# Optional: Use the Device Guard Signing Portal in the Microsoft Store for Business

**Applies to:**

- Windows 10
- Windows 11
- Windows Server 2016 and above

> [!IMPORTANT]
> The existing web-based mechanism for the Device Guard Signing Service v1 will be retired on June 9, 2021. Please transition to the PowerShell based version of the service [(DGSS v2)](/microsoft-store/device-guard-signing-portal). For more details, see [Sign an MSIX package with Device Guard signing](/windows/msix/package/signing-package-device-guard-signing) and [Device Guard signing](/microsoft-store/device-guard-signing-portal).

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](feature-availability.md).

You can sign code integrity policies with the Device Guard signing portal to prevent them from being tampered with after they're deployed.

## Sign your code integrity policy
Before you get started, be sure to review these best practices:

**Best practices**

- Test your code integrity policies on a pilot group of devices before deploying them to production.
- Use rule options 9 and 10 during testing. For more information, see the section Code integrity policy rules in the [Deploy Windows Defender Application Control policy rules and file rules](./select-types-of-rules-to-create.md).

**To sign a code integrity policy**

1.  Sign in to the [Microsoft Store for Business](https://businessstore.microsoft.com) or [Microsoft Store for Education](https://educationstore.microsoft.com). 
2.  Click **Manage**, click **Store settings**, and then click **Device Guard**.
3.  Click **Upload** to upload your code integrity policy.
4.  After the files are uploaded, click **Sign** to sign the code integrity policy.
5.  Click **Download** to download the signed code integrity policy.

    When you sign a code integrity policy with the Device Guard signing portal, the signing certificate is added to the policy. This means you can't modify this policy. If you need to make changes, make them to an unsigned version of the policy, and then sign the policy again.
