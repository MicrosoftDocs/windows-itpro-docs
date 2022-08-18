---
title: Device enrollment overview
description: Options to enroll Windows devices in Microsoft Intune
ms.date: 08/31/2022
ms.prod: windows
ms.technology: windows
ms.topic: overview
ms.localizationpriority: medium
author: paolomatarazzo
ms.author: paoloma
#ms.reviewer: 
manager: aaroncz
ms.collection: education
appliesto:
- ✅ <b>Windows 10</b>
- ✅ <b>Windows 11</b>
- ✅ <b>Windows 11 SE</b>
---

# Device enrollment overview

There are three methods for setting up Windows devices and enrolling them in your education tenant:

- **Automatic Intune enrollment via Azure AD join.** This experience happens when a user first turns on a new device and it enables the user to customize certain Windows functionalities before reaching the desktop. When using this approach, users going through this flow will automatically become local administrators on the devices, which isn't ideal for education devices
- **Bulk enrollment with provisioning packages.** Provisioning packages are files that you can use to set up Windows devices. You can create provisioning packages using either **Set Up School PCs** or **Windows Configuration Designer** applications. One benefit of provisioning packages is that you can use them to set up Windows devices that aren't registered in Windows Autopilot. These files can be applied during or after the out-of-box experience
- **Windows Autopilot** uses cloud services to set up and configure Windows devices with a zero-touch deployment approach. Windows Autopilot simplifies the Windows device lifecycle, from initial deployment to end of life, for OEMs, resellers, IT administrators and end users

## Choose the enrollment method

Windows Autopilot and the Set up School PCs app are usually the most efficient options for school environments. This [table][INT-1] describes the ideal scenarios for using either option, and it's recommended to review it when planning your enrollment and deployment strategies.

:::image type="content" source="./images/enroll.png" alt-text="The device lifecycle for Intune-managed devices - enrollment" border="false":::

Select one of the following options to learn the next steps about the enrollment method you chose:

> [!div class="nextstepaction"]
> [Enroll devices via Azure AD join >](enroll-aadj.md)

> [!div class="nextstepaction"]
> [Enroll devices with provisioning packages >](enroll-package.md)

> [!div class="nextstepaction"]
> [Enroll devices with Windows Autopilot >](enroll-autopilot.md)

<!-- Reference links in article -->

[INT-1]: /intune-education/add-devices-windows#when-to-use-set-up-school-pcs-vs-windows-autopilot
