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
ms.date: 04/16/2018
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

[!include[Prerelease information](prerelease.md)]

>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-assignaccess-abovefoldlink)

Windows Defender ATP supports two ways to manage permissions:

- **Basic permissions management**: Set permissions to either full access or read-only.
- **Role-based access control (RBAC)**: Set granular permissions by defining roles, assigning Azure AD user groups to the roles, and granting the user groups access to machine groups. For more information on RBAC, see [Manage portal access using role-based access control](rbac-windows-defender-advanced-threat-protection.md).

> [!NOTE]
>If you have already assigned basic permissions, you may switch to RBAC anytime. Consider the following before making the switch:

>- Users with full access (Security Administrators) are automatically assigned the default **Global administrator** role, which also has full access. Only global administrators can manage permissions using RBAC. 
>- Users that have read-only access (Security Readers) will lose access to the portal until they are assigned a role. Note that only Azure AD user groups can be assigned a role under RBAC.
>- After switching to RBAC, you will not be able to switch back to using basic permissions management.

## Use basic permissions management
Refer to the instructions below to use basic permissions management. You can use either Azure PowerShell or the Azure Portal.  

For granular control over permissions, [switch to role-based access control](rbac-windows-defender-advanced-threat-protection.md).

### Assign user access using Azure PowerShell
You can assign users with one of the following levels of permissions:
- Full access (Read and Write)
- Read-only access

#### Before you begin
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

### Assign user access using the Azure portal

1.	Go to the [Azure portal](https://portal.azure.com).

2.	Select **Azure Active Directory**.

3.  Select **Manage** > **Users and groups**.

4.  Select **Manage** > **All users**.

5.	Search or select the user you want to assign the role to.

6.	Select **Manage** > **Directory role**.

7.	Under **Directory role**, select **Limited administrator**, then **Security Reader** or **Security Administrator**.

    ![Image of Microsoft Azure portal](images/atp-azure-ui-user-access.png)



>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-portalaccess-belowfoldlink)

## Related topic
- [Manage portal access using RBAC](rbac-windows-defender-advanced-threat-protection.md)
