---
title: Create a WDAC policy for lightly-managed devices (Windows 10)
description: Windows Defender Application Control restricts which applications users are allowed to run and the code that runs in the system core.
keywords: whitelisting, security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: isbrahm
ms.author: dansimp
manager: dansimp
ms.date: 11/15/2019
---

# Create a WDAC policy for lightly-managed devices

**Applies to:**

-   Windows 10
-   Windows Server 2016 and above

This section outlines the process to create a WDAC policy for lightly-managed devices within an organization. Typically, organizations that are new to application control will be most successful if they start with a permissive policy like the one described in this topic. Organizations can choose to harden the policy over time to achieve a stronger overall security posture on their WDAC managed devices as described in later topics.

## Example: Lamna Healthcare Company

As described in the [previous topic](types-of-devices.md), Lamna Healthcare Company (Lamna) is attempting to adopt stronger application policies, including the use of application control to prevent unwanted or unauthorized applications from running on their managed devices. Alice Pena is the IT team lead tasked with the roll out of WDAC. Recognizing where Lamna is starting from, with very loose application policies, Alice knows that she will need to take an incremental approach to application control that begins with a very relaxed initial policy for most user devices.