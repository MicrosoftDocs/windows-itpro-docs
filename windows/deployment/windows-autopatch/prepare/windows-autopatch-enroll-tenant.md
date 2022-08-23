---
title: Enroll your tenant
description:  This article details how to enroll your tenant
ms.date: 07/11/2022
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

> [!IMPORTANT]
> You must be a Global Administrator to enroll your tenant.

The Readiness assessment tool, accessed through the [Windows Autopatch admin center](https://endpoint.microsoft.com/), checks management or configuration-related settings. This tool allows you to check the relevant settings, and details steps to fix any settings that aren't configured properly for Windows Autopatch.  

## Step 1: Review all prerequisites

To start using the Windows Autopatch service, ensure you meet the [Windows Autopatch prerequisites](../prepare/windows-autopatch-prerequisites.md).

## Step 2: Run the Readiness assessment tool

> [!IMPORTANT]
> The online Readiness assessment tool helps you check your readiness to enroll in Windows Autopatch for the first time. Once you enroll, you'll no longer be able to access the  tool again.

The Readiness assessment tool checks the settings in [Microsoft Endpoint Manager](#microsoft-intune-settings) (specifically, Microsoft Intune) and [Azure Active Directory](#azure-active-directory-settings) (Azure AD) to ensure they'll work with Windows Autopatch. We aren't, however, checking the workloads in Configuration Manager necessary for Windows Autopatch. For more information about workload prerequisites, see [Configuration Manager Co-management requirements](../prepare/windows-autopatch-prerequisites.md#configuration-manager-co-management-requirements).

**To access and run the Readiness assessment tool:**

> [!IMPORTANT]
> You must be a Global Administrator to run the Readiness assessment tool.

1. Go to the [Microsoft Endpoint Manager admin center](https://endpoint.microsoft.com/).
2. In the left pane, select Tenant administration and then navigate to Windows Autopatch > **Tenant enrollment**.

> [!IMPORTANT]
> If you don't see the Tenant enrollment blade, this is because you don't meet the prerequisites or the proper licenses. For more information, see [Windows Autopatch prerequisites](windows-autopatch-prerequisites.md#more-about-licenses).

A Global Administrator should be used to run this tool. Other roles, such as the Global Reader and Intune Administrator have insufficient permissions to complete the checks on Conditional Access Policies and Multi-factor Authentication. For more information about the extra permissions, see [Conditional access policies](../prepare/windows-autopatch-fix-issues.md#conditional-access-policies).

The Readiness assessment tool checks the following settings:

### Microsoft Intune settings

The following are the Microsoft Intune settings:

| Check | Description |
| ----- | ----- |
| Update rings for Windows 10 or later | Verifies that Intune's Update rings for Windows 10 or later policy doesn't target all users or all devices. Policies of this type shouldn't target any Windows Autopatch devices. For more information, see [Configure update rings for Windows 10 and later in Intune](/mem/intune/protect/windows-10-update-rings). |
| Unlicensed admin | Verifies that this setting is enabled to avoid a "lack of permissions" error when we interact with your Azure Active Directory (AD) organization. For more information, see [Unlicensed admins in Microsoft Intune](/mem/intune/fundamentals/unlicensed-admins). |

### Azure Active Directory settings

The following are the Azure Active Directory settings:

| Check | Description |
| ----- | ----- |
| Co-management | Advisory only checks if co-management is applicable to ensure that the proper workloads are in place for Windows Autopatch. Should co-management not apply to your tenant, this check can be safely disregarded and will not block the deployment of devices. |
| Licenses | Checks that you've obtained the necessary [licenses](../prepare/windows-autopatch-prerequisites.md#more-about-licenses). |

### Check results

For each check, the tool will report one of four possible results:  

| Result | Meaning |
| ----- | ----- |
| Ready | No action is required before completing enrollment. |
| Advisory | Follow the steps in the tool or this article for the best experience with enrollment and for users.<p><p>You can complete enrollment, but you must fix these issues before you deploy your first device. |
| Not ready | You must fix these issues before enrollment. You won’t be able to enroll into Windows Autopatch if you don't fix these issues. Follow the steps in the tool or this article to resolve them.  |
| Error | The Azure Active Directory (AD) role you're using doesn't have sufficient permissions to run this check. |

## Step 3: Fix issues with your tenant

If the Readiness assessment tool is displaying issues with your tenant, see [Fix issues found by the Readiness assessment tool](../prepare/windows-autopatch-fix-issues.md) for more information on how to remediate.  

## Step 4: Enroll your tenant

> [!IMPORTANT]
> You must be a Global Administrator to enroll your tenant.

Once the Readiness assessment tool provides you with a "Ready" result, you're ready to enroll!

**To enroll your tenant:**

Within the Readiness assessment tool, you'll now see the **Enroll** button. By selecting **Enroll**, you'll kick off the enrollment of your tenant to the Windows Autopatch service. During the enrollment workflow, you'll see the following:

- Consent workflow to manage your tenant.
- Provide Windows Autopatch with IT admin contacts.
- Setup of the Windows Autopatch service on your tenant. This step is where we'll create the policies, groups and accounts necessary to run the service.

Once these actions are complete, you've now successfully enrolled your tenant.

> [!NOTE]
> For more information about changes made to your tenant, see [Changes made at tenant enrollment](../references/windows-autopatch-changes-to-tenant.md).

### Delete data collected from the Readiness assessment tool

You can choose to delete the data we collect directly within the Readiness assessment tool.

Windows Autopatch retains the data associated with these checks for 12 months after the last time you ran a check in your Azure Active Directory organization (tenant). After 12 months, we retain the data in a de-identified form.

> [!NOTE]
> Windows Autopatch will only delete the results we collect within the Readiness assessment tool; Autopatch won't delete any other tenant-level data.

**To delete the data we collect:**

1. Go to the [Microsoft Endpoint Manager admin center](https://endpoint.microsoft.com/).
2. Navigate to Windows Autopatch > **Tenant enrollment**.
3. Select **Delete all data**.

## Next steps

1. Maintain your [Windows Autopatch environment](../operate/windows-autopatch-maintain-environment.md).
1. Ensure you've [added and verified your admin contacts](../deploy/windows-autopatch-admin-contacts.md) before you [register your devices](../deploy/windows-autopatch-register-devices.md).
