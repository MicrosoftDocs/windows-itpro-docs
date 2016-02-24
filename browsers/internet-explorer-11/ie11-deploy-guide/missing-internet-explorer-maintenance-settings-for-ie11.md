---
Description: 'The Internet Explorer Maintenance (IEM) settings have been deprecated in favor of Group Policy Preferences, Administrative Templates (.admx), and the IE Administration Kit 11 (IEAK 11).Because of this change, your IEM-configured settings will no longer work on computers running Internet Explorer 10 or newer. To fix this, you need to update the affected settings using Group Policy Preferences, Administrative Templates (.admx), or IE Administration Kit 11 (IEAK 11).Because Group Policy Preferences and IEAK 11 run using asynchronous processes, you should choose to use only one of the tools within each group of settings. For example, using only IEAK 11 in the Security settings or Group Policy Preferences within the Internet Zone settings. Also, it''s important to remember that policy is enforced and can''t be changed by the user, while preferences are configured, but can be changed by the user.'
MS-HAID: 'p\_ie11deploy.missing\_internet\_explorer\_maintenance\_settings\_for\_internet\_explorer\_11'
MSHAttr: 'PreferredLib:/library'
title: Missing Internet Explorer Maintenance settings for Internet Explorer 11
---

# Missing Internet Explorer Maintenance settings for Internet Explorer 11


**Last updated**

-   November 12, 2015

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

-   [Administrative templates and Internet Explorer 11](aadministrative-templates-and-ie11.md)

-   [IEAK 11 - Internet Explorer Administration Kit 11 Guide](http://go.microsoft.com/fwlink/p/?linkid=327741)

-   [Group Policy Settings Reference for Windows and Windows Server](http://go.microsoft.com/fwlink/?LinkId=279876)

-   [Group Policy ADMX Syntax Reference Guide](http://go.microsoft.com/fwlink/?LinkId=276830)

-   [Enable and Disable Settings in a Preference Item](http://go.microsoft.com/fwlink/?LinkId=282671)

## IEM replacements


The IEM settings have replacements you can use in either Group Policy Preferences or IEAK 11.

IEM setting
Description
Replacement tool
**Browser User Interface**

Browser title

Lets you customize the text that shows up in the title bar of the browser.

On the **Browser User Interface** page of IEAK 11, click **Customize Title Bars**, and then type the text that appears on the title bar of the **Title Bar Text** box.

Your text is appended to the text," Microsoft Internet Explorer provided by".

Browser toolbar customizations (background and buttons)

Lets you customize the buttons on the browser toolbar.

-   **Buttons.** Customizes the buttons on the Internet Explorer 11 toolbar.

-   **Background.** No longer available.

On the **Browser User Interface** page of IEAK 11, click **Add**, type your new toolbar caption, action, and icon, and if the button should appear by default, and then click **OK**. You can also edit, remove, or delete an existing toolbar button from this page.

**Important**  
This setting isn't available anymore.

 

Custom logo and animated bitmaps

Lets you replace the static and animated logos in the upper-right corner of the IE window with customized logos.

**Important**  
This setting isn't available anymore.

 

**Connection**

Connection settings

Lets you import your connection settings from a previously set up computer. These settings define how your employees interact with the connection settings on the **System Polices and Restrictions** page. You can also remove old dial-up connections settings from your employee's computers.

In the **Internet Settings Group Policy Preferences** dialog box, click the **Connections** tab, and set up your proxy settings.

-or-

On the **Connection Settings** page of IEAK 11, change your connection settings, including importing your current connection settings and deleting existing dial-up connection settings (as needed).

Automatic browser configuration

Lets you update your employee's computer after you've deployed IE11, by specifying a URL to an .ins file, an auto-proxy URL, or both. You can decide when the update occurs, in minutes. Typing zero, or not putting in any number, means that automatic configuration only happens after the browser is started and used to go to a page.

In the **Internet Settings Group Policy Preferences** dialog box, click the **Automatic Configuration** tab, and then add your URL.

On the **Automatic Configuration** page of IEAK 11, modify the configuration settings, including providing the URL to an .ins file or an auto-proxy site.

Proxy settings

Lets you specify your proxy servers.

In the **Internet Settings Group Policy Preferences** dialog box, click the **Connections** tab, click **LAN Settings**, and then choose whether to turn on automatic detection of your configuration settings and if you want to use proxy servers.

-or-

On the **Proxy Settings** page of IEAK 11, turn on your proxy settings, adding your proxy server addresses and exceptions.

User Agent string

Lets the browser provide identification to visited servers. This string is often used to keep Internet traffic statistics.

This setting isn't available anymore.

**Important**  
This setting isn't available anymore.

 

**URLs**

Favorites and links

Lets you use custom URLs for the **Favorites** and **Links** folders. You can also specify the folder order, disable IE Suggested Sites, and import an existing folder structure.

On the **Favorites, Favorites Bar and Feeds** page of IEAK 11, add your custom URLs to the **Favorites**, **Favorites Bar**, or **RSS Feeds** folders, or create new folders.

You can also edit, test, or remove your URLs, sort the list order, or disable IE Suggested Sites.

Important URLs

Lets you add custom **Home** pages that can open different tabs. You can also add a **Support** page that shows up when an employee clicks online Help.

In the **Internet Settings Group Policy Preferences** dialog box, click the **General** tab, and add your custom **Home** page.

On the **Important URLs - Home page and Support** page of IEAK 11, add the custom URLs to your **Home** and **Support** pages.

You can also click to retain the previous home page information when the user upgrades to a newer version of IE.

**Security Zones and Content Ratings**

Security zones

Lets you change your security settings, by zone.

In the **Internet Settings Group Policy Preferences** dialog box, click the **Security** tab, and update your security settings, based on zone.

-or-

On the **Security and Privacy Settings** page of IEAK 11, choose your **Security Zones and Privacy** setting, changing it, as necessary.

Content ratings

Lets you change your content ratings so your employees can't view sites with risky content.

On the **Security and Privacy Settings** page of IEAK 11, choose your **Content Ratings** setting, changing it, as necessary.

Authenticode settings

Lets you pick your trustworthy software publishers and stop your employees from adding new, untrusted publishers while browsing.

**Important**  
These settings aren't available anymore.

 

**Programs**

Programs

Lets you import your default program settings, which specify the programs Windows uses for each Internet service.

In the **Internet Settings Group Policy Preferences** dialog box, click the **Programs** tab, and choose how to open IE11 links.

-or-

On the **Programs** page of IEAK 11, choose whether to customize or import your program settings.

 

The Advanced IEM settings, including Corporate and Internet settings, were also deprecated. However, they also have replacements you can use in either Group Policy Preferences or IEAK 11.

**Note**  
Advanced IEM Settings were shown under **Programs** and only available when running in **Preference** mode.

 

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">IEM setting</th>
<th align="left">Description</th>
<th align="left">New tool</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Corporate settings</p></td>
<td align="left"><p>Specifies the location of the file with the settings you use to make IE work best in your organization.</p></td>
<td align="left"><p>On the <strong>Additional Settings</strong> page of IEAK 11, expand <strong>Corporate Settings</strong>, and then customize how your organization handles temporary Internet files, code downloads, and menu items and toolbar buttons.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Internet settings</p></td>
<td align="left"><p>Specifies the location of the file that includes your default IE settings.</p></td>
<td align="left"><p>In the <strong>Internet Settings Group Policy Preferences</strong> dialog box, click the <strong>Advanced</strong> tab, and then update your Internet-related settings, as required</p>
<p>-or-</p>
<p>On the <strong>Additional Settings</strong> page of IEAK 11, expand <strong>Internet Settings</strong>, and then customize your default values in the <strong>Internet Options</strong> dialog box.</p></td>
</tr>
</tbody>
</table>

 

 

 



