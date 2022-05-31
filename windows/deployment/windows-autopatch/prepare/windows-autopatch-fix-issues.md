---
title: Fix issues found by the Readiness assessment tool
description:  This article details how to fix issues found by the Readiness assessment tool
ms.date: 05/30/2022
ms.prod: w11
ms.technology: windows
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
msreviewer: hathind
---

# Fix issues found by the Readiness assessment tool

For each check, the tool will report one of four possible results:

| Result | Meaning |
| ----- | ----- |
| Ready | No action is required before completing enrollment. |
| Advisory | Follow the steps in the tool or this article for the best experience with enrollment and for users.<p><p>You can complete enrollment, but you must fix these issues before you deploy your first device. |
| Not ready | Enrollment will fail if you don't fix these issues. Follow the steps in the tool or this article to resolve them. |
| Error | The Azure Active Directory (AD) role you're using doesn't have sufficient permissions to run this check. |

> [!NOTE]
> The results reported by this tool reflect the status of your settings only at the time that you ran it. If you make changes later to policies in Microsoft Intune, Azure Active Directory (AD), or Microsoft 365, items that were "Ready" can become "Not ready". To avoid problems with Windows Autopatch operations, review the specific settings described in this article before you change any policies.

## Microsoft Intune settings

You can access Intune settings at the [Microsoft Endpoint Manager admin center](https://endpoint.microsoft.com/).

### Unlicensed admins

This setting must be turned on to avoid a "lack of permissions" error when we interact with your Azure Active Directory (AD) organization.

| Result | Meaning |
| ----- | ----- |
| Not ready | Allow access to unlicensed admins should be turned on. Without this setting enabled, errors can occur when we try to access your Azure AD organization for service. You can safely enable this setting without worrying about security implications. The scope of access is defined by the roles assigned to users, including our operations staff.<p><p>For more information, see [Unlicensed admins](/mem/intune/fundamentals/unlicensed-admins). |

### Update rings for Windows 10 or later

Your "Windows 10 update ring" policy in Intune must not target any Windows Autopatch devices.

| Result | Meaning |
| ----- | ----- |
| Not ready | You have an "update ring" policy that targets all devices, all users, or both. Change the policy to use an assignment that targets a specific Azure Active Directory (AD) group that doesn't include any Windows Autopatch devices.<p><p>After enrolling into Autopatch, make sure that any update ring policies you have exclude the **Modern Workplace Devices - All** Azure Active Directory (AD) group.</p><p>For more information, see [Manage Windows 10 software updates in Intune](/mem/intune/protect/windows-update-for-business-configure).</p>|
| Advisory | Both the **Modern Workplace Devices - All** and **Modern Workplace - All** Azure AD groups are groups that we create after you enroll in Windows Autopatch.<p>This advisory appears after enrolling into Autopatch. Check the following:<ol><li>Make sure that any update ring policies you have exclude the **Modern Workplace Devices - All** Azure Active Directory (AD) group.</li><li>If you have assigned Azure AD user groups to these policies, make sure that any update ring policies you have also exclude the **Modern Workplace - All** Azure AD group that you add your Windows Autopatch users to (or an equivalent group).</li></ol>For more information, see [Manage Windows 10 software updates in Intune](/mem/intune/protect/windows-update-for-business-configure). |

## Azure Active Directory settings

You can access Azure Active Directory (AD) settings in the [Azure portal](https://portal.azure.com/).

### Conditional access policies

Conditional access policies must not prevent Windows Autopatch from connecting to your Intune tenant.

| Result | Meaning |
| ----- | ----- |
| Advisory | You have at least one conditional access policy that targets all users or at least one conditional access policy set as required for multi-factor authentication. These policies could prevent Windows Autopatch from managing the Windows Autopatch service.<p><p>During enrollment, we'll attempt to exclude Windows Autopatch service accounts from relevant conditional access policies and apply new conditional access policies to restrict access to these accounts. However, if we're unsuccessful, this can cause errors during your enrollment experience.<p><p>For best practice, [create an assignment that targets a specific Azure Active Directory (AD) group](/azure/active-directory/fundamentals/active-directory-groups-create-azure-portal) that doesn't include Windows Autopatch service accounts.</p> |
| Error | The Intune Administrator  role doesn't have sufficient permissions for this check. You'll also need to have these Azure Active Directory (AD) roles assigned to run this check:<br><ul><li>Security Reader</li><li>Security Administrator</li><li>Conditional Access Administrator</li><li>Global Reader</li><li>Devices Administrator</li></ul> |

### Licenses

Windows Autopatch requires the following licenses:

| Result | Meaning |
| ----- | ----- |
| Not ready | Windows Autopatch requires Windows 10/11 Enterprise E3 (or higher) to be assigned to your users. Additionally, Azure Active Directory Premium, Microsoft Intune and Windows 10/11 Enterprise are required. For more information, see [more about licenses](../prepare/windows-autopatch-prerequisites.md#more-about-licenses). |

### Windows Autopatch service accounts

Certain account names could conflict with account names created  by Windows Autopatch.

| Result | Meaning |
| ----- | ----- |
| Not ready | You have at least one account name that will conflict with account names created by Windows Autopatch. Work with your Microsoft account representative to exclude these account names. We don't list the account names publicly to minimize security risk. |

### Security defaults

Security defaults in Azure Active Directory (AD) will prevent Windows Autopatch from managing your devices.

| Result | Meaning |
| ----- | ----- |
| Not ready | You have Security defaults turned on. Turn off Security defaults and set up conditional access policies. For more information, see [Common conditional access policies](/azure/active-directory/conditional-access/concept-conditional-access-policy-common). |
