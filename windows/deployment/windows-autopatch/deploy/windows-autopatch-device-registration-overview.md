---
title: Device registration overview
description: This article provides an overview on how to register devices in Autopatch.
ms.date: 02/15/2024
ms.service: windows-client
ms.subservice: autopatch
ms.topic: concept-article
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.reviewer: andredm7
ms.collection:
  - highpri
  - tier1
---

# Device registration overview

Windows Autopatch must [register your existing devices](windows-autopatch-register-devices.md) into its service to manage update deployments on your behalf.

The Windows Autopatch device registration process is transparent for end-users because it doesn't require devices to be reset.

The overall device registration process is as follows:

:::image type="content" source="../media/windows-autopatch-device-registration-overview.png" alt-text="Overview of the device registration process" lightbox="../media/windows-autopatch-device-registration-overview.png":::

1. IT admin reviews [Windows Autopatch device registration prerequisites](windows-autopatch-register-devices.md#prerequisites-for-device-registration) before registering devices with Windows Autopatch.
2. IT admin identifies devices to be managed by Windows Autopatch through either adding device-based Microsoft Entra groups as part of the [Custom Autopatch group](../deploy/windows-autopatch-groups-overview.md) or the [Default Autopatch group](../deploy/windows-autopatch-groups-overview.md).
3. Windows Autopatch then:
    1. Performs device readiness prior registration (prerequisite checks).
    2. Calculates the deployment ring distribution.
    3. Assigns devices to one of the deployment rings based on the previous calculation.
    4. Assigns devices to other Microsoft Entra groups required for management.
    5. Marks devices as active for management so it can apply its update deployment policies.
4. IT admin then monitors the device registration trends and the update deployment reports.

For more information about the device registration workflow, see the [Detailed device registration workflow diagram](#detailed-device-registration-workflow-diagram) section for more technical details behind the Windows Autopatch device registration process.

## Detailed device registration workflow diagram

See the following detailed workflow diagram. The diagram covers the Windows Autopatch device registration process:

:::image type="content" source="../media/windows-autopatch-device-registration-workflow-diagram.png" alt-text="Detailed device registration workflow diagram" lightbox="../media/windows-autopatch-device-registration-workflow-diagram.png":::

| Step | Description |
| ----- | ----- |
| **Step 1: Identify devices** | IT admin identifies devices to be managed by the Windows Autopatch service. |
| **Step 2: Add devices** | IT admin adds devices through Direct membership or nests other Microsoft Entra ID assigned or dynamic groups into the **Windows Autopatch Device Registration** Microsoft Entra ID assigned group when using adding existing device-based Microsoft Entra groups while [creating](../manage/windows-autopatch-manage-autopatch-groups.md#create-a-custom-autopatch-group)/[editing](../manage/windows-autopatch-manage-autopatch-groups.md#edit-the-default-or-a-custom-autopatch-group) Custom Autopatch groups, or [editing](../manage/windows-autopatch-manage-autopatch-groups.md#edit-the-default-or-a-custom-autopatch-group) the Default Autopatch group</li></ul> |
| **Step 3: Discover devices** | The Windows Autopatch Discover Devices function discovers devices (hourly) that were previously added by the IT admin into the **Windows Autopatch Device Registration** Microsoft Entra ID assigned group or from Microsoft Entra groups used with Autopatch groups in **step #2**. The Microsoft Entra device ID is used by Windows Autopatch to query device attributes in both Microsoft Intune and Microsoft Entra ID when registering devices into its service.<ol><li>Once devices are discovered from the Microsoft Entra group, the same function gathers additional device attributes and saves it into its memory during the discovery operation. The following device attributes are gathered from Microsoft Entra ID in this step:</li><ol><li>**AzureADDeviceID**</li><li>**OperatingSystem**</li><li>**DisplayName (Device name)**</li><li>**AccountEnabled**</li><li>**RegistrationDateTime**</li><li>**ApproximateLastSignInDateTime**</li></ol><li>In this same step, the Windows Autopatch discover devices function calls another function, the device prerequisite check function. The device prerequisite check function evaluates software-based device-level prerequisites to comply with Windows Autopatch device readiness requirements before registration.</li></ol> |
| **Step 4: Check prerequisites** | The Windows Autopatch prerequisite function makes an Intune Graph API call to sequentially validate device readiness attributes required for the registration process. For detailed information, see the [Detailed prerequisite check workflow diagram](#detailed-prerequisite-check-workflow-diagram) section. The service checks the following device readiness attributes, and/or prerequisites:<ol><li>**If the device is Intune-managed or not.**</li><ol><li>Windows Autopatch looks to see **if the Microsoft Entra device ID has an Intune device ID associated with it**.</li><ol><li>If **yes**, it means this device is enrolled into Intune.</li><li>If **not**, it means the device isn't enrolled into Intune, hence it can't be managed by the Windows Autopatch service.</li></ol><li>**If the device is not managed by Intune**, the Windows Autopatch service can't gather device attributes such as operating system version, Intune enrollment date, device name and other attributes. When this happens, the Windows Autopatch service uses the Microsoft Entra device attributes gathered and saved to its memory in **step 3a**.</li><ol><li>Once it has the device attributes gathered from Microsoft Entra ID in **step 3a**, the device is flagged with the **Prerequisite failed** status, then added to the **Not registered** tab so the IT admin can review the reason(s) the device wasn't registered into Windows Autopatch. The IT admin will remediate these devices. In this case, the IT admin should check why the device wasn't enrolled into Intune.</li><li>A common reason is when the Microsoft Entra device ID is stale, it doesn't have an Intune device ID associated with it anymore. To remediate, [clean up any stale Microsoft Entra device records from your tenant](windows-autopatch-register-devices.md#clean-up-dual-state-of-hybrid-azure-ad-joined-and-azure-registered-devices-in-your-azure-ad-tenant).</li></ol><li>**If the device is managed by Intune**, the Windows Autopatch prerequisite check function continues to the next prerequisite check, which evaluates whether the device has checked into Intune in the last 28 days.</li></ol><li>**If the device is a Windows device or not.**</li><ol><li>Windows Autopatch looks to see if the device is a Windows and corporate-owned device.</li><ol><li>**If yes**, it means this device can be registered with the service because it's a Windows corporate-owned device.</li><li>**If not**, it means the device is a non-Windows device, or it's a Windows device but it's a personal device.</li></ol></ol><li>**Windows Autopatch checks the Windows SKU family**. The SKU must be either:</li><ol><li>**Enterprise**</li><li>**Pro**</li><li>**Pro Workstation**</li></ol><li>**If the device meets the operating system requirements**, Windows Autopatch checks whether the device is either:</li><ol><li>**Only managed by Intune.**</li><ol><li>If the device is only managed by Intune, the device is marked as Passed all prerequisites.</li></ol><li>**Co-managed by both Configuration Manager and Intune.**</li><ol><li>If the device is co-managed by both Configuration Manager and Intune, an additional prerequisite check is evaluated to determine if the device satisfies the co-management-enabled workloads required by Windows Autopatch to manage devices in a co-managed state. The required co-management workloads evaluated in this step are:</li><ol><li>**Windows Updates Policies**</li><li>**Device Configuration**</li><li>**Office Click to Run**</li></ol><li>If Windows Autopatch determines that one of these workloads isn't enabled on the device, the service marks the device as **Prerequisite failed** and moves the device to the **Not registered** tab.</li></ol></ol></ol>|
| **Step 5: Calculate deployment ring assignment** | Once the device passes all prerequisites described in **step #4**, Windows Autopatch starts its deployment ring assignment calculation. The following logic is used to calculate the Windows Autopatch deployment ring assignment:<ol><li>If the Windows Autopatch tenant's existing managed device size is **≤ 200**, the deployment ring assignment is **First (5%)**, **Fast (15%)**, remaining devices go to the **Broad ring (80%)**.</li><li>If the Windows Autopatch tenant's existing managed device size is **>200**, the deployment ring assignment will be **First (1%)**, **Fast (9%)**, remaining devices go to the **Broad ring (90%)**.</li></ol> |
| **Step 6: Assign devices to a deployment ring group** | Once the deployment ring calculation is done, Windows Autopatch assigns devices to two deployment ring sets, the first one being the service-based deployment ring set represented by the following Microsoft Entra groups:<ol><li>**Modern Workplace Devices-Windows Autopatch-First**</li><ol><li>The Windows Autopatch device registration process doesn't automatically assign devices to the Test ring represented by the Microsoft Entra group (**Modern Workplace Devices-Windows Autopatch-Test**). It's important that you assign devices to the Test ring to validate the update deployments before the updates are deployed to a broader population of devices.</li></ol><li>**Modern Workplace Devices-Windows Autopatch-Fast**</li><li>**Modern Workplace Devices-Windows Autopatch-Broad**</li>Then the second deployment ring set, the software updates-based deployment ring set represented by the following Microsoft Entra groups:<ul><li>**Windows Autopatch - Ring1**<ul><li>The Windows Autopatch device registration process doesn't automatically assign devices to the Test ring represented by the Microsoft Entra groups (**Windows Autopatch - Test**). It's important that you assign devices to the Test ring to validate the update deployments before the updates are deployed to a broader population of devices.</li></ul><li>**Windows Autopatch - Ring2**</li>**Windows Autopatch - Ring3**</li></li></ol> |
| **Step 7: Assign devices to a Microsoft Entra group** | Windows Autopatch also assigns devices to the following Microsoft Entra groups when certain conditions apply:<ol><li>**Modern Workplace Devices - All**</li><ol><li>This group has all devices managed by Windows Autopatch.</li></ol><li>**Modern Workplace Devices - Virtual Machine**</li><ol><li>This group has all **virtual devices** managed by Windows Autopatch.</li></ol> |
| **Step 8: Post-device registration** | In post-device registration, three actions occur:<ol><li>Windows Autopatch adds devices to its managed database.</li><li>Flags devices as **Active** in the **Registered** tab.</li><li>The Microsoft Entra device ID of the device successfully registered is added into the Microsoft Cloud Managed Desktop Extension's allowlist. Windows Autopatch installs the Microsoft Cloud Managed Desktop Extension agent once devices are registered, so the agent can communicate back to the Microsoft Cloud Managed Desktop Extension service.</li><ol><li>The agent is the **Modern Workplace - Autopatch Client setup** PowerShell script that was created during the Windows Autopatch tenant enrollment process. The script is executed once devices are successfully registered into the Windows Autopatch service.</li></ol> |
| **Step 9: Review device registration status** | IT admins review the device registration status in both the **Registered** and **Not registered** tabs.<ol><li>If the device was **successfully registered**, the device shows up in the **Registered** tab.</li><li>If **not**, the device shows up in the **Not registered** tab.</li></ol> |
| **Step 10: End of registration workflow** | This is the end of the Windows Autopatch device registration workflow. |

## Detailed prerequisite check workflow diagram

As described in **step #4** in the previous [Detailed device registration workflow diagram](#detailed-device-registration-workflow-diagram), the following diagram is a visual representation of the prerequisite construct for the Windows Autopatch device registration process. The prerequisite checks are sequentially performed.

:::image type="content" source="../media/windows-autopatch-prerequisite-check-workflow-diagram.png" alt-text="Detailed prerequisite check workflow diagram" lightbox="../media/windows-autopatch-prerequisite-check-workflow-diagram.png":::

## Windows Autopatch deployment rings

During the tenant enrollment process, Windows Autopatch creates two different deployment ring sets:

- [Service-based deployment ring set](../deploy/windows-autopatch-groups-overview.md#service-based-deployment-rings)
- [Software update-based deployment ring set](../deploy/windows-autopatch-groups-overview.md#software-based-deployment-rings)

The following four Microsoft Entra ID assigned groups are used to organize devices for the service-based deployment ring set:

| Service-based deployment ring | Description |
| ----- | ----- |
| Modern Workplace Devices-Windows Autopatch-Test | Deployment ring for testing service-based configuration, app deployments prior production rollout |
| Modern Workplace Devices-Windows Autopatch-First | First production deployment ring for early adopters. |
| Modern Workplace Devices-Windows Autopatch-Fast | Fast deployment ring for quick rollout and adoption |
| Modern Workplace Devices-Windows Autopatch-Broad | Final deployment ring for broad rollout into the organization |

The five Microsoft Entra ID assigned groups that are used to organize devices for the software update-based deployment ring set within the [Default Autopatch group](../deploy/windows-autopatch-groups-overview.md#default-deployment-ring-composition):

| Software updates-based deployment ring | Description |
| ----- | ----- |
| Windows Autopatch - Test | Deployment ring for testing software updates-based deployments prior production rollout. |
| Windows Autopatch - Ring1 | First production deployment ring for early adopters. |
| Windows Autopatch - Ring2 | Fast deployment ring for quick rollout and adoption. |
| Windows Autopatch - Ring3 | Final deployment ring for broad rollout into the organization. |
| Windows Autopatch - Last | Optional deployment ring for specialized devices or VIP/executives that must receive software update deployments after it's well tested with early and general populations in an organization. |

In the software-based deployment ring set, each deployment ring has a different set of update deployment policies to control the updates rollout.

> [!CAUTION]
> Adding or importing devices directly into any of these groups isn't supported. Doing so might affect the Windows Autopatch service. To move devices between these groups, see [Moving devices in between deployment rings](#moving-devices-in-between-deployment-rings).

> [!IMPORTANT]
> Windows Autopatch device registration doesn't assign devices to the Test deployment rings of either the service-based (**Modern Workplace Devices-Windows Autopatch-Test**), or software updates-based (**Windows Autopatch - Test and Windows Autopatch - Last**) in the Default Autopatch group. This is intended to prevent devices that are essential to a business from being affected or devices that are used by executives from receiving early software update deployments.

During the device registration process, Windows Autopatch assigns each device to a [service-based and software-update based deployment ring](../deploy/windows-autopatch-groups-overview.md#service-based-versus-software-update-based-deployment-rings) so that the service has the proper representation of device diversity across your organization.

The deployment ring distribution is designed to release software update deployments to as few devices as possible to get the signals needed to make a quality evaluation of a given update deployment.

> [!NOTE]
> You can't create additional deployment rings or use your own rings for devices managed by the Windows Autopatch service.

## Default deployment ring calculation logic

The Windows Autopatch deployment ring calculation occurs during the device registration process and it applies to both the [service-based and the software update-based deployment ring sets](../deploy/windows-autopatch-groups-overview.md#service-based-versus-software-update-based-deployment-rings):

- If the Windows Autopatch tenant's existing managed device size is **≤ 200**, the deployment ring assignment is First **(5%)**, Fast **(15%)**, remaining devices go to the Broad ring **(80%)**.
- If the Windows Autopatch tenant's existing managed device size is **>200**, the deployment ring assignment will be First **(1%)**, Fast **(9%)**, remaining devices go to the Broad ring **(90%)**.

> [!NOTE]
> You can customize the deployment ring calculation logic by editing the Default Autopatch group.

| Service-based deployment ring | Default Autopatch group deployment ring | Default device balancing percentage | Description |
| ----- | ----- | ----- | ----- |
| Test | Test | **zero** | Windows Autopatch doesn't automatically add devices to this deployment ring. You must manually add devices to the Test ring following the required procedure. For more information on these procedures, see [Moving devices in between deployment rings](/windows/deployment/windows-autopatch/operate/windows-autopatch-update-management#moving-devices-in-between-deployment-rings). The recommended number of devices in this ring, based upon your environment size, is as follows:<br><ul><li>**0-500** devices: minimum **one** device.</li><li>**500-5000** devices: minimum **five** devices.</li><li>**5000+** devices: minimum **50** devices.</li></ul>Devices in this group are intended for your IT Administrators and testers since changes are released here first. This release schedule provides your organization the opportunity to validate updates prior to reaching production users. |
| First | Ring 1 |  **1%** | The First ring is the first group of production users to receive a change.<p><p>This group is the first set of devices to send data to Windows Autopatch and are used to generate a health signal across all end-users. For example, Windows Autopatch can generate a statistically significant signal saying that critical errors are trending up in a specific release for all end-users, but can't be confident that it's doing so in your organization.<p><p>Since Windows Autopatch doesn't yet have sufficient data to inform a release decision, devices in this deployment ring might experience outages if there are scenarios that weren't covered during early testing in the Test ring.|
| Fast | Ring 2 | **9%** | The Fast ring is the second group of production users to receive changes. The signals from the First ring are considered as a part of the release process to the Broad ring.<p><p>The goal with this deployment ring is to cross the **500**-device threshold needed to generate statistically significant analysis at the tenant level. These extra devices allow Windows Autopatch to consider the effect of a release on the rest of your devices and evaluate if a targeted action for your tenant is needed.</p> |
| Broad | Ring 3 | Either **80%** or **90%** | The Broad ring is the last group of users to receive software update deployments. Since it contains most of the devices registered with Windows Autopatch, it favors stability over speed in a software update deployment.|
| N/A | Last | **zero** | The Last ring is intended to be used for either specialized devices or devices that belong to VIP/executives in an organization. Windows Autopatch doesn't automatically add devices to this deployment ring. |

## Software update-based to service-based deployment ring mapping

There's a one-to-one mapping in between the service-based and software updates-based deployment rings introduced with Autopatch groups. This mapping is intended to help move devices in between deployment rings for other software update workloads that don't yet support Autopatch groups such as Microsoft 365 Apps and Microsoft Edge.

| If moving a device to | The device also moves to |
| ----- | ----- |
| Windows Autopatch - Test | Modern Workplace Devices-Windows Autopatch-Test |
| Windows Autopatch - Ring1 | Modern Workplace Devices-Windows Autopatch-First |
| Windows Autopatch - Ring2 | Modern Workplace Devices-Windows Autopatch-Fast |
| Windows Autopatch - Ring3 | Modern Workplace Devices-Windows Autopatch-Broad |
| Windows Autopatch - Last | Modern Workplace Devices-Windows Autopatch-Broad |

If your Autopatch groups have more than five deployment rings, and you must move devices to deployment rings after Ring3. For example, `<Autopatch group name - Ring4, Ring5, Ring6, etc.>`. The devices will be moved to **Modern Workplace Devices-Windows Autopatch-Broad**.

## Moving devices in between deployment rings

If you want to move devices to different deployment rings (either service or software update-based), after Windows Autopatch's deployment ring assignment, you can repeat the following steps for one or more devices from the **Registered** tab.

> [!IMPORTANT]
> You can only move devices in between deployment rings within the **same** Autopatch group. You can't move devices in between deployment rings across different Autopatch groups. If you try to select a device that belongs to one Autopatch group, and another device that belongs to a different Autopatch group, you'll receive the following error message on the top right corner of the Microsoft Intune portal: "**An error occurred. Please select devices within the same Autopatch group**.

**To move devices in between deployment rings:**

> [!NOTE]
> You can only move devices to other deployment rings when they're in an active state in the **Registered** tab.

1. In the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), select **Devices** in the left pane.
1. In the **Windows Autopatch** section, select **Devices**.
1. In the **Registered** tab, select one or more devices you want to assign. All selected devices will be assigned to the deployment ring you specify.
1. Select **Device actions** from the menu.
1. Select **Assign ring**. A fly-in opens.
1. Use the dropdown menu to select the deployment ring to move devices to, and then select Save. The Ring assigned by column will change to Pending.
1. When the assignment is complete, the **Ring assigned by** column changes to Admin (which indicates that you made the change) and the **Ring** column shows the new deployment ring assignment.

If you don't see the Ring assigned by column change to **Pending** in Step 5, check to see whether the device exists in Microsoft Intune or not by searching for it in its device blade. For more information, see [Device details in Intune](/mem/intune/remote-actions/device-inventory).

> [!WARNING]
> Moving devices between deployment rings through directly changing Microsoft Entra group membership isn't supported and may cause unintended configuration conflicts within the Windows Autopatch service. To avoid service interruption to devices, use the **Assign device to ring** action described previously to move devices between deployment rings.

## Automated deployment ring remediation functions

Windows Autopatch monitors device membership in its deployment rings, except for the **Modern Workplace Devices-Windows Autopatch-Test**, **Windows Autopatch - Test** and **Windows Autopatch - Last** rings, to provide automated deployment ring remediation functions to mitigate the risk of not having its managed devices being part of one of its deployment rings. These automated functions help mitigate risk of potentially having devices in a vulnerable state, and exposed to security threats in case they're not receiving update deployments due to either:

- Changes performed by the IT admin on objects created by the Windows Autopatch tenant enrollment process, or
- An issue occurred which prevented devices from getting a deployment ring assigned during the device registration process.

There are two automated deployment ring remediation functions:

| Function | Description |
| ----- | ----- |
| Check device deployment ring membership | Every hour, Windows Autopatch checks to see if any of its managed devices aren't part of one of the deployment rings. If a device isn't part of a deployment ring, Windows Autopatch randomly assigns the device to one of its deployment rings (except for the **Modern Workplace Devices-Windows Autopatch-Test**, **Windows Autopatch - Test and Windows Autopatch - Last** rings). |
| Multi-deployment ring device remediator | Every hour, Windows Autopatch checks to see if any of its managed devices are part of multiple deployment rings (except for the **Modern Workplace Devices-Windows Autopatch-Test**, **Windows Autopatch - Test** and **Windows Autopatch - Last** rings). If a device is part of multiple deployment rings, Windows Autopatch randomly removes the device until the device is only part of one deployment ring. |

> [!IMPORTANT]
> Windows Autopatch automated deployment ring functions don't assign or remove devices to or from the following deployment rings:<li>**Modern Workplace Devices-Windows Autopatch-Test**</li><li>**Windows Autopatch - Test**</li><li>**Windows Autopatch - Last**</li></ul>
