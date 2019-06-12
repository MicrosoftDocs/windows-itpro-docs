---
title: Release Notes for App-V 5.1
description: Release Notes for App-V 5.1
author: msfttracyp
ms.assetid: 62c5be3b-0a46-4512-93ed-97c23184f343
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 09/26/2016
---


# Release Notes for App-V 5.1


The following are known issues in Microsoft Application Virtualization (App-V) 5.1.

## Error occurs during publishing refresh between App-V 5.0 SP3 Management Server and App-V 5.1 Client on Windows 10


An error is generated during publishing refresh when synchronizing packages from the App-V 5.0 SP3 management server to an App-V 5.1 client on Windows 10 . This error occurs because the App-V 5.0 SP3 server does not understand the Windows 10 operating system that is specified in the publishing URL. The issue is fixed for App-V 5.1 publishing server, but is not backported to versions of App-V 5.0 SP3 or earlier.

**Workaround**: Upgrade the App-V 5.0 Management server to the App-V 5.1 Management server for Windows 10 Clients.

## Custom configurations do not get applied for packages that will be published globally if they are set using the App-V 5.1 Server


If you assign a package to an AD group that contains machine accounts and apply a custom configuration to that group using the App-V Server, the custom configuration will not be applied to those machines. The App-V 5.1 Client will publish packages assigned to a machine account globally. However, it stores custom configuration files per user in each user’s profile. Globally published packages will not have access to this custom configuration.

**Workaround**: Do one of the following:

-   Assign the package to groups containing only user accounts. This will ensure that the package’s custom configuration will be stored in each user’s profile and will be applied correctly.

-   Create a custom deployment configuration file and apply it to the package on the client using the Add-AppvClientPackage cmdlet with the –DynamicDeploymentConfiguration parameter. See [About App-V 5.1 Dynamic Configuration](about-app-v-51-dynamic-configuration.md) for more information.

-   Create a new package with the custom configuration using the App-V 5.1 Sequencer.

## Server files not deleted after new App-V 5.1 Server installation


If you uninstall the App-V 5.0 SP1 Server and then install the App-V 5.1 Server, the installation fails, the wrong version of the Management server is installed, and an error message is returned. The issue occurs because the Server files are not being deleted when you uninstall App-V 5.0 SP1, so the installation process does an upgrade instead of a new installation.

**Workaround**: Delete this registry key before you start installing App-V 5.1:

Under HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall, locate and delete the installation GUID key that contains the DWORD value "DisplayName" with value data "Microsoft Application Virtualization (App-V) Server". This is the only key that should be deleted.

## File type associations added manually are not saved correctly


File type associations added to an application package manually using the Shortcuts and FTAs tab at the end of the application upgrade wizard are not saved correctly. They will not be available to the App-V Client or to the Sequencer when updating the saved package again.

**Workaround**: To add a file type association, open the package for modification and run the update wizard. During the Installation step, add the new file type association through the operating system. The sequencer will detect the new association in the system registry and add it to the package’s virtual registry, where it will be available to the client.

## When streaming packages in Shared Content Store (SCS) mode to a client that is also managed with AppLocker, additional data is written to the local disk.


To decrease the amount of data written to a client’s local disk, you can enable SCS mode on the App-V 5.1 Client to stream the contents of a package on demand. However, if AppLocker manages an application within the package, some data might be written to the client’s local disk that would not otherwise be written.

**Workaround**: None

## In the Management Console Add Package dialog box, the Browse button is not available when using Chrome or Firefox


On the Packages page of the Management Console, if you click **Add or Upgrade** in the lower-right corner, the **Add Package** dialog box appears. If you are accessing the Management Console using Chrome or Firefox as your browser, you will not be able to browse to the location of the package.

**Workaround**: Type or copy and paste the path to the package into the **Add Package** input field. If the Management Console has access to this path, you will be able to add the package. If the package is on a network share, you can browse to the location using File Explorer by doing these steps:

1.  While pressing **Shift**, right-click on the package file

2.  Select **Copy as path**

3.  Paste the path into the **Add Package** dialog box input field

## <a href="" id="upgrading-app-v-management-server-to-5-1-sometimes-fails-with-the-message--a-database-error-occurred-"></a>Upgrading App-V Management Server to 5.1 sometimes fails with the message “A database error occurred”


If you install the App-V 5.0 SP1 Management Server, and then try to upgrade to App-V 5.1 Server when multiple connection groups are configured and enabled, the following error is displayed: “A database error occurred. Reason: 'Invalid column name 'PackageOptional'. Invalid column name 'VersionOptional'.”

**Workaround**: Run this command on your SQL database:

`ALTER TABLE AppVManagement.dbo.PackageGroupMembers ADD PackageOptional bit NOT NULL DEFAULT 0, VersionOptional bit NOT NULL DEFAULT 0`

where “AppVManagement” is the name of the database.

## Users cannot open a package in a user-published connection group if you add or remove an optional package


In environments that are running the RDS Client or that have multiple concurrent users per computer, logged-in users cannot open applications in packages that are in a user-published connection group if an optional package is added to or removed from the connection group.

**Workaround**: Have users log out and then log back in.

## Error message is erroneously displayed when the connection group is published only to the user


When you run Repair-AppvClientConnectionGroup, the following error is displayed, even when the connection group is published only to the user: “Internal App-V Integration error: Package not integrated for the user. Please ensure that the package is added to the machine and published to the user.”

**Workaround**: Do one of the following:

-   Publish all packages in a connection group.

    The problem arises when the connection group being repaired has packages that are missing or not available to the user (that is, not published globally or to the user). However, the repair will work if all of the connection group’s packages are available, so ensure that all packages are published.

-   Repair packages individually using the Repair-AppvClientPackage command rather than the Repair-AppvClientConnectionGroup command.

    Determine which packages are available to users and then run the Repair-AppvClientPackage command once for each package. Use PowerShell cmdlets to do the following:

    1.  Get all the packages in a connection group.

    2.  Check to see if each package is currently published.

    3.  If the package is currently published, run Repair-AppvClientPackage on that package.

## Icons not displayed properly in Sequencer


Icons in the Shortcuts and File Type Associations tab are not displayed correctly when modifying a package in the App-V Sequencer. This problem occurs when the size of the icons are not 16x16 or 32x32.

**Workaround**: Only use icons that are 16x16 or 32x32.

## InsertVersionInfo.sql script no longer required for the Management Database


The InsertVersionInfo.sql script is not required for versions of the App-V management database later than App-V 5.0 SP3.

The Permissions.sql script should be updated according to **Step 2** in [KB article 3031340](https://support.microsoft.com/kb/3031340).

**Important**  
**Step 1** is not required for versions of App-V later than App-V 5.0 SP3.

 

## Microsoft Visual Studio 2012 not supported


App-V 5.1 does not support Visual Studio 2012.

**Workaround**: None

## Application filename restrictions for App-V 5.x Sequencer


The App-V 5.x Sequencer cannot sequence applications with filenames matching "CO_&lt;x&gt;" where x is any numeral. Error 0x8007139F will be generated.

**Workaround**: Use a different filename

## Intermittent "File Not Found" error when Mounting a Package


Occassionally when mounting a package, a "File Not Found" (0x80070002) error is generated. Typically, this occurs when a folder in an App-V package contains many files ( i.e. 20K or more). This can cause streaming to take longer than expected and to time out which generates the "File Not Found" error.

**Workaround**: Starting with HF06, a new registry key has been introduced to enable extending this time-out period.

<table>
<colgroup>
<col width="20%" />
<col width="80%" />
</colgroup>
<tbody>
<tr>
<td align="left">Path</td>
<td align="left">HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\AppV\Client\Streaming</td>
</tr>
<tr>
<td align="left">Setting</td>
<td align="left">StreamResponseWaitTimeout</td>
</tr>
<tr>
<td align="left">DataType</td>
<td align="left">DWORD</td>
</tr>
<tr>
<td align="left">Units</td>
<td align="left">Seconds</td>
</tr>
<tr>
<td align="left">Default</td>
<td align="left">5<br />
<strong>Note</strong>: this value is the default if the registry key is not defined or a value &lt;=5 is specified.
</td>
</tr>
</tbody>
</table>






## Related topics


[About App-V 5.1](about-app-v-51.md)

 

 





