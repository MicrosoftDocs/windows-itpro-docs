---
title: Monitor the use of removable storage devices (Windows 10)
description: This topic for the IT professional describes how to monitor attempts to use removable storage devices to access network resources. It describes how to use advanced security auditing options to monitor dynamic access control objects.
ms.assetid: b0a9e4a5-b7ff-41c6-96ff-0228d4ba5da8
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

# Monitor the use of removable storage devices

**Applies to**
-   Windows 10

This topic for the IT professional describes how to monitor attempts to use removable storage devices to access network resources. It describes how to use advanced security auditing options to monitor dynamic access control objects.

If you configure this policy setting, an audit event is generated each time a user attempts to copy, move, or save a resource to a removable storage device.

Use the following procedures to monitor the use of removable storage devices and to verify that the devices are being monitored.

>**Note:**  Your server might function differently based on the version and edition of the operating system that is installed, your account permissions, and your menu settings.
 
**To configure settings to monitor removable storage devices**

1.  Sign in to your domain controller by using domain administrator credentials.
2.  In Server Manager, point to **Tools**, and then click **Group Policy Management**.
3.  In the console tree, right-click the flexible access Group Policy Object on the domain controller, and then click **Edit**.
4.  Double-click **Computer Configuration**, double-click **Security Settings**, double-click **Advanced Audit Policy Configuration**, double-click **Object Access**, and then double-click **Audit Removable Storage**.
5.  Select the **Configure the following audit events** check box, select the **Success** check box (and the **Failure** check box, if desired), and then click **OK**.
6.  If you selected the **Failure** check box, double-click **Audit Handle Manipulation**, select the **Configure the following audit events check box**, and then select **Failure**.
7.  Click **OK**, and then close the Group Policy Management Editor.

After you configure the settings to monitor removable storage devices, use the following procedure to verify that the settings are active.

**To verify that removable storage devices are monitored**

1.  Sign in to the computer that hosts the resources that you want to monitor. Press the Windows key + R, and then type **cmd** to open a Command Prompt window.

    >**Note:**  If the User Account Control dialog box appears, confirm that the action it displays is what you want, and then click **Yes**.
     
2.  Type **gpupdate /force**, and press ENTER.
3.  Connect a removable storage device to the targeted computer and attempt to copy a file that is protected with the Removable Storage Audit policy.
4.  In Server Manager, click **Tools**, and then click **Event Viewer**.
5.  Expand **Windows Logs**, and then click **Security**.
6.  Look for event 4663, which logs successful attempts to write to or read from a removable storage device. Failures will log event 4656. Both events include **Task Category = Removable Storage device**.

    Key information to look for includes the name and account domain of the user who attempted to access the file, the object that the user is attempting to access, resource attributes of the resource, and the type of access that was attempted.

    >**Note:**  We do not recommend that you enable this category on a file server that hosts file shares on a removable storage device. When Removable Storage Auditing is configured, any attempt to access the removable storage device will generate an audit event.
     
### Related resource

- [Using advanced security auditing options to monitor dynamic access control objects](using-advanced-security-auditing-options-to-monitor-dynamic-access-control-objects.md)
