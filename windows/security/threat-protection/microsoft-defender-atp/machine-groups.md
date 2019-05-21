---
title: Create and manage machine groups in Microsoft Defender ATP
description: Create machine groups and set automated remediation levels on them by confiring the rules that apply on the group
keywords: machine groups, groups, remediation, level, rules, aad group, role, assign, rank
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

# Create and manage machine groups

**Applies to:**

- Azure Active Directory
- Office 365
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

In an enterprise scenario, security operation teams are typically assigned a set of machines. These machines are grouped together based on a set of attributes such as their domains, computer names, or designated tags.

In Microsoft Defender ATP, you can create machine groups and use them to:
- Limit access to related alerts and data to specific Azure AD user groups with [assigned RBAC roles](rbac.md) 
- Configure different auto-remediation settings for different sets of machines
- Assign specific remediation levels to apply during automated investigations
- In an investigation, filter the **Machines list** to just specific machine groups by using the **Group** filter.

You can create machine groups in the context of role-based access (RBAC) to control who can take specific action or see information by assigning the machine group(s) to a user group. For more information, see [Manage portal access using role-based access control](rbac-windows-defender-advanced-threat-protection.md).

>[!TIP]
> For a comprehensive look into RBAC application, read: [Is your SOC running flat with RBAC](https://techcommunity.microsoft.com/t5/Windows-Defender-ATP/Is-your-SOC-running-flat-with-limited-RBAC/ba-p/320015).

As part of the process of creating a machine group, you'll:
- Set the automated remediation level for that group. For more information on remediation levels, see [Use Automated investigation to investigate and remediate threats](automated-investigations.md).
- Specify the matching rule that determines which machine group belongs to the group based on the machine name, domain, tags, and OS platform. If a machine is also matched to other groups, it is added only to the highest ranked machine group.
- Select the Azure AD user group that should have access to the machine group.
- Rank the machine group relative to other groups after it is created.

>[!NOTE]
>A machine group is accessible to all users if you don’t assign any Azure AD groups to it.

## Create a machine group

1. In the navigation pane, select **Settings** > **Machine groups**.

2. Click **Add machine group**.

3. Enter the group name and automation settings and specify the matching rule that determines which machines belong to the group. For more information on automation levels, see [Understand the Automated investigation flow](automated-investigations.md#understand-the-automated-investigation-flow).

    >[!TIP]
    >If you want to group machines by organizational unit, you can configure the registry key for the group affiliation. For more information on device tagging, see [Create and manage machine tags](machine-tags-windows-defender-advanced-threat-protection.md).

4. Preview several machines that will be matched by this rule. If you are satisfied with the rule, click the **User access** tab.

5. Assign the user groups that can access the machine group you created.

    >[!NOTE]
    >You can only grant access to Azure AD user groups that have been assigned to RBAC roles.

6. Click **Close**. The configuration changes are applied.

## Manage machine groups

You can promote or demote the rank of a machine group so that it is given higher or lower priority during matching. When a machine is matched to more than one group, it is added only to the highest ranked group. You can also edit and delete groups.

>[!WARNING]
>Deleting a machine group may affect email notification rules. If a machine group is configured under an email notification rule, it will be removed from that rule. If the machine group is the only group configured for an email notification, that email notification rule will be deleted along with the machine group.

By default, machine groups are accessible to all users with portal access. You can change the default behavior by assigning Azure AD user groups to the machine group.

Machines that are not matched to any groups are added to Ungrouped machines (default) group. You cannot change the rank of this group or delete it. However, you can change the remediation level of this group, and define the Azure AD user groups that can access this group.

>[!NOTE]
> Applying changes to machine group configuration may take up to several minutes.

## Related topics

## Related topic
- [Manage portal access using role-based based access control](rbac.md)
- [Create and manage machine tags](machine-tags.md)
- [Get list of tenant machine groups using Graph API](get-machinegroups-collection.md)
