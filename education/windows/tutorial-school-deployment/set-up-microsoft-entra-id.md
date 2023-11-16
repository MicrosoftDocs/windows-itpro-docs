---
title: Set up Microsoft Entra ID
description: Learn how to create and prepare your Microsoft Entra tenant for an education environment.
ms.date: 11/09/2023
ms.topic: tutorial
appliesto:
---

# Set up Microsoft Entra ID

The Microsoft platform for education simplifies the management of Windows devices with Intune for Education and Microsoft 365 Education. The first, fundamental step, is to configure the identity infrastructure to manage user access and permissions for your school.

Microsoft Entra ID, which is included with the Microsoft 365 Education subscription, provides authentication and authorization to any Microsoft cloud services. Identity objects are defined in Microsoft Entra ID for human identities, like students and teachers, as well as non-human identities, like devices, services, and applications. Once users get Microsoft 365 licenses assigned, they'll be able to consume services and access resources within the tenant. With Microsoft 365 Education, you can manage identities for your teachers and students, assign licenses to devices and users, and create groups for the classrooms.

In this section you will:
> [!div class="checklist"]
> * Set up a Microsoft 365 Education tenant
> * Add users, create groups, and assign licenses
> * Configure school branding
> * Enable bulk enrollment

## Create a Microsoft 365 tenant

If you don't already have a Microsoft 365 tenant, you'll need to create one.

For more information, see [Create your Office 365 tenant account][M365-1]

> [!TIP]
> To learn more, and practice how to configure the Microsoft 365 tenant for your school, try <a href="https://www.microsoft.com/en-us/education/interactive-demos/set-up-Microsoft-365" target="_blank"><u>this interactive demo</u></a>.
### Explore the Microsoft 365 admin center

The **Microsoft 365 admin center** is the hub for all administrative consoles for the Microsoft 365 cloud. To access the <a href="https://entra.microsoft.com" target="_blank"><u>Microsoft Entra admin center</u></a>, sign in with the same global administrator account when you [created the Microsoft 365 tenant](#create-a-microsoft-365-tenant).

From the Microsoft 365 admin center, you can access different administrative dashboards: Microsoft Entra ID, Microsoft Intune, Intune for Education, and others:

:::image type="content" source="./images/m365-admin-center.png" alt-text="*All admin centers* page in *Microsoft 365 admin center*" lightbox="./images/m365-admin-center.png" border="true":::

For more information, see [Overview of the Microsoft 365 admin center][M365-2].

> [!NOTE]
> Setting up your school's basic cloud infrastructure does not require you to complete the rest of the Microsoft 365 setup. For this reason, we will skip directly to adding students and teachers as users in the Microsoft 365 tenant.

## Add users, create groups, and assign licenses

With the Microsoft 365 tenant in place, it's time to add users, create groups, and assign licenses. All students and teachers need a user account before they can sign in and access the different Microsoft 365 services. There are multiple ways to do this, including using School Data Sync (SDS), synchronizing an on-premises Active Directory, manually, or a combination of the above.

> [!NOTE]
> Synchronizing your Student Information System (SIS) with School Data Sync is the preferred way to create students and teachers as users in a Microsoft 365 Education tenant. However, if you want to integrate an on-premises directory and synchronize accounts to the cloud, skip to [<u>Azure Active Directory Sync</u>](#azure-active-directory-sync) below.

### School Data Sync

School Data Sync (SDS) imports and synchronizes SIS data to create classes in Microsoft 365, such as Microsoft 365 groups and class teams in Microsoft Teams. SDS can be used to create new, cloud-only, identities or to evolve existing identities. Users evolve into *students* or *teachers* and are associated with a *grade*, *school*, and other education-specific attributes.

For more information, see [Overview of School Data Sync][SDS-1].

> [!TIP]
> To learn more and practice with School Data Sync, follow the <a href="https://interactiveguides-schooldatasync.azurewebsites.net/" target="_blank"><u>Microsoft School Data Sync demo</u></a>, which provides detailed steps to access, configure, and deploy School Data Sync in your Microsoft 365 Education tenant.

> [!NOTE]
> You can perform a test deployment by cloning or downloading sample SDS CSV school data from the [<u>O365-EDU-Tools GitHub site</u>](https://github.com/OfficeDev/O365-EDU-Tools).
>
> Remember that you should typically deploy test SDS data (users, groups, and so on) in a separate test tenant, not your school production environment.

### Azure Active Directory Sync

To integrate an on-premises directory with Microsoft Entra ID, you can use **Microsoft Entra Connect** to synchronize users, groups, and other objects. Microsoft Entra Connect lets you configure the authentication method appropriate for your school, including:

- [Password hash synchronization][AAD-1]
- [Pass-through authentication][AAD-2]
- [Federated authentication][AAD-3]

For more information, see [Set up directory synchronization for Microsoft 365][O365-1].

### Create users manually

In addition to the above methods, you can manually add users and groups, and assign licenses through the Microsoft 365 admin center.

There are two options for adding users manually, either individually or in bulk:

1. To add students and teachers as users in Microsoft 365 Education *individually*:
    - Sign in to the <a href="https://entra.microsoft.com" target="_blank"><b>Microsoft Entra admin center</b></a>
    - Select **Microsoft Entra ID** > **Users** > **All users** > **New user** > **Create new user**
    For more information, see [Add users and assign licenses at the same time][M365-3].
1. To add *multiple* users to Microsoft 365 Education:
    - Sign in to the <a href="https://entra.microsoft.com" target="_blank"><b>Microsoft Entra admin center</b></a>
    - Select **Microsoft Entra ID** > **Users** > **All users** > **Bulk operations** > **Bulk create**

For more information, see [Add multiple users in the Microsoft 365 admin center][M365-4].

### Create groups

Creating groups is important to simplify multiple tasks, like assigning licenses, delegating administration, deploy settings, applications or to distribute assignments to students. To create groups:

1. Sign in to the <a href="https://entra.microsoft.com" target="_blank"><b>Microsoft Entra admin center</b></a>
1. Select **Microsoft Entra ID** > **Groups** > **All groups** > **New group**
1. On the **New group** page, select **Group type** > **Security**
1. Provide a group name and add members, as needed
1. Select **Next**

For more information, see [Create a group in the Microsoft 365 admin center][M365-5].

### Assign licenses

The recommended way to assign licenses is through group-based licensing. With this method, Microsoft Entra ID ensures that licenses are assigned to all members of the group. Any new members who join the group are assigned the appropriate licenses, and when members leave, their licenses are removed.

To assign a license to a group:

1. Sign in to the <a href="https://entra.microsoft.com" target="_blank"><b>Microsoft Entra admin center</b></a>
1. Select **Microsoft Entra ID** > **Show More** > **Billing** > **Licenses**
1. Select the required products that you want to assign licenses for > **Assign**
1. Add the groups to which the licenses should be assigned

   :::image type="content" source="images/entra-assign-licenses.png" alt-text="Assign licenses from Microsoft Entra admin center." lightbox="images/entra-assign-licenses.png":::

For more information, see [Group-based licensing using Microsoft Entra admin center][AAD-4].

## Configure school branding

Configuring your school branding enables a more familiar Autopilot experience to students and teachers. With a custom school branding, you can define a custom logo and a welcome message, which will appear during the Windows out-of-box experience.

To configure your school's branding:

1. Sign in to the <a href="https://entra.microsoft.com" target="_blank"><b>Microsoft Entra admin center</b></a>
1. Select **Microsoft Entra ID** > **Show More** > **User experiences** > **Company branding**
1. You can specify brand settings like background image, logo, username hint and a sign-in page text
    :::image type="content" source="images/entra-branding.png" alt-text="Configure Microsoft Entra ID branding from Microsoft Entra admin center." lightbox="images/entra-branding.png":::
1. To adjust the school tenant's name displayed during OOBE, select **Microsoft Entra ID** > **Overview** > **Properties**
1. In the **Name** field, enter the school district or organization's name > **Save**
    :::image type="content" alt-text="Configure Microsoft Entra tenant name from Microsoft Entra admin center." source="images/entra-tenant-name.png" lightbox="images/entra-tenant-name.png":::

For more information, see [Add branding to your directory][AAD-5].

## Enable bulk enrollment

If you decide to enroll Windows devices using provisioning packages instead of Windows Autopilot, you must ensure that the provisioning packages can join Windows devices to the Microsoft Entra tenant.

To allow provisioning packages to complete the Microsoft Entra join process:

1. Sign in to the <a href="https://entra.microsoft.com" target="_blank"><b>Microsoft Entra admin center</b></a>
1. Select **Microsoft Entra ID** > **Devices** > **Device Settings**
1. Under **Users may join devices to Microsoft Entra ID**, select **All**
    > [!NOTE]
    > If it is required that only specific users can join devices to Microsoft Entra ID, select **Selected**. Ensure that the user account that will create provisioning packages is included in the list of users.
1. Select Save
    :::image type="content" source="images/entra-device-settings.png" alt-text="Configure device settings from Microsoft Entra admin center." lightbox="images/entra-device-settings.png":::

---

## Next steps

With users and groups created, and licensed for Microsoft 365 Education, you can now configure Microsoft Intune.

> [!div class="nextstepaction"]
> [Next: Set up Microsoft Intune >](set-up-microsoft-intune.md)

<!-- Reference links in article -->

[AAD-1]: /azure/active-directory/hybrid/whatis-phs
[AAD-2]: /azure/active-directory/hybrid/how-to-connect-pta
[AAD-3]: /azure/active-directory/hybrid/how-to-connect-fed-whatis
[AAD-4]: /azure/active-directory/enterprise-users/licensing-groups-assign
[AAD-5]: /azure/active-directory/fundamentals/customize-branding

[M365-1]: /microsoft-365/education/deploy/create-your-office-365-tenant
[M365-2]: /microsoft-365/admin/admin-overview/admin-center-overview
[M365-3]: /microsoft-365/admin/add-users/add-users
[M365-4]: /microsoft-365/enterprise/add-several-users-at-the-same-time
[M365-5]: /microsoft-365/admin/create-groups/create-groups

[O365-1]: /office365/enterprise/set-up-directory-synchronization

[SDS-1]: /schooldatasync/overview-of-school-data-sync
