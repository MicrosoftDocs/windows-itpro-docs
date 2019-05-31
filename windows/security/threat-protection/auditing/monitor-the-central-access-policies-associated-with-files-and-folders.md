---
title: Monitor the central access policies associated with files and folders (Windows 10)
description: This topic for the IT professional describes how to monitor changes to the central access policies that are associated with files and folders when you are using advanced security auditing options to monitor dynamic access control objects.
ms.assetid: 2ea8fc23-b3ac-432f-87b0-6a16506e8eed
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

# Monitor the central access policies associated with files and folders

**Applies to**
-   Windows 10

This topic for the IT professional describes how to monitor changes to the central access policies that are associated with files and folders when you are using advanced security auditing options to monitor dynamic access control objects.

This security audit policy and the event that it records are generated when the central access policy that is associated with a file or folder is changed. This security audit policy is useful when an administrator wants to monitor potential changes on some, but not all, files and folders on a file server.

For info about monitoring potential central access policy changes for an entire file server, see [Monitor the central access policies that apply on a file server](monitor-the-central-access-policies-that-apply-on-a-file-server.md).

Use the following procedures to configure settings to monitor central access policies that are associated with files. These procedures assume that you have configured and deployed Dynamic Access Control in your network. For more information about how to configure and deploy Dynamic Access Control, see [Dynamic Access Control: Scenario Overview](https://technet.microsoft.com/library/hh831717.aspx).

>**Note:**  Your server might function differently based on the version and edition of the operating system that is installed, your account permissions, and your menu settings.
 
**To configure settings to monitor central access policies associated with files or folders**

1.  Sign in to your domain controller by using domain administrator credentials.
2.  In Server Manager, point to **Tools**, and then click **Group Policy Management**.
3.  In the console tree, right-click the flexible access Group Policy Object, and then click **Edit**.
4.  Double-click **Computer Configuration**, double-click **Security Settings**, double-click **Advanced Audit Policy Configuration**, double-click **Policy Change**, and then double-click **Audit Authorization Policy Change**.
5.  Select the **Configure the following audit events** check box, select the **Success** check box (and the **Failure** check box, if desired), and then click **OK**.
6.  Enable auditing for a file or folder as described in the following procedure.

**To enable auditing for a file or folder**

1.  Sign in as a member of the local administrators group on the computer that contains the files or folders that you want to audit.
2.  Right-click the file or folder, click **Properties**, and then click the **Security** tab.
3.  Click **Advanced**, click the **Auditing** tab, and then click **Continue**.

    If the User Account Control dialog box appears, confirm that the action it displays is what you want, and then click **Yes**.

4.  Click **Add**, click **Select a principal**, type a user name or group name in the format **contoso\\user1**, and then click **OK**.
5.  In the **Auditing Entry for** dialog box, select the permissions that you want to audit, such as **Full Control** or **Delete**.
6.  Click **OK** four times to complete the configuration of the object SACL.
7.  Open a File Explorer window and select or create a file or folder to audit.
8.  Open an elevated command prompt, and run the following command:

    `gpupdate /force`

After you configure settings to monitor changes to the central access policies that are associated with files and folders, verify that the changes are being monitored.

**To verify that changes to central access policies associated with files and folders are monitored**

1.  Sign in as a member of the local administrators group on the computer that contains the files or folders that you want to audit.
2.  Open a File Explorer window and select the file or folder that you configured for auditing in the previous procedure.
3.  Right-click the file or folder, click **Properties**, click the **Security** tab, and then click **Advanced**.
4.  Click the **Central Policy** tab, click **Change**, and select a different central access policy (if one is available) or select **No Central Access Policy**, and then click **OK** twice.
    >**Note:**  You must select a setting that is different than your original setting to generate the audit event.
     
5.  In Server Manager, click **Tools**, and then click **Event Viewer**.
6.  Expand **Windows Logs**, and then click **Security**.
7.  Look for event 4913, which is generated when the central access policy that is associated with a file or folder is changed. This event includes the security identifiers (SIDs) of the old and new central access policies.

### Related resource

- [Using advanced security auditing options to monitor dynamic access control objects](using-advanced-security-auditing-options-to-monitor-dynamic-access-control-objects.md)
