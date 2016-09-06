---
title: Manage connections from Windows operating system components to Microsoft services (Windows 10)
description: If you want to minimize connections from Windows to Microsoft services, or configure particular privacy settings, this article covers the settings that you could consider.
ms.assetid: ACCEB0DD-BC6F-41B1-B359-140B242183D9
keywords: privacy, manage connections to Microsoft, Windows 10, Windows Server 2016
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
localizationpriority: high
author: brianlic-msft
---

# Manage connections from Windows operating system components to Microsoft services

**Applies to**

-   Windows 10
-   Windows Server 2016

If you're looking for content on what each telemetry level means and how to configure it in your organization, see [Configure Windows telemetry in your organization](configure-windows-telemetry-in-your-organization.md).

Learn about the network connections that Windows components make to Microsoft and also the privacy settings that affect data that is shared with either Microsoft or apps and how they can be managed by an IT Pro.

If you want to minimize connections from Windows to Microsoft services, or configure particular privacy settings, this article covers the settings that you could consider. You can configure telemetry at the lowest level for your edition of Windows, and also evaluate which other connections Windows makes to Microsoft services you want to turn off in your environment from the list in this article.

You can configure telemetry at the Security level, turn off Windows Defender telemetry and MSRT reporting, and turn off all other connections to Microsoft network endpoints as described in this article to help prevent Windows from sending any data to Microsoft. There are many reason why these communications are enabled by default, such as updating malware definitions and maintain current certificate revocation lists, which is why we strongly recommend against this. This data helps us deliver a secure, reliable, and more delightful personalized experience.

We are always striving to improve our documentation and welcome your feedback. You can provide feedback by contacting telmhelp@microsoft.com.


## What's new in Windows 10, version 1607 and Windows Server 2016

Here's a list of changes that were made to this article for Windows 10, version 1607 and Windows Server 2016:

- Added instructions on how to turn off speech recognition and speech synthesis model updates in [14.5 Speech, inking, & typing](#bkmk-priv-speech).
- Added instructions on how to turn off flip ahead with an Internet Explorer Group Policy.
- Added a section on how to turn off automatic root updates to stop updating the certificate trust list in [1. Certificate trust lists](#certificate-trust-lists).
- Added a new setting in [25. Windows Update](#bkmk-wu). 
- Changed the NCSI URL in [11. Network Connection Status Indicator](#bkmk-ncsi).
- Added a section on how to turn off features that depend on Microsoft Account cloud authentication service [10. Microsoft Account](#bkmk-microsoft-account).

- Added the following Group Policies:

    - Turn off unsolicited network traffic on the Offline Maps settings page
    - Turn off all Windows spotlight features

## <a href="" id="bkmk-othersettings"></a>Settings


The following sections list the components that make network connections to Microsoft services by default. You can configure these settings to control the data that is sent to Microsoft. To prevent Windows from sending any data to Microsoft, configure telemetry at the Security level, turn off Windows Defender telemetry and MSRT reporting, and turn off all of these connections.

If you're running Windows 10, they will be included in the next update for the Long Term Servicing Branch.

### Settings for Windows 10 Enterprise, version 1607

See the following table for a summary of the management settings for Windows 10 Enterprise, version 1607.

| Setting | UI | Group Policy | MDM policy | Registry | Command line |
| - | :-: | :-: | :-: | :-: | :-: |
| [1. Certificate trust lists](#certificate-trust-lists) | | ![Check mark](images/checkmark.png) | | | |
| [2. Cortana and Search](#bkmk-cortana) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) |
| [3. Date & Time](#bkmk-datetime) | ![Check mark](images/checkmark.png) | | | ![Check mark](images/checkmark.png) | |
| [4. Device metadata retrieval](#bkmk-devinst) | | ![Check mark](images/checkmark.png) | | | |
| [5. Font streaming](#font-streaming) | | | | ![Check mark](images/checkmark.png) | |
| [6. Insider Preview builds](#bkmk-previewbuilds) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) |
| [7. Internet Explorer](#bkmk-ie) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | | |
| [8. Live Tiles](#live-tiles) | | ![Check mark](images/checkmark.png) | | | |
| [9. Mail synchronization](#bkmk-mailsync) | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | | |
| [10. Microsoft Account](#bkmk-microsoft-account) | | | | ![Check mark](images/checkmark.png) | |
| [11. Microsoft Edge](#bkmk-edge) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) |
| [12. Network Connection Status Indicator](#bkmk-ncsi) | | ![Check mark](images/checkmark.png) | | | |
| [13. Offline maps](#bkmk-offlinemaps) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | | |
| [14. OneDrive](#bkmk-onedrive) | | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | |
| [15. Preinstalled apps](#bkmk-preinstalledapps) | ![Check mark](images/checkmark.png) | | | | ![Check mark](images/checkmark.png) |
| [16. Settings > Privacy](#bkmk-settingssection) | | | | | |
| &nbsp;&nbsp;&nbsp;&nbsp;[16.1 General](#bkmk-priv-general) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[16.2 Location](#bkmk-priv-location) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | |
| &nbsp;&nbsp;&nbsp;&nbsp;[16.3 Camera](#bkmk-priv-camera) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | |
| &nbsp;&nbsp;&nbsp;&nbsp;[16.4 Microphone](#bkmk-priv-microphone) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | | |
| &nbsp;&nbsp;&nbsp;&nbsp;[16.5 Notifications](#bkmk-priv-notifications) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | | |
| &nbsp;&nbsp;&nbsp;&nbsp;[16.6 Speech, inking, & typing](#bkmk-priv-speech) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[16.7 Account info](#bkmk-priv-accounts) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | | |
| &nbsp;&nbsp;&nbsp;&nbsp;[16.8 Contacts](#bkmk-priv-contacts) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | | |
| &nbsp;&nbsp;&nbsp;&nbsp;[16.9 Calendar](#bkmk-priv-calendar) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | | |
| &nbsp;&nbsp;&nbsp;&nbsp;[16.10 Call history](#bkmk-priv-callhistory) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | | |
| &nbsp;&nbsp;&nbsp;&nbsp;[16.11 Email](#bkmk-priv-email) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | | |
| &nbsp;&nbsp;&nbsp;&nbsp;[16.12 Messaging](#bkmk-priv-messaging) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | | |
| &nbsp;&nbsp;&nbsp;&nbsp;[16.13 Radios](#bkmk-priv-radios) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | | |
| &nbsp;&nbsp;&nbsp;&nbsp;[16.14 Other devices](#bkmk-priv-other-devices) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[16.15 Feedback & diagnostics](#bkmk-priv-feedback) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| &nbsp;&nbsp;&nbsp;&nbsp;[16.16 Background apps](#bkmk-priv-background) | ![Check mark](images/checkmark.png) | | | | |
| [17. Software Protection Platform](#bkmk-spp) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | |
| [18. Sync your settings](#bkmk-syncsettings) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | |
| [19. Teredo](#bkmk-teredo) | | | | | ![Check mark](images/checkmark.png) |
| [20. Wi-Fi Sense](#bkmk-wifisense) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | |
| [21. Windows Defender](#bkmk-defender) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [22. Windows Media Player](#bkmk-wmp) | ![Check mark](images/checkmark.png) | | | | ![Check mark](images/checkmark.png) |
| [23. Windows spotlight](#bkmk-spotlight) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | | |
| [24. Windows Store](#bkmk-windowsstore) | | ![Check mark](images/checkmark.png) | | | |
| [25. Windows Update Delivery Optimization](#bkmk-updates) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | |
| [26. Windows Update](#bkmk-wu) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | |

### Settings for Windows Server 2016 with Desktop Experience

See the following table for a summary of the management settings for Windows Server 2016 with Desktop Experience.

| Setting | UI | Group Policy | Registry | Command line |
| - | :-: | :-: | :-: | :-: |
| [1. Certificate trust lists](#certificate-trust-lists) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [2. Cortana and Search](#bkmk-cortana) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | |
| [3. Date & Time](#bkmk-datetime) | ![Check mark](images/checkmark.png) | | ![Check mark](images/checkmark.png) | |
| [4. Device metadata retrieval](#bkmk-devinst) | | ![Check mark](images/checkmark.png) | | |
| [5. Font streaming](#font-streaming) | | | ![Check mark](images/checkmark.png) | |
| [6. Insider Preview builds](#bkmk-previewbuilds) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | |
| [7. Internet Explorer](#bkmk-ie) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | | |
| [8. Live Tiles](#live-tiles) | | ![Check mark](images/checkmark.png) | | |
| [10. Microsoft Account](#bkmk-microsoft-account) | | | ![Check mark](images/checkmark.png) | |
| [12. Network Connection Status Indicator](#bkmk-ncsi) | | ![Check mark](images/checkmark.png) | | |
| [14. OneDrive](#bkmk-onedrive) | | ![Check mark](images/checkmark.png) | | |
| [16. Settings > Privacy](#bkmk-settingssection) | | | | |
| &nbsp;&nbsp;&nbsp;&nbsp;[16.1 General](#bkmk-priv-general) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [17. Software Protection Platform](#bkmk-spp) | | ![Check mark](images/checkmark.png) | | |
| [19. Teredo](#bkmk-teredo) | | | | ![Check mark](images/checkmark.png) |
| [21. Windows Defender](#bkmk-defender) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [22. Windows Media Player](#bkmk-wmp) | | | | ![Check mark](images/checkmark.png) |
| [24. Windows Store](#bkmk-windowsstore) | | ![Check mark](images/checkmark.png) | | |
| [26. Windows Update](#bkmk-wu) | | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |

### Settings for Windows Server 2016 Server Core

See the following table for a summary of the management settings for Windows Server 2016 Server Core.

| Setting | Group Policy | Registry | Command line |
| - | :-: | :-: | :-: | :-: | :-: |
| [1. Certificate trust lists](#certificate-trust-lists) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [3. Date & Time](#bkmk-datetime) | | ![Check mark](images/checkmark.png) | |
| [5. Font streaming](#font-streaming) | | ![Check mark](images/checkmark.png) | |
| [12. Network Connection Status Indicator](#bkmk-ncsi) | ![Check mark](images/checkmark.png) | | |
| [17. Software Protection Platform](#bkmk-spp) | ![Check mark](images/checkmark.png) | | |
| [19. Teredo](#bkmk-teredo) | | | ![Check mark](images/checkmark.png) |
| [21. Windows Defender](#bkmk-defender) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |
| [26. Windows Update](#bkmk-wu) | ![Check mark](images/checkmark.png) | ![Check mark](images/checkmark.png) | |

### Settings for Windows Server 2016 Nano Server

See the following table for a summary of the management settings for Windows Server 2016 Nano Server.

| Setting | Registry | Command line |
| - | :-: | :-: | :-: | :-: | :-: |
| [1. Certificate trust lists](#certificate-trust-lists) | ![Check mark](images/checkmark.png) | |
| [3. Date & Time](#bkmk-datetime) | ![Check mark](images/checkmark.png) | |
| [19. Teredo](#bkmk-teredo) | | ![Check mark](images/checkmark.png) |
| [26. Windows Update](#bkmk-wu) | ![Check mark](images/checkmark.png) | |

## Settings

Use the following sections for more information about how to configure each setting.

### <a href="" id="certificate-trust-lists"></a>1. Certificate trust lists

A certificate trust list is a predefined list of items, such as a list of certificate hashes or a list of file name, that are signed by a trusted entity. Windows automatically downloads an updated certificate trust list when it is available.

To turn off the automatic download of an updated certificate trust list, you can turn off automatic root updates, which also includes the disallowed certificate list and the pin rules list.

For Windows 10, Windows Server 2016 with Desktop Experience, and Windows Server 2016 Server Core:

- Enable the Group Policy: **Computer Configuration** > **Administrative Templates** > **System** > **Internet Communication Management** > **Internet Communication Settings** > **Turn off Automatic Root Certificates Update**

    -or-

- Create the registry path **HKEY\_LOCAL\_MACHINE\SOFTWARE\Policies\Microsoft\SystemCertificates\AuthRoot** and then add a REG\_DWORD registry setting, called **DisableRootAutoUpdate**, with a value of 1.

    -or-

1. Navigate to **Computer Configuration** > **Windows Settings** > **Security Settings** > **Public Key Policies**.
2. Double-click **Certificate Path Validation Settings**.
3. On the **Network Retrieval** tab, select the **Define these policy settings** check box.
4. Clear the **Automatically update certificates in the Microsoft Root Certificate Program (recommended)** check box, and then click **OK**.

On Windows Server 2016 Nano Server:

- Create the registry path **HKEY\_LOCAL\_MACHINE\SOFTWARE\Policies\Microsoft\SystemCertificates\AuthRoot** and then add a REG\_DWORD registry setting, called **DisableRootAutoUpdate**, with a value of 1.

### <a href="" id="bkmk-cortana"></a>2. Cortana and Search

Use either Group Policy or MDM policies to manage settings for Cortana. For more info, see [Cortana, Search, and privacy: FAQ](https://go.microsoft.com/fwlink/p/?LinkId=730683).

### <a href="" id="bkmk-cortana-gp"></a>2.1 Cortana and Search Group Policies

Find the Cortana Group Policy objects under **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Search**.

| Policy                                               | Description                                                                           |
|------------------------------------------------------|---------------------------------------------------------------------------------------|
| Allow Cortana                                        | Choose whether to let Cortana install and run on the device.<br/><br/>Disable this policy to turn off Cortana. |
| Allow search and Cortana to use location             | Choose whether Cortana and Search can provide location-aware search results.<br/><br/>Disable this policy to block access to location information for Cortana. |
| Do not allow web search                              | Choose whether to search the web from Windows Desktop Search.<br/><br/>Enable this policy to remove the option to search the Internet from Cortana. |
| Don't search the web or display web results in Search| Choose whether to search the web from Cortana.<br/><br/>Enable this policy to stop web queries and results from showing in Search. |
| Set what information is shared in Search             | Control what information is shared with Bing in Search.<br/><br/>If you enable this policy and set it to **Anonymous info**, usage information will be shared but not search history, Microsoft Account information, or specific location. |

In Windows 10, version 1507 and Windows 10, version 1511, when you enable the **Don't search the web or display web results in Search** Group Policy, you can control the behavior of whether Cortana searches the web to display web results. However, this policy only covers whether or not web search is performed. There could still be a small amount of network traffic to Bing.com to evaluate if certain Cortana components are up-to-date or not. In order to turn off that network activity completely, you can create a Windows Firewall rule to prevent outbound traffic.

>[!IMPORTANT]
>These steps are not required for devices running Windows 10, version 1607 or Windows Server 2016. 

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

If your organization tests network traffic, you should not use Fiddler to test Windows Firewall settings. Fiddler is a network proxy and Windows Firewall does not block proxy traffic. You should use a network traffic analyzer, such as WireShark or Message Analyzer.

### <a href="" id="bkmk-cortana-mdm"></a>2.2 Cortana and Search MDM policies

For Windows 10 only, the following Cortana MDM policies are available in the [Policy CSP](http://msdn.microsoft.com/library/windows/hardware/dn904962.aspx).

| Policy                                               | Description                                                                                         |
|------------------------------------------------------|-----------------------------------------------------------------------------------------------------|
| Experience/AllowCortana                              | Choose whether to let Cortana install and run on the device.                                        |
| Search/AllowSearchToUseLocation                      | Choose whether Cortana and Search can provide location-aware search results. <br /> Default: Allowed|

### <a href="" id="bkmk-datetime"></a>3. Date & Time

You can prevent Windows from setting the time automatically.

-   To turn off the feature in the UI: **Settings** &gt; **Time & language** &gt; **Date & time** &gt; **Set time automatically**

    -or-

-   Create a REG\_SZ registry setting in **HKEY\_LOCAL\_MACHINE\\SYSTEM\\CurrentControlSet\\Services\\W32Time\\Parameters\\Type** with a value of **NoSync**.

### <a href="" id="bkmk-devinst"></a>4. Device metadata retrieval

To prevent Windows from retrieving device metadata from the Internet, apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **System** &gt; **Device Installation** &gt; **Prevent device metadata retrieval from the Internet**.

### <a href="" id="font-streaming"></a>5. Font streaming

Fonts that are included in Windows but that are not stored on the local device can be downloaded on demand.

To turn off font streaming, create a REG\_DWORD registry setting called **DisableFontProviders** in **HKEY\_LOCAL\_MACHINE\\System\\CurrentControlSet\\Services\\FontCache\\Parameters**, with a value of 1.


### <a href="" id="bkmk-previewbuilds"></a>6. Insider Preview builds

The Windows Insider Preview program lets you help shape the future of Windows, be part of the community, and get early access to releases of Windows 10.

> [!NOTE]  
> This setting stops communication with the Windows Insider Preview service that checks for new builds. Windows Insider Preview builds only apply to Windows 10 and are not available for Windows Server 2016.

To turn off Insider Preview builds for a released version of Windows 10:

- Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Data Collection and Preview Builds** &gt; **Toggle user control over Insider builds**.

To turn off Insider Preview builds for Windows 10:

> [!NOTE]  
> If you're running a preview version of Windows 10, you must roll back to a released version before you can turn off Insider Preview builds.

-   Turn off the feature in the UI: **Settings** > **Update & security** > **Windows Insider Program** > **Stop Insider Preview builds**.

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

### <a href="" id="bkmk-ie"></a>7. Internet Explorer

Use Group Policy to manage settings for Internet Explorer.  You can find the Internet Explorer Group Policy objects under **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Internet Explorer**.

| Policy                                               | Description                                                                                         |
|------------------------------------------------------|-----------------------------------------------------------------------------------------------------|
| Turn on Suggested Sites| Choose whether an employee can configure Suggested Sites. <br /> Default: Enabled <br /> You can also turn this off in the UI by clearing the **Internet Options** &gt; **Advanced** &gt; **Enable Suggested Sites** check box.|
| Allow Microsoft services to provide enhanced suggestions as the user types in the Address Bar | Choose whether an employee can configure enhanced suggestions, which are presented to the employee as they type in the address bar. <br /> Default: Enabled|
| Turn off the auto-complete feature for web addresses | Choose whether auto-complete suggests possible matches when employees are typing web address in the address bar. <br /> Default: Disabled </br> You can also turn this off in the UI by clearing the <strong>Internet Options</strong> &gt; **Advanced** &gt; **Use inline AutoComplete in the Internet Explorer Address Bar and Open Dialog** check box.|
| Disable Periodic Check for Internet Explorer software updates| Choose whether Internet Explorer periodically checks for a new version. <br /> Default: Enabled |
| Turn off browser geolocation | Choose whether websites can request location data from Internet Explorer. <br /> Default: Disabled|

There are two more Group Policy objects that are used by Internet Explorer:

| Path | Policy | Description |
| - | - | - |
| **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Internet Explorer** > **Internet Control Panel** > **Advanced Page**  | Turn off the flip ahead with page prediction feature | Choose whether an employee can swipe across a screen or click forward to go to the next pre-loaded page of a website. <br /> Default: Enabled |
| **Computer Configuration** > **Administrative Templates** > **Windows Components** > **RSS Feeds** | Turn off background synchronization for feeds and Web Slices | Choose whether to have background synchronization for feeds and Web Slices. <br /> Default: Enabled |

### <a href="" id="bkmk-ie-activex"></a>7.1 ActiveX control blocking

ActiveX control blocking periodically downloads a new list of out-of-date ActiveX controls that should be blocked. You can turn this off by changing the REG\_DWORD registry setting **HKEY\_CURRENT\_USER\\Software\\Microsoft\\Internet Explorer\\VersionManager\\DownloadVersionList** to 0 (zero).

For more info, see [Out-of-date ActiveX control blocking](http://technet.microsoft.com/library/dn761713.aspx).

### <a href="" id="live-tiles"></a>8. Live Tiles

To turn off Live Tiles:

-   Apply the Group Policy: **User Configuration** > **Administrative Templates** > **Start Menu and Taskbar** > **Notifications** > **Turn Off notifications network usage**

### <a href="" id="bkmk-mailsync"></a>9. Mail synchronization

To turn off mail synchronization for Microsoft Accounts that are configured on a device:

-   In **Settings** &gt; **Accounts** &gt; **Your email and accounts**, remove any connected Microsoft Accounts.

    -or-

-   Remove any Microsoft Accounts from the Mail app.

    -or-

-   Apply the Accounts/AllowMicrosoftAccountConnection MDM policy from the [Policy CSP](http://msdn.microsoft.com/library/windows/hardware/dn904962.aspx) where 0 is not allowed and 1 is allowed. This does not apply to Microsoft Accounts that have already been configured on the device.

To turn off the Windows Mail app:

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Windows Mail** &gt; **Turn off Windows Mail application**

### <a href="" id="bkmk-microsoft-account"></a>10. Microsoft Account

To prevent communication to the Microsoft Account cloud authentication service. Many apps and system components that depend on Microsoft Account authentication may lose functionality. Some of them could be in unexpected ways.

-   Change the **Start** REG\_DWORD registry setting in **HKEY\_LOCAL\_MACHINE\\System\\CurrentControlSet\\Services\\wlidsvc** to 4.


### <a href="" id="bkmk-edge"></a>11. Microsoft Edge

Use either Group Policy or MDM policies to manage settings for Microsoft Edge. For more info, see [Microsoft Edge and privacy: FAQ](https://go.microsoft.com/fwlink/p/?LinkId=730682).

### <a href="" id="bkmk-edgegp"></a>11.1 Microsoft Edge Group Policies

Find the Microsoft Edge Group Policy objects under **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Microsoft Edge**.

> [!NOTE] 
> The Microsoft Edge Group Policy names were changed in Windows 10, version 1607. The table below reflects those changes.

| Policy                                               | Description                                                                                         |
|------------------------------------------------------|-----------------------------------------------------------------------------------------------------|
| Configure autofill                                    | Choose whether employees can use autofill on websites. <br /> Default: Enabled                      |
| Configure Do Not Track         | Choose whether employees can send Do Not Track headers.<br /> Default: Disabled                     |
| Configure password manager                            | Choose whether employees can save passwords locally on their devices. <br /> Default: Enabled       |
| Configure search suggestions in Address bar              | Choose whether the address bar shows search suggestions. <br /> Default: Enabled                    |
| Configure SmartScreen Filter                      | Choose whether SmartScreen is turned on or off.  <br /> Default: Enabled                            |
| Allow web content on New Tab page                     | Choose whether a new tab page appears.  <br /> Default: Enabled                                     |
| Configure Home pages                       | Choose the corporate Home page for domain-joined devices. <br /> Set this to **about:blank**        |


The Windows 10, version 1511 Microsoft Edge Group Policy names are:

| Policy                                               | Description                                                                                         |
|------------------------------------------------------|-----------------------------------------------------------------------------------------------------|
| Turn off autofill                                    | Choose whether employees can use autofill on websites. <br /> Default: Enabled                      |
| Allow employees to send Do Not Track headers         | Choose whether employees can send Do Not Track headers.<br /> Default: Disabled                     |
| Turn off password manager                            | Choose whether employees can save passwords locally on their devices. <br /> Default: Enabled       |
| Turn off address bar search suggestions              | Choose whether the address bar shows search suggestions. <br /> Default: Enabled                    |
| Turn off the SmartScreen Filter                      | Choose whether SmartScreen is turned on or off.  <br /> Default: Enabled                            |
| Open a new tab with an empty tab                     | Choose whether a new tab page appears.  <br /> Default: Enabled                                     |
| Configure corporate Home pages                       | Choose the corporate Home page for domain-joined devices. <br /> Set this to **about:blank**        |

### <a href="" id="bkmk-edge-mdm"></a>11.2 Microsoft Edge MDM policies

The following Microsoft Edge MDM policies are available in the [Policy CSP](http://msdn.microsoft.com/library/windows/hardware/dn904962.aspx).

| Policy                                               | Description                                                                                         |
|------------------------------------------------------|-----------------------------------------------------------------------------------------------------|
| Browser/AllowAutoFill                                | Choose whether employees can use autofill on websites. <br /> Default: Allowed                      |
| Browser/AllowDoNotTrack                              | Choose whether employees can send Do Not Track headers.<br /> Default: Not allowed                  |
| Browser/AllowPasswordManager                         | Choose whether employees can save passwords locally on their devices. <br /> Default: Allowed       |
| Browser/AllowSearchSuggestionsinAddressBar           | Choose whether the address bar shows search suggestions.. <br /> Default: Allowed                   |
| Browser/AllowSmartScreen                             | Choose whether SmartScreen is turned on or off.  <br /> Default: Allowed                            |


For a complete list of the Microsoft Edge policies, see [Available policies for Microsoft Edge](http://technet.microsoft.com/library/mt270204.aspx).

### <a href="" id="bkmk-ncsi"></a>12. Network Connection Status Indicator

Network Connection Status Indicator (NCSI) detects Internet connectivity and corporate network connectivity status. NCSI sends a DNS request and HTTP query to http://www.msftconnecttest.com/connecttest.txt to determine if the device can communicate with the Internet. For more info about NCSI, see [The Network Connection Status Icon](http://blogs.technet.com/b/networking/archive/2012/12/20/the-network-connection-status-icon.aspx).

In versions of Windows 10 prior to Windows 10, version 1607 and Windows Server 2016, the URL was http://www.msftncsi.com. 

You can turn off NCSI through Group Policy:

-   Enable the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **System** &gt; **Internet Communication Management** &gt; **Internet Communication Settings** &gt; **Turn off Windows Network Connectivity Status Indicator active tests**

> [!NOTE] 
> After you apply this policy, you must restart the device for the policy setting to take effect.

### <a href="" id="bkmk-offlinemaps"></a>13. Offline maps

You can turn off the ability to download and update offline maps.

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Maps** &gt; **Turn off Automatic Download and Update of Map Data**

    -and-

- In Windows 10, version 1607 and later, apply the Group Policy: **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Maps** > **Turn off unsolicited network traffic on the Offline Maps settings page**

### <a href="" id="bkmk-onedrive"></a>14. OneDrive

To turn off OneDrive in your organization:

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **OneDrive** &gt; **Prevent the usage of OneDrive for file storage**

### <a href="" id="bkmk-preinstalledapps"></a>15. Preinstalled apps

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

### <a href="" id="bkmk-settingssection"></a>16. Settings &gt; Privacy

Use Settings &gt; Privacy to configure some settings that may be important to your organization. Except for the Feedback & Diagnostics page, these settings must be configured for every user account that signs into the PC.

-   [16.1 General](#bkmk-general)

-   [16.2 Location](#bkmk-priv-location)

-   [16.3 Camera](#bkmk-priv-camera)

-   [16.4 Microphone](#bkmk-priv-microphone)

-   [16.5 Notifications](#bkmk-priv-notifications)

-   [16.6 Speech, inking, & typing](#bkmk-priv-speech)

-   [16.7 Account info](#bkmk-priv-accounts)

-   [16.8 Contacts](#bkmk-priv-contacts)

-   [16.9 Calendar](#bkmk-priv-calendar)

-   [16.10 Call history](#bkmk-priv-callhistory)

-   [16.11 Email](#bkmk-priv-email)

-   [16.12 Messaging](#bkmk-priv-messaging)

-   [16.13 Radios](#bkmk-priv-radios)

-   [16.14 Other devices](#bkmk-priv-other-devices)

-   [16.15 Feedback & diagnostics](#bkmk-priv-feedback)

-   [16.16 Background apps](#bkmk-priv-background)

### <a href="" id="bkmk-general"></a>16.1 General

**General** includes options that don't fall into other areas.

To turn off **Let apps use my advertising ID for experiences across apps (turning this off will reset your ID)**:

> [!NOTE] 
> When you turn this feature off in the UI, it turns off the advertising ID, not just resets it.

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

-   Create a REG\_DWORD registry setting called **EnableWebContentEvaluation** in **HKEY\_CURRENT\_USER\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\AppHost**, with a value of 0 (zero).

To turn off **Send Microsoft info about how I write to help us improve typing and writing in the future**:

> [!NOTE] 
> If the telemetry level is set to either **Basic** or **Security**, this is turned off automatically.

 

-   Turn off the feature in the UI.

    -or-

-   Apply the TextInput/AllowLinguisticDataCollection MDM policy from the [Policy CSP](http://msdn.microsoft.com/library/windows/hardware/dn904962.aspx) where:

    -   **0**. Not allowed

    -   **1**. Allowed (default)

To turn off **Let websites provide locally relevant content by accessing my language list**:

-   Turn off the feature in the UI.

    -or-

-   Create a new REG\_DWORD registry setting called **HttpAcceptLanguageOptOut** in **HKEY\_CURRENT\_USER\\Control Panel\\International\\User Profile**, with a value of 1.

To turn off **Let apps on my other devices open apps and continue experiences on this devices**:

- Turn off the feature in the UI.

    -or-

-   Disable the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **System** &gt; **Group Policy** &gt; **Continue experiences on this device**.

To turn off **Let apps on my other devices use Bluetooth to open apps and continue experiences on this device**:

- Turn off the feature in the UI.

### <a href="" id="bkmk-priv-location"></a>16.2 Location

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

    > [!NOTE]   
    > You can also set this MDM policy in System Center Configuration Manager using the [WMI Bridge Provider](http://msdn.microsoft.com/library/dn905224.aspx).

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

### <a href="" id="bkmk-priv-camera"></a>16.3 Camera

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

    > [!NOTE]
    > You can also set this MDM policy in System Center Configuration Manager using the [WMI Bridge Provider](http://msdn.microsoft.com/library/dn905224.aspx).
    
   -or-

-   Create a provisioning package with use Windows ICD, using **Runtime settings** &gt; **Policies** &gt; **Camera** &gt; **AllowCamera**, where:

    -   **0**. Apps can't use the camera.

    -   **1**. Apps can use the camera.

To turn off **Choose apps that can use your camera**:

-   Turn off the feature in the UI for each app.

### <a href="" id="bkmk-priv-microphone"></a>16.4 Microphone

In the **Microphone** area, you can choose which apps can access a device's microphone.

To turn off **Let apps use my microphone**:

-   Turn off the feature in the UI.

   -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access the microphone**

    -   Set the **Select a setting** box to **Force Deny**.

To turn off **Choose apps that can use your microphone**:

-   Turn off the feature in the UI for each app.

### <a href="" id="bkmk-priv-notifications"></a>16.5 Notifications

In the **Notifications** area, you can choose which apps have access to notifications.

To turn off **Let apps access my notifications**:

-   Turn off the feature in the UI.

   -or-

-   Apply the Group Policy: **Computer Configuration** > **Administrative Templates** > **Windows Components** > **App Privacy** > **Let Windows apps access my notifications**

    -   Set the **Select a setting** box to **Force Deny**.

### <a href="" id="bkmk-priv-speech"></a>16.6 Speech, inking, & typing

In the **Speech, Inking, & Typing** area, you can let Windows and Cortana better understand your employee's voice and written input by sampling their voice and writing, and by comparing verbal and written input to contact names and calendar entrees.

> [!NOTE] 
> For more info on how to disable Cortana in your enterprise, see [Cortana](#bkmk-cortana) in this article.

To turn off the functionality:

-   Click the **Stop getting to know me** button, and then click **Turn off**.

   -or-

-   Enable the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Control Panel** &gt; **Regional and Language Options** &gt; **Handwriting personalization** &gt; **Turn off automatic learning**

   -or-

-   Create a REG\_DWORD registry setting called **AcceptedPrivacyPolicy** in **HKEY\_CURRENT\_USER\\SOFTWARE\\Microsoft\\Personalization\\Settings**, with a value of 0 (zero).

   -and-

-  Create a REG\_DWORD registry setting called **HarvestContacts** in **HKEY\_CURRENT\_USER\\SOFTWARE\\Microsoft\\InputPersonalization\\TrainedDataStore**, with a value of 0 (zero).


If you're running at least Windows 10, version 1607, you can turn off updates to the speech recognition and speech synthesis models:

Apply the Speech/AllowSpeechModelUpdate MDM policy from the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962(v=vs.85).aspx#Speech_AllowSpeechModelUpdate), where:

-   **0** (default). Not allowed.
-   **1**. Allowed.

   -or-

- Create a REG\_DWORD registry setting called **AllowSpeechModelUpdate** in **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\PolicyManager\\Current\\Device\\Speech**, with a value of 0 (zero).

### <a href="" id="bkmk-priv-accounts"></a>16.7 Account info

In the **Account Info** area, you can choose which apps can access your name, picture, and other account info.

To turn off **Let apps access my name, picture, and other account info**:

-   Turn off the feature in the UI.

   -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access account information**

    -   Set the **Select a setting** box to **Force Deny**.

To turn off **Choose the apps that can access your account info**:

-   Turn off the feature in the UI for each app.

### <a href="" id="bkmk-priv-contacts"></a>16.8 Contacts

In the **Contacts** area, you can choose which apps can access an employee's contacts list.

To turn off **Choose apps that can access contacts**:

-   Turn off the feature in the UI for each app.

   -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access contacts**

    -   Set the **Select a setting** box to **Force Deny**.

### <a href="" id="bkmk-priv-calendar"></a>16.9 Calendar

In the **Calendar** area, you can choose which apps have access to an employee's calendar.

To turn off **Let apps access my calendar**:

-   Turn off the feature in the UI.

   -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access the calendar**

    -   Set the **Select a setting** box to **Force Deny**.

To turn off **Choose apps that can access calendar**:

-   Turn off the feature in the UI for each app.

### <a href="" id="bkmk-priv-callhistory"></a>16.10 Call history

In the **Call history** area, you can choose which apps have access to an employee's call history.

To turn off **Let apps access my call history**:

-   Turn off the feature in the UI.

   -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access call history**

    -   Set the **Select a setting** box to **Force Deny**.

### <a href="" id="bkmk-priv-email"></a>16.11 Email

In the **Email** area, you can choose which apps have can access and send email.

To turn off **Let apps access and send email**:

-   Turn off the feature in the UI.

   -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access email**

    -   Set the **Select a setting** box to **Force Deny**.

### <a href="" id="bkmk-priv-messaging"></a>16.12 Messaging

In the **Messaging** area, you can choose which apps can read or send messages.

To turn off **Let apps read or send messages (text or MMS)**:

-   Turn off the feature in the UI.

    -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access messaging**

    -   Set the **Select a setting** box to **Force Deny**.

To turn off **Choose apps that can read or send messages**:

-   Turn off the feature in the UI for each app.

### <a href="" id="bkmk-priv-radios"></a>16.13 Radios

In the **Radios** area, you can choose which apps can turn a device's radio on or off.

To turn off **Let apps control radios**:

-   Turn off the feature in the UI.

    -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps control radios**

    -   Set the **Select a setting** box to **Force Deny**.

To turn off **Choose apps that can control radios**:

-   Turn off the feature in the UI for each app.

### <a href="" id="bkmk-priv-other-devices"></a>16.14 Other devices

In the **Other Devices** area, you can choose whether devices that aren't paired to PCs, such as an Xbox One, can share and sync info.

To turn off **Let apps automatically share and sync info with wireless devices that don't explicitly pair with your PC, tablet, or phone**:

-   Turn off the feature in the UI.

To turn off **Let your apps use your trusted devices (hardware you've already connected, or comes with your PC, tablet, or phone)**:

-   Turn off the feature in the UI.

    -or-

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **App Privacy** &gt; **Let Windows apps access trusted devices**

    -   Set the **Select a setting** box to **Force Deny**.

### <a href="" id="bkmk-priv-feedback"></a>16.15 Feedback & diagnostics

In the **Feedback & Diagnostics** area, you can choose how often you're asked for feedback and how much diagnostic and usage information is sent to Microsoft.

To change how frequently **Windows should ask for my feedback**:

> [!NOTE] 
> Feedback frequency only applies to user-generated feedback, not diagnostic and usage data sent from the device.

 

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

    > [!NOTE] 
    > You can't use the UI to change the telemetry level to **Security**.

     

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

### <a href="" id="bkmk-priv-background"></a>16.16 Background apps

In the **Background Apps** area, you can choose which apps can run in the background.

To turn off **Let apps run in the background**:

-   Turn off the feature in the UI for each app.

### <a href="" id="bkmk-spp"></a>17. Software Protection Platform

Enterprise customers can manage their Windows activation status with volume licensing using an on-premise Key Management Server. You can opt out of sending KMS client activation data to Microsoft automatically by doing one of the following:

For Windows 10:

- Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Software Protection Platform** &gt; **Turn off KMS Client Online AVS Activation**

    -or-

-   Apply the Licensing/DisallowKMSClientOnlineAVSValidation MDM policy from the [Policy CSP](http://msdn.microsoft.com/library/windows/hardware/dn904962.aspx) where 0 is disabled (default) and 1 is enabled.

For Windows Server 2016 with Desktop Experience or Windows Server 2016 Server Core:

- Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Software Protection Platform** &gt; **Turn off KMS Client Online AVS Activation**

The Windows activation status will be valid for a rolling period of 180 days with weekly activation status checks to the KMS.

### <a href="" id="bkmk-syncsettings"></a>18. Sync your settings

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

### <a href="" id="bkmk-teredo"></a>19. Teredo

You can disable Teredo by using the netsh.exe command. For more info on Teredo, see [Internet Protocol Version 6, Teredo, and Related Technologies](http://technet.microsoft.com/library/cc722030.aspx).

-   From an elevated command prompt, run **netsh interface teredo set state disabled**

### <a href="" id="bkmk-wifisense"></a>20. Wi-Fi Sense

Wi-Fi Sense automatically connects devices to known hotspots and to the wireless networks the person’s contacts have shared with them.

To turn off **Connect to suggested open hotspots** and **Connect to networks shared by my contacts**:

-   Turn off the feature in the UI.

    -or-

-   Disable the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Network** &gt; **WLAN Service** &gt; **WLAN Settings** &gt; **Allow Windows to automatically connect to suggested open hotspots, to networks shared by contacts, and to hotspots offering paid services**.

    -or-

-   Create a new REG\_DWORD registry setting called **AutoConnectAllowedOEM** in **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\WcmSvc\\wifinetworkmanager\\config**, with a value of 0 (zero).

    -or-

-   Change the Windows Provisioning setting, WiFISenseAllowed, to 0 (zero). For more info, see the Windows Provisioning Settings reference doc, [WiFiSenseAllowed](https://go.microsoft.com/fwlink/p/?LinkId=620909).

    -or-

-   Use the Unattended settings to set the value of WiFiSenseAllowed to 0 (zero). For more info, see the Unattended Windows Setup reference doc, [WiFiSenseAllowed](https://go.microsoft.com/fwlink/p/?LinkId=620910).

When turned off, the Wi-Fi Sense settings still appear on the Wi-Fi Settings screen, but they’re non-functional and they can’t be controlled by the employee.

### <a href="" id="bkmk-defender"></a>21. Windows Defender

You can disconnect from the Microsoft Antimalware Protection Service.

-   Disable the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Windows Defender** &gt; **MAPS** &gt; **Join Microsoft MAPS**

    -or-

-   For Windows 10 only, apply the Defender/AllowClouldProtection MDM policy from the [Defender CSP](http://msdn.microsoft.com/library/windows/hardware/dn904962.aspx).

    -or-

-   Use the registry to set the REG\_DWORD value **HKEY\_LOCAL\_MACHINE\\Software\\Policies\\Microsoft\\Windows Defender\\Spynet\\SpyNetReporting** to 0 (zero).
    
    -and-
    
    From an elevated Windows PowerShell prompt, run **set-mppreference -Mapsreporting 0** 

You can stop sending file samples back to Microsoft.

-   Set the Group Policy **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Windows Defender** &gt; **MAPS** &gt; **Send file samples when further analysis is required** to **Always Prompt** or **Never Send**.

    -or-

-   For Windows 10 only, apply the Defender/SubmitSamplesConsent MDM policy from the [Defender CSP](http://msdn.microsoft.com/library/windows/hardware/dn904962.aspx), where:

    -   **0**. Always prompt.

    -   **1**. (default) Send safe samples automatically.

    -   **2**. Never send.

    -   **3**. Send all samples automatically.

    -or-

-   Use the registry to set the REG\_DWORD value **HKEY\_LOCAL\_MACHINE\\Software\\Policies\\Microsoft\\Windows Defender\\Spynet\\SubmitSamplesConsent** to 0 (zero) to always prompt or 2 to never send.

You can stop downloading definition updates:

-   Enable the Group Policy **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Windows Defender** &gt; **Signature Updates** &gt; **Define the order of sources for downloading definition updates** and set it to **FileShares**.

    -and-

-   Disable the Group Policy **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Windows Defender** &gt; **Signature Updates** &gt; **Define file shares for downloading definition updates** and set it to nothing.

For Windows 10 only, you can stop Enhanced Notifications:

- Turn off the feature in the UI.

You can also use the registry to turn off Malicious Software Reporting Tool telemetry by setting the REG\_DWORD value **HKEY\_LOCAL\_MACHINE\\Software\\Policies\\Microsoft\\MRT\\DontReportInfectionInformation** to 1.

### <a href="" id="bkmk-wmp"></a>22. Windows Media Player

To remove Windows Media Player on Windows 10:

-   From the **Programs and Features** control panel, click **Turn Windows features on or off**, under **Media Features**, clear the **Windows Media Player** check box, and then click **OK**.

    -or-

-   Run the following DISM command from an elevated command prompt: **dism /online /Disable-Feature /FeatureName:WindowsMediaPlayer**

To remove Windows Media Player on Windows Server 2016:

-   Run the following DISM command from an elevated command prompt: **dism /online /Disable-Feature /FeatureName:WindowsMediaPlayer**

### <a href="" id="bkmk-spotlight"></a>23. Windows spotlight

Windows spotlight provides features such as different background images and text on the lock screen, suggested apps, Microsoft account notifications, and Windows tips. You can control it by using the user interface or through Group Policy.

If you're running Windows 10, version 1607 or later, you only need to enable the following Group Policy:

- **User Configuration** > **Administrative Templates** > **Windows Components** > **Cloud Content** > **Turn off all Windows spotlight features**

If you're not running Windows 10, version 1607 or later, you can use the other options in this section.

-   Configure the following in **Settings**:

    -   **Personalization** > **Lock screen** > **Background** > **Windows spotlight**, select a different background, and turn off **Get fun facts, tips, tricks and more on your lock screen**.

        > [!NOTE]  
        > In Windows 10, version 1507 and Windows 10, version 1511, this setting was called **Show me tips, tricks, and more on the lock screen**.

    -   **Personalization** &gt; **Start** &gt; **Occasionally show suggestions in Start**.

    -   **System** &gt; **Notifications & actions** &gt; **Show me tips about Windows**.

    -or-

-   Apply the Group Policies:

    -   **Computer Configuration** &gt; **Administrative Templates** &gt; **Control Panel** &gt; **Personalization** &gt; **Force a specific default lock screen image**.
        -   Add a location in the **Path to local lock screen image** box.

        -   Set the **Turn off fun facts, tips, tricks, and more on lock screen** check box.

        > [!NOTE] 
        > This will only take effect if the policy is applied before the first logon. If you cannot apply the **Force a specific default lock screen image** policy before the first logon to the device, you can apply this policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Control Panel** &gt; **Personalization** &gt; **Do not display the lock screen**.

         

    -   **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Cloud Content** &gt; **Do not show Windows Tips**.

    -   **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Cloud Content** &gt; **Turn off Microsoft consumer experiences**.

For more info, see [Windows Spotlight on the lock screen](../manage/windows-spotlight.md).

### <a href="" id="bkmk-windowsstore"></a>24. Windows Store

You can turn off the ability to launch apps from the Windows Store that were preinstalled or downloaded. This will also turn off automatic app updates, and the Windows Store will be disabled. On Windows Server 2016, this will block Windows Store calls from Universal Windows Apps.

-   Apply the Group Policy: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Store** &gt; **Disable all apps from Windows Store**.

### <a href="" id="bkmk-updates"></a>25. Windows Update Delivery Optimization

Windows Update Delivery Optimization lets you get Windows updates and Windows Store apps from sources in addition to Microsoft, which not only helps when you have a limited or unreliable Internet connection, but can also help you reduce the amount of bandwidth needed to keep all of your organization's PCs up-to-date. If you have Delivery Optimization turned on, PCs on your network may send and receive updates and apps to other PCs on your local network, if you choose, or to PCs on the Internet.

By default, PCs running Windows 10 Enterprise and Windows 10 Education will only use Delivery Optimization to get and receive updates for PCs and apps on your local network.

Use the UI, Group Policy, MDM policies, or Windows Provisioning to set up Delivery Optimization.

In Windows 10, version 1607, you can stop network traffic related to Windows Update Delivery Optimization by setting **Download Mode** to **Simple** (99) or **Bypass** (100), as described below.

### <a href="" id="bkmk-wudo-ui"></a>25.1 Settings &gt; Update & security

You can set up Delivery Optimization from the **Settings** UI.

-   Go to **Settings** &gt; **Update & security** &gt; **Windows Update** &gt; **Advanced options** &gt; **Choose how updates are delivered**.

### <a href="" id="bkmk-wudo-gp"></a>25.2 Delivery Optimization Group Policies

You can find the Delivery Optimization Group Policy objects under **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Delivery Optimization**.

| Policy                    | Description                                                                                         |
|---------------------------|-----------------------------------------------------------------------------------------------------|
| Download Mode             | Lets you choose where Delivery Optimization gets or sends updates and apps, including <ul><li><p><strong>None</strong>. Turns off Delivery Optimization.</p></li><li><p><strong>Group</strong>. Gets or sends updates and apps to PCs on the same local network domain.</p></li><li><p><strong>Internet</strong>. Gets or sends updates and apps to PCs on the Internet.</p></li><li><p><strong>LAN</strong>. Gets or sends updates and apps to PCs on the same NAT only.</p></li><li><p><strong>Simple</strong>. Simple download mode with no peering.</p></li><li><p><strong>Bypass</strong>. Use BITS instead of Windows Update Delivery Optimization.</p></li></ul>|
| Group ID                  | Lets you provide a Group ID that limits which PCs can share apps and updates. <br /> **Note:** This ID must be a GUID.|
| Max Cache Age             | Lets you specify the maximum time (in seconds) that a file is held in the Delivery Optimization cache. <br /> The default value is 259200 seconds (3 days).|
| Max Cache Size            | Lets you specify the maximum cache size as a percentage of disk size. <br /> The default value is 20, which represents 20% of the disk.|
| Max Upload Bandwidth      | Lets you specify the maximum upload bandwidth (in KB/second) that a device uses across all concurrent upload activity. <br /> The default value is 0, which means unlimited possible bandwidth.|

### <a href="" id="bkmk-wudo-mdm"></a>25.3 Delivery Optimization MDM policies

The following Delivery Optimization MDM policies are available in the [Policy CSP](http://msdn.microsoft.com/library/windows/hardware/dn904962.aspx).

| Policy                    | Description                                                                                         |
|---------------------------|-----------------------------------------------------------------------------------------------------|
| DeliveryOptimization/DODownloadMode             | Lets you choose where Delivery Optimization gets or sends updates and apps, including <ul><li><p><strong>0</strong>. Turns off Delivery Optimization.</p></li><li><p><strong>1</strong>. Gets or sends updates and apps to PCs on the same NAT only.</p></li><li><p><strong>2</strong>. Gets or sends updates and apps to PCs on the same local network domain.</p></li><li><p><strong>3</strong>. Gets or sends updates and apps to PCs on the Internet.</p></li><li><p><strong>99</strong>. Simple download mode with no peering.</p></li><li><p><strong>100</strong>. Use BITS instead of Windows Update Delivery Optimization.</p></li></ul>|
| DeliveryOptimization/DOGroupID                 | Lets you provide a Group ID that limits which PCs can share apps and updates. <br /> **Note** This ID must be a GUID.|
| DeliveryOptimization/DOMaxCacheAge             | Lets you specify the maximum time (in seconds) that a file is held in the Delivery Optimization cache. <br /> The default value is 259200 seconds (3 days).|
| DeliveryOptimization/DOMaxCacheSize            | Lets you specify the maximum cache size as a percentage of disk size. <br /> The default value is 20, which represents 20% of the disk.|
| DeliveryOptimization/DOMaxUploadBandwidth      | Lets you specify the maximum upload bandwidth (in KB/second) that a device uses across all concurrent upload activity. <br /> The default value is 0, which means unlimited possible bandwidth.|


### <a href="" id="bkmk-wudo-prov"></a>25.4 Delivery Optimization Windows Provisioning

If you don't have an MDM server in your enterprise, you can use Windows Provisioning to configure the Delivery Optimization policies

Use Windows ICD, included with the [Windows Assessment and Deployment Kit (Windows ADK)](https://go.microsoft.com/fwlink/p/?LinkId=526803), to create a provisioning package for Delivery Optimization.

1.  Open Windows ICD, and then click **New provisioning package**.

2.  In the **Name** box, type a name for the provisioning package, and then click **Next.**

3.  Click the **Common to all Windows editions** option, click **Next**, and then click **Finish**.

4.  Go to **Runtime settings** &gt; **Policies** &gt; **DeliveryOptimization** to configure the policies.

For more info about Delivery Optimization in general, see [Windows Update Delivery Optimization: FAQ](https://go.microsoft.com/fwlink/p/?LinkId=730684).

### <a href="" id="bkmk-wu"></a>26. Windows Update

You can turn off Windows Update by setting the following registry entries:

-   Add a REG\_DWORD value called **DoNotConnectToWindowsUpdateInternetLocations** to **HKEY\_LOCAL\_MACHINE\\Software\\Policies\\Microsoft\\Windows\\WindowsUpdate** and set the value to 1.

    -and-

-   Add a REG\_DWORD value called **DisableWindowsUpdateAccess** to **HKEY\_LOCAL\_MACHINE\\Software\\Policies\\Microsoft\\Windows\\WindowsUpdate** and set the value to 1.

    -and-

-   Add a REG\_DWORD value called **UseWUServer** to **HKEY\_LOCAL\_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate\AU** and set the value to 1.


You can turn off automatic updates by doing one of the following. This is not recommended.

-   Add a REG\_DWORD value called **AutoDownload** to **HKEY\_LOCAL\_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\WindowsStore\\WindowsUpdate** and set the value to 5.

    -or-

-   For Windows 10 only, apply the Update/AllowAutoUpdate MDM policy from the [Policy CSP](http://msdn.microsoft.com/library/windows/hardware/dn904962.aspx), where:

    -   **0**. Notify the user before downloading the update.

    -   **1**. Auto install the update and then notify the user to schedule a device restart.

    -   **2** (default). Auto install and restart.

    -   **3**. Auto install and restart at a specified time.

    -   **4**. Auto install and restart without end-user control.

    -   **5**. Turn off automatic updates.

To learn more, see [Device update management](http://msdn.microsoft.com/library/windows/hardware/dn957432.aspx) and [Configure Automatic Updates by using Group Policy](http://technet.microsoft.com/library/cc720539.aspx).
