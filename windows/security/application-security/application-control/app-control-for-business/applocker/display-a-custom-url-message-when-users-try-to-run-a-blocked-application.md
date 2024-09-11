---
title: Display a custom URL message when users try to run a blocked app
description: This article for IT professionals describes the steps for displaying a customized message to users when an AppLocker policy blocks an app.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Display a custom URL message when users try to run a blocked app

This article for IT professionals describes the steps for displaying a customized message to users when an AppLocker policy blocks an app.

With the help of Group Policy, AppLocker can be configured to display a message with a custom URL. You can use this URL to redirect users to a support site that contains info about why the user received the error and which apps are allowed. If you don't display a custom message when an app is blocked, the default AppLocker block message is displayed as-is.

To complete this procedure, you must have the **Edit Setting** permission to edit a GPO. By default, members of the **Domain Admins** group, the **Enterprise Admins** group, and the **Group Policy Creator Owners** group have this permission.

## To display a custom URL message when users try to run a blocked app

1. On the **Start** screen, type **gpmc.msc** to open the Group Policy Management Console (GPMC).
2. Navigate to the Group Policy Object (GPO) that you want to edit.
3. Right-click the GPO, and then select **Edit**.
4. In the console tree under **Policies\\Administrative Templates\\Windows Components**, select **File Explorer**.
5. In the details pane, double-click **Set a support web page link**.
6. Select **Enabled**, and then type the URL of the custom Web page in the **Support Web page URL** box.
7. Select **OK** to apply the setting.
