---
title: Policy CSP - AppVirtualization
description: Policy CSP - AppVirtualization
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
---

# Policy CSP - AppVirtualization

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

<!--StartPolicies-->
<hr/>

## AppVirtualization policies  

<!--StartPolicy-->
<a href="" id="appvirtualization-allowappvclient"></a>**AppVirtualization/AllowAppVClient**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
This policy setting allows you to enable or disable Microsoft Application Virtualization (App-V) feature. Reboot is needed for disable to take effect.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Enable App-V Client*
-   GP name: *EnableAppV*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-allowdynamicvirtualization"></a>**AppVirtualization/AllowDynamicVirtualization**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Enables Dynamic Virtualization of supported shell extensions, browser helper objects, and ActiveX controls.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Enable Dynamic Virtualization*
-   GP name: *Virtualization_JITVEnable*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-allowpackagecleanup"></a>**AppVirtualization/AllowPackageCleanup**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Enables automatic cleanup of appv packages that were added after Windows10 anniversary release.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Enable automatic cleanup of unused appv packages*
-   GP name: *PackageManagement_AutoCleanupEnable*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-allowpackagescripts"></a>**AppVirtualization/AllowPackageScripts**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Enables scripts defined in the package manifest of configuration files that should run.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Enable Package Scripts*
-   GP name: *Scripting_Enable_Package_Scripts*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-allowpublishingrefreshux"></a>**AppVirtualization/AllowPublishingRefreshUX**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Enables a UX to display to the user when a publishing refresh is performed on the client.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Enable Publishing Refresh UX*
-   GP name: *Enable_Publishing_Refresh_UX*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-allowreportingserver"></a>**AppVirtualization/AllowReportingServer**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Reporting Server URL: Displays the URL of reporting server.

Reporting Time: When the client data should be reported to the server. Acceptable range is 0~23, corresponding to the 24 hours in a day. A good practice is, don't set this time to a busy hour, e.g. 9AM.

Delay reporting for the random minutes: The maximum minutes of random delay on top of the reporting time. For a busy system, the random delay will help reduce the server load.

Repeat reporting for every (days): The periodical interval in days for sending the reporting data.

Data Cache Limit: This value specifies the maximum size in megabytes (MB) of the XML cache for storing reporting information. The default value is 20 MB. The size applies to the cache in memory. When the limit is reached, the log file will roll over. When a new record is to be added (bottom of the list), one or more of the oldest records (top of the list) will be deleted to make room. A warning will be logged to the Client log and the event log the first time this occurs, and will not be logged again until after the cache has been successfully cleared on transmission and the log has filled up again.

Data Block Size: This value specifies the maximum size in bytes to transmit to the server at once on a reporting upload, to avoid permanent transmission failures when the log has reached a significant size. The  default value is 65536. When transmitting report data to the server, one block at a time of application records that is less than or equal to the block size in bytes of XML data will be removed from the cache and sent to the server. Each block will have the general Client data and global package list data prepended, and these will not factor into the block size calculations; the potential exists for an extremely large package list to result in transmission failures over low bandwidth or unreliable connections.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Reporting Server*
-   GP name: *Reporting_Server_Policy*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-allowroamingfileexclusions"></a>**AppVirtualization/AllowRoamingFileExclusions**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Specifies the file paths relative to %userprofile% that do not roam with a user's profile. Example usage: /FILEEXCLUSIONLIST='desktop;my pictures'.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Roaming File Exclusions*
-   GP name: *Integration_Roaming_File_Exclusions*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-allowroamingregistryexclusions"></a>**AppVirtualization/AllowRoamingRegistryExclusions**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Specifies the registry paths that do not roam with a user profile. Example usage: /REGISTRYEXCLUSIONLIST=software\classes;software\clients.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Roaming Registry Exclusions*
-   GP name: *Integration_Roaming_Registry_Exclusions*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-allowstreamingautoload"></a>**AppVirtualization/AllowStreamingAutoload**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Specifies how new packages should be loaded automatically by App-V on a specific computer.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Specify what to load in background (aka AutoLoad)*
-   GP name: *Steaming_Autoload*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-clientcoexistenceallowmigrationmode"></a>**AppVirtualization/ClientCoexistenceAllowMigrationmode**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Migration mode allows the App-V client to modify shortcuts and FTA's for packages created using a previous version of App-V.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Enable Migration Mode*
-   GP name: *Client_Coexistence_Enable_Migration_mode*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-integrationallowrootglobal"></a>**AppVirtualization/IntegrationAllowRootGlobal**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Specifies the location where symbolic links are created to the current version of a per-user published package. Shortcuts, file type associations, etc. are created pointing to this path. If empty, symbolic links are not used during publishing. Example: %localappdata%\Microsoft\AppV\Client\Integration.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Integration Root User*
-   GP name: *Integration_Root_User*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-integrationallowrootuser"></a>**AppVirtualization/IntegrationAllowRootUser**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Specifies the location where symbolic links are created to the current version of a globally published package. Shortcuts, file type associations, etc. are created pointing to this path. If empty, symbolic links are not used during publishing. Example: %allusersprofile%\Microsoft\AppV\Client\Integration.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Integration Root Global*
-   GP name: *Integration_Root_Global*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-publishingallowserver1"></a>**AppVirtualization/PublishingAllowServer1**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Publishing Server Display Name: Displays the name of publishing server.

Publishing Server URL: Displays the URL of publishing server.

Global Publishing Refresh: Enables global publishing refresh (Boolean).

Global Publishing Refresh On Logon: Triggers a global publishing refresh on logon (Boolean).

Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.

Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

User Publishing Refresh: Enables user publishing refresh (Boolean).

User Publishing Refresh On Logon: Triggers a user publishing refresh on logon (Boolean).

User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.

User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Publishing Server 1 Settings*
-   GP name: *Publishing_Server1_Policy*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-publishingallowserver2"></a>**AppVirtualization/PublishingAllowServer2**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Publishing Server Display Name: Displays the name of publishing server.

Publishing Server URL: Displays the URL of publishing server.

Global Publishing Refresh: Enables global publishing refresh (Boolean).

Global Publishing Refresh On Logon: Triggers a global publishing refresh on logon (Boolean).

Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.

Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

User Publishing Refresh: Enables user publishing refresh (Boolean).

User Publishing Refresh On Logon: Triggers a user publishing refresh on logon (Boolean).

User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.

User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Publishing Server 2 Settings*
-   GP name: *Publishing_Server2_Policy*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-publishingallowserver3"></a>**AppVirtualization/PublishingAllowServer3**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Publishing Server Display Name: Displays the name of publishing server.

Publishing Server URL: Displays the URL of publishing server.

Global Publishing Refresh: Enables global publishing refresh (Boolean).

Global Publishing Refresh On Logon: Triggers a global publishing refresh on logon (Boolean).

Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.

Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

User Publishing Refresh: Enables user publishing refresh (Boolean).

User Publishing Refresh On Logon: Triggers a user publishing refresh on logon (Boolean).

User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.

User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Publishing Server 3 Settings*
-   GP name: *Publishing_Server3_Policy*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-publishingallowserver4"></a>**AppVirtualization/PublishingAllowServer4**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Publishing Server Display Name: Displays the name of publishing server.

Publishing Server URL: Displays the URL of publishing server.

Global Publishing Refresh: Enables global publishing refresh (Boolean).

Global Publishing Refresh On Logon: Triggers a global publishing refresh on logon (Boolean).

Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.

Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

User Publishing Refresh: Enables user publishing refresh (Boolean).

User Publishing Refresh On Logon: Triggers a user publishing refresh on logon (Boolean).

User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.

User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Publishing Server 4 Settings*
-   GP name: *Publishing_Server4_Policy*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-publishingallowserver5"></a>**AppVirtualization/PublishingAllowServer5**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Publishing Server Display Name: Displays the name of publishing server.

Publishing Server URL: Displays the URL of publishing server.

Global Publishing Refresh: Enables global publishing refresh (Boolean).

Global Publishing Refresh On Logon: Triggers a global publishing refresh on logon (Boolean).

Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.

Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

User Publishing Refresh: Enables user publishing refresh (Boolean).

User Publishing Refresh On Logon: Triggers a user publishing refresh on logon (Boolean).

User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.

User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Publishing Server 5 Settings*
-   GP name: *Publishing_Server5_Policy*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-streamingallowcertificatefilterforclient_ssl"></a>**AppVirtualization/StreamingAllowCertificateFilterForClient_SSL**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Specifies the path to a valid certificate in the certificate store.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Certificate Filter For Client SSL*
-   GP name: *Streaming_Certificate_Filter_For_Client_SSL*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-streamingallowhighcostlaunch"></a>**AppVirtualization/StreamingAllowHighCostLaunch**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
This setting controls whether virtualized applications are launched on Windows 8 machines connected via a metered network connection (e.g. 4G).

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Allow First Time Application Launches if on a High Cost Windows 8 Metered Connection*
-   GP name: *Streaming_Allow_High_Cost_Launch*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-streamingallowlocationprovider"></a>**AppVirtualization/StreamingAllowLocationProvider**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Specifies the CLSID for a compatible implementation of the IAppvPackageLocationProvider interface.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Location Provider*
-   GP name: *Streaming_Location_Provider*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-streamingallowpackageinstallationroot"></a>**AppVirtualization/StreamingAllowPackageInstallationRoot**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Specifies directory where all new applications and updates will be installed.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Package Installation Root*
-   GP name: *Streaming_Package_Installation_Root*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-streamingallowpackagesourceroot"></a>**AppVirtualization/StreamingAllowPackageSourceRoot**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Overrides source location for downloading package content.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Package Source Root*
-   GP name: *Streaming_Package_Source_Root*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-streamingallowreestablishmentinterval"></a>**AppVirtualization/StreamingAllowReestablishmentInterval**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Specifies the number of seconds between attempts to reestablish a dropped session.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Reestablishment Interval*
-   GP name: *Streaming_Reestablishment_Interval*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-streamingallowreestablishmentretries"></a>**AppVirtualization/StreamingAllowReestablishmentRetries**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Specifies the number of times to retry a dropped session.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Reestablishment Retries*
-   GP name: *Streaming_Reestablishment_Retries*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-streamingsharedcontentstoremode"></a>**AppVirtualization/StreamingSharedContentStoreMode**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Specifies that streamed package contents will be not be saved to the local hard disk.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Shared Content Store (SCS) mode*
-   GP name: *Streaming_Shared_Content_Store_Mode*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-streamingsupportbranchcache"></a>**AppVirtualization/StreamingSupportBranchCache**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
If enabled, the App-V client will support BrancheCache compatible HTTP streaming. If BranchCache support is not desired, this should be disabled. The client can then apply HTTP optimizations which are incompatible with BranchCache

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Enable Support for BranchCache*
-   GP name: *Streaming_Support_Branch_Cache*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-streamingverifycertificaterevocationlist"></a>**AppVirtualization/StreamingVerifyCertificateRevocationList**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Verifies Server certificate revocation status before streaming using HTTPS.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Verify certificate revocation list*
-   GP name: *Streaming_Verify_Certificate_Revocation_List*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="appvirtualization-virtualcomponentsallowlist"></a>**AppVirtualization/VirtualComponentsAllowList**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Virtual Component Process Allow List*
-   GP name: *Virtualization_JITVAllowList*
-   GP ADMX file name: *appv.admx*

<!--EndADMX-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

