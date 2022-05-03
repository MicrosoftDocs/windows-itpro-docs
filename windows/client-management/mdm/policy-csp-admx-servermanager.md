---
title: Policy CSP - ADMX_ServerManager
description: Policy CSP - ADMX_ServerManager
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 09/18/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_ServerManager

<hr/>

<!--Policies-->
## ADMX_ServerManager policies  

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<dl>
  <dd>
    <a href="#admx-servermanager-do_not_display_manage_your_server_page">ADMX_ServerManager/Do_not_display_Manage_Your_Server_page</a>
  </dd>
  <dd>
    <a href="#admx-servermanager-servermanagerautorefreshrate">ADMX_ServerManager/ServerManagerAutoRefreshRate</a>
  </dd>
  <dd>
    <a href="#admx-servermanager-donotlaunchinitialconfigurationtasks">ADMX_ServerManager/DoNotLaunchInitialConfigurationTasks</a>
  </dd>
  <dd>
    <a href="#admx-servermanager-donotlaunchservermanager">ADMX_ServerManager/DoNotLaunchServerManager</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-servermanager-do_not_display_manage_your_server_page"></a>**ADMX_ServerManager/Do_not_display_Manage_Your_Server_page**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to turn off the automatic display of Server Manager at a sign in.  

- If you enable this policy setting, Server Manager isn't displayed automatically when a user signs in to the server.  

- If you disable this policy setting, Server Manager is displayed automatically when a user signs in to the server.  

If you don't configure this policy setting, Server Manager is displayed when a user signs in to the server. However, if the "Do not show me this console at logon" (Windows Server 2008 and Windows Server 2008 R2) or “Do not start Server Manager automatically at logon” (Windows Server 2012) option is selected, the console isn't displayed automatically at a sign in.  

> [!NOTE]
> Regardless of the status of this policy setting, Server Manager is available from the Start menu or the Windows taskbar.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not display Server Manager automatically at logon*
-   GP name: *Do_not_display_Manage_Your_Server_page*
-   GP path: *System\Server Manager*
-   GP ADMX file name: *ServerManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--Policy-->
<a href="" id="admx-servermanager-servermanagerautorefreshrate"></a>**ADMX_ServerManager/ServerManagerAutoRefreshRate**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to set the refresh interval for Server Manager. Each refresh provides Server Manager with updated information about which roles and features are installed on servers that you're managing by using Server Manager. Server Manager also monitors the status of roles and features installed on managed servers.  

- If you enable this policy setting, Server Manager uses the refresh interval specified in the policy setting instead of the “Configure Refresh Interval” setting (in Windows Server 2008 and Windows Server 2008 R2), or the “Refresh the data shown in Server Manager every [x] [minutes/hours/days]” setting (in Windows Server 2012) that is configured in the Server Manager console.  

- If you disable this policy setting, Server Manager doesn't refresh automatically. If you don't configure this policy setting, Server Manager uses the refresh interval settings that are specified in the Server Manager console.  

> [!NOTE]
> The default refresh interval for Server Manager is two minutes in Windows Server 2008 and Windows Server 2008 R2, or 10 minutes in Windows Server 2012.


<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Configure the refresh interval for Server Manager*
-   GP name: *ServerManagerAutoRefreshRate*
-   GP path: *System\Server Manager*
-   GP ADMX file name: *ServerManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-servermanager-donotlaunchinitialconfigurationtasks"></a>**ADMX_ServerManager/DoNotLaunchInitialConfigurationTasks**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to turn off the automatic display of the Initial Configuration Tasks window at a sign in on Windows Server 2008 and Windows Server 2008 R2.  

- If you enable this policy setting, the Initial Configuration Tasks window isn't displayed when an administrator signs in to the server.  

- If you disable this policy setting, the Initial Configuration Tasks window is displayed when an administrator signs in to the server.

If you don't configure this policy setting, the Initial Configuration Tasks window is displayed when an administrator signs in to the server. However, if an administrator selects the "Do not show this window at logon" option, the window isn't displayed on subsequent logons.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not display Initial Configuration Tasks window automatically at logon*
-   GP name: *DoNotLaunchInitialConfigurationTasks*
-   GP path: *System\Server Manager*
-   GP ADMX file name: *ServerManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-servermanager-donotlaunchservermanager"></a>**ADMX_ServerManager/DoNotLaunchServerManager**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to turn off the automatic display of the Manage Your Server page.  

- If you enable this policy setting, the Manage Your Server page isn't displayed each time an administrator signs in to the server.  

- If you disable or don't configure this policy setting, the Manage Your Server page is displayed each time an administrator signs in to the server. 

However, if the administrator has selected the "Don’t display this page at logon" option at the bottom of the Manage Your Server page, the page isn't displayed.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not display Manage Your Server page at logon*
-   GP name: *DoNotLaunchServerManager*
-   GP path: *System\Server Manager*
-   GP ADMX file name: *ServerManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<!--/Policies-->

