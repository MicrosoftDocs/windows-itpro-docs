---
title: Display a custom URL message when users try to run a blocked app (Windows)
description: This topic for IT professionals describes the steps for displaying a customized message to users when an AppLocker policy denies access to an app.
ms.assetid: 9a2534a5-d1fa-48a9-93c6-989d4857cf85
ms.reviewer: 
ms.author: vinpa
ms.pagetype: security
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.topic: conceptual
ms.date: 09/21/2017
ms.technology: itpro-security
---

# Display a custom URL message when users try to run a blocked app

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2016 and above

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This topic for IT professionals describes the steps for displaying a customized message to users when an AppLocker policy denies access to an app.

With the help of Group Policy, AppLocker can be configured to display a message with a custom URL. You can use this URL to redirect users to a support site that contains info about why the user received the error and which apps are allowed. If you don't display a custom message when an app is blocked, the default access denied message is displayed.

To complete this procedure, you must have the **Edit Setting** permission to edit a GPO. By default, members of the **Domain Admins** group, the **Enterprise Admins** group, and the **Group Policy Creator Owners** group have this permission.

**To display a custom URL message when users try to run a blocked app**

1.  On the **Start** screen, type **gpmc.msc** to open the Group Policy Management Console (GPMC).
2.  Navigate to the Group Policy Object (GPO) that you want to edit.
3.  Right-click the GPO, and then click **Edit**.
4.  In the console tree under **Policies\\Administrative Templates\\Windows Components**, click **File Explorer**.
5.  In the details pane, double-click **Set a support web page link**.
6.  Click **Enabled**, and then type the URL of the custom Web page in the **Support Web page URL** box.
7.  Click **OK** to apply the setting.
