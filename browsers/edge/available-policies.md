---
Description: Microsoft Edge works with Group Policy and Microsoft Intune to help you manage your organization's computer settings.
ms.assetid: 2E849894-255D-4F68-AE88-C2E4E31FA165
ms.prod: edge
ms.mktglfcycl: explore
ms.sitesec: library
title: Available policies for Microsoft Edge (Microsoft Edge for IT Pros)
---

# Available policies for Microsoft Edge

**Applies to:**

-   Windows 10
-   Windows 10 Mobile

Microsoft Edge works with Group Policy and Microsoft Intune to help you manage your organization's computer settings. Group Policy objects (GPO's) can include registry-based Administrative Template policy settings, security settings, software deployment information, scripts, folder redirection, and preferences.

By using Group Policy and Intune, you can set up a policy setting once, and then copy that setting onto many computers. For example, you can set up multiple security settings in a GPO that's linked to a domain, and then apply all of those settings to every computer in the domain.
<p>**Note**<br>For more info about Group Policy, see the [Group Policy TechCenter](http://go.microsoft.com/fwlink/p/?LinkId=214514). This site provides links to the latest technical documentation, videos, and downloads for Group Policy. For more info about the tools you can use to change your Group Policy objects, see the Internet Explorer 11 topics, [Group Policy and the Group Policy Management Console (GPMC)](http://go.microsoft.com/fwlink/p/?LinkId=617921), [Group Policy and the Local Group Policy Editor](http://go.microsoft.com/fwlink/p/?LinkId=617922), [Group Policy and the Advanced Group Policy Management (AGPM)](http://go.microsoft.com/fwlink/p/?LinkId=617923), and [Group Policy and Windows Powershell](http://go.microsoft.com/fwlink/p/?LinkId=617924).

 

## Group Policy settings

Microsoft Edge works with these Group Policy settings (`Computer Configuration\Administrative Templates\Windows Components\Microsoft Edge\`) to help you manage your company's web browser configurations:

| Policy name                                  | Description                   | Options                                                |
| -------------------------------------------- | ----------------------------- | ------------------------------------------------------- |
| Allow employees to send Do Not Track headers | Whether employees can send Do Not Track headers to websites that request tracking info. | **Enable:** Employees can send Do Not Track headers to websites requesting tracking info.<p> **Disable or not configured (default):** Stops employees from sending Do Not Track headers to websites requesting tracking info. |
| Turn off web content in new tab page | Decide what Microsoft Edge shows when opening a new tab. | **Enable or not configured (default):** Employees can see the new tab page with Top Sites, Top Sites with suggested content, or a blank page. <p> **Disable:** Employees see an empty tab and are unable to change the **Open new tabs with** setting. |
| Configure cookies | Decide how your company deals with cookies. | **Enable or not configured (default):** Lets you decide how your company treats cookies. If you use this option, you must also choose whether to <ul><li>**Allow all cookies (default)**. Allows all cookies from all websites</li><li>**Block all cookies**. Blocks all cookies from all websites.</li><li>**Block only 3rd-party cookies**. Blocks only cookies from 3rd-party websites.</li></ul><p> **Disable:** Allows all cookies from all websites. |
| Configure corporate Home pages | Choose which corporate Home pages should appear for domain-joined devices. | **Enable:** Configure corporate Home pages for domain-joined devices. If you use this option, you must also include site URLs.<p>**Example**<br>```<support.contoso.com><support.fabrikam.com>```<p>**Note**<br>You must use this format and the angle brackets if you have multiple pages.<p> **Disable or not configured (default):** Uses the corporate Home pages and URLs specified in the App settings. |  
| Configure the Enterprise Mode Site List | Whether your company uses Enterprise Mode and the Enterprise Mode Site List to address common compatibility problems with legacy apps. | **Enable:** Lets you use the Enterprise Mode Site List to address common compatibility problems with legacy apps, if it’s configured. If you use this option, you must also add the location to your site list in the **{URI}** box. When configured, any site on the list will always open in IE11.<p> **Disable or not configured:** You won't be able to use the Enterprise Mode Site List. |
| Configure Favorites | Decide what sites appear on the default **Favorites** list. | **Enable:** Configure the default list of **Favorite** sites for your employees. If you use this option, you must also add the actual names and URLs for the sites. <p> **Disable or not configured (default):** Uses the **Favorites** list names and URLs specified in the **Favorites** hub. |
| Don’t allow SmartScreen Filter warning overrides | Whether employees can override the SmartScreen Filter warnings about potentially malicious websites. | **Enable:** Stops employees from ignoring the SmartScreen Filter warnings and blocks them from visiting the site.<p> **Disable or not configured (default):** Lets employees ignore the SmartScreen Filter warnings about potentially malicious sites and continue to the site.<p>**Note**<br>You can also turn on the SmartScreen Filter, using the **Turn off the SmartScreen Filter** setting and stop employees from ignoring the SmartScreen Filter warnings about unverified file downloads, using the **Don’t allow SmartScreen Filter warning overrides for unverified files** setting. |
| Don’t allow SmartScreen Filter warning overrides for unverified files | Whether employees can override the SmartScreen Filter warnings about downloading unverified files. | **Enable:** Stops employees from ignoring the SmartScreen Filter warnings and stops them from downloading unverified files.<p>**Disable or not configured (default):** Lets employees ignore the SmartScreen Filter warnings about unverified files and lets them continue the download process. <p>**Note**<br>You can also turn on the SmartScreen Filter, using the **Turn off the SmartScreen Filter** setting and stop employees from ignoring the SmartScreen Filter warnings about potentially dangerous websites, using the **Don’t allow SmartScreen Filter warning overrides** setting. |
| Don't allow WebRTC to share the LocalHost IP address | Whether an employee’s LocalHost IP address shows while using the WebRTC protocol | **Enable:** Hides the LocalHost IP address while using the WebRTC protocol. <p> **Disable or not configured (default):** Shows the LocalHost IP address while using the WebRTC protocol. | 
| Send all intranet sites to IE11 | Whether your intranet sites should all open using IE11. <p> **Important:** This setting should only be used if there are known compatibility problems with Microsoft Edge. | **Enable:** Automatically opens all intranet sites using IE11. <p> **Disable or not configured (default):** Automatically opens all intranet sites using Microsoft Edge. |
| Turn off **Address** bar search suggestions | Whether search suggestions should appear in the **Address** bar of Microsoft Edge. | **Enable or not configured (default):** Employees can see search suggestions in the **Address** bar of Microsoft Edge. <p> **Disable:** Employees can’t see search suggestions in the **Address** bar of Microsoft Edge. |
| Turn off Autofill | Whether employees can use Autofill to automatically fill in form fields while using Microsoft Edge. | **Enable or not configured (default):** Employees can use Autofill to complete form fields. <p> **Disable:** Employees can’t use Autofill to complete form fields. |
| Turn off Developer Tools | Whether the F12 Developer Tools are available on Microsoft Edge. | **Enable or not configured (default):** Shows the F12 Developer Tools on Microsoft Edge. <p> **Disable:** Hides the F12 Developer Tools on Microsoft Edge. |
| Turn off InPrivate browsing | Whether employees can browse using InPrivate website browsing. | **Enable or not configured (default):** Lets employees use InPrivate browsing while on the corporate network. <p> **Disable:** Stops employees from using inPrivate browsing on the corporate network. |
| Turn off Password Manager | Whether employees can save their passwords locally, using Password Manager. | **Enable or not configured (default):** Employees can use Password Manager to save passwords locally. <p> **Disable:** Employees can't use Password Manager to save passwords locally. |
| Turn off Pop-up Blocker | Whether to turn on Pop-up Blocker and allow pop-ups to appear in secondary windows. | **Enable or not configured (default):** Turns on Pop-up Blocker, stopping pop-up windows. <p> **Disable:** Turns off Pop-up Blocker, allowing pop-up windows. |
|Turn off the SmartScreen Filter | Whether to turn on SmartScreen Filter to help protect your employees from potential phishing scams and malicious software. | **Enable or not configured (default):** Turns on SmartScreen Filter, providing warning messages to your employees about potential phishing scams and malicious software. <p> **Disable:** Turns off SmartScreen Filter.<p>**Note**<br>You can also stop employees from ignoring the SmartScreen Filter warnings about potentially dangerous websites, using the **Don’t allow SmartScreen Filter warning overrides** setting and stop employees from ignoring the SmartScreen Filter warnings about unverified file downloads, using the **Don’t allow SmartScreen Filter warning overrides for unverified files** setting. |

 

##  Using Microsoft Intune to manage your Mobile Data Management (MDM) settings for Microsoft Edge


If you manage your policies using Intune, you'll want to use these MDM policy settings. You can see the full list of available policies, on the [Policy CSP]( http://go.microsoft.com/fwlink/p/?LinkId=722885) page.

<p>**Note**<br>The **Supports** column uses these options:

-   **Desktop.** Supports Windows 10 Pro and Windows 10 Enterprise computers that are enrolled with Intune only.

-   **Mobile.** Supports Windows 10 Mobile devices only.

-   **Both.** Supports both desktop and mobile devices.

All devices must be enrolled with Intune if you want to use the Windows Custom URI Policy.

| Policy name                                  | Supports            | Details                                                 |
| -------------------------------------------- | --------------------| ------------------------------------------------------- |
| AllowAutofill                                | Desktop             | <ul><li>**URI full path.** ./Vendor/MSFT/Policy/Config/Browser/AllowAutofill</li><li>**Data type.** Integer</li><li>**Allowed values:**<ul><li>**0.** Employees can’t use Autofill to complete form fields.</li><li>**1 (default).** Employees can use Autofill to complete form fields.</li></ul></li></ul> |
| AllowBrowser                                 | Mobile              | <ul><li>**URI full path.** ./Vendor/MSFT/Policy/Config/Browser/AllowBrowser</li><li>**Data type.** Integer</li><li>**Allowed values:**<ul><li>**0.** Employees can’t use Microsoft Edge.</li><li>**1 (default).** Employees can use Microsoft Edge.</li></ul></li></ul> |
| AllowCookies                                 | Both              | <ul><li>**URI full path.** ./Vendor/MSFT/Policy/Config/Browser/AllowCookies</li><li>**Data type.** Integer</li><li>**Allowed values:**<ul><li>**0.** Block all cookies from all sites.</li><li>**1.** Block only 3rd party cookies.<li>**2 (default).** Don't block. Allow all cookies from all sites.</li></ul></li></ul> |
| AllowDeveloperTools                          | Desktop             | <ul><li>**URI full path.** ./Vendor/MSFT/Policy/Config/Browser/AllowDeveloperTools</li><li>**Data type.** Integer</li><li>**Allowed values:**<ul><li>**0.** Employees can't use the F12 Developer Tools on Microsoft Edge.</li><li>**1  (default).** Employees can use the F12 Developer Tools on Microsoft Edge.</li></ul></li></ul> |
| AllowDoNotTrack                              | Both                | <ul><li>**URI full path.** ./Vendor/MSFT/Policy/Config/Browser/AllowDoNotTrack</li><li>**Data type.** Integer</li><li>**Allowed values:**<ul><li>**0 (default).** Stops employees from sending Do Not Track headers to websites requesting tracking info.</li><li>**1.** Employees can send Do Not Track headers to websites requesting tracking info.</li></ul></li></ul> |
|  AllowPasswordManager                         | Both                | <ul><li>**URI full path.** ./Vendor/MSFT/Policy/Config/Browser/AllowPasswordManager</li><li>**Data type.** Integer</li><li>**Allowed values:**<ul><li>**0.** Employees can use Password Manager to save passwords locally.</li><li>**1 (default).** Employees can't use Password Manager to save passwords locally.</li></ul></li></ul>
| AllowPopups                                  | Desktop             | <ul><li>**URI full path.** ./Vendor/MSFT/Policy/Config/Browser/AllowPopups</li><li>**Data type.** Integer</li><li>**Allowed values:**<ul><li>**0 (default).** Turns off Pop-up Blocker, stopping pop-up windows</li><li>**1.** Turns on Pop-up Blocker, allowing pop-up windows.</li></ul></li></ul> |
| AllowSearchSuggestions<br>inAddressBar           | Both                | <ul><li>**URI full path.** ./Vendor/MSFT/Policy/Config/Browser/AllowSearchSuggestions<br>inAddressBar</li><li>**Data type.** Integer</li><li>**Allowed values:**<ul><li>**0.** Employees can see search suggestions in the **Address** bar of Microsoft Edge.</li><li>**1 (default).** Employees can’t see search suggestions in the **Address** bar of Microsoft Edge.</li></ul></li></ul> |
| AllowSmartScreen                             | Both                | <ul><li>**URI full path.** ./Vendor/MSFT/Policy/Config/Browser/AllowSmartScreen</li><li>**Data type.** Integer</li><li>**Allowed values:**<ul><li>**0.** Turns on SmartScreen Filter, providing warning messages to your employees about potential phishing scams and malicious software.</li><li>**1 (default).** Turns off SmartScreen Filter.</li></ul></li></ul> |
| EnterpriseModeSiteList                       | Desktop             | <ul><li>**URI full path.** ./Vendor/MSFT/Policy/Config/Browser/EnterpriseModeSiteList</li><li>**Data type.** Integer</li><li>**Allowed values:**<ul><li>**Not configured (default).**</li><li>**1.** Use Enterprise Mode site list, if configured.</li><li>**2.** Specify the location to the site list.</li></ul></li></ul> |
| Favorites                                    | Both                | <ul><li>**URI full path.** ./Vendor/MSFT/Policy/Config/Browser/Favorites</li><li>**Data type.** String</li><li>**Allowed values:**<ul><li>URLs to favorite webpages.</li>**Example:**<br>```<contoso.com>```<br>```<fabrikam.com>```<p>**Note** URLs must be on separate lines.</ul></li></ul> |
| FirstRunURL                                  | Mobile              | <ul><li>**URI full path.** ./Vendor/MSFT/Policy/Config/Browser/FirstRunURL</li><li>**Data type.** String</li><li>**Allowed values:**<ul><li>URL to first run webpage.</li><p>**Example:**<br>```<contoso.com>```</ul></li></ul> |
| HomePages                                    | Desktop             | <ul><li>**URI full path.** ./Vendor/MSFT/Policy/Config/Browser/HomePages</li><li>**Data type.** String</li><li>**Allowed values:**<ul><li>URLs to home pages.</li><p>**Example:**<br>```<contoso.com/support><fabrikam.com/support>```</ul></li></ul> |
| PreventSmartScreen<br>PromptOverride             | Both                | <ul><li>**URI full path.** ./Vendor/MSFT/Policy/Config/Browser/PreventSmartScreen<br>PromptOverride</li><li>**Data type.** Integer</li><li>**Allowed values:**<ul><li>**0 (default).** Employees can ignore SmartScreen warnings.</li><li>**1.** Employees can't override SmartScreen warnings.</li></ul></li></ul> |
| PreventSmartScreen<br>PromptOverrideForFiles     | Both                | <ul><li>**URI full path.** ./Vendor/MSFT/Policy/Config/Browser/PreventSmartScreen<br>PromptOverrideForFiles</li><li>**Data type.** Integer</li><li>**Allowed values:**<ul><li>**0 (default).** Employees can ignore SmartScreen warnings for files.</li><li>**1.** Employees can't override SmartScreen warnings for files.</li></ul></li></ul> |
| PreventUsingLocalHost<br>IPAddressforWebRTC      | Desktop             | <ul><li>**URI full path.** ./Vendor/MSFT/Policy/Config/Browser/PreventUsingLocal<br>HostIPAddressForWebRTC</li><li>**Data type.** Integer</li><li>**Allowed values:**<ul><li>**0 (default).** Shows an employee's LocalHost IP address while using the WebRTC protocol.</li><li>**1.** Hides an employee's LocalHost IP address while using the WebRTC protocol.</li></ul></li></ul> |


## Microsoft Edge and Windows 10-specific Group Policy and MDM settings

These are additional Windows 10-specific settings that work with Microsoft Edge.

| Group Policy setting                    | Description                               | Options                                                 |
| --------------------------------------- | ----------------------------------------- | ------------------------------------------------------- |
| Computer Configuration\Administrative Templates\Windows Components\Search\Allow Cortana | Whether employees can use Cortana. | **Enable or not configured:** Employees can use Cortana on their devices.<p>**Disable:** Stops employees from using Cortana on their devices.<p>**Note** Employees can still perform searches even with Cortana turned off. |
| Computer Configuration\Administrative Templates\Windows Components\sync your settings\Do not sync | Whether employees can use the **Sync your Settings** options to sync their settings to and from their device. | **Enable:** Turns off the **Sync your Settings** options and none of the **Sync your Setting** groups are synced on the device. You can use the **Allow users to turn syncing on** option to turn the feature off by default, but to let the employee change this setting.<p>**Disable or not configured (default):** Turns on the **Sync your Settings** area by default, letting employees pick what can sync on their device. |
| Computer Configuration\Administrative Templates\Windows Components\sync your settings\Do not sync browser settings | Whether a browser group can use the **Sync your Settings** options to sync their info to and from their device. This includes settings and info like **History** and **Favorites**. | **Enable:** Turns off the **Sync your Settings** options so that browser groups are unable to sync their settings and info. You can use the **Allow users to turn browser syncing on** option to turn the feature off by default, but to let the employee change this setting.<p>**Disable or not configured (default):** Turns on the **Sync your Settings** area by default, letting browser groups pick what can sync on their device. |

## Additional Windows 10-specific MDM policy settings
These are additional Windows 10-specific MDM policy settings that work with Microsoft Edge.

| MDM Policy name                        | Supports            | Details                                                                        |
| ---------------------------------------| ------------------- | ------------------------------------------------------------------------------ |
| AllowCortana                           | Both                | <ul><li>**URI full path.** ./Vendor/MSFT/Policy/Config/Experience/AllowCortana</li><li>**Data type.** Integer</li><li>**Allowed values:**<ul><li>**0.** Employees can’t use Cortana on their devices.</li><li>**1 (default).** Employees can use Cortana on their devices.</li></ul></li></ul> |
| AllowSyncMySettings                    | Desktop             | <ul><li>**URI full path.** ./Vendor/MSFT/Policy/Config/Experience/AllowSyncMySettings</li><li>**Data type.** Integer</li><li>**Allowed values:**<ul><li>**0.** Employees can’t sync settings between PCs.</li><li>**1 (default).** Employees can sync between PCs.</li></ul></li></ul> |

## Related topics
* [Group Policy TechCenter](http://go.microsoft.com/fwlink/p/?LinkId=214514)
* [Mobile Data Management (MDM) settings]( http://go.microsoft.com/fwlink/p/?LinkId=722885)
 

 

 



