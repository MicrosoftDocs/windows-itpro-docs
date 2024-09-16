---
title: Manage Update rings
description: How to manage update rings
ms.date: 09/16/2024
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

# Manage Update rings

[!INCLUDE [windows-autopatch-applies-to-all-licenses](../includes/windows-autopatch-applies-to-all-licenses.md)]

You can manage Update rings for Windows 10 and later devices with Windows Autopatch. Using Update rings, you can control when and how updates are installed on your devices. For more information, see  [Configure Update rings for Windows 10 and later policy in Intune](/mem/intune/protect/windows-10-update-rings).

## Import Update rings for Windows 10 and later

[!INCLUDE [windows-autopatch-enterprise-e3-f3-licenses](../includes/windows-autopatch-enterprise-e3-f3-licenses.md)]

You can import your organization’s existing Intune Update rings for Windows 10 and later into Windows Autopatch. Importing your organization’s Update rings provides the benefits of the Windows Autopatch's reporting and device readiness without the need to redeploy, or change your organization’s existing update rings.

Imported rings automatically register all targeted devices into Windows Autopatch. For more information about device registration, see the [device registration workflow diagram](../deploy/windows-autopatch-register-devices.md#detailed-device-registration-workflow-diagram).

> [!NOTE]
> Devices which are registered as part of an imported ring, might take up to 72 hours after the devices have received the latest version of the policy, to be reflected in Windows Autopatch devices blade and reporting. For more information about reporting, see [Windows quality and feature update reports overview](../monitor/windows-autopatch-windows-quality-and-feature-update-reports-overview.md).

> [!NOTE]
> Device registration failures don't affect your existing update schedule or targeting. However, devices that fail to register might affect Windows Autopatch's ability to provide reporting and insights. Any conflicts should be resolved as needed. For additional assistance, [submit a support request](../manage/windows-autopatch-support-request.md).

### To import Update rings for Windows 10 and later

**To import Update rings for Windows 10 and later:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Select **Devices** from the left navigation menu.
3. Under the **Manage updates** section, select **Windows updates**.
4. In the **Windows updates** blade, go to the **Update rings** tab.
5. Select **Enroll policies**.
6. Select the existing rings you would like to import.
7. Select **Import**.

### Remove an imported Update ring for Windows 10 and later

**To remove an Imported Update rings for Windows 10 and later:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Select **Devices** from the left navigation menu.
3. Under the **Manage updates** section, select **Windows updates**.
4. In the **Windows updates** blade, go to the **Update rings**.
5. Select the Update rings for Windows 10 and later you would like to remove.
6. Select the **horizontal ellipses (...)** and select **Remove**.

### Known limitations

The following Windows Autopatch features aren't available with imported Intune Update rings:

- [Autopatch groups](../deploy/windows-autopatch-groups-overview.md) and [features dependent on Autopatch groups](../deploy/windows-autopatch-groups-overview.md#supported-configurations)
- [Moving devices in between deployment rings in devices](../deploy/windows-autopatch-register-devices.md#move-devices-in-between-deployment-rings)
- [Automated deployment ring remediation functions](../deploy/windows-autopatch-device-registration-overview.md#automated-deployment-ring-remediation-functions)
- [Policy health and remediation](../monitor/windows-autopatch-policy-health-and-remediation.md)
