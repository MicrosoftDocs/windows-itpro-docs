---
title: Policy CSP - Search
description: Learn how the Policy CSP - Search setting allows search and Cortana to search cloud sources like OneDrive and SharePoint.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.localizationpriority: medium
ms.date: 02/12/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - Search


<hr/>

<!--Policies-->
## Search policies  

<dl>
  <dd>
    <a href="#search-allowcloudsearch">Search/AllowCloudSearch</a>
  </dd>
  <dd>
    <a href="#search-allowcortanainaad">Search/AllowCortanaInAAD</a>
  </dd>
  <dd>
    <a href="#search-allowfindmyfiles">Search/AllowFindMyFiles</a>
  </dd>
  <dd>
    <a href="#search-allowindexingencryptedstoresoritems">Search/AllowIndexingEncryptedStoresOrItems</a>
  </dd>
  <dd>
    <a href="#search-allowsearchtouselocation">Search/AllowSearchToUseLocation</a>
  </dd>
  <dd>
    <a href="#search-allowsearchhighlights">Search/AllowSearchHighlights</a>
  </dd>
  <dd>
    <a href="#search-allowstoringimagesfromvisionsearch">Search/AllowStoringImagesFromVisionSearch</a>
  </dd>
  <dd>
    <a href="#search-allowusingdiacritics">Search/AllowUsingDiacritics</a>
  </dd>
  <dd>
    <a href="#search-allowwindowsindexer">Search/AllowWindowsIndexer</a>
  </dd>
  <dd>
    <a href="#search-alwaysuseautolangdetection">Search/AlwaysUseAutoLangDetection</a>
  </dd>
  <dd>
    <a href="#search-disablebackoff">Search/DisableBackoff</a>
  </dd>
  <dd>
    <a href="#search-disableremovabledriveindexing">Search/DisableRemovableDriveIndexing</a>
  </dd>
  <dd>
    <a href="#search-donotusewebresults">Search/DoNotUseWebResults</a>
  </dd>
  <dd>
    <a href="#search-preventindexinglowdiskspacemb">Search/PreventIndexingLowDiskSpaceMB</a>
  </dd>
  <dd>
    <a href="#search-preventremotequeries">Search/PreventRemoteQueries</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="search-allowcloudsearch"></a>**Search/AllowCloudSearch**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
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
Allow search and Cortana to search cloud sources like OneDrive and SharePoint. This policy allows corporate administrators to control whether employees can turn off/on the search of these cloud sources. The default policy value is to allow employees access to the setting that controls search of cloud sources.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Allow Cloud Search*
-   GP name: *AllowCloudSearch*
-   GP element: *AllowCloudSearch_Dropdown*
-   GP path: *Windows Components/Search*
-   GP ADMX file name: *Search.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="search-allowcortanainaad"></a>**Search/AllowCortanaInAAD**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
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
This policy allows the cortana opt-in page during windows setup out of the box experience.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Allow Cloud Search*
-   GP name: *AllowCortanaInAAD*
-   GP element: *AllowCloudSearch_Dropdown*
-   GP path: *Windows Components/Search*
-   GP ADMX file name: *Search.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

This value is a simple boolean value, default false, that can be set by MDM policy to allow the Cortana Page in OOBE when logged in with an AAD account.

<!--/SupportedValues-->

<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="search-allowfindmyfiles"></a>**Search/AllowFindMyFiles**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
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
Controls if the user can configure search to Find My Files mode, which searches files in secondary hard drives and also outside of the user profile. Find My Files doesn't allow users to search files or locations to which they don't have access.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Allow Find My Files*
-   GP name: *AllowFindMyFiles*
-   GP path: *Computer Configuration/Administrative Templates/Windows Components/Search*
-   GP ADMX file name: *Search.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:  

- 1 (Default) - Find My Files feature can be toggled (still off by default), and the settings UI is present.
- 0 - Find My Files feature is turned off completely, and the settings UI is disabled.

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="search-allowindexingencryptedstoresoritems"></a>**Search/AllowIndexingEncryptedStoresOrItems**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
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
Allows or disallows the indexing of items. This switch is for the Windows Search Indexer, which controls whether it will index items that are encrypted, such as the Windows Information Protection (WIP) protected files.

When the policy is enabled, WIP protected items are indexed and the metadata about them are stored in an unencrypted location. The metadata includes things like file path and date modified.

When the policy is disabled, the WIP protected items aren't indexed and don't show up in the results in Cortana or file explorer. There may also be a performance impact on photos and Groove apps if there are many WIP-protected media files on the device.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Allow indexing of encrypted files*
-   GP name: *AllowIndexingEncryptedStoresOrItems*
-   GP path: *Windows Components/Search*
-   GP ADMX file name: *Search.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="search-allowsearchtouselocation"></a>**Search/AllowSearchToUseLocation**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
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
Specifies whether search can use location information.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Allow search and Cortana to use location*
-   GP name: *AllowSearchToUseLocation*
-   GP path: *Windows Components/Search*
-   GP ADMX file name: *Search.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="search-allowsearchhighlights"></a>**Search/AllowSearchHighlights**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
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
This policy controls whether search highlights are shown in the search box or in search home.

- If you enable this policy setting, then this setting turns on search highlights in the search box or in the search home.
- If you disable this policy setting, then this setting turns off search highlights in the search box or in the search home. 


<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Allow search and highlights*
-   GP name: *AllowSearchHighlights*
-   GP path: *Windows Components/Search*
-   GP ADMX file name: *Search.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values in Windows 10:
- Not Configured/ Enabled (default) – Enabling or not configuring this setting turns on search    highlights in the taskbar search box and in search home.

- Disabled – Disabling this setting turns off search highlights in the taskbar search box and in search home.

The following list shows the supported values in Windows 11:
- Not Configured/ Enabled (default) – Enabling or not configuring this setting turns on search highlights in the start menu search box and in search home.

- Disabled – Disabling this setting turns off search highlights in the start menu search box and in search home.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="search-allowstoringimagesfromvisionsearch"></a>**Search/AllowStoringImagesFromVisionSearch**  

<!--Description-->
This policy has been deprecated.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="search-allowusingdiacritics"></a>**Search/AllowUsingDiacritics**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
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
Allows the use of diacritics.


Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Allow use of diacritics*
-   GP name: *AllowUsingDiacritics*
-   GP path: *Windows Components/Search*
-   GP ADMX file name: *Search.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="search-allowwindowsindexer"></a>**Search/AllowWindowsIndexer**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
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
Allow Windows indexer. Value type is integer.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="search-alwaysuseautolangdetection"></a>**Search/AlwaysUseAutoLangDetection**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
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
Specifies whether to always use automatic language detection when indexing content and properties.


Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Always use automatic language detection when indexing content and properties*
-   GP name: *AlwaysUseAutoLangDetection*
-   GP path: *Windows Components/Search*
-   GP ADMX file name: *Search.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="search-disablebackoff"></a>**Search/DisableBackoff**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
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
If enabled, the search indexer backoff feature will be disabled. Indexing will continue at full speed even when system activity is high. If disabled, backoff logic will be used to throttle back indexing activity when system activity is high. Default is disabled.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Disable indexer backoff*
-   GP name: *DisableBackoff*
-   GP path: *Windows Components/Search*
-   GP ADMX file name: *Search.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Disable.
-   1 – Enable.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="search-disableremovabledriveindexing"></a>**Search/DisableRemovableDriveIndexing**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
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
This policy setting configures whether or not locations on removable drives can be added to libraries.

If you enable this policy setting, locations on removable drives can't be added to libraries. In addition, locations on removable drives can't be indexed.

If you disable or don't configure this policy setting, locations on removable drives can be added to libraries. In addition, locations on removable drives can be indexed.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Do not allow locations on removable drives to be added to libraries*
-   GP name: *DisableRemovableDriveIndexing*
-   GP path: *Windows Components/Search*
-   GP ADMX file name: *Search.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Disable.
-   1 – Enable.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="search-donotusewebresults"></a>**Search/DoNotUseWebResults**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
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
Don't search the web or display web results in Search, or show search highlights in the search box or in search home.

This policy setting allows you to control whether or not Search can perform queries on the web, if web results are displayed in Search, and if search highlights are shown in the search box and in search home.

- If you enable this policy setting, queries won't be performed on the web, web results won't be displayed when a user performs a query in Search, and search highlights won't be shown in the search box and in search home.

- If you disable this policy setting, queries will be performed on the web, web results will be displayed when a user performs a query in Search, and search highlights will be shown in the search box and in search home.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Don't search the web or display web results in Search*
-   GP name: *DoNotUseWebResults*
-   GP path: *Windows Components/Search*
-   GP ADMX file name: *Search.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - Not allowed. Queries won't be performed on the web, web results won't be displayed when a user performs a query in Search, and search highlights won't be shown in the search box and in search home.
- 1 (default) - Allowed. Queries will be performed on the web, web results will be displayed when a user performs a query in Search, and search highlights will be shown in the search box and in search home.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="search-preventindexinglowdiskspacemb"></a>**Search/PreventIndexingLowDiskSpaceMB**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
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
Enabling this policy prevents indexing from continuing after less than the specified amount of hard drive space is left on the same drive as the index location. Select between 0 and 1.

Enable this policy if computers in your environment have limited hard drive space.

When this policy is disabled or not configured, Windows Desktop Search automatically manages your index size.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Stop indexing in the event of limited hard drive space*
-   GP name: *StopIndexingOnLimitedHardDriveSpace*
-   GP path: *Windows Components/Search*
-   GP ADMX file name: *Search.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Disable.
-   1 (default) – Enable.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="search-preventremotequeries"></a>**Search/PreventRemoteQueries**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Business|Yes|Yes|
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
If enabled, clients will be unable to query this computer's index remotely. Thus, when they're browsing network shares that are stored on this computer, they won't search them using the index. If disabled, client search requests will use this computer's index..

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Prevent clients from querying the index remotely*
-   GP name: *PreventRemoteQueries*
-   GP path: *Windows Components/Search*
-   GP ADMX file name: *Search.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Disable.
-   1 (default) – Enable.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>


<!--/Policies-->

