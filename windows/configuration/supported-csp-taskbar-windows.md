---
title: Supported CSP policies to customize the Taskbar on Windows 11 | Microsoft Docs
description: See a list of the Policy CSP - Start items that are supported on Windows 11 to customize the Taskbar.
ms.assetid: 
manager: dougeby
ms.author: mandia
ms.reviewer: chataylo
ms.prod: w11
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: mobile
author: MandiOhlinger
ms.date: 09/16/2021
ms.localizationpriority: medium
---

# Supported configuration service provider (CSP) policies for Windows 11 taskbar

**Applies to**:

- Windows 11

The Windows OS exposes CSPs that are used by MDM providers, like [Microsoft Endpoint Manager](/mem/endpoint-manager-overview). In an MDM policy, these CSPs are settings that you configure in a policy. When the policy is ready, you deploy the policy to your devices.

This article lists the CSPs that are available to customize the Taskbar for Windows 11 devices. Windows 11 uses the [Policy CSP - Start](/windows/client-management/mdm/policy-csp-start).

For more general information, see [Configuration service provider (CSP) reference](/windows/client-management/mdm/configuration-service-provider-reference).

## Existing CSP policies that Windows 11 taskbar supports

- [Start/HideRecentJumplists CSP](/windows/client-management/mdm/policy-csp-start.mdstart-hiderecentjumplists)
  - Group policy: User Configuration\Administrative Templates\Start Menu and Taskbar\Do not keep history of recently opened documents
  - Local setting: Settings > Personalization > Start > Show recently opened items in Jump Lists on Start or the taskbar

- [Start/NoPinningToTaskbar](/windows/client-management/mdm/policy-csp-start#start-nopinningtotaskbar)
  - Group policy: ??
    User Configuration\Administrative Templates\Start Menu and Taskbar\Do not allow pinning programs to the Taskbar 
    --OR--
    User Configuration\Administrative Templates\Start Menu and Taskbar\Removed pinned programs from the Taskbar
  - Local setting: None

