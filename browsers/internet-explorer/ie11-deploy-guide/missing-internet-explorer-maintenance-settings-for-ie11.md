---
ms.localizationpriority: medium
ms.mktglfcycl: support
description: IEM-configured settings have been deprecated for Internet Explorer 10 and newer. Use this topic to learn where to go to fix the affected settings through Group Policy Preferences, Administrative Templates (.admx), or the IEAK.
author: lomayor
ms.prod: ie11
ms.assetid: 89084e01-4e3f-46a6-b90e-48ee58d6821c
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: lomayor
title: Missing Internet Explorer Maintenance settings for Internet Explorer 11 (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Missing Internet Explorer Maintenance settings for Internet Explorer 11

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

The Internet Explorer Maintenance (IEM) settings have been deprecated in favor of Group Policy Preferences, Administrative Templates (.admx), and the IE Administration Kit 11 (IEAK 11).

Because of this change, your IEM-configured settings will no longer work on computers running Internet Explorer 10 or newer. To fix this, you need to update the affected settings using Group Policy Preferences, Administrative Templates (.admx), or IE Administration Kit 11 (IEAK 11).

Because Group Policy Preferences and IEAK 11 run using asynchronous processes, you should choose to use only one of the tools within each group of settings. For example, using only IEAK 11 in the **Security** settings or Group Policy Preferences within the **Internet Zone** settings. Also, it's important to remember that policy is enforced and can't be changed by the user, while preferences are configured, but can be changed by the user.

For more information about all of the new options and Group Policy, see:

-   [Group policy preferences and Internet Explorer 11](group-policy-preferences-and-ie11.md)

-   [Administrative templates and Internet Explorer 11](administrative-templates-and-ie11.md)

-   [Internet Explorer Administration Kit 11 (IEAK 11) - Administration Guide for IT Pros](../ie11-ieak/index.md)

-   [Group Policy Settings Reference for Windows and Windows Server](https://go.microsoft.com/fwlink/p/?LinkId=279876)

-   [Group Policy ADMX Syntax Reference Guide](https://go.microsoft.com/fwlink/p/?LinkId=276830)

-   [Enable and Disable Settings in a Preference Item](https://go.microsoft.com/fwlink/p/?LinkId=282671)

## IEM replacements
The IEM settings have replacements you can use in either Group Policy Preferences or IEAK 11.

### Browser user interface replacements

|IEM setting |Description |Replacement tool |
|------------|------------|-----------------|
|Browser title |Lets you customize the text that shows up in the title bar of the browser.|On the **Browser User Interface** page of IEAK 11, click **Customize Title Bars**, and then type the text that appears on the title bar of the **Title Bar Text** box.<p>Your text is appended to the text," Microsoft Internet Explorer provided by". |
|Browser toolbar customizations (background and buttons) |Lets you customize the buttons on the browser toolbar.<ul><li>**Buttons.** Customizes the buttons on the Internet Explorer 11 toolbar.</li><li>**Background.** No longer available.</li></ul> |On the **Browser User Interface** page of IEAK 11, click **Add**, type your new toolbar caption, action, and icon, and if the button should appear by default, and then click **OK**. You can also edit, remove, or delete an existing toolbar button from this page. |
|Custom logo and animated bitmaps |Lets you replace the static and animated logos in the upper-right corner of the IE window with customized logos. |This setting isn't available anymore. |


### Connection replacements

|IEM setting |Description |Replacement tool |
|------------|------------|-----------------|
|Connection settings|Lets you import your connection settings from a previously set up computer. These settings define how your employees interact with the connection settings on the **System Polices and Restrictions** page. You can also remove old dial-up connections settings from your employee's computers.|In the **Internet Settings Group Policy Preferences** dialog box, click the **Connections** tab, and set up your proxy settings.<p>-OR-<p>On the **Connection Settings** page of IEAK 11, change your connection settings, including importing your current connection settings and deleting existing dial-up connection settings (as needed). |
|Automatic browser configuration |Lets you update your employee's computer after you've deployed IE11, by specifying a URL to an .ins file, an auto-proxy URL, or both. You can decide when the update occurs, in minutes. Typing zero, or not putting in any number, means that automatic configuration only happens after the browser is started and used to go to a page. |In the **Internet Settings Group Policy Preferences** dialog box, click the **Automatic Configuration** tab, and then add your URL.<p>On the **Automatic Configuration** page of IEAK 11, modify the configuration settings, including providing the URL to an .ins file or an auto-proxy site. |
|Proxy settings |Lets you specify your proxy servers. |In the **Internet Settings Group Policy Preferences** dialog box, click the **Connections** tab, click **LAN Settings**, and then choose whether to turn on automatic detection of your configuration settings and if you want to use proxy servers.<p>-OR-<p>On the **Proxy Settings** page of IEAK 11, turn on your proxy settings, adding your proxy server addresses and exceptions. |
|User Agent string |Lets the browser provide identification to visited servers. This string is often used to keep Internet traffic statistics. |This setting isn't available anymore. |
 
### URLs replacements

|IEM setting |Description |Replacement tool |
|------------|------------|-----------------|
|Favorites and links |Lets you use custom URLs for the **Favorites** and **Links** folders. You can also specify the folder order, disable IE Suggested Sites, and import an existing folder structure. |On the **Favorites, Favorites Bar and Feeds** page of IEAK 11, add your custom URLs to the **Favorites**, **Favorites Bar**, or **RSS Feeds** folders, or create new folders.<p>You can also edit, test, or remove your URLs, sort the list order, or disable IE Suggested Sites. |
|Important URLs |Lets you add custom **Home** pages that can open different tabs. You can also add a **Support** page that shows up when an employee clicks online Help.|In the **Internet Settings Group Policy Preferences** dialog box, click the **General** tab, and add your custom **Home** page.<p>On the **Important URLs - Home page and Support** page of IEAK 11, add the custom URLs to your **Home** and **Support** pages.<p>You can also click to retain the previous home page information when the user upgrades to a newer version of IE. |

### Security Zones and Content Ratings

|IEM setting |Description |Replacement tool |
|------------|------------|-----------------|
|Security zones |Lets you change your security settings, by zone |In the **Internet Settings Group Policy Preferences** dialog box, click the **Security** tab, and update your security settings, based on zone.<p>-OR-<p>On the **Security and Privacy Settings** page of IEAK 11, choose your **Security Zones and Privacy** setting, changing it, as necessary. |
|Content ratings |Lets you change your content ratings so your employees can't view sites with risky content. |On the **Security and Privacy Settings** page of IEAK 11, choose your **Content Ratings** setting, changing it, as necessary. |
|Authenticode settings |Lets you pick your trustworthy software publishers and stop your employees from adding new, untrusted publishers while browsing. |These settings aren't available anymore. |

### Programs

|IEM setting |Description |Replacement tool |
|------------|------------|-----------------|
|Programs |Lets you import your default program settings, which specify the programs Windows uses for each Internet service. |In the **Internet Settings Group Policy Preferences** dialog box, click the **Programs** tab, and choose how to open IE11 links.<p>-OR-<p>On the **Programs** page of IEAK 11, choose whether to customize or import your program settings. |

#### Advanced IEM settings
The Advanced IEM settings, including Corporate and Internet settings, were also deprecated. However, they also have replacements you can use in either Group Policy Preferences or IEAK 11.

**Note**<br>Advanced IEM Settings were shown under **Programs** and only available when running in **Preference** mode.

|IEM setting |Description |Replacement tool |
|------------|------------|-----------------|
|Corporate settings |Specifies the location of the file with the settings you use to make IE work best in your organization. |On the <b>Additional Settings</b> page of IEAK 11, expand <b>Corporate Settings</b>, and then customize how your organization handles temporary Internet files, code downloads, menu items, and toolbar buttons. |
|Internet settings |Specifies the location of the file that includes your default IE settings. |In the <b>Internet Settings Group Policy Preferences</b> dialog box, click the <b>Advanced</b> tab, and then update your Internet-related settings, as required<p>-OR-<p>On the <b>Additional Settings</b> page of IEAK 11, expand <b>Internet Settings</b>, and then customize your default values in the <b>Internet Options</b> dialog box. |

