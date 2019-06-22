---
title: Assign user access to Microsoft Defender Security Center
description: Assign read and write or read only access to the Microsoft Defender Advanced Threat Protection portal.
keywords: assign user roles, assign read and write access, assign read only access, user, user roles, roles
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
ms.date: 11/28/2018
---

# Assign user access to Microsoft Defender Security Center

**Applies to:**
- Azure Active Directory
- Office 365
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-assignaccess-abovefoldlink)

Microsoft Defender ATP supports two ways to manage permissions:

- **Basic permissions management**: Set permissions to either full access or read-only.
- **Role-based access control (RBAC)**: Set granular permissions by defining roles, assigning Azure AD user groups to the roles, and granting the user groups access to machine groups. For more information on RBAC, see [Manage portal access using role-based access control](rbac.md).

> [!NOTE]
> If you have already assigned basic permissions, you may switch to RBAC anytime. Consider the following before making the switch:
> 
> - Users with full access (users that are assigned the Global Administrator or Security Administrator directory role in Azure AD), are automatically assigned the default Microsoft Defender ATP administrator role, which also has full access. Additional Azure AD user groups can be assigned to the Microsoft Defender ATP administrator role after switching to RBAC.  Only users assigned to the Microsoft Defender ATP administrator role can manage permissions using RBAC. 
> - Users that have read-only access (Security Readers) will lose access to the portal until they are assigned a role. Note that only Azure AD user groups can be assigned a role under RBAC.
> - After switching to RBAC, you will not be able to switch back to using basic permissions management.

## Related topics

- [Use basic permissions to access the portal](basic-permissions.md)
- [Manage portal access using RBAC](rbac.md)
