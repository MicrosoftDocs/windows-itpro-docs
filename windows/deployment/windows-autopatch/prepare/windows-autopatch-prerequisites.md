---
title: Prerequisites
description: This article details the prerequisites needed for Windows Autopatch
ms.date: 01/11/2024
ms.service: windows-client
ms.subservice: autopatch
ms.topic: concept-article
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.reviewer: hathind
ms.collection:
  - highpri
  - tier1
---

# Prerequisites

Getting started with Windows Autopatch has been designed to be easy. This article outlines the infrastructure requirements you must meet to assure success with Windows Autopatch.

| Area | Prerequisite details |
| ----- | ----- |
| Licensing | Windows Autopatch requires Windows 10/11 Enterprise E3 (or higher), or F3 to be assigned to your users. Additionally, Microsoft Entra ID P1 or P2 and Microsoft Intune are required. For details about the specific service plans, see [more about licenses](#more-about-licenses).<p><p>For more information on available licenses, see [Microsoft 365 licensing](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans).<p><p>For more information about licensing terms and conditions for products and services purchased through Microsoft Commercial Volume Licensing Programs, see the [Product Terms site](https://www.microsoft.com/licensing/terms/). |
| Connectivity | All Windows Autopatch devices require connectivity to multiple Microsoft service endpoints from the corporate network.<p><p>For the full list of required IPs and URLs, see [Configure your network](../prepare/windows-autopatch-configure-network.md). |
| Microsoft Entra ID | Microsoft Entra ID must either be the source of authority for all user accounts, or user accounts must be synchronized from on-premises Active Directory using the latest supported version of Microsoft Entra Connect to enable Microsoft Entra hybrid join.<br><ul><li>For more information, see [Microsoft Entra Connect](/azure/active-directory/hybrid/whatis-azure-ad-connect) and [Microsoft Entra hybrid join](/azure/active-directory/devices/howto-hybrid-azure-ad-join)</li><li>For more information on supported Microsoft Entra Connect versions, see [Microsoft Entra Connect:Version release history](/azure/active-directory/hybrid/reference-connect-version-history).</li></ul> |
| Device management | [Devices must be already enrolled with Microsoft Intune](/mem/intune/user-help/enroll-windows-10-device) prior to registering with Windows Autopatch. Intune must be set as the Mobile Device Management (MDM) authority or co-management must be turned on and enabled on the target devices.<p><p>At a minimum, the Windows Update, Device configuration and Office Click-to-Run apps workloads must be set to Pilot Intune or Intune. You must also ensure that the devices you intend on bringing to Windows Autopatch are in the targeted device collection. For more information, see [co-management requirements for Windows Autopatch](#configuration-manager-co-management-requirements).<p>Other device management prerequisites include:<ul><li>Devices must be corporate-owned. Windows bring-your-own-devices (BYOD) are blocked during device registration prerequisite checks.</li><li>Devices must be managed by either Intune or Configuration Manager co-management. Devices only managed by Configuration Manager aren't supported.</li><li>Devices must be in communication with Microsoft Intune in the **last 28 days**. Otherwise, the devices won't be registered with Autopatch.</li><li>Devices must be connected to the internet.</li><li>Devices must have a **Serial number**, **Model** and **Manufacturer**. Device emulators that don't generate this information fail to meet **Intune or Cloud-attached** prerequisite check.</li></ul><p>See [Register your devices](/windows/deployment/windows-autopatch/deploy/windows-autopatch-register-devices) for more details on device prerequisites and on how the device registration process works with Windows Autopatch.<p>For more information on co-management, see [co-management for Windows devices](/mem/configmgr/comanage/overview).</p> |
| Data and privacy | For more information on Windows Autopatch privacy practices, see [Windows Autopatch Privacy](../overview/windows-autopatch-privacy.md). |

## More about licenses

Windows Autopatch is included with Windows 10/11 Enterprise E3 or higher (user-based only). The following are the service plan SKUs that are eligible for Windows Autopatch:

| License | ID | GUID number |
| ----- | ----- | ------|
| [Microsoft 365 E3](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | SPE_E3 | 05e9a617-0261-4cee-bb44-138d3ef5d965 |
| [Microsoft 365 E3 (500 seats minimum_HUB)](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | Microsoft_365_E3 | 0c21030a-7e60-4ec7-9a0f-0042e0e0211a |
| [Microsoft 365 E3 - Unattended License](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | SPE_E3_RPA1 | c2ac2ee4-9bb1-47e4-8541-d689c7e83371 |
| Microsoft 365 E3 EEA (no Teams) - Unattended License | Microsoft_365_E3_EEA_(no_Teams)_Unattended_License | a23dbafb-3396-48b3-ad9c-a304fe206043 |
| Microsoft 365 E3 EEA (no Teams) (500 seats min)_HUB | O365_w/o Teams Bundle_M3_(500_seats_min)_HUB | 602e6573-55a3-46b1-a1a0-cc267991501a |
| [TEST - Microsoft 365 E3](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | SPE_E3_TEST | 23a55cbc-971c-4ba2-8bae-04cd13d2f4ad |
| [Microsoft 365 E5](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | SPE_E5 | 06ebc4ee-1bb5-47dd-8120-11324bc54e06 |
| [Microsoft 365 E5 (500 seats minimum)_HUB](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | Microsoft_365_E5 | db684ac5-c0e7-4f92-8284-ef9ebde75d33 |
| [Microsoft 365 E5 with calling minutes](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | SPE_E5_CALLINGMINUTES | a91fc4e0-65e5-4266-aa76-4037509c1626 |
| [Microsoft 365 E5 without audio conferencing](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | SPE_E5_NOPSTNCONF | cd2925a3-5076-4233-8931-638a8c94f773 |
| [Microsoft 365 E5 without audio conferencing (500 seats minimum)_HUB](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | Microsoft_365_E5_without_Audio_Conferencing | 2113661c-6509-4034-98bb-9c47bd28d63c |
| Microsoft 365 E5 EEA (no Teams) | O365_w/o_Teams_Bundle_M5 |3271cf8e-2be5-4a09-a549-70fd05baaa17 |
| Microsoft 365 E5 EEA (no Teams) with Calling Minutes | Microsoft_365_E5_EEA_(no_Teams)_with_Calling_Minutes | 6ee4114a-9b2d-4577-9e7a-49fa43d222d3 |
| Microsoft 365 E5 EEA (no Teams) without Audio Conferencing | Microsoft_365_E5_EEA_(no_Teams)_without_Audio_Conferencing | 90277bc7-a6fe-4181-99d8-712b08b8d32b |
| Microsoft 365 E5 EEA (no Teams) without Audio Conferencing (500 seats min)_HUB | Microsoft_365_E5_EEA_(no_Teams)_without_Audio_Conferencing_(500_seats_min)_HUB | a640eead-25f6-4bec-97e3-23cfd382d7c2 |
| Microsoft 365 E5 EEA (no Teams) (500 seats min)_HUB | O365_w/o_Teams_Bundle_M5_(500_seats_min)_HUB | 1e988bf3-8b7c-4731-bec0-4e2a2946600c |
| [TEST - Microsoft 365 E5 without audio conferencing](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | SPE_E5_NOPSTNCONF_TEST | 1362a0d9-b3c2-4112-bf1a-7a838d181c0f |
| [Windows 10/11 Enterprise E3](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | WIN10_VDA_E3 | 6a0f6da5-0b87-4190-a6ae-9bb5a2b9546a |
| [Windows 10/11 Enterprise E5](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | WIN10_VDA_E5 | 488ba24a-39a9-4473-8ee5-19291e71b002 |
| [Windows 10/11 Enterprise VDA](/windows/deployment/deploy-enterprise-licenses#virtual-desktop-access-vda) | E3_VDA_only | d13ef257-988a-46f3-8fce-f47484dd4550 |
| [Microsoft 365 F3](/azure/active-directory/enterprise-users/licensing-service-plan-reference) | SPE_F1 | 66b55226-6b4f-492c-910c-a3b7a3c9d993 |
| Microsoft 365 F3 (self-service) | Microsoft_365_F3_Department |6803cf1e-c822-41a1-864e-a31377bcdb7e |
| Microsoft 365 F3 (for Department) | Microsoft_365_F3_DEPT |45972061-34c4-44c8-9e83-ad97815acc34 |
| Microsoft 365 F3 EEA (no Teams) | Microsoft_365_F3_EEA_(no_Teams) | f7ee79a7-7aec-4ca4-9fb9-34d6b930ad87 |

The following Windows 10 editions, build version and architecture are supported to be [registered](../deploy/windows-autopatch-register-devices.md) with Windows Autopatch:

- Windows 10 (1809+)/11 Pro
- Windows 10 (1809+)/11 Enterprise
- Windows 10 (1809+)/11 Pro for Workstations

> [!IMPORTANT]
> While Windows Autopatch supports registering devices below the [minimum Windows OS version enforced by the service](../operate/windows-autopatch-windows-feature-update-overview.md), once registered, devices are automatically offered with the [minimum windows OS version](../operate/windows-autopatch-windows-feature-update-overview.md). The devices must be on a [minimum Windows OS currently serviced](/windows/release-health/release-information?msclkid=ee885719baa511ecb838e1a689da96d2) by the [Windows servicing channels](/windows/release-health/release-information?msclkid=ee885719baa511ecb838e1a689da96d2) to keep receiving monthly security updates that are critical to security and the health Windows.

> [!NOTE]
> Windows Autopatch supports registering [Windows 10 Long-Term Servicing Channel (LTSC)](/windows/whats-new/ltsc/) devices that are being currently serviced by the [Windows LTSC](/windows/release-health/release-information). The service only supports managing the [Windows quality updates](../operate/windows-autopatch-windows-quality-update-overview.md) workload for devices currently serviced by the LTSC. Windows Update for Business service and Windows Autopatch don't offer Windows feature updates for devices that are part of the LTSC. You must either use [LTSC media](https://www.microsoft.com/evalcenter/evaluate-windows-10-enterprise) or the [Configuration Manager Operating System Deployment capabilities to perform an in-place upgrade](/windows/deployment/deploy-windows-cm/upgrade-to-windows-10-with-configuration-manager) for Windows devices that are part of the LTSC.

## Configuration Manager co-management requirements

Windows Autopatch fully supports co-management. The following co-management requirements apply:

- Use a currently supported [Configuration Manager version](/mem/configmgr/core/servers/manage/updates#supported-versions).
- Configuration Manager must be [cloud-attached with Intune (co-management)](/mem/configmgr/cloud-attach/overview) and must have the following co-management workloads enabled and set to either **Pilot Intune** or **Intune**:
	- [Windows Update policies workload](/mem/configmgr/comanage/workloads#windows-update-policies)
	- [Device configuration workload](/mem/configmgr/comanage/workloads#device-configuration)
	- [Office Click-to-Run apps workload](/mem/configmgr/comanage/workloads#office-click-to-run-apps)

For more information, see [paths to co-management](/mem/configmgr/comanage/quickstart-paths).
