---
title: Manage driver and firmware updates
description: This article explains how you can manage driver and firmware updates with Windows Autopatch
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

# Manage driver and firmware updates

You can manage driver and firmware profiles for Windows 10 and later devices. By using targeted policies, you can expedite a specific driver and firmware update to release to your tenant. For more information about driver updates for Windows 10 and later, see [Windows driver update management in Intune](/mem/intune/protect/windows-driver-updates-overview).

## Driver and firmware controls

[!INCLUDE [windows-autopatch-enterprise-e3-f3-licenses](../includes/windows-autopatch-enterprise-e3-f3-licenses.md)]

You can manage and control your driver and firmware updates by:

- Controlling the flow of all drivers to an Autopatch group or rings within an Autopatch group
- Controlling the flow of a specific driver or firmware across your entire tenant via approvals
- Approving and deploying other drivers and firmware that previously couldn’t be centrally managed

### Automatic and Manual modes

The Autopatch service creates additional driver profiles on a per-deployment ring and per group basis within your tenant.

> [!NOTE]
> For more information about policies created for Driver updates for Windows 10 and later, see [Changes made at feature activation](../references/windows-autopatch-changes-made-at-feature-activation.md#driver-updates-for-windows-10-and-later).

Choosing between Automatic and Manual modes can be done per-deployment ring and/or per Autopatch group. For a single Autopatch group, a mix of both Automatic and Manual policies is allowed. If you were previously in Manual mode, we create Manual policies for all your group rings. If Automatic (the default) was previously used, we create Automatic policies instead.  

> [!IMPORTANT]
> If you switch between Automatic and Manual modes, new policies are generated to **replace old policies**. **You’ll lose any approvals, paused drivers, and declined drivers previously made for those groups and/or deployment rings**.

| Modes | Description |
| ----- | -----|
| Automatic | We recommend using **Automatic** mode.<p>Automatic mode (default) is recommended for organizations with standard Original Equipment Manufacturer (OEM) devices where no recent driver or hardware issues occurred due to Windows Updates.</p><p>Automatic mode ensures the most secure drivers are installed using Autopatch deployment ring rollout. You can also choose to deploy additional drivers from the **Other** tab to your deployment rings or Autopatch groups that are set to **Automatic**.</p> |
| Manual | When you use **Manual** mode, no drivers are installed in your environment without your explicit approval. You can also choose to deploy additional drivers from the Other tab to your deployment rings or Autopatch groups that are set to Manual.<p>Manual mode turns off Windows Autopatch’s automatic driver deployment. Instead, the Administrator controls the driver deployment.</p><p>The Administrator selects the individual drivers to be deployed to their tenant. Then, the Administrator can choose to approve those drivers for deployment. Drivers approved can vary between deployment rings.</p> |

> [!NOTE]
> In both Automatic and Manual modes, the drivers listed for selection represent only the drivers needed for the targeted clients, which are the Autopatch deployment rings. Therefore, the drivers offered may vary between rings depending on the variety of device hardware in an organization.

#### Set driver and firmware updates to Automatic or Manual mode

**To set driver and firmware updates to Automatic or Manual mode:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Navigate to **Devices** > **Manage Updates** > **Windows Updates** > **Driver Updates** tab.
1. Select the groups you’d like to modify. Find the Driver update settings section, then select Edit.
1. Set the policy to be **Automatic** or **Manual** for each deployment ring within the previously selected group.  
    1. If you select **Automatic**, you can choose a **Deferral period** in days from the dropdown menu.
    2. If you select **Manual**, the deferral day setting can’t be set and displays **Not applicable**.
1. Select **Review + Save** to review all changes made.
1. Once the review is done, select **Save** to commit your changes.

##### Choose the deferral period for driver and firmware updates for Automatic deployment rings

For deployment rings set to **Automatic**, you can choose the deferral period for driver and firmware updates. The deferral period is the number of days that you must wait to deploy after a driver becomes available. By default, these deferral values match the values you set for your Windows quality updates.

The deferral period allows you to delay the installation of driver and firmware updates on the devices in the specified deployment ring in case you want to test the update on a smaller group of devices first or avoid potential disruptions during a busy period.  

The deferral period can be set from 0 to 14 days, and it can be different for each deployment ring.  

> [!NOTE]
> The deferral period only applies to automatically approved driver and firmware updates. An admin must specify the date to start offering a driver with any manual approval.

### Recommended driver and firmware updates across managed devices

#### Recommended drivers and firmware

Recommended drivers are the best match for the 'required' driver updates that Windows Update can identify for a device. To be a recommended update, the OEM or driver publisher must mark the update as required and the update must be the most recent update version marked as required. These updates are the same ones available through Windows Update and are almost always the most current update version for a driver.

When an OEM releases a newer update version that qualifies to be the new recommended driver, it replaces the previous update as the recommended driver update. If the older update version is still applicable to a device in the policy, it's moved to the **Other drivers** tab. If the older version was previously approved, it remains approved.

##### Approve and deploy recommended drivers

**To approve and deploy recommended drivers:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), navigate to **Devices** > **Manage updates** > **Windows updates** > **Driver updates**.
1. Select **Manage drivers for Autopatch groups** or select one of the **Drivers to review** links.
1. Select the driver or drivers you’d like to manage.  
1. Select **Manage**. You can either:
    1. Approve for all policies
    2. Decline for all unreviewed policies
    3. Manage for individual policies
1. In the **Approve for all policies** dropdown, select the date to make the driver available through Windows Update.
1. In the **Manage for individual policies** dropdown, select the policies to approve or decline the driver.
1. Select **Save**.

### Extensions and Plug and play driver updates

Extensions and Plug and play driver updates might not require admin approval.

| Driver update | Description |
| ----- | ----- |
| Extensions | Windows Autopatch doesn't manage extension drivers. They're easily identified by the term 'extension' in the name. Extensions are typically minor updates to a base driver package that can enhance, modify, or filter the functionality provided by the base driver. They play a crucial role in facilitating effective communication between the operating system and the hardware. If the device hasn't received drivers from Windows Update for some time, the device might have multiple extension drivers offered during the first scan. For more information, see [Why do my devices have driver updates installed that didn't pass through an updates policy?](/mem/intune/protect/windows-driver-updates-overview#why-do-my-devices-have-driver-updates-installed-that-didnt-pass-through-an-updates-policy). |
| Plug and play | When Windows detects a hardware or software component (such as, but not limited to, a mouse, keyboard, or webcam) without an existing driver, it automatically downloads and installs the latest driver to ensure the component functions properly to keep the end-user productive. After the initial installation, the driver becomes manageable. Any additional updates require approval before being offered to the device. |

### Other drivers and firmware

Other driver updates are updates available from the original equipment manufacturer (OEM) aside from the current recommended driver update. These updates remain in the policy if they're newer than the driver version that is currently installed on at least one device with the policy.

These updates can include:

- A previously recommended update is superseded by a newer update version
- Firmware updates
- Optional driver updates, or updates that the OEM doesn't intend to be installed on all devices by default

#### Approve and deploy other drivers

**To approve and deploy other drivers:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), navigate to **Devices** > **Manage updates** > **Windows update** > **Driver Updates**.
1. Select **Manage drivers for Autopatch groups** or select one of the **Drivers to review** links.
1. Select **Other drivers** tab. You can either:
1. Select the driver or drivers you’d like to manage.
1. Select **Manage**. You can either:
    1. Approve for all policies
    2. Decline for all unreviewed policies
    3. Manage for individual policies
1. In the **Approve for all policies** dropdown, select the date to make the driver available through Windows Update.  
1. In the **Manage for individual policies** dropdown, select the policies to approve or decline the driver.
1. Select **Save**.
