---
title: Prerequisites
description: This article details the prerequisites needed for Windows Autopatch
ms.date: 02/17/2023
ms.prod: windows-client
ms.technology: itpro-updates
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
| Device management | [Devices must be already enrolled with Microsoft Intune](/mem/intune/user-help/enroll-windows-10-device) prior to registering with Windows Autopatch. Intune must be set as the Mobile Device Management (MDM) authority or co-management must be turned on and enabled on the target devices.<p><p>At a minimum, the Windows Update, Device configuration and Office Click-to-Run apps workloads must be set to Pilot Intune or Intune. You must also ensure that the devices you intend on bringing to Windows Autopatch are in the targeted device collection. For more information, see [co-management requirements for Windows Autopatch](#configuration-manager-co-management-requirements).<p>Other device management prerequisites include:<ul><li>Devices must be corporate-owned. Windows bring-your-own-devices (BYOD) are blocked during device registration prerequisite checks.</li><li>Devices must be managed by either Intune or Configuration Manager co-management. Devices only managed by Configuration Manager aren't supported.</li><li>Devices must be in communication with Microsoft Intune in the **last 28 days**. Otherwise, the devices won't be registered with Autopatch.</li><li>Devices must be connected to the internet.</li><li>Devices must have a **Serial number**, **Model** and **Manufacturer**. Device emulators that don't generate this information fail to meet **Intune or Cloud-attached** prerequisite check.</li></ul><p>See [Register your devices](/windows/deployment/windows-autopatch/deploy/windows-autopatch-register-devices) for more details on device prerequisites and on how the device registration process works with Windows Autopatch.<p>For more information on co-management, see [co-management for Windows devices](/mem/configmgr/comanage/overview).</p> |
| Data and privacy | For more information on Windows Autopatch privacy practices, see [Windows Autopatch Privacy](../references/windows-autopatch-privacy.md). |

## More about licenses

Windows Autopatch is included with Windows 10/11 Enterprise E3 or higher (user-based only). The following are the service plan SKUs that are eligible for Windows Autopatch:

| License | ID | GUID number |
| ----- | ----- | ------|
| [Microsoft 365 E3](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | SPE_E3 | 05e9a617-0261-4cee-bb44-138d3ef5d965 |
| [Microsoft 365 E3 (500 seats minimum_HUB)](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | Microsoft_365_E3 | 0c21030a-7e60-4ec7-9a0f-0042e0e0211a |
| [Microsoft 365 E3 - Unattended License](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | SPE_E3_RPA1 | c2ac2ee4-9bb1-47e4-8541-d689c7e83371 |
| [Microsoft 365 E5](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | SPE_E5 | 06ebc4ee-1bb5-47dd-8120-11324bc54e06 |
| [Microsoft 365 E5 (500 seats minimum)_HUB](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | Microsoft_365_E5 | db684ac5-c0e7-4f92-8284-ef9ebde75d33 |
| [Microsoft 365 E5 with calling minutes](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | SPE_E5_CALLINGMINUTES | a91fc4e0-65e5-4266-aa76-4037509c1626 |
| [Microsoft 365 E5 without audio conferencing](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | SPE_E5_NOPSTNCONF | cd2925a3-5076-4233-8931-638a8c94f773 |
| [Microsoft 365 E5 without audio conferencing (500 seats minimum)_HUB](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | Microsoft_365_E5_without_Audio_Conferencing | 2113661c-6509-4034-98bb-9c47bd28d63c |
| [TEST - Microsoft 365 E3](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | SPE_E3_TEST | 23a55cbc-971c-4ba2-8bae-04cd13d2f4ad |
| [TEST - Microsoft 365 E5 without audio conferencing](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | SPE_E5_NOPSTNCONF_TEST | 1362a0d9-b3c2-4112-bf1a-7a838d181c0f |
| [Windows 10/11 Enterprise E3](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | WIN10_VDA_E3 | 6a0f6da5-0b87-4190-a6ae-9bb5a2b9546a |
| [Windows 10/11 Enterprise E5](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | WIN10_VDA_E5 | 488ba24a-39a9-4473-8ee5-19291e71b002 |
| [Windows 10/11 Enterprise VDA](/windows/deployment/deploy-enterprise-licenses#virtual-desktop-access-vda) | E3_VDA_only | d13ef257-988a-46f3-8fce-f47484dd4550 |

The following Windows OS 10 editions, 1809+ builds and architecture are supported in Windows Autopatch:

- Windows 10 (1809+)/11 Pro
- Windows 10 (1809+)/11 Enterprise
- Windows 10 (1809+)/11 Pro for Workstations

> [!NOTE]
> Windows Autopatch supports registering [Windows 10 Long-Term Servicing Channel (LTSC)](/windows/whats-new/ltsc/) devices that are being currently serviced by the [Windows LTSC](/windows/release-health/release-information). The service only supports managing the [Windows quality updates](../operate/windows-autopatch-windows-quality-update-overview.md) workload for devices currently serviced by the LTSC. Additionally, Windows Autopatch can only manage Windows quality updates for devices that haven't reached the LTSC's [end of servicing date](/windows/release-health/release-information#enterprise-and-iot-enterprise-ltsbltsc-editions).

## Configuration Manager co-management requirements

Windows Autopatch fully supports co-management. The following co-management requirements apply:

- Use a currently supported [Configuration Manager version](/mem/configmgr/core/servers/manage/updates#supported-versions).
- ConfigMgr must be [cloud-attached with Intune (co-management)](/mem/configmgr/cloud-attach/overview) and must have the following co-management workloads enabled:
	- Set the [Windows Update policies workload](/mem/configmgr/comanage/workloads#windows-update-policies) to Pilot Intune or Intune.
	- Set the [Device configuration workload](/mem/configmgr/comanage/workloads#device-configuration) to Pilot Intune or Intune.
	- Set the [Office Click-to-Run apps workload](/mem/configmgr/comanage/workloads#office-click-to-run-apps) to Pilot Intune or Intune.

For more information, see [paths to co-management](/mem/configmgr/comanage/quickstart-paths).
