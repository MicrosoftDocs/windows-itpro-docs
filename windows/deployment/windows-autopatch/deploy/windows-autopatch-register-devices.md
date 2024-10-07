---
title: Register your devices
description: This article details how to register devices in Autopatch.
ms.date: 09/26/2024
ms.service: windows-client
ms.subservice: autopatch
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.reviewer: andredm7
ms.collection:
  - highpri
  - tier1
---

# Register your devices

[!INCLUDE [windows-autopatch-enterprise-e3-f3-licenses](../includes/windows-autopatch-enterprise-e3-f3-licenses.md)]

Before Microsoft can manage your devices in Windows Autopatch, you must register devices with the service. Make sure your devices meet the [device registration prerequisites](../deploy/windows-autopatch-device-registration-overview.md#prerequisites-for-device-registration).

## Detailed device registration workflow diagram

See the following detailed workflow diagram. The diagram covers the Windows Autopatch device registration process:

:::image type="content" source="../media/windows-autopatch-device-registration-workflow-diagram.png" alt-text="Diagram of the device registration workflow." lightbox="../media/windows-autopatch-device-registration-workflow-diagram.png":::

| Step | Description |
| ----- | ----- |
| **Step 1: Identify devices** | IT admin identifies devices to be managed by the Windows Autopatch service. |
| **Step 2: Add devices** | IT admin identifies and adds devices, or nests other Microsoft Entra device groups into any Microsoft Entra group when you [create an Autopatch group](../manage/windows-autopatch-manage-autopatch-groups.md#create-an-autopatch-group) or [edit an Autopatch group](../manage/windows-autopatch-manage-autopatch-groups.md#edit-an-autopatch-group) or imported (WUfB) policies. |
| **Step 3: Discover devices** | The Windows Autopatch Discover Devices function discovers devices (hourly) that were previously added by the IT admin from Microsoft Entra groups used with Autopatch groups in **step #2**. The Microsoft Entra device ID is used by Windows Autopatch to query device attributes in both Microsoft Intune and Microsoft Entra ID when registering devices into its service.<ol><li>Once devices are discovered from the Microsoft Entra group, the same function gathers additional device attributes and saves it into its memory during the discovery operation. The following device attributes are gathered from Microsoft Entra ID in this step:</li><ol><li>**AzureADDeviceID**</li><li>**OperatingSystem**</li><li>**DisplayName (Device name)**</li><li>**AccountEnabled**</li><li>**RegistrationDateTime**</li><li>**ApproximateLastSignInDateTime**</li></ol><li>In this same step, the Windows Autopatch discover devices function calls another function, the device prerequisite check function. The device prerequisite check function evaluates software-based device-level prerequisites to comply with Windows Autopatch device readiness requirements before registration.</li></ol> |
| **Step 4: Check prerequisites** | The Windows Autopatch prerequisite function makes an Intune Graph API call to sequentially validate device readiness attributes required for the registration process. For detailed information, see the [Detailed prerequisite check workflow diagram](#detailed-prerequisite-check-workflow-diagram) section. The service checks the following device readiness attributes, and/or prerequisites:<ol><li>**If the device is Intune-managed or not.**</li><ol><li>Windows Autopatch looks to see **if the Microsoft Entra device ID has an Intune device ID associated with it**.</li><ol><li>If **yes**, it means this device is enrolled into Intune.</li><li>If **not**, it means the device isn't enrolled into Intune, hence it can't be managed by the Windows Autopatch service.</li></ol><li>**If the device is not managed by Intune**, the Windows Autopatch service can't gather device attributes such as operating system version, Intune enrollment date, device name, and other attributes. When this happens, the Windows Autopatch service uses the Microsoft Entra device attributes gathered and saved to its memory in **step 3a**.</li><ol><li>Once it has the device attributes gathered from Microsoft Entra ID in **step 3a**, the device is flagged with the **Prerequisite failed** status, and the device's Autopatch readiness status appears as **Not registered** in the [**Devices report**](#devices-report). The IT admin can review the reasons the device wasn't registered into Windows Autopatch. The IT admin remediates these devices. In this case, the IT admin should check why the device wasn't enrolled into Intune.</li><li>A common reason is when the Microsoft Entra device ID is stale, it doesn't have an Intune device ID associated with it anymore. To remediate, [clean up any stale Microsoft Entra device records from your tenant](windows-autopatch-register-devices.md#clean-up-dual-state-of-hybrid-azure-ad-joined-and-azure-registered-devices-in-your-azure-ad-tenant).</li></ol><li>**If the device is managed by Intune**, the Windows Autopatch prerequisite check function continues to the next prerequisite check, which evaluates whether the device checked into Intune in the last 28 days.</li></ol><li>**If the device is a Windows device or not.**</li><ol><li>Windows Autopatch looks to see if the device is a Windows and corporate-owned device.</li><ol><li>**If yes**, it means this device can be registered with the service because it's a Windows corporate-owned device.</li><li>**If not**, it means the device is a non-Windows device, or it's a Windows device but it's a personal device.</li></ol></ol><li>**Windows Autopatch checks the Windows SKU family**. The SKU must be either:</li><ol><li>**Enterprise**</li><li>**Pro**</li><li>**Pro Workstation**</li></ol><li>**If the device meets the operating system requirements**, Windows Autopatch checks whether the device is either:</li><ol><li>**Only managed by Intune.**</li><ol><li>If the device is only managed by Intune, the device is marked as Passed all prerequisites.</li></ol><li>**Co-managed by both Configuration Manager and Intune.**</li><ol><li>If the device is co-managed by both Configuration Manager and Intune, an additional prerequisite check is evaluated to determine if the device satisfies the co-management-enabled workloads required by Windows Autopatch to manage devices in a co-managed state. The required co-management workloads evaluated in this step are:</li><ol><li>**Windows Updates Policies**</li><li>**Device Configuration**</li><li>**Office Click to Run**</li></ol><li>If Windows Autopatch determines that one of these workloads isn't enabled on the device, the service marks the device as **Prerequisite failed** and the device's Autopatch readiness status appears as **Not registered** in the **Devices report**.</li></ol></ol></ol>|
| **Step 5: Calculate deployment ring assignment** | Once the device passes all prerequisites described in **step #4**, Windows Autopatch starts its deployment ring assignment calculation. The following logic is used to calculate the Windows Autopatch deployment ring assignment:<ol><li>If the Windows Autopatch tenant's existing managed device size is **≤ 200**, the deployment ring assignment is **First (5%)**, **Fast (15%)**, remaining devices go to the **Broad ring (80%)**.</li><li>If the Windows Autopatch tenant's existing managed device size is **>200**, the deployment ring assignment is **First (1%)**, **Fast (9%)**, remaining devices go to the **Broad ring (90%)**.</li></ol> |
| **Step 6: Assign devices to a deployment ring group** | Once the deployment ring calculation is done, Windows Autopatch assigns devices to two deployment ring sets, the first one being the service-based deployment ring set represented by the following Microsoft Entra groups:<ol><li>**Modern Workplace Devices-Windows Autopatch-First**</li><ol><li>The Windows Autopatch device registration process doesn't automatically assign devices to the Test ring represented by the Microsoft Entra group (**Modern Workplace Devices-Windows Autopatch-Test**). It's important that you assign devices to the Test ring to validate the update deployments before the updates are deployed to a broader population of devices.</li></ol><li>**Modern Workplace Devices-Windows Autopatch-Fast**</li><li>**Modern Workplace Devices-Windows Autopatch-Broad**</li> |
| **Step 7: Assign devices to a Microsoft Entra group** | Windows Autopatch also assigns devices to the following Microsoft Entra groups when certain conditions apply:<ol><li>**Modern Workplace Devices - All**</li><ol><li>This group has all devices managed by Windows Autopatch.</li></ol><li>**Modern Workplace Devices - Virtual Machine**</li><ol><li>This group has all **virtual devices** managed by Windows Autopatch.</li></ol> |
| **Step 8: Post-device registration** | In post-device registration, three actions occur:<ol><li>Windows Autopatch adds devices to its managed database.</li><li>Flags devices as **Ready**. The device's Autopatch readiness status appears as **Registered** in the **Devices report**.</li><li>The Microsoft Entra device ID of the device successfully registered is added into the Microsoft Cloud Managed Desktop Extension's allowlist. Windows Autopatch installs the Microsoft Cloud Managed Desktop Extension agent once devices are registered, so the agent can communicate back to the Microsoft Cloud Managed Desktop Extension service.</li><ol><li>The agent is the **Modern Workplace - Autopatch Client setup** PowerShell script that was created during the Windows Autopatch tenant enrollment process. The script is executed once devices are successfully registered into the Windows Autopatch service.</li></ol> |
| **Step 9: Review device registration status** | IT admins review the device's Autopatch readiness status. Devices are either **Registered** or **Not registered** in the **Devices report**.<ol><li>If the device was **successfully registered**, the device's Autopatch readiness status appears as **Registered** in the **Devices report**.</li><li>If **not**, the device's Autopatch readiness status appears as **Not registered** in the **Devices report**.</li></ol> |
| **Step 10: End of registration workflow** | This is the end of the Windows Autopatch device registration workflow. |

## Detailed prerequisite check workflow diagram

As described in **step #4** in the previous [Detailed device registration workflow diagram](#detailed-device-registration-workflow-diagram), the following diagram is a visual representation of the prerequisite construct for the Windows Autopatch device registration process. The prerequisite checks are sequentially performed.

:::image type="content" source="../media/windows-autopatch-prerequisite-check-workflow-diagram.png" alt-text="Diagram of the prerequisite check workflow." lightbox="../media/windows-autopatch-prerequisite-check-workflow-diagram.png":::

## Devices report

Windows Autopatch has a device report that allows you to see:

- Each registered devices readiness for the service
- Update status
- Policies that target each device

### View the device report

**To view the device report:**

1. In the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), select **Devices** in the left pane.
1. Under Manage updates, select **Windows updates**.
1. Select the **Monitor** tab, and then select **Autopatch devices**.

Once a device is registered to the service, a readiness status is displayed. Each readiness status helps you to determine if there are any actions to take or if the device is ready for the service.

#### Readiness statuses

| Autopatch readiness status in the Devices report | Substatus description |
| --- | --- |
| Registered |<ul><li>**Ready**: Devices successfully passed all prerequisite checks and successfully registered with Windows Autopatch. Additionally, Ready devices successfully passed all [post-device registration readiness checks](../deploy/windows-autopatch-post-reg-readiness-checks.md) and don't have any active alerts targeting them.</li><li>**Not ready**: These devices were successfully registered with Windows Autopatch. However, these devices:</li><ul><li>Failed to pass one or more [post-device registration readiness checks](../deploy/windows-autopatch-post-reg-readiness-checks.md).</li><li>Aren't ready to have one or more software update workloads managed by the service.</li><li>The device didn't communicate with Microsoft Intune in the last 28 days</li><li>The device has a conflict with policies or with Autopatch group membership</li></ul></ul> |
| Not registered |<ul><li>**Autopatch group conflict**: The device has a conflict with Autopatch group membership</li><li>**Prerequisites failed**: The device failed to pass one or more [post-device registration readiness checks](../deploy/windows-autopatch-post-reg-readiness-checks.md).</li><li>**Excluded**: Devices with this status are removed from the Windows Autopatch service only. Microsoft assumes you manage these devices yourself in some capacity.</li></ul> |

### View only excluded devices

You can view the excluded devices in the Not registered tab to make it easier for you to bulk restore devices that were previously excluded from the Windows Autopatch service.

**To view only excluded devices:**

1. In the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), navigate to **Windows Autopatch** > **Devices**.
2. In the **Not registered** tab, select **Excluded** from the filter list. Leave all other filter options unselected.

## Move devices in between deployment rings

If you want to move devices to different deployment rings after Windows Autopatch's deployment ring assignment, you can repeat the following steps for one or more devices.

> [!IMPORTANT]
> **You can only move devices in between deployment rings within the same Autopatch group**. You can't move devices in between deployment rings across different Autopatch groups. If you try to select a device that belongs to one Autopatch group, and another device that belongs to a different Autopatch group, you'll receive the following error message on the top right corner of the Microsoft Intune portal: **An error occurred. Please select devices within the same Autopatch group**.

**To move devices in between deployment rings:**

> [!NOTE]
> You can only move devices to other deployment rings when the device's Autopatch readiness status appears as **Registered** and the Update status is **Active**.

1. In the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), select **Devices** in the left pane.
1. Navigate to **Windows updates** > **Monitor** > **Autopatch devices**.
1. Select one or more devices you want to assign and select **Assign ring**.
1. Use the dropdown menu to select the deployment ring to move devices to, and then select **Save**. All selected devices are assigned to the deployment ring you specify. The "1 devices scheduled for assignment" notification appears.
1. When the assignment is complete, the **Ring assigned by** column changes to Admin (which indicates that you made the change) and the **Ring** column shows the new deployment ring assignment. The **Ring assigned by** column is only visible in the fly-in menu.

> [!WARNING]
> Moving devices between deployment rings through directly changing Microsoft Entra group membership isn't supported and might cause unintended configuration conflicts within the Windows Autopatch service. To avoid service interruption to devices, use the **Assign ring** action described previously to move devices between deployment rings.

## Register devices into Autopatch groups

[!INCLUDE [windows-autopatch-enterprise-e3-f3-licenses](../includes/windows-autopatch-enterprise-e3-f3-licenses.md)]

An Autopatch group is a logical container or unit that groups several [Microsoft Entra groups](/entra/fundamentals/groups-view-azure-portal), and software update policies. For more information, see [Windows Autopatch groups](../deploy/windows-autopatch-groups-overview.md).

When you [create an Autopatch group](../manage/windows-autopatch-manage-autopatch-groups.md#create-an-autopatch-group) or [edit an Autopatch group](../manage/windows-autopatch-manage-autopatch-groups.md#edit-an-autopatch-group) to add or remove deployment rings, the device-based Microsoft Entra groups you use when setting up your deployment rings, are scanned to see if devices need to be registered with the Windows Autopatch service.

If devices aren't registered, Autopatch groups start the device registration process by using your existing device-based Microsoft Entra groups.

- For more information, see [create an Autopatch group](../manage/windows-autopatch-manage-autopatch-groups.md#create-an-autopatch-group) or [edit an Autopatch group](../manage/windows-autopatch-manage-autopatch-groups.md#edit-an-autopatch-group) to register devices into Autopatch groups.
- For more information about moving devices between deployment rings, see [Move devices in between deployment rings](#move-devices-in-between-deployment-rings).

### Supported scenarios when nesting other Microsoft Entra groups

Windows Autopatch also supports the following Microsoft Entra nested group scenarios:

Microsoft Entra groups synced up from:

- On-premises Active Directory groups (Windows Server AD)
- [Configuration Manager collections](/mem/configmgr/core/clients/manage/collections/create-collections#bkmk_aadcollsync)

## Windows Autopatch on Windows 365 Enterprise Workloads

Windows 365 Enterprise gives IT admins the option to register devices with the Windows Autopatch service as part of the Windows 365 provisioning policy creation. This option provides a seamless experience for admins and users to ensure your Cloud PCs are always up to date. When IT admins decide to manage their Windows 365 Cloud PCs with Windows Autopatch, the Windows 365 provisioning policy creation process calls Windows Autopatch device registration APIs to register devices on behalf of the IT admin.

**To register new Windows 365 Cloud PC devices with Windows Autopatch from the Windows 365 Provisioning Policy:**

1. Go to the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. In the left pane, select **Devices**.
1. Navigate to Provisioning > **Windows 365**.
1. Select Provisioning policies > **Create policy**.
1. Provide a policy name and select **Join Type**. For more information, see [Device join types](/windows-365/enterprise/identity-authentication#device-join-types).
1. Select **Next**.
1. Choose the desired image and select **Next**.
1. Under the **Microsoft managed services** section, select **Windows Autopatch**. Then, select **Next**. If the *Windows Autopatch (preview) can't manage your Cloud PCs until a Global Admin has finished setting it up.* message appears, you must [activate Windows Autopatch features](../prepare/windows-autopatch-feature-activation.md) to continue.
1. Assign your policy accordingly and select **Next**.
1. Select **Create**. Now your newly provisioned Windows 365 Enterprise Cloud PCs are automatically enrolled and managed by Windows Autopatch.

For more information, see [Create a Windows 365 Provisioning Policy](/windows-365/enterprise/create-provisioning-policy).

## Windows Autopatch on Azure Virtual Desktop workloads

Windows Autopatch is available for your Azure Virtual Desktop workloads. Enterprise admins can provision their Azure Virtual Desktop workloads to be managed by Windows Autopatch using the existing device registration process.

Windows Autopatch provides the same scope of service with virtual machines as it does with [physical devices](../deploy/windows-autopatch-device-registration-overview.md). However, Windows Autopatch defers any Azure Virtual Desktop specific support to [Azure support](#contact-support-for-device-registration-related-incidents), unless otherwise specified.

### Prerequisites

Windows Autopatch for Azure Virtual Desktop follows the same [prerequisites](../prepare/windows-autopatch-prerequisites.md) as Windows Autopatch, and the [Azure Virtual Desktop prerequisites](/azure/virtual-desktop/prerequisites).

The service supports:

- Personal persistent virtual machines

The following Azure Virtual Desktop features aren't supported:

- Multi-session hosts
- Pooled non persistent virtual machines
- Remote app streaming

### Deploy Autopatch on Azure Virtual Desktop

Azure Virtual Desktop workloads can be registered into Windows Autopatch by using the same method as your physical devices.

For ease of deployment, we recommend nesting a dynamic device group in your Autopatch device registration group. The dynamic device group would target the **Name** prefix defined in your session host, but **exclude** any Multi-Session Session Hosts. For example:

| Group name | Dynamic membership name |
| ----- | ----- |
| Windows Autopatch - Host Pool Session Hosts | <ul><li>`(device.displayName -contains "AP")`</li><li>`(device.deviceOSType -ne "Windows 10 Enterprise for Virtual Desktops")`</li></ul> |

<a name='clean-up-dual-state-of-hybrid-azure-ad-joined-and-azure-registered-devices-in-your-azure-ad-tenant'></a>

### Clean up dual state of Microsoft Entra hybrid joined and Azure registered devices in your Microsoft Entra tenant

An [Microsoft Entra dual state](/entra/identity/devices/hybrid-join-plan#handling-devices-with-azure-ad-registered-state) occurs when a device is initially connected to Microsoft Entra ID as an [Microsoft Entra registered](/entra/identity/devices/concept-device-registration) device. However, when you enable Microsoft Entra hybrid join, the same device is connected twice to Microsoft Entra ID but as a [Hybrid Microsoft Entra device](/entra/identity/devices/concept-hybrid-join).

In the dual state, you end up having two Microsoft Entra device records with different join types for the same device. In this case, the Hybrid Microsoft Entra device record takes precedence over the Microsoft Entra registered device record for any type of authentication in Microsoft Entra ID, which makes the Microsoft Entra registered device record stale.

It's recommended to detect and clean up stale devices in Microsoft Entra ID before registering devices with Windows Autopatch, see [How To: Manage stale devices in Microsoft Entra ID](/entra/identity/devices/manage-stale-devices).

> [!WARNING]
> If you don't clean up stale devices in Microsoft Entra ID before registering devices with Windows Autopatch, you might end up seeing devices failing to meet the **Intune or Cloud-Attached (Device must be either Intune-managed or Co-managed)** pre-requisite check  in the **Not ready** tab because it's expected that these stale Microsoft Entra devices aren't enrolled into the Intune service anymore.

### Contact support for device registration-related incidents

[!INCLUDE [windows-autopatch-enterprise-e3-f3-licenses](../includes/windows-autopatch-enterprise-e3-f3-licenses.md)]

Support is available either through Windows 365, or the Windows Autopatch Service Engineering team for device registration-related incidents.

- For Windows 365 support, see [Get support](/mem/get-support).
- For Azure Virtual Desktop support, see [Get support](https://azure.microsoft.com/support/create-ticket/).
- For Windows Autopatch support, see [Submit a support request](../manage/windows-autopatch-support-request.md).

---

## Device management lifecycle scenarios

There's a few more device management lifecycle scenarios to consider when planning to register devices in Windows Autopatch.

### Device refresh

If a device was previously registered into the Windows Autopatch service, but it needs to be reimaged, you must run one of the device provisioning processes available in Microsoft Intune to reimage the device.

The device is rejoined to Microsoft Entra ID (either Hybrid or Microsoft Entra-only). Then, re-enrolled into Intune as well. No further action is required from you or the Windows Autopatch service, because the Microsoft Entra device ID record of that device remains the same.

### Device repair and hardware replacement

If you need to repair a device that was previously registered into the Windows Autopatch service, by replacing the motherboard, nonremovable network interface cards (NIC), or hard drive, you must re-register the device into the Windows Autopatch service, because a new hardware ID is generated when there are major hardware changes, such as:

- SMBIOS UUID (motherboard)
- MAC address (nonremovable NICs)
- OS hard drive's serial, model, manufacturer information

When one of these hardware changes occurs, Microsoft Entra ID creates a new device ID record for that device, even if it's technically the same device.

> [!IMPORTANT]
> If a new Microsoft Entra device ID is generated for a device that was previously registered into the Windows Autopatch service, even if it's technically same device, the new Microsoft Entra device ID must be added either through device direct membership or through nested Microsoft Entra dynamic/assigned group in the Windows Autopatch group experience. This process guarantees that the newly generated Microsoft Entra device ID is registered with Windows Autopatch and that the device continues to have its software updates managed by the service.
