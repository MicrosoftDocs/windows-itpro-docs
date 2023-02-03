---
title: Register your devices
description: This article details how to register devices in Autopatch
ms.date: 02/03/2023
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
msreviewer: andredm7
---

# Register your devices

Before Microsoft can manage your devices in Windows Autopatch, you must have devices registered with the service.

## Before you begin

Windows Autopatch can take over software update management control of devices that meet software-based prerequisites as soon as an IT admin decides to have their tenant managed by the service. The Windows Autopatch software update management scope includes the following software update workloads:

- [Windows quality updates](../operate/windows-autopatch-windows-quality-update-overview.md)
- [Windows feature updates](../operate/windows-autopatch-windows-feature-update-overview.md)
- [Microsoft 365 Apps for enterprise updates](../operate/windows-autopatch-microsoft-365-apps-enterprise.md)
- [Microsoft Edge updates](../operate/windows-autopatch-edge.md)
- [Microsoft Teams updates](../operate/windows-autopatch-teams.md)

### About the use of an Azure AD group to register devices

You must choose what devices to manage with Windows Autopatch by adding them to the **Windows Autopatch Device Registration** Azure AD assigned group. Devices can be added using the following methods:

- Direct membership
- Nesting other Azure AD dynamic/assigned groups
- [Bulk add/import group members](/azure/active-directory/enterprise-users/groups-bulk-import-members)

Windows Autopatch automatically runs its discover devices function every hour to discover new devices added to this group. Once new devices are discovered, Windows Autopatch attempts to register these devices.

> [!NOTE]
> Devices that are intended to be managed by the Windows Autopatch service **must** be added into the **Windows Autopatch Device Registration** Azure AD assigned group. Devices can only be added to this group if they have an Azure AD device ID. Windows Autopatch scans the Azure AD group hourly to discover newly added devices to be registered. You can also use the **Discover devices** button in either the **Ready** or **Not ready** tab to register devices on demand.

> [!IMPORTANT]
> Windows Autopatch supports only one level of group-nesting in the **Windows Autopatch Device Registration** Azure AD group.

#### Supported scenarios when nesting other Azure AD groups

Windows Autopatch also supports the following Azure AD nested group scenarios:

Azure AD groups synced up from:

- On-premises Active Directory groups (Windows Server AD).
- [Configuration Manager collections](/mem/configmgr/core/clients/manage/collections/create-collections#bkmk_aadcollsync).

> [!WARNING]
> It isn't recommended to sync Configuration Manager collections straight to the **Windows Autopatch Device Registration** Azure AD group. Use a different Azure AD group when syncing Configuration Manager collections to Azure AD groups then you can nest this or these groups into the **Windows Autopatch Device Registration** Azure AD group.

> [!IMPORTANT]
> The **Windows Autopatch Device Registration** Azure AD group only supports one level of Azure AD nested groups.

### Clean up dual state of Hybrid Azure AD joined and Azure registered devices in your Azure AD tenant

An [Azure AD dual state](/azure/active-directory/devices/hybrid-azuread-join-plan#handling-devices-with-azure-ad-registered-state) occurs when a device is initially connected to Azure AD as an [Azure AD Registered](/azure/active-directory/devices/concept-azure-ad-register) device. However, when you enable Hybrid Azure AD join, the same device is connected twice to Azure AD but as a [Hybrid Azure AD device](/azure/active-directory/devices/concept-azure-ad-join-hybrid).

In the dual state, you end up having two Azure AD device records with different join types for the same device. In this case, the Hybrid Azure AD device record takes precedence over the Azure AD registered device record for any type of authentication in Azure AD, which makes the Azure AD registered device record stale.

It's recommended to detect and clean up stale devices in Azure AD before registering devices with Windows Autopatch, see [How To: Manage state devices in Azure AD](/azure/active-directory/devices/manage-stale-devices).

> [!WARNING]
> If you don't clean up stale devices in Azure AD before registering devices with Windows Autopatch, you might end up seeing devices failing to meet the **Intune or Cloud-Attached (Device must be either Intune-managed or Co-managed)** pre-requisite check  in the **Not ready** tab because it's expected that these stale Azure AD devices are not enrolled into the Intune service anymore.

## Prerequisites for device registration

To be eligible for Windows Autopatch management, devices must meet a minimum set of required software-based prerequisites:

- Windows 10 (1809+)/11 Enterprise or Professional editions (only x64 architecture).
- Either [Hybrid Azure AD-Joined](/azure/active-directory/devices/concept-azure-ad-join-hybrid) or [Azure AD-joined only](/azure/active-directory/devices/concept-azure-ad-join-hybrid) (personal devices aren't supported).
- Managed by Microsoft Intune.
    - [Already enrolled into Microsoft Intune](/mem/intune/user-help/enroll-windows-10-device) and/or [Configuration Manager co-management](/windows/deployment/windows-autopatch/prepare/windows-autopatch-prerequisites#configuration-manager-co-management-requirements).
        - Must switch the following Microsoft Configuration Manager [co-management workloads](/mem/configmgr/comanage/how-to-switch-workloads) to Microsoft Intune (either set to Pilot Intune or Intune):
            - Windows updates policies
            - Device configuration
            - Office Click-to-run
- Last Intune device check in completed within the last 28 days.
- Devices must have Serial Number, Model and Manufacturer.
	> [!NOTE]
	> Windows Autopatch doesn't support device emulators that don't generate Serial number, Model and Manufacturer. Devices that use a non-supported device emulator fail the **Intune or Cloud-Attached** pre-requisite check. Additionally, devices with duplicated serial numbers will fail to register with Windows Autopatch.

For more information, see [Windows Autopatch Prerequisites](../prepare/windows-autopatch-prerequisites.md).

## About the Ready, Not ready and Not registered tabs

Windows Autopatch has three tabs within its device blade. Each tab is designed to provide a different set of device readiness statuses so IT admin knows where to go to monitor, and fix potential device health issues.

| Device blade tab | Purpose | Expected device readiness status |
| ----- | ----- | ----- |
| Ready | The purpose of this tab is to show devices that were successfully registered with the Windows Autopatch service. | Active |
| Not ready | The purpose of this tab is to help you identify and remediate devices that failed to pass one or more post-device registration readiness checks. Devices showing up in this tab were successfully registered with Windows Autopatch. However, these devices aren't ready to have one or more software update workloads managed by the service. | Readiness failed and/or Inactive |
| Not registered | The purpose of this tab is to help you identify and remediate devices that don't meet one or more prerequisite checks to successfully register with the Windows Autopatch service. | Pre-requisites failed |

## Device readiness statuses

See all possible device readiness statuses in Windows Autopatch:

| Readiness status | Description | Device blade tab |
| ----- | ----- | ----- |
| Active | Devices with this status successfully passed all prerequisite checks and then successfully registered with Windows Autopatch. Additionally, devices with this status successfully passed all post-device registration readiness checks. |  Ready |
| Readiness failed | Devices with this status haven't passed one or more post-device registration readiness checks. These devices aren't ready to have one or more software update workloads managed by Windows Autopatch. | Not ready |
| Inactive | Devices with this status haven't communicated with Microsoft Intune in the last 28 days. | Not ready |
| Pre-requisites failed | Devices with this status haven't passed one or more pre-requisite checks and haven't successfully registered with Windows Autopatch | Not registered |

## Built-in roles required for device registration

A role defines the set of permissions granted to users assigned to that role. You can use one of the following built-in roles in Windows Autopatch to register devices:

- Azure AD Global Administrator
- Intune Service Administrator

For more information, see [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference) and [Role-based access control (RBAC) with Microsoft Intune](/mem/intune/fundamentals/role-based-access-control).

If you want to assign less-privileged user accounts to perform specific tasks in the Windows Autopatch portal, such as register devices with the service, you can add these user accounts into one of the two Azure AD groups created during the [tenant enrollment](../prepare/windows-autopatch-enroll-tenant.md) process:

| Role | Discover devices | Modify columns | Refresh device list | Export to .CSV | Device actions |
| ----- | ----- | ----- | ----- | ----- | ----- |
| Modern Workplace Roles - Service Administrator | Yes | Yes | Yes | Yes | Yes |
| Modern Workplace Roles - Service Reader | No | Yes | Yes | Yes | No |

> [!TIP]
> If you're adding less-privileged user accounts into the **Modern Workplace Roles - Service Administrator** Azure AD group, it's recommended to add the same users as owners of the **Windows Autopatch Device Registration** Azure AD group. Owners of the **Windows Autopatch Device Registration** Azure AD group can add new devices as members of the group for registration purposes.<p>For more information, see [assign an owner of member of a group in Azure AD](/azure/active-directory/privileged-identity-management/groups-assign-member-owner#assign-an-owner-or-member-of-a-group).</p>

## Details about the device registration process

Registering your devices with Windows Autopatch does the following:

1. Makes a record of devices in the service.
2. Assign devices to the [deployment rings](../operate/windows-autopatch-update-management.md) and other groups required for software update management.

For more information, see [Device registration overview](../deploy/windows-autopatch-device-registration-overview.md).

## Steps to register devices

Any device (either physical or virtual) that contains an Azure AD device ID, can be added into the **Windows Autopatch Device Registration** Azure AD group through either direct membership or by being part of another Azure AD group (either dynamic or assigned) that's nested to this group, so it can be registered with Windows Autopatch. The only exception is new Windows 365 Cloud PCs, as these virtual devices must be registered with Windows Autopatch from the Windows 365 provisioning policy. For more information, see [Windows Autopatch on Windows 365 Enterprise Workloads](#windows-autopatch-on-windows-365-enterprise-workloads).
Since existing Windows 365 Cloud PCs already have an existing Azure AD device ID, these devices can be added into the **Windows Autopatch Device Registration** Azure group through either direct membership or by being part of another Azure AD group (either dynamic or assigned) that's nested to this group.

**To register devices with Windows Autopatch:**

1. Go to the [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Select **Devices** from the left navigation menu.
3. Under the **Windows Autopatch** section, select **Devices**.
4. Select either the **Ready** or the **Not registered** tab, then select the **Windows Autopatch Device Registration** hyperlink. The Azure Active Directory group blade opens.
5. Add either devices through direct membership, or other Azure AD dynamic or assigned groups as nested groups in the **Windows Autopatch Device Registration** group.

> [!NOTE]
> The **Windows Autopatch Device Registration** hyperlink is in the center of the Ready tab when there's no devices registered with the Windows Autopatch service. Once you have one or more devices registered with the Windows Autopatch service, the **Windows Autopatch Device registration** hyperlink is at the top of both **Ready** and **Not registered** tabs.

Once devices or other Azure AD groups (either dynamic or assigned) containing devices are added to the **Windows Autopatch Device Registration** group, Windows Autopatch's device discovery hourly function discovers these devices, and runs software-based prerequisite checks to try to register them with its service.

> [!TIP]
> You can also use the **Discover Devices** button in either one of the **Ready**, **Not ready**, or **Not registered** device blade tabs to discover devices from the **Windows Autopatch Device Registration** Azure AD group on demand. On demand means you don't have to wait for Windows Autopatch to discover devices from the Azure AD group on your behalf.

### Windows Autopatch on Windows 365 Enterprise Workloads

Windows 365 Enterprise gives IT admins the option to register devices with the Windows Autopatch service as part of the Windows 365 provisioning policy creation. This option provides a seamless experience for admins and users to ensure your Cloud PCs are always up to date. When IT admins decide to manage their Windows 365 Cloud PCs with Windows Autopatch, the Windows 365 provisioning policy creation process calls Windows Autopatch device registration APIs to register devices on behalf of the IT admin.

**To register new Windows 365 Cloud PC devices with Windows Autopatch from the Windows 365 Provisioning Policy:**

1. Go to the [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
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

### Windows Autopatch on Azure Virtual Desktop workloads

Windows Autopatch is available for your Azure Virtual Desktop workloads. Enterprise admins can provision their Azure Virtual Desktop workloads to be managed by Windows Autopatch using the existing [device registration process](#steps-to-register-devices).

Windows Autopatch provides the same scope of service with virtual machines as it does with [physical devices](#steps-to-register-devices). However, Windows Autopatch defers any Azure Virtual Desktop specific support to [Azure support](#contact-support-for-device-registration-related-incidents), unless otherwise specified.

#### Prerequisites

Windows Autopatch for Azure Virtual Desktop follows the same [prerequisites](../prepare/windows-autopatch-prerequisites.md) as Windows Autopatch, and the [Azure Virtual Desktop prerequisites](/azure/virtual-desktop/prerequisites).

The service supports:

- Personal persistent virtual machines

The following Azure Virtual Desktop features aren’t supported:

- Multi-session hosts
- Pooled non persistent virtual machines
- Remote app streaming

#### Deploy Autopatch on Azure Virtual Desktop

Azure Virtual Desktop workloads can be registered into Windows Autopatch by using the same method as your [physical devices](#steps-to-register-devices). For more information, see [Register your devices](#steps-to-register-devices).

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

The device will be rejoined to Azure AD (either Hybrid or Azure AD-only). Then, re-enrolled into Intune as well. No further action is required from you or the Windows Autopatch service, because the Azure AD device ID record of that device remains the same.

### Device repair and hardware replacement

If you need to repair a device that was previously registered into the Windows Autopatch service, by replacing the motherboard, non-removable network interface cards (NIC) or hard drive, you must re-register the device into the Windows Autopatch service, because a new hardware ID is generated when there are major hardware changes, such as:

- SMBIOS UUID (motherboard)
- MAC address (non-removable NICs)
- OS hard drive's serial, model, manufacturer information

When one of these hardware changes occurs, Azure AD creates a new device ID record for that device, even if it's technically the same device.

> [!IMPORTANT]
> If a new Azure AD device ID is generated for a device that was previously registered into the Windows Autopatch service, even if it's technically same device, the new Azure AD device ID must be added either through device direct membership or through nested Azure AD dynamic/assigned group into the **Windows Autopatch Device Registration** Azure AD group. This process guarantees that the newly generated Azure AD device ID is registered with Windows Autopatch and that the device continues to have its software updates managed by the service.
