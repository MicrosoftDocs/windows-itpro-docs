---
title: Enroll a Windows 10 device automatically using Group Policy
description: Learn how to use a Group Policy to trigger auto-enrollment to MDM for Active Directory (AD) domain-joined devices.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 04/30/2022
ms.reviewer: 
manager: aaroncz
ms.collection: highpri
---

# Enroll a Windows 10 device automatically using Group Policy

**Applies to:**

-   Windows 10

Starting in Windows 10, version 1709, you can use a Group Policy to trigger auto-enrollment to Mobile Device Management (MDM) for Active Directory (AD) domain-joined devices.

The enrollment into Intune is triggered by a group policy created on your local AD and happens without any user interaction. This cause-and-effect mechanism means you can automatically mass-enroll a large number of domain-joined corporate devices into Microsoft Intune. The enrollment process starts in the background once you sign in to the device with your Azure AD account.

Requirements:
- Active Directory-joined PC running Windows 10, version 1709 or later
- The enterprise has configured a mobile device management (MDM) service
- The on-premises Active Directory must be [integrated with Azure AD (via Azure AD Connect)](/azure/architecture/reference-architectures/identity/azure-ad)
- The device shouldn't already be enrolled in Intune using the classic agents (devices managed using agents will fail enrollment with `error 0x80180026`)
- The minimum Windows Server version requirement is based on the Hybrid Azure AD join requirement. For more information, see [How to plan your hybrid Azure Active Directory join implementation](/azure/active-directory/devices/hybrid-azuread-join-plan).

> [!TIP]
> For more information, see the following topics:
> - [How to configure automatic registration of Windows domain-joined devices with Azure Active Directory](/azure/active-directory/active-directory-conditional-access-automatic-device-registration-setup)
> - [How to plan your hybrid Azure Active Directory join implementation](/azure/active-directory/devices/hybrid-azuread-join-plan)
> - [Azure Active Directory integration with MDM](./azure-active-directory-integration-with-mdm.md)

The auto-enrollment relies on the presence of an MDM service and the Azure Active Directory registration for the PC. Starting in Windows 10, version 1607, once the enterprise has registered its AD with Azure AD, a Windows PC that is domain joined is automatically Azure AD–registered.

> [!NOTE]
> In Windows 10, version 1709, the enrollment protocol was updated to check whether the device is domain-joined. For details, see [\[MS-MDE2\]: Mobile Device Enrollment Protocol Version 2](/openspecs/windows_protocols/ms-mde2/4d7eadd5-3951-4f1c-8159-c39e07cbe692). For examples, see section 4.3.1 RequestSecurityToken of the MS-MDE2 protocol documentation.

When the auto-enrollment Group Policy is enabled, a task is created in the background that initiates the MDM enrollment. The task will use the existing MDM service configuration from the Azure Active Directory information of the user. If multi-factor authentication is required, the user will get a prompt to complete the authentication. Once the enrollment is configured, the user can check the status in the Settings page.

In Windows 10, version 1709 or later, when the same policy is configured in Group Policy and MDM, Group Policy policy takes precedence over MDM. Since Windows 10, version 1803, a new setting allows you to change precedence to MDM. For more information, see [Windows 10 Group Policy vs. Intune MDM Policy who wins?](/archive/blogs/cbernier/windows-10-group-policy-vs-intune-mdm-policy-who-wins).

For this policy to work, you must verify that the MDM service provider allows Group Policy initiated MDM enrollment for domain-joined devices.

## Verify auto-enrollment requirements and settings

To ensure that the auto-enrollment feature is working as expected, you must verify that various requirements and settings are configured correctly.
The following steps demonstrate required settings using the Intune service:

1. Verify that the user who is going to enroll the device has a valid [Intune license](/mem/intune/fundamentals/licenses).

   :::image type="content" alt-text="Intune license verification." source="images/auto-enrollment-intune-license-verification.png" lightbox="images/auto-enrollment-intune-license-verification.png":::

2. Verify that auto-enrollment is activated for those users who are going to enroll the devices into Mobile Device Management (MDM) with Intune. For more information, see [Azure AD and Microsoft Intune: Automatic MDM enrollment in the new Portal](./azure-ad-and-microsoft-intune-automatic-mdm-enrollment-in-the-new-portal.md).

    ![Auto-enrollment activation verification.](images/auto-enrollment-activation-verification.png)

    > [!IMPORTANT]
    > For bring-your-own devices (BYOD devices), the Mobile Application Management (MAM) user scope takes precedence if both MAM user scope and MDM user scope (automatic MDM enrollment) are enabled for all users (or the same groups of users). The device will use Windows Information Protection (WIP) Policies (if you configured them) rather than being MDM enrolled.
    >
    > For corporate-owned devices, the MDM user scope takes precedence if both scopes are enabled. The devices get MDM enrolled.

3. Verify that the device OS version is Windows 10, version 1709 or later.

4. Auto-enrollment into Intune via Group Policy is valid only for devices that are hybrid Azure AD joined. This condition means that the device must be joined into both local Active Directory and Azure Active Directory. To verify that the device is hybrid Azure AD joined, run `dsregcmd /status` from the command line.

    You can confirm that the device is properly hybrid-joined if both **AzureAdJoined** and **DomainJoined** are set to **YES**.

    ![Auto-enrollment device status result.](images/auto-enrollment-device-status-result.png)

    Additionally, verify that the SSO State section displays **AzureAdPrt** as **YES**.

    ![Auto-enrollment Azure AD prt verification.](images/auto-enrollment-azureadprt-verification.png)

    This information can also be found on the Azure AD device list.

    ![Azure AD device list.](images/azure-ad-device-list.png)

5. Verify that the MDM discovery URL during auto-enrollment is https://enrollment.manage.microsoft.com/enrollmentserver/discovery.svc

    ![MDM discovery URL.](images/auto-enrollment-mdm-discovery-url.png)

6. Some tenants might have both **Microsoft Intune** and **Microsoft Intune Enrollment** under **Mobility**. Make sure that your auto-enrollment settings are configured under **Microsoft Intune** instead of **Microsoft Intune Enrollment**.

   :::image type="content" alt-text="Mobility setting MDM intune." source="images/auto-enrollment-microsoft-intune-setting.png" lightbox="images/auto-enrollment-microsoft-intune-setting.png":::

7. Verify that the *Enable Automatic MDM enrollment using default Azure AD credentials* group policy (**Local Group Policy Editor > Computer Configuration > Policies > Administrative Templates > Windows Components > MDM**) is properly deployed to all devices that should be enrolled into Intune.

You may contact your domain administrators to verify if the group policy has been deployed successfully.

8. Verify that the device isn't enrolled with the old Intune client used on the Intune Silverlight Portal (the Intune portal used before the Azure portal).

9. Verify that Microsoft Intune should allow enrollment of Windows devices.

   :::image type="content" alt-text="Enrollment of Windows devices." source="images/auto-enrollment-enrollment-of-windows-devices.png" lightbox="images/auto-enrollment-enrollment-of-windows-devices.png":::

## Configure the auto-enrollment Group Policy for a single PC

This procedure is only for illustration purposes to show how the new auto-enrollment policy works. It's not recommended for the production environment in the enterprise. For bulk deployment, you should use the [Group Policy Management Console process](#configure-the-auto-enrollment-for-a-group-of-devices).

Requirements:
- AD-joined PC running Windows 10, version 1709 or later
- Enterprise has MDM service already configured
- Enterprise AD must be registered with Azure AD

1. Run `GPEdit.msc`. Choose **Start**, then in the text box type `gpedit`.

    ![GPEdit desktop app search result.](images/autoenrollment-gpedit.png)

2. Under **Best match**, select **Edit group policy** to launch it.

3. In **Local Computer Policy**, select **Administrative Templates** > **Windows Components** > **MDM**.

   :::image type="content" alt-text="MDM policies." source="images/autoenrollment-mdm-policies.png" lightbox="images/autoenrollment-mdm-policies.png":::

4. Double-click **Enable automatic MDM enrollment using default Azure AD credentials** (previously called **Auto MDM Enrollment with AAD Token** in Windows 10, version 1709). For ADMX files in Windows 10, version 1903 and later, select **User Credential** as the **Selected Credential Type to use**.

   :::image type="content" alt-text="MDM autoenrollment policy." source="images/autoenrollment-policy.png" lightbox="images/autoenrollment-policy.png":::

5. Select **Enable**, select **User Credential** from the dropdown **Select Credential Type to Use**, then select **OK**.

    > [!NOTE]
    > In Windows 10, version 1903, the MDM.admx file was updated to include an option to select which credential is used to enroll the device. **Device Credential** is a new option that will only have an effect on clients that have installed Windows 10, version 1903 or later. The default behavior for older releases is to revert to **User Credential**.
    > **Device Credential** is only supported for Microsoft Intune enrollment in scenarios with Co-management or Azure Virtual Desktop because the Intune subscription is user centric.

    When a group policy refresh occurs on the client, a task is created and scheduled to run every 5 minutes for the duration of one day. The task is called "Schedule created by enrollment client for automatically enrolling in MDM from Azure Active Directory."

    To see the scheduled task, launch the [Task Scheduler app](#task-scheduler-app).

    If two-factor authentication is required, you'll be prompted to complete the process. Here's an example screenshot.

    ![Two-factor authentication notification.](images/autoenrollment-2-factor-auth.png)

    > [!Tip]
    > You can avoid this behavior by using Conditional Access Policies in Azure AD.
    Learn more by reading [What is Conditional Access?](/azure/active-directory/conditional-access/overview).

6. To verify successful enrollment to MDM, go to **Start** > **Settings** > **Accounts** > **Access work or school**, then select your domain account.

7. Select **Info** to see the MDM enrollment information.

    ![Work School Settings.](images/autoenrollment-settings-work-school.png)

    If you don't see the **Info** button or the enrollment information, enrollment might have failed. Check the status in [Task Scheduler app](#task-scheduler-app).


### Task Scheduler app

1. Select **Start**, then in the text box type `task scheduler`.

   ![Task Scheduler search result.](images/autoenrollment-task-schedulerapp.png)

2. Under **Best match**, select **Task Scheduler** to launch it.

3. In **Task Scheduler Library**, open **Microsoft > Windows** , then select **EnterpriseMgmt**.

   :::image type="content" alt-text="Auto-enrollment scheduled task." source="images/autoenrollment-scheduled-task.png" lightbox="images/autoenrollment-scheduled-task.png":::

    To see the result of the task, move the scroll bar to the right to see the **Last Run Result**. The message **0x80180026** is a failure message (`MENROLL_E_DEVICE_MANAGEMENT_BLOCKED`). You can see the logs in the **History** tab.

    If the device enrollment is blocked, your IT admin might have enabled the **Disable MDM Enrollment** policy.

    > [!NOTE]
    > The GPEdit console doesn't reflect the status of policies set by your IT admin on your device. It's only used by the user to set policies.

## Configure the auto-enrollment for a group of devices

Requirements:
- AD-joined PC running Windows 10, version 1709 or later
- Enterprise has MDM service already configured (with Intune or a third-party service provider)
- Enterprise AD must be integrated with Azure AD.
- Ensure that PCs belong to same computer group.

> [!IMPORTANT]
> If you don't see the policy, it may be because you don't have the ADMX for Windows 10, version 1803, version 1809, or version 1903 installed. To fix the issue, use the following procedures. Note that the latest MDM.admx is backwards compatible.

1. Download:

   - 1803 --> [Administrative Templates (.admx) for Windows 10 April 2018 Update (1803)](https://www.microsoft.com/download/details.aspx?id=56880)

   - 1809 --> [Administrative Templates (.admx) for Windows 10 October 2018 Update (1809)](https://www.microsoft.com/download/details.aspx?id=57576)

   - 1903 --> [Administrative Templates (.admx) for Windows 10 May 2019 Update (1903)](https://www.microsoft.com/download/details.aspx?id=58495)

   - 1909 --> [Administrative Templates (.admx) for Windows 10 November 2019 Update (1909)](https://www.microsoft.com/download/confirmation.aspx?id=100591)
   
   - 2004 --> [Administrative Templates (.admx) for Windows 10 May 2020 Update (2004)](https://www.microsoft.com/download/confirmation.aspx?id=101445)
   
   - 20H2 --> [Administrative Templates (.admx) for Windows 10 October 2020 Update (20H2)](https://www.microsoft.com/download/details.aspx?id=102157)

   - 21H1 --> [Administrative Templates (.admx) for Windows 10 May 2021 Update (21H1)](https://www.microsoft.com/download/details.aspx?id=103124)

   - 21H2 --> [Administrative Templates (.admx) for Windows 10 November 2021 Update (21H2)-v2.0](https://www.microsoft.com/download/details.aspx?id=104042)
   
   
2. Install the package on the Domain Controller.

3. Navigate, depending on the version to the folder:

   - 1803 --> **C:\Program Files (x86)\Microsoft Group Policy\Windows 10 April 2018 Update (1803) v2**

   - 1809 --> **C:\Program Files (x86)\Microsoft Group Policy\Windows 10 October 2018 Update (1809) v2**

   - 1903 --> **C:\Program Files (x86)\Microsoft Group Policy\Windows 10 May 2019 Update (1903) v3**

   - 1909 --> **C:\Program Files (x86)\Microsoft Group Policy\Windows 10 November 2019 Update (1909)**

   - 2004 --> **C:\Program Files (x86)\Microsoft Group Policy\Windows 10 May 2020 Update (2004)**
   
   - 20H2 --> **C:\Program Files (x86)\Microsoft Group Policy\Windows 10 October 2020 Update (20H2)**

   - 21H1 --> **C:\Program Files (x86)\Microsoft Group Policy\Windows 10 May 2021 Update (21H1)**

   - 21H2 --> **C:\Program Files (x86)\Microsoft Group Policy\Windows 10 November 2021 Update V2 (21H2)**

4. Rename the extracted Policy Definitions folder to `PolicyDefinitions`.

5. Copy the PolicyDefinitions folder to `\\contoso.com\SYSVOL\contoso.com\policies\PolicyDefinitions`.

   If this folder doesn't exist, then you'll be switching to a [central policy store](/troubleshoot/windows-client/group-policy/create-and-manage-central-store) for your entire domain.

6. Wait for the SYSVOL DFSR replication to be completed for the policy to be available.

This procedure will work for any future version as well.

1. Create a Group Policy Object (GPO) and enable the Group Policy **Computer Configuration** > **Policies** > **Administrative Templates** > **Windows Components** > **MDM** > **Enable automatic MDM enrollment using default Azure AD credentials**.

2. Create a Security Group for the PCs.

3. Link the GPO.

4. Filter using Security Groups.

## Troubleshoot auto-enrollment of devices

Investigate the log file if you have issues even after performing all the mandatory verification steps. The first log file to investigate is the event log on the target Windows 10 device.

To collect Event Viewer logs:

1. Open Event Viewer.

2. Navigate to **Applications and Services Logs** > **Microsoft** > **Windows** > **DeviceManagement-Enterprise-Diagnostic-Provider** > **Admin**.

    > [!Tip]
    > For guidance on how to collect event logs for Intune, see [Collect MDM Event Viewer Log YouTube video](https://www.youtube.com/watch?v=U_oCe2RmQEc).

3. Search for event ID 75, which represents a successful auto-enrollment. Here's an example screenshot that shows the auto-enrollment completed successfully:

   :::image type="content" alt-text="Event ID 75." source="images/auto-enrollment-troubleshooting-event-id-75.png"  lightbox="images/auto-enrollment-troubleshooting-event-id-75.png":::

    If you can't find event ID 75 in the logs, it indicates that the auto-enrollment failed. This failure can happen because of the following reasons:

    - The enrollment failed with error. In this case, search for event ID 76, which represents failed auto-enrollment. Here's an example screenshot that shows that the auto-enrollment failed:

      :::image type="content" alt-text="Event ID 76." source="images/auto-enrollment-troubleshooting-event-id-76.png" lightbox="images/auto-enrollment-troubleshooting-event-id-76.png":::

      To troubleshoot, check the error code that appears in the event. For more information, see [Troubleshooting Windows device enrollment problems in Microsoft Intune](/troubleshoot/mem/intune/troubleshoot-windows-enrollment-errors).

    - The auto-enrollment didn't trigger at all. In this case, you'll not find either event ID 75 or event ID 76. To know the reason, you must understand the internal mechanisms happening on the device as described in the following section.

      The auto-enrollment process is triggered by a task (**Microsoft** > **Windows** > **EnterpriseMgmt**) within the task-scheduler. This task appears if the *Enable automatic MDM enrollment using default Azure AD credentials* group policy (**Computer Configuration** > **Policies** > **Administrative Templates** > **Windows Components** > **MDM**) is successfully deployed to the target machine as shown in the following screenshot:

      :::image type="content" alt-text="Task scheduler." source="images/auto-enrollment-task-scheduler.png" lightbox="images/auto-enrollment-task-scheduler.png":::

    > [!Note]
    > This task isn't visible to standard users, run Scheduled Tasks with administrative credentials to find the task.

    This task runs every 5 minutes for the duration of one day. To confirm if the task succeeded, check the task scheduler event logs:
    **Applications and Services Logs > Microsoft > Windows > Task Scheduler > Operational**. Look for an entry where the task scheduler created by enrollment client for automatically enrolling in MDM from Azure Active Directory is triggered by event ID 107.

    :::image type="content" alt-text="Event ID 107." source="images/auto-enrollment-event-id-107.png" lightbox="images/auto-enrollment-event-id-107.png":::

    When the task is completed, a new event ID 102 is logged.

    :::image type="content" alt-text="Event ID 102." source="images/auto-enrollment-event-id-102.png" lightbox="images/auto-enrollment-event-id-102.png":::

    The task scheduler log displays event ID 102 (task completed) regardless of the auto-enrollment success or failure. This status-display means that the task scheduler log is only useful to confirm if the auto-enrollment task is triggered or not. It doesn't indicate the success or failure of auto-enrollment.

    If you can't see from the log that task Schedule created by enrollment client for automatically enrolling in MDM from Azure AD is initiated, there's possibly an issue with the group policy. Immediately run the command `gpupdate /force` in a command prompt to get the group policy object applied. If this step still doesn't help, further troubleshooting on Active Directory is required.
    One frequently seen error is related to some outdated enrollment entries in the registry on the target client device (**HKLM > Software > Microsoft > Enrollments**). If a device has been enrolled (can be any MDM solution and not only Intune), some enrollment information added into the registry is seen:

    :::image type="content" alt-text="Outdated enrollment entries." source="images/auto-enrollment-outdated-enrollment-entries.png" lightbox="images/auto-enrollment-outdated-enrollment-entries.png":::

    By default, these entries are removed when the device is un-enrolled, but occasionally the registry key remains even after un-enrollment. In this case, `gpupdate /force` fails to initiate the auto-enrollment task and error code 2149056522 is displayed in the **Applications and Services Logs** > **Microsoft** > **Windows** > **Task Scheduler** > **Operational** event log file under event ID 7016.

    A resolution to this issue is to remove the registry key manually. If you don't know which registry key to remove, go for the key that displays most entries as the screenshot above. All other keys will display fewer entries as shown in the following screenshot:

    :::image type="content" alt-text="Manually deleted entries." source="images/auto-enrollment-activation-verification-less-entries.png" lightbox="images/auto-enrollment-activation-verification-less-entries.png":::

### Related topics

- [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc753298(v=ws.11))
- [Create and Edit a Group Policy Object](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc754740(v=ws.11))
- [Link a Group Policy Object](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc732979(v=ws.11))
- [Filter Using Security Groups](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc752992(v=ws.11))
- [Enforce a Group Policy Object Link](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc753909(v=ws.11))
- [Group Policy Central Store](/troubleshoot/windows-client/group-policy/create-and-manage-central-store)
- [Getting started with Cloud Native Windows Endpoints](/mem/cloud-native-windows-endpoints)
- [A Framework for Windows endpoint management transformation](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/a-framework-for-windows-endpoint-management-transformation/ba-p/2460684)
- [Success with remote Windows Autopilot and Hybrid Azure Active Director join](https://techcommunity.microsoft.com/t5/intune-customer-success/success-with-remote-windows-autopilot-and-hybrid-azure-active/ba-p/2749353)


### Useful Links
- [Windows 10 Administrative Templates for Windows 10 November 2021 Update (21H2)-v2.0](https://www.microsoft.com/download/details.aspx?id=104042)
- [Windows 10 Administrative Templates for Windows 10 May 2021 Update 21H1](https://www.microsoft.com/download/details.aspx?id=103124)
- [Windows 10 Administrative Templates for Windows 10 November 2019 Update 1909](https://www.microsoft.com/download/details.aspx?id=100591)
- [Windows 10 Administrative Templates for Windows 10 May 2019 Update 1903](https://www.microsoft.com/download/details.aspx?id=58495)
- [Windows 10 Administrative Templates for Windows 10 October 2018 Update 1809](https://www.microsoft.com/download/details.aspx?id=57576)
