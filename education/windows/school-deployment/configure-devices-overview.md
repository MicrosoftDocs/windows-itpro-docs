---
title: Configure devices with Microsoft Intune
description: Configure policies and applications in preparation to device deployment
ms.date: 08/31/2022
ms.prod: windows
ms.technology: windows
ms.topic: conceptual #reference troubleshooting how-to end-user-help overview (more in contrib guide)
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

# Configure and secure devices with Microsoft Intune

Before distributing devices to a school, you must ensure that the devices will be configured with the required policies, settings and applications.
Microsoft Intune uses Azure AD groups to assign policies and applications to devices.
With Microsoft Intune for Education, you can conveniently create groups and assign policies and applications to them.

In this section you will:
> [!div class="checklist"]
> * Create groups
> * Create and assign policies to groups
> * Create and assign applications to groups

## Create groups

By organizing students, classrooms, or learning curricula into groups, you can provide students with the resources they need, as well as manage several student devices all at once.

**NOTE:** Before you begin creating groups, it is a good idea to plan them out to determine what students may need from their devices. For example:

- For all devices, block apps from using location services.
- For AP Computer Science, assign students apps to edit code.
- For 12th grade History, enable web browsing to access academic articles.
- For all Photography students, enable the device's camera.

By default, Intune for Education creates two default groups: *All devices* and *All users*.
Additional groups are pre-created if you use Microsoft School Data Sync (SDS): *All teachers* and *All students*. SDS can also be configured to automatically create and maintain groups of students and teachers for each schools.
Beyond the defaults, groups can be customized to suit various needs. For example, if you have both Windows and iPad devices in your school, you can create groups, such as *All Windows devices* and *All iPad devices*, to assign policies and applications to.


Two group types can be created: assigned groups and dynamic groups. Assigned groups are used when you want to manually add users or devices to a group. Dynamic groups reference rules that you create to assign students or devices to groups and then automate the assignment of devices to those groups.

For more information, see:

- [Create groups in Intune for Education](/intune-education/create-groups) 
- [Edit a group name](/intune-education/edit-groups-intune-for-edu)
- [Move a group up or down within your existing group list](/intune-education/edit-groups-intune-for-edu)
- [Assign and delegate group admins](/intune-education/group-admin-delegate)
- [Manually add or remove users and devices to an existing assigned group](/intune-education/edit-groups-intune-for-edu)
- [Edit dynamic group rules to accommodate for new devices, locations, or school years](/intune-education/edit-groups-intune-for-edu)

## Section review and next steps

> [!div class="checklist"]
> * Prerequisites
> * Configure the Intune service for education devices
> * Configure device settings
> * Configure applications

With the Intune service configured, you can configure policies and applications to deploy to your students' and teachers' devices.

> [!div class="nextstepaction"]
> [Next: Configure devices >](configure-devices.md)

<!-- Reference links in article -->

[EDU-1]: /education/windows/windows-11-se-overview

[INT-2]: /intune-education/express-configuration-intune-edu
[INT-3]: /microsoft-365/education/deploy/use-intune-for-education
[INT-4]: /intune-education/add-desktop-apps-edu
[INT-5]: /intune-education/add-web-apps-edu