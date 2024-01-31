---
title: Monitor central access policies for files or folders
description: Monitor changes to central access policies associated with files and folders, when using advanced security auditing options for dynamic access control objects.
ms.assetid: 2ea8fc23-b3ac-432f-87b0-6a16506e8eed
ms.reviewer:
ms.author: vinpa
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.topic: reference
ms.date: 09/09/2021
---

# Monitor the central access policies associated with files and folders


This article for IT professionals describes how to monitor changes to the central access policies that are associated with files and folders when you're using advanced security auditing options to monitor dynamic access control objects.

This security audit policy and the event that it records are generated when the central access policy that's associated with a file or folder is changed. This security audit policy is useful when an administrator wants to monitor potential changes on some, but not all, files and folders on a file server.

For information about monitoring potential central access policy changes for an entire file server, see [Monitor the central access policies that apply on a file server](monitor-the-central-access-policies-that-apply-on-a-file-server.md).

Use the following procedures to configure settings to monitor central access policies that are associated with files. These procedures assume that you have configured and deployed Dynamic Access Control in your network. For more information about how to configure and deploy Dynamic Access Control, see [Dynamic Access Control: Scenario Overview](/windows-server/identity/solution-guides/dynamic-access-control--scenario-overview).

> [!NOTE]
> Your server might function differently based on the version and edition of the operating system that is installed, your account permissions, and your menu settings.

**To configure settings to monitor central access policies associated with files or folders**

1.  Sign in to your domain controller by using domain administrator credentials.
2.  In Server Manager, point to **Tools**, and then select **Group Policy Management**.
3.  In the console tree, right-click the flexible access Group Policy Object, and then select **Edit**.
4.  Double-click **Computer Configuration**, double-click **Security Settings**, double-click **Advanced Audit Policy Configuration**, double-click **Policy Change**, and then double-click **Audit Authorization Policy Change**.
5.  Select the **Configure the following audit events** check box, select the **Success** check box (and the **Failure** check box, if desired), and then select **OK**.
6.  Turn on auditing for a file or folder as described in the following procedure.

**To turn on auditing for a file or folder**

1.  Sign in as a member of the local administrator's group on the computer that contains the files or folders that you want to audit.
2.  Right-click the file or folder, select **Properties**, and then select the **Security** tab.
3.  Select **Advanced**, select the **Auditing** tab, and then select **Continue**.

    If the User Account Control dialog box appears, confirm that the action it displays is what you want, and then select **Yes**.

4.  Select **Add**, select **Select a principal**, type a user name or group name in the format **contoso\\user1**, and then select **OK**.
5.  In the **Auditing Entry for** dialog box, select the permissions that you want to audit, such as **Full Control** or **Delete**.
6.  To complete the configuration of the object SACL, select **OK** four times.
7.  Open a File Explorer window, and then select or create a file or folder to audit.
8.  Open an elevated command prompt, and then run the following command:

    `gpupdate /force`

After you configure settings to monitor changes to the central access policies that are associated with files and folders, verify that the changes are being monitored.

**To verify that changes to central access policies associated with files and folders are monitored**

1.  Sign in as a member of the local administrator's group on the computer that contains the files or folders that you want to audit.
2.  Open a File Explorer window, and then select the file or folder that you configured for auditing in the previous procedure.
3.  Right-click the file or folder, select **Properties**, select the **Security** tab, and then select **Advanced**.
4.  Select the **Central Policy** tab, select **Change**, select a different central access policy (if one is available) or select **No Central Access Policy**, and then select **OK** twice.
    > [!NOTE]
    > You must select a setting that is different than your original setting to generate the audit event.

5.  In Server Manager, select **Tools**, and then select **Event Viewer**.
6.  Expand **Windows Logs**, and then select **Security**.
7.  Look for event 4913, which is generated when the central access policy that's associated with a file or folder changes. This event includes the security identifiers (SIDs) of the old and new central access policies.

### Related resource

- [Using advanced security auditing options to monitor dynamic access control objects](using-advanced-security-auditing-options-to-monitor-dynamic-access-control-objects.md)