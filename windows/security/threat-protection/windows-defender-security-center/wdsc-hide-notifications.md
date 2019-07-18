---
title: Hide notifications from the Windows Security app
description: Prevent Windows Security app notifications from appearing on user endpoints
keywords: defender, security center, app, notifications, av, alerts
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
ms.date: 04/30/2018
ms.reviewer: 
manager: dansimp
---

# Hide Windows Security app notifications

**Applies to**

- Windows 10, version 1709 and later

**Audience**

- Enterprise security administrators

**Manageability available with**

- Group Policy

The Windows Security app is used by a number of Windows security features to provide notifications about the health and security of the machine. These include notifications about firewalls, antivirus products, Windows Defender SmartScreen, and others.

In some cases, it may not be appropriate to show these notifications, for example, if you want to hide regular status updates, or if you want to hide all notifications to the employees in your organization.

There are two levels to hiding notifications:

1. Hide non-critical notifications, such as regular updates about the number of scans Windows Defender Antivirus ran in the past week
2. Hide all notifications

If you set **Hide all notifications** to **Enabled**, changing the **Hide non-critical notifications** setting will have no effect.

You can only use Group Policy to change these settings.



## Use Group Policy to hide non-critical notifications

You can hide notifications that describe regular events related to the health and security of the machine. These are notifications that do not require an action from the machine's user. It can be useful to hide these notifications if you find they are too numerours or you have other status reporting on a larger scale (such as Update Compliance or System Center Configuration Manager reporting).

This can only be done in Group Policy.

>[!IMPORTANT]
>### Requirements
>
>You must have Windows 10, version 1709 or later. The ADMX/ADML template files for earlier versions of Windows do not include these Group Policy settings. 

1. Download the latest [Administrative Templates (.admx) for Windows 10, v1809](https://www.microsoft.com/download/details.aspx?id=57576).

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Security > Notifications**.

6.  Open the **Hide non-critical notifications** setting and set it to **Enabled**. Click **OK**.

7. [Deploy the updated GPO as you normally do](https://msdn.microsoft.com/library/ee663280(v=vs.85).aspx). 


## Use Group Policy to hide all notifications

You can hide all notifications that are sourced from the Windows Security app. This may be useful if you don't want users of the machines from inadvertently modifying settings, running antivirus scans, or otherwise performing security-related actions without your input.

This can only be done in Group Policy.

>[!IMPORTANT]


>### Requirements
>
>You must have Windows 10, version 1709 or later. The ADMX/ADML template files for earlier versions of Windows do not include these Group Policy settings. 

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Security > Notifications**.

6.  Open the **Hide all notifications** setting and set it to **Enabled**. Click **OK**.

7.  Use the following registry key and DWORD value to **Hide all notifications**.
   
    **[HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications]**
    **"DisableNotifications"=dword:00000001**
    
8.  Use the following registry key and DWORD value to **Hide not-critical notifications**

     **[HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications]**
     **"DisableEnhancedNotifications"=dword:00000001**

9. [Deploy the updated GPO as you normally do](https://msdn.microsoft.com/library/ee663280(v=vs.85).aspx). 
