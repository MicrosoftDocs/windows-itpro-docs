---
title: Policy CSP - ADMX_SharedFolders
description: Learn about Policy CSP - ADMX_SharedFolders.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/21/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_SharedFolders
> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_SharedFolders policies

<dl>
  <dd>
    <a href="#admx-sharedfolders-publishdfsroots">ADMX_SharedFolders/PublishDfsRoots</a>
  </dd>
  <dd>
    <a href="#admx-sharedfolders-publishsharedfolders">ADMX_SharedFolders/PublishSharedFolders</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="admx-sharedfolders-publishdfsroots"></a>**ADMX_SharedFolders/PublishDfsRoots**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
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
This policy setting determines whether the user can publish DFS roots in Active Directory Domain Services (AD DS).

If you enable or don't configure this policy setting, users can use the "Publish in Active Directory" option to publish DFS roots as shared folders in AD DS .

If you disable this policy setting, users cannot publish DFS roots in AD DS and the "Publish in Active Directory" option is disabled.

> [!NOTE]
> The default is to allow shared folders to be published when this setting is not configured.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow DFS roots to be published*
-   GP name: *PublishDfsRoots*
-   GP path: *Shared Folders*
-   GP ADMX file name: *SharedFolders.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-sharedfolders-publishsharedfolders"></a>**ADMX_SharedFolders/PublishSharedFolders**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
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
This policy setting determines whether the user can publish shared folders in Active Directory Domain Services (AD DS).

If you enable or don't configure this policy setting, users can use the "Publish in Active Directory" option in the Shared Folders snap-in to publish shared folders in AD DS.

If you disable this policy setting, users can't publish shared folders in AD DS, and the "Publish in Active Directory" option is disabled.

> [!NOTE]
> The default is to allow shared folders to be published when this setting is not configured.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow shared folders to be published*
-   GP name: *PublishSharedFolders*
-   GP path: *Shared Folders*
-   GP ADMX file name: *SharedFolders.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)
