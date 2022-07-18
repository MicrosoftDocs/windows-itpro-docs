---
title: Deploying Windows Defender Application Control (WDAC) policies
description: Learn how to plan and implement a WDAC deployment.
ms.prod: m365-security
ms.technology: windows-sec
ms.localizationpriority: medium
ms.collection: M365-security-compliance
author: jgeurten
ms.reviewer: aaroncz
ms.author: jogeurte
manager: jsuther
ms.date: 06/27/2022
ms.topic: overview
---

# Deploying Windows Defender Application Control (WDAC) policies

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2016 and above

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](feature-availability.md).

You should now have one or more Windows Defender Application Control (WDAC) policies ready to deploy. If you haven't yet completed the steps described in the [WDAC Design Guide](windows-defender-application-control-design-guide.md), do so now before proceeding.

## Plan your deployment

As with any significant change to your environment, implementing application control can have unintended consequences. To ensure the best chance for success, you should follow safe deployment practices and plan your deployment carefully. Decide what devices you will manage with Windows Defender Application Control and split them into deployment rings so you can control the scale of the deployment and respond if anything goes wrong. Define the success criteria that will determine when it's safe to continue from one ring to the next.

All Windows Defender Application Control policy changes should be deployed in audit mode before proceeding to enforcement. Carefully monitor events from devices where the policy has been deployed to ensure the block events you observe match your expectation before broadening the deployment to other deployment rings. If your organization uses Microsoft Defender for Endpoint, you can use the Advanced Hunting feature to centrally monitor WDAC-related events. Otherwise, we recommend using an event log forwarding solution to collect relevant events from your managed endpoints.

## Choose how to deploy WDAC policies

There are several options to deploy Windows Defender Application Control policies to managed endpoints, including:

- [Deploy using a Mobile Device Management (MDM) solution](deployment/deploy-windows-defender-application-control-policies-using-intune.md), such as Microsoft Intune
- [Deploy using Microsoft Endpoint Configuration Manager](deployment/deploy-wdac-policies-with-memcm.md)
- [Deploy via script](deployment/deploy-wdac-policies-with-script.md)
- [Deploy via group policy](deployment/deploy-windows-defender-application-control-policies-using-group-policy.md)
