---
title: Policy CSP - ADMX_FolderRedirection
description: Policy CSP - ADMX_FolderRedirection
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 09/02/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_FolderRedirection
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_FolderRedirection policies  

<dl>
  <dd>
    <a href="#admx-folderredirection-disablefradminpin">ADMX_FolderRedirection/DisableFRAdminPin</a>
  </dd>
  <dd>
    <a href="#admx-folderredirection-disablefradminpinbyfolder">ADMX_FolderRedirection/DisableFRAdminPinByFolder</a>
  </dd>
  <dd>
    <a href="#admx-folderredirection-folderredirectionenablecacherename">ADMX_FolderRedirection/FolderRedirectionEnableCacheRename</a>
  </dd>
  <dd>
    <a href="#admx-folderredirection-localizexprelativepaths-1">ADMX_FolderRedirection/LocalizeXPRelativePaths_1</a>
  </dd>
  <dd>
    <a href="#admx-folderredirection-localizexprelativepaths-2">ADMX_FolderRedirection/LocalizeXPRelativePaths_2</a>
  </dd>
  <dd>
    <a href="#admx-folderredirection-primarycomputer-fr-1">ADMX_FolderRedirection/PrimaryComputer_FR_1</a>
  </dd>
  <dd>
    <a href="#admx-folderredirection-primarycomputer-fr-2">ADMX_FolderRedirection/PrimaryComputer_FR_2</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-folderredirection-disablefradminpin"></a>**ADMX_FolderRedirection/DisableFRAdminPin**  
<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to control whether all redirected shell folders, such as Contacts, Documents, Desktop, Favorites, Music, Pictures, Videos, Start Menu, and AppData\Roaming, are available offline by default.

If you enable this policy setting, users must manually select the files they wish to make available offline.  

If you disable or do not configure this policy setting, redirected shell folders are automatically made available offline. All subfolders within the redirected folders are also made available offline.  

> [!NOTE]
> This policy setting does not prevent files from being automatically cached if the network share is configured for "Automatic Caching", nor does it affect the availability of the "Always available offline" menu option in the user interface.  
>
> Do not enable this policy setting if users will need access to their redirected files if the network or server holding the redirected files becomes unavailable.
>
> If one or more valid folder GUIDs are specified in the policy setting "Do not automatically make specific redirected folders available offline", that setting will override the configured value of "Do not automatically make all redirected folders available offline".

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Do not automatically make all redirected folders available offline*
-   GP name: *DisableFRAdminPin*
-   GP path: *System/Folder Redirection*
-   GP ADMX file name: *FolderRedirection.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-folderredirection-disablefradminpinbyfolder"></a>**ADMX_FolderRedirection/DisableFRAdminPinByFolder**  
<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to control whether individual redirected shell folders are available offline by default.

For the folders affected by this setting, users must manually select the files they wish to make available offline.

If you disable or do not configure this policy setting, all redirected shell folders are automatically made available offline. All subfolders within the redirected folders are also made available offline.

> [!NOTE]
> This policy setting does not prevent files from being automatically cached if the network share is configured for "Automatic Caching", nor does it affect the availability of the "Always available offline" menu option in the user interface.
>
> The configuration of this policy for any folder will override the configured value of "Do not automatically make all redirected folders available offline".

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Do not automatically make specific redirected folders available offline*
-   GP name: *DisableFRAdminPinByFolder*
-   GP path: *System/Folder Redirection*
-   GP ADMX file name: *FolderRedirection.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-folderredirection-folderredirectionenablecacherename"></a>**ADMX_FolderRedirection/FolderRedirectionEnableCacheRename**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting controls whether the contents of redirected folders is copied from the old location to the new location or simply renamed in the Offline Files cache when a folder is redirected to a new location.

If you enable this policy setting, when the path to a redirected folder is changed from one network location to another and Folder Redirection is configured to move the content to the new location, instead of copying the content to the new location, the cached content is renamed in the local cache and not copied to the new location. To use this policy setting, you must move or restore the server content to the new network location using a method that preserves the state of the files, including their timestamps, before updating the Folder Redirection location.

If you disable or do not configure this policy setting, when the path to a redirected folder is changed and Folder Redirection is configured to move the content to the new location, Windows copies the contents of the local cache to the new network location, then deleted the content from the old network location.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Enable optimized move of contents in Offline Files cache on Folder Redirection server path change*
-   GP name: *FolderRedirectionEnableCacheRename*
-   GP path: *System/Folder Redirection*
-   GP ADMX file name: *FolderRedirection.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-folderredirection-localizexprelativepaths-1"></a>**ADMX_FolderRedirection/LocalizeXPRelativePaths_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows the administrator to define whether Folder Redirection should use localized names for the All Programs, Startup, My Music, My Pictures, and My Videos subfolders when redirecting the parent Start Menu and legacy My Documents folder respectively.

If you enable this policy setting, Windows Vista, Windows 7, Windows 8, and Windows Server 2012 will use localized folder names for these subfolders when redirecting the Start Menu or legacy My Documents folder.

If you disable or not configure this policy setting, Windows Vista, Windows 7, Windows 8, and Windows Server 2012 will use the standard English names for these subfolders when redirecting the Start Menu or legacy My Documents folder.

> [!NOTE]
> This policy is valid only on Windows Vista, Windows 7, Windows 8, and Windows Server 2012 when it processes a legacy redirection policy already deployed for these folders in your existing localized environment.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Use localized subfolder names when redirecting Start Menu and My Documents*
-   GP name: *LocalizeXPRelativePaths_1*
-   GP path: *System/Folder Redirection*
-   GP ADMX file name: *FolderRedirection.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-folderredirection-localizexprelativepaths-2"></a>**ADMX_FolderRedirection/LocalizeXPRelativePaths_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows the administrator to define whether Folder Redirection should use localized names for the All Programs, Startup, My Music, My Pictures, and My Videos subfolders when redirecting the parent Start Menu and legacy My Documents folder respectively.

If you enable this policy setting, Windows Vista, Windows 7, Windows 8, and Windows Server 2012 will use localized folder names for these subfolders when redirecting the Start Menu or legacy My Documents folder.

If you disable or not configure this policy setting, Windows Vista, Windows 7, Windows 8, and Windows Server 2012 will use the standard English names for these subfolders when redirecting the Start Menu or legacy My Documents folder.

> [!NOTE]
> This policy is valid only on Windows Vista, Windows 7, Windows 8, and Windows Server 2012 when it processes a legacy redirection policy already deployed for these folders in your existing localized environment.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Use localized subfolder names when redirecting Start Menu and My Documents*
-   GP name: *LocalizeXPRelativePaths_2*
-   GP path: *System/Folder Redirection*
-   GP ADMX file name: *FolderRedirection.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-folderredirection-primarycomputer-fr-1"></a>**ADMX_FolderRedirection/PrimaryComputer_FR_1**  
<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting controls whether folders are redirected on a user's primary computers only. This policy setting is useful to improve logon performance and to increase security for user data on computers where the user might not want to download private data, such as on a meeting room computer or on a computer in a remote office.

To designate a user's primary computers, an administrator must use management software or a script to add primary computer attributes to the user's account in Active Directory Domain Services (AD DS). This policy setting also requires the Windows Server 2012 version of the Active Directory schema to function.

If you enable this policy setting and the user has redirected folders, such as the Documents and Pictures folders, the folders are redirected on the user's primary computer only.

If you disable or do not configure this policy setting and the user has redirected folders, the folders are redirected on every computer that the user logs on to.

> [!NOTE]
> If you enable this policy setting in Computer Configuration and User Configuration, the Computer Configuration policy setting takes precedence.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Redirect folders on primary computers only*
-   GP name: *PrimaryComputer_FR_1*
-   GP path: *System/Folder Redirection*
-   GP ADMX file name: *FolderRedirection.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-folderredirection-primarycomputer-fr-2"></a>**ADMX_FolderRedirection/PrimaryComputer_FR_2**  
<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting controls whether folders are redirected on a user's primary computers only. This policy setting is useful to improve logon performance and to increase security for user data on computers where the user might not want to download private data, such as on a meeting room computer or on a computer in a remote office.

To designate a user's primary computers, an administrator must use management software or a script to add primary computer attributes to the user's account in Active Directory Domain Services (AD DS). This policy setting also requires the Windows Server 2012 version of the Active Directory schema to function.

If you enable this policy setting and the user has redirected folders, such as the Documents and Pictures folders, the folders are redirected on the user's primary computer only.

If you disable or do not configure this policy setting and the user has redirected folders, the folders are redirected on every computer that the user logs on to.

> [!NOTE]
> If you enable this policy setting in Computer Configuration and User Configuration, the Computer Configuration policy setting takes precedence.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Redirect folders on primary computers only*
-   GP name: *PrimaryComputer_FR_2*
-   GP path: *System/Folder Redirection*
-   GP ADMX file name: *FolderRedirection.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

Footnotes:

- 1 - Available in Windows 10, version 1607
- 2 - Available in Windows 10, version 1703
- 3 - Available in Windows 10, version 1709
- 4 - Available in Windows 10, version 1803
- 5 - Available in Windows 10, version 1809
- 6 - Available in Windows 10, version 1903
- 7 - Available in Windows 10, version 1909
- 8 - Available in Windows 10, version 2004
- 9 - Available in Windows 10, version 20H2

<!--/Policies-->

