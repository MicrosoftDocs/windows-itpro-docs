---
title: About Client Configuration Settings
description: About Client Configuration Settings
author: dansimp
ms.assetid: 18bb307a-7eda-4dd6-a83e-6afaefd99470
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


The Microsoft Application Virtualization (App-V) 5.1 client stores its configuration in the registry. You can gather some useful information about the client if you understand the format of data in the registry. You can also configure many client actions by changing registry entries. This topic lists the App-V 5.1 Client configuration settings and explains their uses. You can use PowerShell to modify the client configuration settings. For more information about using PowerShell and App-V 5.1 see [Administering App-V 5.1 by Using PowerShell](administering-app-v-51-by-using-powershell.md).

## <a href="" id="---------app-v-5-1-client-configuration-settings"></a> App-V 5.1 Client Configuration Settings


The following table displays information about the App-V 5.1 client configuration settings:

|Setting name | Setup Flag | Description | Setting Options | Registry Key Value | Disabled Policy State Keys and Values |
|-------------|------------|-------------|-----------------|--------------------|--------------------------------------|
| PackageInstallationRoot | PACKAGEINSTALLATIONROOT | Specifies directory where all new applications and updates will be installed. | String | Streaming\PackageInstallationRoot | Policy value not written (same as Not Configured) |
| PackageSourceRoot | PACKAGESOURCEROOT | Overrides source location for downloading package content. | String | Streaming\PackageSourceRoot | Policy value not written (same as Not Configured) |
| AllowHighCostLaunch | Not available. |This setting controls whether virtualized applications are launched on Windows 10 machines connected via a metered network connection (For example, 4G). | True (enabled); False (Disabled state) | Streaming\AllowHighCostLaunch | 0 |
| ReestablishmentRetries | Not available. | Specifies the number of times to retry a dropped session. | Integer (0-99) | Streaming\ReestablishmentRetries | Policy value not written (same as Not Configured) |
| ReestablishmentInterval | Not available. | Specifies the number of seconds between attempts to reestablish a dropped session. | Integer (0-3600) | Streaming\ReestablishmentInterval | Policy value not written (same as Not Configured) |
| LocationProvider | Not available. | Specifies the CLSID for a compatible implementation of the IAppvPackageLocationProvider interface. | String | Streaming\LocationProvider | Policy value not written (same as Not Configured) |
| CertFilterForClientSsl | Not available. | Specifies the path to a valid certificate in the certificate store. | String | Streaming\CertFilterForClientSsl | Policy value not written (same as Not Configured) |
| VerifyCertificateRevocationList | Not available. | Verifies Server certificate revocation status before steaming using HTTPS. | True(enabled); False(Disabled state) | Streaming\VerifyCertificateRevocationList | 0 |
| SharedContentStoreMode | SHAREDCONTENTSTOREMODE | Specifies that streamed package contents will be not be saved to the local hard disk. | True(enabled); False(Disabled state) | Streaming\SharedContentStoreMode | 0 |
| Name<br>**Note** This setting cannot be modified using the **set-AppvclientConfiguration** cmdLet. You must use the **Set-AppvPublishingServer** cmdlet. | PUBLISHINGSERVERNAME | Displays the name of publishing server. | String | Publishing\Servers\{serverId}\FriendlyName | Policy value not written (same as Not Configured) |
| URL<br>**Note** This setting cannot be modified using the **set-AppvclientConfiguration** cmdLet. You must use the **Set-AppvPublishingServer** cmdlet. | PUBLISHINGSERVERURL | Displays the URL of publishing server. | String | Publishing\Servers\{serverId}\URL | Policy value not written (same as Not Configured) |
| GlobalRefreshEnabled<br>**Note** This setting cannot be modified using the **set-AppvclientConfiguration** cmdLet. You must use the **Set-AppvPublishingServer** cmdlet. | GLOBALREFRESHENABLED | Enables global publishing refresh (Boolean) | True(enabled); False(Disabled state) | Publishing\Servers\{serverId}\GlobalEnabled | False |
| GlobalRefreshOnLogon<br>**Note** This setting cannot be modified using the **set-AppvclientConfiguration** cmdLet. You must use the **Set-AppvPublishingServer** cmdlet. | GLOBALREFRESHONLOGON | Triggers a global publishing refresh on logon. ( Boolean) | True(enabled); False(Disabled state) | Publishing\Servers\{serverId}\GlobalLogonRefresh | False |
| GlobalRefreshInterval<br>**Note** This setting cannot be modified using the **set-AppvclientConfiguration** cmdLet. You must use the **Set-AppvPublishingServer** cmdlet. | GLOBALREFRESHINTERVAL | Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0. | Integer (0-744) | Publishing\Servers\{serverId}\GlobalPeriodicRefreshInterval | 0 |
| GlobalRefreshIntervalUnit <br>**Note** This setting cannot be modified using the **set-AppvclientConfiguration** cmdLet. You must use the **Set-AppvPublishingServer** cmdlet. | GLOBALREFRESHINTERVALUNI | Specifies the interval unit (Hour 0-23, Day 0-31). | 0 for hour, 1 for day | Publishing\Servers\{serverId}\GlobalPeriodicRefreshIntervalUnit | 1 |
| UserRefreshEnabled<br>**Note** This setting cannot be modified using the **set-AppvclientConfiguration** cmdLet. You must use the **Set-AppvPublishingServer** cmdlet. | USERREFRESHENABLED | Enables user publishing refresh (Boolean) | True(enabled); False(Disabled state) | Publishing\Servers\{serverId}\UserEnabled | False |
| UserRefreshOnLogon<br>**Note** This setting cannot be modified using the **set-AppvclientConfiguration** cmdLet. You must use the **Set-AppvPublishingServer** cmdlet. | USERREFRESHONLOGON | Triggers a user publishing refresh onlogon. ( Boolean)<br>Word count (with spaces): 60 | True(enabled); False(Disabled state) | Publishing\Servers\{serverId}\UserLogonRefresh | False |
| UserRefreshInterval<br>**Note** This setting cannot be modified using the **set-AppvclientConfiguration** cmdLet. You must use the **Set-AppvPublishingServer** cmdlet. | USERREFRESHINTERVAL | Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0. | Word count (with spaces): 85<br>Integer (0-744 Hours) | Publishing\Servers\{serverId}\UserPeriodicRefreshInterval | 0 |
| UserRefreshIntervalUnit<br>**Note** This setting cannot be modified using the **set-AppvclientConfiguration** cmdLet. You must use the **Set-AppvPublishingServer** cmdlet. | USERREFRESHINTERVALUNIT | Specifies the interval unit (Hour 0-23, Day 0-31). | 0 for hour, 1 for day | Publishing\Servers\{serverId}\UserPeriodicRefreshIntervalUnit | 1 |
| MigrationMode | MIGRATIONMODE | Migration mode allows the App-V client to modify shortcuts and FTA’s for packages created using a previous version of App-V. | True(enabled state); False (disabled state) | Coexistence\MigrationMode | |
| CEIPOPTIN | CEIPOPTIN | Allows the computer running the App-V 5.1 Client to collect and return certain usage information to help allow us to further improve the application. | 0 for disabled; 1 for enabled | SOFTWARE/Microsoft/AppV/CEIP/CEIPEnable | 0 | 
| EnablePackageScripts | ENABLEPACKAGESCRIPTS | Enables scripts defined in the package manifest of configuration files that should run. | True(enabled); False(Disabled state) | \Scripting\EnablePackageScripts | | 
| RoamingFileExclusions | ROAMINGFILEEXCLUSIONS | Specifies the file paths relative to %userprofile% that do not roam with a user's profile. Example usage:  /ROAMINGFILEEXCLUSIONS='desktop;my pictures' | | | |
| RoamingRegistryExclusions | ROAMINGREGISTRYEXCLUSIONS | Specifies the registry paths that do not roam with a user profile. Example usage: /ROAMINGREGISTRYEXCLUSIONS=software\\classes;software\\clients | String | Integration\RoamingRegistryExclusions | Policy value not written (same as Not Configured) |
| IntegrationRootUser | Not available. | Specifies the location to create symbolic links associated with the current version of a per-user published package. all virtual application extensions, for example shortcuts and file type associations, will point to this path. If you do not specify a path, symbolic links will not be used when you publish the package. For example: %localappdata%\Microsoft\AppV\Client\Integration.| String | Integration\IntegrationRootUser | Policy value not written (same as Not Configured) |
|IntegrationRootGlobal | Not available.| Specifies the location to create symbolic links associated with the current version of a globally published package. all virtual application extensions, for example shortcuts and file type associations, will point to this path. If you do not specify a path, symbolic links will not be used when you publish the package. For example: %allusersprofile%\Microsoft\AppV\Client\Integration | String | Integration\IntegrationRootGlobal | Policy value not written (same as Not Configured) |
| VirtualizableExtensions | Not available. | A comma -delineated list of file name extensions that can be used to determine if a locally installed application can be run in the virtual environment.<br>When shortcuts, FTAs, and other extension points are created during publishing, App-V will compare the file name extension to the list if the application that is associated with the extension point is locally installed. If the extension is located, the **RunVirtual** command line parameter will be added, and the application will run virtually.<br>For more information about the **RunVirtual** parameter, see [Running a Locally Installed Application Inside a Virtual Environment with Virtualized Applications](running-a-locally-installed-application-inside-a-virtual-environment-with-virtualized-applications51.md). | String | Integration\VirtualizableExtensions | Policy value not written |
| ReportingEnabled | Not available. | Enables the client to return information to a reporting server. | True (enabled); False (Disabled state) | Reporting\EnableReporting | False |
| ReportingServerURL | Not available. | Specifies the location on the reporting server where client information is saved. | String | Reporting\ReportingServer | Policy value not written (same as Not Configured) |
| ReportingDataCacheLimit | Not available. | Specifies the maximum size in megabytes (MB) of the XML cache for storing reporting information. The size applies to the cache in memory. When the limit is reached, the log file will roll over. Set between 0 and 1024. | Integer [0-1024] | Reporting\DataCacheLimit | Policy value not written (same as Not Configured) |
| ReportingDataBlockSize| Not available. | Specifies the maximum size in bytes to transmit to the server for reporting upload requests. This can help avoid permanent transmission failures when the log has reached a significant size. Set between 1024 and unlimited. | Integer [1024 - Unlimited] | Reporting\DataBlockSize | Policy value not written (same as Not Configured) |
| ReportingStartTime | Not available. | Specifies the time to initiate the client to send data to the reporting server. You must specify a valid integer between 0-23 corresponding to the hour of the day. By default the **ReportingStartTime** will start on the current day at 10 P.M.or 22.<br>**Note** You should configure this setting to a time when computers running the App-V 5.1 client are least likely to be offline. | Integer (0 – 23) | Reporting\ StartTime | Policy value not written (same as Not Configured) |
| ReportingInterval | Not available. | Specifies the retry interval that the client will use to resend data to the reporting server. | Integer | Reporting\RetryInterval | Policy value not written (same as Not Configured) |
| ReportingRandomDelay | Not available. | Specifies the maximum delay (in minutes) for data to be sent to the reporting server. When the scheduled task is started, the client generates a random delay between 0 and **ReportingRandomDelay** and will wait the specified duration before sending data. This can help to prevent collisions on the server. | Integer [0 - ReportingRandomDelay] | Reporting\RandomDelay | Policy value not written (same as Not Configured) |
| EnableDynamicVirtualization<br>**Important** This setting is available only with App-V 5.0 SP2 or later. | Not available. | Enables supported Shell Extensions, Browser Helper Objects, and Active X controls to be virtualized and run with virtual applications. | 1 (Enabled), 0 (Disabled) | HKEY_LOCAL_MACHINE\Software\Microsoft\AppV\Client\Virtualization | |
| EnablePublishingRefreshUI<br>**Important** This setting is available only with App-V 5.0 SP2. | Not available. | Enables the publishing refresh progress bar for the computer running the App-V 5.1 Client. | 1 (Enabled), 0 (Disabled) | HKEY_LOCAL_MACHINE\Software\Microsoft\AppV\Client\Publishing | |
| HideUI<br>**Important**  This setting is available only with App-V 5.0 SP2.| Not available. | Hides the publishing refresh progress bar. | 1 (Enabled), 0 (Disabled) | | |
| ProcessesUsingVirtualComponents | Not available. | Specifies a list of process paths (that may contain wildcards), which are candidates for using dynamic virtualization (supported shell extensions, browser helper objects, and ActiveX controls). Only processes whose full path matches one of these items can use dynamic virtualization. | String | Virtualization\ProcessesUsingVirtualComponents | Empty string. |






## Related topics


[Deploying the App-V 5.1 Sequencer and Client](deploying-the-app-v-51-sequencer-and-client.md)

[How to Modify App-V 5.1 Client Configuration Using the ADMX Template and Group Policy](how-to-modify-app-v-51-client-configuration-using-the-admx-template-and-group-policy.md)

[How to Deploy the App-V Client](how-to-deploy-the-app-v-client-51gb18030.md)

 

 





