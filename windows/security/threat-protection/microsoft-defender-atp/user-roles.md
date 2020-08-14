---
title: Create and manage roles for role-based access control
description: Create roles and define the permissions assigned to the role as part of the role-based access control implementation in the Microsoft Defender Security Center
keywords: user roles, roles, access rbac
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
---

# Create and manage roles for role-based access control

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-roles-abovefoldlink)

[!include[Prerelease information](../../includes/prerelease.md)]

## Create roles and assign the role to an Azure Active Directory group

The following steps guide you on how to create roles in Microsoft Defender Security Center. It assumes that you have already created Azure Active Directory user groups.

1. In the navigation pane, select **Settings > Roles**.

2. Select **Add item**.

3. Enter the role name, description, and permissions you'd like to assign to the role.

4. Select **Next** to assign the role to an Azure AD Security group.

5. Use the filter to select the Azure AD group that you'd like to add to this role to.

6. **Save and close**.

7. Apply the configuration settings.

> [!IMPORTANT]
> After creating roles, you'll need to create a device group and provide access to the device group by assigning it to a role that you just created.

### Permission options

- **View data**
    - **Security operations** - View all security operations data in the portal
    - **Threat and vulnerability management** - View threat and vulnerability management data in the portal

- **Active remediation actions**
    - **Security operations** - Take response actions, approve or dismiss pending remediation actions, manage allowed/blocked lists for automation and indicators
    - **Threat and vulnerability management - Exception handling** - Create new exceptions and manage active exceptions
    - **Threat and vulnerability management - Remediation handling** - Submit new remediation requests, create tickets, and manage existing remediation activities

- **Alerts investigation** - Manage alerts, initiate automated investigations, run scans, collect investigation packages, manage device tags.

- **Manage portal system settings** - Configure storage settings, SIEM and threat intel API settings (applies globally), advanced settings, automated file uploads, roles and device groups.

    > [!NOTE]
    > This setting is only available in the Microsoft Defender ATP administrator (default) role.

- **Manage security settings in Security Center** - Configure alert suppression settings, manage folder exclusions for automation, onboard and offboard devices, and manage email notifications, manage evaluation lab.

- **Live response capabilities**
    - **Basic** commands:
        - Start a live response session
        - Perform read only live response commands on remote device (excluding file copy and execution
    - **Advanced** commands:
        - Download a file from the remote device
        - Upload a file to the remote device
        - View a script from the files library
        - Execute a script on the remote device from the files library

For more information on the available commands, see [Investigate devices using Live response](live-response.md).
  
## Edit roles

1. Select the role you'd like to edit.

2. Click **Edit**.

3. Modify the details or the groups that are assigned to the role. 

4. Click **Save and close**.

## Delete roles

1. Select the role you'd like to delete.

2. Click the drop-down button and select **Delete role**.

## Related topic

- [User basic permissions to access the portal](basic-permissions.md)
- [Create and manage device groups](machine-groups.md)
