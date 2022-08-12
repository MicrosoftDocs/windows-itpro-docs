---
title: # Microsoft Endpoint Manager support
description: # How to obtain Microsoft support from Microsoft Endpoint Manager admin center.
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

# Set up identity management

The Microsoft platform for education simplifies the management of Windows devices with Intune for Education and Microsoft 365 Education. The first, fundamental step, is configuring the identity infrastructure to manage user access and permissions for your school.

Microsoft 365 Education leverages Azure Active Directory (Azure AD), Microsoft's cloud-based identity platform, to manage user identities and authentication. Azure AD is included with the Microsoft 365 Education subscription, and it provides authentication and authorization to any Microsoft cloud services. Identity objects are defined in Azure AD for human identities, like students and teachers, as well as non-human identities, like devices, services, and applications. Once users get Microsoft 365 licenses assigned, they will be able to consume services and access resources within the tenant. With Microsoft 365 Education, you can manage identities for your teachers and students, assign licenses to devices and users, and create groups for the classrooms.

## Setting up a Microsoft 365 Education tenant

In this section, you will create and configure a Microsoft 365 tenant and explore the Microsoft 365 admin center.
### Create a Microsoft 365 tenant

If you don't already have a Microsoft 365 tenant, you will need to create one. For more information, see [Create your Office 365 tenant account](/microsoft-365/education/deploy/create-your-office-365-tenant). Once created, return to this document to continue with the steps below.
### Configure the tenant

To configure the Microsoft 365 tenant for your school, follow [this interactive demo](https://www.microsoft.com/en-us/education/interactive-demos/set-up-Microsoft-365). Then, return to this document to continue with the steps below.
### Explore the Microsoft 365 admin center

The **Microsoft 365 admin center** is the hub for all administrative consoles for the Microsoft 365 cloud. To access the Microsoft 365 admin center:

1. Go to [admin.microsoft.com](https://admin.microsoft.com/Adminportal/Home)
1. Sign in with the global administrator you used when [created the Microsoft 365 tenant](#create-a-microsoft-365-tenant)

As shown below, form the Microsoft 365 admin center you can access different administrative dashboards: Azure Active Directory, Microsoft Endpoint Manager, Intune for Education, and others. For more information, see [Overview of the Microsoft 365 admin center](/microsoft-365/admin/admin-overview/admin-center-overview), and then return to this document to continue with the steps below.

:::image type="content" source="./images/m365-admin-center.png" alt-text="*All admin centers* page in *Microsoft 365 admin center*" border="true":::

**NOTE:** Setting up your school's basic cloud infrastructure does not require you to complete the rest of the Microsoft 365 setup. For this reason, we will skip directly to adding students and teachers as users in the Microsoft 365 tenant.

## Adding users, creating groups, and assigning licenses

With the Microsoft 365 tenant in place, it's time to add users, create groups, and assign licenses. All students and teachers need a user account before they can sign in and access the different Microsoft 365 services. There are multiple ways to do this, including using School Data Sync (SDS), synchronizing an on-premises Active Directory, manually, or a combination of the above.

**NOTE:** Synchronizing your Student Information System (SIS) with School Data Sync is the preferred way to create students and teachers as users in a Microsoft 365 Education tenant. However, if you want to integrate an on-premises directory and synchronize accounts to the cloud, skip to [Azure Active Directory sync](#azure-active-directory-sync) below.

### School Data Sync

School Data Sync imports and synchronizes SIS data to create classes in Microsoft 365, such as Microsoft 365 groups and class teams in Microsoft Teams. SDS can be used to create new, cloud-only identities or to evolve existing identities. Existing users evolve into *students* and *teachers* and are associated with a *grade*, *school*, and other education-specific attributes and associations. For more information, see [Overview of School Data Sync](/schooldatasync/overview-of-school-data-sync).

#### Configure and deploy School Data Sync

To get started with School Data Sync, follow the [Microsoft School Data Sync demo](https://interactiveguides-schooldatasync.azurewebsites.net/), which provides detailed steps to access, configure, and deploy School Data Sync in your Microsoft 365 Education tenant. For additional deployment guidance, see [Choose a deployment method](/schooldatasync/overview-of-school-data-sync). Then, return to this document to continue with the steps below.

**NOTE:** You can perform a test deployment by cloning or downloading sample SDS CSV school data from the [O365-EDU-Tools GitHub site](https://github.com/OfficeDev/O365-EDU-Tools). Remember that you should typically deploy test SDS data (users, groups, and so on) in a separate test tenant, not your school production environment.

### Azure Active Directory sync

To integrate an on-premises directory with Azure Active Directory, you can use **Microsoft Azure Active Directory Connect** to synchronize users, groups, and other objects. Azure AD Connect lets you configure the authentication method appropriate for your school, including [password hash synchronization](/azure/active-directory/hybrid/whatis-phs), [pass-through authentication](/azure/active-directory/hybrid/how-to-connect-pta), or [federation integration](/azure/active-directory/hybrid/how-to-connect-fed-whatis) with Active Directory Federation Services (AD FS) or a non-Microsoft SAML identity provider. For more information, see [Set up directory synchronization for Microsoft 365](/office365/enterprise/set-up-directory-synchronization), and then return to this document to continue with the steps below.

### Manual assignment

In addition to the above methods, you can manually add users and groups, and assign licenses through the Microsoft 365 admin center.

#### Add users manually

There are two options for adding users manually, either individually or in multiples:

**(Option 1)** To add students and teachers as users in Microsoft 365 Education individually:

- Go to [admin.microsoft.com](https://admin.microsoft.com/) to access the Microsoft 365 admin center
- Select **Users** > **Active users** > **Add a user**
- For more information, see [Add users and assign licenses at the same time](/microsoft-365/admin/add-users/add-users)

**(Option 2)** To add *multiple* users to Microsoft 365 Education:

- In the Microsoft 365 admin center, select **Users** > **Active users** > **Add multiple users**
- Follow the **Import multiple users** panel to assign accounts
- For more information, see [Add multiple users in the Microsoft 365 admin center](/microsoft-365/enterprise/add-several-users-at-the-same-time)

### **Create groups**

Creating groups is important to simplify multiple tasks, like assigning licenses, delegating administration, deploy settings, applications or to distribute assignments to students. To create groups:

- Go to [admin.microsoft.com](https://admin.microsoft.com/) to access the Microsoft 365 admin center
- Select **Teams & groups** > **Active teams & groups**
- Select **Add a group**
- On the **Choose a group type** page, select **Microsoft 365** > **Next**

Complete the task by following the instruction [Create a group in the Microsoft 365 admin center](/microsoft-365/admin/create-groups/create-groups?view=o365-worldwide).

### Assign licenses

The recommended way to assign licenses is through group-based licensing. With this method, Azure AD ensures that licenses are assigned to all members of the group. Any new members who join the group are assigned the appropriate licenses, and when members leave, their licenses are removed. To assign a license to each user account: 

Go to [portal.azure.com](../Working%20files/PreFinal/portal.azure.com).

Select **Azure Active Directory** → **Licenses**.

Under **All products**, select the required licensing, and then select **Assign**. 

Add the group to which the licenses should be assigned. 

For more information, see [Assign a license to a group in Azure Active Directory](https://docs.microsoft.com/en-us/azure/active-directory/fundamentals/license-users-groups).

**NOTE:** You can also use the Azure Active Directory admin center for group-based licensing. For more information, see [Group-based licensing using Azure AD admin center](https://docs.microsoft.com/en-us/azure/active-directory/enterprise-users/licensing-groups-assign). 

**UP NEXT:** With users and groups created, assigned, and licensed for Microsoft 365 Education, we are ready to set up and manage students’ and teachers’ devices. To do this, we need to configure Microsoft Intune for Education. 


#### Configure school branding

Configuring your school branding helps customize the look and feel of the Autopilot process, which makes the experience more familiar to students and teachers. For your school branding to appear during OOBE, you need to configure it in Azure Active Directory. For more information, see [Add branding to your directory](https://docs.microsoft.com/azure/active-directory/fundamentals/customize-branding). 

To configure your school branding:

1. In the Azure Active Directory admin center, select **Azure Active Directory** → **Company branding** →  **Configure**. You can specify brand settings like background image, banner logo, square logo, and square logo dark. 

:::image type="content" source="./image10.png" alt-text="Configure company branding page in Azure Active Directory admin center" border="true":::

2. To adjust the school tenant’s name displayed during OOBE, select **Azure Active Directory** → **Properties**.
1. In the **Name** field, enter the tenant’s name, and then select **Save**.

![Company properties page in Azure Active Directory](./image11.png)


## Devices-Settings-”All” required for PPKG or make sure the user creating the PPKG is member of the allowed
