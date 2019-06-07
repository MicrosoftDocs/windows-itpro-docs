---
title: Sign code integrity policy with Device Guard signing (Windows 10)
description: Signing code integrity policies prevents policies from being tampered with after they're deployed. You can sign code integrity policies with the Device Guard signing portal.
ms.assetid: 63B56B8B-2A40-44B5-B100-DC50C43D20A9
ms.reviewer: 
manager: dansimp
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: store, security
author: TrudyHa
ms.author: TrudyHa
ms.topic: conceptual
ms.localizationpriority: medium
ms.date: 10/17/2017
---

# Sign code integrity policy with Device Guard signing

**Applies to**

-   Windows 10
-   Windows 10 Mobile

Signing code integrity policies prevents policies from being tampered with after they're deployed. You can sign code integrity policies with the Device Guard signing portal.

## Sign your code integrity policy
Before you get started, be sure to review these best practices:

**Best practices**

- Test your code integrity policies on a group of devices before deploying them to a large group of devices.
- Use rule options 9 and 10 during testing. For more information, see the section Code integrity policy rules in the [Device Guard deployment guide](https://docs.microsoft.com/windows/device-security/device-guard/device-guard-deployment-guide).

**To sign a code integrity policy**

1.  Sign in to the [Microsoft Store for Business](https://businessstore.microsoft.com) or [Microsoft Store for Education](https://educationstore.microsoft.com).
2.  Click **Manage**, click **Store settings**, and then click **Device Guard**.
3.  Click **Upload** to upload your code integrity policy.
4.  After the files are uploaded, click **Sign** to sign the code integrity policy.
5.  Click **Download** to download the signed code integrity policy.

    When you sign a code integrity policy with the Device Guard signing portal, the signing certificate is added to the policy. This means you can't modify this policy. If you need to make changes, make them to an unsigned version of the policy, and then resign the policy.
