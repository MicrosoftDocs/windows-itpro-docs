---
description: Info about some of the known issues using the Internet Exporer Customization Wizard and a custom Internet Explorer install package.
ms.assetid: 9e22cc61-6c63-4cab-bfdf-6fe49db945e4
author: eross-msft
ms.prod: ie11
ms.mktglfcycl: support
ms.sitesec: library
title: Troubleshoot custom package and IEAK 11 problems (Internet Explorer Administration Kit 11 for IT Pros)
---

# Troubleshoot custom package and IEAK 11 problems
While the Internet Explorer Customization Wizard has been around for quite a while, there are still some known issues that you might encounter while deploying or managing your custom IE install package.

## I can’t locate some of the wizard pages
The most common reasons you won’t see certain pages is because:

-   **Your licensing agreement with Microsoft.** Your licensing agreement determines whether you install the **Internal** or **External** version of the Internet Explorer Customization Wizard, and there are different features available for each version. For info about which features are available for each version, see [Determine the licensing version and features to use in IEAK 11](licensing-version-and-features-ieak11.md).

-   **Your choice of operating system.** Depending on the operating system you picked from the **Platform Selection** page of the wizard, you might not see all of the pages. Some features aren’t available for all operating systems. For more information, see [Use the Platform Selection page in the IEAK 11 Wizard](platform-selection-ieak11-wizard.md).

-   **Your choice of features.** Depending on what you selected from the **Feature Selection** page of the wizard, you might not see all of the pages. You need to make sure that the features you want to customize are all checked. For more information, see [Use the Feature Selection page in the IEAK 11 Wizard](feature-selection-ieak11-wizard.md).

## Internet Explorer Setup fails on employee devices
Various issues can cause problems during Setup, including missing files, trust issues, or URL monikers. You can troubleshoot these issues by reviewing the Setup log file, located at `IE11\_main.log` from the **Windows** folder (typically, `C:\Windows`). The log file covers the entire Setup process from the moment IE11Setup.exe starts until the last .cab file finishes, providing error codes that you can use to help determine the cause of the failure.

### Main.log file codes

|Code |Description |
|-----|------------|
|0 |Initializing, making a temporary folder, and checking disk space. |
|1 |Checking for all dependencies. |
|2 |Downloading files from the server. |
|3 |Copying files from download location to the temporary installation folder. |
|4 |Restarting download and retrying Setup, because of a time-out error or other download error. |
|5 |Checking trust and checking permissions. |
|6 |Extracting files. |
|7 |Running Setup program (an .inf or .exe file). |
|8 |Installation is finished. |
|9 |Download finished, and all files are downloaded. |

### Main.log error codes

|Code |Description |
|-----|------------|
|80100003 |Files are missing from the download folder during installation. |
|800bxxxx |An error code starting with 800b is a trust failure. |
|800Cxxxx |An error code starting with 800C is a Urlmon.dll failure. |


## Internet Explorer Setup connection times out
Internet Explorer Setup can switch servers during the installation process to maintain maximum throughput or to recover from a non-responsive download site (you receive less than 1 byte in 2 minutes). If the connection times out, but Setup is able to connect to the next download site on the list, your download starts over. If however the connection times out and Setup can’t connect to a different server, it’ll ask if you want to stop the installation or try again.

To address connection issues (for example, as a result of server problems) where Setup can’t locate another download site by default, we recommend you overwrite your first download server using this workaround:

``` syntax
<path>\ie11setup.exe /C:"ie11wzd.exe /S:""<path>\ie11setup.exe"" /L:""http://your_Web_server/your_Web_site/ie11sites.dat"""
```

Where `<path>` represents the folder location where you stored IE11setup.exe.

## Employees can’t uninstall IE
If you can’t uninstall IE using **Uninstall or change a program** in the Control Panel, it could be because the uninstall information isn’t on the computer. To fix this issue, you should:

1.  Review the uninstall log file, IE11Uninst.log, located in the `C:\Windows` folder. This log file covers the entire uninstallation process, including every file change, every registry change, and any dialog boxes that are shown.

2.  Try to manually uninstall IE. Go to the backup folder, `<system_drive>:\Windows\$ie11$`, and run the uninstall file, `Spunist.exe`.

 

 





