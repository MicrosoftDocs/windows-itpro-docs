---
title: About Client Configuration Settings (Windows 10)
description: About Client Configuration Settings
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---

# About Client Configuration Settings

The Microsoft Application Virtualization (App-V) client stores its configuration in the registry. You can gather some useful information about the client if you understand the format of data in the registry. You can also configure many client actions by changing registry entries. This topic lists the App-V Client configuration settings and explains their uses. You can use PowerShell to modify the client configuration settings. For more information about using PowerShell and App-V see [Administering App-V by Using PowerShell](appv-administering-appv-with-powershell.md).



## App-V Client Configuration Settings: Windows PowerShell

The following table provides information about App-V client configuration settings that can be configured through Windows PowerShell cmdlets:

| **Name of option in Windows PowerShell**<br>Type  | Description  | Cmdlet or cmdlets for setting  | Disabled Policy State Keys and Values |
|------------|------------|------------|------------|
| **PackageInstallationRoot**<br>String  | Specifies directory where all new applications and updates will be installed.  | Set-AppvClientConfiguration,<br>Set-AppvPublishingServer  | Policy value not written (same as Not Configured) |
| **PackageSourceRoot**<br>String  | Overrides source location for downloading package content.  | Set-AppvClientConfiguration,<br>Set-AppvPublishingServer  | Policy value not written (same as Not Configured) |
| **AllowHighCostLaunch**<br>True (enabled); False (Disabled state)  | This setting controls whether virtualized applications are launched on Windows 10 machines connected via a metered network connection (For example, 4G).  | Set-AppvClientConfiguration,<br>Set-AppvPublishingServer  | 0 |
| **ReestablishmentRetries**<br>Integer (0-99)  | Specifies the number of times to retry a dropped session.  | Set-AppvClientConfiguration,<br>Set-AppvPublishingServer  | Policy value not written (same as Not Configured) |
| **ReestablishmentInterval**<br>Integer (0-3600)  | Specifies the number of seconds between attempts to reestablish a dropped session.  | Set-AppvClientConfiguration,<br>Set-AppvPublishingServer  | Policy value not written (same as Not Configured) |
| **LocationProvider**<br>String  | Specifies the CLSID for a compatible implementation of the IAppvPackageLocationProvider interface.  | Set-AppvClientConfiguration,<br>Set-AppvPublishingServer  | Policy value not written (same as Not Configured) |
| **CertFilterForClientSsl**<br>String  | Specifies the path to a valid certificate in the certificate store.  | Set-AppvClientConfiguration,<br>Set-AppvPublishingServer  | Policy value not written (same as Not Configured) |
| **VerifyCertificateRevocationList**<br>True(enabled); False(Disabled state)  | Verifies Server certificate revocation status before steaming using HTTPS.  | Set-AppvClientConfiguration,<br>Set-AppvPublishingServer  | 0 |
| **SharedContentStoreMode**<br>True(enabled); False(Disabled state)  | Specifies that streamed package contents will be not be saved to the local hard disk.  | Set-AppvClientConfiguration,<br>Set-AppvPublishingServer  | 0 |
| **Name**<br>String  | Displays the name of publishing server.  | Set-AppvPublishingServer  | Policy value not written (same as Not Configured) |
| **URL**<br>String  | Displays the URL of publishing server.  | Set-AppvPublishingServer  | Policy value not written (same as Not Configured) |
| **GlobalRefreshEnabled**<br>True(enabled); False(Disabled state)  | Enables global publishing refresh (Boolean)  | Set-AppvPublishingServer  | False |
| **GlobalRefreshOnLogon**<br>True(enabled); False(Disabled state)  | Triggers a global publishing refresh on logon. ( Boolean)  | Set-AppvPublishingServer  | False |
| **GlobalRefreshInterval**<br>Integer (0-744)  | Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.  | Set-AppvPublishingServer  | 0 |
| **GlobalRefreshIntervalUnit** <br>0 for hour, 1 for day  | Specifies the interval unit (Hour 0-23, Day 0-31).  | Set-AppvPublishingServer  | 1 |
| **UserRefreshEnabled**<br>True(enabled); False(Disabled state)  | Enables user publishing refresh (Boolean)  | Set-AppvPublishingServer  | False |
| **UserRefreshOnLogon**<br>True(enabled); False(Disabled state)  | Triggers a user publishing refresh onlogon. ( Boolean)Word count (with spaces): 60  | Set-AppvPublishingServer  | False |
| **UserRefreshInterval**<br>Word count (with spaces): 85Integer (0-744 Hours)  | Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.  | Set-AppvPublishingServer  | 0 |
| **UserRefreshIntervalUnit**<br>0 for hour, 1 for day  | Specifies the interval unit (Hour 0-23, Day 0-31).  | Set-AppvPublishingServer  | 1 |
| **MigrationMode**<br>True(enabled state); False (disabled state)  | Migration mode allows the App-V client to modify shortcuts and FTA’s for packages created using a previous version of App-V.  | Set-AppvClientConfiguration,<br>Set-AppvPublishingServer  | |
| **EnablePackageScripts**<br>True(enabled); False(Disabled state)  | Enables scripts defined in the package manifest of configuration files that should run.  | Set-AppvClientConfiguration,<br>Set-AppvPublishingServer  | |
| **RoamingFileExclusions**<br>String  | Specifies the file paths relative to %userprofile% that do not roam with a user's profile. Example usage: /ROAMINGFILEEXCLUSIONS='desktop;my pictures'  | Set-AppvClientConfiguration  | |
| **RoamingRegistryExclusions**<br>String  | Specifies the registry paths that do not roam with a user profile. Example usage: /ROAMINGREGISTRYEXCLUSIONS=software\\classes;software\\clients  | Set-AppvClientConfiguration,<br>Set-AppvPublishingServer  | Policy value not written (same as Not Configured) |
| **IntegrationRootUser**<br>String  | Specifies the location to create symbolic links associated with the current version of a per-user published package. all virtual application extensions, for example shortcuts and file type associations, will point to this path. If you do not specify a path, symbolic links will not be used when you publish the package. For example: %localappdata%\\Microsoft\\AppV\\Client\\Integration.  | Set-AppvClientConfiguration,<br>Set-AppvPublishingServer  | Policy value not written (same as Not Configured) |
| **IntegrationRootGlobal**<br>String  | Specifies the location to create symbolic links associated with the current version of a globally published package. all virtual application extensions, for example shortcuts and file type associations, will point to this path. If you do not specify a path, symbolic links will not be used when you publish the package. For example: %allusersprofile%\\Microsoft\\AppV\\Client\\Integration  | Set-AppvClientConfiguration,<br>Set-AppvPublishingServer  | Policy value not written (same as Not Configured) |
| **VirtualizableExtensions**<br>String  | A comma -delineated list of file name extensions that can be used to determine if a locally installed application can be run in the virtual environment. When shortcuts, FTAs, and other extension points are created during publishing, App-V will compare the file name extension to the list if the application that is associated with the extension point is locally installed. If the extension is located, the **RunVirtual** command line parameter will be added, and the application will run virtually. For more information about the **RunVirtual** parameter, see [Running a Locally Installed Application Inside a Virtual Environment with Virtualized Applications](https://microsoft.sharepoint.com/teams/osg_core_dcp/cpub/partner/Shared%20Documents/APPV&UEV-for-Windows-RS1/App-V/App-V%20updated%20topics%20from%20JAN%20-%20PM%20reviews/appv-running-locally-installed-applications-inside-a-virtual-environment.md).  | Set-AppvClientConfiguration,<br>Set-AppvPublishingServer  | Policy value not written |
| **ReportingEnabled**<br>True (enabled); False (Disabled state)  | Enables the client to return information to a reporting server.  | Set-AppvClientConfiguration,<br>Set-AppvPublishingServer  | False |
| **ReportingServerURL**<br>String  | Specifies the location on the reporting server where client information is saved.  | Set-AppvClientConfiguration,<br>Set-AppvPublishingServer  | Policy value not written (same as Not Configured) |
| **ReportingDataCacheLimit**<br>Integer \[0-1024\]  | Specifies the maximum size in megabytes (MB) of the XML cache for storing reporting information. The size applies to the cache in memory. When the limit is reached, the log file will roll over. Set between 0 and 1024.  | Set-AppvClientConfiguration,<br>Set-AppvPublishingServer  | Policy value not written (same as Not Configured) |
| **ReportingDataBlockSize**<br>Integer \[1024 - Unlimited\]  | Specifies the maximum size in bytes to transmit to the server for reporting upload requests. This can help avoid permanent transmission failures when the log has reached a significant size. Set between 1024 and unlimited.  | Set-AppvClientConfiguration,<br>Set-AppvPublishingServer  | Policy value not written (same as Not Configured) |
| **ReportingStartTime**<br>Integer (0 – 23)  | Specifies the time to initiate the client to send data to the reporting server. You must specify a valid integer between 0-23 corresponding to the hour of the day. By default the **ReportingStartTime** will start on the current day at 10 P.M.or 22.<br>**Note** You should configure this setting to a time when computers running the App-V client are least likely to be offline.  | Set-AppvClientConfiguration,<br>Set-AppvPublishingServer  | Policy value not written (same as Not Configured) |
| **ReportingInterval**<br>Integer  | Specifies the retry interval that the client will use to resend data to the reporting server.  | Set-AppvClientConfiguration,<br>Set-AppvPublishingServer  | Policy value not written (same as Not Configured) |
| **ReportingRandomDelay**<br>Integer \[0 - ReportingRandomDelay\]  | Specifies the maximum delay (in minutes) for data to be sent to the reporting server. When the scheduled task is started, the client generates a random delay between 0 and **ReportingRandomDelay** and will wait the specified duration before sending data. This can help to prevent collisions on the server.  | Set-AppvClientConfiguration,<br>Set-AppvPublishingServer  | Policy value not written (same as Not Configured) |
| **EnableDynamicVirtualization<br>**1 (Enabled), 0 (Disabled)  | Enables supported Shell Extensions, Browser Helper Objects, and Active X controls to be virtualized and run with virtual applications.  | Set-AppvClientConfiguration,<br>Set-AppvPublishingServer  | |
| **EnablePublishingRefreshUI**<br>1 (Enabled), 0 (Disabled)  | Enables the publishing refresh progress bar for the computer running the App-V Client.  | Set-AppvClientConfiguration,<br>Set-AppvPublishingServer  | |
| **HidePublishingRefreshUI**<br>1 (Enabled), 0 (Disabled)  | Hides the publishing refresh progress bar.  | Sync-AppvPublishingServer  | |
| **ProcessesUsingVirtualComponents**<br>String  | Specifies a list of process paths (that may contain wildcards), which are candidates for using dynamic virtualization (supported shell extensions, browser helper objects, and ActiveX controls). Only processes whose full path matches one of these items can use dynamic virtualization.  | Set-AppvClientConfiguration,<br>Set-AppvPublishingServer  | Empty string. |

## App-V Client Configuration Settings: Setup Flags and Registry Keys

The following table provides information about App-V client configuration settings that can be configured through setup flags or in the registry:

| **Setting name**<br>Type  | Setup Flag  | Registry Key Value  | Disabled Policy State Keys and Values |
|--------------------------------------------------------------------------------|---------------------------|-------------------------------------------------------------------------|---------------------------------------------------|
| **PackageInstallationRoot**<br>String  | PACKAGEINSTALLATIONROOT  | Streaming\\PackageInstallationRoot  | Policy value not written (same as Not Configured) |
| **PackageSourceRoot**<br>String  | PACKAGESOURCEROOT  | Streaming\\PackageSourceRoot  | Policy value not written (same as Not Configured) |
| **AllowHighCostLaunch**<br>True (enabled); False (Disabled state)  | Not available.  | Streaming\\AllowHighCostLaunch  | 0 |
| **ReestablishmentRetries**<br>Integer (0-99)  | Not available.  | Streaming\\ReestablishmentRetries  | Policy value not written (same as Not Configured) |
| **ReestablishmentInterval**<br>Integer (0-3600)  | Not available.  | Streaming\\ReestablishmentInterval  | Policy value not written (same as Not Configured) |
| **LocationProvider**<br>String  | Not available.  | Streaming\\LocationProvider  | Policy value not written (same as Not Configured) |
| **CertFilterForClientSsl**<br>String  | Not available.  | Streaming\\CertFilterForClientSsl  | Policy value not written (same as Not Configured) |
| **VerifyCertificateRevocationList**<br>True(enabled); False(Disabled state)  | Not available.  | Streaming\\VerifyCertificateRevocationList  | 0 |
| **SharedContentStoreMode**<br>True(enabled); False(Disabled state)  | SHAREDCONTENTSTOREMODE  | Streaming\\SharedContentStoreMode  | 0 |
| **Name**<br>String  | PUBLISHINGSERVERNAME  | Publishing\\Servers{serverId}\\FriendlyName  | Policy value not written (same as Not Configured) |
| **URL**<br>String  | PUBLISHINGSERVERURL  | Publishing\\Servers{serverId}\\URL  | Policy value not written (same as Not Configured) |
| **GlobalRefreshEnabled**<br>True(enabled); False(Disabled state)  | GLOBALREFRESHENABLED  | Publishing\\Servers{serverId}\\GlobalEnabled  | False |
| **GlobalRefreshOnLogon**<br>True(enabled); False(Disabled state)  | GLOBALREFRESHONLOGON  | Publishing\\Servers{serverId}\\GlobalLogonRefresh  | False |
| **GlobalRefreshInterval**<br>Integer (0-744)  | GLOBALREFRESHINTERVAL  | Publishing\\Servers{serverId}\\GlobalPeriodicRefreshInterval  | 0 |
| **GlobalRefreshIntervalUnit** <br>0 for hour, 1 for day  | GLOBALREFRESHINTERVALUNI  | Publishing\\Servers{serverId}\\GlobalPeriodicRefreshIntervalUnit  | 1 |
| **UserRefreshEnabled**<br>True(enabled); False(Disabled state)  | USERREFRESHENABLED  | Publishing\\Servers{serverId}\\UserEnabled  | False |
| **UserRefreshOnLogon**<br>True(enabled); False(Disabled state)  | USERREFRESHONLOGON  | Publishing\\Servers{serverId}\\UserLogonRefresh  | False |
| **UserRefreshInterval**<br>Word count (with spaces): 85Integer (0-744 Hours)  | USERREFRESHINTERVAL  | Publishing\\Servers{serverId}\\UserPeriodicRefreshInterval  | 0 |
| **UserRefreshIntervalUnit**<br>0 for hour, 1 for day  | USERREFRESHINTERVALUNIT  | Publishing\\Servers{serverId}\\UserPeriodicRefreshIntervalUnit  | 1 |
| **MigrationMode**<br>True(enabled state); False (disabled state)  | MIGRATIONMODE  | Coexistence\\MigrationMode  | |
| **EnablePackageScripts**<br>True(enabled); False(Disabled state)  | ENABLEPACKAGESCRIPTS  | \\Scripting\\EnablePackageScripts  | |
| **RoamingFileExclusions**<br>String  | ROAMINGFILEEXCLUSIONS  | | |
| **RoamingRegistryExclusions**<br>String  | ROAMINGREGISTRYEXCLUSIONS  | Integration\\RoamingReglstryExclusions  | Policy value not written (same as Not Configured) |
| **IntegrationRootUser**<br>String  | Not available.  | Integration\\IntegrationRootUser  | Policy value not written (same as Not Configured) |
| **IntegrationRootGlobal**<br>String  | Not available.  | Integration\\IntegrationRootGlobal  | Policy value not written (same as Not Configured) |
| **VirtualizableExtensions**<br>String  | Not available.  | Integration\\VirtualizableExtensions  | Policy value not written |
| **ReportingEnabled**<br>True (enabled); False (Disabled state)  | Not available.  | Reporting\\EnableReporting  | False |
| **ReportingServerURL**<br>String  | Not available.  | Reporting\\ReportingServer  | Policy value not written (same as Not Configured) |
| **ReportingDataCacheLimit**<br>Integer \[0-1024\]  | Not available.  | Reporting\\DataCacheLimit  | Policy value not written (same as Not Configured) |
| **ReportingDataBlockSize**<br>Integer \[1024 - Unlimited\]  | Not available.  | Reporting\\DataBlockSize  | Policy value not written (same as Not Configured) |
| **ReportingStartTime**<br>Integer (0 – 23)  | Not available.  | Reporting\\ StartTime  | Policy value not written (same as Not Configured) |
| **ReportingInterval**<br>Integer  | Not available.  | Reporting\\RetryInterval  | Policy value not written (same as Not Configured) |
| **ReportingRandomDelay**<br>Integer \[0 - ReportingRandomDelay\]  | Not available.  | Reporting\\RandomDelay  | Policy value not written (same as Not Configured) |
| **EnableDynamicVirtualization<br>**1 (Enabled), 0 (Disabled)  | Not available.  | HKEY\_LOCAL\_MACHINE\\Software\\Microsoft\\AppV\\Client\\Virtualization  | |
| **EnablePublishingRefreshUI**<br>1 (Enabled), 0 (Disabled)  | Not available.  | HKEY\_LOCAL\_MACHINE\\Software\\Microsoft\\AppV\\Client\\Publishing  | |
| **HidePublishingRefreshUI**<br>1 (Enabled), 0 (Disabled)  | Not available.  | | |
| **ProcessesUsingVirtualComponents**<br>String  | Not available.  | Virtualization\\ProcessesUsingVirtualComponents  | Empty string. |

## Have a suggestion for App-V?

Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics

[Deploying the App-V Sequencer and Configuring the Client](appv-deploying-the-appv-sequencer-and-client.md)

[How to Modify App-V Client Configuration Using the ADMX Template and Group Policy](appv-modify-client-configuration-with-the-admx-template-and-group-policy.md)
