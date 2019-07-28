---
title: Assign Security Group Filters to the GPO (Windows 10)
description: Assign Security Group Filters to the GPO
ms.assetid: bcbe3299-8d87-4ec1-9e86-8e4a680fd7c8
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/02/2019
---

# Assign Security Group Filters to the GPO

**Applies to**
-   Windows 10
-   Windows Server 2016

To make sure that your GPO is applied to the correct computers, use the Group Policy Management MMC snap-in to assign security group filters to the GPO.

>[!IMPORTANT]
>This deployment guide uses the method of adding the Domain Computers group to the membership group for the main isolated domain after testing is complete and you are ready to go live in production. To make this method work, you must prevent any computer that is a member of either the boundary or encryption zone from applying the GPO for the main isolated domain. For example, on the GPOs for the main isolated domain, deny Read and Apply Group Policy permissions to the membership groups for the boundary and encryption zones.

 

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the relevant GPOs.

In this topic:

-   [Allow members of a group to apply a GPO](#to-allow-members-of-a-group-to-apply-a-gpo)

-   [Prevent members of a group from applying a GPO](#to-prevent-members-of-a-group-from-applying-a-gpo)

## To allow members of a group to apply a GPO

Use the following procedure to add a group to the security filter on the GPO that allows group members to apply the GPO.

1.  Open the Group Policy Management console.

2.  In the navigation pane, find and then click the GPO that you want to modify.

3.  In the details pane, under **Security Filtering**, click **Authenticated Users**, and then click **Remove**.

    >[!NOTE]
    >You must remove the default permission granted to all authenticated users and computers to restrict the GPO to only the groups you specify. If the GPO contains User settings, and the **Authenticated Users** group is removed, and new security filtering is added using a security group that only contains user accounts, the GPO can fail to apply. Details and various workarounds are mentioned in this [Microsoft blog](https://techcommunity.microsoft.com/t5/Core-Infrastructure-and-Security/Who-broke-my-user-GPOs/ba-p/258781). 

4.  Click **Add**.

5.  In the **Select User, Computer, or Group** dialog box, type the name of the group whose members are to apply the GPO, and then click **OK**. If you do not know the name, you can click **Advanced** to browse the list of groups available in the domain.

## To prevent members of a group from applying a GPO 

Use the following procedure to add a group to the security filter on the GPO that prevents group members from applying the GPO. This is typically used to prevent members of the boundary and encryption zones from applying the GPOs for the isolated domain.

1.  Open the Group Policy Management console.

2.  In the navigation pane, find and then click the GPO that you want to modify.

3.  In the details pane, click the **Delegation** tab.

4.  Click **Advanced**.

5.  Under the **Group or user names** list, click **Add**.

6.  In the **Select User, Computer, or Group** dialog box, type the name of the group whose members are to be prevented from applying the GPO, and then click **OK**. If you do not know the name, you can click **Advanced** to browse the list of groups available in the domain.

7.  Select the group in the **Group or user names** list, and then select the box in the **Deny** column for both **Read** and **Apply group policy**.

8.  Click **OK**, and then in the **Windows Security** dialog box, click **Yes**.

9.  The group appears in the list with **Custom** permissions.
