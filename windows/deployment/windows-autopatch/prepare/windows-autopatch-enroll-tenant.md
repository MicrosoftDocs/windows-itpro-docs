---
title: Enroll your tenant
description:  This article details how to enroll your tenant
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

# Enroll your tenant

Before you enroll in Windows Autopatch, there are settings and other parameters you must set ahead of time.

The Readiness assessment tool, accessed through the [Windows Autopatch admin center](https://endpoint.microsoft.com/), checks management or configuration -related settings. This tool allows you to check the relevant settings and detailed steps to fix any settings that aren't configured properly for Windows Autopatch.  

## Step 1: Review all prerequisites

To start using the Windows Autopatch service, ensure you meet the [Windows Autopatch prerequisites](../prepare/windows-autopatch-prerequisites.md).

## Step 2: Run the Readiness assessment tool

> [!IMPORTANT]
> The online Readiness assessment tool helps you check your readiness to enroll in Windows Autopatch for the first time. Once you enroll, you'll no longer be able to access the  tool again.

The Readiness assessment tool checks the settings in [Microsoft Endpoint Manager](#microsoft-intune-settings) (specifically, Microsoft Intune) and [Azure Active Directory](#azure-active-directory-settings) (Azure AD) to ensure they'll work with Windows Autopatch. We aren't, however, checking the workloads in Configuration Manager necessary for Windows Autopatch. For more information about workload prerequisites, see [Co-management requirements](../prepare/windows-autopatch-prerequisites.md#co-management-requirements).

**To access and run the Readiness assessment tool:**

> [!IMPORTANT]
> You must be a Global Administrator to enroll your tenant.

1. Go to the [Microsoft Endpoint Manager admin center](https://endpoint.microsoft.com/).
2. In the left pane, select Tenant administration and then navigate to Windows Autopatch > **Tenant enrollment**.

> [!IMPORTANT]
> If you don't see the Tenant enrollment blade, this is because you don't meet the prerequisites or the proper licenses. For more information, see [Windows Autopatch prerequisites](windows-autopatch-prerequisites.md).

A Global Administrator should be used to run this tool. Other roles, such as the Global Reader and Intune Administrator have insufficient permissions to complete the checks on Conditional Access Policies and Multi-factor Authentication. For more information about the extra permissions, see [Conditional access policies](../prepare/windows-autopatch-fix-issues.md#conditional-access-policies).

The Readiness assessment tool checks the following settings:

### Microsoft Intune settings

The following are the Microsoft Intune settings:

| Check | Description |
| ----- | ----- |
| Update rings for Windows 10 or later | Verifies that Intune's Update rings for Windows 10 or later policy doesn't target all users or all devices. The policy shouldn't target any Windows Autopatch devices. |
| Unlicensed admin | Verifies that this setting is enabled to avoid a "lack of permissions" error when we interact with your Azure Active Directory (AD) organization. |

### Azure Active Directory settings

The following are the Azure Active Directory settings:

| Check | Description |
| ----- | ----- |
| Conditional access | Verifies that conditional access policies and multi-factor authentication aren't assigned to all users.<p><p>Conditional access policies shouldn't be assigned to Windows Autopatch service accounts. For more information on steps to take, see [Conditional access policies](../prepare/windows-autopatch-fix-issues.md#conditional-access-policies). |
| Windows Autopatch service accounts | Checks that no usernames conflict with ones that Windows Autopatch reserves for its own use. |
| Security defaults | Checks whether your Azure Active Directory organization has security defaults enabled. |
| Licenses | Checks that you've obtained the necessary [licenses](../prepare/windows-autopatch-prerequisites.md#more-about-licenses). |

For each check, the tool will report one of four possible results:  

| Result | Meaning |
| ----- | ----- |
| Ready | No action is required before completing enrollment. |
| Advisory | Follow the steps in the tool or this article for the best experience with enrollment and for users.<p><p>You can complete enrollment, but you must fix these issues before you deploy your first device. |
| Not ready | Enrollment will fail if you don't fix these issues. Follow the steps in the tool or this article to resolve them. |
| Error | The Azure Active Directory (AD) role you're using doesn't have sufficient permissions to run this check. |

### Seeing issues with your tenant?

If the Readiness assessment tool is displaying issues with your tenant, see [Fix issues found by the Readiness assessment tool](../prepare/windows-autopatch-fix-issues.md) for more information on how to remediate.  

### Delete data collected from the Readiness assessment tool

Windows Autopatch retains the data associated with these checks for 12 months after the last time you ran a check in your Azure Active Directory organization (tenant). After 12 months, we retain the data in a de-identified form. You can choose to delete the data we collect directly within the Readiness assessment tool.

> [!NOTE]
> Windows Autopatch will only delete the results we collect within the Readiness assessment tool; Autopatch won't delete any other tenant-level data.

**To delete the data we collect:**

1. Go to the [Microsoft Endpoint Manager admin center](https://endpoint.microsoft.com/).
2. Navigate to Windows Autopatch > **Tenant enrollment**.
3. Select **Delete all data**.

## Step 3: Enroll your tenant

> [!IMPORTANT]
> You must be a Global Administrator to enroll your tenant.

Once the Readiness assessment tool provides you with a "Ready" result, you're ready to enroll!

**To enroll your tenant:**

Within the Readiness assessment tool, you'll now see the **Enroll** button. By selecting **Enroll**, you'll kick off the enrollment of your tenant to the Windows Autopatch service. During the enrollment workflow, you'll see the following:

- Consent workflow to manage your tenant.
- Provide Windows Autopatch with IT admin contacts.
- Setup of the Windows Autopatch service on your tenant. This step is where we'll create the policies, groups and accounts necessary to run the service.

Once these actions are complete, you've now successfully enrolled your tenant. Ensure you've [added and verified your admin contacts](../deploy/windows-autopatch-admin-contacts.md) before you [register your devices](../deploy/windows-autopatch-register-devices.md).
