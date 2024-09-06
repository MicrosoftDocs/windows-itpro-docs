---
title: Register your devices
description: This article details how to register devices in Autopatch.
ms.date: 07/10/2024
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

Before Microsoft can manage your devices in Windows Autopatch, you must have devices registered with the service.

## Before you begin

Windows Autopatch can take over software update management control of devices that meet software-based prerequisites as soon as an IT admin decides to have their tenant managed by the service. The Windows Autopatch software update management scope includes the following software update workloads:

- [Windows quality updates](../operate/windows-autopatch-groups-windows-quality-update-overview.md)
- [Windows feature updates](../operate/windows-autopatch-groups-windows-feature-update-overview.md)
- [Microsoft 365 Apps for enterprise updates](../operate/windows-autopatch-microsoft-365-apps-enterprise.md)
- [Microsoft Edge updates](../operate/windows-autopatch-edge.md)
- [Microsoft Teams updates](../operate/windows-autopatch-teams.md)

### Windows Autopatch groups device registration

When you either create/edit a [Custom Autopatch group](../deploy/windows-autopatch-groups-overview.md#about-custom-autopatch-groups) or edit the [Default Autopatch group](../deploy/windows-autopatch-groups-overview.md#about-the-default-autopatch-group) to add or remove deployment rings, the device-based Microsoft Entra groups you use when setting up your deployment rings are scanned to see if devices need to be registered with the Windows Autopatch service.

If devices aren't registered, Autopatch groups starts the device registration process by using your existing device-based Microsoft Entra groups instead of the Windows Autopatch Device Registration group.

For more information, see [create Custom Autopatch groups](../manage/windows-autopatch-manage-autopatch-groups.md#create-a-custom-autopatch-group) and [edit Autopatch group](../manage/windows-autopatch-manage-autopatch-groups.md#edit-the-default-or-a-custom-autopatch-group) to register devices using the Autopatch groups device registration method.

<a name='supported-scenarios-when-nesting-other-azure-ad-groups'></a>

#### Supported scenarios when nesting other Microsoft Entra groups

Windows Autopatch also supports the following Microsoft Entra nested group scenarios:

Microsoft Entra groups synced up from:

- On-premises Active Directory groups (Windows Server AD)
- [Configuration Manager collections](/mem/configmgr/core/clients/manage/collections/create-collections#bkmk_aadcollsync)

> [!WARNING]
> It isn't recommended to sync Configuration Manager collections straight to the **Windows Autopatch Device Registration** Microsoft Entra group. Use a different Microsoft Entra group when syncing Configuration Manager collections to Microsoft Entra groups then you can nest this or these groups into the **Windows Autopatch Device Registration** Microsoft Entra group.

> [!IMPORTANT]
> The **Windows Autopatch Device Registration** Microsoft Entra group only supports **one level** of Microsoft Entra nested groups.

<a name='clean-up-dual-state-of-hybrid-azure-ad-joined-and-azure-registered-devices-in-your-azure-ad-tenant'></a>

### Clean up dual state of Microsoft Entra hybrid joined and Azure registered devices in your Microsoft Entra tenant

An [Microsoft Entra dual state](/azure/active-directory/devices/hybrid-azuread-join-plan#handling-devices-with-azure-ad-registered-state) occurs when a device is initially connected to Microsoft Entra ID as an [Microsoft Entra registered](/azure/active-directory/devices/concept-azure-ad-register) device. However, when you enable Microsoft Entra hybrid join, the same device is connected twice to Microsoft Entra ID but as a [Hybrid Microsoft Entra device](/azure/active-directory/devices/concept-azure-ad-join-hybrid).

In the dual state, you end up having two Microsoft Entra device records with different join types for the same device. In this case, the Hybrid Microsoft Entra device record takes precedence over the Microsoft Entra registered device record for any type of authentication in Microsoft Entra ID, which makes the Microsoft Entra registered device record stale.

It's recommended to detect and clean up stale devices in Microsoft Entra ID before registering devices with Windows Autopatch, see [How To: Manage stale devices in Microsoft Entra ID](/azure/active-directory/devices/manage-stale-devices).

> [!WARNING]
> If you don't clean up stale devices in Microsoft Entra ID before registering devices with Windows Autopatch, you might end up seeing devices failing to meet the **Intune or Cloud-Attached (Device must be either Intune-managed or Co-managed)** pre-requisite check  in the **Not ready** tab because it's expected that these stale Microsoft Entra devices aren't enrolled into the Intune service anymore.

## Prerequisites for device registration

To be eligible for Windows Autopatch management, devices must meet a minimum set of required software-based prerequisites:

- Windows 10 (1809+)/11 Enterprise or Professional editions (only x64 architecture).
- Either [Microsoft Entra hybrid joined](/azure/active-directory/devices/concept-azure-ad-join-hybrid) or [Microsoft Entra joined only](/azure/active-directory/devices/concept-azure-ad-join-hybrid) (personal devices aren't supported).
- Managed by Microsoft Intune.
    - [Already enrolled into Microsoft Intune](/mem/intune/user-help/enroll-windows-10-device) and/or [Configuration Manager co-management](/windows/deployment/windows-autopatch/prepare/windows-autopatch-prerequisites#configuration-manager-co-management-requirements).
        - Must switch the following Microsoft Configuration Manager [co-management workloads](/mem/configmgr/comanage/how-to-switch-workloads) to Microsoft Intune (either set to Pilot Intune or Intune):
            - Windows updates policies
            - Device configuration
            - Office Click-to-run
- Last Intune device check in completed within the last 28 days.

> [!IMPORTANT]
> Windows Autopatch supports registering [Windows 10 Long-Term Servicing Channel (LTSC)](/windows/whats-new/ltsc/) devices that are being currently serviced by the [Windows LTSC](/windows/release-health/release-information). The service only supports managing the [Windows quality updates](../operate/windows-autopatch-windows-quality-update-overview.md) workload for devices currently serviced by the LTSC. Windows Update for Business service and Windows Autopatch don't offer Windows feature updates for devices that are part of the LTSC. You must either use [LTSC media](https://www.microsoft.com/evalcenter/evaluate-windows-10-enterprise) or the [Configuration Manager operating system deployment capabilities to perform an in-place upgrade](/mem/configmgr/osd/deploy-use/upgrade-windows-to-the-latest-version) for Windows devices that are part of the LTSC.

For more information, see [Windows Autopatch Prerequisites](../prepare/windows-autopatch-prerequisites.md).

## About the Registered, Not ready and Not registered tabs

> [!IMPORTANT]
> Registered devices can appear in the Registered, Not ready, or Not registered tabs. When devices successfully register with the service, the devices are listed in the Registered tab. However, even if the device(s)is successfully registered, they can be part of Not ready tab. If devices fail to register, the devices are listed in the Not registered tab.

Windows Autopatch has three tabs within its device blade. Each tab is designed to provide a different set of device readiness statuses so the IT admin knows where to go to monitor, and fix potential device health issues.

| Device blade tab | Purpose | Expected device readiness status |
| ----- | ----- | ----- |
| Registered | The purpose of this tab is to show devices that were successfully registered with the Windows Autopatch service. | Active |
| Not ready | The purpose of this tab is to help you identify and remediate devices that failed to pass one or more post-device registration readiness checks. Devices showing up in this tab were successfully registered with Windows Autopatch. However, these devices aren't ready to have one or more software update workloads managed by the service. | Readiness failed and/or Inactive |
| Not registered | The purpose of this tab is to help you identify and remediate devices that don't meet one or more prerequisite checks to successfully register with the Windows Autopatch service. | Prerequisites failed |

## Device readiness statuses

The following are the possible device readiness statuses in Windows Autopatch:

| Readiness status | Description | Device blade tab |
| ----- | ----- | ----- |
| Active | Devices with this status successfully passed all prerequisite checks and then successfully registered with Windows Autopatch. Additionally, devices with this status successfully passed all post-device registration readiness checks. |  Registered |
| Readiness failed | Devices with this status haven't passed one or more post-device registration readiness checks. These devices aren't ready to have one or more software update workloads managed by Windows Autopatch. | Not ready |
| Inactive | Devices with this status haven't communicated with Microsoft Intune in the last 28 days. | Not ready |
| Prerequisites failed | Devices with this status haven't passed one or more prerequisite checks and haven't successfully registered with Windows Autopatch | Not registered |

## Built-in roles required for device registration

A role defines the set of permissions granted to users assigned to that role. You can use the **Intune Service Administrator** role to register devices.

For more information, see [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference) and [Role-based access control (RBAC) with Microsoft Intune](/mem/intune/fundamentals/role-based-access-control).

If you want to assign less-privileged user accounts to perform specific tasks in the Windows Autopatch portal, such as register devices with the service, you can add these user accounts into one of the two Microsoft Entra groups created during the [tenant enrollment](../prepare/windows-autopatch-enroll-tenant.md) process:

| Microsoft Entra group name | Discover devices | Modify columns | Refresh device list | Export to .CSV | Device actions |
| ----- | ----- | ----- | ----- | ----- | ----- |
| Modern Workplace Roles - Service Administrator | Yes | Yes | Yes | Yes | Yes |
| Modern Workplace Roles - Service Reader | No | Yes | Yes | Yes | No |

> [!TIP]
> If you're adding less-privileged user accounts into the **Modern Workplace Roles - Service Administrator** Microsoft Entra group, it's recommended to add the same users as owners of the **Windows Autopatch Device Registration** Microsoft Entra group. Owners of the **Windows Autopatch Device Registration** Microsoft Entra group can add new devices as members of the group for registration purposes.<p>For more information, see [assign an owner of member of a group in Microsoft Entra ID](/azure/active-directory/privileged-identity-management/groups-assign-member-owner#assign-an-owner-or-member-of-a-group).</p>

## Details about the device registration process

Registering your devices with Windows Autopatch does the following:

1. Makes a record of devices in the service.
2. Assign devices to the [two deployment ring sets](../deploy/windows-autopatch-groups-overview.md#about-deployment-rings) and other groups required for software update management.

For more information, see [Device registration overview](../deploy/windows-autopatch-device-registration-overview.md).

### Windows Autopatch on Windows 365 Enterprise Workloads

Windows 365 Enterprise gives IT admins the option to register devices with the Windows Autopatch service as part of the Windows 365 provisioning policy creation. This option provides a seamless experience for admins and users to ensure your Cloud PCs are always up to date. When IT admins decide to manage their Windows 365 Cloud PCs with Windows Autopatch, the Windows 365 provisioning policy creation process calls Windows Autopatch device registration APIs to register devices on behalf of the IT admin.

**To register new Windows 365 Cloud PC devices with Windows Autopatch from the Windows 365 Provisioning Policy:**

1. Go to the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. In the left pane, select **Devices**.
1. Navigate to Provisioning > **Windows 365**.
1. Select Provisioning policies > **Create policy**.
1. Provide a policy name and select **Join Type**. For more information, see [Device join types](/windows-365/enterprise/identity-authentication#device-join-types).
1. Select **Next**.
1. Choose the desired image and select **Next**.
1. Under the **Microsoft managed services** section, select **Windows Autopatch**. Then, select **Next**. If the *Windows Autopatch (preview) can't manage your Cloud PCs until a Global Admin has finished setting it up.* message appears, you must [enroll your tenant](../prepare/windows-autopatch-enroll-tenant.md) to continue.
1. Assign your policy accordingly and select **Next**.
1. Select **Create**. Now your newly provisioned Windows 365 Enterprise Cloud PCs will automatically be enrolled and managed by Windows Autopatch.

For more information, see [Create a Windows 365 Provisioning Policy](/windows-365/enterprise/create-provisioning-policy).

> [!IMPORTANT]
> Starting in May 2023, Windows 365 Cloud PC devices are assigned to two deployment ring sets, the service-based and the software-based deployment rings. Additionally, once registered with Windows Autopatch, Windows 365 Cloud PC devices are automatically added to the [Default Autopatch group](../deploy/windows-autopatch-groups-overview.md#about-the-default-autopatch-group). For more information, see [service-based versus software update-based deployment ring sets](../deploy/windows-autopatch-groups-overview.md#service-based-versus-software-update-based-deployment-rings).

### Windows Autopatch on Azure Virtual Desktop workloads

Windows Autopatch is available for your Azure Virtual Desktop workloads. Enterprise admins can provision their Azure Virtual Desktop workloads to be managed by Windows Autopatch using the existing device registration process.

Windows Autopatch provides the same scope of service with virtual machines as it does with [physical devices](#windows-autopatch-groups-device-registration). However, Windows Autopatch defers any Azure Virtual Desktop specific support to [Azure support](#contact-support-for-device-registration-related-incidents), unless otherwise specified.

#### Prerequisites

Windows Autopatch for Azure Virtual Desktop follows the same [prerequisites](../prepare/windows-autopatch-prerequisites.md) as Windows Autopatch, and the [Azure Virtual Desktop prerequisites](/azure/virtual-desktop/prerequisites).

The service supports:

- Personal persistent virtual machines

The following Azure Virtual Desktop features aren't supported:

- Multi-session hosts
- Pooled non persistent virtual machines
- Remote app streaming

#### Deploy Autopatch on Azure Virtual Desktop

Azure Virtual Desktop workloads can be registered into Windows Autopatch by using the same method as your [physical devices](#windows-autopatch-groups-device-registration).

For ease of deployment, we recommend nesting a dynamic device group in your Autopatch device registration group. The dynamic device group would target the **Name** prefix defined in your session host, but **exclude** any Multi-Session Session Hosts. For example:

| Group name | Dynamic membership name |
| ----- | ----- |
| Windows Autopatch - Host Pool Session Hosts | <ul><li>`(device.displayName -contains "AP")`</li><li>`(device.deviceOSType -ne "Windows 10 Enterprise for Virtual Desktops")`</li></ul> |

### Contact support for device registration-related incidents

Support is available either through Windows 365, or the Windows Autopatch Service Engineering team for device registration-related incidents.

- For Windows 365 support, see [Get support](/mem/get-support).
- For Azure Virtual Desktop support, see [Get support](https://azure.microsoft.com/support/create-ticket/).
- For Windows Autopatch support, see [Submit a support request](/windows/deployment/windows-autopatch/operate/windows-autopatch-support-request).

## Device management lifecycle scenarios

There's a few more device management lifecycle scenarios to consider when planning to register devices in Windows Autopatch.

### Device refresh

If a device was previously registered into the Windows Autopatch service, but it needs to be reimaged, you must run one of the device provisioning processes available in Microsoft Intune to reimage the device.

The device will be rejoined to Microsoft Entra ID (either Hybrid or Microsoft Entra-only). Then, re-enrolled into Intune as well. No further action is required from you or the Windows Autopatch service, because the Microsoft Entra device ID record of that device remains the same.

### Device repair and hardware replacement

If you need to repair a device that was previously registered into the Windows Autopatch service, by replacing the motherboard, non-removable network interface cards (NIC) or hard drive, you must re-register the device into the Windows Autopatch service, because a new hardware ID is generated when there are major hardware changes, such as:

- SMBIOS UUID (motherboard)
- MAC address (non-removable NICs)
- OS hard drive's serial, model, manufacturer information

When one of these hardware changes occurs, Microsoft Entra ID creates a new device ID record for that device, even if it's technically the same device.

> [!IMPORTANT]
> If a new Microsoft Entra device ID is generated for a device that was previously registered into the Windows Autopatch service, even if it's technically same device, the new Microsoft Entra device ID must be added either through device direct membership or through nested Microsoft Entra dynamic/assigned group into the **Windows Autopatch Device Registration** Microsoft Entra group. This process guarantees that the newly generated Microsoft Entra device ID is registered with Windows Autopatch and that the device continues to have its software updates managed by the service.
