---
title: Prerequisites
description: This article details the prerequisites needed for Windows Autopatch
ms.date: 09/16/2024
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

## Licenses and entitlements

### [Business Premium and A3+](#tab/business-premium-a3-entitlements)

Business Premium and A3+ licenses include:

- Microsoft 365 Business Premium (for more information on available licenses, see Microsoft 365 licensing)
- Windows 10/11 Education A3 or A5 (included in Microsoft 365 A3 or A5)

[!INCLUDE [windows-autopatch-business-premium-a3-licenses](../includes/windows-autopatch-business-premium-a3-licenses.md)]

### [Windows Enterprise E3+ and F3](#tab/windows-enterprise-e3-f3-entitlements)

The following licenses provide access to the Windows Autopatch features [included in Business premium and A3+ licenses](../overview/windows-autopatch-overview.md#business-premium-and-a3-licenses) and its [additional features](../overview/windows-autopatch-overview.md#windows-enterprise-e3-and-f3-licenses) after you [activate Windows Autopatch features](../prepare/windows-autopatch-feature-activation.md):

- Windows 10/11 Enterprise E3 or E5 (included in Microsoft 365 F3, E3, or E5)
- Windows 10/11 Enterprise E3 or E5 VDA

For more information about specific service plans, see [Windows 10/11 Enterprise E3 or E5 (included in Microsoft 365 F3, E3, or E5) licenses].

---

### Feature entitlement

For more information about feature entitlement, see [Features and capabilities](../overview/windows-autopatch-overview.md#features-and-capabilities).

| Symbol | Meaning |
| --- | --- |
| :heavy_check_mark: | All features available |
| :large_orange_diamond: | Most features available |
| :x: | Feature not available |

#### Windows 10 and later update policy management

| Feature | Business Premium | A3+ | E3+ | F3 |
| --- | --- | --- | --- | --- |
| Releases | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:|
| Update rings | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:|
| Quality updates | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:|
| Feature updates | :large_orange_diamond: | :large_orange_diamond: | :heavy_check_mark: | :heavy_check_mark:|
| Driver and firmware updates | :large_orange_diamond: | :large_orange_diamond: | :heavy_check_mark: | :heavy_check_mark:|

#### Tenant management

| Feature | Business Premium | A3+ | E3+ | F3 |
| --- | --- | --- | --- | --- |
| Autopatch groups | :x: | :x: | :heavy_check_mark: | :heavy_check_mark:|
| New feature and change management communications | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:|
| Release schedule and status communications | :x: | :x: | :heavy_check_mark: | :heavy_check_mark:|
| Support requests | :x: | :x: | :heavy_check_mark: | :heavy_check_mark:|
| Policy health | :x: | :x: | :heavy_check_mark: | :heavy_check_mark:|

#### Reporting

| Feature | Business Premium | A3+ | E3+ | F3 |
| --- | --- | --- | --- | --- |
| Intune Reports | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:|
| Quality updates | :x: | :x: | :heavy_check_mark: | :heavy_check_mark:|
| Feature updates | :x: | :x: | :heavy_check_mark: | :heavy_check_mark:|
| Device readiness | :x: | :x: | :heavy_check_mark: | :heavy_check_mark:|

## More about licenses

### Windows 10/11 Enterprise E3 or E5 (included in Microsoft 365 F3, E3, or E5) licenses

> [!IMPORTANT]
> Only Windows 10/11 Enterprise E3+ or F3 (included in Microsoft 365 F3, E3, or E5) licenses have access to all Windows Autopatch features after you [activate Windows Autopatch features](../prepare/windows-autopatch-feature-activation.md). Microsoft 365 Business Premium and Windows 10/11 Education A3 or A5 (included in Microsoft 365 A3 or A5) do **not** have access to all Windows Autopatch features. For more information, see [Features and capabilities](../overview/windows-autopatch-overview.md#features-and-capabilities).

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

## General infrastructure requirements

[!INCLUDE [windows-autopatch-applies-to-all-licenses](../includes/windows-autopatch-applies-to-all-licenses.md)]

| Area | Prerequisite details |
| --- | --- |
| Licensing terms and conditions for products and services | For more information about licensing terms and conditions for products and services purchased through Microsoft Commercial Volume Licensing Programs, see the [Product Terms site](https://www.microsoft.com/licensing/terms/). |
| Microsoft Entra ID and Intune | Microsoft Entra ID P1 or P2 and Microsoft Intune are required.<p>Microsoft Entra ID must either be the source of authority for all user accounts, or user accounts must be synchronized from on-premises Active Directory using the latest supported version of Microsoft Entra Connect to enable Microsoft Entra hybrid join.</p><ul><li>For more information, see [Microsoft Entra Connect](/entra/identity/hybrid/connect/whatis-azure-ad-connect) and [Microsoft Entra hybrid join](/entra/identity/devices/how-to-hybrid-join)</li><li>For more information on supported Microsoft Entra Connect versions, see [Microsoft Entra Connect:Version release history](/entra/identity/hybrid/connect/reference-connect-version-history).</li></ul> |
| Connectivity | All Windows Autopatch devices require connectivity to multiple Microsoft service endpoints from the corporate network. For the full list of required IPs and URLs, see [Configure your network](../prepare/windows-autopatch-configure-network.md). |
| Device management | [Devices must be already enrolled with Microsoft Intune](/mem/intune/user-help/enroll-windows-10-device) before registering with Windows Autopatch. Intune must be set as the Mobile Device Management (MDM) authority or co-management must be turned on and enabled on the target devices.<p>At a minimum, the Windows Update, Device configuration, and Office Click-to-Run apps workloads must be set to Pilot Intune or Intune. You must also ensure that the devices you intend on bringing to Windows Autopatch are in the targeted device collection. For more information, see [co-management requirements for Windows Autopatch](#configuration-manager-co-management-requirements).</p><p>Other device management prerequisites include:</p><ul><li>Devices must be corporate-owned. Windows bring-your-own-devices (BYOD) are blocked during device registration prerequisite checks.</li><li>Devices must be managed by either Intune or Configuration Manager co-management. Devices only managed by Configuration Manager aren't supported.</li><li>Devices must be in communication with Microsoft Intune in the last 28 days. Otherwise, the devices aren't registered with Autopatch.</li><li>Devices must be connected to the internet.</li></ul><p>See [Register your devices](../deploy/windows-autopatch-register-devices.md) for more details on device prerequisites and on how the device registration process works with Windows Autopatch.</p><p>For more information on co-management, see [co-management for Windows devices](/mem/configmgr/comanage/overview).</p> |
| Data and privacy |Deployment scheduling controls are always available. However, to take advantage of the unique deployment protections tailored to your population and to [deploy driver updates](/windows/deployment/update/deployment-service-drivers), devices must share diagnostic data with Microsoft. For these features, at minimum, the deployment service requires devices to send [diagnostic data](/windows/privacy/configure-windows-diagnostic-data-in-your-organization#diagnostic-data-settings) at the Required level (previously called *Basic*) for these features.<p>When you use [Windows Update for Business reports](/windows/deployment/update/wufb-reports-overview) with the deployment service, using diagnostic data at the following levels allows device names to appear in reporting:</p><ul><li>Optional level (previously Full) for Windows 11 devices</li><li>Enhanced level for Windows 10 devices</li></ul><p>For more information on Windows Autopatch privacy practices, see [Windows Autopatch Privacy](../overview/windows-autopatch-privacy.md).</p> |

## Windows editions, build version, and architecture

> [!IMPORTANT]
> The following Windows editions, build version, and architecture **applies if you have**:<ul><li>Windows Enterprise E3+ or F3 licenses</li><li>[Activated Windows Autopatch features](../prepare/windows-autopatch-feature-activation.md)</li><li>[Registered devices with Windows Autopatch](../deploy/windows-autopatch-register-devices.md)</li></ul>

The following Windows 10/11 editions, build version, and architecture are supported when [devices are registered with Windows Autopatch](../deploy/windows-autopatch-register-devices.md):

- Windows 11 Professional, Education, Enterprise, Pro Education, or Pro for Workstations editions
- Windows 10 Professional, Education, Enterprise, Pro Education, or Pro for Workstations editions

Windows Autopatch service supports Windows client devices on the **General Availability Channel**.

> [!NOTE]
> Windows Autopatch supports registering [Windows 10 Long-Term Servicing Channel (LTSC)](/windows/whats-new/ltsc/) devices that are being currently serviced by the [Windows LTSC](/windows/release-health/release-information). The service only supports managing the [Windows quality updates](../operate/windows-autopatch-windows-quality-update-overview.md) workload for devices currently serviced by the LTSC. Windows Update for Business service and Windows Autopatch don't offer Windows feature updates for devices that are part of the LTSC. You must either use [LTSC media](https://www.microsoft.com/evalcenter/evaluate-windows-10-enterprise) or the [Configuration Manager Operating System Deployment capabilities to perform an in-place upgrade](/windows/deployment/deploy-windows-cm/upgrade-to-windows-10-with-configuration-manager) for Windows devices that are part of the LTSC.

## Configuration Manager co-management requirements

> [!IMPORTANT]
> The following Windows editions, build version, and architecture **applies if you have**:<ul><li>Windows Enterprise E3+ or F3 licenses</li><li>[Activated Windows Autopatch features](../prepare/windows-autopatch-feature-activation.md)</li><li>[Registered devices with Windows Autopatch](../deploy/windows-autopatch-register-devices.md)</li></ul>

| Requirement | Description |
| --- | --- |
| Supported Configuration Manager version | Use a currently supported [Configuration Manager version](/mem/configmgr/core/servers/manage/updates#supported-versions). |
| Configuration Manager must be [cloud-attached with Intune (co-management)](/mem/configmgr/cloud-attach/overview) | Must have the following co-management workloads enabled and set to either **Intune** or **Pilot Intune**:<ul><li>Windows Update policies workload</li><li>Device configuration workload</li><li>Office Click-to-Run apps workload</li></ul><p>If you’re using **Pilot Intune**, in the **Staging** tab, the device must be in the collections that correspond to the three workloads that Windows Autopatch requires.<ul><li>If you selected Intune for one workload and Pilot Intune for the other two workloads, your devices only need to be in the two Pilot Intune collections.</li><li>If you have different collection names for each workload, your devices must be in CoMgmtPilot.</li></ul><p>**You or your Configuration Manager administrator are responsible for adding your Autopatch devices to these collections. Windows Autopatch doesn’t change or add to these collections.**</p><p>For more information, see [paths to co-management](/mem/configmgr/comanage/quickstart-paths).</p> |
| Create a Custom client setting |Create a Custom client setting in Configuration Manager to disable the Software Updates agent for Intune/Pilot Intune co-managed devices.<ol><li>Under **Disable Software Updates > Device Settings > Enable software updates on clients**, select **No**.</li><li>Under **CoMgmtSettingsProd Properties > Staging tab > Office Click-to-Run apps, set to Co-Management – O365 Workload**.</li><li>Under **CoMgmtSettingsProd Properties > Staging tab > Windows Update policies, set to Co-Management – WUfB Workload**.</li><li>Ensure the **Disable Software Updates** setting has a lower priority than your default client settings and target your co-management collection.<ol><li>If the co-management workload is set to Intune, deploy the Client Setting to a collection that includes all co-management devices, for example, Co-management Eligible Devices.</li></ol><li>Configuration Manager **disables** the Software Updates agent in the next policy cycle. However, because the Software Updates Scan Cycle is **removed**, Configuration Manager might not remove the Windows Server Update Service (WSUS) registry keys.</li><ol><li>Remove the registry values under **HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate** because Windows Update for Business (WUfB) policies control the process.</li></ol></ol> |

## Required Intune permissions

### [Business Premium and A3+](#tab/business-premium-a3-intune-permissions)

Your account must be assigned an [Intune role-based access control](/mem/intune/fundamentals/role-based-access-control) (RBAC) role that includes the following permissions:

- **Device configurations**:
    - Assign
    - Create
    - Delete
    - View Reports
    - Update
- Read

You can add the *Device configurations* permission with one or more rights to your own custom RBAC roles or use one of the built-in **Policy and Profile manager** roles, which include these rights.

### [Windows Enterprise E3+ and F3](#tab/windows-enterprise-e3-f3-intune-permissions)

After you [activate Windows Autopatch features](../prepare/windows-autopatch-feature-activation.md#activate-windows-autopatch-features), use the Intune Service Administrator role to register devices, manage your update deployments, and reporting tasks.

If you want to assign less-privileged user accounts to perform specific tasks in the Windows Autopatch portal, such as register devices with the service, you can add these user accounts into one of the two Microsoft Entra groups created during the [Start using Windows Autopatch](../prepare/windows-autopatch-feature-activation.md) process:

| Microsoft Entra group name | Discover devices | Modify columns | Refresh device list | Export to .CSV | Device actions |
| --- | --- | --- | --- | --- | --- |
| Modern Workplace Roles - Service Administrator | Yes | Yes | Yes | Yes | Yes |
| Modern Workplace Roles - Service Reader | No | Yes | Yes | Yes | Yes |

For more information, see [Microsoft Entra built-in roles](/entra/identity/role-based-access-control/permissions-reference) and [Role-based access control (RBAC) with Microsoft Intune](/mem/intune/fundamentals/role-based-access-control).

> [!TIP]
> For more information, see [assign an owner of member of a group in Microsoft Entra ID](/entra/id-governance/privileged-identity-management/groups-assign-member-owner#assign-an-owner-or-member-of-a-group).

---
