---
title: Policy CSP - AppVirtualization
description: Learn how the Policy CSP - AppVirtualization setting allows you to enable or disable Microsoft Application Virtualization (App-V) feature.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - AppVirtualization

> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).


<hr/>

<!--Policies-->
## AppVirtualization policies

<dl>
  <dd>
    <a href="#appvirtualization-allowappvclient">AppVirtualization/AllowAppVClient</a>
  </dd>
  <dd>
    <a href="#appvirtualization-allowdynamicvirtualization">AppVirtualization/AllowDynamicVirtualization</a>
  </dd>
  <dd>
    <a href="#appvirtualization-allowpackagecleanup">AppVirtualization/AllowPackageCleanup</a>
  </dd>
  <dd>
    <a href="#appvirtualization-allowpackagescripts">AppVirtualization/AllowPackageScripts</a>
  </dd>
  <dd>
    <a href="#appvirtualization-allowpublishingrefreshux">AppVirtualization/AllowPublishingRefreshUX</a>
  </dd>
  <dd>
    <a href="#appvirtualization-allowreportingserver">AppVirtualization/AllowReportingServer</a>
  </dd>
  <dd>
    <a href="#appvirtualization-allowroamingfileexclusions">AppVirtualization/AllowRoamingFileExclusions</a>
  </dd>
  <dd>
    <a href="#appvirtualization-allowroamingregistryexclusions">AppVirtualization/AllowRoamingRegistryExclusions</a>
  </dd>
  <dd>
    <a href="#appvirtualization-allowstreamingautoload">AppVirtualization/AllowStreamingAutoload</a>
  </dd>
  <dd>
    <a href="#appvirtualization-clientcoexistenceallowmigrationmode">AppVirtualization/ClientCoexistenceAllowMigrationmode</a>
  </dd>
  <dd>
    <a href="#appvirtualization-integrationallowrootglobal">AppVirtualization/IntegrationAllowRootGlobal</a>
  </dd>
  <dd>
    <a href="#appvirtualization-integrationallowrootuser">AppVirtualization/IntegrationAllowRootUser</a>
  </dd>
  <dd>
    <a href="#appvirtualization-publishingallowserver1">AppVirtualization/PublishingAllowServer1</a>
  </dd>
  <dd>
    <a href="#appvirtualization-publishingallowserver2">AppVirtualization/PublishingAllowServer2</a>
  </dd>
  <dd>
    <a href="#appvirtualization-publishingallowserver3">AppVirtualization/PublishingAllowServer3</a>
  </dd>
  <dd>
    <a href="#appvirtualization-publishingallowserver4">AppVirtualization/PublishingAllowServer4</a>
  </dd>
  <dd>
    <a href="#appvirtualization-publishingallowserver5">AppVirtualization/PublishingAllowServer5</a>
  </dd>
  <dd>
    <a href="#appvirtualization-streamingallowcertificatefilterforclient-ssl">AppVirtualization/StreamingAllowCertificateFilterForClient_SSL</a>
  </dd>
  <dd>
    <a href="#appvirtualization-streamingallowhighcostlaunch">AppVirtualization/StreamingAllowHighCostLaunch</a>
  </dd>
  <dd>
    <a href="#appvirtualization-streamingallowlocationprovider">AppVirtualization/StreamingAllowLocationProvider</a>
  </dd>
  <dd>
    <a href="#appvirtualization-streamingallowpackageinstallationroot">AppVirtualization/StreamingAllowPackageInstallationRoot</a>
  </dd>
  <dd>
    <a href="#appvirtualization-streamingallowpackagesourceroot">AppVirtualization/StreamingAllowPackageSourceRoot</a>
  </dd>
  <dd>
    <a href="#appvirtualization-streamingallowreestablishmentinterval">AppVirtualization/StreamingAllowReestablishmentInterval</a>
  </dd>
  <dd>
    <a href="#appvirtualization-streamingallowreestablishmentretries">AppVirtualization/StreamingAllowReestablishmentRetries</a>
  </dd>
  <dd>
    <a href="#appvirtualization-streamingsharedcontentstoremode">AppVirtualization/StreamingSharedContentStoreMode</a>
  </dd>
  <dd>
    <a href="#appvirtualization-streamingsupportbranchcache">AppVirtualization/StreamingSupportBranchCache</a>
  </dd>
  <dd>
    <a href="#appvirtualization-streamingverifycertificaterevocationlist">AppVirtualization/StreamingVerifyCertificateRevocationList</a>
  </dd>
  <dd>
    <a href="#appvirtualization-virtualcomponentsallowlist">AppVirtualization/VirtualComponentsAllowList</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="appvirtualization-allowappvclient"></a>**AppVirtualization/AllowAppVClient**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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
This policy setting allows you to enable or disable Microsoft Application Virtualization (App-V) feature. Reboot is needed for disable to take effect.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable App-V Client*
-   GP name: *EnableAppV*
-   GP path: *System/App-V*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-allowdynamicvirtualization"></a>**AppVirtualization/AllowDynamicVirtualization**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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
This policy enables Dynamic Virtualization of supported shell extensions, browser helper objects, and ActiveX controls.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable Dynamic Virtualization*
-   GP name: *Virtualization_JITVEnable*
-   GP path: *System/App-V/Virtualization*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-allowpackagecleanup"></a>**AppVirtualization/AllowPackageCleanup**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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
Enables automatic cleanup of App-v packages that were added after Windows 10 anniversary release.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable automatic cleanup of unused appv packages*
-   GP name: *PackageManagement_AutoCleanupEnable*
-   GP path: *System/App-V/PackageManagement*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-allowpackagescripts"></a>**AppVirtualization/AllowPackageScripts**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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
This policy enables scripts defined in the package manifest of configuration files that should run.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable Package Scripts*
-   GP name: *Scripting_Enable_Package_Scripts*
-   GP path: *System/App-V/Scripting*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-allowpublishingrefreshux"></a>**AppVirtualization/AllowPublishingRefreshUX**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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
This policy enables a UX to display to the user when a publishing refresh is performed on the client.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable Publishing Refresh UX*
-   GP name: *Enable_Publishing_Refresh_UX*
-   GP path: *System/App-V/Publishing*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-allowreportingserver"></a>**AppVirtualization/AllowReportingServer**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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
Reporting Server URL: Displays the URL of reporting server.

Reporting Time: When the client data should be reported to the server. Acceptable range is 0 ~ 23, corresponding to the 24 hours in a day. A good practice is, don't set this time to a busy hour, for example, 9AM.

Delay reporting for the random minutes: The maximum minutes of random delay on top of the reporting time. For a busy system, the random delay will help reduce the server load.

Repeat reporting for every (days): The periodical interval in days for sending the reporting data.

Data Cache Limit: This value specifies the maximum size in megabytes (MB) of the XML cache for storing reporting information. The default value is 20 MB. The size applies to the cache in memory. When the limit is reached, the log file will roll over. When a new record is to be added (bottom of the list), one or more of the oldest records (top of the list) will be deleted to make room. A warning will be logged to the Client log and the event log the first time this deletion occurs, and won't be logged again until after the cache has been successfully cleared on transmission and the log has filled up again.

Data Block Size: This value specifies the maximum size in bytes to transmit to the server at once on a reporting upload, to avoid permanent transmission failures when the log has reached a significant size. The  default value is 65536. When report data is being transmitted to the server, one block at a time of application records that is less than or equal to the block size in bytes of XML data will be removed from the cache and sent to the server. Each block will have the general Client data and global package list data prepended, and these components won't factor into the block size calculations; the potential exists for a large package list to result in transmission failures over low bandwidth or unreliable connections.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Reporting Server*
-   GP name: *Reporting_Server_Policy*
-   GP path: *System/App-V/Reporting*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-allowroamingfileexclusions"></a>**AppVirtualization/AllowRoamingFileExclusions**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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

This policy specifies the file paths relative to %userprofile% that do not roam with a user's profile. Example usage: /FILEEXCLUSIONLIST='desktop;my pictures'.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Roaming File Exclusions*
-   GP name: *Integration_Roaming_File_Exclusions*
-   GP path: *System/App-V/Integration*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-allowroamingregistryexclusions"></a>**AppVirtualization/AllowRoamingRegistryExclusions**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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

This policy specifies the registry paths that do not roam with a user profile. Example usage: /REGISTRYEXCLUSIONLIST=software\classes;software\clients.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Roaming Registry Exclusions*
-   GP name: *Integration_Roaming_Registry_Exclusions*
-   GP path: *System/App-V/Integration*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-allowstreamingautoload"></a>**AppVirtualization/AllowStreamingAutoload**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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
This policy specifies how new packages should be loaded automatically by App-V on a specific computer.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify what to load in background (also known as AutoLoad)*
-   GP name: *Steaming_Autoload*
-   GP path: *System/App-V/Streaming*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-clientcoexistenceallowmigrationmode"></a>**AppVirtualization/ClientCoexistenceAllowMigrationmode**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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
Migration mode allows the App-V client to modify shortcuts and FTAs for packages created using a previous version of App-V.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable Migration Mode*
-   GP name: *Client_Coexistence_Enable_Migration_mode*
-   GP path: *System/App-V/Client Coexistence*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-integrationallowrootglobal"></a>**AppVirtualization/IntegrationAllowRootGlobal**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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

This policy specifies the location where symbolic links are created to the current version of a per-user published package. Shortcuts, file type associations, etc. are created pointing to this path. If empty, symbolic links are not used during publishing. Example: %localappdata%\Microsoft\AppV\Client\Integration.


<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Integration Root User*
-   GP name: *Integration_Root_User*
-   GP path: *System/App-V/Integration*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-integrationallowrootuser"></a>**AppVirtualization/IntegrationAllowRootUser**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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

This policy specifies the location where symbolic links are created to the current version of a globally published package. Shortcuts, file type associations, etc. are created pointing to this path. If empty, symbolic links are not used during publishing. Example: %allusersprofile%\Microsoft\AppV\Client\Integration.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Integration Root Global*
-   GP name: *Integration_Root_Global*
-   GP path: *System/App-V/Integration*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-publishingallowserver1"></a>**AppVirtualization/PublishingAllowServer1**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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
Publishing Server Display Name: Displays the name of publishing server.

Publishing Server URL: Displays the URL of publishing server.

Global Publishing Refresh: Enables global publishing refresh (Boolean).

Global Publishing Refresh On Logon: Triggers a global publishing refresh on a sign in(Boolean).

Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.

Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

User Publishing Refresh: Enables user publishing refresh (Boolean).

User Publishing Refresh On Logon: Triggers a user publishing refresh on a sign in (Boolean).

User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.

User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Publishing Server 1 Settings*
-   GP name: *Publishing_Server1_Policy*
-   GP path: *System/App-V/Publishing*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-publishingallowserver2"></a>**AppVirtualization/PublishingAllowServer2**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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
Publishing Server Display Name: Displays the name of publishing server.

Publishing Server URL: Displays the URL of publishing server.

Global Publishing Refresh: Enables global publishing refresh (Boolean).

Global Publishing Refresh On Logon: Triggers a global publishing refresh on a sign in (Boolean).

Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.

Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

User Publishing Refresh: Enables user publishing refresh (Boolean).

User Publishing Refresh On Logon: Triggers a user publishing refresh on la sign in (Boolean).

User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.

User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Publishing Server 2 Settings*
-   GP name: *Publishing_Server2_Policy*
-   GP path: *System/App-V/Publishing*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-publishingallowserver3"></a>**AppVirtualization/PublishingAllowServer3**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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
Publishing Server Display Name: Displays the name of publishing server.

Publishing Server URL: Displays the URL of publishing server.

Global Publishing Refresh: Enables global publishing refresh (Boolean).

Global Publishing Refresh On Logon: Triggers a global publishing refresh on a sign in (Boolean).

Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.

Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

User Publishing Refresh: Enables user publishing refresh (Boolean).

User Publishing Refresh On Logon: Triggers a user publishing refresh on a sign in (Boolean).

User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.

User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Publishing Server 3 Settings*
-   GP name: *Publishing_Server3_Policy*
-   GP path: *System/App-V/Publishing*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-publishingallowserver4"></a>**AppVirtualization/PublishingAllowServer4**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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
Publishing Server Display Name: Displays the name of publishing server.

Publishing Server URL: Displays the URL of publishing server.

Global Publishing Refresh: Enables global publishing refresh (Boolean).

Global Publishing Refresh On Logon: Triggers a global publishing refresh on a sign in (Boolean).

Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.

Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

User Publishing Refresh: Enables user publishing refresh (Boolean).

User Publishing Refresh On Logon: Triggers a user publishing refresh on a sign in (Boolean).

User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.

User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Publishing Server 4 Settings*
-   GP name: *Publishing_Server4_Policy*
-   GP path: *System/App-V/Publishing*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-publishingallowserver5"></a>**AppVirtualization/PublishingAllowServer5**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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
Publishing Server Display Name: Displays the name of publishing server.

Publishing Server URL: Displays the URL of publishing server.

Global Publishing Refresh: Enables global publishing refresh (Boolean).

Global Publishing Refresh On Logon: Triggers a global publishing refresh on a sign in (Boolean).

Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.

Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

User Publishing Refresh: Enables user publishing refresh (Boolean).

User Publishing Refresh On Logon: Triggers a user publishing refresh on a sign in (Boolean).

User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.

User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Publishing Server 5 Settings*
-   GP name: *Publishing_Server5_Policy*
-   GP path: *System/App-V/Publishing*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-streamingallowcertificatefilterforclient-ssl"></a>**AppVirtualization/StreamingAllowCertificateFilterForClient_SSL**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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
This policy specifies the path to a valid certificate in the certificate store.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Certificate Filter For Client SSL*
-   GP name: *Streaming_Certificate_Filter_For_Client_SSL*
-   GP path: *System/App-V/Streaming*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-streamingallowhighcostlaunch"></a>**AppVirtualization/StreamingAllowHighCostLaunch**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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
This setting controls whether virtualized applications are launched on Windows 8 machines connected via a metered network connection (for example, 4G).

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow First Time Application Launches if on a High Cost Windows 8 Metered Connection*
-   GP name: *Streaming_Allow_High_Cost_Launch*
-   GP path: *System/App-V/Streaming*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-streamingallowlocationprovider"></a>**AppVirtualization/StreamingAllowLocationProvider**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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
This policy specifies the CLSID for a compatible implementation of the AppvPackageLocationProvider interface.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Location Provider*
-   GP name: *Streaming_Location_Provider*
-   GP path: *System/App-V/Streaming*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-streamingallowpackageinstallationroot"></a>**AppVirtualization/StreamingAllowPackageInstallationRoot**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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
This policy specifies directory where all new applications and updates will be installed.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Package Installation Root*
-   GP name: *Streaming_Package_Installation_Root*
-   GP path: *System/App-V/Streaming*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-streamingallowpackagesourceroot"></a>**AppVirtualization/StreamingAllowPackageSourceRoot**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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
This policy overrides source location for downloading package content.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Package Source Root*
-   GP name: *Streaming_Package_Source_Root*
-   GP path: *System/App-V/Streaming*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-streamingallowreestablishmentinterval"></a>**AppVirtualization/StreamingAllowReestablishmentInterval**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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
This policy specifies the number of seconds between attempts to reestablish a dropped session.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Reestablishment Interval*
-   GP name: *Streaming_Reestablishment_Interval*
-   GP path: *System/App-V/Streaming*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-streamingallowreestablishmentretries"></a>**AppVirtualization/StreamingAllowReestablishmentRetries**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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
This policy specifies the number of times to retry a dropped session.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Reestablishment Retries*
-   GP name: *Streaming_Reestablishment_Retries*
-   GP path: *System/App-V/Streaming*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-streamingsharedcontentstoremode"></a>**AppVirtualization/StreamingSharedContentStoreMode**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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

This policy specifies that streamed package contents will be not be saved to the local hard disk.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Shared Content Store (SCS) mode*
-   GP name: *Streaming_Shared_Content_Store_Mode*
-   GP path: *System/App-V/Streaming*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-streamingsupportbranchcache"></a>**AppVirtualization/StreamingSupportBranchCache**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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
If enabled, the App-V client will support BrancheCache compatible HTTP streaming. If BranchCache support isn't desired, this setting should be disabled. The client can then apply HTTP optimizations that are incompatible with BranchCache.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable Support for BranchCache*
-   GP name: *Streaming_Support_Branch_Cache*
-   GP path: *System/App-V/Streaming*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-streamingverifycertificaterevocationlist"></a>**AppVirtualization/StreamingVerifyCertificateRevocationList**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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
Verifies Server certificate revocation status before streaming using HTTPS.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Verify certificate revocation list*
-   GP name: *Streaming_Verify_Certificate_Revocation_List*
-   GP path: *System/App-V/Streaming*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="appvirtualization-virtualcomponentsallowlist"></a>**AppVirtualization/VirtualComponentsAllowList**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
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
This policy specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc.). Only processes whose full path matches one of these items can use virtual components.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Virtual Component Process Allow List*
-   GP name: *Virtualization_JITVAllowList*
-   GP path: *System/App-V/Virtualization*
-   GP ADMX file name: *appv.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

