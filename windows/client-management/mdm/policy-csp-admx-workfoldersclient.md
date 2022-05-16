---
title: Policy CSP - ADMX_WorkFoldersClient
description: Policy CSP - ADMX_WorkFoldersClient
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nimishasatapathy
ms.date: 09/22/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_WorkFoldersClient

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_WorkFoldersClient policies  

<dl>
  <dd>
    <a href="#admx-workfoldersclient-pol_userenabletokenbroker
">ADMX_WorkFoldersClient/Pol_UserEnableTokenBroker</a>
  </dd>
  <dd>
    <a href="#admx-workfoldersclient-pol_userenableworkfolders">ADMX_WorkFoldersClient/Pol_UserEnableWorkFolders</a>
  </dd>
  <dd>
    <a href="#admx-workfoldersclient-pol_machineenableworkfolders">ADMX_WorkFoldersClient/Pol_MachineEnableWorkFolders</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-workfoldersclient-pol_userenabletokenbroker"></a>**ADMX_WorkFoldersClient/Pol_UserEnableTokenBroker**  

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
This policy setting specifies whether Work Folders should be set up automatically for all users of the affected computer.

- If you enable this policy setting, Work Folders will be set up automatically for all users of the affected computer. 

This folder creation prevents users from choosing not to use Work Folders on the computer; it also prevents them from manually specifying the local folder in which Work Folders stores files. Work Folders will use the settings specified in the "Specify Work Folders settings" policy setting in User Configuration\Administrative Templates\Windows Components\WorkFolders. If the "Specify Work Folders settings" policy setting doesn't apply to a user, Work Folders isn't automatically set up.
- If you disable or don't configure this policy setting, Work Folders uses the "Force automatic setup" option of the "Specify Work Folders settings" policy setting to determine whether to automatically set up Work Folders for a given user.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Force automatic setup for all users*
-   GP name: *Pol_UserEnableTokenBroker*
-   GP path: *Windows Components\Work Folders*
-   GP ADMX file name: *WorkFoldersClient.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-workfoldersclient-pol_userenableworkfolders"></a>**ADMX_WorkFoldersClient/Pol_UserEnableWorkFolders**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies the Work Folders server for affected users, and whether or not users are allowed to change settings when setting up Work Folders on a domain-joined computer.  

- If you enable this policy setting, affected users receive Work Folders settings when they sign in to a domain-joined PC. 

If this policy setting is disabled or not configured, no Work Folders settings are specified for the affected users, though users can manually set up Work Folders by using the Work Folders Control Panel item. The "Work Folders URL" can specify either the URL used by the organization for Work Folders discovery, or the specific URL of the file server that stores the affected users' data. The "Work Folders Local Path" specifies the local folder used on the client machine to sync files. This path may contain environment variables. 

> [!NOTE]
> In order for this configuration to take effect, a valid 'Work Folders URL' must also be specified.

The “On-demand file access preference” option controls whether to enable on-demand file access. When enabled, the user controls which files in Work Folders are available offline on a given PC. The rest of the files in Work Folders are always visible and don’t take up any space on the PC, but the user must be connected to the Internet to access them. If you enable this policy setting, on-demand file access is enabled.  

- If you disable this policy setting, on-demand file access is disabled, and enough storage space to store all the user’s files is required on each of their PCs.  

If you specify User choice or don't configure this policy setting, the user decides whether to enable on-demand file access. However, if the Force automatic setup policy setting is enabled, Work Folders is set up automatically with on-demand file access enabled. 

The "Force automatic setup" option specifies that Work Folders should be set up automatically without prompting users. This automatic setup prevents users from choosing not to use Work Folders on the computer; it also prevents them from manually specifying the local folder in which Work Folders stores files. By default, Work Folders is stored in the "%USERPROFILE%\Work Folders" folder. If this option isn't specified, users must use the Work Folders Control Panel item on their computers to set up Work Folders.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Specify Work Folders settings*
-   GP name: *Pol_UserEnableWorkFolders*
-   GP path: *Windows Components\Work Folders*
-   GP ADMX file name: *WorkFoldersClient.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-workfoldersclient-pol_machineenableworkfolders"></a>**ADMX_WorkFoldersClient/Pol_MachineEnableWorkFolders**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy specifies whether Work Folders should use Token Broker for interactive AD FS authentication instead of its own OAuth2 token flow used in previous versions.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Enables the use of Token Broker for AD FS authentication*
-   GP name: *Pol_MachineEnableWorkFolders*
-   GP path: *Windows Components\Work Folders*
-   GP ADMX file name: *WorkFoldersClient.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<!--/Policies-->