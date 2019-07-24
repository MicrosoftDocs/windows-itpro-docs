---
title: Apply a basic audit policy on a file or folder (Windows 10)
description: You can apply audit policies to individual files and folders on your computer by setting the permission type to record successful access attempts or failed access attempts in the security log.
ms.assetid: 565E7249-5CD0-4B2E-B2C0-B3A0793A51E2
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: none
author: justinha
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 07/25/2018
---

# Apply a basic audit policy on a file or folder

**Applies to**
-   Windows 10

You can apply audit policies to individual files and folders on your computer by setting the permission type to record successful access attempts or failed access attempts in the security log.
To complete this procedure, you must be logged on as a member of the built-in Administrators group or you must have been granted the **Manage auditing and security log** right.

**To apply or modify auditing policy settings for a local file or folder**

1.  Right-click the file or folder that you want to audit, click **Properties**, and then click the **Security** tab.
2.  Click **Advanced**.
3.  In the **Advanced Security Settings** dialog box, click the **Auditing** tab, and then click **Continue**.
4.  Do one of the following:
    -   To set up auditing for a new user or group, click **Add**. Click **Select a principal**, type the name of the user or group that you want, and then click **OK**.
    -   To remove auditing for an existing group or user, click the group or user name, click **Remove**, click **OK**, and then skip the rest of this procedure.
    -   To view or change auditing for an existing group or user, click its name, and then click **Edit.**
5.  In the **Type** box, indicate what actions you want to audit by selecting the appropriate check boxes:
    -   To audit successful events, click **Success.**
    -   To audit failure events, click **Fail.**
    -   To audit all events, click **All.**
6.  In the **Applies to** box, click the object or objects that the audit of events will apply to. It can be to:
    -   **This folder only**
    -   **This folder, subfolders and files**
    -   **This folder and subfolders**
    -   **This folder and files**
    -   **Subfolders and files only.**
    -   **Subfolders only.**
    -   **Files only.**
7.  By default, the selected **Basic Permissions** to Audit are the following:
    -   **Read & Execute.**
    -   **List folder contents.**
    -   **Read.**
    -   Additionally, you can choose **Full control**, **Modify**, and/or **Write** permissions with your selected audit combination.
    
    

> **Important:**  Before setting up auditing for files and folders, you must enable [object access auditing](basic-audit-object-access.md) by defining auditing policy settings for the object access event category. If you do not enable object access auditing, you will receive an error message when you set up auditing for files and folders, and no files or folders will be audited.
 
## Additional considerations

-   After object access auditing is enabled, view the security log in Event Viewer to review the results of your changes.
-   You can set up file and folder auditing only on NTFS drives.
-   Because the security log is limited in size, select the files and folders to be audited carefully. Also, consider the amount of disk space that you want to devote to the security log. The maximum size for the security log is defined in Event Viewer.
 
 
