---
title: Only Allow Admins to Enable Connection Groups (Windows 10/11)
description: Configure the App-V client so that only administrators, not users, can enable or disable connection groups.
author: aczechowski
ms.prod: w10
ms.date: 06/08/2018
ms.reviewer: 
manager: dougeby
ms.author: aaroncz
ms.topic: article
---
# How to allow only administrators to enable connection groups

[!INCLUDE [Applies to Windows client versions](../includes/applies-to-windows-client-versions.md)]

You can configure the App-V client so that only administrators, not users, can enable or disable connection groups. In earlier versions of App-V, there was no way to restrict access to disabling connection groups to users.

>[!NOTE]
>This feature is supported starting in App-V 5.0 SP3.

Use one of the following methods to allow only administrators to enable or disable connection groups.

|Method|Steps|
|---|---|
|Group Policy setting|Enable the “Require publish as administrator” Group Policy setting, which is located in the following Group Policy Object node:<br><br>**Computer Configuration** > **Administrative Templates** > **System** > **App-V** > **Publishing**|
|Windows PowerShell cmdlet|Run the **Set-AppvClientConfiguration** cmdlet with the *-RequirePublishAsAdmin* parameter. <br><br>Parameter values:<br>- **0** – False<br>- **1** – True<br><br>Example: ```Set-AppvClientConfiguration -RequirePublishAsAdmin 1```|





## Related articles

- [Managing Connection Groups](appv-managing-connection-groups.md)
