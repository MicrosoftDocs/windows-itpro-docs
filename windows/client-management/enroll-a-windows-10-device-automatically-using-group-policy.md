---
title: Enroll a Windows device automatically using Group Policy
description: Learn how to use a Group Policy to trigger autoenrollment to MDM for Active Directory (AD) domain-joined devices.
ms.topic: conceptual
ms.date: 07/08/2024
ms.collection:
- highpri
- tier2
---

# Enroll a Windows device automatically using Group Policy

You can use a Group Policy to trigger autoenrollment to Mobile Device Management (MDM) for Active Directory (AD) domain-joined devices.

The group policy created on your local AD triggers enrollment into Intune without any user interaction. This cause-and-effect mechanism means you can automatically mass-enroll a large number of domain-joined corporate devices into Microsoft Intune. The enrollment process starts in the background once you sign in to the device with your Microsoft Entra account.

**Requirements**:

- The Active Directory joined device must be running a [supported version of Windows](/windows/release-health/supported-versions-windows-client).
- The enterprise has configured a Mobile Device Management (MDM) service.
- The on-premises Active Directory must be [integrated with Microsoft Entra ID (via Microsoft Entra Connect)](/azure/architecture/reference-architectures/identity/azure-ad).
- Service connection point (SCP) configuration. For more information, see [configuring the SCP using Microsoft Entra Connect](/azure/active-directory/devices/how-to-hybrid-join). For environments not publishing SCP data to AD, see [Microsoft Entra hybrid join targeted deployment](/azure/active-directory/devices/hybrid-join-control#targeted-deployment-of-microsoft-entra-hybrid-join-on-windows-current-devices).
- The device shouldn't already be enrolled in Intune using the classic agents (devices managed using agents fail enrollment with `error 0x80180026`).
- The minimum Windows Server version requirement is based on the Microsoft Entra hybrid join requirement. For more information, see [How to plan your Microsoft Entra hybrid join implementation](/azure/active-directory/devices/hybrid-azuread-join-plan).


> [!TIP]
> For more information, see the following topics:
>
> - [How to configure automatic registration of Windows domain-joined devices with Microsoft Entra ID](/azure/active-directory/active-directory-conditional-access-automatic-device-registration-setup)
> - [How to plan your Microsoft Entra hybrid join implementation](/azure/active-directory/devices/hybrid-azuread-join-plan)
> - [Microsoft Entra integration with MDM](./azure-active-directory-integration-with-mdm.md)

The autoenrollment relies on the presence of an MDM service and the Microsoft Entra registration for the PC. Once the enterprise has registered its AD with Microsoft Entra ID, a Windows PC that is domain joined is automatically Microsoft Entra registered.

> [!NOTE]
> In Windows 10, version 1709, the enrollment protocol was updated to check whether the device is domain-joined. For details, see [\[MS-MDE2\]: Mobile Device Enrollment Protocol Version 2](/openspecs/windows_protocols/ms-mde2/4d7eadd5-3951-4f1c-8159-c39e07cbe692). For examples, see section 4.3.1 RequestSecurityToken of the MS-MDE2 protocol documentation.

When the autoenrollment Group Policy is enabled, a task is created in the background that initiates the MDM enrollment. The task uses the existing MDM service configuration from the Microsoft Entra information of the user. If multifactor authentication is required, the user gets prompted to complete the authentication. Once the enrollment is configured, the user can check the status in the Settings page.

- Starting in Windows 10, version 1709, when the same policy is configured in Group Policy and MDM, Group Policy policy takes precedence over MDM.
- Starting in Windows 10, version 1803, a new setting allows you to change precedence to MDM. For more information, see [Windows Group Policy vs. Intune MDM Policy who wins?](/archive/blogs/cbernier/windows-10-group-policy-vs-intune-mdm-policy-who-wins).

For this policy to work, you must verify that the MDM service provider allows Group Policy initiated MDM enrollment for domain-joined devices.

## Configure the autoenrollment for a group of devices

To configure autoenrollment using a group policy, use the following steps:

1. Create a Group Policy Object (GPO) and enable the Group Policy **Computer Configuration** > **Administrative Templates** > **Windows Components** > **MDM** > **Enable automatic MDM enrollment using default Microsoft Entra credentials**.
1. Create a Security Group for the PCs.
1. Link the GPO.
1. Filter using Security Groups.

If you don't see the policy, get the latest ADMX for your Windows version. To fix the issue, use the following procedures. The latest MDM.admx is backwards compatible.

1. Download the administrative templates for the desired version:

   - [Windows 11, version 23H2](https://www.microsoft.com/download/details.aspx?id=105667)
   - [Windows 11, version 22H2](https://www.microsoft.com/download/details.aspx?id=104593)
   - [Windows 10, version 22H2](https://www.microsoft.com/download/details.aspx?id=104677)

1. Install the package on the Domain Controller.

1. Navigate to `C:\Program Files (x86)\Microsoft Group Policy`, and locate the appropriate subdirectory depending on the installed version.

1. Copy the PolicyDefinitions folder to `\\contoso.com\SYSVOL\contoso.com\policies\PolicyDefinitions`.

   If this folder doesn't exist, then copy the files to the [central policy store](/troubleshoot/windows-client/group-policy/create-and-manage-central-store) for your domain.

1. Wait for the SYSVOL DFSR replication to be completed for the policy to be available.

## Configure the autoenrollment Group Policy for a single PC

This procedure is only for illustration purposes to show how the new autoenrollment policy works. It's not recommended for the production environment in the enterprise.

1. Run `GPEdit.msc`. Choose **Start**, then in the text box type `gpedit`.

1. Under **Best match**, select **Edit group policy** to launch it.

1. In **Local Computer Policy**, select **Administrative Templates** > **Windows Components** > **MDM**.

1. Double-click **Enable automatic MDM enrollment using default Microsoft Entra credentials**. Select **Enable**, select **User Credential** from the dropdown **Select Credential Type to Use**, then select **OK**.

   :::image type="content" alt-text="MDM autoenrollment policy." source="images/autoenrollment-policy.png" lightbox="images/autoenrollment-policy.png":::

   > [!NOTE]
   > In Windows 10, version 1903 and later, the MDM.admx file was updated to include the **Device Credential** option to select which credential is used to enroll the device. The default behavior for older releases is to revert to **User Credential**.
   >
   > **Device Credential** is only supported for Microsoft Intune enrollment in scenarios with Co-management or [Azure Virtual Desktop multi-session host pools](/mem/intune/fundamentals/azure-virtual-desktop-multi-session) because the Intune subscription is user centric. User credentials are supported for [Azure Virtual Desktop personal host pools](/mem/intune/fundamentals/azure-virtual-desktop).

When a group policy refresh occurs on the client, a task is created and scheduled to run every five minutes for one day. The task is called **Schedule created by enrollment client for automatically enrolling in MDM from Microsoft Entra ID**. To see the scheduled task, launch the [Task Scheduler app](#task-scheduler-app).

If two-factor authentication is required, you're prompted to complete the process. Here's an example screenshot.

:::image type="content" source="images/autoenrollment-2-factor-auth.png" alt-text="Screenshot of Two-factor authentication notification.":::

> [!TIP]
> You can avoid this behavior by using Conditional Access Policies in Microsoft Entra ID. Learn more by reading [What is Conditional Access?](/azure/active-directory/conditional-access/overview).

## Verify enrollment

To verify successful enrollment to MDM, go to **Start** > **Settings** > **Accounts** > **Access work or school**, then select your domain account.Select **Info** to see the MDM enrollment information.

:::image type="content" source="images/autoenrollment-settings-work-school.png" alt-text="Screenshot of Work School Settings.":::

> [!NOTE]
> If you don't see the **Info** button or the enrollment information, enrollment might have failed. Check the status in [Task Scheduler app](#task-scheduler-app) and see [Diagnose MDM enrollment](./mdm-diagnose-enrollment.md).

## Task Scheduler app

Select **Start**, then in the text box type `task scheduler`. Under **Best match**, select **Task Scheduler** to launch it.

In **Task Scheduler Library**, open **Microsoft > Windows** , then select **EnterpriseMgmt**.

:::image type="content" alt-text="Autoenrollment scheduled task." source="images/autoenrollment-scheduled-task.png" lightbox="images/autoenrollment-scheduled-task.png":::

To see the result of the task, move the scroll bar to see the **Last Run Result**. You can see the logs in the **History** tab.

The message **0x80180026** is a failure message (`MENROLL_E_DEVICE_MANAGEMENT_BLOCKED`), which can be caused by enabling the **Disable MDM Enrollment** policy.

> [!NOTE]
> The GPEdit console doesn't reflect the status of policies set by your organization on your device. It's only used by the user to set policies.

## Related articles

- [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc753298(v=ws.11))
- [Create and Edit a Group Policy Object](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc754740(v=ws.11))
- [Link a Group Policy Object](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc732979(v=ws.11))
- [Filter Using Security Groups](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc752992(v=ws.11))
- [Enforce a Group Policy Object Link](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc753909(v=ws.11))
- [Getting started with Cloud Native Windows Endpoints](/mem/cloud-native-windows-endpoints)
