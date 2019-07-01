---
ms.localizationpriority: medium
ms.mktglfcycl: support
description: Info about some of the known issues using the Internet Exporer Customization Wizard and a custom Internet Explorer install package.
author: lomayor
ms.author: lomayor
ms.prod: ie11
ms.assetid: 9e22cc61-6c63-4cab-bfdf-6fe49db945e4
ms.reviewer: 
manager: dansimp
title: Troubleshoot custom package and IEAK 11 problems (Internet Explorer Administration Kit 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Troubleshoot custom package and IEAK 11 problems
While the Internet Explorer Customization Wizard has been around for quite a while, there are still some known issues that you might encounter while deploying or managing your custom IE install package.

## I am unable to locate some of the wizard pages
The most common reasons you will not see certain pages is because:

-   **Your licensing agreement with Microsoft.** Your licensing agreement determines whether you install the **Internal** or **External** version of the Internet Explorer Customization Wizard, and there are different features available for each version. For info about which features are available for each version, see [Determine the licensing version and features to use in IEAK 11](licensing-version-and-features-ieak11.md).

-   **Your choice of operating system.** Depending on the operating system you picked from the **Platform Selection** page of the wizard, you might not see all of the pages. Some features aren’t available for all operating systems. For more information, see [Use the Platform Selection page in the IEAK 11 Wizard](platform-selection-ieak11-wizard.md).

-   **Your choice of features.** Depending on what you selected from the **Feature Selection** page of the wizard, you might not see all of the pages. You need to make sure that the features you want to customize are all checked. For more information, see [Use the Feature Selection page in the IEAK 11 Wizard](feature-selection-ieak11-wizard.md).

## Internet Explorer Setup fails on user's devices
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
<path>\ie11setup.exe /C:"ie11wzd.exe /S:""<path>\ie11setup.exe"" /L:""https://your_Web_server/your_Web_site/ie11sites.dat"""
```

Where `<path>` represents the folder location where you stored IE11setup.exe.

## Users cannot uninstall IE
If you cannot uninstall IE using **Uninstall or change a program** in the Control Panel, it could be because the uninstall information is not on the computer. To fix this issue, you should:

1.  Review the uninstall log file, IE11Uninst.log, located in the `C:\Windows` folder. This log file covers the entire uninstallation process, including every file change, every registry change, and any dialog boxes that are shown.

2.  Try to manually uninstall IE. Go to the backup folder, `<system_drive>:\Windows\$ie11$`, and run the uninstall file, `Spunist.exe`.

 
## The Internet Explorer Customization Wizard 11 does not work with user names that user double-byte character sets
The customization wizard does not work with user names that use double-byte character sets, such as Chinese or Japanese. To fix this, set the **TEMP** and **TMP** environmental variables to a path that does not use these characters (for example, C:\temp).

1.	Open **System Properties**, click the **Advanced** tab, and then click **Environmental Variables**.
2.	Click Edit, and then modify the **TEMP** and **TMP** environmental variables to a non-user profile directory.

 
## Unicode characters are not supported in IEAK 11 path names
While Unicode characters, such as Emoji, are supported for organization names and other branding items, you must not use Unicode characters in any paths associated with running the Internet Explorer Customization Wizard 11. This includes paths to your IEAK 11 installation and to the storage location for your custom packages after they're built.

## Internet Explorer branding conflicts when using both Unattend and IEAK 11 to customize Internet Explorer settings
Using both Unattend settings and an IEAK custom package to modify a user's version of Internet Explorer 11 might cause a user to lose personalized settings during an upgrade. For example, many manufacturers configure Internet Explorer using Unattend settings. If a user purchases a laptop, and then signs up for Internet service, their Internet Service Provider (ISP) might provide a version of Internet Explorer that has been branded (for example, with a custom homepage for that ISP) using Internet Explorer Customization Wizard 11. If that user later upgrades to a new version of Internet Explorer, the Unattend settings from the laptop manufacturer will be reapplied, overwriting any settings that the user configured for themselves (such as their homepage).


## IEAK 11 does not correctly apply the Delete all existing items under Favorites, Favorites Bar and Feeds option
The Internet Explorer Customization Wizard 11 does not correctly apply the **Delete all existing items under Favorites**, **Favorites Bar and Feeds** option, available on the **Browsing Options** page.

Selecting to include this feature in your customized Internet Explorer package enables the deletion of existing items in the **Favorites** and **Favorites Bar** areas, but it doesn't enable deletion in the **Feeds** area. In addition, this setting adds a new favorite, titled “Web Slice Gallery” to the **Favorites Bar**.

## F1 does not activate Help on Automatic Version Synchronization page
Pressing the **F1** button on the **Automatic Version Synchronization** page of the Internet Explorer Customization Wizard 11 does not display the **Help** page. Clicking the **Help** button enables you to open the Help system and view information about this page.

## Certificate installation does not work on IEAK 11
IEAK 11 doesn't install certificates added using the Add a Root Certificate page of the Internet Explorer Customization Wizard 11. Administrators can manually install certificates using the Certificates Microsoft Management Console snap-in (Certmgr.msc) or using the command-line tool, Certificate Manager (Certmgr.exe).

>[!NOTE]
>This applies only when using the External licensing mode of IEAK 11.

## The Additional Settings page appears in the wrong language when using a localized version of IEAK 11
When using IEAK 11 in other languages, the settings on the Additional Settings page appear in the language of the target platform, regardless of the IEAK 11 language.

>[!NOTE]
>This applies only when using the Internal licensing mode of IEAK 11.

To work around this issue, run the customization wizard following these steps:
1. On the **Language Selection** page, select the language that matches the language of your installed IEAK 11.
2. Click **Next**, and then click **Synchronize** on the Automatic Version Synchronization page. 
3. After synchronization is complete, cancel the wizard.
4. Repeat these steps for each platform on the Platform Selection page.

After performing these steps, you must still do the following each time you synchronize a new language and platform:
1. Open File Explorer to the Program Files\Windows IEAK 11 or Program Files (x86)\Windows IEAK 11 folder.
2. Open the **Policies** folder, and then open the appropriate platform folder.
3. Copy the contents of the matching-language folder into the new language folder.

After completing these steps, the Additional Settings page matches your wizard’s language.

## Unable to access feeds stored in a subfolder
Adding feeds using the **Favorites**, **Favorites Bar**, and **Feeds** page of the Internet Explorer 11 Customization Wizard requires that the feeds be stored in a single folder. Creating two levels of folders, and creating the feed in the subfolder, causes the feed to fail.
