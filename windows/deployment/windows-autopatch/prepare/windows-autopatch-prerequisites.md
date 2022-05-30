---
title: Prerequisites
description:  This article details the prerequisites needed for Windows Autopatch
ms.date: 05/30/2022
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
| Device management | Windows Autopatch devices must be managed by Microsoft Intune. Intune must be set as the Mobile Device Management (MDM) authority or co-management must be turned on and enabled on the target devices.<p><p>At a minimum, the Windows Update, Device configuration and Office Click-to-Run apps workloads must be set to Pilot Intune or Intune. You must also ensure that the devices you intend on bringing to Windows Autopatch are in the targeted device collection. For more information, see Co-management requirements for Windows Autopatch below.<p>Other device management prerequisites include:<ul><li>Devices must be corporate-owned. Windows bring-your-own-devices (BYOD) are blocked during device registration prerequisite checks.</li><li>Devices managed only by Microsoft Endpoint Configuration Manager aren't supported.</li><li>Devices must be in communication with Microsoft Intune in the last 28 days. Otherwise, the devices won't be registered with Autopatch.</li><li>Devices must be connected to the internet.</li></ul><p>For more information on co-management, see [Co-management for Windows devices](/mem/configmgr/comanage/overview). |
| Data and privacy | For more information on Windows Autopatch privacy practices, see [Windows Autopatch Privacy](../references/windows-autopatch-privacy.md). |

## More about licenses

Windows Autopatch is included with Window 10/11 Enterprise E3 or higher. The following are the other licenses that grant entitlement to Windows Autopatch:

- Windows 10/11 Enterprise E3
- Windows 10/11 Enterprise E5
- Microsoft 365 E3
- Microsoft 365 E5

The following Windows 64-bit editions are required for Windows Autopatch:

- Windows 10/11 Enterprise

## Co-management requirements

Windows Autopatch fully supports co-management. The following co-management requirements apply:

- Use a currently supported [Configuration Manager version](/mem/configmgr/core/servers/manage/updates#supported-versions).
- Ensure ConfigMgr is connected to the internet and [cloud-attach with Intune](mem/configmgr/cloud-attach/overview).
- Ensure ConfigMgr is co-managed. For more information, see [Paths to co-management](/mem/configmgr/comanage/quickstart-paths).
- Set the [Windows Update workload](/mem/configmgr/comanage/workloads#windows-update-policies) to Pilot Intune or Intune.
- Set the [Device configuration workload](/mem/configmgr/comanage/workloads#device-configuration) to Pilot Intune or Intune.
- Set the [Office Click-to-Run apps workload](/mem/configmgr/comanage/workloads#office-click-to-run-apps) to Pilot Intune or Intune.
