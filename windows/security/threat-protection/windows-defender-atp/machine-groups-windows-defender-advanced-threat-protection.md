---
title: Create and manage machine groups in Windows Defender ATP
description: Create machine groups and set automated remediation levels on them by confiring the rules that apply on the group
keywords: machine groups, groups, remediation, level, rules, aad group, role, assign, rank
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: high
ms.date: 04/24/2018
---

# Create and manage machine groups in Windows Defender ATP
**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Azure Active Directory
- Office 365
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

[!include[Prerelease information](prerelease.md)]

In an enterprise scenario, security operation teams are typically assigned a set of machines. These machines are grouped together based on a set of attributes such as their domains, computer names, or designated tags.

In Windows Defender ATP, you can create machine groups and use them to:
- Limit access to related alerts and data to specific Azure AD user groups with [assigned RBAC roles](rbac-windows-defender-advanced-threat-protection.md) 
- Configure different auto-remediation settings for different sets of machines

As part of the process of creating a machine group, you'll:
- Set the automated remediation level for that group
- Define a matching rule based on the machine name, domain, tags, and OS platform to determine which machines belong to the group. If a machine is also matched to other groups, it is added only to the highest ranked machine group.
- Determine access to machine group
- Rank the machine group relative to other groups after it is created 

>[!NOTE]
>All machine groups are accessible to all users if you don’t assign any Azure AD groups to them.


## Add a machine group

1.	In the navigation pane, select **Settings > Permissions > Machine groups**.

2.	Click **Add machine group**. 

3.	Set the machine group details, configure an association rule, preview the results, then assign the group to an Azure user group:

	 - **Name**

	 - **Remediation level for automated investigations**
	  - **No remediation**
	  - **Require approval (all folders)**
	  - **Require approval (non-temp folders)**
	  - **Require approval (core folders)**
	  - **Fully automated**

	 - **Description**

	 - **Matching rule** – you can apply the rule based on machine name, domain, tag, or OS version. 

		>[!TIP]
		>If you want to group machines by organizational unit, you can configure the registry key for the group affiliation. For more information on device tagging, see [Manage machine group and tags](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/investigate-machines-windows-defender-advanced-threat-protection#manage-machine-group-and-tags).

4.	Review the result of the preview of matched machines. If you are satisfied with the rules, click the **Access** tab.

5.	Assign the user groups that can access the machine group you created. 

    >[!NOTE]
    >You can only grant access to Azure AD user groups that have been assigned to RBAC roles. 

6.	Click **Close**.

7.	Apply the configuration settings.

## Understand matching and manage groups
You can promote the rank of a machine group so that it is given higher priority during matching. When a machine is matched to more than one group, it is added only to the highest ranked group. You can also edit and delete groups.

By default, machine groups are accessible to all users with portal access. You can change the default behavior by assigning Azure AD user groups to the machine group.

Machines that are not matched to any groups are added to Ungrouped machines (default) group. You cannot change the rank of this group or delete it. However, you can change the remediation level of this group, and define the Azure AD user groups that can access this group.

>[!NOTE]
>Applying changes to machine group configuration may take up to several minutes.




## Related topic
- [Manage portal access using role-based based access control](rbac-windows-defender-advanced-threat-protection.md)