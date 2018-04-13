---
title: Use role-based access control to grant fine-grained access to the Windows Defender ATP portal
description: Create roles and groups within your security operations to grant access to the portal.
keywords: rbac, role, based, access, control, groups, control, tier, aad
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: high
ms.date: 04/16/2018
---

# Manage portal access using role-based access control
**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Azure Active Directory
- Office 365
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

[!include[Prerelease information](prerelease.md)]

>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-rbac-abovefoldlink)


Using role-based access control (RBAC), you can create roles and groups within your security operations team to grant appropriate access to the  portal. Based on the roles and groups you create, you have fine-grained control over what users with access to the portal can see and do. 

Large geo-distributed security operations teams typically adopt a tier-based model to assign and authorize access to security portals. Typical tiers include the following three levels:

Tier | Description
:---|:---
Tier 1 | **Local security operations team / IT team** <br> This team usually triages and investigates alerts contained within their geolocation and escalates to Tier 2 in cases where an active remediation is required.
Tier 2 | **Regional security operations team** <br> This team can see all the machines for their region and perform remediation actions.
Tier 3 | **Global security operations team** <br> This team consists of security experts and are authorized to see and perform all actions from the portal.

Windows Defender ATP RBAC is designed to support your tier- or role-based model of choice and gives you granular control over what roles can see, machines they can access, and actions they can take. The RBAC framework is centered around the following controls:

- **Control who can take specific action**
  - Create custom roles and control what Windows Defender ATP capabilities they can access with granularity.
 
- **Control who can see information on specific machine group or groups**
  - [Create machine groups](machine-groups-windows-defender-advanced-threat-protection.md) by specific criteria such as names, tags, domains, and others, then grant role access to them using a specific Azure AD user group.

To implement role-based access, you'll need to define admin roles, assign corresponding permissions, and assign Azure Active Directory (Azure AD) user groups assigned to the roles.


### Before you begin
Before using RBAC, it's important that you understand the roles that can grant permissions and the consequences of turning on RBAC.


> [!WARNING]
> Before enabling the feature, it's important that you have a Global Administrator role or Security Administrator role in Azure AD and that you have your Azure AD groups ready to reduce the risk of being locked out of the portal. 

When you first log in to the Windows Defender ATP portal, you're granted either full access or read only access. Full access rights are granted to users with Security Administrator or Global Administrator roles in Azure AD. Read only access is granted to users with a Security Reader role in Azure AD. 

Someone with a Windows Defender ATP Global administrator role has unrestricted access to all machines, regardless of their machine group association and the Azure AD user groups assignments

> [!WARNING]
> Initially, only those with Azure AD Global Administrator or Security Administrator rights will be able to create and assign roles in the Windows Defender ATP portal, therefore, having the right groups ready in Azure AD is important.
>
> **Turning on role-based access control will cause users with read-only permissions (for example, users assigned to Azure AD Security reader role) to lose access until they are assigned to a role.** 
>
>Users with admin permissions are automatically assigned the default built-in Windows Defender ATP global administrator role with full permissions. After opting in to use RBAC, you can assign additional users that are not Azure AD Global or Security Administrators to the Windows Defender ATP global administrator role. 
>
> After opting in to use RBAC, you cannot revert to the initial roles as when you first logged into the portal. 

## Create roles and assign the role to a group

1.	In the navigation pane, select **Settings > Role based access control > Roles**.

2.	Click **Add role**. 

3.	Enter the role name, description, and active permissions you’d like to assign to the role.

	 - **Role name**

	 - **Description**

	 - **Active permissions**
		  - **View data** - Users can view information in the portal.
		  - **Investigate alerts** - Users can manage alerts, initiate automated investigations, collect investigation packages, manage machine tags, and export machine timeline.
		  - **Approve or take action** - Users can take response actions and approve or dismiss pending remediation actions.
		  - **Manage system settings** - Users can configure settings, SIEM and threat intel API settings, advanced settings, preview features, and automated file uploads.
		  
4.	Click **Next** to assign the role to an Azure AD group.

5.	Use the filter to select the Azure AD group that you’d like to add to this role.

6.	Click **Save and close**.

7.	Apply the configuration settings.

## Edit roles

1.	Select the role you'd like to edit.

2.	Click **Edit**.

3.	Modify the details or the memberships that the role is a part of. 

4.	Click **Save and close**.

## Delete roles

1.	Select the role row you'd like to delete.

2.	Click the drop-down button and select **Delete role**.

## Related topic
- [Create and manage machine groups in Windows Defender ATP](machine-groups-windows-defender-advanced-threat-protection.md)