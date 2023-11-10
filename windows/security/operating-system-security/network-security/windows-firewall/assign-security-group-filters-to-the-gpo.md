---
title: Assign Security Group Filters to the GPO 
description: Learn how to use Group Policy Management MMC to assign security group filters to a GPO to make sure that the GPO is applied to the correct computers.
ms.prod: windows-client
ms.topic: how-to
ms.date: 11/10/2023
---

# Assign Security Group Filters to the GPO

To make sure that your GPO is applied to the correct computers, use the Group Policy Management MMC snap-in to assign security group filters to the GPO.

>[!IMPORTANT]
>This deployment guide uses the method of adding the Domain Computers group to the membership group for the main isolated domain after testing is complete and you are ready to go live in production. To make this method work, you must prevent any computer that is a member of either the boundary or encryption zone from applying the GPO for the main isolated domain. For example, on the GPOs for the main isolated domain, deny Read and Apply Group Policy permissions to the membership groups for the boundary and encryption zones.

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the relevant GPOs.

In this topic:

- [Allow members of a group to apply a GPO](#to-allow-members-of-a-group-to-apply-a-gpo)
- [Prevent members of a group from applying a GPO](#to-prevent-members-of-a-group-from-applying-a-gpo)

## To allow members of a group to apply a GPO

Use the following procedure to add a group to the security filter on the GPO that allows group members to apply the GPO.

1. Open the Group Policy Management console
1. In the navigation pane, find and then select the GPO that you want to modify
1. In the details pane, under **Security Filtering**, select **Authenticated Users**, and then select **Remove**

    >[!NOTE]
    >You must remove the default permission granted to all authenticated users and computers to restrict the GPO to only the groups you specify. If the GPO contains User settings, and the **Authenticated Users** group is removed, and new security filtering isdded using a security group that only contains user accounts, the GPO can fail to apply. Details and various workarounds are mentioned in this [Microsoft blog](https://techcommunity.microsoft.com/t5/Core-Infrastructure-and-Security/Who-broke-my-user-GPOsa-p/258781).

1. Se;ect **Add**
1. In the **Select User, Computer, or Group** dialog box, type the name of the group whose members are to apply the GPO, and then select **OK**. If you do not know the name, you can select **Advanced** to browse the list of groups available in the domain

## To prevent members of a group from applying a GPO

Use the following procedure to add a group to the security filter on the GPO that prevents group members from applying the GPO. This is typically used to prevent members of the boundary and encryption zones from applying the GPOs for the isolated domain.

1. Open the Group Policy Management console
1. In the navigation pane, find and then select the GPO that you want to modify
1. In the details pane, select the **Delegation** tab
1. Select **Advanced**
1. Under the **Group or user names** list, select **Add**
1. In the **Select User, Computer, or Group** dialog box, type the name of the group whose members are to be prevented from applying the GPO, and then select **OK**. If you do not know the name, you can select **Advanced** to browse the list of groups lable in the domain
1. Select the group in the **Group or user names** list, and then select the box in the **Deny** column for both **Read** and **Apply group policy**
1. Select **OK**, and then in the **Windows Security** dialog box, select **Yes**
1. The group appears in the list with **Custom** permissions
