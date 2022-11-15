---
title: Policy CSP - ADMX_Thumbnails
description: Learn about Policy CSP - ADMX_Thumbnails.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/25/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_Thumbnails

<hr/>

> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--Policies-->
## ADMX_Thumbnails policies

<dl>
  <dd>
    <a href="#admx-thumbnails-disablethumbnails">ADMX_Thumbnails/DisableThumbnails</a>
  </dd>
  <dd>
    <a href="#admx-thumbnails-disablethumbnailsonnetworkfolders">ADMX_Thumbnails/DisableThumbnailsOnNetworkFolders</a>
  </dd>
  <dd>
    <a href="#admx-thumbnails-disablethumbsdbonnetworkfolders">ADMX_Thumbnails/DisableThumbsDBOnNetworkFolders</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="admx-thumbnails-disablethumbnails"></a>**ADMX_Thumbnails/DisableThumbnails**

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
This policy setting allows you to configure how File Explorer displays thumbnail images or icons on the local computer.

File Explorer displays thumbnail images by default.

If you enable this policy setting, File Explorer displays only icons and never displays thumbnail images.

If you disable or do not configure this policy setting, File Explorer displays only thumbnail images.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off the display of thumbnails and only display icons.*
-   GP name: *DisableThumbnails*
-   GP path: *Windows Components\File Explorer*
-   GP ADMX file name: *Thumbnails.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-thumbnails-disablethumbnailsonnetworkfolders"></a>**ADMX_Thumbnails/DisableThumbnailsOnNetworkFolders**

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
This policy setting allows you to configure how File Explorer displays thumbnail images or icons on network folders.

File Explorer displays thumbnail images on network folders by default.

If you enable this policy setting, File Explorer displays only icons and never displays thumbnail images on network folders.

If you disable or do not configure this policy setting, File Explorer displays only thumbnail images on network folders.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off the display of thumbnails and only display icons on network folders*
-   GP name: *DisableThumbnailsOnNetworkFolders*
-   GP path: *Windows Components\File Explorer*
-   GP ADMX file name: *Thumbnails.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-thumbnails-disablethumbsdbonnetworkfolders"></a>**ADMX_Thumbnails/DisableThumbsDBOnNetworkFolders**

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
This policy setting turns off the caching of thumbnails in hidden thumbs.db files.

This policy setting allows you to configure File Explorer to cache thumbnails of items residing in network folders in hidden thumbs.db files.

If you enable this policy setting, File Explorer does not create, read from, or write to thumbs.db files.

If you disable or do not configure this policy setting, File Explorer creates, reads from, and writes to thumbs.db files.

<!--/Description-->
>
<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off the caching of thumbnails in hidden thumbs.db files*
-   GP name: *DisableThumbsDBOnNetworkFolders*
-   GP path: *Windows Components\File Explorer*
-   GP ADMX file name: *Thumbnails.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)
