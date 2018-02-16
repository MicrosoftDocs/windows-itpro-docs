---
title: Assign user access to the Windows Defender ATP portal
description: Assign read and write or read only access to the Windows Defender Advanced Threat Protection portal.
keywords: assign user roles, assign read and write access, assign read only access, user, user roles, roles
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: high
ms.date: 02/16/2018
---

# Assign user access to the Windows Defender ATP portal
**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Azure Active Directory
- Office 365
- Windows Defender Advanced Threat Protection (Windows Defender ATP)



>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-assignaccess-abovefoldlink)

Windows Defender ATP users and access permissions are managed in Azure Active Directory (AAD). Use the following methods to assign security roles.

## Assign user access using Azure PowerShell
You can assign users with one of the following levels of permissions:
- Full access (Read and Write)
- Read only access

### Before you begin
- Install Azure PowerShell. For more information see, [How to install and configure Azure PowerShell](https://azure.microsoft.com/documentation/articles/powershell-install-configure/).<br>

    > [!NOTE]
    > You need to run the PowerShell cmdlets in an elevated command-line.

- Connect to your Azure Active Directory. For more information see, [Connect-MsolService](https://msdn.microsoft.com/library/dn194123.aspx).



**Full access** <br>
Users with full access can log in, view all system information and resolve alerts, submit files for deep analysis, and download the onboarding package.
Assigning full access rights requires adding the users to the “Security Administrator” or “Global Administrator” AAD built-in roles.

**Read only access** <br>
Users with read only access can log in, view all alerts, and related information.
They will not be able to change alert states, submit files for deep analysis or perform any state changing operations.
Assigning read only access rights requires adding the users to the “Security Reader” AAD built-in role.

Use the following steps to assign security roles:

- For **read and write** access, assign users to the security administrator role by using the following command:
```text
Add-MsolRoleMember -RoleName "Security Administrator" -RoleMemberEmailAddress "secadmin@Contoso.onmicrosoft.com"
```
- For **read only** access, assign users to the security reader role by using the following command:
```text
Add-MsolRoleMember -RoleName "Security Reader" -RoleMemberEmailAddress “reader@Contoso.onmicrosoft.com”
```

For more information see, [Manage Azure AD group and role membership](https://technet.microsoft.com/library/321d532e-407d-4e29-a00a-8afbe23008dd#BKMK_ManageGroups).

## Assign user access using the Azure portal

1.	Go to the [Azure portal](https://portal.azure.com).

2.	Select **Azure Active Directory**.

3.  Select **Manage** > **Users and groups**.

4.  Select **Manage** > **All users**.

5.	Search or select the user you want to assign the role to.

6.	Select **Manage** > **Directory role**.

7.	Under **Directory role**, select **Limited administrator**, then **Security Reader** or **Security Administrator**.

    ![Image of Microsoft Azure portal](images/atp-azure-ui-user-access.png)

## Role-based access control

With the robust security capabilities available in the Windows Defender ATP portal, it is crucial to provide the right access only to authorized roles and groups. Using role-based access control (RBAC), you can segregate roles and groups within your security operations team or organization to grant appropriate access to the Windows Defender ATP portal. Based on the roles and groups you create, you have fine-grained control over what users with access to the portal can do. 

The implementation of role-based access control in Windows Defender ATP is based on Azure Active Directory user groups. 

To implement role-based access, you'll need to define admin roles, assign corresponding permissions, and set the Azure Active Directory (Azure AD) user groups assigned to the roles. 

### Before you begin

When you first log in to the Windows Defender ATP portal, you’re granted either full access or read only access. Full access rights are granted to users with Security Administrator or Global Administrator roles in Azure AD. Read only access is granted to users with a Security Reader role in Azure AD. 

> [!WARNING]
> Before enabling the feature, it’s important that you have a Global Administrator role in Azure AD and that have your Azure AD groups ready to reduce the risk of being locked out of the portal. 
> Only those with Azure AD Global Administrator rights will be able to create and assign roles in the Windows Defender ATP portal, therefore, having the right groups ready in Azure AD is important.
> Turning on role-based access control will cause users with read-only permissions to lose access until they are assigned to a role. Users with admin permissions are automatically assigned the global administrator role with full permissions.

To use RBAC in Windows Defender ATP, you’ll need to enable it. 

After opting in to use RBAC, you cannot revert to the initial roles as when you first logged into the portal. 

### Create user roles and assign the role to a group

1.	In the navigation pane, select **Preferences setup > Role based access control > Roles**.

2.	Click **Add new role**. 

3.	Enter the user group name, description, and active permissions you’d like to assign to the group.

	 - **User group name**

	 - **Description**

	 - **Active permissions**
		  - **View data** – Users can view information in the portal.
		  - **Investigate alerts** – Users can manage alerts, initiate automated investigations, collect investigation packages, manage machine tags, and export machine timeline.
		  - **Approve or take action** – Users can take response actions and approve or dismiss pending remediation actions.
		  - **Manage system settings** – Users can configure settings, SIEM and threat intel API settings, advanced settings, preview features, and automated file uploads.
		  - **Manage security settings** – Users can configure alert suppression settings, manage allowed or blocked lists for automation, manage folder exclusions for automation, onboard and offboard machines, and manage email notifications.
		  - **Monitor dashboards** – Users can view all dashboards.

4.	Click **Next** to assign the user to a group.

5.	Use the filter to select the Azure AD group that you'd like the user to be a part of.

6.	Click **Save and close**.

7.	Apply the configuration settings.

### Edit user roles

1.	Select the user role you'd like to edit.

2.	Click **Edit**.

3.	Modify the details or the memberships that the user role is a part of. 

4.	Click **Save and close**.

### Delete user roles

1.	Select the user role row you'd like to delete.

2.	Click the drop-down button and select **Delete role**.

### Manage machine groups

Create machine groups and set automated remediation levels on them, configure the rules to apply on the group, and assign the group to an Azure AD group and role. After configuring the groups and assignments, rank the group so that the corresponding rule is applied. 

#### Add machine group

1.	In the navigation pane, select **Preferences setup > Role based access control > Machine groups**.

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

5.	Assign the user groups that can access the machine group you created. The assignment you set here determines what the group can see in the portal. For example, if you assign a user group to only see machines with a specific tag then their view of the Machines list will be limited based on the tags you set in the rule.

6.	Click **Close**.

7.	Apply the configuration settings.

#### Rank rules on machine groups

After creating groups, setting the remediation levels on them, and assigning user groups that can access the machine group, you’ll need to rank the rules that are applied on the groups.

You can promote or demote the rank of a group so that the rules applied is of higher or lower level. The evaluation order is applied from higher rank to lower rank. The higher rank should apply to the most machines.

You can also edit and delete groups.

By default, there will always be a group for ungrouped machines. This group is designed to aggregate all the machines that didn’t meet any of the conditions set in the other machine groups. The default remediation for this group is Require approval, but you can also define the remediation level for the group.










>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-portalaccess-belowfoldlink)
