---
title: Configure Windows 10 devices to stop data flow to Microsoft (Windows 10)
description: If you want to minimize connections from Windows to Microsoft services, or configure particular privacy settings, this article covers the settings that you could consider.
ms.assetid: ACCEB0DD-BC6F-41B1-B359-140B242183D9
keywords: privacy, stop data flow to Microsoft
ms.prod: W10
ms.mktglfcycl: manage
ms.sitesec: library
---

# Configure Windows 10 devices to stop data flow to Microsoft

**Applies to**

-   Windows 10

If you’re looking for content on what each telemetry level means and how to configure it in your organization, see [Configure Windows telemetry in your organization](configure-windows-telemetry-in-your-organization.md).

Learn about the network connections that Windows components make to Microsoft and also the privacy settings that affect data that is shared with either Microsoft or apps and how they can be managed by an IT Pro.

If you want to minimize connections from Windows to Microsoft services, or configure particular privacy settings, this article covers the settings that you could consider. You can configure telemetry at the lowest level for your edition of Windows, and also evaluate which other connections Windows makes to Microsoft services you want to turn off in your environment from the list in this article.

Some of the network connections discussed in this article can be managed in Windows 10 Mobile, Windows 10 Mobile Enterprise, and the July release of Windows 10. However, you must use Windows 10 Enterprise, version 1511 or Windows 10 Education, version 1511 to manage them all.

In Windows 10 Enterprise, version 1511 or Windows 10 Education, version 1511, you can configure telemetry at the Security level, turn off Windows Defender telemetry and MSRT reporting, and turn off all other connections to Microsoft services as described in this article to prevent Windows from sending any data to Microsoft. We strongly recommend against this, as this data helps us deliver a secure, reliable, and more delightful personalized experience.

We are always working on improving Windows 10 for our customers. We invite IT pros to join the [Windows Insider Program](http://insider.windows.com) to give us feedback on what we can do to make Windows 10 work better for your organization.

Here's what's covered in this article:

-   [Info management settings](#bkmk-othersettings)

    -   [1. Cortana](#bkmk-cortana)

        -   [1.1 Cortana Group Policies](#bkmk-cortana-gp)

        -   [1.2 Cortana MDM policies](#bkmk-cortana-mdm)

        -   [1.3 Cortana Windows Provisioning](#bkmk-cortana-prov)

    -   [2. Date & Time](#bkmk-datetime)

    -   [3. Device metadata retrieval](#bkmk-devinst)

    -   [4. Font streaming](#font-streaming)

    -   [5. Insider Preview builds](#bkmk-previewbuilds)

    -   [6. Internet Explorer](#bkmk-ie)

        -   [6.1 Internet Explorer Group Policies](#bkmk-ie-gp)

        -   [6.2 ActiveX control blocking](#bkmk-ie-activex)

    -   [7. Live Tiles](#live-tiles)
    
    -   [8. Mail synchronization](#bkmk-mailsync)

    -   [9. Microsoft Edge](#bkmk-edge)

        -   [9.1 Microsoft Edge Group Policies](#bkmk-edgegp)

        -   [9.2 Microsoft Edge MDM policies](#bkmk-edge-mdm)

        -   [9.3 Microsoft Edge Windows Provisioning](#bkmk-edge-prov)

    -   [10. Network Connection Status Indicator](#bkmk-ncsi)

    -   [11. Offline maps](#bkmk-offlinemaps)

    -   [12. OneDrive](#bkmk-onedrive)

    -   [13. Preinstalled apps](#bkmk-preinstalledapps)

    -   [14. Settings &gt; Privacy](#bkmk-settingssection)

        -   [14.1 General](#bkmk-priv-general)

        -   [14.2 Location](#bkmk-priv-location)

        -   [14.3 Camera](#bkmk-priv-camera)

        -   [14.4 Microphone](#bkmk-priv-microphone)

        -   [14.5 Speech, inking, & typing](#bkmk-priv-speech)

        -   [14.6 Account info](#bkmk-priv-accounts)

        -   [14.7 Contacts](#bkmk-priv-contacts)

        -   [14.8 Calendar](#bkmk-priv-calendar)

        -   [14.9 Call history](#bkmk-priv-callhistory)

        -   [14.10 Email](#bkmk-priv-email)

        -   [14.11 Messaging](#bkmk-priv-messaging)

        -   [14.12 Radios](#bkmk-priv-radios)

        -   [14.13 Other devices](#bkmk-priv-other-devices)

        -   [14.14 Feedback & diagnostics](#bkmk-priv-feedback)

        -   [14.15 Background apps](#bkmk-priv-background)

    -   [15. Software Protection Platform](#bkmk-spp)

    -   [16. Sync your settings](#bkmk-syncsettings)

    -   [17. Teredo](#bkmk-teredo)

    -   [18. Wi-Fi Sense](#bkmk-wifisense)

    -   [19. Windows Defender](#bkmk-defender)

    -   [20. Windows Media Player](#bkmk-wmp)

    -   [21. Windows spotlight](#bkmk-spotlight)

    -   [22. Windows Store](#bkmk-windowsstore)

    -   [23. Windows Update Delivery Optimization](#bkmk-updates)

        -   [23.1 Settings &gt; Update & security](#bkmk-wudo-ui)

        -   [23.2 Delivery Optimization Group Policies](#bkmk-wudo-gp)

        -   [23.3 Delivery Optimization MDM policies](#bkmk-wudo-mdm)

        -   [23.4 Delivery Optimization Windows Provisioning](#bkmk-wudo-prov)

    -   [24. Windows Update](#bkmk-wu)

## What's new in Windows 10, version 1511


Here's a list of changes that were made to this article for Windows 10, version 1511:

-   Added the following new sections:

    -   [Mail synchronization](#bkmk-mailsync)

    -   [Offline maps](#bkmk-offlinemaps)

    -   [Windows spotlight](#bkmk-spotlight)

    -   [Windows Store](#bkmk-windowsstore)

-   Added the following Group Policies:

    -   Open a new tab with an empty tab

    -   Configure corporate Home pages

    -   Let Windows apps access location

    -   Let Windows apps access the camera

    -   Let Windows apps access the microphone

    -   Let Windows apps access account information

    -   Let Windows apps access contacts

    -   Let Windows apps access the calendar

    -   Let Windows apps access messaging

    -   Let Windows apps control radios

    -   Let Windows apps access trusted devices

    -   Do not show feedback notifications

    -   Turn off Automatic Download and Update of Map Data

    -   Force a specific default lock screen image

-   Added the AllowLinguisticDataCollection MDM policy.

-   Added steps in the [Cortana](#bkmk-cortana) section on how to disable outbound traffic using Windows Firewall.

-   Added steps in the [Live tiles](#bkmk-livetiles) section on how to remove the Money and Sports apps.

-   Changed the Windows Update section to apply system-wide settings, and not just per user.

## <a href="" id="bkmk-othersettings"></a>Info management settings


This section lists the components that make network connections to Microsoft services automatically. You can configure these settings to control the data that is sent to Microsoft. To prevent Windows from sending any data to Microsoft, configure telemetry at the Security level, turn off Windows Defender telemetry and MSRT reporting, and turn off all of these connections. We strongly recommend against this, as this data helps us deliver a secure, reliable, and more delightful personalized experience.

The settings in this section assume you are using Windows 10, version 1511 (currently available in the Current Branch and Current Branch for Business). They will also be included in the next update for the Long Term Servicing Branch.

-   [1. Cortana](#bkmk-cortana)

-   [2. Date & Time](#bkmk-datetime)

-   [3. Device metadata retrieval](#bkmk-devinst)

-   [4. Font streaming](#font-streaming)

-   [5. Insider Preview builds](#bkmk-previewbuilds)

-   [6. Internet Explorer](#bkmk-ie)

-   [7. Live Tiles](#live-tiles)

-   [8. Mail synchronization](#bkmk-mailsync)

-   [9. Microsoft Edge](#bkmk-edge)

-   [10. Network Connection Status Indicator](#bkmk-ncsi)

-   [11. Offline maps](#bkmk-offlinemaps)

-   [12. OneDrive](#bkmk-onedrive)

-   [13. Preinstalled apps](#bkmk-preinstalledapps)

-   [14. Settings &gt; Privacy](#bkmk-settingssection)

-   [15. Software Protection Platform](#bkmk-spp)

-   [16. Sync your settings](#bkmk-syncsettings)

-   [17. Teredo](#bkmk-teredo)

-   [18. Wi-Fi Sense](#bkmk-wifisense)

-   [19. Windows Defender](#bkmk-defender)

-   [20. Windows Media Player](#bkmk-wmp)

-   [21. Windows spotlight](#bkmk-spotlight)

-   [22. Windows Store](#bkmk-windowsstore)

-   [23. Windows Update](#bkmk-wu)

-   [24. Windows Update Delivery Optimization](#bkmk-updates)

See the following table for a summary of the management settings. For more info, see its corresponding section.

![Management settings table](images/settings-table.png)

### <a href="" id="bkmk-cortana"></a>1. Cortana

Use either Group Policy or MDM policies to manage settings for Cortana. For more info, see [Cortana, Search, and privacy: FAQ](http://go.microsoft.com/fwlink/p/?LinkId=730683).

### <a href="" id="bkmk-cortana-gp"></a>1.1 Cortana Group Policies

Find the Cortana Group Policy objects under **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Search**.

| Policy                                               | Description                                                                           |
|------------------------------------------------------|---------------------------------------------------------------------------------------|
| Allow Cortana                                        | Choose whether to let Cortana install and run on the device.                          |
| Allow search and Cortana to use location             | Choose whether Cortana and Search can provide location-aware search results.          |
| Do not allow web search                              | Choose whether to search the web from Windows Desktop Search. <br /> Default: Disabled|
| Don't search the web or display web results in Search| Choose whether to search the web from Cortana.                                        |
| Set what information is shared in Search             | Control what information is shared with Bing in Search.                               |

When you enable the **Don't search the web or display web results in Search** Group Policy, you can control the behavior of whether Cortana searches the web to display web results. However, this policy only covers whether or not web search is performed. There could still be a small amount of network traffic to Bing.com to evaluate if certain Cortana components are up-to-date or not. In order to turn off that network activity completely, you can create a Windows Firewall rule to prevent outbound traffic.

1.  Expand **Computer Configuration** &gt; **Windows Settings** &gt; **Security Settings** &gt; **Windows Firewall with Advanced Security** &gt; **Windows Firewall with Advanced Security - &lt;LDAP name&gt;**, and then click **Outbound Rules**.

2.  Right-click **Outbound Rules**, and then click **New Rule**. The **New Outbound Rule Wizard** starts.

3.  On the **Rule Type** page, click **Program**, and then click **Next**.

4.  On the **Program** page, click **This program path**, type **%windir%\\systemapps\\Microsoft.Windows.Cortana\_cw5n1h2txyewy\\SearchUI.exe**, and then click **Next**.

5.  On the **Action** page, click **Block the connection**, and then click **Next**.

6.  On the **Profile** page, ensure that the **Domain**, **Private**, and **Public** check boxes are selected, and then click **Next**.

7.  On the **Name** page, type a name for the rule, such as **Cortana firewall configuration**, and then click **Finish.**

8.  Right-click the new rule, click **Properties**, and then click **Protocols and Ports**.

9.  Configure the **Protocols and Ports** page with the following info, and then click **OK**.

    -   For **Protocol type**, choose **TCP**.

    -   For **Local port**, choose **All Ports**.

    -   For **Remote port**, choose **All ports**.

**Note**  
If your organization tests network traffic, you should not use Fiddler to test Windows Firewall settings. You should use a network traffic analyzer, such as WireShark or Message Analyzer.

### <a href="" id="bkmk-cortana-mdm"></a>1.2 Cortana MDM policies

The following Cortana MDM policies are available in the [Policy CSP](http://msdn.microsoft.com/library/windows/hardware/dn904962.aspx).

| Policy                                               | Description                                                                                         |
|------------------------------------------------------|-----------------------------------------------------------------------------------------------------|
| Experience/AllowCortana                              | Choose whether to let Cortana install and run on the device.                                        |
| Search/AllowSearchToUseLocation                      | Choose whether Cortana and Search can provide location-aware search results. <br /> Default: Allowed|

### <a href="" id="bkmk-cortana-prov"></a>1.3 Cortana Windows Provisioning

To use Windows Imaging and Configuration Designer (ICD) to create a provisioning package with the settings for these policies, go to **Runtime settings** &gt; **Policies** to find **Experience** &gt; **AllowCortana** and **Search** &gt; **AllowSearchToUseLocation**.

### <a href="" id="bkmk-datetime"></a>2. Date & Time

You can prevent Windows from setting the time automatically.

-   To turn off the feature in the UI: **Settings** &gt; **Time & language** &gt; **Date & time** &gt; **Set time automatically**

    -or-

-   Create a REG\_SZ registry setting in **HKEY\_LOCAL\_MACHINE\\SYSTEM\\CurrentControlSet\\Services\\W32Time\\Parameters** with a value of **NoSync**.

### <a href="" id="bkmk-devinst"></a>3. Device metadata retrieval

To prevent Windows from retrieving device metadata from the Internet, apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **System** &gt; **Device Installation** &gt; **Prevent device metadata retrieval from the Internet**.

### <a href="" id="font-streaming"></a>4. Font streaming

Starting with Windows 10, fonts that are included in Windows but that are not stored on the local device can be downloaded on demand.

To turn off font streaming, create a REG\_DWORD registry setting called **DisableFontProviders** in **HKEY\_LOCAL\_MACHINE\\System\\CurrentControlSet\\Services\\FontCache\\Parameters**, with a value of 1.

**Note**  
This may change in future versions of Windows.

### <a href="" id="bkmk-previewbuilds"></a>5. Insider Preview builds

To turn off Insider Preview builds if you're running a released version of Windows 10. If you're running a preview version of Windows 10, you must roll back to a released version before you can turn off Insider Preview builds.

-   Turn off the feature in the UI: **Settings** &gt; **Update & security** &gt; **Windows Update** &gt; **Advanced options** &gt; **Stop Insider builds**.

    -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Data Collection and Preview Builds** &gt; **Toggle user control over Insider builds**.

    -or-

-   Apply the System/AllowBuildPreview MDM policy from the [Policy CSP](http://msdn.microsoft.com/library/windows/hardware/dn904962.aspx) where:

    -   **0**. Users cannot make their devices available for downloading and installing preview software.

    -   **1**. Users can make their devices available for downloading and installing preview software.

    -   **2**. (default) Not configured. Users can make their devices available for download and installing preview software.

    -or-

-   Create a provisioning package: **Runtime settings** &gt; **Policies** &gt; **System** &gt; **AllowBuildPreview**, where:

    -   **0**. Users cannot make their devices available for downloading and installing preview software.

    -   **1**. Users can make their devices available for downloading and installing preview software.

    -   **2**. (default) Not configured. Users can make their devices available for download and installing preview software.

### <a href="" id="bkmk-ie"></a>6. Internet Explorer

Use Group Policy to manage settings for Internet Explorer.

### <a href="" id="bkmk-ie-gp"></a>6.1 Internet Explorer Group Policies

Find the Internet Explorer Group Policy objects under **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Internet Explorer**.

| Policy                                               | Description                                                                                         |
|------------------------------------------------------|-----------------------------------------------------------------------------------------------------|
| Turn on Suggested Sites| Choose whether an employee can configure Suggested Sites. <br /> Default: Enabled <br /> You can also turn this off in the UI by clearing the **Internet Options** &gt; **Advanced** &gt; **Enable Suggested Sites** check box.|
| Allow Microsoft services to provide enhanced suggestions as the user types in the Address Bar | Choose whether an employee can configure enhanced suggestions, which are presented to the employee as they type in the address bar. <br /> Default: Enabled|
| Turn off the auto-complete feature for web addresses | Choose whether auto-complete suggests possible matches when employees are typing web address in the address bar. <br /> Default: Disabled </br> You can also turn this off in the UI by clearing the <strong>Internet Options</strong> &gt; **Advanced** &gt; **Use inline AutoComplete in the Internet Explorer Address Bar and Open Dialog** check box.|
| Disable Periodic Check for Internet Explorer software updates| Choose whether Internet Explorer periodically checks for a new version. <br /> Default: Enabled |
| Turn off browser geolocation | Choose whether websites can request location data from Internet Explorer. <br /> Default: Disabled|

### <a href="" id="bkmk-ie-activex"></a>6.2 ActiveX control blocking

ActiveX control blocking periodically downloads a new list of out-of-date ActiveX controls that should be blocked. You can turn this off by changing the REG\_DWORD registry setting **HKEY\_CURRENT\_USER\\Software\\Microsoft\\Internet Explorer\\VersionManager\\DownloadVersionList** to 0 (zero).

For more info, see [Out-of-date ActiveX control blocking](http://technet.microsoft.com/library/dn761713.aspx).

### <a href="" id="live-tiles"></a>7. Live Tiles

To turn off Live Tiles:

-   Apply the Group Policy: **User Configuration** > **Administrative Templates** > **Start Menu and Taskbar** > **Notifications** > **Turn Off notifications network usage**

### <a href="" id="bkmk-mailsync"></a>8. Mail synchronization

To turn off mail synchronization for Microsoft Accounts that are configured on a device:

-   In **Settings** &gt; **Accounts** &gt; **Your email and accounts**, remove any connected Microsoft Accounts.

    -or-

-   Remove any Microsoft Accounts from the Mail app.

    -or-

-   Apply the Accounts/AllowMicrosoftAccountConnection MDM policy from the [Policy CSP](http://msdn.microsoft.com/library/windows/hardware/dn904962.aspx) where 0 is not allowed and 1 is allowed. This does not apply to Microsoft Accounts that have already been configured on the device.

To turn off the Windows Mail app:

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Windows Mail** &gt; **Turn off Windows Mail application**

### <a href="" id="bkmk-edge"></a>9. Microsoft Edge

Use either Group Policy or MDM policies to manage settings for Microsoft Edge. For more info, see [Microsoft Edge and privacy: FAQ](http://go.microsoft.com/fwlink/p/?LinkId=730682).

### <a href="" id="bkmk-edgegp"></a>9.1 Microsoft Edge Group Policies

Find the Microsoft Edge Group Policy objects under **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Microsoft Edge**.

**Note**  
The Microsoft Edge Group Policy names were changed in Windows 10, version 1511. The table below reflects those changes.

| Policy                                               | Description                                                                                         |
|------------------------------------------------------|-----------------------------------------------------------------------------------------------------|
| Turn off autofill                                    | Choose whether employees can use autofill on websites. <br /> Default: Enabled                      |
| Allow employees to send Do Not Track headers         | Choose whether employees can send Do Not Track headers.<br /> Default: Disabled                     |
| Turn off password manager                            | Choose whether employees can save passwords locally on their devices. <br /> Default: Enabled       |
| Turn off address bar search suggestions              | Choose whether the address bar shows search suggestions. <br /> Default: Enabled                    |
| Turn off the SmartScreen Filter                      | Choose whether SmartScreen is turned on or off.  <br /> Default: Enabled                            |
| Open a new tab with an empty tab                     | Choose whether a new tab page appears.  <br /> Default: Enabled                                     |
| Configure corporate Home pages                       | Choose the corporate Home page for domain-joined devices. <br /> Set this to **about:blank**        |

### <a href="" id="bkmk-edge-mdm"></a>9.2 Microsoft Edge MDM policies

The following Microsoft Edge MDM policies are available in the [Policy CSP](http://msdn.microsoft.com/library/windows/hardware/dn904962.aspx).

| Policy                                               | Description                                                                                         |
|------------------------------------------------------|-----------------------------------------------------------------------------------------------------|
| Browser/AllowAutoFill                                | Choose whether employees can use autofill on websites. <br /> Default: Allowed                      |
| Browser/AllowDoNotTrack                              | Choose whether employees can send Do Not Track headers.<br /> Default: Not allowed                  |
| Browser/AllowPasswordManager                         | Choose whether employees can save passwords locally on their devices. <br /> Default: Allowed       |
| Browser/AllowSearchSuggestionsinAddressBar           | Choose whether the address bar shows search suggestions.. <br /> Default: Allowed                   |
| Browser/AllowSmartScreen                             | Choose whether SmartScreen is turned on or off.  <br /> Default: Allowed                            |

### <a href="" id="bkmk-edge-prov"></a>9.3 Microsoft Edge Windows Provisioning

Use Windows ICD to create a provisioning package with the settings for these policies, go to **Runtime settings** &gt; **Policies**.

For a complete list of the Microsoft Edge policies, see [Available policies for Microsoft Edge](http://technet.microsoft.com/library/mt270204.aspx).

### <a href="" id="bkmk-ncsi"></a>10. Network Connection Status Indicator

Network Connection Status Indicator (NCSI) detects Internet connectivity and corporate network connectivity status. NCSI sends a DNS request and HTTP query to http://www.msftncsi.com to determine if the device can communicate with the Internet. For more info about NCIS, see [The Network Connection Status Icon](http://blogs.technet.com/b/networking/archive/2012/12/20/the-network-connection-status-icon.aspx).

You can turn off NCSI through Group Policy:

-   Enable the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **System** &gt; **Internet Communication Management** &gt; **Internet Communication Settings** &gt; **Turn off Windows Network Connectivity Status Indicator active tests**

### <a href="" id="bkmk-offlinemaps"></a>11. Offline maps

You can turn off the ability to download and update offline maps.

-   In the UI: **Settings** &gt; **System** &gt; **Offline maps** &gt; **Automatically update maps**

    -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Maps** &gt; **Turn off Automatic Download and Update of Map Data**

### <a href="" id="bkmk-onedrive"></a>12. OneDrive

To turn off OneDrive in your organization:

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **OneDrive** &gt; **Prevent the usage of OneDrive for file storage**

### <a href="" id="bkmk-preinstalledapps"></a>13. Preinstalled apps

Some preinstalled apps get content before they are opened to ensure a great experience. You can remove these using the steps in this section.

To remove the News app:

-   Right-click the app in Start, and then click **Uninstall**.

    -or-

-   Remove the app for new user accounts. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxProvisionedPackage -Online | Where-Object {$\_.PackageName -Like "Microsoft.BingNews"} | ForEach-Object { Remove-AppxProvisionedPackage -Online -PackageName $\_.PackageName}**

    -and-

    Remove the app for the current user. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxPackage Microsoft.BingNews | Remove-AppxPackage**

To remove the Weather app:

-   Remove the app for new user accounts. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxProvisionedPackage -Online | Where-Object {$\_.PackageName -Like "Microsoft.BingWeather"} | ForEach-Object { Remove-AppxProvisionedPackage -Online -PackageName $\_.PackageName}**

    -and-

    Remove the app for the current user. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxPackage Microsoft.BingWeather | Remove-AppxPackage**

To remove the Money app:

-   Right-click the app in Start, and then click **Uninstall**.

    -or-

-   Remove the app for new user accounts. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxProvisionedPackage -Online | Where-Object {$\_.PackageName -Like "Microsoft.BingFinance"} | ForEach-Object { Remove-AppxProvisionedPackage -Online -PackageName $\_.PackageName}**

    -and-

    Remove the app for the current user. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxPackage Microsoft.BingFinance | Remove-AppxPackage**

To remove the Sports app:

-   Right-click the app in Start, and then click **Uninstall**.

    -or-

-   Remove the app for new user accounts. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxProvisionedPackage -Online | Where-Object {$\_.PackageName -Like "Microsoft.BingSports"} | ForEach-Object { Remove-AppxProvisionedPackage -Online -PackageName $\_.PackageName}**

    -and-

    Remove the app for the current user. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxPackage Microsoft.BingSports | Remove-AppxPackage**

To remove the Twitter app:

-   Right-click the app in Start, and then click **Uninstall**.

    -or-

-   Remove the app for new user accounts. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxProvisionedPackage -Online | Where-Object {$\_.PackageName -Like "\*.Twitter"} | ForEach-Object { Remove-AppxProvisionedPackage -Online -PackageName $\_.PackageName}**

    -and-

    Remove the app for the current user. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxPackage \*.Twitter | Remove-AppxPackage**

To remove the XBOX app:

-   Remove the app for new user accounts. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxProvisionedPackage -Online | Where-Object {$\_.PackageName -Like "Microsoft.XboxApp"} | ForEach-Object { Remove-AppxProvisionedPackage -Online -PackageName $\_.PackageName}**

    -and-

    Remove the app for the current user. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxPackage Microsoft.XboxApp | Remove-AppxPackage**

To remove the Sway app:

-   Right-click the app in Start, and then click **Uninstall**.

    -or-

-   Remove the app for new user accounts. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxProvisionedPackage -Online | Where-Object {$\_.PackageName -Like "Microsoft.Office.Sway"} | ForEach-Object { Remove-AppxProvisionedPackage -Online -PackageName $\_.PackageName}**

    -and-

    Remove the app for the current user. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxPackage Microsoft.Office.Sway | Remove-AppxPackage**

To remove the OneNote app:

-   Remove the app for new user accounts. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxProvisionedPackage -Online | Where-Object {$\_.PackageName -Like "Microsoft.Office.OneNote"} | ForEach-Object { Remove-AppxProvisionedPackage -Online -PackageName $\_.PackageName}**

    -and-

    Remove the app for the current user. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxPackage Microsoft.Office.OneNote | Remove-AppxPackage**

To remove the Get Office app:

-   Right-click the app in Start, and then click **Uninstall**.

    -or-

-   Remove the app for new user accounts. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxProvisionedPackage -Online | Where-Object {$\_.PackageName -Like "Microsoft.MicrosoftOfficeHub"} | ForEach-Object { Remove-AppxProvisionedPackage -Online -PackageName $\_.PackageName}**

    -and-

    Remove the app for the current user. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxPackage Microsoft.MicrosoftOfficeHub | Remove-AppxPackage**

To remove the Get Skype app:

-   Right-click the Sports app in Start, and then click **Uninstall**.

    -or-

-   Remove the app for new user accounts. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxProvisionedPackage -Online | Where-Object {$\_.PackageName -Like "Microsoft.SkypeApp"} | ForEach-Object { Remove-AppxProvisionedPackage -Online -PackageName $\_.PackageName}**

    -and-

    Remove the app for the current user. From an elevated command prompt, run the following Windows PowerShell command: **Get-AppxPackage Microsoft.SkypeApp | Remove-AppxPackage**

### <a href="" id="bkmk-settingssection"></a>14. Settings &gt; Privacy

Use Settings &gt; Privacy to configure some settings that may be important to your organization. Except for the Feedback & Diagnostics page, these settings must be configured for every user account that signs into the PC.

-   [14.1 General](#bkmk-general)

-   [14.2 Location](#bkmk-priv-location)

-   [14.3 Camera](#bkmk-priv-camera)

-   [14.4 Microphone](#bkmk-priv-microphone)

-   [14.5 Speech, inking, & typing](#bkmk-priv-speech)

-   [14.6 Account info](#bkmk-priv-accounts)

-   [14.7 Contacts](#bkmk-priv-contacts)

-   [14.8 Calendar](#bkmk-priv-calendar)

-   [14.9 Call history](#bkmk-priv-callhistory)

-   [14.10 Email](#bkmk-priv-email)

-   [14.11 Messaging](#bkmk-priv-messaging)

-   [14.12 Radios](#bkmk-priv-radios)

-   [14.13 Other devices](#bkmk-priv-other-devices)

-   [14.14 Feedback & diagnostics](#bkmk-priv-feedback)

-   [14.15 Background apps](#bkmk-priv-background)

### <a href="" id="bkmk-general"></a>14.1 General

**General** includes options that don't fall into other areas.

To turn off **Let apps use my advertising ID for experiences across apps (turning this off will reset your ID)**:

**Note**  
When you turn this feature off in the UI, it turns off the advertising ID, not just resets it.

 

-   Turn off the feature in the UI.

    -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **System** &gt; **User Profiles** &gt; **Turn off the advertising ID**.

    -or-

-   Create a REG\_DWORD registry setting called **Enabled** in **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\AdvertisingInfo**, with a value of 0 (zero).

To turn off **Turn on SmartScreen Filter to check web content (URLs) that Windows Store apps use**:

-   Turn off the feature in the UI.

    -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Microsoft Edge** &gt; **Turn off the SmartScreen Filter**.

    Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **File Explorer** &gt; **Configure Windows SmartScreen**.

    -or-

-   Apply the Browser/AllowSmartScreen MDM policy from the [Policy CSP](http://msdn.microsoft.com/library/windows/hardware/dn904962.aspx) where 0 is turned off and 1 is turned on.

    -or-

-   Create a provisioning package, using:

    -   For Internet Explorer: **Runtime settings** &gt; **Policies** &gt; **Browser** &gt; **AllowSmartScreen**

    -   For Microsoft Edge: **Runtime settings** &gt; **Policies** &gt; **MicrosoftEdge** &gt; **AllowSmartScreen**

    -or-

-   Create a REG\_DWORD registry setting called **Enabled** in **HKEY\_CURRENT\_USER\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\AppHost\\EnableWebContentEvaluation**, with a value of 0 (zero).

To turn off **Send Microsoft info about how I write to help us improve typing and writing in the future**:

**Note**  
If the telemetry level is set to either **Basic** or **Security**, this is turned off automatically.

 

-   Turn off the feature in the UI.

    -or-

-   Apply the TextInput/AllowLinguisticDataCollection MDM policy from the [Policy CSP](http://msdn.microsoft.com/library/windows/hardware/dn904962.aspx) where:

    -   **0**. Not allowed

    -   **1**. Allowed (default)

To turn off **Let websites provide locally relevant content by accessing my language list**:

-   Turn off the feature in the UI.

    -or-

-   Create a new REG\_DWORD registry setting called **HttpAcceptLanguageOptOut** in **HKEY\_CURRENT\_USER\\Control Panel\\International\\User Profile**, with a value of 1.

### <a href="" id="bkmk-priv-location"></a>14.2 Location

In the **Location** area, you choose whether devices have access to location-specific sensors and which apps have access to the device's location.

To turn off **Location for this device**:

-   Click the **Change** button in the UI.

    -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Location and Sensors** &gt; **Turn off location**.

    -or-

-   Apply the System/AllowLocation MDM policy from the [Policy CSP](http://msdn.microsoft.com/library/windows/hardware/dn904962.aspx), where:

    -   **0**. Turned off and the employee can't turn it back on.

    -   **1**. Turned on, but lets the employee choose whether to use it. (default)

    -   **2**. Turned on and the employee can't turn it off.

    **Note**  
    You can also set this MDM policy in System Center Configuration Manager using the [WMI Bridge Provider](http://msdn.microsoft.com/library/dn905224.aspx).

    -or-

-   Create a provisioning package, using **Runtime settings** &gt; **Policies** &gt; **System** &gt; **AllowLocation**, where

    -   **No**. Turns off location service.

    -   **Yes**. Turns on location service. (default)

To turn off **Location**:

-   Turn off the feature in the UI.

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access location**

    -   Set the **Select a setting** box to **Force Deny**.

    -or-

To turn off **Location history**:

-   Erase the history using the **Clear** button in the UI.

To turn off **Choose apps that can use your location**:

-   Turn off each app using the UI.

### <a href="" id="bkmk-priv-camera"></a>14.3 Camera

In the **Camera** area, you can choose which apps can access a device's camera.

To turn off **Let apps use my camera**:

-   Turn off the feature in the UI.

    -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access the camera**

    -   Set the **Select a setting** box to **Force Deny**.

    -or-

-   Apply the Camera/AllowCamera MDM policy from the [Policy CSP](http://msdn.microsoft.com/library/windows/hardware/dn904962.aspx), where:

    -   **0**. Apps can't use the camera.

    -   **1**. Apps can use the camera.

    **Note**  
    You can also set this MDM policy in System Center Configuration Manager using the [WMI Bridge Provider](http://msdn.microsoft.com/library/dn905224.aspx).
    
   -or-

-   Create a provisioning package with use Windows ICD, using **Runtime settings** &gt; **Policies** &gt; **Camera** &gt; **AllowCamera**, where:

    -   **0**. Apps can't use the camera.

    -   **1**. Apps can use the camera.

To turn off **Choose apps that can use your camera**:

-   Turn off the feature in the UI for each app.

### <a href="" id="bkmk-priv-microphone"></a>14.4 Microphone

In the **Microphone** area, you can choose which apps can access a device's microphone.

To turn off **Let apps use my microphone**:

-   Turn off the feature in the UI.

   -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access the microphone**

    -   Set the **Select a setting** box to **Force Deny**.

To turn off **Choose apps that can use your microphone**:

-   Turn off the feature in the UI for each app.

### <a href="" id="bkmk-priv-speech"></a>14.5 Speech, inking, & typing

In the **Speech, Inking, & Typing** area, you can let Windows and Cortana better understand your employee's voice and written input by sampling their voice and writing, and by comparing verbal and written input to contact names and calendar entrees.

**Note**  
For more info on how to disable Cortana in your enterprise, see [Cortana](#bkmk-cortana) in this article.

 

To turn off the functionality:

-   Click the **Stop getting to know me** button, and then click **Turn off**.

   -or-

-   Enable the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Control Panel** &gt; **Regional and Language Options** &gt; **Handwriting personalization** &gt; **Turn off automatic learning**

   -or-

-   Create a REG\_DWORD registry setting called **AcceptedPrivacyPolicy** in **HKEY\_CURRENT\_USER\\SOFTWARE\\Microsoft\\Personalization\\Settings**, with a value of 0 (zero).

   -and-

    Create a REG\_DWORD registry setting called **HarvestContacts** in **HKEY\_CURRENT\_USER\\SOFTWARE\\Microsoft\\InputPersonalization\\TrainedDataStore**, with a value of 0 (zero).

### <a href="" id="bkmk-priv-accounts"></a>14.6 Account info

In the **Account Info** area, you can choose which apps can access your name, picture, and other account info.

To turn off **Let apps access my name, picture, and other account info**:

-   Turn off the feature in the UI.

   -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access account information**

    -   Set the **Select a setting** box to **Force Deny**.

To turn off **Choose the apps that can access your account info**:

-   Turn off the feature in the UI for each app.

### <a href="" id="bkmk-priv-contacts"></a>14.7 Contacts

In the **Contacts** area, you can choose which apps can access an employee's contacts list.

To turn off **Choose apps that can access contacts**:

-   Turn off the feature in the UI for each app.

   -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access contacts**

    -   Set the **Select a setting** box to **Force Deny**.

### <a href="" id="bkmk-priv-calendar"></a>14.8 Calendar

In the **Calendar** area, you can choose which apps have access to an employee's calendar.

To turn off **Let apps access my calendar**:

-   Turn off the feature in the UI.

   -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access the calendar**

    -   Set the **Select a setting** box to **Force Deny**.

To turn off **Choose apps that can access calendar**:

-   Turn off the feature in the UI for each app.

### <a href="" id="bkmk-priv-callhistory"></a>14.9 Call history

In the **Call history** area, you can choose which apps have access to an employee's call history.

To turn off **Let apps access my call history**:

-   Turn off the feature in the UI.

   -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access call history**

    -   Set the **Select a setting** box to **Force Deny**.

### <a href="" id="bkmk-priv-email"></a>14.10 Email

In the **Email** area, you can choose which apps have can access and send email.

To turn off **Let apps access and send email**:

-   Turn off the feature in the UI.

   -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access email**

    -   Set the **Select a setting** box to **Force Deny**.

### <a href="" id="bkmk-priv-messaging"></a>14.11 Messaging

In the **Messaging** area, you can choose which apps can read or send messages.

To turn off **Let apps read or send messages (text or MMS)**:

-   Turn off the feature in the UI.

    -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access messaging**

    -   Set the **Select a setting** box to **Force Deny**.

To turn off **Choose apps that can read or send messages**:

-   Turn off the feature in the UI for each app.

### <a href="" id="bkmk-priv-radios"></a>14.12 Radios

In the **Radios** area, you can choose which apps can turn a device's radio on or off.

To turn off **Let apps control radios**:

-   Turn off the feature in the UI.

    -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps control radios**

    -   Set the **Select a setting** box to **Force Deny**.

To turn off **Choose apps that can control radios**:

-   Turn off the feature in the UI for each app.

### <a href="" id="bkmk-priv-other-devices"></a>14.13 Other devices

In the **Other Devices** area, you can choose whether devices that aren't paired to PCs, such as an Xbox One, can share and sync info.

To turn off **Let apps automatically share and sync info with wireless devices that don't explicitly pair with your PC, tablet, or phone**:

-   Turn off the feature in the UI.

To turn off **Let your apps use your trusted devices (hardware you've already connected, or comes with your PC, tablet, or phone)**:

-   Turn off the feature in the UI.

    -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access trusted devices**

    -   Set the **Select a setting** box to **Force Deny**.

### <a href="" id="bkmk-priv-feedback"></a>14.14 Feedback & diagnostics

In the **Feedback & Diagnostics** area, you can choose how often you're asked for feedback and how much diagnostic and usage information is sent to Microsoft.

To change how frequently **Windows should ask for my feedback**:

**Note**  
Feedback frequency only applies to user-generated feedback, not diagnostic and usage data sent from the device.

 

-   To change from **Automatically (Recommended)**, use the drop-down list in the UI.

   -or-

-   Enable the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Data Collection and Preview Builds** &gt; **Do not show feedback notifications**

   -or-

-   Create the registry keys (REG\_DWORD type):

    -   HKEY\_CURRENT\_USER\\Software\\Microsoft\\Siuf\\Rules\\PeriodInNanoSeconds

    -   HKEY\_CURRENT\_USER\\Software\\Microsoft\\Siuf\\Rules\\NumberOfSIUFInPeriod

    Based on these settings:

    | Setting       | PeriodInNanoSeconds         | NumberOfSIUFInPeriod        |
    |---------------|-----------------------------|-----------------------------|
    | Automatically | Delete the registry setting | Delete the registry setting |
    | Never         | 0                           | 0                           |
    | Always        | 100000000                   | Delete the registry setting |
    | Once a day    | 864000000000                | 1                           |
    | Once a week   | 6048000000000               | 1                           |

     

To change the level of diagnostic and usage data sent when you **Send your device data to Microsoft**:

-   To change from **Enhanced**, use the drop-down list in the UI. The other levels are **Basic** and **Full**.

    **Note**  
    You can't use the UI to change the telemetry level to **Security**.

     

   -or-

-   Apply the Group Policy: **Computer Configuration\\Administrative Templates\\Windows Components\\Data Collection And Preview Builds\\Allow Telemetry**

   -or-

-   Apply the System/AllowTelemetry MDM policy from the [Policy CSP](http://msdn.microsoft.com/library/windows/hardware/dn904962.aspx), where:

    -   **0**. Maps to the **Security** level.

    -   **1**. Maps to the **Basic** level.

    -   **2**. Maps to the **Enhanced** level.

    -   **3**. Maps to the **Full** level.

   -or-

-   Create a provisioning package, using **Runtime settings** &gt; **Policies** &gt; **System** &gt; **AllowTelemetry**, where:

    -   **0**. Maps to the **Security** level.

    -   **1**. Maps to the **Basic** level.

    -   **2**. Maps to the **Enhanced** level.

    -   **3**. Maps to the **Full** level.

### <a href="" id="bkmk-priv-background"></a>14.15 Background apps

In the **Background Apps** area, you can choose which apps can run in the background.

To turn off **Let apps run in the background**:

-   Turn off the feature in the UI for each app.

### <a href="" id="bkmk-spp"></a>15. Software Protection Platform

Enterprise customers can manage their Windows activation status with volume licensing using an on-premise Key Management Server. You can opt out of sending KMS client activation data to Microsoft automatically by applying the following Group Policy:

**Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Software Protection Platform** &gt; **Turn off KMS Client Online AVS Activation**

The Windows activation status will be valid for a rolling period of 180 days with weekly activation status checks to the KMS.

### <a href="" id="bkmk-syncsettings"></a>16. Sync your settings

You can control if your settings are synchronized:

-   In the UI: **Settings** &gt; **Accounts** &gt; **Sync your settings**

    -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Sync your settings** &gt; **Do not sync**

    -or-

-   Apply the Experience/AllowSyncMySettings MDM policy from the [Policy CSP](http://msdn.microsoft.com/library/windows/hardware/dn904962.aspx) where 0 is not allowed and 1 is allowed.

    -or-

-   Create a provisioning package, using **Runtime settings** &gt; **Policies** &gt; **Experience** &gt; **AllowSyncMySettings**, where

    -   **No**. Settings are not synchronized.

    -   **Yes**. Settings are synchronized. (default)

To turn off Messaging cloud sync:

-   Create a REG\_DWORD registry setting called **CloudServiceSyncEnabled** in **HKEY\_CURRENT\_USER\\SOFTWARE\\Microsoft\\Messaging**, with a value of 0 (zero).

### <a href="" id="bkmk-teredo"></a>17. Teredo

You can disable Teredo by using the netsh.exe command. For more info on Teredo, see [Internet Protocol Version 6, Teredo, and Related Technologies](http://technet.microsoft.com/library/cc722030.aspx).

-   From an elevated command prompt, run **netsh interface teredo set state disabled**

### <a href="" id="bkmk-wifisense"></a>18. Wi-Fi Sense

Wi-Fi Sense automatically connects devices to known hotspots and to the wireless networks the personâ€™s contacts have shared with them.

To turn off **Connect to suggested open hotspots** and **Connect to networks shared by my contacts**:

-   Turn off the feature in the UI.

    -or-

-   Disable the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Network** &gt; **WLAN Service** &gt; **WLAN Settings** &gt; **Allow Windows to automatically connect to suggested open hotspots, to networks shared by contacts, and to hotspots offering paid services**.

    -or-

-   Create a new REG\_DWORD registry setting called **AutoConnectAllowedOEM** in **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\WcmSvc\\wifinetworkmanager\\config**, with a value of 0 (zero).

    -or-

-   Change the Windows Provisioning setting, WiFISenseAllowed, to 0 (zero). For more info, see the Windows Provisioning Settings reference doc, [WiFiSenseAllowed](http://go.microsoft.com/fwlink/p/?LinkId=620909).

    -or-

-   Use the Unattended settings to set the value of WiFiSenseAllowed to 0 (zero). For more info, see the Unattended Windows Setup reference doc, [WiFiSenseAllowed](http://go.microsoft.com/fwlink/p/?LinkId=620910).

When turned off, the Wi-Fi Sense settings still appear on the Wi-Fi Settings screen, but theyâ€™re non-functional and they canâ€™t be controlled by the employee.

### <a href="" id="bkmk-defender"></a>19. Windows Defender

You can opt of the Microsoft Antimalware Protection Service.

-   Disable the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Windows Defender** &gt; **MAPS** &gt; **Join Microsoft MAPS**

    -or-

-   Apply the Defender/AllowClouldProtection MDM policy from the [Defender CSP](http://msdn.microsoft.com/library/windows/hardware/dn904962.aspx).

    -or-

-   Use the registry to set the REG\_DWORD value **HKEY\_LOCAL\_MACHINE\\Software\\Policies\\Microsoft\\Windows Defender\\Spynet\\SpyNetReporting** to 0 (zero).

You can stop sending file samples back to Microsoft.

-   Set the Group Policy **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Windows Defender** &gt; **MAPS** &gt; **Send file samples when further analysis is required** to **Always Prompt** or **Never Send**.

    -or-

-   Apply the Defender/SubmitSamplesConsent MDM policy from the [Defender CSP](http://msdn.microsoft.com/library/windows/hardware/dn904962.aspx), where:

    -   **0**. Always prompt.

    -   **1**. (default) Send safe samples automatically.

    -   **2**. Never send.

    -   **3**. Send all samples automatically.

    -or-

-   Use the registry to set the REG\_DWORD value **HKEY\_LOCAL\_MACHINE\\Software\\Policies\\Microsoft\\Windows Defender\\Spynet\\SubmitSamplesConsent** to 0 (zero) to always prompt or 2 to never send.

You can stop downloading definition updates:

-   Enable the Group Policy **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Windows Defender** &gt; **Signature Updates** &gt; **Define the order of sources for downloading definition updates** and set it to **FileShares**.

    -and-

-   Enable the Group Policy **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Windows Defender** &gt; **Signature Updates** &gt; **Define file shares for downloading definition updates** and set it to nothing.

You can also use the registry to turn off Malicious Software Reporting Tool telemetry by setting the REG\_DWORD value **HKEY\_LOCAL\_MACHINE\\Software\\Policies\\Microsoft\\MRT\\DontReportInfectionInformation** to 1.

### <a href="" id="bkmk-wmp"></a>20. Windows Media Player

To remove Windows Media Player:

-   From the **Programs and Features** control panel, click **Turn Windows features on or off**, under **Media Features**, clear the **Windows Media Player** check box, and then click **OK**.

    -or-

-   Run the following DISM command from an elevated command prompt: **dism /online /Disable-Feature /FeatureName:WindowsMediaPlayer**

### <a href="" id="bkmk-spotlight"></a>21. Windows spotlight

Windows spotlight provides different background images and text on the lock screen. You can control it by using the user interface or through Group Policy.

-   Configure the following in **Settings**:

    -   **Personalization** &gt; **Lock screen** &gt; **Background** &gt; **Windows spotlight**, select a different background, and turn off **Show me tips, tricks, and more on the lock screen**.

    -   **Personalization** &gt; **Start** &gt; **Occasionally show suggestions in Start**.

    -   **System** &gt; **Notifications & actions** &gt; **Show me tips about Windows**.

    -or-

-   Apply the Group Policies:

    -   **Computer Configuration** &gt; **Administrative Templates** &gt; **Control Panel** &gt; **Personalization** &gt; **Force a specific default lock screen image**.
        -   Add a location in the **Path to local lock screen image** box.

        -   Set the **Turn off fun facts, tips, tricks, and more on lock screen** check box.

        **Note**  This will only take effect if the policy is applied before the first logon. If you cannot apply the **Force a specific default lock screen image** policy before the first logon to the device, you can apply this policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Control Panel** &gt; **Personalization** &gt; **Do not display the lock screen**.

         

    -   **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Cloud Content** &gt; **Do not show Windows Tips**.

    -   **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Cloud Content** &gt; **Turn off Microsoft consumer experiences**.

For more info, see [Windows spotlight on the lock screen](../whats-new/windows-spotlight.md).

### <a href="" id="bkmk-windowsstore"></a>22. Windows Store

You can turn off the ability to launch apps from the Windows Store that were preinstalled or downloaded. This will also turn off automatic app updates, and the Windows Store will be disabled.

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Store** &gt; **Disable all apps from Windows Store**.

### <a href="" id="bkmk-updates"></a>23. Windows Update Delivery Optimization

Windows Update Delivery Optimization lets you get Windows updates and Windows Store apps from sources in addition to Microsoft, which not only helps when you have a limited or unreliable Internet connection, but can also help you reduce the amount of bandwidth needed to keep all of your organization's PCs up-to-date. If you have Delivery Optimization turned on, PCs on your network may send and receive updates and apps to other PCs on your local network, if you choose, or to PCs on the Internet.

By default, PCs running Windows 10 Enterprise and Windows 10 Education will only use Delivery Optimization to get and receive updates for PCs and apps on your local network.

Use the UI, Group Policy, MDM policies, or Windows Provisioning to set up Delivery Optimization.

### <a href="" id="bkmk-wudo-ui"></a>23.1 Settings &gt; Update & security

You can set up Delivery Optimization from the **Settings** UI.

-   Go to **Settings** &gt; **Update & security** &gt; **Windows Update** &gt; **Advanced options** &gt; **Choose how updates are delivered**.

### <a href="" id="bkmk-wudo-gp"></a>23.2 Delivery Optimization Group Policies

You can find the Delivery Optimization Group Policy objects under **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Delivery Optimization**.

| Policy                    | Description                                                                                         |
|---------------------------|-----------------------------------------------------------------------------------------------------|
| Download Mode             | Lets you choose where Delivery Optimization gets or sends updates and apps, including <ul><li><p><strong>None</strong>. Turns off Delivery Optimization.</p></li><li><p><strong>Group</strong>. Gets or sends updates and apps to PCs on the same local network domain.</p></li><li><p><strong>Internet</strong>. Gets or sends updates and apps to PCs on the Internet.</p></li><li><p><strong>LAN</strong>. Gets or sends updates and apps to PCs on the same NAT only.</p></li></ul>|
| Group ID                  | Lets you provide a Group ID that limits which PCs can share apps and updates. <br /> ** Note** This ID must be a GUID.|
| Max Cache Age             | Lets you specify the maximum time (in seconds) that a file is held in the Delivery Optimization cache. <br /> The default value is 259200 seconds (3 days).|
| Max Cache Size            | Lets you specify the maximum cache size as a percentage of disk size. <br /> The default value is 20, which represents 20% of the disk.|
| Max Upload Bandwidth      | Lets you specify the maximum upload bandwidth (in KB/second) that a device uses across all concurrent upload activity. <br /> The default value is 0, which means unlimited possible bandwidth.|

### <a href="" id="bkmk-wudo-mdm"></a>23.3 Delivery Optimization MDM policies

The following Delivery Optimization MDM policies are available in the [Policy CSP](http://msdn.microsoft.com/library/windows/hardware/dn904962.aspx).

| Policy                    | Description                                                                                         |
|---------------------------|-----------------------------------------------------------------------------------------------------|
| DeliveryOptimization/DODownloadMode             | Lets you choose where Delivery Optimization gets or sends updates and apps, including <ul><li><p><strong>0</strong>. Turns off Delivery Optimization.</p></li><li><p><strong>1</strong>. Gets or sends updates and apps to PCs on the same NAT only.</p></li><li><p><strong>2</strong>. Gets or sends updates and apps to PCs on the same local network domain.</p></li><li><p><strong>3</strong>. Gets or sends updates and apps to PCs on the Internet.</p></li></ul>|
| DeliveryOptimization/DOGroupID                 | Lets you provide a Group ID that limits which PCs can share apps and updates. <br /> ** Note** This ID must be a GUID.|
| DeliveryOptimization/DOMaxCacheAge             | Lets you specify the maximum time (in seconds) that a file is held in the Delivery Optimization cache. <br /> The default value is 259200 seconds (3 days).|
| DeliveryOptimization/DOMaxCacheSize            | Lets you specify the maximum cache size as a percentage of disk size. <br /> The default value is 20, which represents 20% of the disk.|
| DeliveryOptimization/DOMaxUploadBandwidth      | Lets you specify the maximum upload bandwidth (in KB/second) that a device uses across all concurrent upload activity. <br /> The default value is 0, which means unlimited possible bandwidth.|


### <a href="" id="bkmk-wudo-prov"></a>23.4 Delivery Optimization Windows Provisioning

If you don't have an MDM server in your enterprise, you can use Windows Provisioning to configure the Delivery Optimization policies

Use Windows ICD, included with the [Windows Assessment and Deployment Kit (Windows ADK)](http://go.microsoft.com/fwlink/p/?LinkId=526803), to create a provisioning package for Delivery Optimization.

1.  Open Windows ICD, and then click **New provisioning package**.

2.  In the **Name** box, type a name for the provisioning package, and then click **Next.**

3.  Click the **Common to all Windows editions** option, click **Next**, and then click **Finish**.

4.  Go to **Runtime settings** &gt; **Policies** &gt; **DeliveryOptimization** to configure the policies.

For more info about Delivery Optimization in general, see [Windows Update Delivery Optimization: FAQ](http://go.microsoft.com/fwlink/p/?LinkId=730684).

### <a href="" id="bkmk-wu"></a>24. Windows Update

You can turn off Windows Update by setting the following registry entries:

-   Add a REG\_DWORD value called **DoNotConnectToWindowsUpdateInternetLocations** to **HKEY\_LOCAL\_MACHINE\\Software\\Policies\\Microsoft\\Windows\\WindowsUpdate** and set the value to 1.

    -and-

-   Add a REG\_DWORD value called **DisableWindowsUpdateAccess** to **HKEY\_LOCAL\_MACHINE\\Software\\Policies\\Microsoft\\Windows\\WindowsUpdate** and set the value to 1.

You can turn off automatic updates by doing one of the following. This is not recommended.

-   Add a REG\_DWORD value called **AutoDownload** to **HKEY\_LOCAL\_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\WindowsStore\\WindowsUpdate** and set the value to 5.

    -or-

-   Apply the Update/AllowAutoUpdate MDM policy from the [Policy CSP](http://msdn.microsoft.com/library/windows/hardware/dn904962.aspx), where:

    -   **0**. Notify the user before downloading the update.

    -   **1**. Auto install the update and then notify the user to schedule a device restart.

    -   **2** (default). Auto install and restart.

    -   **3**. Auto install and restart at a specified time.

    -   **4**. Auto install and restart without end-user control.

    -   **5**. Turn off automatic updates.

To learn more, see [Device update management](http://msdn.microsoft.com/library/windows/hardware/dn957432.aspx) and [Configure Automatic Updates by using Group Policy](http://technet.microsoft.com/library/cc720539.aspx).
