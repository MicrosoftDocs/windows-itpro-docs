---
title: Register your devices
description:  This article details how to register devices in Autopatch
ms.date: 05/31/2022
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

Windows Autopatch can take over software update management of supported devices as soon as an IT admin decides to have their tenant managed by the service. The Windows Autopatch software update management scope includes:

- [Windows quality updates](../operate/windows-autopatch-wqu-overview.md)
- [Microsoft 365 Apps for enterprise updates](../operate/windows-autopatch-microsoft-365-apps-enterprise.md)
- [Microsoft Edge updates](../operate/windows-autopatch-edge.md)
- [Microsoft Teams updates](../operate/windows-autopatch-teams.md)

### About the use of an Azure AD group to register devices

You must choose what devices to manage with Windows Autopatch by either adding them through direct membership or by nesting other Azure AD dynamic/assigned groups into the **Windows Autopatch Device Registration** Azure AD assigned group. Windows Autopatch automatically runs every hour to discover new devices added to this group. Once new devices are discovered, Windows Autopatch attempts to register these devices into its service.

> [!NOTE]
> All devices that are intended to be managed by the Windows Autopatch service **must** be added into the **Windows Autopatch Device Registration** Azure AD assigned group. Devices can only be added to this group if they have an Azure AD device ID. Windows Autopatch scans the Azure AD group hourly to discover newly added devices to be registered.

#### Supported scenarios when nesting other Azure AD groups

Windows Autopatch also supports the following Azure AD nested group scenarios:

Azure AD groups synced up from:

- On-premises Active Directory groups (Windows server type).
- [Configuration Manager collections](/mem/configmgr/core/clients/manage/collections/create-collections#bkmk_aadcollsync).

> [!IMPORTANT]
> The **Windows Autopatch Device Registration** Azure AD group only supports one level of Azure AD nested groups.

> [!TIP]
> You can also use the **Discover Devices** button in either the Ready or Not ready tabs to discover devices from the Windows Autopatch Device Registration Azure AD group on demand.

## Prerequisites

To be eligible for Windows Autopatch management, devices must meet a minimum set of required software-based prerequisites:

- Windows 10/11 64-bit Enterprise edition 1809+.
- Either hybrid or Azure AD joined (personal devices aren't supported).
- Managed by Microsoft Endpoint Manager.
    - Microsoft Endpoint Manager-Intune or Microsoft Endpoint Manager-Configuration Manager Co-management.
        - Microsoft Endpoint Manager-Configuration Manager Co-management workloads swung over to Microsoft Endpoint Manager-Intune (either set to Pilot Intune or Intune).
            - Windows updates policies
            - Device configuration
            - Office Click-to-run
- Last Intune device check-in completed within the last 28 days.  

For more details on each prerequisite check, see the [Prerequisites](../prepare/windows-autopatch-prerequisites.md) article.

## About the Ready and Not ready tabs

Windows Autopatch introduces a new user interface to help IT admins manage devices and troubleshoot device readiness statuses seamlessly with actionable in-UI device readiness reports for unregistered devices or unhealthy devices.

> [!IMPORTANT]
> The **Not ready** tab will not be available during the first week of the public preview.

| Tab | Purpose |
| ----- | ----- |
| Ready tab | The purpose of the Ready tab is to show devices that were successfully registered to the Windows Autopatch service and that have met post-registration device health requirements. |
| Not ready tab | The purpose of the Not ready tab is to show devices that didn't successfully register into the Windows Autopatch service, or didn't pass one of the post-registration health requirements. This tab is intended to help customers identify and remediate devices that don't meet either pre or post-registration device readiness checks.<p><p>Devices successfully registered and healthy don't appear in the Not ready tab. |

## Built-in roles required for device registration

A role defines the set of permissions granted to users assigned to that role. You can use one of the following built-in roles in Windows Autopatch to register devices:

- Azure AD Global Administrator
- Service Support Administrator
- Intune Service Administrator
- Modern Workplace Intune Administrator

For more information, see [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference) and  [Role-based access control (RBAC) with Microsoft Intune](/mem/intune/fundamentals/role-based-access-control).

> [!NOTE]
> The Modern Workplace Intune Admin role is a custom created role during the Windows Autopatch tenant enrollment process. This role can assign administrators to Endpoint Manager roles, and allows you to create and configure custom Endpoint Manager roles.

## Details about the device registration process

Registering your devices in Windows Autopatch does the following:

1. Makes a record of devices in the service.
2. Assign devices into the ring groups and other groups required for software updates management.

## Steps to register devices

**To register devices into Windows Autopatch:**

1. Go to the [Microsoft Endpoint Manager admin center](https://endpoint.microsoft.com/).
2. Select **Windows Autopatch** from the left navigation menu.
3. Select **Devices**.
4. Select the **Ready** tab, then select the **Windows Autopatch Device Registration** hyperlink. The Azure Active Directory group blade opens.
5. Add either devices through direct membership or other Azure Active Directory dynamic or assigned groups as nested groups in the **Windows Autopatch Device Registration** group.

Once devices or Azure AD groups containing devices are added to the **Windows Autopatch Device Registration** group, Windows Autopatch discovers these devices and runs device-level prerequisite checks to try to register them.

> [!IMPORTANT]
> It might take up to an hour for a device to change its status from **Ready for User** to **Active** in the Ready tab during the public preview.

## Other device lifecycle management scenarios

There are a few more device lifecycle management scenarios to consider when planning to register devices in Windows Autopatch.

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
> If a new Azure AD device ID is generated for a device that was previously registered into Windows Autopatch, even if it's the same device, the new Azure AD device ID must be added either through device direct membership or through nested Azure AD dynamic/assigned group into the **Windows Autopatch Device Registration** group. This process guarantees the newly generated Azure AD device ID is registered with Windows Autopatch and that the device continues to have its software updates managed by the service.
