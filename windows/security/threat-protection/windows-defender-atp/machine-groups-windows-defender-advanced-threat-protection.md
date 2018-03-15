---
title: Create machine groups in Windows Defender ATP
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
ms.date: 04/16/2018
---

# Create machine groups in Windows Defender ATP
**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Azure Active Directory
- Office 365
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

[!include[Prerelease information](prerelease.md)]


In a typical enterprise scenario, security operation teams are assigned a set of machines groups. These machines are grouped together based on a set of attributes such as domain, name, or tag.

In Windows Defender ATP, you can create machine groups based on conditions and apply the following rules on them:
- Remediation level for automated investigations
- Azure Active Directory (Azure AD) user group access


When you create a machine group, you'll need to set the automated remediation level for that group. You'll also need to configure the conditions for when a machine is considered to be part of that group. You can set the conditions based on name, domain, tag, or OS.


After setting the automated remediation level and conditions, you'll need to assign a Azure AD user group who will have access to that group of machines. The assignment you set here determines what the group can see in the portal. For example, if you assign a user group to only see machines with a specific tag then their view of the Machines list will be limited based on the tags you set in the rule.


Finally, you'll need to rank the machine groups so that the appropriate rul is applied on them. 



### Add machine group

1.	In the navigation pane, select **Settings > Role based access control > Machine groups**.

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

6.	Click **Close**.

7.	Apply the configuration settings.

## Rank rules on machine groups

After creating groups based on conditions, setting the remediation levels on them, and assigning user groups that can access the machine group, you’ll need to rank the rules that are applied on the groups.

You can promote or demote the rank of a group so that the rules applied is of higher or lower level. The evaluation order is applied from higher rank to lower rank. The higher rank should apply to the most machines.

You can also edit and delete groups.

By default, there will always be a group for ungrouped machines. This group is designed to aggregate all the machines that didn’t meet any of the conditions set in the other machine groups. The default remediation for this group is Require approval, but you can also define the remediation level for the group.


## Related topic
- [Manage portal access using role-based based access control](rbac-windows-defender-advanced-threat-protection.md)