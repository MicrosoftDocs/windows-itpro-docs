---
title: Register your devices
description:  This article details how to register devices in Autopatch
ms.date: 08/08/2022
ms.prod: w11
ms.technology: windows
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

- [Windows quality updates](../operate/windows-autopatch-wqu-overview.md)
- [Windows feature updates](../operate/windows-autopatch-fu-overview.md)
- [Microsoft 365 Apps for enterprise updates](../operate/windows-autopatch-microsoft-365-apps-enterprise.md)
- [Microsoft Edge updates](../operate/windows-autopatch-edge.md)
- [Microsoft Teams updates](../operate/windows-autopatch-teams.md)

### About the use of an Azure AD group to register devices

You must choose what devices to manage with Windows Autopatch by adding them into the **Windows Autopatch Device Registration** Azure AD assigned group. Devices can be added using the following methods:

- Direct Membership 
- Nesting other Azure AD dynamic/assigned groups
- Bulk operations – Import members 

Windows Autopatch automatically runs its discover devices function every hour to discover new devices added to this group. Once new devices are discovered, Windows Autopatch attempts to register these devices.

> [!NOTE]
> Devices that are intended to be managed by the Windows Autopatch service **must** be added into the **Windows Autopatch Device Registration** Azure AD assigned group. Devices can only be added to this group if they have an Azure AD device ID. Windows Autopatch scans the Azure AD group hourly to discover newly added devices to be registered. You can also use the **Discover devices** button in either the **Ready** or **Not ready** tab to register devices on demand.

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
- Managed by Microsoft Endpoint Manager.
    - [Microsoft Intune](https://www.microsoft.com/cloud-platform/microsoft-intune) and/or [Configuration Manager Co-management](/windows/deployment/windows-autopatch/prepare/windows-autopatch-prerequisites#configuration-manager-co-management-requirements).
        - Must switch the following Microsoft Endpoint Manager-Configuration Manager [Co-management workloads](/mem/configmgr/comanage/how-to-switch-workloads) to Microsoft Endpoint Manager-Intune (either set to Pilot Intune or Intune):
            - Windows updates policies
            - Device configuration
            - Office Click-to-run
- Last Intune device check in completed within the last 28 days.
- Devices must have Serial Number, Model and Manufacturer.
	> [!NOTE]
	> Windows Autopatch doesn't support device emulators that don't generate Serial number, Model and Manufacturer. Devices that use a non-supported device emulator fail the **Intune or Cloud-Attached** pre-requisite check. Additionally, devices with duplicated serial numbers will fail to register with Windows Autopatch.

For more information, see [Windows Autopatch Prerequisites](../prepare/windows-autopatch-prerequisites.md).

## About the Ready and Not ready tabs

Windows Autopatch introduces a new user interface to help IT admins detect and troubleshoot device readiness statuses seamlessly with actionable in-UI device readiness reports for unregistered devices or unhealthy devices.

| Tab | Purpose |
| ----- | ----- |
| Ready | The purpose of the Ready tab is to show devices that were successfully registered to the Windows Autopatch service. |
| Not ready | The purpose of the Not ready tab is to help you identify and remediate devices that don't meet the pre-requisite checks to register into the Windows Autopatch service. This tab only shows devices that didn't successfully register into Windows Autopatch. |

## Built-in roles required for device registration

A role defines the set of permissions granted to users assigned to that role. You can use one of the following built-in roles in Windows Autopatch to register devices:

- Azure AD Global Administrator
- Intune Service Administrator
- Modern Workplace Intune Administrator

For more information, see [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference) and [Role-based access control (RBAC) with Microsoft Intune](/mem/intune/fundamentals/role-based-access-control).

> [!NOTE]
> The Modern Workplace Intune Admin role is a custom created role during the Windows Autopatch tenant enrollment process. This role can assign administrators to Endpoint Manager roles, and allows you to create and configure custom Endpoint Manager roles.

## Details about the device registration process

Registering your devices with Windows Autopatch does the following:

1. Makes a record of devices in the service.
2. Assign devices to the [deployment rings](../operate/windows-autopatch-update-management.md) and other groups required for software update management.

For more information, see [Device registration overview](../deploy/windows-autopatch-device-registration-overview.md).

## Steps to register devices

Any device (either physical or virtual) that contains an Azure AD device ID, can be added into the **Windows Autopatch Device Registration** Azure AD group through either direct membership or by being part of another Azure AD group (either dynamic or assigned) that's nested to this group, so it can be registered with Windows Autopatch. The only exception is new Windows 365 Cloud PCs, as these virtual devices must be registered with Windows Autopatch from the Windows 365 provisioning policy. For more information, see [Windows Autopatch on Windows 365 Enterprise Workloads](#windows-autopatch-on-windows-365-enterprise-workloads).
Since existing Windows 365 Cloud PCs already have an existing Azure AD device ID, these devices can be added into the **Windows Autopatch Device Registration** Azure group through either direct membership or by being part of another Azure AD group (either dynamic or assigned) that's nested to this group.

**To register devices with Windows Autopatch:**

1. Go to the [Microsoft Endpoint Manager admin center](https://endpoint.microsoft.com/).
2. Select **Devices** from the left navigation menu.
3. Under the **Windows Autopatch** section, select **Devices**.
4. Select either the **Ready** or the **Not ready** tab, then select the **Windows Autopatch Device Registration** hyperlink. The Azure Active Directory group blade opens.
5. Add either devices through direct membership, or other Azure AD dynamic or assigned groups as nested groups in the **Windows Autopatch Device Registration** group.

> [!NOTE]
> The **Windows Autopatch Device Registration** hyperlink is in the center of the Ready tab when there's no devices registered with the Windows Autopatch service. Once you have one or more devices registered with the Windows Autopatch service, the **Windows Autopatch Device registration** hyperlink is at the top of both **Ready** and **Not ready** tabs.

Once devices or other Azure AD groups (either dynamic or assigned) containing devices are added to the **Windows Autopatch Device Registration** group, Windows Autopatch's device discovery hourly function discovers these devices, and runs software-based prerequisite checks to try to register them with its service.

> [!TIP]
> You can also use the **Discover Devices** button in either the **Ready** or **Not ready** tab to discover devices from the **Windows Autopatch Device Registration** Azure AD group on demand.

### Windows Autopatch on Windows 365 Enterprise Workloads

Windows 365 Enterprise gives IT admins the option to register devices with the Windows Autopatch service as part of the Windows 365 provisioning policy creation. This option provides a seamless experience for admins and users to ensure your Cloud PCs are always up to date. When IT admins decide to manage their Windows 365 Cloud PCs with Windows Autopatch, the Windows 365 provisioning policy creation process calls Windows Autopatch device registration APIs to register devices on behalf of the IT admin.

**To register new Windows 365 Cloud PC devices with Windows Autopatch from the Windows 365 Provisioning Policy:**

1. Go to the [Microsoft Endpoint Manager](https://endpoint.microsoft.com/) admin center.
1. In the left pane, select **Devices**.
1. Navigate to Provisioning > **Windows 365**.
1. Select Provisioning policies > **Create policy**.
1. Provide a policy name and select **Join Type**. For more information, see [Device join types](/windows-365/enterprise/identity-authentication#device-join-types).  
1. Select **Next**.
1. Choose the desired image and select **Next**.
1. Under the **Microsoft managed services** section, select **Windows Autopatch**. Then, select **Next**. If the *Windows Autopatch (preview) cannot manage your Cloud PCs until a Global Admin has finished setting it up.* message appears, you must [enroll your tenant](../prepare/windows-autopatch-enroll-tenant.md) to continue.
1. Assign your policy accordingly and select **Next**.
1. Select **Create**. Now your newly provisioned Windows 365 Enterprise Cloud PCs will automatically be enrolled and managed by Windows Autopatch.

For more information, see [Create a Windows 365 Provisioning Policy](/windows-365/enterprise/create-provisioning-policy).

### Contact support for device registration-related incidents

Support is available either through Windows 365, or the Windows Autopatch Service Engineering team for device registration-related incidents.

- For Windows 365 support, see [Get support](/mem/get-support).  
- For Windows Autopatch support, see [Submit a support request](/windows/deployment/windows-autopatch/operate/windows-autopatch-support-request).  

## Device management lifecycle scenarios

There's a few more device management lifecycle scenarios to consider when planning to register devices in Windows Autopatch.

### Device refresh

If a device was previously registered into the Windows Autopatch service, but it needs to be reimaged, you must run one of the device provisioning processes available in Microsoft Endpoint Manager to reimage the device.

The device will be rejoined to Azure AD (either Hybrid or Azure AD-only). Then, re-enrolled into Intune as well. No further action is required from you or the Windows Autopatch service, because the Azure AD device ID record of that device remains the same.

### Device repair and hardware replacement

If you need to repair a device that was previously registered into the Windows Autopatch service, by replacing the motherboard, non-removable network interface cards (NIC) or hard drive, you must re-register the device into the Windows Autopatch service, because a new hardware ID is generated when there are major hardware changes, such as:

- SMBIOS UUID (motherboard)
- MAC address (non-removable NICs)
- OS hard drive's serial, model, manufacturer information

When one of these hardware changes occurs, Azure AD creates a new device ID record for that device, even if it's technically the same device.

> [!IMPORTANT]
> If a new Azure AD device ID is generated for a device that was previously registered into the Windows Autopatch service, even if it's technically same device, the new Azure AD device ID must be added either through device direct membership or through nested Azure AD dynamic/assigned group into the **Windows Autopatch Device Registration** Azure AD group. This process guarantees that the newly generated Azure AD device ID is registered with Windows Autopatch and that the device continues to have its software updates managed by the service.
