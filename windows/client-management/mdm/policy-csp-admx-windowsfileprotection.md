---
title: Policy CSP - ADMX_WindowsFileProtection
description: Policy CSP - ADMX_WindowsFileProtection
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 01/03/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_WindowsFileProtection
>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).


<hr/>

<!--Policies-->
## ADMX_WindowsFileProtection policies  

<dl>
  <dd>
    <a href="#admx-windowsfileprotection-wfpshowprogress">ADMX_WindowsFileProtection/WFPShowProgress</a>
  </dd>
  <dd>
    <a href="#admx-windowsfileprotection-wfpquota">ADMX_WindowsFileProtection/WFPQuota</a>
  </dd>
  <dd>
    <a href="#admx-windowsfileprotection-wfpscan">ADMX_WindowsFileProtection/WFPScan</a>
  </dd>
  <dd>
    <a href="#admx-windowsfileprotection-wfpdllcachedir">ADMX_WindowsFileProtection/WFPDllCacheDir</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-windowsfileprotection-wfpshowprogress"></a>**ADMX_WindowsFileProtection/WFPShowProgress**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th> 
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Machine

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting hides the file scan progress window. This window provides status information to sophisticated users, but it might confuse the users.  

- If you enable this policy setting, the file scan window does not appear during file scanning.  
- If you disable or do not configure this policy setting, the file scan progress window appears.


<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Hide the file scan progress window*
-   GP name: *WFPShowProgress*
-   GP path: *Windows File Protection!SfcShowProgress*
-   GP ADMX file name: *WindowsFileProtection.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsfileprotection-wfpquota"></a>**ADMX_WindowsFileProtection/WFPQuota**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th> 
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Machine

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies the maximum amount of disk space that can be used for the Windows File Protection file cache.  
Windows File Protection adds protected files to the cache until the cache content reaches the quota. 
If the quota is greater than 50 MB, Windows File Protection adds other important Windows XP files to the cache until the cache size reaches the quota.  

- If you enable this policy setting, enter the maximum amount of disk space to be used (in MB). 
To indicate that the cache size is unlimited, select "4294967295" as the maximum amount of disk space.  

- If you disable this policy setting or do not configure it, the default value is set to 50 MB.
> [!NOTE]
> Icon size is dependent upon what the user has set it to in the previous session.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Limit Windows File Protection cache size*
-   GP name: *WFPQuota*
-   GP path: *System\Windows File Protection*
-   GP ADMX file name: *WindowsFileProtection.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsfileprotection-wfpscan"></a>**ADMX_WindowsFileProtection/WFPScan**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th> 
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Machine

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to set when Windows File Protection scans protected files. 
This policy setting directs Windows File Protection to enumerate and scan all system files for changes.  

- If you enable this policy setting, select a rate from the "Scanning Frequency" box. 
You can use this setting to direct Windows File Protection to scan files more often.  
--  "Do not scan during startup," the default, scans files only during setup.  
--  "Scan during startup" also scans files each time you start Windows XP. 
This setting delays each startup. 
 
- If you disable or do not configure this policy setting, by default, files are scanned only during setup.  

> [!NOTE]
> This policy setting affects file scanning only. It does not affect the standard background file change detection that Windows File Protection provides.


<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Set Windows File Protection scanning*
-   GP name: *WFPScan*
-   GP path: *System\Windows File Protection*
-   GP ADMX file name: *WindowsFileProtection.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowsfileprotection-wfpdllcachedir"></a>**ADMX_WindowsFileProtection/WFPDllCacheDir**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th> 
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Machine

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies an alternate location for the Windows File Protection cache.

- If you enable this policy setting, enter the fully qualified local path to the new location in the "Cache file path" box.
- If you disable this setting or do not configure it, the Windows File Protection cache is located in the "%Systemroot%\System32\Dllcache directory". 

> [!NOTE]
> Do not add the cache on a network shared directory.


If both the "Hide specified Control Panel items" setting and the "Show only specified Control Panel items" setting are enabled, the "Show only specified Control Panel items" setting is ignored.

> [!NOTE]
> The Display Control Panel item cannot be hidden in the Desktop context menu by using this setting. To hide the Display Control Panel item and prevent users from modifying the computer's display settings use the "Disable Display Control Panel" setting instead.
>
> To hide pages in the System Settings app, use the "Settings Page Visibility" setting under Computer Configuration.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Specify Windows File Protection cache location*
-   GP name: *WFPDllCacheDir*
-   GP path: *System\Windows File Protection*
-   GP ADMX file name: *WindowsFileProtection.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->