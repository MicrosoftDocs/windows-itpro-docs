---
title: Modify GPO Filters to Apply to a Different Zone or Version of Windows (Windows 10)
description: Modify GPO Filters to Apply to a Different Zone or Version of Windows
ms.assetid: 24ede9ca-a501-4025-9020-1129e2cdde80
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
ms.date: 04/19/2017
---

# Modify GPO Filters to Apply to a Different Zone or Version of Windows

**Applies to**
-   Windows 10
-   Windows Server 2016

You must reconfigure your copied GPO so that it contains the correct security group and WMI filters for its new role. If you are creating the GPO for the isolated domain, use the [Block members of a group from applying a GPO](#to-block-members-of-a-group-from-applying-a-gpo) procedure to prevent members of the boundary and encryption zones from incorrectly applying the GPOs for the main isolated domain.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

In this topic:

-   [Change the security group filter for a GPO](#to-change-the-security-group-filter-for-a-gpo)

-   [Block members of a group from applying a GPO](#to-block-members-of-a-group-from-applying-a-gpo)

-   [Remove a block for members of a group from applying a GPO](#to-remove-a-block-for-members-of-group-from-applying-a-gpo)

## To change the security group filter for a GPO

1.  Open the Group Policy Management console.

2.  In the navigation pane, find and then click the GPO that you want to modify.

3.  In the details pane, under **Security Filtering**, click the currently assigned security group, and then click **Remove**.

4.  Now you can add the appropriate security group to this GPO. Under **Security Filtering**, click **Add**.

5.  In the **Select User, Computer, or Group** dialog box, type the name of the group whose members are to apply the GPO, and then click **OK**. If you do not know the name, you can click **Advanced** to browse the list of groups available in the domain.

## To block members of a group from applying a GPO

1.  Open the Group Policy Management console.

2.  In the navigation pane, find and then click the GPO that you want to modify.

3.  In the details pane, click the **Delegation** tab.

4.  Click **Advanced**.

5.  Under the **Group or user names** list, click **Add**.

6.  In the **Select User, Computer, or Group** dialog box, type the name of the group whose members are to be prevented from applying the GPO, and then click **OK**. If you do not know the name, you can click **Advanced** to browse the list of groups available in the domain.

7.  Select the group in the **Group or user names** list, and then select the boxes in the **Deny** column for both **Read** and **Apply group policy**.

8.  Click **OK**, and then in the **Windows Security** dialog box, click **Yes**.

9.  The group appears in the list with custom permissions.

## To remove a block for members of group from applying a GPO

1.  Open the Group Policy Management console.

2.  In the navigation pane, find and then click the GPO that you want to modify.

3.  In the details pane, click the **Delegation** tab.

4.  In the **Groups and users** list, select the group that should no longer be blocked, and then click **Remove**.

5.  In the message box, click **OK**.
