---
title: Viewing the Events Screen in Compatibility Administrator (Windows 10)
description: You can use the Events screen to record and view activities in the Compatibility Administrator tool.
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
author: frankroj
ms.topic: conceptual
ms.subservice: itpro-deploy
ms.date: 10/28/2022
---

# Viewing the Events Screen in Compatibility Administrator

**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

The **Events** screen enables you to record and to view your activities in the Compatibility Administrator tool, provided that the screen is open while you perform the activities.

>[!IMPORTANT]
>The **Events** screen only records your activities when the screen is open. If you perform an action before opening the **Events** screen, the action will not appear in the list.

 **To open the Events screen**

- On the **View** menu, click **Events**.

## Handling Multiple Copies of Compatibility Fixes

Compatibility Administrator enables you to copy your compatibility fixes from one database to another, which can become confusing after adding multiple fixes, compatibility modes, and databases. For example, you can copy a fix called MyFix from Database 1 to Database 2. However, if there is already a fix called MyFix in Database 2, Compatibility Administrator renames the fix as MyFix (1) to avoid duplicate names.

If you open the **Events** screen and then perform the copy operation, you can see a description of the action, along with the time stamp, which enables you to view your fix information without confusion.

## Related topics
[Creating a Custom Compatibility Mode in Compatibility Administrator](creating-a-custom-compatibility-mode-in-compatibility-administrator.md)<br>
[Compatibility Administrator User's Guide](compatibility-administrator-users-guide.md)
