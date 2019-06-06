---
title: Use the Device Guard Signing Portal in the Microsoft Store for Business  (Windows 10)
description: Windows Defender Application Control restricts which applications users are allowed to run and the code that runs in the system core.
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.date: 02/19/2019
---

# Optional: Use the Device Guard Signing Portal in the Microsoft Store for Business

**Applies to:**

-   Windows 10
-   Windows Server 2019
-   Windows Server 2016

You can sign code integrity policies with the Device Guard signing portal to prevent them from being tampered with after they're deployed. 

## Sign your code integrity policy
Before you get started, be sure to review these best practices:

**Best practices**

- Test your code integrity policies on a pilot group of devices before deploying them to production.
- Use rule options 9 and 10 during testing. For more information, see the section Code integrity policy rules in the [Deploy Windows Defender Application Control policy rules and file rules](hhttps://docs.microsoft.com/windows/security/threat-protection/windows-defender-application-control/select-types-of-rules-to-create).

**To sign a code integrity policy**

1.  Sign in to the [Microsoft Store for Business](http://businessstore.microsoft.com) or [Microsoft Store for Education](https://educationstore.microsoft.com). 
2.  Click **Manage**, click **Store settings**, and then click **Device Guard**.
3.  Click **Upload** to upload your code integrity policy.
4.  After the files are uploaded, click **Sign** to sign the code integrity policy.
5.  Click **Download** to download the signed code integrity policy.

    When you sign a code integrity policy with the Device Guard signing portal, the signing certificate is added to the policy. This means you can't modify this policy. If you need to make changes, make them to an unsigned version of the policy, and then sign the policy again.
