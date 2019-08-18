---
title: About Client Configuration Settings
description: About Client Configuration Settings
author: manikadhiman
ms.assetid: cc7ae28c-b2ac-4f68-b992-5ccdbd5316a4
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# About Client Configuration Settings


The Microsoft Application Virtualization (App-V) 5.0 client stores its configuration in the registry. You can gather some useful information about the client if you understand the format of data in the registry. You can also configure many client actions by changing registry entries. This topic lists the App-V 5.0 Client configuration settings and explains their uses. You can use PowerShell to modify the client configuration settings. For more information about using PowerShell and App-V 5.0 see [Administering App-V by Using PowerShell](administering-app-v-by-using-powershell.md).

## <a href="" id="---------app-v-5-0-client-configuration-settings"></a> App-V 5.0 Client Configuration Settings


The following table displays information about the App-V 5.0 client configuration settings:

<table style="width:100%;">
<colgroup>
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting Name</th>
<th align="left">Setup Flag</th>
<th align="left">Description</th>
<th align="left">Setting Options</th>
<th align="left">Registry Key Value</th>
<th align="left">Disabled Policy State Keys and Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>PackageInstallationRoot</p></td>
<td align="left"><p>PACKAGEINSTALLATIONROOT</p></td>
<td align="left"><p>Specifies directory where all new applications and updates will be installed.</p></td>
<td align="left"><p>String</p></td>
<td align="left"><p>Streaming\PackageInstallationRoot</p></td>
<td align="left"><p>Policy value not written (same as Not Configured)</p></td>
</tr>
<tr class="even">
<td align="left"><p>PackageSourceRoot</p></td>
<td align="left"><p>PACKAGESOURCEROOT</p></td>
<td align="left"><p>Overrides source location for downloading package content.</p></td>
<td align="left"><p>String</p></td>
<td align="left"><p>Streaming\PackageSourceRoot</p></td>
<td align="left"><p>Policy value not written (same as Not Configured)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>AllowHighCostLaunch</p></td>
<td align="left"><p>Not available.</p></td>
<td align="left"><p>This setting controls whether virtualized applications are launched on Windows 8 machines connected via a metered network connection (For example, 4G).</p></td>
<td align="left"><p>True (enabled); False (Disabled state)</p></td>
<td align="left"><p>Streaming\AllowHighCostLaunch</p></td>
<td align="left"><p>0</p></td>
</tr>
<tr class="even">
<td align="left"><p>ReestablishmentRetries</p></td>
<td align="left"><p>Not available.</p></td>
<td align="left"><p>Specifies the number of times to retry a dropped session.</p></td>
<td align="left"><p>Integer (0-99)</p></td>
<td align="left"><p>Streaming\ReestablishmentRetries</p></td>
<td align="left"><p>Policy value not written (same as Not Configured)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>ReestablishmentInterval</p></td>
<td align="left"><p>Not available.</p></td>
<td align="left"><p>Specifies the number of seconds between attempts to reestablish a dropped session.</p></td>
<td align="left"><p>Integer (0-3600)</p></td>
<td align="left"><p>Streaming\ReestablishmentInterval</p></td>
<td align="left"><p>Policy value not written (same as Not Configured)</p></td>
</tr>
<tr class="even">
<td align="left"><p>AutoLoad</p></td>
<td align="left"><p>AUTOLOAD</p></td>
<td align="left"><p>Specifies how new packages should be loaded automatically by App-V on a specific computer.</p></td>
<td align="left"><p>(0x0) None; (0x1) Previously used; (0x2) All</p></td>
<td align="left"><p>Streaming\AutoLoad</p></td>
<td align="left"><p>Policy value not written (same as Not Configured)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>LocationProvider</p></td>
<td align="left"><p>Not available.</p></td>
<td align="left"><p>Specifies the CLSID for a compatible implementation of the IAppvPackageLocationProvider interface.</p></td>
<td align="left"><p>String</p></td>
<td align="left"><p>Streaming\LocationProvider</p></td>
<td align="left"><p>Policy value not written (same as Not Configured)</p></td>
</tr>
<tr class="even">
<td align="left"><p>CertFilterForClientSsl</p></td>
<td align="left"><p>Not available.</p></td>
<td align="left"><p>Specifies the path to a valid certificate in the certificate store.</p></td>
<td align="left"><p>String</p></td>
<td align="left"><p>Streaming\CertFilterForClientSsl</p></td>
<td align="left"><p>Policy value not written (same as Not Configured)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>VerifyCertificateRevocationList</p></td>
<td align="left"><p>Not available.</p></td>
<td align="left"><p>Verifies Server certificate revocation status before steaming using HTTPS.</p></td>
<td align="left"><p>True(enabled); False(Disabled state)</p></td>
<td align="left"><p>Streaming\VerifyCertificateRevocationList</p></td>
<td align="left"><p>0</p></td>
</tr>
<tr class="even">
<td align="left"><p>SharedContentStoreMode</p></td>
<td align="left"><p>SHAREDCONTENTSTOREMODE</p></td>
<td align="left"><p>Specifies that streamed package contents will be not be saved to the local hard disk.</p></td>
<td align="left"><p>True(enabled); False(Disabled state)</p></td>
<td align="left"><p>Streaming\SharedContentStoreMode</p></td>
<td align="left"><p>0</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Name</p>
<div class="alert">
<strong>Note</strong><br/><p>This setting cannot be modified using the <strong>set-AppvclientConfiguration</strong> cmdLet. You must use the <strong>Set-AppvPublishingServer</strong> cmdlet.</p>
</div>
<div>

</div></td>
<td align="left"><p>PUBLISHINGSERVERNAME</p></td>
<td align="left"><p>Displays the name of publishing server.</p></td>
<td align="left"><p>String</p></td>
<td align="left"><p>Publishing\Servers{serverId}\FriendlyName</p></td>
<td align="left"><p>Policy value not written (same as Not Configured)</p></td>
</tr>
<tr class="even">
<td align="left"><p>URL</p>
<div class="alert">
<strong>Note</strong><br/><p>This setting cannot be modified using the <strong>set-AppvclientConfiguration</strong> cmdLet. You must use the <strong>Set-AppvPublishingServer</strong> cmdlet.</p>
</div>
<div>

</div></td>
<td align="left"><p>PUBLISHINGSERVERURL</p></td>
<td align="left"><p>Displays the URL of publishing server.</p></td>
<td align="left"><p>String</p></td>
<td align="left"><p>Publishing\Servers{serverId}\URL</p></td>
<td align="left"><p>Policy value not written (same as Not Configured)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>GlobalRefreshEnabled</p>
<div class="alert">
<strong>Note</strong><br/><p>This setting cannot be modified using the <strong>set-AppvclientConfiguration</strong> cmdLet. You must use the <strong>Set-AppvPublishingServer</strong> cmdlet.</p>
</div>
<div>

</div></td>
<td align="left"><p>GLOBALREFRESHENABLED</p></td>
<td align="left"><p>Enables global publishing refresh (Boolean)</p></td>
<td align="left"><p>True(enabled); False(Disabled state)</p></td>
<td align="left"><p>Publishing\Servers{serverId}\GlobalEnabled</p></td>
<td align="left"><p>False</p></td>
</tr>
<tr class="even">
<td align="left"><p>GlobalRefreshOnLogon</p>
<div class="alert">
<strong>Note</strong><br/><p>This setting cannot be modified using the <strong>set-AppvclientConfiguration</strong> cmdLet. You must use the <strong>Set-AppvPublishingServer</strong> cmdlet.</p>
</div>
<div>

</div></td>
<td align="left"><p>GLOBALREFRESHONLOGON</p></td>
<td align="left"><p>Triggers a global publishing refresh on logon. ( Boolean)</p></td>
<td align="left"><p>True(enabled); False(Disabled state)</p></td>
<td align="left"><p>Publishing\Servers{serverId}\GlobalLogonRefresh</p></td>
<td align="left"><p>False</p></td>
</tr>
<tr class="odd">
<td align="left"><p>GlobalRefreshInterval</p>
<div class="alert">
<strong>Note</strong><br/><p>This setting cannot be modified using the <strong>set-AppvclientConfiguration</strong> cmdLet. You must use the <strong>Set-AppvPublishingServer</strong> cmdlet.</p>
</div>
<div>

</div></td>
<td align="left"><p>GLOBALREFRESHINTERVAL  </p></td>
<td align="left"><p>Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.</p></td>
<td align="left"><p>Integer (0-744</p></td>
<td align="left"><p>Publishing\Servers{serverId}\GlobalPeriodicRefreshInterval</p></td>
<td align="left"><p>0</p></td>
</tr>
<tr class="even">
<td align="left"><p>GlobalRefreshIntervalUnit</p>
<div class="alert">
<strong>Note</strong><br/><p>This setting cannot be modified using the <strong>set-AppvclientConfiguration</strong> cmdLet. You must use the <strong>Set-AppvPublishingServer</strong> cmdlet.</p>
</div>
<div>

</div></td>
<td align="left"><p>GLOBALREFRESHINTERVALUNI</p></td>
<td align="left"><p>Specifies the interval unit (Hour 0-23, Day 0-31). </p></td>
<td align="left"><p>0 for hour, 1 for day</p></td>
<td align="left"><p>Publishing\Servers{serverId}\GlobalPeriodicRefreshIntervalUnit</p></td>
<td align="left"><p>1</p></td>
</tr>
<tr class="odd">
<td align="left"><p>UserRefreshEnabled</p>
<div class="alert">
<strong>Note</strong><br/><p>This setting cannot be modified using the <strong>set-AppvclientConfiguration</strong> cmdLet. You must use the <strong>Set-AppvPublishingServer</strong> cmdlet.</p>
</div>
<div>

</div></td>
<td align="left"><p>USERREFRESHENABLED </p></td>
<td align="left"><p>Enables user publishing refresh (Boolean)</p></td>
<td align="left"><p>True(enabled); False(Disabled state)</p></td>
<td align="left"><p>Publishing\Servers{serverId}\UserEnabled</p></td>
<td align="left"><p>False</p></td>
</tr>
<tr class="even">
<td align="left"><p>UserRefreshOnLogon</p>
<div class="alert">
<strong>Note</strong><br/><p>This setting cannot be modified using the <strong>set-AppvclientConfiguration</strong> cmdLet. You must use the <strong>Set-AppvPublishingServer</strong> cmdlet.</p>
</div>
<div>

</div></td>
<td align="left"><p>USERREFRESHONLOGON</p></td>
<td align="left"><p>Triggers a user publishing refresh onlogon. ( Boolean)</p>
<p>Word count (with spaces): 60</p></td>
<td align="left"><p>True(enabled); False(Disabled state)</p></td>
<td align="left"><p>Publishing\Servers{serverId}\UserLogonRefresh</p></td>
<td align="left"><p>False</p></td>
</tr>
<tr class="odd">
<td align="left"><p>UserRefreshInterval</p>
<div class="alert">
<strong>Note</strong><br/><p>This setting cannot be modified using the <strong>set-AppvclientConfiguration</strong> cmdLet. You must use the <strong>Set-AppvPublishingServer</strong> cmdlet.</p>
</div>
<div>

</div></td>
<td align="left"><p>USERREFRESHINTERVAL     </p></td>
<td align="left"><p>Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.</p>
<p>Word count (with spaces): 85</p></td>
<td align="left"><p>Integer (0-744 Hours)</p></td>
<td align="left"><p>Publishing\Servers{serverId}\UserPeriodicRefreshInterval</p></td>
<td align="left"><p>0</p></td>
</tr>
<tr class="even">
<td align="left"><p>UserRefreshIntervalUnit</p>
<div class="alert">
<strong>Note</strong><br/><p>This setting cannot be modified using the <strong>set-AppvclientConfiguration</strong> cmdLet. You must use the <strong>Set-AppvPublishingServer</strong> cmdlet.</p>
</div>
<div>

</div></td>
<td align="left"><p>USERREFRESHINTERVALUNIT  </p></td>
<td align="left"><p>Specifies the interval unit (Hour 0-23, Day 0-31). </p></td>
<td align="left"><p>0 for hour, 1 for day</p></td>
<td align="left"><p>Publishing\Servers{serverId}\UserPeriodicRefreshIntervalUnit</p></td>
<td align="left"><p>1</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MigrationMode</p></td>
<td align="left"><p>MIGRATIONMODE</p></td>
<td align="left"><p>Migration mode allows the App-V client to modify shortcuts and FTA’s for packages created using a previous version of App-V.</p></td>
<td align="left"><p>True(enabled state); False (disabled state)</p></td>
<td align="left"><p>Coexistence\MigrationMode</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>CEIPOPTIN</p></td>
<td align="left"><p>CEIPOPTIN</p></td>
<td align="left"><p>Allows the computer running the App-V 5.0 Client to collect and return certain usage information to help allow us to further improve the application.</p></td>
<td align="left"><p>0 for disabled; 1 for enabled</p></td>
<td align="left"><p>SOFTWARE/Microsoft/AppV/CEIP/CEIPEnable</p></td>
<td align="left"><p>0</p></td>
</tr>
<tr class="odd">
<td align="left"><p>EnablePackageScripts</p></td>
<td align="left"><p>ENABLEPACKAGESCRIPTS</p></td>
<td align="left"><p>Enables scripts defined in the package manifest of configuration files that should run.</p></td>
<td align="left"><p>True(enabled); False(Disabled state)</p></td>
<td align="left"><p>\Scripting\EnablePackageScripts</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>RoamingFileExclusions</p></td>
<td align="left"><p>ROAMINGFILEEXCLUSIONS</p></td>
<td align="left"><p>Specifies the file paths relative to %userprofile% that do not roam with a user&#39;s profile. Example usage:  /ROAMINGFILEEXCLUSIONS=&#39;desktop;my pictures&#39;</p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>RoamingRegistryExclusions</p></td>
<td align="left"><p>ROAMINGREGISTRYEXCLUSIONS</p></td>
<td align="left"><p>Specifies the registry paths that do not roam with a user profile. Example usage: /ROAMINGREGISTRYEXCLUSIONS=software\classes;software\clients</p></td>
<td align="left"><p>String</p></td>
<td align="left"><p>Integration\RoamingRegistryExclusions</p></td>
<td align="left"><p>Policy value not written (same as Not Configured)</p></td>
</tr>
<tr class="even">
<td align="left"><p>IntegrationRootUser</p></td>
<td align="left"><p>Not available.</p></td>
<td align="left"><p>Specifies the location to create symbolic links associated with the current version of a per-user published package. all virtual application extensions, for example shortcuts and file type associations, will point to this path. If you do not specify a path, symbolic links will not be used when you publish the package. For example: %localappdata%\Microsoft\AppV\Client\Integration.</p></td>
<td align="left"><p>String</p></td>
<td align="left"><p>Integration\IntegrationRootUser</p></td>
<td align="left"><p>Policy value not written (same as Not Configured)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>IntegrationRootGlobal</p></td>
<td align="left"><p>Not available.</p></td>
<td align="left"><p>Specifies the location to create symbolic links associated with the current version of a globally published package. all virtual application extensions, for example shortcuts and file type associations, will point to this path. If you do not specify a path, symbolic links will not be used when you publish the package. For example: %allusersprofile%\Microsoft\AppV\Client\Integration</p></td>
<td align="left"><p>String</p></td>
<td align="left"><p>Integration\IntegrationRootGlobal</p></td>
<td align="left"><p>Policy value not written (same as Not Configured)</p></td>
</tr>
<tr class="even">
<td align="left"><p>VirtualizableExtensions</p></td>
<td align="left"><p>Not available.</p></td>
<td align="left"><p>A comma -delineated list of file name extensions that can be used to determine if a locally installed application can be run in the virtual environment.</p>
<p>When shortcuts, FTAs, and other extension points are created during publishing, App-V will compare the file name extension to the list if the application that is associated with the extension point is locally installed. If the extension is located, the <strong>RunVirtual</strong> command line parameter will be added, and the application will run virtually.</p>
<p>For more information about the <strong>RunVirtual</strong> parameter, see <a href="running-a-locally-installed-application-inside-a-virtual-environment-with-virtualized-applications.md" data-raw-source="[Running a Locally Installed Application Inside a Virtual Environment with Virtualized Applications](running-a-locally-installed-application-inside-a-virtual-environment-with-virtualized-applications.md)">Running a Locally Installed Application Inside a Virtual Environment with Virtualized Applications</a>.</p></td>
<td align="left"><p>String</p></td>
<td align="left"><p>Integration\VirtualizableExtensions</p></td>
<td align="left"><p>Policy value not written</p></td>
</tr>
<tr class="odd">
<td align="left"><p>ReportingEnabled</p></td>
<td align="left"><p>Not available.</p></td>
<td align="left"><p>Enables the client to return information to a reporting server.</p></td>
<td align="left"><p>True (enabled); False (Disabled state)</p></td>
<td align="left"><p>Reporting\EnableReporting</p></td>
<td align="left"><p>False</p></td>
</tr>
<tr class="even">
<td align="left"><p>ReportingServerURL</p></td>
<td align="left"><p>Not available.</p></td>
<td align="left"><p>Specifies the location on the reporting server where client information is saved.</p></td>
<td align="left"><p>String</p></td>
<td align="left"><p>Reporting\ReportingServer</p></td>
<td align="left"><p>Policy value not written (same as Not Configured)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>ReportingDataCacheLimit</p></td>
<td align="left"><p>Not available.</p></td>
<td align="left"><p>Specifies the maximum size in megabytes (MB) of the XML cache for storing reporting information. The size applies to the cache in memory. When the limit is reached, the log file will roll over. Set between 0 and 1024.</p></td>
<td align="left"><p>Integer [0-1024]</p></td>
<td align="left"><p>Reporting\DataCacheLimit</p></td>
<td align="left"><p>Policy value not written (same as Not Configured)</p></td>
</tr>
<tr class="even">
<td align="left"><p>ReportingDataBlockSize</p></td>
<td align="left"><p>Not available.</p></td>
<td align="left"><p>Specifies the maximum size in bytes to transmit to the server for reporting upload requests. This can help avoid permanent transmission failures when the log has reached a significant size. Set between 1024 and unlimited.</p></td>
<td align="left"><p>Integer [1024 - Unlimited]</p></td>
<td align="left"><p>Reporting\DataBlockSize</p></td>
<td align="left"><p>Policy value not written (same as Not Configured)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>ReportingStartTime</p></td>
<td align="left"><p>Not available.</p></td>
<td align="left"><p>Specifies the time to initiate the client to send data to the reporting server. You must specify a valid integer between 0-23 corresponding to the hour of the day. By default the <strong>ReportingStartTime</strong> will start on the current day at 10 P.M.or 22.</p>
<div class="alert">
<strong>Note</strong><br/><p>You should configure this setting to a time when computers running the App-V 5.0 client are least likely to be offline.</p>
</div>
<div>

</div></td>
<td align="left"><p>Integer (0 – 23)</p></td>
<td align="left"><p>Reporting\ StartTime</p></td>
<td align="left"><p>Policy value not written (same as Not Configured)</p></td>
</tr>
<tr class="even">
<td align="left"><p>ReportingInterval</p></td>
<td align="left"><p>Not available.</p></td>
<td align="left"><p>Specifies the retry interval that the client will use to resend data to the reporting server.</p></td>
<td align="left"><p>Integer</p></td>
<td align="left"><p>Reporting\RetryInterval</p></td>
<td align="left"><p>Policy value not written (same as Not Configured)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>ReportingRandomDelay</p></td>
<td align="left"><p>Not available.</p></td>
<td align="left"><p>Specifies the maximum delay (in minutes) for data to be sent to the reporting server. When the scheduled task is started, the client generates a random delay between 0 and <strong>ReportingRandomDelay</strong> and will wait the specified duration before sending data. This can help to prevent collisions on the server.</p></td>
<td align="left"><p>Integer [0 - ReportingRandomDelay]</p></td>
<td align="left"><p>Reporting\RandomDelay</p></td>
<td align="left"><p>Policy value not written (same as Not Configured)</p></td>
</tr>
<tr class="even">
<td align="left"><p>EnableDynamicVirtualization</p>
<div class="alert">
<strong>Important</strong><br/><p>This setting is available only with App-V 5.0 SP2 or later.</p>
</div>
<div>

</div></td>
<td align="left"><p>Not available.</p></td>
<td align="left"><p>Enables supported Shell Extensions, Browser Helper Objects, and Active X controls to be virtualized and run with virtual applications.</p></td>
<td align="left"><p>1 (Enabled), 0 (Disabled)</p></td>
<td align="left"><p>HKEY_LOCAL_MACHINE\Software\Microsoft\AppV\Client\Virtualization</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>EnablePublishingRefreshUI</p>
<div class="alert">
<strong>Important</strong><br/><p>This setting is available only with App-V 5.0 SP2.</p>
</div>
<div>

</div></td>
<td align="left"><p>Not available.</p></td>
<td align="left"><p>Enables the publishing refresh progress bar for the computer running the App-V 5.0 Client.</p></td>
<td align="left"><p>1 (Enabled), 0 (Disabled)</p></td>
<td align="left"><p>HKEY_LOCAL_MACHINE\Software\Microsoft\AppV\Client\Publishing</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>HideUI</p>
<div class="alert">
<strong>Important</strong><br/><p>This setting is available only with App-V 5.0 SP2.</p>
</div>
<div>

</div></td>
<td align="left"><p>Not available.</p></td>
<td align="left"><p>Hides the publishing refresh progress bar.</p></td>
<td align="left"><p>1 (Enabled), 0 (Disabled)</p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>ProcessesUsingVirtualComponents</p></td>
<td align="left"><p>Not available.</p></td>
<td align="left"><p>Specifies a list of process paths (that may contain wildcards), which are candidates for using dynamic virtualization (supported shell extensions, browser helper objects, and ActiveX controls). Only processes whose full path matches one of these items can use dynamic virtualization.</p></td>
<td align="left"><p>String</p></td>
<td align="left"><p>Virtualization\ProcessesUsingVirtualComponents</p></td>
<td align="left"><p>Empty string.</p></td>
</tr>
</tbody>
</table>








## Related topics


[Deploying the App-V 5.0 Sequencer and Client](deploying-the-app-v-50-sequencer-and-client.md)

[How to Modify App-V 5.0 Client Configuration Using the ADMX Template and Group Policy](how-to-modify-app-v-50-client-configuration-using-the-admx-template-and-group-policy.md)

[How to Deploy the App-V Client](how-to-deploy-the-app-v-client-gb18030.md)









