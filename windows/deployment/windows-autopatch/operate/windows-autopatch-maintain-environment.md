---
title: Maintain the Windows Autopatch environment
description: This article details how to maintain the Windows Autopatch environment
ms.date: 07/11/2022
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
msreviewer: hathind
---

# Maintain the Windows Autopatch environment

After you've completed enrollment in Windows Autopatch, some management settings might need to be adjusted. Use the following steps:

1. Review the [Microsoft Intune settings](#microsoft-intune-settings) described in the following section.
1. If any of the items apply to your environment, make the adjustments as described.

> [!NOTE]
> As your operations continue in the following months, if you make changes after enrollment to policies in Microsoft Intune, Azure Active Directory, or Microsoft 365 that affect Windows Autopatch, it's possible that Windows Autopatch could stop operating properly. To avoid problems with the service, check the specific settings described in [Fix issues found by the readiness assessment tool](../prepare/windows-autopatch-fix-issues.md) before you change the policies listed there.

## Microsoft Intune settings

| Setting | Description |
| ----- | ----- |
| Update rings for Windows 10 or later | For any update rings for Windows 10 or later policies you've created, exclude the **Modern Workplace Devices - All** Azure AD group from each policy. For more information, see [Create and assign update rings](/mem/intune/protect/windows-10-update-rings#create-and-assign-update-rings).<p>Windows Autopatch will also have created some update ring policies. all of which The policies will have "**Modern Workplace**" in the name. For example:</p><ul><li>Modern Workplace Update Policy [Broad]-[Windows Autopatch]</li><li>Modern Workplace Update Policy [Fast]-[Windows Autopatch]</li><li>Modern Workplace Update Policy [First]-[Windows Autopatch]</li><li>Modern Workplace Update Policy [Test]-[Windows Autopatch]</li></ul><p>When you update your own policies, ensure that you don't exclude the **Modern Workplace Devices - All** Azure AD group from the policies that Windows Autopatch created.</p><p>**To resolve the Not ready result:**</p><p>After enrolling into Autopatch, make sure that any update ring policies you have **exclude** the **Modern Workplace Devices - All** Azure Active Directory (AD) group.For more information, see [Manage Windows 10 software updates in Intune](/mem/intune/protect/windows-update-for-business-configure).</p><p>**To resolve the Advisory result:**</p><ol><li>Make sure that any update ring policies you have **exclude** the **Modern Workplace Devices - All** Azure Active Directory (AD) group.</li> <li>If you have assigned Azure AD user groups to these policies, make sure that any update ring policies you have also **exclude** the **Modern Workplace - All** Azure AD group that you add your Windows Autopatch users to (or an equivalent group).</li></ol><p>For more information, see [Manage Windows 10 software updates in Intune](/mem/intune/protect/windows-update-for-business-configure).</p> |

## Windows Autopatch configurations

Windows Autopatch deploys, manages and maintains all configurations related to the operation of the service, as described in [Changes made at tenant enrollment](../references/windows-autopatch-changes-to-tenant.md). Don't make any changes to any of the Windows Autopatch configurations.

## Windows Autopatch tenant actions

The **Tenant management** blade can be found by navigating to Tenant administration > Windows Autopatch > **Tenant management**.

> [!IMPORTANT]
> Starting October 12, 2022, Windows Autopatch will manage your tenant with our [first party enterprise applications](../references/windows-autopatch-changes-to-tenant.md#windows-autopatch-enterprise-applications). If your tenant is still using the [Windows Autopatch service accounts](../references/windows-autopatch-privacy.md#service-accounts), your Global admin must take action in the new Windows Autopatch Tenant management blade to approve the configuration change. To take action or see if you need to take action, visit the Tenant management blade in the Windows Autopatch portal.

The type of banner that appears depends on the severity of the action. Currently, only critical actions are listed.

### Tenant action severity types

| Severity | Description |
| ----- | ----- |
| Critical | You must take action as soon as possible. If no action is taken, the Windows Autopatch service may be affected. |
