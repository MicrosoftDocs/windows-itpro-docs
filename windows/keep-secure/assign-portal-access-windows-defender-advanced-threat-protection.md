---
title: Assign user access to the Windows Defender Advanced Threat Protection portal
description: Assign read and write or read only access to the Windows Defender Advanced Threat Protection portal. 
keywords: assign user roles, assign read and write access, assign read only access, user, user roles, roles
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
---

# Assign user access to the Windows Defender ATP portal
**Applies to:**

- Windows 10 Enterprise
- Windows 10 Enterprise for Education
- Windows 10 Pro
- Windows 10 Pro Education
- Azure Active Directory
- Office 365
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

Windows Defender ATP users and access permissions are managed in Azure Active Directory (AAD). You can assign users with one of the following levels of permissions:
- Full access (Read and Write)
- Read only access

**Full access** <br>
Users with full access can log in, view all system information and resolve alerts, submit files for deep analysis, and download the onboarding package.
Assigning full access rights requires adding the users to the “Security Administrator” or “Global Administrator” AAD built-in roles.

**Read only access** <br>
Users with read only access can log in, view all alerts, and related information. 
They will not be able to change alert states, submit files for deep analysis or perform any state changing operations.
Assigning read only access rights requires adding the users to the “Security Reader” AAD built-in role.

Use the following steps to assign security roles:
- Preparations:
    - Install Azure PowerShell. For more information see, [How to install and configure Azure PowerShell](https://azure.microsoft.com/en-us/documentation/articles/powershell-install-configure/).<br> 
    
        > [!NOTE]
        > You need to run the PowerShell cmdlets in an elevated command-line.

- Connect to your Azure Active Directory. For more information see, [Connect-MsolService](https://msdn.microsoft.com/en-us/library/dn194123.aspx).
- For **read and write** access, assign users to the security administrator role by using the following command:
```text
Add-MsolRoleMember -RoleName "Security Administrator" -RoleMemberEmailAddress "secadmin@Contoso.onmicrosoft.com"
```
- For **read only** access, assign users to the security reader role by using the following command:
```text
Add-MsolRoleMember -RoleName "Security Reader" -RoleMemberEmailAddress “reader@Contoso.onmicrosoft.com”
```

For more information see, [Manage Azure AD group and role membership](https://technet.microsoft.com/en-us/library/321d532e-407d-4e29-a00a-8afbe23008dd#BKMK_ManageGroups).
