---
title: Manage driver and firmware updates
description: This article explains how you can manage driver and firmware updates with Windows Autopatch
ms.date: 08/21/2023 
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
ms.reviewer: andredm7
ms.collection:
  - highpri
  - tier1
---

# Manage driver and firmware updates

You can manage and control your driver and firmware updates with Windows Autopatch. You can choose to receive driver and firmware updates automatically, or self-manage the deployment.

> [!TIP]
> Windows Autopatch's driver and firmware update management is based on [Intune’s driver and firmware update management](/mem/intune/protect/windows-driver-updates-overview). You can use **both** Intune and Windows Autopatch to manage your driver and firmware updates.

## Automatic and Self-managed modes

Switching the toggle between Automatic and Self-managed modes creates driver profiles on a per-ring basis within your tenant.

| Modes | Description |
| ----- | -----|
| Automatic | We recommend using **Automatic** mode.<p>Automatic mode (default) is recommended for organizations with standard Original Equipment Manufacturer (OEM) devices where no recent driver or hardware issues have occurred due to Windows Updates. Automatic mode ensures the most secure drivers are installed using Autopatch deployment ring rollout.</p> |
| Self-managed | When you use the the **Self-managed** mode for drivers and firmware, no drivers are installed in your environment without your explicit approval. You can still use Intune to choose specific drivers and deploy them on a ring-by-ring basis.<p>Self-managed mode turns off Windows Autopatch’s automatic driver deployment. Instead, the Administrator controls the driver deployment.<p>The Administrator selects the individual driver within an Intune driver update profile. Then, Autopatch creates an Intune driver update profile per deployment ring. Drivers can vary between deployment rings.</p><p>The drivers listed for selection represent only the drivers needed for the targeted clients, which are the Autopatch rings. Therefore, the drivers offered may vary between rings depending on the variety of device hardware in an organization.</p> |

## Set driver and firmware updates to Automatic or Self-managed mode

**To set driver and firmware updates to Automatic or Self-managed mode:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Navigate to **Devices** > **Windows Autopatch** > **Release management** > **Release settings**.
1. In the **Windows Driver Updates** section, read and accept the agreement.
1. Select either **Automatic** or **Self-managed**.

## View driver and firmware policies created by Windows Autopatch

**To view driver and firmware policies created by Windows Autopatch:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Navigate to **Devices** > **Driver updates for Windows 10 and later**.
1. Windows Autopatch creates four policies. The policy names begin with **Windows Autopatch – Driver Update Policy** and end with the name of the ring to which they're targeted in brackets. For example, **Windows Autopatch – Driver Update Policy [Test]**.

The `CreateDriverUpdatePolicy` is created for the Test, First, Fast, and Broad deployment rings. The policy settings are defined in the following table:

| Policy name | DisplayName | Description | Approval Type | DeploymentDeferralInDays |
| ----- | ----- | ----- | ----- | ----- |
| `CreateDriverUpdatePolicy` | Windows Autopatch – Driver Update Policy [**Test/First/Fast/Broad**] | Driver Update Policy for **Test/First/Fast/Broad** group | Automatic | `0` |

> [!NOTE]
> The DeploymentDeferralInDays setting is set to `0` for all deployment rings.

## Feedback and support

If you need support with this feature, and have enrolled your tenant into Windows Autopatch, [submit a support request](../operate/windows-autopatch-support-request.md).
