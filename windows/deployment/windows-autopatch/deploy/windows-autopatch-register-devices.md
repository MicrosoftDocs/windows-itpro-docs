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

Windows Autopatch to take over software updates management of supported devices as soon as an IT admin decides to have their tenant managed by Windows Autopatch. Windows Autopatch update management scope includes:

- [Windows quality updates](../operate/windows-autopatch-wqu-overview.md)
- [Microsoft 365 Apps for enterprise updates](../operate/windows-autopatch-microsoft-365-apps-enterprise.md)
- [Microsoft Edge updates](../operate/windows-autopatch-edge.md)
- [Microsoft Teams updates](../operate/windows-autopatch-teams.md)

You must choose what devices to manage with Windows Autopatch by adding either devices through direct membership or by adding other Azure Active Directory (Azure AD) dynamic/assigned groups into the Azure Active Directory assigned **Windows Autopatch Device Registration** group. Windows Autopatch runs every hour to discover new devices added to this group. Once new devices are discovered, Windows Autopatch attempts to register these devices into its service.

> [!TIP]
> You can also use the **Discover Devices** button in either the Ready or Not Ready tabs to discover devices from the Windows Autopatch Device Registration Azure AD group on demand.

To be eligible for Windows Autopatch management, devices must meet a minimum set of required software-based prerequisites:

## Prerequisites

- Windows 10/11 Enterprise edition 1809+.
- Either hybrid or Azure AD joined (personal devices aren't supported).
- Managed by Microsoft Endpoint Manager (either Microsoft Endpoint Manager-Intune or Microsoft Endpoint Manager-Configuration Manager Co-management).
- Microsoft Endpoint Manager-Configuration Manager Co-management workloads swung over to Microsoft Endpoint Manager-Intune (either set to Pilot Intune or Intune).
	- Windows Updates policies
	- Device configuration
	- Office Click-to-run
- Last Intune device check-in completed within the last 28 days.  

For more information about each prerequisite check, see the [Prerequisites](../prepare/windows-autopatch-prerequisites.md) article.

## About Devices Ready and Not Ready tabs

Windows Autopatch introduces a new user interface to help IT admins manage devices and troubleshoot device readiness statuses seamlessly with actionable in-UI device readiness reports for unregistered devices or unhealthy devices.

| Tab | Purpose |
| ----- | ----- |
| Ready tab | The purpose of the Ready tab is to show devices that were successfully registered to the Windows Autopatch service and that have met on-going device health requirements. |
| Not ready tab | The purpose of the Not ready tab is to show devices that didn't successfully register into the Windows Autopatch service, or didn't pass one of the device readiness checks. This tab is intended to help customers identify and remediate devices that don't meet device readiness checks.<p><p>Devices successfully registered and healthy don't show up in the Not ready tab. |

> [!WARNING]
> The **Not Ready** tab will not be available during the first week of the Public preview.

## Built-in roles required for device registration

A role defines the set of permissions granted to users assigned to that role. You can use one of the following built-in roles in Windows Autopatch to register devices:

- Azure AD Global Administrator
- Intune Service Administrator
- Modern Workplace Intune Administrator

> [!NOTE]
> The Modern Workplace Intune Admin role is a custom created role in Windows Autopatch. This role can assign administrators to Endpoint Manager roles, and allows you to create and configure custom Endpoint Manager roles.

## Steps to register devices

**To register devices into Windows Autopatch:**

1. Go to the [Microsoft Endpoint Manager admin center](https://endpoint.microsoft.com/).
2. Select **Windows Autopatch** from the left navigation menu.
3. Select **Devices**.
4. Select the **Ready** tab, then select the **Windows Autopatch Device Registration** hyperlink. The Azure Active Directory group blade opens.
5. Add either devices through direct membership or other Azure Active Directory dynamic or assigned groups as nested groups in the **Windows Autopatch Device Registration** group.

Once devices or Azure AD groups containing devices are added to the **Windows Autopatch Device Registration** group, Windows Autopatch discovers these devices and runs device-level prerequisite checks to try to register them.

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

Any device that needs to be registered into the Windows Autopatch service must be added into the **Windows Autopatch Device Registration** Azure AD assigned group. Devices can only be added to this group if they have an Azure AD device record ID. Windows Autopatch scans the Azure AD group to discover the new device and brings it in to be registered.
