---
title: Configure devices with Microsoft Intune
description: Learn how to configure policies and applications in preparation for device deployment.
ms.date: 11/09/2023
ms.topic: tutorial
ms.collection: essentials-manage
---

# Configure settings and applications with Microsoft Intune

Before distributing devices to your users, you must ensure that the devices will be configured with the required policies, settings, and applications as they get enrolled in Intune.
Microsoft Intune uses Microsoft Entra groups to assign policies and applications to devices.
With Microsoft Intune for Education, you can conveniently create groups and assign policies and applications to them.


> [!div class="checklist"]
>In this section you will:
>
> - Create groups
> - Create and assign policies to groups
> - Create and assign applications to groups

## Create groups

By organizing devices, students, classrooms, or learning curricula into groups, you can provide students with the resources and configurations they need.

By default, Intune for Education creates two default groups: *All devices* and *All users*.
Two additional groups are pre-created if you use **Microsoft School Data Sync (SDS)**: *All teachers* and *All students*. SDS can also be configured to automatically create and maintain groups of students and teachers for each school.

:::image type="content" source="./images/intune-education-groups.png" alt-text="Intune for Education - Groups blade" border="true":::

Beyond the defaults, groups can be customized to suit various needs. For example, if you have both *Windows 10* and *Windows 11 SE* devices in your school, you can create groups, such as *Windows 10 devices* and *Windows 11 SE devices*, to assign different policies and applications to.

Two group types can be created:

- **Assigned groups** are used when you want to manually add users or devices to a group
- **Dynamic groups** reference rules that you create to assign students or devices to groups, which automate the membership's maintenance of those groups

> [!TIP]
> If you target applications and policies to a *device dynamic group*, they will be applied to the devices as soon as they are enrolled in Intune, before users signs in. This can be useful in bulk enrollment scenarios, where devices are enrolled without requiring users to sign in. Devices can be configured and prepared in advance, before distribution.

For more information, see:

- [Create groups in Intune for Education][EDU-1]
- [Manually add or remove users and devices to an existing assigned group][EDU-2]
- [Edit dynamic group rules to accommodate for new devices, locations, or school years][EDU-3]

________________________________________________________

## Next steps

With the groups created, you can configure policies and applications to deploy to your groups.

> [!div class="nextstepaction"]
> [Next: Configure policies >](configure-device-settings.md)

<!-- Reference links in article -->

[EDU-1]: /intune-education/create-groups
[EDU-2]: /intune-education/edit-groups-intune-for-edu
[EDU-3]: /intune-education/edit-groups-intune-for-edu#edit-dynamic-group-rules
