---
title: Prerequisites
description:  This article details the prerequisites needed for Windows Autopatch
ms.date: 06/30/2022
ms.prod: w11
ms.technology: windows
ms.topic: conceptual
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
msreviewer: hathind
---

# Prerequisites

Getting started with Windows Autopatch has been designed to be easy. This article outlines the infrastructure requirements you must meet to assure success with Windows Autopatch.

| Area | Prerequisite details |
| ----- | ----- |
| Licensing | Windows Autopatch requires Windows 10/11 Enterprise E3 (or higher) to be assigned to your users. Additionally, Azure Active Directory Premium and Microsoft Intune are required. For details about the specific service plans, see [more about licenses](#more-about-licenses).<p><p>For more information on available licenses, see [Microsoft 365 licensing](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans).<p><p>For more information about licensing terms and conditions for products and services purchased through Microsoft Commercial Volume Licensing Programs, see the [Product Terms site](https://www.microsoft.com/licensing/terms/). |
| Connectivity | All Windows Autopatch devices require connectivity to multiple Microsoft service endpoints from the corporate network.<p><p>For the full list of required IPs and URLs, see [Configure your network](../prepare/windows-autopatch-configure-network.md). |
| Azure Active Directory | Azure Active Directory must either be the source of authority for all user accounts, or user accounts must be synchronized from on-premises Active Directory using the latest supported version of Azure Active Directory Connect to enable Hybrid Azure Active Directory join.<br><ul><li>For more information, see [Azure Active Directory Connect](/azure/active-directory/hybrid/whatis-azure-ad-connect) and [Hybrid Azure Active Directory join](/azure/active-directory/devices/howto-hybrid-azure-ad-join)</li><li>For more information on supported Azure Active Directory Connect versions, see [Azure AD Connect:Version release history](/azure/active-directory/hybrid/reference-connect-version-history).</li></ul> |
| Device management | Windows Autopatch devices must be managed by Microsoft Intune. Intune must be set as the Mobile Device Management (MDM) authority or co-management must be turned on and enabled on the target devices.<p><p>At a minimum, the Windows Update, Device configuration and Office Click-to-Run apps workloads must be set to Pilot Intune or Intune. You must also ensure that the devices you intend on bringing to Windows Autopatch are in the targeted device collection. For more information, see Co-management requirements for Windows Autopatch below.<p>Other device management prerequisites include:<ul><li>Devices must be corporate-owned. Windows bring-your-own-devices (BYOD) are blocked during device registration prerequisite checks.</li><li>Devices must be managed by either Intune or Configuration Manager Co-management. Devices only managed by Configuration Manager aren't supported.</li><li>Devices must be in communication with Microsoft Intune in the **last 28 days**. Otherwise, the devices won't be registered with Autopatch.</li><li>Devices must be connected to the internet.</li><li>Devices must have a **Serial number**, **Model** and **Manufacturer**. Device emulators that don't generate these fail to meet **Intune or Clout-attached** pre-requisite check.</li></ul><p>See [Register your devices](../deploy/windows-autopatch-register-devices) for more details on device pre-requisites and on how the device registration process works.

For more information on co-management, see [Co-management for Windows devices](/mem/configmgr/comanage/overview). |
| Data and privacy | For more information on Windows Autopatch privacy practices, see [Windows Autopatch Privacy](../references/windows-autopatch-privacy.md). |

## More about licenses

Windows Autopatch is included with Window 10/11 Enterprise E3 or higher. The following are the other licenses that grant entitlement to Windows Autopatch:

| License | ID | GUID number |
| ----- | ----- | ------|
| [Microsoft 365 E3](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | SPE_E3 | 05e9a617-0261-4cee-bb44-138d3ef5d965 |
| [Microsoft 365 E5](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | SPE_E5 | 06ebc4ee-1bb5-47dd-8120-11324bc54e06 |
| [Windows 10/11 Enterprise E3](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | WIN10_VDA_E3 | 6a0f6da5-0b87-4190-a6ae-9bb5a2b9546a |
| [Windows 10/11 Enterprise E5](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | WIN10_VDA_E5 | 488ba24a-39a9-4473-8ee5-19291e71b002 |
| [Windows 10/11 Enterprise VDA](/windows/deployment/deploy-enterprise-licenses#virtual-desktop-access-vda) | E3_VDA_only | d13ef257-988a-46f3-8fce-f47484dd4550 |

The following Windows 64-bit editions are required for Windows Autopatch:

- Windows 10/11 Pro
- Windows 10/11 Enterprise
- Windows 10/11 Pro for Workstations

## Configuration Manager Co-management requirements

Windows Autopatch fully supports co-management. The following co-management requirements apply:

- Use a currently supported [Configuration Manager version](/mem/configmgr/core/servers/manage/updates#supported-versions).
- Ensure ConfigMgr is connected to the internet and [cloud-attach with Intune](/mem/configmgr/cloud-attach/overview).
- Ensure ConfigMgr is co-managed. For more information, see [Paths to co-management](/mem/configmgr/comanage/quickstart-paths).
- Set the [Windows Update workload](/mem/configmgr/comanage/workloads#windows-update-policies) to Pilot Intune or Intune.
- Set the [Device configuration workload](/mem/configmgr/comanage/workloads#device-configuration) to Pilot Intune or Intune.
- Set the [Office Click-to-Run apps workload](/mem/configmgr/comanage/workloads#office-click-to-run-apps) to Pilot Intune or Intune.
