---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: Reference about the command-line options and return codes for Internet Explorer Setup.
author: lomayor
ms.prod: ie11
ms.assetid: 40c23024-cb5d-4902-ad1b-6e8a189a699f
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: lomayor
title: Internet Explorer Setup command-line options and return codes (Internet Explorer Administration Kit 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Internet Explorer Setup command-line options and return codes
You can use command-line options along with a tool like IExpress to package your custom version of Internet Explorer and to perform a batch installation across your organization.

## IE Setup command-line options
These command-line options work with IE Setup:

`[/help] [/passive | /quiet] [/update-no] [/no-default] [/nobackup] [/ieak-full:<path> | /ieak-branding: <path>] [/norestart | /forcerestart] [/log: <path>`

|Parameter (Setup modes) |Description                                                                                      |
|------------------------|-------------------------------------------------------------------------------------------------|
|`/passive`              |Runs the install without requiring input from the employee, showing progress and error messages. |
|`/quiet`                |Identical to `/passive`, but doesn't show any of the progress or error messages to the employee. |
<p>

|Parameter (Setup options) |Description                                                                                      |
|--------------------------|-------------------------------------------------------------------------------------------------|
|`/update-no`              |Doesn't look for Internet Explorer updates.                                                      |
|`/no-default`             |Doesn't make Internet Explorer the default browser.                                              |
|`/no-backup`              |Doesn't back up the files necessary to uninstall IE.                                             |
|`/ieak-full`              |Reserved for use by the IEAK 11.                                                                 |
|`/ieak-branding`          |Reserved for use by the IEAK 11.                                                                 |
<p>

|Parameter (Restart options) |Description                                 |
|----------------------------|--------------------------------------------|
|`/norestart`                |Doesn't restart after installation.         |
|`/forcerestart`             |Restarts after installation.                |
<p>

|Parameter (miscellaneous options) |Description                                 |
|----------------------------------|--------------------------------------------|
|`/help`          |Provides help info. Can't be used with any other option.     |
|`/log <path>`    |Creates a log file about the installation process, at the specified location. |


## Windows Setup return and status codes
Windows Setup needs to tell you whether IE successfully installed. However, because IE11wzd.exe is packaged inside your IE11setup.exe file, the return codes can’t be sent directly back to you. Instead, Setup needs to return the information (both success and failure) to the `HKEY_LOCAL_MACHINE\Software\Microsoft\Active Setup\InstallInfo` registry branch.

|Subkey   |Data type |Value                                  |
|---------|----------|---------------------------------------|
|Complete         |String    |0 = Success                                                    |
|Complete         |String    |0x80100003 = Files are missing for the requested installation. |
|Complete         |String    |0x80100001 = Setup partially succeeded. One or more components weren’t downloaded or installed. Check the **FailedComponents** subkey for the list of components. |
|Complete         |String   |0x80100002 = Setup partially succeeded, but the employee cancelled Setup. One or more components weren’t downloaded or installed.  Check the **FailedComponents** subkey for the list of components. |
|FailedComponents |MultiSZ  |`<Component_Name_from_CIFID>`Null`<Component_Name_from_CIFID>`Component1  |
|InstallStatus    |Binary   |0 = Install completed successfully. |
|InstallStatus    |Binary   |1 = Suspend Setup.<br>The employee cancelled Setup and is then asked to confirm:<ul><li>2 = No, don’t cancel. Resume Setup.</li><li>3 = Yes, cancel confirmed. Quit Setup as soon as possible.</li></ul><p>**Important**<br> If the cancellation is confirmed, Setup will quit as soon as all of the in-progress tasks are done, like copying or extracting files. |

## Related topics
- [IExpress Wizard for Windows Server 2008 R2 with SP1](iexpress-wizard-for-win-server.md)
- [Express Wizard command-line options](iexpress-command-line-options.md)

