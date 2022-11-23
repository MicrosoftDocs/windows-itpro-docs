---
title: Fix issues found by the Readiness assessment tool
description: This article details how to fix issues found by the Readiness assessment tool
ms.date: 11/17/2022
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
msreviewer: hathind
---

# Fix issues found by the Readiness assessment tool

Seeing issues with your tenant? This article details how to remediate issues found with your tenant. 

If you need more assistance with tenant enrollment, you can submit a [tenant enrollment support request](#submit-a-support-request).

## Check results

For each check, the tool will report one of four possible results:

| Result | Meaning |
| ----- | ----- |
| Ready | No action is required before completing enrollment. |
| Advisory | Follow the steps in the tool or this article for the best experience with enrollment and for users.<p><p>You can complete enrollment, but you must fix these issues before you deploy your first device. |
| Not ready | You must fix these issues before enrollment. You won’t be able to enroll into Windows Autopatch if you don't fix these issues. Follow the steps in the tool or this article to resolve them.  |
| Error | The Azure Active Directory (AD) role you're using doesn't have sufficient permission to run this check or your tenant isn't properly licensed for Microsoft Intune. |

> [!NOTE]
> The results reported by this tool reflect the status of your settings only at the time that you ran it. If you make changes later to policies in Microsoft Intune, Azure Active Directory (AD), or Microsoft 365, items that were "Ready" can become "Not ready". To avoid problems with Windows Autopatch operations, review the specific settings described in this article before you change any policies.

## Microsoft Intune settings

You can access Intune settings at the [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

### Unlicensed admins

This setting must be turned on to avoid a "lack of permissions" error when we interact with your Azure Active Directory (AD) organization.

| Result | Meaning |
| ----- | ----- |
| Not ready | Allow access to unlicensed admins should be turned on. Without this setting enabled, errors can occur when we try to access your Azure AD organization for service. You can safely enable this setting without worrying about security implications. The scope of access is defined by the roles assigned to users, including our operations staff.<p><p>For more information, see [Unlicensed admins](/mem/intune/fundamentals/unlicensed-admins). |

### Update rings for Windows 10 or later

Your "Windows 10 update ring" policy in Intune must not target any Windows Autopatch devices.

| Result | Meaning |
| ----- | ----- |
| Not ready | You have an "update ring" policy that targets all devices, all users, or both.<p>To resolve, change the policy to use an assignment that targets a specific Azure Active Directory (AD) group that doesn't include any Windows Autopatch devices.</p><p>For more information, see [Manage Windows 10 software updates in Intune](/mem/intune/protect/windows-update-for-business-configure).</p> |
| Advisory | Both the **Modern Workplace Devices - All** and **Modern Workplace - All** Azure AD groups are groups that we create after you enroll in Windows Autopatch.<p>You can continue with enrollment. However, you must resolve the advisory prior to deploying your first device. To resolve the advisory, see [Maintain the Windows Autopatch environment](../operate/windows-autopatch-maintain-environment.md).</p>|

## Azure Active Directory settings

You can access Azure Active Directory (AD) settings in the [Azure portal](https://portal.azure.com/).

### Co-management

Co-management enables you to concurrently manage Windows 10 or later devices by using both Configuration Manager and Microsoft Intune.

| Result | Meaning |
| ----- | ----- |
| Advisory | To successfully enroll devices that are co-managed into Windows Autopatch, it's necessary that the following co-managed workloads are set to **Intune**:<ul><li>Device configuration</li><li>Windows update policies</li><li>Office 365 client apps</li></ul><p>If co-management doesn't apply to your tenant, this check can be safely disregarded, and it won't block device deployment.</p> |

### Licenses

Windows Autopatch requires the following licenses:

| Result | Meaning |
| ----- | ----- |
| Not ready | Windows Autopatch requires Windows 10/11 Enterprise E3 (or higher) to be assigned to your users. Additionally, Azure Active Directory Premium, and Microsoft Intune are required. For more information, see [more about licenses](../prepare/windows-autopatch-prerequisites.md#more-about-licenses). |
