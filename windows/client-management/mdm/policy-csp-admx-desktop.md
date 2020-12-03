---
title: Policy CSP - ADMX_Desktop
description: Policy CSP - ADMX_Desktop
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 12/02/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_Desktop
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_Desktop policies  

<dl>
  <dd>
    <a href="#admx-desktop-ad-enablefilter">ADMX_Desktop/AD_EnableFilter</a>
  </dd>
  <dd>
    <a href="#admx-desktop-ad-hidedirectoryfolder">ADMX_Desktop/AD_HideDirectoryFolder</a>
  </dd>
  <dd>
    <a href="#admx-desktop-ad-querylimit">ADMX_Desktop/AD_QueryLimit</a>
  </dd>
  <dd>
    <a href="#admx-desktop-forceactivedesktopon">ADMX_Desktop/ForceActiveDesktopOn</a>
  </dd>
  <dd>
    <a href="#admx-desktop-noactivedesktop">ADMX_Desktop/NoActiveDesktop</a>
  </dd>
  <dd>
    <a href="#admx-desktop-noactivedesktopchanges">ADMX_Desktop/NoActiveDesktopChanges</a>
  </dd>
  <dd>
    <a href="#admx-desktop-nodesktop">ADMX_Desktop/NoDesktop</a>
  </dd>
  <dd>
    <a href="#admx-desktop-nodesktopcleanupwizard">ADMX_Desktop/NoDesktopCleanupWizard</a>
  </dd>
  <dd>
    <a href="#admx-desktop-nointerneticon">ADMX_Desktop/NoInternetIcon</a>
  </dd>
  <dd>
    <a href="#admx-desktop-nomycomputericon">ADMX_Desktop/NoMyComputerIcon</a>
  </dd>
  <dd>
    <a href="#admx-desktop-nomydocumentsicon">ADMX_Desktop/NoMyDocumentsIcon</a>
  </dd>
  <dd>
    <a href="#admx-desktop-nonethood">ADMX_Desktop/NoNetHood</a>
  </dd>
  <dd>
    <a href="#admx-desktop-nopropertiesmycomputer">ADMX_Desktop/NoPropertiesMyComputer</a>
  </dd>
  <dd>
    <a href="#admx-desktop-nopropertiesmydocuments">ADMX_Desktop/NoPropertiesMyDocuments</a>
  </dd>
  <dd>
    <a href="#admx-desktop-norecentdocsnethood">ADMX_Desktop/NoRecentDocsNetHood</a>
  </dd>
  <dd>
    <a href="#admx-desktop-norecyclebinicon">ADMX_Desktop/NoRecycleBinIcon</a>
  </dd>
  <dd>
    <a href="#admx-desktop-norecyclebinproperties">ADMX_Desktop/NoRecycleBinProperties</a>
  </dd>
  <dd>
    <a href="#admx-desktop-nosavesettings">ADMX_Desktop/NoSaveSettings</a>
  </dd>
  <dd>
    <a href="#admx-desktop-nowindowminimizingshortcuts">ADMX_Desktop/NoWindowMinimizingShortcuts</a>
  </dd>
  <dd>
    <a href="#admx-desktop-wallpaper">ADMX_Desktop/Wallpaper</a>
  </dd>
  <dd>
    <a href="#admx-desktop-sz-atc-disableadd">ADMX_Desktop/sz_ATC_DisableAdd</a>
  </dd>
  <dd>
    <a href="#admx-desktop-sz-atc-disableclose">ADMX_Desktop/sz_ATC_DisableClose</a>
  </dd>
  <dd>
    <a href="#admx-desktop-sz-atc-disabledel">ADMX_Desktop/sz_ATC_DisableDel</a>
  </dd>
  <dd>
    <a href="#admx-desktop-sz-atc-disableedit">ADMX_Desktop/sz_ATC_DisableEdit</a>
  </dd>
  <dd>
    <a href="#admx-desktop-sz-atc-nocomponents">ADMX_Desktop/sz_ATC_NoComponents</a>
  </dd>
  <dd>
    <a href="#admx-desktop-sz-admincomponents-title">ADMX_Desktop/sz_AdminComponents_Title</a>
  </dd>
  <dd>
    <a href="#admx-desktop-sz-db-dragdropclose">ADMX_Desktop/sz_DB_DragDropClose</a>
  </dd>
  <dd>
    <a href="#admx-desktop-sz-db-moving">ADMX_Desktop/sz_DB_Moving</a>
  </dd>
  <dd>
    <a href="#admx-desktop-sz-dwp-nohtmlpaper">ADMX_Desktop/sz_DWP_NoHTMLPaper</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-auditsettings-includecmdline"></a>**ADMX_AuditSettings/IncludeCmdLine**  

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
Available in Windows 10 Insider Preview Build 20185. This policy setting determines what information is logged in security audit events when a new process has been created. This setting only applies when the Audit Process Creation policy is enabled.

If you enable this policy setting, the command line information for every process will be logged in plain text in the security event log as part of the Audit Process Creation event 4688, "a new process has been created," on the workstations and servers on which this policy setting is applied.

If you disable or do not configure this policy setting, the process's command line information will not be included in Audit Process Creation events.  

Default is Not configured.

> [!NOTE]
> When this policy setting is enabled, any user with access to read the security events will be able to read the command line arguments for any successfully created process. Command line arguments can contain sensitive or private information, such as passwords or user data.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Include command line in process creation events*
-   GP name: *IncludeCmdLine*
-   GP path: *System/Audit Process Creation*
-   GP ADMX file name: *AuditSettings.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

Footnotes:

- 1 - Available in Windows 10, version 1607.
- 2 - Available in Windows 10, version 1703.
- 3 - Available in Windows 10, version 1709.
- 4 - Available in Windows 10, version 1803.
- 5 - Available in Windows 10, version 1809.
- 6 - Available in Windows 10, version 1903.
- 7 - Available in Windows 10, version 1909.
- 8 - Available in Windows 10, version 2004.

<!--/Policies-->

