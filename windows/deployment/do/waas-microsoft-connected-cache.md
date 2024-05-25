---
title: Microsoft Connected Cache overview
description: This article provides information about Microsoft Connected Cache (MCC), a software-only caching solution.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: overview
author: cmknox
ms.author: carmenf
manager: aaroncz
ms.reviewer: mstewart
ms.collection: tier3
ms.localizationpriority: medium
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
ms.date: 05/23/2024
---

# What is Microsoft Connected Cache?

> [!IMPORTANT]
> Microsoft Connected Cache is currently a preview feature. For more information, see [Supplemental Terms of Use for Microsoft Azure Previews](https://azure.microsoft.com/support/legal/preview-supplemental-terms/).

Microsoft Connected Cache is a software-only caching solution that delivers Microsoft content. Microsoft Connected Cache has two main offerings:

- Microsoft Connected Cache for Internet Service Providers
- Microsoft Connected Cache for Enterprise and Education (early preview)

Both products are created and managed in the cloud portal.

## Microsoft Connected Cache for ISPs (preview)

> [!NOTE]
> Microsoft Connected Cache for Internet Service Providers is now in public preview. To onboard, follow the instructions in the [Operator sign up and service onboarding](mcc-isp-signup.md) article.

Microsoft Connected Cache (MCC) for Internet Service Providers is currently in preview. MCC can be deployed to as many bare-metal servers or VMs as needed and is managed from a cloud portal. When deployed, MCC can help to reduce your network bandwidth usage for Microsoft software content and updates. Cache nodes are created in the cloud portal and are configured to deliver traffic to customers by manual CIDR or BGP routing. Learn more at [Microsoft Connected Cache for ISPs Overview](mcc-isp-overview.md).

## Microsoft Connected Cache for Enterprise and Education (early preview)

> [!NOTE]
> As we near the release of public preview, we have paused onboarding. Please continue to submit the form to express interest so we can follow up with you once public preview of Microsoft Connected Cache for Enteprise and Education is available. To register your interest, fill out the form located at [https://aka.ms/MSConnectedCacheSignup](https://aka.ms/MSConnectedCacheSignup).

Microsoft Connected Cache (MCC) for Enterprise and Education (early preview) is a software-only caching solution that delivers Microsoft content within Enterprise and Education networks. MCC can be deployed to as many Windows servers, bare-metal servers, or VMs as needed, and is managed from a cloud portal. Cache nodes are created in the cloud portal and are configured by applying the client policy using management tools such as Intune. Learn more at [Microsoft Connected Cache for Enterprise and Education Overview](mcc-ent-edu-overview.md).

Microsoft Connected Cache (MCC) for Enterprise and Education (early preview) is a standalone cache for customers moving towards modern management and away from Configuration Manager distribution points. For Microsoft Connected Cache in Configuration Manager (generally available starting Configuration Manager version 2111), see [Microsoft Connected Cache in Configuration Manager](/mem/configmgr/core/plan-design/hierarchy/microsoft-connected-cache)

## Next steps

- [Microsoft Connected Cache for ISPs Overview](mcc-isp-overview.md)
- [Microsoft Connected Cache for Enterprise and Education Overview](mcc-ent-edu-overview.md)
