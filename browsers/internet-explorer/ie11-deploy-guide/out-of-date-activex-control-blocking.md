---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: security
description: Use out-of-date ActiveX control blocking to help you know when IE prevents a webpage from loading outdated ActiveX controls and to update the outdated control, so that it’s safer to use.
author: lomayor
ms.author: lomayor
ms.prod: ie11
ms.assetid: e61866bb-1ff1-4a8d-96f2-61d3534e8199
ms.reviewer: 
manager: dansimp
title: Out-of-date ActiveX control blocking (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 05/10/2018
---


# Out-of-date ActiveX control blocking

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)
-   Windows Vista SP2

ActiveX controls are small apps that let websites provide content, like videos, games, and let you interact with content like toolbars. Unfortunately, because many ActiveX controls aren’t automatically updated, they can become outdated as new versions are released. It’s very important that you keep your ActiveX controls up-to-date because malicious software (or malware) can target security flaws in outdated controls, damaging your computer by collecting info from it, installing unwanted software, or by letting someone else control it remotely. To help avoid this situation, Internet Explorer includes a new security feature, called *out-of-date ActiveX control blocking*.

Out-of-date ActiveX control blocking lets you:

-   Know when IE prevents a webpage from loading common, but outdated ActiveX controls.

-   Interact with other parts of the webpage that aren’t affected by the outdated control.

-   Update the outdated control, so that it’s up-to-date and safer to use.

The out-of-date ActiveX control blocking feature works with all [Security Zones](https://go.microsoft.com/fwlink/p/?LinkId=403863), except the Local Intranet Zone and the Trusted Sites Zone.

It also works with these operating system and IE combinations:

|Windows operating system                |IE version                       |
|----------------------------------------|---------------------------------|
|Windows 10 |All supported versions of IE.<br>Microsoft Edge doesn't support ActiveX controls. |
|Windows 8.1 and Windows 8.1 Update      |All supported versions of IE    |
|Windows 7 SP1                           |All supported versions of IE    |
|Windows Server 2012                     |All supported versions of IE    |
|Windows Server 2008 R2 SP1              |All supported versions of IE    |
|Windows Server 2008 SP2                 |Windows Internet Explorer 9 only |
|Windows Vista SP2                       |Windows Internet Explorer 9 only |
     
For more info about this new feature, see the [Internet Explorer begins blocking out-of-date ActiveX controls](https://go.microsoft.com/fwlink/p/?LinkId=507691) blog. To see the complete list of out-of-date Active controls blocked by this feature, see [Blocked out-of-date ActiveX controls](blocked-out-of-date-activex-controls.md).


## What does the out-of-date ActiveX control blocking notification look like?
When IE blocks an outdated ActiveX control, you’ll see a notification bar similar to this, depending on your version of IE:

**Internet Explorer 9 through Internet Explorer 11**

![Warning about outdated activex controls (ie9+)](images/outdatedcontrolwarning.png)

**Windows Internet Explorer 8**

![Warning about outdated activex controls (ie8)](images/ieoutdatedcontrolwarning.png)

Out-of-date ActiveX control blocking also gives you a security warning that tells you if a webpage tries to launch specific outdated apps, outside of IE:

![Warning about outdated activex controls outside ie](images/ieoutdatedcontroloutsideofie.png)


## How do I fix an outdated ActiveX control or app?
From the notification about the outdated ActiveX control, you can go to the control’s website to download its latest version.

 **To get the updated ActiveX control**

1.  From the notification bar, tap or click **Update**.<p>
IE opens the ActiveX control’s website.

2.  Download the latest version of the control.

**Security Note:**<br>If you don’t fully trust a site, you shouldn’t allow it to load an outdated ActiveX control. However, although we don’t recommend it, you can view the missing webpage content by tapping or clicking **Run this time**. This option runs the ActiveX control without updating or fixing the problem. The next time you visit a webpage running the same outdated ActiveX control, you’ll get the notification again.

 **To get the updated app**

1.  From the security warning, tap or click **Update** link.<p>
IE opens the app’s website.

2.  Download the latest version of the app.

**Security Note:**<br>If you don’t fully trust a site, you shouldn’t allow it to launch an outdated app. However, although we don’t recommend it, you can let the webpage launch the app by tapping or clicking **Allow**. This option opens the app without updating or fixing the problem. The next time you visit a webpage running the same outdated app, you’ll get the notification again.

## How does IE decide which ActiveX controls to block?
IE uses Microsoft’s versionlist.xml or versionlistWin7.xml file to determine whether an ActiveX control should be stopped from loading. These files are updated with newly-discovered out-of-date ActiveX controls, which IE automatically downloads to your local copy of the file.

You can see your copy of the file here `%LOCALAPPDATA%\Microsoft\Internet Explorer\VersionManager\versionlist.xml` or you can view Microsoft’s version, based on your operating system and version of IE, here:
- [Internet Explorer 11 on Windows 7 SP1 or Windows Server 2008 R2](https://go.microsoft.com/fwlink/p/?LinkId=798230)
- [All other configurations](https://go.microsoft.com/fwlink/p/?LinkId=403864)

**Security Note:**<br>Although we strongly recommend against it, if you don’t want your computer to automatically download the updated version list from Microsoft, run the following command from a command prompt:

```
reg add "HKCU\Software\Microsoft\Internet Explorer\VersionManager" /v DownloadVersionList /t REG_DWORD /d 0 /f
```
Turning off this automatic download breaks the out-of-date ActiveX control blocking feature by not letting the version list update with newly outdated controls, potentially compromising the security of your computer. Use this configuration option at your own risk.

## Out-of-date ActiveX control blocking on managed devices
Out-of-date ActiveX control blocking includes four new Group Policy settings that you can use to manage your web browser configuration, based on your domain controller. You can download the administrative templates, including the new settings, from the [Administrative templates (.admx) for Windows 10](https://go.microsoft.com/fwlink/p/?LinkId=746579) page or the [Administrative Templates (.admx) for Windows 8.1 and Windows Server 2012 R2](https://go.microsoft.com/fwlink/p/?LinkId=746580) page, depending on your operating system.

### Group Policy settings
Here’s a list of the new Group Policy info, including the settings, location, requirements, and Help text strings. All of these settings can be set in either the Computer Configuration or User Configuration scope, but Computer Configuration takes precedence over User Configuration.

**Important**<br>
Out-of-date ActiveX control blocking is turned off in the Local Intranet Zone and the Trusted Sites Zone; therefore, intranet websites and line-of-business apps will continue to use out-of-date ActiveX controls without disruption.

|Setting |Category path |Supported on |Help text |
|--------|--------------|-------------|----------|
|Turn on ActiveX control logging in IE |`Administrative Templates\Windows Components\Internet Explorer\Security Features\Add-on Management` |Internet Explorer 8 through IE11 |This setting determines whether IE saves log information for ActiveX controls.<p>If you enable this setting, IE logs ActiveX control information (including the source URI that loaded the control and whether it was blocked) to a local file.<p>If you disable or don't configure this setting, IE won't log ActiveX control information.<p>Note that you can turn this setting on or off regardless of the **Turn off blocking of outdated ActiveX controls for IE** or **Turn off blocking of outdated ActiveX controls for IE on specific domains** settings. |
|Remove the **Run this time** button for outdated ActiveX controls in IE |`Administrative Templates\Windows Components\Internet Explorer\Security Features\Add-on Management`|Internet Explorer 8 through IE11 |This setting allows you stop users from seeing the **Run this time** button and from running specific outdated ActiveX controls in IE.<p>If you enable this setting, users won't see the **Run this time** button on the warning message that appears when IE blocks an outdated ActiveX control.<p>If you disable or don't configure this setting, users will see the **Run this time** button on the warning message that appears when IE blocks an outdated ActiveX control. Clicking this button lets the user run the outdated ActiveX control once. |
|Turn off blocking of outdated ActiveX controls for IE on specific domains |`Administrative Templates\Windows Components\Internet Explorer\Security Features\Add-on Management` |Internet Explorer 8 through IE11 |This setting allows you to manage a list of domains on which IE will stop blocking outdated ActiveX controls. Outdated ActiveX controls are never blocked in the Intranet Zone.<p>If you enable this setting, you can enter a custom list of domains for which outdated ActiveX controls won't be blocked in IE. Each domain entry must be formatted like one of the following:<ul><li>**"domainname.TLD".** For example, if you want to include `*.contoso.com/*`, use "contoso.com".</li><li>**"hostname".** For example, if you want to include `https://example`, use "example".</li><li>**"file:///path/filename.htm"**. For example, use `file:///C:/Users/contoso/Desktop/index.htm`.</li></ul><p>If you disable or don't configure this setting, the list is deleted and IE continues to block specific outdated ActiveX controls on all domains in the Internet Zone. |
|Turn off blocking of outdated ActiveX controls for IE |`Administrative Templates\Windows Components\Internet Explorer\Security Features\Add-on Management` |Internet Explorer 8 through IE11 |This setting determines whether IE blocks specific outdated ActiveX controls. Outdated ActiveX controls are never blocked in the Intranet Zone.<p>If you enable this setting, IE stops blocking outdated ActiveX controls.<p>If you disable or don't configure this setting, IE continues to block specific outdated ActiveX controls. |
|Remove the **Update** button in the out-of-date ActiveX control blocking notification for IE |This functionality is only available through the registry |Internet Explorer 8 through IE11 |This setting determines whether the out-of-date ActiveX control blocking notification shows the **Update** button. This button points users to update specific out-of-date ActiveX controls in IE. |


If you don't want to use Group Policy, you can also turn these settings on or off using the registry. You can update the registry manually.

|Setting                  |Registry setting                                                |
|-------------------------|----------------------------------------------------------------|
|Turn on ActiveX control logging in IE |`reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Ext" /v AuditModeEnabled /t REG_DWORD /d 1 /f`<p>Where:<p><ul><li>**0 or not configured.** Logs ActiveX control information (including the source URI that loaded the control and whether it was blocked) to a local file.</li><li>**1.** Logs ActiveX control information.</li></ul> |
|Remove **Run this time** button for outdated ActiveX controls in IE |`reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Ext" /v RunThisTimeEnabled /t REG_DWORD /d 0 /f`<p>Where:<p><ul><li>**0.** Removes the **Run this time** button.</li><li>**1 or not configured.** Leaves the **Run this time** button.</li></ul> |
|Turn off blocking of outdated ActiveX controls for IE on specific domains |<code>reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Ext\Domain" /v contoso.com /t REG_SZ /f</code><p>Where:<p><ul><li>**contoso.com.** A single domain on which outdated ActiveX controls won't be blocked in IE. Use a new `reg add` command for each domain you wish to add to the **Allow** list.</li></ul> |
|Turn off blocking of outdated ActiveX controls for IE |`reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Ext" /v VersionCheckEnabled /t REG_DWORD /d 0 /f`<p>Where:<p><ul><li>**0.** Stops blocking outdated ActiveX controls.</li><li>**1 or not configured.** Continues to block specific outdated ActiveX controls.</li></ul> |
|Remove the **Update** button in the out-of-date ActiveX control blocking notification for IE |`reg add "HKCU\Software\Microsoft\Internet Explorer\VersionManager" /v UpdateEnabled /t REG_DWORD /d 0 /f`<p>Where:<p><ul><li>**0.** Removes the **Update** button</li><li>**1 or not configured.** Leaves the **Update** button.</li></ul>

## Inventory your ActiveX controls
You can inventory the ActiveX controls being used in your company, by turning on the **Turn on ActiveX control logging in IE** setting:

-   **Windows 10:** Through a comma-separated values (.csv) file or through a local Windows Management Instrumentation (WMI) class.

-   **All other versions of Microsoft Windows:** Through a .csv file only.


### Inventory your ActiveX controls by using a .CSV file
If you decide to inventory the ActiveX controls being used in your company by turning on the **Turn on ActiveX control logging in IE** setting, IE logs the ActiveX control information to the `%LOCALAPPDATA%\Microsoft\Internet Explorer\AuditMode\VersionAuditLog.csv` file.

Here’s a detailed example and description of what’s included in the VersionAuditLog.csv file.

|Source URI |File path |Product version |File version |Allowed/Blocked |Reason |EPM-compatible |
|-----------|----------|----------------|-------------|----------------|-------|---------------|
|`https://contoso.com/test1.html` |C:\Windows\System32\Macromed\Flash\Flash.ocx |14.0.0.125 |14.0.0.125 |Allowed |Not in blocklist |EPM-compatible |
|`https://contoso.com/test2.html` |C:\Program Files\Java\jre6\bin\jp2iexp.dll |6.0.410.2 |6.0.410.2 |Blocked |Out of date |Not EPM-compatible |

**Where:**
-   **Source URI.** The URL of the page that loaded the ActiveX control.

-   **File path.** The location of the binary that implements the ActiveX control.

-   **Product version.** The product version of the binary that implements the ActiveX control.

-   **File version.** The file version of the binary that implements the ActiveX control.

-   **Allowed/Blocked** Whether IE blocked the ActiveX control.
 
-   **Enhanced Protected Mode (EPM)-compatible.** Whether the loaded ActiveX control is compatible with [Enhanced Protected Mode](https://go.microsoft.com/fwlink/p/?LinkId=403865).<p>**Note**<br>Enhanced Protected Mode isn’t supported on Internet Explorer 9 or earlier versions of IE. Therefore, if you’re using Internet Explorer 8 or Internet Explorer 9, all ActiveX controls will always be marked as not EPM-compatible.

-   **Reason.** The ActiveX control can be blocked or allowed for any of these reasons:

|Reason                   |Corresponds to |Description                                     |
|-------------------------|---------------|-------------------------------------------------|
|Version not in blocklist |Allowed        |The version of the loaded ActiveX control is explicitly allowed by the IE version list. |
|Trusted domain           |Allowed        |The ActiveX control was loaded on a domain listed in the **Turn off blocking of outdated ActiveX controls for IE on specific domains** setting. |
|File doesn’t exist       |Allowed        |The loaded ActiveX control is missing required binaries to run correctly. |
|Out-of-date              |Blocked        |The loaded ActiveX control is explicitly blocked by the IE version list because it is out-of-date. |
|Not in blocklist         |Allowed        |The loaded ActiveX control isn’t in the IE version list. |
|Managed by policy        |Allowed        |The loaded ActiveX control is managed by a Group Policy setting that isn’t listed here, and will be managed in accordance with that Group Policy setting. |
|Trusted Site Zone or intranet |Allowed   |The ActiveX control was loaded in the Trusted Sites Zone or the Local Intranet Zone. |
|Hardblocked              |Blocked        |The loaded ActiveX control is blocked in IE because it contains known security vulnerabilities. |
|Unknown                  |Allowed or blocked |None of the above apply. |

### Inventory your ActiveX controls by using a local WMI class
For Windows 10 you also have the option to log your inventory info to a local WMI class. Info logged to this class includes all of info you get from the .csv file, plus the CLSID of the loaded ActiveX control or the name of any apps started from an ActiveX control.

#### Before you begin
Before you can use WMI to inventory your ActiveX controls, you need to [download the configuration package (.zip file)](https://go.microsoft.com/fwlink/p/?LinkId=616971), which includes:

-   **ConfigureWMILogging.ps1**. A Windows PowerShell script.

-   **ActiveXWMILogging.mof**. A managed object file.

Before running the PowerShell script, you must copy both the .ps1 and .mof file to the same directory location, on the client computer.

 **To configure IE to use WMI logging**

1. Open your Group Policy editor and turn on the `Administrative Templates\Windows Components\Internet Explorer\Turn on ActiveX control logging in IE` setting.

2. On the client device, start PowerShell in elevated mode (using admin privileges) and run `ConfigureWMILogging.ps1` by by-passing the PowerShell execution policy, using this command:
   ```
   powershell –ExecutionPolicy Bypass .\ConfigureWMILogging.ps1
   ``` 
   For more info, see [about_Execution_Policies](https://go.microsoft.com/fwlink/p/?linkid=517460).

3. **Optional:** Set up your domain firewall for WMI data. For more info, see [Collect data using Enterprise Site Discovery](collect-data-using-enterprise-site-discovery.md).

The inventory info appears in the WMI class, `IEAXControlBlockingAuditInfo`, located in the WMI namespace, *root\\cimv2\\IETelemetry*. To collect the inventory info from your client computers, we recommend using System Center 2012 R2 Configuration Manager or any agent that can access the WMI data. For more info, see [Collect data using Enterprise Site Discovery](collect-data-using-enterprise-site-discovery.md).

