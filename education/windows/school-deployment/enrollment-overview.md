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

- **Windows Autopilot** uses cloud-based technologies and services to set up and configure Windows devices with a zero-touch deployment approach. Windows Autopilot helps simplify the Windows device lifecycle, from initial deployment to end of life, for both IT administrators and end users. For more information, see [Overview of Windows Autopilot](/mem/autopilot/windows-autopilot)
  > [!NOTE]
  > There are some limitations to Windows Autopilot in Windows 11 SE. For more information, see [**this article**](/intune-education/windows-11-se-overview#windows-autopilot).

- **Bulk enrollment with provisioning packages.** Provisioning packages are files that you can use to set up Windows devices. You can create provisioning packages using either **Set Up School PCs** or **Windows Configuration Designer** applications. One benefit of provisioning packages is that you can use them to set up Windows devices that are not registered in Windows Autopilot. These files can be applied during or after the out-of-box experience. For more information, see [Provisioning packages](/windows/configuration/provisioning-packages/provisioning-apply-package).
- **Automatic Intune enrollment via Azure AD join.** This experience happens when a user first turns on a new device and it enables the user to customize certain Windows functionalities before reaching the desktop. When using this approach, users going through this flow will automatically become local administrators on the devices, which is not ideal for education devices.

## Choose the enrollment method

Windows Autopilot and the Set up School PCs app are usually the most efficient options for school environments. There are various elements to take under consideration when choosing between Windows Autopilot and the Set up School PCs app. This [table](/intune-education/add-devices-windows) describes the ideal scenarios for using either method. It is recommended to review the table when making your enrollment and deployment plan.
:::image type="content" source="./images/enroll.png" alt-text="The device lifecycle for Intune-managed devices - enrollment" border="false":::
Select one of the following options to learn more about the enrollment method you chose:

> [!div class="nextstepaction"]
> - [Enroll devices with Windows Autopilot     >](enrollment-autopilot.md)

> [!div class="nextstepaction"]
> - [Enroll devices with provisioning packages >](enrollment-package.md)

> [!div class="nextstepaction"]
> - [Enroll devices via Azure AD join          >](enrollment-aadj.md)

> [!div class="nextstepaction"]
> - [Enroll devices with Windows Autopilot     >](enrollment-autopilot.md)
> - [Enroll devices with provisioning packages >](enrollment-package.md)
> - [Enroll devices via Azure AD join          >](enrollment-aadj.md)