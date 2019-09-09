---
title: Application Publishing and Client Interaction (Windows 10)
description: Application publishing and client interaction.
author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/08/2018
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
---
# Application publishing and client interaction

>Applies to: Windows 10, version 1607

This article provides technical information about common App-V Client operations and their integration with the local operating system.

## App-V package files created by the Sequencer

The Sequencer creates App-V packages and produces a virtualized application. The sequencing process creates the following files:

|File|Description|
|---|---|
|.appv|- The primary package file, which contains captured assets and state information from the sequencing process.<br>- Architecture of the package file, publishing information, and registry in a tokenized form that can be reapplied to a machine and to a specific user upon delivery.|
|.MSI|Executable deployment wrapper that you can use to deploy .appv files manually or by using a third-party deployment platform.|
|_DeploymentConfig.XML|File used to customize the default publishing parameters for all applications in a package that is deployed globally to all users on a computer that is running the App-V Client.|
|_UserConfig.XML|File used to customize the publishing parameters for all applications in a package that is a deployed to a specific user on a computer that is running the App-V Client.|
|Report.xml|Summary of messages resulting from the sequencing process, including omitted drivers, files, and registry locations.|
|.CAB|Optional: Package accelerator file used to automatically rebuild a previously sequenced virtual application package.|
|.appvt|Optional: Sequencer template file used to retain commonly reused Sequencer settings.|

To learn more about sequencing, see [How to Sequence a New Application with App-V](appv-sequence-a-new-application.md).

## What’s in the appv file?

The appv file is a container that stores XML and non-XML files together in a single entity. This file is built from the AppX format, which is based on the Open Packaging Conventions (OPC) standard.

To view the appv file contents, make a copy of the package, and then rename the copied file to a .zip extension.

The appv file contains the following folder and files, which are used when creating and publishing a virtual application:

| Name | Type | Description |
|---|---|---|
| Root | File folder | Directory that contains the file system for the virtualized application captured during sequencing. |
| [Content_Types].xml | XML File | List of the core content types in the appv file (for example, DLL, EXE, BIN). |
| AppxBlockMap.xml | XML File | Layout of the appv file, which uses File, Block, and BlockMap elements that enable location and validation of files in the App-V package.|
| AppxManifest.xml | XML File | Metadata for the package that contains the required information for adding, publishing, and launching the package. Includes extension points (file type associations and shortcuts) and the names and GUIDs associated with the package.|
| FilesystemMetadata.xml | XML File | List of the files captured during sequencing, including attributes (such as directories, files, opaque directories, empty directories, and long and short names). |
| PackageHistory.xml | XML File | Information about the sequencing computer (operating system version, Internet Explorer version, .Net Framework version) and process (upgrade, package version).|
| Registry.dat | DAT File | Registry keys and values captured during the sequencing process for the package.|
| StreamMap.xml | XML File | List of files for the primary and publishing feature block. The publishing feature block contains the ICO files and required portions of files (EXE and DLL) for publishing the package. When present, the primary feature block includes files that have been optimized for streaming during the sequencing process.|

## App-V Client data storage locations

The App-V Client performs tasks to keep virtual applications running properly and working like locally installed applications. The process of opening and running virtual applications requires mapping from the virtual file system and registry to ensure the application has the required components of a traditional application expected by users. This section describes the assets that are required to run virtual applications and lists the location where App-V stores the assets.

| Name | Location | Description |
|---|---|---|
| Package Store | %ProgramData%\App-V| Default location for read-only package files.|
| Machine Catalog | %ProgramData%\Microsoft\AppV\Client\Catalog| Contains per-machine configuration documents.|
| User Catalog | %AppData%\Microsoft\AppV\Client\Catalog| Contains per-user configuration documents.|
| Shortcut Backups | %AppData%\Microsoft\AppV\Client\Integration\ShortCutBackups| Stores previous integration points that enable restore on package unpublish.|
| Copy on Write (COW) Roaming | %AppData%\Microsoft\AppV\Client\VFS| Writeable roaming location for package modification.|
| Copy on Write (COW) Local | %LocalAppData%\Microsoft\AppV\Client\VFS| Writeable non-roaming location for package modification.|
| Machine Registry | HKLM\Software\Microsoft\AppV| Contains package state information, including VReg for machine or globally published packages (Machine hive).|
| User Registry | HKCU\Software\Microsoft\AppV| Contains user package state information including VReg.|
| User Registry Classes | HKCU\Software\Classes\AppV| Contains additional user package state information.|

Additional details for the table are provided in the section below and throughout the document.

### Package store

The App-V Client manages the applications assets mounted in the package store. This default storage location is %ProgramData%\App-V, but you can configure it during or after setup by using the **Set-AppVClientConfiguration** Windows PowerShell cmdlet, which modifies the local registry (**PackageInstallationRoot** value under the HKLM\Software\Microsoft\AppV\Client\Streaming key). The package store must be located at a local path on the client operating system. The individual packages are stored in the package store in subdirectories named after the Package GUID and Version GUID.

The following is an example of a path to a specific application:

```syntax
C:\ProgramData\App-V\PackGUID\VersionGUID
```

To change the default location of the package store during setup, see [Enable the App-V desktop client](appv-enable-the-app-v-desktop-client.md).

### Shared Content Store

If the App-V Client is configured in Shared Content Store mode, no data is written to disk when a stream fault occurs, which means that the packages require minimal local disk space (publishing data). In VDI environments where local storage can be limited, it's important to use as little disk space as possible. You can minimize disk space usage by streaming applications from a high-performance network location (such as a SAN). For more information, see [Shared Content Store in Microsoft App-V 5.0 - Behind the Scenes](https://blogs.technet.microsoft.com/appv/2013/07/22/shared-content-store-in-microsoft-app-v-5-0-behind-the-scenes/).

>[!NOTE]
>The machine and package store must be located on a local drive, even when you’re using Shared Content Store configurations for the App-V Client.

### Package catalogs

The App-V Client manages the following two file-based locations:

- **Catalogs (user and machine).**
- **Registry locations**—depends on how the package is targeted for publishing. There is a Catalog (data store) for the computer, and a catalog for each individual user. The Machine catalog stores global information applicable to all users or any specific user, and the User catalog stores information applicable to a specific user. The catalog is a collection of Dynamic Configurations and manifest files; there is discrete data for both file and registry per package version.

### Machine catalog

The locations described in this table can be found in the %programdata%\Microsoft\AppV\Client\Catalog\ folder.

|||
|---|---|
|Description|Stores package documents that are available to users on the machine when packages are added and published. However, if a package is “global” at publishing time, the integrations are available to all users.<br></br>If a package is non-global, the integrations are published only for specific users, but there are still global resources that are modified and visible to anyone on the client computer (such as when the package directory is in a shared disk location).<br></br>If a package is available to a user on the computer (global or non-global), the manifest is stored in the Machine Catalog. When a package is published globally, there is a Dynamic Configuration file, stored in the Machine Catalog; therefore, the determination of whether a package is global is defined according to whether there is a policy file (UserDeploymentConfiguration file) in the Machine Catalog.|
|Default storage location|%programdata%\Microsoft\AppV\Client\Catalog\<br></br>This location is not the same as the Package Store location. The Package Store is the golden or pristine copy of the package files.|
|Files in the machine catalog|- Manifest.xml<br>- DeploymentConfiguration.xml<br>- UserManifest.xml (Globally Published Package)<br>- UserDeploymentConfiguration.xml (Globally Published Package)|
|Additional machine catalog location, used when the package is part of a connection group|The following location is in addition to the specific package location mentioned previously as the default storage location:<br></br>%programdata%\Microsoft\AppV\Client\Catalog\PackageGroups\ConGroupGUID\ConGroupVerGUID|
|Additional files in the machine catalog when the package is part of a connection group|- PackageGroupDescriptor.xml<br>- UserPackageGroupDescriptor.xml (globally published Connection Group)|

### User catalog

The locations described in this table can be found in the appdata\roaming\Microsoft\AppV\Client\Catalog\ folder.

|||
|---|---|
|Description|Created during the publishing process. Contains information used for publishing the package, and for making sure that a package is provisioned to a specific user at launch. Created in a roaming location and includes user-specific publishing information.<br></br>When a package is published for a user, the policy file is stored in the User Catalog. At the same time, a copy of the manifest is also stored in the User Catalog. When a package entitlement is removed for a user, the relevant package files are removed from the User Catalog. Looking at the user catalog, an administrator can view the presence of a Dynamic Configuration file, which indicates that the package is entitled for that user.<br></br>For roaming users, the User Catalog needs to be in a roaming or shared location to preserve the legacy App-V behavior of targeting users by default. Entitlement and policy are tied to a user, not a computer, so they should roam with the user once they are provisioned.|
|Default storage location|appdata\roaming\Microsoft\AppV\Client\Catalog\Packages\PkgGUID\VerGUID|
|Files in the user catalog|- UserManifest.xml<br>- DynamicConfiguration.xml or UserDeploymentConfiguration.xml|
|Additional user catalog location, used when the package is part of a connection group|The following location is in addition to the specific package location mentioned above:<br></br>appdata\roaming\Microsoft\AppV\Client\Catalog\PackageGroups\PkgGroupGUID\PkgGroupVerGUID|
|Additional file in the machine catalog when the package is part of a connection group|UserPackageGroupDescriptor.xml|

### Shortcut backups

During the publishing process, the App-V Client backs up any shortcuts and integration points to %AppData%\Microsoft\AppV\Client\Integration\ShortCutBackups. This backup lets integration points restore to the previous versions when the package is unpublished.

### Copy on Write files

The Package Store contains a pristine copy of the package files that have been streamed from the publishing server. During normal operation of an App-V application, the user or service may require changes to the files. However, these changes aren't made in the package store to preserve your ability to repair the application, which removes these changes. These locations, called Copy on Write (COW), support both roaming and non-roaming locations. The location where the modifications are stored depends where the application has been programmed to write changes to in a native experience.

### COW roaming

The COW Roaming location described above stores changes to files and directories that are targeted to the typical %AppData% location or \\Users\\*&lt;username&gt;*\\AppData\\Roaming location. These directories and files are then roamed based on the operating system settings.

### COW local

The COW Local location is similar to the roaming location, but the directories and files are not roamed to other computers, even if roaming support has been configured. The COW Local location described above stores changes applicable to typical windows and not the %AppData% location. The directories listed will vary but there will be two locations for any typical Windows locations (for example, Common AppData and Common AppDataS). The **S** signifies the restricted location when the virtual service requests the change as a different elevated user from the signed-in users. The non-**S** location stores user-based changes.

## Package registry

Before an application can access the package registry data, the App-V Client must make the package registry data available to the applications. The App-V Client uses the real registry as a backing store for all registry data.

When a new package is added to the App-V Client, a copy of the REGISTRY.DAT file from the package is created at %ProgramData%\Microsoft\AppV\Client\VREG\{Version GUID}.dat. The name of the file is the version GUID with the .DAT extension. The reason this copy is made is to ensure that the actual hive file in the package is never in use, which would prevent the removal of the package at a later time.

**Registry.dat from Package Store** > **%ProgramData%\Microsoft\AppV\Client\Vreg\\{VersionGUID}.dat**

When the first application from the package is launched on the client, the client stages or copies the contents out of the hive file, re-creating the package registry data in an alternate location under HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\AppV\Client\Packages\PackageGuid\Versions\VersionGUID\REGISTRY. The staged registry data has two distinct types of machine data and user data. Machine data is shared across all users on the machine. User data is staged for each user to a user-specific location HKCU\Software\Microsoft\AppV\Client\Packages\PackageGUID\Registry\User. The machine data is ultimately removed at package removal time, and the user data is removed on a user unpublish operation.

### Package registry staging vs. connection group registry staging

When connection groups are present, the previous process of staging the registry holds true, but instead of having one hive file to process, there are more than one. The files are processed in the order in which they appear in the connection group XML, with the first writer winning any conflicts.

The staged registry persists the same way as in the single package case. Staged user registry data remains for the connection group until it is disabled; staged machine registry data is removed on connection group removal.

### Virtual registry

The purpose of the virtual registry (VREG) is to provide a single merged view of the package registry and the native registry to applications. It also provides copy-on-write (COW) functionality—that is, any changes made to the registry from the context of a virtual process are made to a separate COW location. This means that the VREG must combine up to three separate registry locations into a single view based on the populated locations in the **registry COW** > **package** > **native**. When a request is made for a registry data it will locate in order until it finds the data it was requesting. Meaning if there is a value stored in a COW location it will not proceed to other locations, however, if there is no data in the COW location it will proceed to the Package and then Native location until it finds the appropriate data.

### Registry locations

There are two package registry locations and two connection group locations where the App-V Client stores registry information, depending on whether the Package is published individually or as part of a connection group. There are three COW locations for packages and three for connection groups, which are created and managed by the VREG. Settings for packages and connection groups are not shared:

#### Single Package VReg

The registries in the following table are located in the Registry\Client\Packages\PkgGUID\ folder.

|Location|Description|
|---|---|
|COW|- Machine Registry\Client\Packages\PkgGUID\REGISTRY (Only elevate process can write)<br>- User Registry\Client\Packages\PkgGUID\REGISTRY (User Roaming anything written under HKCU except Software\Classes<br>- User Registry Classes\Client\Packages\PkgGUID\REGISTRY (HKCU\Software\Classes writes and HKLM for non-elevated process)|
|Package|- Machine Registry\Client\Packages\PkgGUID\Versions\VerGuid\Registry\Machine<br>- User Registry Classes\Client\Packages\PkgGUID\Versions\VerGUID\Registry|
|Native|- Native application registry location|

#### Connection Group VReg

The registries in the following table are located in the Machine Registry\Client\PackageGroups\GrpGUID\ and User Registry Classes\Client\PackageGroups\GrpGUID\ folders.

|Location|Description|
|---|---|
|COW|- Machine Registry\Client\PackageGroups\GrpGUID\REGISTRY (only elevate process can write)<br>- User Registry\Client\PackageGroups\GrpGUID\REGISTRY (Anything written to HKCU except Software\Classes)<br>- User Registry Classes\Client\PackageGroups\GrpGUID\REGISTRY|
|Package|- Machine Registry\Client\PackageGroups\GrpGUID\Versions\VerGUID\REGISTRY<br>- User Registry Classes\Client\PackageGroups\GrpGUID\Versions\VerGUID\REGISTRY|
|Native|- Native application registry location|

There are two COW locations for HKLM: elevated and non-elevated processes. Elevated processes always write HKLM changes to the secure COW under HKLM. Non-elevated processes always write HKLM changes to the non-secure COW under HKCU\\Software\\Classes. When an application reads changes from HKLM, elevated processes will read changes from the secure COW under HKLM. Non-elevated reads from both, favoring the changes made in the unsecure COW first.

### Pass-through keys

An administrator can use pass-through keys to configure certain keys to only be read from the native registry, bypassing the Package and COW locations. Pass-through locations are global to the machine (not package-specific) and can be configured by adding the path to the key, which should be treated as pass-through to the **REG\_MULTI\_SZ** value called **PassThroughPaths** of the key HKLM\Software\Microsoft\AppV\Subsystem\VirtualRegistry. Any key that appears under this multi-string value (and their children) will be treated as pass-through.

The following locations are configured as pass-through locations by default:

- HKEY\_CURRENT\_USER\\SOFTWARE\\Classes\\Local Settings\\Software\\Microsoft\\Windows\\CurrentVersion\\AppModel

- HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Classes\\Local Settings\\Software\\Microsoft\\Windows\\CurrentVersion\\AppModel

- HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\WINEVT

- HKEY\_LOCAL\_MACHINE\\SYSTEM\\CurrentControlSet\\services\\eventlog\\Application

- HKEY\_LOCAL\_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\WMI\\Autologger

- HKEY\_CURRENT\_USER\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Internet Settings

- HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Perflib

- HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Policies

- HKEY\_CURRENT\_USER\\SOFTWARE\\Policies

The purpose of pass-through keys is to ensure that a virtual application does not write registry data in the VReg that is required for non-virtual applications for successful operation or integration. The Policies key ensures that Group Policy-based settings set by the administrator are utilized and not per package settings. The AppModel key is required for integration with Windows Modern UI-based applications. Administers ideally should not modify any of the default pass-through keys, but in some instances, the admin may need to add additional pass-through keys to adjust application behavior.

## App-V package store behavior

App-V manages the Package Store, which is the location where the expanded asset files from the appv file are stored. By default, this location is stored at %ProgramData%\\App-V, and is limited in terms of storage capabilities only by free disk space. The package store is organized by the GUIDs for the package and version as mentioned in the previous section.

### Add packages

App-V Packages are staged upon addition to the computer with the App-V Client. The App-V Client provides on-demand staging. When publishing or manually entering the **Add-AppVClientPackage** cmdlet, the data structure is built in the package store (C:\\programdata\\App-V\\{PkgGUID}\\{VerGUID}). The package files identified in the publishing block defined in the StreamMap.xml file are added to the system, and the top level folders and child files are staged to ensure proper application assets exist at launch.

### Mounting packages

Packages can be explicitly loaded by entering the  **Mount-AppVClientPackage** PowerShell cmdlet or by using the **App-V Client UI** to download a package. This operation completely loads the entire package into the package store.

### Streaming packages

The App-V Client can be configured to change the default behavior of streaming. All streaming policies are stored under the following registry key: HKEY_LOCAL_MACHINE\Software\Microsoft\AppV\Client\Streaming. Policies are set by entering the **Set-AppvClientConfiguration** PowerShell cmdlet. The following policies apply to streaming:

|Policy|Description|
|---|---|
|AllowHighCostLaunch|Allows streaming over 3G and cellular networks|
|AutoLoad|Specifies the Background Load setting:<br>0 – Disabled<br>1 – Previously Used Packages only<br>2 – All Packages|
|PackageInstallationRoot|The root folder for the package store in the local machine|
|PackageSourceRoot|The root override where packages should be streamed from|
|SharedContentStoreMode|Enables the use of Shared Content Store for VDI scenarios|

These settings affect the behavior of streaming App-V package assets to the client. By default, App-V only downloads the assets required after downloading the initial publishing and primary feature blocks. There are three specific behaviors in streaming packages that it's particularly important to understand:

- Background Streaming
- Optimized Streaming
- Stream Faults

### Background streaming

The Windows PowerShell cmdlet **Get-AppvClientConfiguration** can be used to determine the current mode for background streaming with the AutoLoad setting and modified with either the **Set-AppvClientConfiguration** cmdlet or from the registry (HKLM\\SOFTWARE\\Microsoft\\AppV\\ClientStreaming key). Background streaming is a default setting where the Autoload setting is set to download previously used packages. The behavior based on default setting (value=1) downloads App-V data blocks in the background after the application has been launched. This setting can either be disabled altogether (value=0) or enabled for all packages (value=2), regardless of whether they have been launched.

### Optimized streaming

App-V packages can be configured with a primary feature block during sequencing. This setting allows the sequencing engineer to monitor launch files for a specific application, or applications, and mark the blocks of data in the App-V package for streaming at first launch of any application in the package.

### Stream faults

After the initial stream of any publishing data and the primary feature block, requests for additional files perform stream faults. These blocks of data are downloaded to the package store on an as-needed basis. This allows a user to download only a small part of the package, typically enough to launch the package and run normal tasks. All other blocks are downloaded when a user initiates an operation that requires data not currently in the package store.

### Package upgrades

App-V Packages require updating throughout the lifecycle of the application. App-V Package upgrades are like the package publish operation, as each version will be created in its own PackageRoot location: %ProgramData%\App-V\{PkgGUID}\{newVerGUID}. The upgrade operation is optimized by creating hard links to identical and streamed files from other versions of the same package.

### Package removal

The App-V Client's behavior when packages are removed depends on the package removal method. Using an App-V full infrastructure to unpublish the application, the user catalog files (machine catalog for globally published applications) are removed, but the package store location and COW locations remain. When the **Remove-AppVClientPackge** Windows PowerShell cmdlet is used to remove an App-V Package, the package store location is cleaned. Remember that unpublishing an App-V Package from the Management Server does not perform a Remove operation. Neither operation will remove the Package Store package files.

## Roaming registry and data

App-V is able to provide a near-native experience when roaming, depending on how the application being used is written. By default, App-V roams AppData that is stored in the roaming location, based on the roaming configuration of the operating system. Other locations for storage of file-based data do not roam from computer to computer, since they are in locations that are not roamed.

### Roaming requirements and user catalog data storage

App-V stores data, which represents the state of the user’s catalog, in the form of:

- Files under %appdata%\\Microsoft\\AppV\\Client\\Catalog
- Registry settings under HKEY_CURRENT_USER\Software\Microsoft\AppV\Client\Packages

Together, these files and registry settings represent the user’s catalog, so either both must be roamed, or neither must be roamed for a given user. App-V does not support roaming %AppData%, but not roaming the user’s profile (registry), or vice versa.

>[!NOTE]
>The **Repair-AppvClientPackage** cmdlet doesn't repair the publishing state of packages where the user’s App-V state under HKEY_CURRENT_USER is missing or mismatched with the data in %appdata%.

### Registry-based data

App-V registry roaming falls into two scenarios, as shown in the following table.

|Scenario|Description|
|---|---|
|Applications that are run as standard users|When a standard user launches an App-V application, both HKLM and HKCU for App-V applications are stored in the HKCU hive on the machine. This presents as two distinct paths:<br><br>- HKLM's location is  HKCU\SOFTWARE\Classes\AppV\Client\Packages\\{PkgGUID}\REGISTRY\MACHINE\SOFTWARE<br>- HKCU's location is HKCU\SOFTWARE\Microsoft\AppV\Client\Packages\\{PkgGUID}\REGISTRY\USER\\{UserSID}\SOFTWARE<br><br>The locations are enabled for roaming based on the operating system settings.|
|Applications that are run with elevation|When an application is launched with elevation:<br><br>- HKLM data is stored in the HKLM hive on the local computer<br>- HKCU data is stored in the User Registry location<br><br>In this scenario, these settings are not roamed with normal operating system roaming configurations, and the resulting registry keys and values are stored in the following locations:<br><br>- HKLM's location is HKLM\SOFTWARE\Microsoft\AppV\Client\Packages\\{PkgGUID}\\{UserSID}\REGISTRY\MACHINE\SOFTWARE<br>- HKCU's location is HKCU\SOFTWARE\Microsoft\AppV\Client\Packages\\{PkgGUID}\\Registry\User\\{UserSID}\SOFTWARE|

### App-V and folder redirection

App-V supports folder redirection of the roaming AppData folder (%AppData%). When the virtual environment is started, the roaming AppData state from the user’s roaming AppData directory is copied to the local cache. Conversely, when the virtual environment is shut down, the local cache that is associated with a specific user’s roaming AppData is transferred to the actual location of that user’s roaming AppData directory.

A typical package has several locations mapped in the user’s backing store for settings in both AppData\\Local and AppData\\Roaming. These locations are the Copy on Write locations that are stored per user in the user’s profile, and that are used to store changes made to the package VFS directories and to protect the default package VFS.

The following table shows local and roaming locations when folder redirection has not been implemented.

| VFS directory in package | Mapped location of backing store |
|---|---|
| ProgramFilesX86 | C:\Users\Local\AppData\Local\Microsoft\AppV\Client\VFS\\&lt;GUID&gt;\ProgramFilesX86 |
| SystemX86 | C:\Users\username\AppData\Local\Microsoft\AppV\Client\VFS\\&lt;GUID&gt;\SystemX86 |
| Windows | C:\Users\username\AppData\Local\Microsoft\AppV\Client\VFS\\&lt;GUID&gt;\Windows |
| appv\_ROOT | C:\Users\username\AppData\Local\Microsoft\AppV\Client\VFS\\&lt;GUID&gt;\appv_ROOT|
| AppData | C:\Users\username\AppData\Local\Microsoft\AppV\Client\VFS\\&lt;GUID&gt;\AppData |

The following table shows local and roaming locations when folder redirection has been implemented for %AppData% and the location has been redirected (typically to a network location).

| VFS directory in package | Mapped location of backing store |
|---|---|
| ProgramFilesX86 | C:\Users\Local\AppData\Local\Microsoft\AppV\Client\VFS\\&lt;GUID&gt;\ProgramFilesX86 |
| SystemX86 | C:\Users\Local\AppData\Local\Microsoft\AppV\Client\VFS\\&lt;GUID&gt;\SystemX86 |
| Windows | C:\Users\Local\AppData\Local\Microsoft\AppV\Client\VFS\\&lt;GUID&gt;\Windows |
| appv_ROOT | C:\Users\Local\AppData\Local\Microsoft\AppV\Client\VFS\\&lt;GUID&gt;\appv\_ROOT |
| AppData | \\Fileserver\users\Local\roaming\Microsoft\AppV\Client\VFS\\&lt;GUID&gt;\AppData |

The current App-V Client VFS driver can't write to network locations, so the App-V Client detects the presence of folder redirection and copies the data on the local drive during publishing and when the virtual environment starts. After the user closes the App-V application and the App-V Client closes the virtual environment, the local storage of the VFS AppData is copied back to the network, enabling roaming to additional machines, where the process will be repeated. Here's what happens during the process:

1. During publishing or virtual environment startup, the App-V Client detects the location of the AppData directory.
2. If the roaming AppData path is local or no AppData\\Roaming location is mapped, nothing happens.
3. If the roaming AppData path is not local, the VFS AppData directory is mapped to the local AppData directory.

This process solves the problem of a non-local %AppData% that is not supported by the App-V Client VFS driver. However, the data stored in this new location is not roamed with folder redirection. All changes during the running of the application happen to the local AppData location and must be copied to the redirected location. The process does the following things:

1. Shuts down the App-V application, which also shuts down the virtual environment.
2. Compresses the local cache of the roaming AppData location and store it in a .zip file.
3. Uses the time stamp at the end of the .zip packaging process to name the file.
4. Records the time stamp in the HKEY\_CURRENT\_USER\\Software\\Microsoft\\AppV\\Client\\Packages\\&lt;GUID&gt;\\AppDataTime registry as the last known AppData time stamp.
5. Calls the folder redirection process to evaluate and initiate the .zip file uploaded to the roaming AppData directory.

The time stamp is used to determine a “last writer wins” scenario if there is a conflict and is used to optimize the download of the data when the App-V application is published, or the virtual environment is started. Folder redirection will make the data available from any other clients covered by the supporting policy and will initiate the process of storing the AppData\\Roaming data to the local AppData location on the client. Here's what happens during the process:

1. The user starts an application, which also starts the virtual environment.
2. The application’s virtual environment checks for the most recent time stamped .zip file, if present.
3. The virtual environment checks the registry for the last known uploaded time stamp, if present.
4. The virtual environment downloads the most recent .zip file unless the local last known upload time stamp is greater than or equal to the time stamp from the .zip file.
5. If the local last known upload time stamp is earlier than that of the most recent .zip file in the roaming AppData location, the virtual environment extracts the .zip file to the local temp directory in the user’s profile.
6. After the .zip file is successfully extracted, the local cache of the roaming AppData directory is renamed and the new data moved into place.
7. The renamed directory is deleted and the application opens with the most recently saved roaming AppData data.

This completes the successful roaming of application settings that are present in AppData\\Roaming locations. The only other condition that must be addressed is a package repair operation. The process does the following things:

1. During repair, detects if the path to the user’s roaming AppData directory isn't local.
2. Maps the non-local roaming AppData path targets, recreating the expected roaming and local AppData locations.
3. Deletes the time stamp stored in the registry, if present.

This process will recreate both the local and network locations for AppData and remove the registry record of the time stamp.

## App-V Client application lifecycle management

In an App-V Full Infrastructure, after applications are sequenced they are managed and published to users or computers through the App-V Management and Publishing servers. This section details the operations that occur during the common App-V application lifecycle operations (Add, publishing, launch, upgrade, and removal) and the file and registry locations that are changed and modified from the App-V Client perspective. The App-V Client operations are input as PowerShell commands on the computer running the App-V Client.

This document focuses on App-V Full Infrastructure solutions. For specific information on App-V Integration with Configuration Manager 2012, see [Integrating Virtual Application Management with App-V 5 and Configuration Manager 2012 SP1](https://www.microsoft.com/download/details.aspx?id=38177).

The App-V application lifecycle tasks are triggered at user sign in (default), machine startup, or as background timed operations. The settings for the App-V Client operations, including Publishing Servers, refresh intervals, package script enablement, and others, are configured (after the client is enabled) with Windows PowerShell commands. See [App-V Client Configuration Settings: Windows PowerShell](appv-client-configuration-settings.md#app-v-client-configuration-settings-windows-powershell).

### Publishing refresh

The publishing refresh process comprises several smaller operations that are performed on the App-V Client. Since App-V is an application virtualization technology and not a task scheduling technology, the Windows Task Scheduler is utilized to enable the process when the user signs in, the machine turns on, and at scheduled intervals. The client configuration during setup listed in the previous section is the preferred method when distributing the client to a large group of computers with the correct settings. These client settings can be configured with the following Windows PowerShell cmdlets:

- **Add-AppVPublishingServer** configures the client with an App-V Publishing Server that provides App-V packages.
- **Set-AppVPublishingServer** modifies the current settings for the App-V Publishing Server.
- **Set-AppVClientConfiguration** modifies the currents settings for the App-V Client.
- **Sync-AppVPublishingServer** initiates an App-V Publishing Refresh process manually. This is also utilized in the scheduled tasks created during configuration of the publishing server.

The following sections will elaborate what goes on during the publishing refresh process.

#### Adding an App-V package

Adding an App-V package to the client is the first step of the publishing refresh process. The end result is the same as the **Add-AppVClientPackage** cmdlet in Windows PowerShell, except the publishing refresh add process contacts the configured publishing server and passes a high-level list of applications back to the client to pull more detailed information, rather than just doing a single package add operation.

The process then configures the client for package or connection group additions or updates, then accesses the appv file. Next, the contents of the appv file are expanded and placed on the local operating system in the appropriate locations. The following is a detailed workflow of the process, assuming the package is configured for Fault Streaming.

#### How to add an App-V package

1. Initiate installation manually through Windows PowerShell or Task Sequence initiation of the Publishing Refresh process.

    1. The App-V Client makes an HTTP connection and requests a list of applications based on the target. The Publishing refresh process supports targeting machines or users.

    2. The App-V Publishing Server uses the identity of the initiating target, user or machine, and queries the database for a list of entitled applications. The list of applications is provided as an XML response, which the client uses to send additional requests to the server for more information on a per-package basis.

2. The Publishing Agent on the App-V Client will evaluate any connection groups that are unpublished or disabled, since package version updates that are part of the connection group cannot be processed.

3. Configure the packages by identifying the **Add** or **Update** operations.

   1. The App-V Client utilizes the AppX API from Windows and accesses the appv file from the publishing server.

   2. The package file is opened and the **AppXManifest.xml** and **StreamMap.xml** files are downloaded to the Package Store.

   3. Completely stream publishing block data defined in the **StreamMap.xml** file. Publishing block data is stored in Package Store\\PkgGUID\\VerGUID\\Root.

       - Icons: Targets of extension points.
       - Portable Executable Headers (PE Headers): Targets of extension points that contain the base information about the image need on disk, accessed directly or through file types.
       - Scripts: Download scripts directory for use throughout the publishing process.

   4. Populate the Package store by doing the following:

      1. Create sparse files on disk that represent the extracted package for any directories listed.

      2. Stage top-level files and directories under root.

         All other files are created when the directory is listed as sparse on disk and streamed on demand.

   5. Create the machine catalog entries. Create the **Manifest.xml** and **DeploymentConfiguration.xml** files from the package files (if no **DeploymentConfiguration.xml** file in the package a placeholder is created).

   6. Create location of the package store in the registry **HKLM\\Software\\Microsoft\\AppV\\Client\\Packages\\PkgGUID\\Versions\\VerGUID\\Catalog**.

   7. Create the **Registry.dat** file from the package store to **%ProgramData%\\Microsoft\\AppV\\Client\\VReg\\{VersionGUID}.dat**.

   8. Register the package with the App-V Kernel Mode Driver at **HKLM\\Microsoft\\Software\\AppV\\MAV**.

   9. Invoke scripting from the **AppxManifest.xml** or **DeploymentConfig.xml** file for Package Add timing.

4. Configure Connection Groups by adding and enabling or disabling.

5. Remove objects that are not published to the target (user or machine).

   > [!NOTE]
    >This will not perform a package deletion but rather remove integration points for the specific target (user or machine) and remove user catalog files (machine catalog files for globally published).

6. Invoke background load mounting based on client configuration.

7. Packages that already have publishing information for the machine or user are immediately restored.

   > [!NOTE]
    >This condition occurs as a product of removal without unpublishing with background addition of the package.

This completes an App-V package add for the publishing refresh process. The next step is publishing the package to a specific target (machine or user).

![Package add file and registry data](images/packageaddfileandregistrydata.png)

**Package add file and registry data**

#### Publishing an App-V package

During the Publishing Refresh operation, the specific publishing operation, **Publish-AppVClientPackage**, adds entries to the user catalog, maps entitlement to the user, identifies the local store, and finishes by completing any integration steps.

#### How to publish an App-V package

1. Package entries are added to the user catalog

    1. User targeted packages: the **UserDeploymentConfiguration.xml** and **UserManifest.xml** files are placed on the machine in the User Catalog.

    2. Machine targeted (global) packages: the **UserDeploymentConfiguration.xml** is placed in the Machine Catalog.

2. Register the package with the kernel mode driver for the user at **HKLM\\Software\\Microsoft\\AppV\\MAV**.

3. Perform integration tasks.

    1. Create extension points.

    2. Store backup information in the user’s registry and roaming profile (Shortcut Backups).

       > [!NOTE]
        >This enables restore extension points if the package is unpublished.

    3. Run scripts targeted for publishing timing.

Publishing an App-V Package that is part of a Connection Group is very similar to the above process. For connection groups, the path that stores the specific catalog information includes PackageGroups as a child of the Catalog Directory. Review the Machine and User Catalog information in the preceding sections for details.

![package add file and registry data - global](images/packageaddfileandregistrydata-global.png)

**Package add file and registry data—global**

### Application launch

After the Publishing Refresh process, the user launches and then relaunches an App-V application. The App-V Client checks the path to the user catalog for files created during publishing. After establishing rights to launch the package, the App-V Client creates a virtual environment, begins streaming any necessary data, and applies the appropriate manifest and deployment configuration files during virtual environment creation. Once the virtual environment created and configured for the specific package and application, the application starts. This might seem like a lot, but the process in action is actually quite fast, and is optimized to minimize network traffic.

#### How to launch App-V applications

1. User launches the application by selecting a shortcut or file type invocation.

2. The App-V Client verifies existence in the User Catalog for the following files

    - **UserDeploymentConfiguration.xml**
    - **UserManifest.xml**

3. If the files are present, the application is entitled for that specific user and the application will start the process for launch. There is no network traffic at this point.

4. Next, the App-V Client checks that the path for the package registered for the App-V Client service is found in the registry.

5. Upon finding the path to the package store, the virtual environment is created. If this is the first launch, the Primary Feature Block downloads if present.

6. After downloading, the App-V Client service consumes the manifest and deployment configuration files to configure the virtual environment and all App-V subsystems are loaded.

7. The Application launches. For any missing files in the package store (sparse files), App-V will stream fault the files on an as-needed basis.

    ![package add file and registry data - stream](images/packageaddfileandregistrydata-stream.png)

    **Package add file and registry data—stream**

### Upgrading an App-V package

The current version of App-V's package upgrade process differs from the older versions in its storage optimization. App-V supports multiple versions of the same package on a machine entitled to different users. Package versions can be added at any time, as the package store and catalogs are updated with the new resources. During an upgrade in the new version, only new files are added to the new version store location, and hard links are created for unchanged files. This reduces overall storage by only presenting the file on one disk location, then projecting it into all folders with a file location entry on the disk.

#### How to upgrade an App-V package

1. The App-V Client performs a Publishing Refresh and discovers a newer version of an App-V Package.

2. Package entries are added to the appropriate catalog for the new version.

    1. User targeted packages: the **UserDeploymentConfiguration.xml** and **UserManifest.xml** files are placed on the machine in the user catalog at **appdata\\roaming\\Microsoft\\AppV\\Client\\Catalog\\Packages\\PkgGUID\\VerGUID**.

    2. Machine targeted (global) packages: the **UserDeploymentConfiguration.xml** is placed in the machine catalog at **%programdata%\\Microsoft\\AppV\\Client\\Catalog\\Packages\\PkgGUID\\VerGUID**.

3. Register the package with the kernel mode driver for the user at **HKLM\\Software\\Microsoft\\AppV\\MAV**.

4. Perform integration tasks.

    1. Integrate extensions points (EP) from the Manifest and Dynamic Configuration files.

    2. File based EP data is stored in the AppData folder utilizing Junction Points from the package store.

    3. Version 1 EPs already exist when a new version becomes available.

    4. The extension points are switched to the Version 2 location in machine or user catalogs for any newer or updated extension points.

5. Run scripts targeted for publishing timing.

6. Install Side-by-Side assemblies as required.

### Upgrading an in-use App-V package

If you try to upgrade a package that is currently in use, the upgrade task is placed in a pending state. The upgrade will run later, according to the following rules:

| Task type | Applicable rule |
|---|---|
| User-based tasks, such as publishing a package to a user | The pending task will be performed after the user logs off and then logs back on. |
| Globally based tasks, such as enabling a connection group globally | The pending task will be performed when the computer is shut down and then restarted. |

When a task is placed in a pending state, the App-V Client also generates a registry key for the pending task, as follows:

| User-based or globally based task | Where the registry key is generated |
|---|---|
| User-based tasks | HKEY\_CURRENT\_USER\Software\Microsoft\AppV\Client\PendingTasks |
| Globally based tasks | HKEY\_LOCAL\_MACHINE\Software\Microsoft\AppV\Client\PendingTasks |

The following operations must be completed before users can use the newer version of the package:

| Task | Details |
|---|---|
| Add the package to the computer | This task is computer-specific and you can perform it at any time by completing the steps in [How to add an App-V package](#how-to-add-an-app-v-package). |
| Publish the package |  See the Package Publishing section above for steps. This process requires that you update extension points on the system. You can't complete this task while the application is in use. |

Use the following example scenarios as a guide for updating packages.

| Scenario | Requirements |
|---|---|
| App-V package is not in use when you try to upgrade | None of the following components of the package can be in use: virtual application, COM server, or shell extensions.<br/><br/>The administrator publishes a newer version of the package and the upgrade works the next time a component or application inside the package is launched. The new version of the package is streamed and ran. |
| App-V package is in use when the administrator publishes a newer version of the package | The App-V Client sets the operation to "pending," which means that it is queued and will be carried out later when the package is not in use.<br/><br/>If the package application is in use, the user shuts down the virtual application, after which the upgrade can occur.<br/><br/>If the package has shell extensions, which are permanently loaded by Windows Explorer, the user won't be able to sign in. Users must sign off and then sign back in to initiate the App-V package upgrade.|

### Global vs. user publishing

App-V Packages can be published in one of two ways; as user, which entitles an App-V package to a specific user or group of users, or as global, which entitles the App-V package to the entire machine for all users of the machine. Once a package upgrade has been pended and the App-V package is not in use, consider the two types of publishing:

- Global publishing is when the application is published to a machine; all users on that machine can use it. The upgrade will happen when the App-V Client Service starts, which effectively means a machine restart.
- User publishing is when the application is published to a user. If there are multiple users on the machine, the application can be published to a subset of the users. The upgrade will happen when the user signs in or when it is published again (periodically, ConfigMgr Policy refresh and evaluation, or an App-V periodic publishing/refresh, or explicitly through Windows PowerShell commands).

### Removing an App-V package

Removing App-V applications in a Full Infrastructure is an unpublish operation and does not perform a package removal. The process is the same as the publish process above, but instead of adding the removal process reverses the changes that have been made for App-V Packages.

### Repairing an App-V package

The repair operation is easy to do but may affect many locations on the machine. The previously mentioned Copy on Write (COW) locations are removed, and extension points are deintegrated and then reintegrated. Before repairing, please review where the COW data placement locations are registered in the registry. To perform a Repair operation, all you need to do is initiate it from the App-V Client Console or through the **Repair-AppVClientPackage** PowerShell cmdlet. After that, the operation is completed automatically.

## Integration of App-V packages

The App-V Client and package architecture provides specific integration with the local operating system during the addition and publishing of packages. Three files define the integration or extension points for an App-V Package:

- AppXManifest.xml is stored inside of the package with fallback copies stored in the package store and the user profile. Contains the options created during the sequencing process.
- DeploymentConfig.xml provides configuration information of computer- and user-based integration extension points.
- UserConfig.xml is a subset of the Deploymentconfig.xml file that only provides user-based configurations and only targets user-based extension points.

### Rules of integration

When App-V applications are published to a computer with the App-V Client, some specific actions take place as described in the following list:

- Global Publishing: Shortcuts are stored in the All Users profile location and other extension points are stored in the registry in the HKLM hive.
- User Publishing: Shortcuts are stored in the current user account profile and other extension points are stored in the registry in the HKCU hive.
- Backup and Restore: Existing native application data and registry (such as FTA registrations) are backed up during publishing.

    1. App-V packages are given ownership based on the last integrated package where the ownership is passed to the newest published App-V application.
    2. Ownership transfers from one App-V package to another when the owning App-V package is unpublished. This will not initiate a restore of the data or registry.
    3. Restore the backed-up data when the last package is unpublished or removed on a per-extension point basis.

### Extension points

The App-V publishing files (manifest and dynamic configuration) provide several extension points to integrate the application with the local operating system. These extension points perform typical application installation tasks, such as placing shortcuts, creating file type associations, and registering components. As these are virtualized applications that are not installed in the same manner a traditional application, there are some differences. The following is a list of extension points covered in this section:

- Shortcuts
- File type associations
- Shell extensions
- COM
- Software clients
- Application capabilities
- URL Protocol handler
- AppPath
- Virtual application

### Shortcuts

The shortcut is one of the basic elements of integration with the OS and is the interface for direct user launch of an App-V application. During the publishing and unpublishing of App-V applications.

From the package manifest and dynamic configuration XML files, the path to a specific application executable can be found in a section like the following:

```XML
<Extension Category="AppV.Shortcut">
          <Shortcut>
            <File>[{Common Desktop}]\Adobe Reader.lnk</File>
            <Target>[{AppVPackageRoot}]\Reader\AcroRd32.exe</Target>
            <Icon>[{Windows}]\Installer\{AC76BA86-7AD7-1033-7B44-A94000000001}\SC_Reader.ico</Icon>
            <Arguments />
            <WorkingDirectory />
            <ShowCommand>1</ShowCommand>
            <ApplicationId>[{AppVPackageRoot}]\Reader\AcroRd32.exe</ApplicationId>
          </Shortcut>
        </Extension>
```

As mentioned previously, the App-V shortcuts are placed by default in the user’s profile based on the refresh operation. Global refresh places shortcuts in the All Users profile and user refresh stores them in the specific user’s profile. The actual executable is stored in the Package Store. The location of the ICO file is a tokenized location in the App-V package.

### File type associations

Users can use file type invocations or open a file with a specifically registered extension (.docx) to start an App-V application because the App-V Client manages the local operating system File Type Associations during publishing. File type associations are present in the manifest and dynamic configuration files, as shown in the following example:

```XML
<Extension Category="AppV.FileTypeAssociation">
          <FileTypeAssociation>
            <FileExtension MimeAssociation="true">
              <Name>.xdp</Name>
              <ProgId>AcroExch.XDPDoc</ProgId>
              <ContentType>application/vnd.adobe.xdp+xml</ContentType>
            </FileExtension>
            <ProgId>
              <Name>AcroExch.XDPDoc</Name>
              <Description>Adobe Acrobat XML Data Package File</Description>
              <EditFlags>65536</EditFlags>
              <DefaultIcon>[{Windows}]\Installer\{AC76BA86-7AD7-1033-7B44-A94000000001}\XDPFile_8.ico</DefaultIcon>
              <ShellCommands>
                <DefaultCommand>Read</DefaultCommand>
                <ShellCommand>
                  <ApplicationId>[{AppVPackageRoot}]\Reader\AcroRd32.exe</ApplicationId>
                  <Name>Open</Name>
                  <CommandLine>"[{AppVPackageRoot}]\Reader\AcroRd32.exe" "%1"</CommandLine>
                </ShellCommand>
                <ShellCommand>
                  <ApplicationId>[{AppVPackageRoot}]\Reader\AcroRd32.exe</ApplicationId>
                  <Name>Printto</Name>
                  <CommandLine>"[{AppVPackageRoot}]\Reader\AcroRd32.exe"  /t "%1" "%2" "%3" "%4"</CommandLine>
                </ShellCommand>
                <ShellCommand>
                  <ApplicationId>[{AppVPackageRoot}]\Reader\AcroRd32.exe</ApplicationId>
                  <Name>Read</Name>
                  <FriendlyName>Open with Adobe Reader</FriendlyName>
                  <CommandLine>"[{AppVPackageRoot}]\Reader\AcroRd32.exe" "%1"</CommandLine>
                </ShellCommand>
              </ShellCommands>
            </ProgId>
          </FileTypeAssociation>
        </Extension>
```

>[!NOTE]
>In this example:
>- `<Name>.xdp</Name>` is the extension
>- `<Name>AcroExch.XDPDoc</Name>` is the ProgId value (which points to the adjoining ProgId)
>- `<CommandLine>"[{AppVPackageRoot}]\Reader\AcroRd32.exe" "%1"</CommandLine>` is the command line, which points to the application executable

### Shell extensions

Shell extensions are embedded in the package automatically during the sequencing process. When the package is published globally, the shell extension gives users the same functionality as if the application were locally installed. The application requires no additional setup or configuration on the client to enable the shell extension functionality.

#### Requirements for using shell extensions

- Packages that contain embedded shell extensions must be published globally.
- The “bitness” of the application, Sequencer, and App-V Client must match, or the shell extensions won’t work. The following example configuration fulfills the matching requirement:
  - The version of the application is 64-bit.
  - The Sequencer is running on a 64-bit computer.
  - The package is being delivered to a 64-bit App-V Client computer.

The following table displays the supported shell extensions.

| Handler | Description |
|---|---|
| Context menu handler | Adds menu items to the context menu. It is called before the context menu is displayed. |
| Drag-and-drop handler | Controls the action upon right-click drag-and-drop and modifies the context menu that appears. |
| Drop target handler | Controls the action after a data object is dragged-and-dropped over a drop target, such as a file.|
| Data object handler| Controls the action after a file is copied to the clipboard or dragged-and-dropped over a drop target. It can provide additional clipboard formats to the drop target.|
| Property sheet handler| Replaces or adds pages to the property sheet dialog box of an object.|
| Infotip handler| Allows retrieving flags and infotip information for an item and displaying it inside a popup tooltip upon mouse-hover.|
| Column handler| Allows creating and displaying custom columns in Windows Explorer *Details view*. It can be used to extend sorting and grouping.|
| Preview handler| Enables a preview of a file to be displayed in the Windows Explorer Preview Pane.|

### COM

The App-V Client supports publishing applications with support for COM integration and virtualization. COM integration allows the App-V Client to register COM objects on the local operating system and virtualization of the objects. For the purposes of this document, the integration of COM objects requires additional detail.

App-V supports registering COM objects from the package to the local operating system with two process types: Out-of-process and In-process. Registering COM objects is accomplished with one or a combination of multiple modes of operation for a specific App-V package that includes Off, Isolated, and Integrated. Integrated mode is configured for either the Out-of-process or In-process type. Configuration of COM modes and types is accomplished with dynamic configuration files (deploymentconfig.xml or userconfig.xml).

For details on App-V integration, see [Microsoft Application Virtualization 5.0 Integration](https://blogs.technet.microsoft.com/appv/2013/01/03/microsoft-application-virtualization-5-0-integration).

### Software clients and application capabilities

App-V supports specific software clients and application capabilities extension points to register virtualized applications with the operating system's software client. This means users can select default programs for operations like email, instant messaging, and using the media player. This operation is performed in the control panel with **Set Program Access** and **Computer Defaults**, and is configured during sequencing in the manifest or dynamic configuration files. Application capabilities are only supported when the App-V applications are published globally.

The following is an example of software client registration of an App-V-based mail client.

```XML
    <SoftwareClients Enabled="true">
      <ClientConfiguration EmailEnabled="true" />
      <Extensions>
        <Extension Category="AppV.SoftwareClient">
          <SoftwareClients>
            <EMail MakeDefault="true">
              <Name>Mozilla Thunderbird</Name>
              <Description>Mozilla Thunderbird</Description>
              <DefaultIcon>[{ProgramFilesX86}]\Mozilla Thunderbird\thunderbird.exe,0</DefaultIcon>
              <InstallationInformation>
                <RegistrationCommands>
                  <Reinstall>"[{ProgramFilesX86}]\Mozilla Thunderbird\uninstall\helper.exe" /SetAsDefaultAppGlobal</Reinstall>
                  <HideIcons>"[{ProgramFilesX86}]\Mozilla Thunderbird\uninstall\helper.exe" /HideShortcuts</HideIcons>
                  <ShowIcons>"[{ProgramFilesX86}]\Mozilla Thunderbird\uninstall\helper.exe" /ShowShortcuts</ShowIcons>
                </RegistrationCommands>
                <IconsVisible>1</IconsVisible>
                <OEMSettings />
              </InstallationInformation>
              <ShellCommands>
                <ApplicationId>[{ProgramFilesX86}]\Mozilla Thunderbird\thunderbird.exe</ApplicationId>
                <Open>"[{ProgramFilesX86}]\Mozilla Thunderbird\thunderbird.exe" -mail</Open>
              </ShellCommands>
              <MAPILibrary>[{ProgramFilesX86}]\Mozilla Thunderbird\mozMapi32_InUse.dll</MAPILibrary>
              <MailToProtocol>
                <Description>Thunderbird URL</Description>
                <EditFlags>2</EditFlags>
                <DefaultIcon>[{ProgramFilesX86}]\Mozilla Thunderbird\thunderbird.exe,0</DefaultIcon>
                <ShellCommands>
                  <ApplicationId>[{ProgramFilesX86}]\Mozilla Thunderbird\thunderbird.exe</ApplicationId>
                  <Open>"[{ProgramFilesX86}]\Mozilla Thunderbird\thunderbird.exe" -osint -compose "%1"</Open>
                </ShellCommands>
              </MailToProtocol>
            </EMail>
          </SoftwareClients>
        </Extension>
      </Extensions>
    </SoftwareClients>
```

>[!NOTE]
>In this example:
>- `<ClientConfiguration EmailEnabled="true" />` is the overall Software Clients setting to integrate Email clients.
>- `<EMail MakeDefault="true">` is the flag to set a particular Email client as the default Email client.
>- `<MAPILibrary>[{ProgramFilesX86}]\Mozilla Thunderbird\mozMapi32_InUse.dll</MAPILibrary>` is the MAPI dll registration.

### URL Protocol handler

Virtual applications don't always specifically utilize file type invocation. For, example, in an application that supports embedding a mailto: link inside a document or web page, the user selects the link expecting to access their registered mail client. App-V supports URL Protocol handlers that can be registered on a per-package basis with the local operating system. During sequencing, the URL Protocol handlers are automatically added to the package.

For situations where there is more than one application that could register the specific URL Protocol handler, the dynamic configuration files can be utilized to modify the behavior and suppress or disable this feature for an application that should not be the primary application launched.

### AppPath

The AppPath extension point supports calling App-V applications directly from the operating system. Administrators can provide access to App-V applications from operating system commands or scripts without calling the specific path to the executable from either the Run or Start Screen, depending on the operating system. It therefore avoids modifying the system path environment variable on all systems, as it is accomplished during publishing.

The AppPath extension point is configured either in the manifest or in the dynamic configuration files and is stored in the registry on the local machine during publishing for the user. For additional information on AppPath review: [App Paths - A Virtual Application Extension in App-V 5.0](https://blogs.technet.microsoft.com/virtualworld/2012/12/12/app-paths-a-virtual-application-extension-in-app-v-5-0/).

### Virtual application

This subsystem provides a list of applications captured during sequencing which is usually consumed by other App-V components. Integration of extension points belonging to a specific application can be disabled using dynamic configuration files. For example, if a package contains two applications, you can disable all extension points belonging to one application to only allow integration of extension points for the other application.

### Extension point rules

The previously described extension points are integrated into the operating system based on how the packages has been published. Global publishing places extension points in public machine locations, where user publishing places extension points in user locations. For example, a shortcut created on the desktop and published globally will result in the file data for the shortcut (%Public%\\Desktop) and the registry data (HKLM\\Software\\Classes). The same shortcut would have file data (%UserProfile%\\Desktop) and registry data (HKCU\\Software\\Classes).

Extension points are not all published the same way, where some extension points will require global publishing and others require sequencing on the specific operating system and architecture where they are delivered. Below is a table that describes these two key rules.

|Virtual Extension|Requires target OS sequencing|Requires global publishing|
|---|:---:|:---:|
|Shortcut|||
|File Type Association|||
|URL Protocols|X||
|AppPaths|X||
|COM Mode|||
|Software Client|X||
|Application Capabilities|X|X|
|Context Menu Handler|X|X|
|Drag-and-drop Handler|X||
|Data Object Handler|X||
|Property Sheet Handler|X||
|Infotip Handler|X||
|Column Handler|X||
|Shell Extensions|X||
|Browser Helper Object|X|X|
|Active X Object|X|X|

## Dynamic configuration processing

Deploying App-V packages to a single machine or user is very simple. However, as organizations deploy App-V applications across business lines and geographic and political boundaries, it becomes impossible to sequence all applications with the same settings. App-V was designed to overcome this problem by capturing specific settings and configurations during sequencing in the Manifest file while also supporting modification with Dynamic Configuration files.

App-V dynamic configuration lets you specify a package policy at either the machine or user levels. Sequencing engineers can use Dynamic Configuration files to modify the configuration of a package post-sequencing to address the needs of individual groups of users or machines. In some instances, it may be necessary to modify the application to provide proper functionality within the App-V environment. For example, you may need to modify the \_\*config.xml files to allow certain actions to be performed at a specified time while executing the application, like disabling a mailto extension to prevent a virtualized application from overwriting that extension from another application.

App-V packages contain the Manifest file inside of the App-V Package file, which is representative of sequencing operations and is the policy of choice unless Dynamic Configuration files are assigned to a specific package. Post-sequencing, the Dynamic Configuration files can be modified to allow an application to be published to different desktops or users with different extension points. The two Dynamic Configuration files are the Dynamic Deployment Configuration (DDC) and Dynamic User Configuration (DUC) files. This section focuses on the combination of the manifest and dynamic configuration files.

### Examples of dynamic configuration files

The following example shows the combination of the Manifest, Deployment Configuration, and User Configuration files after publishing and during normal operation. These examples are abbreviated examples of each of the files. The purpose is show the combination of the files only, not to be a complete description of the specific categories available in each file. For more information, download the [App-V Sequencing Guide](https://www.microsoft.com/download/details.aspx?id=27760).

#### Manifest

```XML
<appv:Extension Category="AppV.Shortcut">
     <appv:Shortcut>
          <appv:File>[{Common Programs}]\7-Zip\7-Zip File Manager.lnk</appv:File>
          <appv:Target>[{AppVPackageRoot}]\7zFM.exe</appv:Target>
          <appv:Icon>[{AppVPackageRoot}]\7zFM exe.O.ico</appv:Icon>
     </appv:Shortcut>
</appv:Extension>
```

#### Deployment Configuration

```XML
<MachineConfiguration>
     <Subsystems>
          <Registry>
               <Include>
                    <Key Path= "\REGISTRY\Machine\Software\7zip">
                    <Value Type="REG_SZ" Name="Config" Data="1234"/>
                    </Key>
               </Include>
          </Registry>
     </Subsystems>
```

#### User Configuration

```XML
<UserConfiguration>
     <Subsystems>
<appv:ExtensionCategory="AppV.Shortcut">
     <appv:Shortcut>
          <appv:File>[{Desktop}]\7-Zip\7-Zip File Manager.lnk</appv:File>
          <appv:Target>[{AppVPackageRoot}]\7zFM.exe</appv:Target>
          <appv:Icon>[{AppVPackageRoot}]\7zFM exe.O.ico</appv:Icon>
     </appv:Shortcut>
</appv:Extension>
     </Subsystems>
<UserConfiguration>
     <Subsystems>
<appv:Extension Category="AppV.Shortcut">
     <appv:Shortcut>
          <appv:Fìle>[{Desktop}]\7-Zip\7-Zip File Manager.lnk</appv:File>
          <appv:Target>[{AppVPackageRoot}]\7zFM.exe</appv:Target>
          <appv:Icon>[{AppVPackageRoot}]\7zFM.exe.O.ico</appv:Icon>
     </appv:Shortcut>
     <appv:Shortcut>
          <appv:File>[{Common Programs}]\7-Zip\7-Zip File Manager.Ink</appv:File>
          <appv:Target>[{AppVPackageRoot}]\7zFM.exe</appv:Target>
          <appv:Icon>[{AppVPackageRoot)]\7zFM.exe.O.ico</appv: Icon>
     </appv:Shortcut>
</appv:Extension>
     </Subsystems>
<MachineConfiguration>
     <Subsystems>
          <Registry>
               <Include>
                    <Key Path="\REGISTRY\Machine\Software\7zip">
                    <Value Type=”REG_SZ" Name="Config" Data="1234"/>
               </Include>
          </Registry>
     </Subsystems>
```

## Side-by-side assemblies

App-V supports automatic packaging of side-by-side assemblies during sequencing and deployment on the client during virtual application publishing. App-V also supports capturing side-by-side assemblies during sequencing for assemblies not present on the sequencing machine. For assemblies consisting of Visual C++ (Version 8 and newer) or MSXML run-time, the Sequencer will automatically detect and capture these dependencies even if they weren't installed during monitoring.

The side-by-side assemblies feature removes the limitations of previous versions of App-V, where the App-V Sequencer did not capture assemblies already present on the sequencing workstation, and privatized the assemblies, which limited it to one bit version per package. This behavior resulted in App-V applications being deployed to clients missing the required side-by-side assemblies, which led to application launch failures. This forced the packaging process to document and ensure that all assemblies required for packages were locally installed on the user’s client operating system. This task was both a management and implementation challenge due to the number of assemblies and the lack of application documentation for the required dependencies.

Side-by-side assembly support in App-V has the following features:

- Automatic captures of side-by-side assembly during sequencing, regardless of whether the assembly was already installed on the sequencing workstation.
- The App-V Client automatically installs required side-by-side assemblies to the client computer at publishing time if they aren't already installed.
- The Sequencer reports the VC run-time dependency in Sequencer reporting mechanism.
- The Sequencer allows opting to not package assemblies already installed on the Sequencer, supporting scenarios where the assemblies have previously been installed on the target computers.

### Automatic publishing of side-by-side assemblies

During publishing of an App-V package with side-by-side assemblies, the App-V Client will check for the presence of the assembly on the machine. If it doesn't detect an assembly, the client will deploy the assembly to the machine. Packages that are part of connection groups will rely on the side-by-side assembly installations in the base packages, as the connection groups don't contain any information about assembly installation.

>[!NOTE]
>Unpublishing or removing a package with an assembly does not remove the assemblies for that package.

## Client logging

The App-V Client logs information to the Windows Event log in standard ETW format. The specific App-V events can be found in the event viewer under **Applications and Services Logs\\Microsoft\\AppV\\Client**.

There are three specific categories of events recorded:

- **Admin** logs events for configurations applied to the App-V Client and also contains the primary warnings and errors.
- **Operational** logs the general App-V execution and usage of individual components, creating an audit log of the App-V Client's completed App-V operations.
- **Virtual Application** logs virtual application launches and use of virtualization subsystems.



