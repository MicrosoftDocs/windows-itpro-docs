---
title: Fix issues found by the Readiness assessment tool
description: This article details how to fix issues found by the Readiness assessment tool.
ms.date: 01/12/2023
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
ms.reviewer: hathind
ms.collection:
  - highpri
  - tier1
---

# Fix issues found by the Readiness assessment tool

Seeing issues with your tenant? This article details how to remediate issues found with your tenant.

> [!NOTE]
> If you need more assistance with tenant enrollment, you can [submit a tenant enrollment support request](../prepare/windows-autopatch-enrollment-support-request.md).

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

You can access Intune settings at the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

### Update rings for Windows 10 or later

Your "Update rings for Windows 10 or later" policy in Intune must not target any Windows Autopatch devices.

| Result | Meaning |
| ----- | ----- |
| Advisory |  You have an "update ring" policy that targets all devices, all users, or both. Windows Autopatch will also create our own update ring policies during enrollment. To avoid conflicts with Windows Autopatch devices, we'll exclude our devices group from your existing update ring policies that target all devices, all users, or both. You must consent to this change when you go to enroll your tenant.</p>|

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
