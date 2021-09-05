---
title: Deploying Windows Defender Application Control (WDAC) policies (Windows)
description: Learn how to plan and implement a WDAC deployment.
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: jogeurte
ms.author: dansimp
manager: dansimp
ms.date: 05/16/2018
ms.technology: mde
---

# Deploying Windows Defender Application Control (WDAC) policies

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2016 and above

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Defender App Guard feature availability](feature-availability.md).

You should now have one or more WDAC policies ready to deploy. If you haven't yet completed the steps described in the [WDAC Design Guide](windows-defender-application-control-design-guide.md), do so now before proceeding.

## Plan your deployment

As with any significant change to your environment, implementing application control can have unintended consequences. To ensure the best chance for success, you should follow safe deployment practices and plan your deployment carefully. Decide what devices you will manage with WDAC and split them into deployment rings so you can control the scale of the deployment and respond if anything goes wrong. Define the success criteria that will determine when it's safe to continue from one ring to the next.

All WDAC policy changes should be deployed in audit mode before proceeding to enforcement. Carefully monitor events from devices where the policy has been deployed to ensure the block events you observe match your expectation before broadening the deployment to other deployment rings. If your organization uses Microsoft Defender for Endpoint, you can use the Advanced Hunting feature to centrally monitor WDAC-related events. Otherwise, we recommend using an event log forwarding solution to collect relevant events from your managed endpoints.

## Choose how to deploy WDAC policies

There are several options to deploy WDAC policies to managed endpoints, including:

1. [Deploy using a Mobile Device Management (MDM) solution](deploy-windows-defender-application-control-policies-using-intune.md), such as Microsoft Intune
2. [Deploy using Microsoft Endpoint Configuration Manager (MEMCM)](deployment/deploy-wdac-policies-with-memcm.md)
3. [Deploy via script](deployment/deploy-wdac-policies-with-script.md)
4. [Deploy via Group Policy](deploy-windows-defender-application-control-policies-using-group-policy.md)
