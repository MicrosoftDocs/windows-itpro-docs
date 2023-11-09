---
title: Device enrollment overview
description: Learn about the different options to enroll Windows devices in Microsoft Intune
ms.date: 11/09/2023
ms.topic: overview
---

# Device enrollment overview

There are three main methods for joining Windows devices to Microsoft Entra ID and getting them enrolled and managed by Intune:

- **Automatic Intune enrollment via Microsoft Entra join** happens when a user first turns on a device that is in out-of-box experience (OOBE), and selects the option to join Microsoft Entra ID. In this scenario, the user can customize certain Windows functionalities before reaching the desktop, and becomes a local administrator of the device. This option isn't an ideal enrollment method for education devices
- **Bulk enrollment with provisioning packages.** Provisioning packages are files that can be used to set up Windows devices, and can include information to connect to Wi-Fi networks and to join a Microsoft Entra tenant. Provisioning packages can be created using either **Set Up School PCs** or **Windows Configuration Designer** applications. These files can be applied during or after the out-of-box experience
- **Enrollment via Windows Autopilot.** Windows Autopilot is a collection of cloud services to configure the out-of-box experience, enabling light-touch or zero-touch deployment scenarios. Windows Autopilot simplifies the Windows device lifecycle, from initial deployment to end of life, for OEMs, resellers, IT administrators and end users

## Choose the enrollment method

**Windows Autopilot** and the **Set up School PCs** app are usually the most efficient options for school environments.
This [table][INT-1] describes the ideal scenarios for using either option. It's recommended to review the table when planning your enrollment and deployment strategies.

:::image type="content" source="./images/enroll.png" alt-text="The device lifecycle for Intune-managed devices - enrollment" border="false":::

Select one of the following options to learn the next steps about the enrollment method you chose:
> [!div class="op_single_selector"]
> - [Automatic Intune enrollment via Microsoft Entra join](enroll-aadj.md)
> - [Bulk enrollment with provisioning packages](enroll-package.md)
> - [Enroll devices with Windows Autopilot](enroll-autopilot.md)

<!-- Reference links in article -->

[INT-1]: /intune-education/add-devices-windows#when-to-use-set-up-school-pcs-vs-windows-autopilot
