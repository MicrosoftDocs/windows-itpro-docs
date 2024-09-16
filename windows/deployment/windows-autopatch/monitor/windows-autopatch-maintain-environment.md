---
title: Maintain the Windows Autopatch environment
description: This article details how to maintain the Windows Autopatch environment
ms.date: 09/16/2024
ms.service: windows-client
ms.subservice: autopatch
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.reviewer: smithcharles
ms.collection:
  - highpri
  - tier1
---

# Maintain the Windows Autopatch environment

[!INCLUDE [windows-autopatch-enterprise-e3-f3-licenses](../includes/windows-autopatch-enterprise-e3-f3-licenses.md)]

After you [activate Windows Autopatch features](../prepare/windows-autopatch-feature-activation.md), some management settings might need to be adjusted. If any of the following items apply to your environment, make the adjustments as described.

> [!NOTE]
> As your operations continue in the following months, if you make changes after enrollment to policies in Microsoft Intune, Microsoft Entra ID, or Microsoft 365 that affect Windows Autopatch, it's possible that Windows Autopatch could stop operating properly.

## Windows Autopatch configurations

Windows Autopatch deploys, manages, and maintains all configurations related to the operation of the service, as described in [Changes made at feature activation](../references/windows-autopatch-changes-made-at-feature-activation.md). Don't make any changes to any of the Windows Autopatch configurations.

## Windows Autopatch tenant management

### Windows Autopatch tenant actions

The Tenant management blade presents IT admins with any actions that are required to maintain Windows Autopatch service health. The **Tenant management** blade can be found by navigating to **Tenant administration** > **Windows Autopatch** > **Tenant management**.

> [!IMPORTANT]
> If you have any critical actions in your tenant, you must take action as soon as possible as the Windows Autopatch service might not be able to manage your tenant. When a critical action is active on your tenant, Windows Autopatch will consider your tenant as **[inactive](#inactive-status)**.

The type of banner that appears depends on the severity of the action. Currently, only critical actions are listed.

### Tenant action severity types

| Severity | Description |
| ----- | ----- |
| Critical | You must take action as soon as possible to avoid disruption to the Windows Autopatch service.<p>If no action is taken, Windows Autopatch might not be able to manage devices in your tenant, and the Windows Autopatch service might be marked as **inactive**.</p><p>To restore service health and return to an active status, all critical pending actions must be resolved.</p> |

### Critical actions

| Action type | Severity | Description |
| ----- | ----- | ----- |
| Maintain tenant access | Critical | Required licenses expired. The licenses include:<ul><li>Microsoft Intune</li><li>Microsoft Entra ID P1 or P2</li><li>Windows 10/11 Enterprise E3 or higher</li><ul><li>For more information about specific services plans, see [Windows Autopatch Prerequisites](../prepare/windows-autopatch-prerequisites.md)</li></ul><p>To take action on missing licenses, you can visit the Microsoft 365 admin center or contact your Microsoft account manager. Until you renew the required licenses to run the service, Windows Autopatch marks your tenant as **inactive**. For more information, see [Microsoft 365 - What happens after my subscription expires?](/microsoft-365/commerce/subscriptions/what-if-my-subscription-expires)</p> |
| Maintain tenant access | Critical | Address tenant access issues. Windows Autopatch currently can't manage your tenant. Until you take action, your tenant is marked as **inactive**, and you have only limited access to the Windows Autopatch portal.<p>Reasons for tenant access issues:<ul><li>You didn't migrate to the new [Windows Autopatch enterprise application](../references/windows-autopatch-changes-made-at-feature-activation.md#windows-autopatch-enterprise-applications). Windows Autopatch uses this enterprise application to run the service.</li><li>You blocked or removed the permissions required for the Windows Autopatch enterprise application.</li></ul><p>Take action by consenting to allow Windows Autopatch to make the appropriate changes on your behalf. You must be a Global Administrator to consent to this action. Once you provide consent, Windows Autopatch remediates this critical action for you.</p><p>For more information, see [Windows Autopatch enterprise applications](../overview/windows-autopatch-privacy.md#tenant-access).</p> |

### Inactive status

> [!NOTE]
> Only the Windows Autopatch sections of your tenant will be marked as **inactive**.

When Windows Autopatch is **inactive**, you're alerted with banners on all Windows Autopatch blades. You only have access to the Tenant management and Support requests blades. All other blades return an error message and redirect you to Tenant management blade.

To be taken out of the **inactive** status, you must [resolve any critical actions shown in the Tenant management blade](#critical-actions).

> [!NOTE]
> Once critical actions are resolved, it can take up to two hours for Windows Autopatch to return to an **active** state.

#### Impact to your tenant

| Impact area | Description |
| ----- | ----- |
| Management | Windows Autopatch isn't able to manage your tenant and perform non-interactive actions we use to run the service. Non-interactive actions include:<ul><li>Managing the Windows Autopatch service</li><li>Publishing the baseline configuration updates to your tenant's devices</li><li>Maintaining overall service health</li></ul><p>For more information, see [Windows Autopatch enterprise applications](../references/windows-autopatch-changes-made-at-feature-activation.md#windows-autopatch-enterprise-applications).</p>|
| Device updates | Changes to Windows Autopatch policies aren't pushed to your devices. The existing configurations on these devices remain unchanged, and they continue receiving updates. |
