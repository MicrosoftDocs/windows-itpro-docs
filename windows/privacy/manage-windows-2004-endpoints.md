---
title: Connection endpoints for Windows 10 Enterprise, version 2004
description: Explains what Windows 10 endpoints are used for, how to turn off traffic to them, and the impact. Specific to Windows 10 Enterprise, version 2004.
keywords: privacy, manage connections to Microsoft, Windows 10
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: high
audience: ITPro
author: linque1
ms.author: robsize
manager: robsize
ms.collection: M365-security-compliance
ms.topic: article
ms.date: 10/22/2020
---
# Manage connection endpoints for Windows 10 Enterprise, version 2004

**Applies to**

- Windows 10 Enterprise, version 2004

Some Windows components, app, and related services transfer data to Microsoft network endpoints. Some examples include:

- Connecting to Microsoft Office and Windows sites to download the latest app and security updates.
- Connecting to email servers to send and receive email.
- Connecting to the web for every day web browsing.
- Connecting to the cloud to store and access backups.
- Using your location to show a weather forecast.

Details about the different ways to control traffic to these endpoints are covered in [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md).
Where applicable, each endpoint covered in this topic includes a link to the specific details on how to control that traffic.

The following methodology was used to derive these network endpoints:

1. Set up the latest version of Windows 10 on a test virtual machine using the default settings.
2. Leave the device(s) running idle for a week ("idle" means a user is not interacting with the system/device).
3. Use globally accepted network protocol analyzer/capturing tools and log all background egress traffic.  
4. Compile reports on traffic going to public IP addresses.
5. The test virtual machine(s) was logged into using a local account, and was not joined to a domain or Azure Active Directory.
6. All traffic was captured in our lab using a IPV4 network. Therefore, no IPV6 traffic is reported here.
7. These tests were conducted in an approved Microsoft lab. It's possible your results may be different.
8. These tests were conducted for one week, but if you capture traffic for longer you may have different results.

> [!NOTE]
> Microsoft uses global load balancers that can appear in network trace-routes. For example, an endpoint for *.akadns.net might be used to load balance requests to an Azure datacenter, which can change over time.

## Windows 10 2004 Enterprise connection endpoints

|Area|Description|Protocol|Destination|
|----------------|----------|----------|------------|
|Apps|||[Learn how to turn off traffic to the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore)|
||The following endpoints are used for the Weather app. To turn off traffic for this endpoint, either uninstall the Weather app or disable the Microsoft Store. If you disable the Microsoft store, other Store apps cannot be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.|HTTPS|blob.weather.microsoft.com|
|||HTTP|tile-service.weather.microsoft.com|
||The following endpoint is used for OneNote Live Tile. To turn off traffic for this endpoint, either uninstall OneNote or disable the Microsoft Store. If you disable the Microsoft store, other Store apps cannot be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.|HTTPS|cdn.onenote.net/*
||The following endpoint is used by the Photos app to download configuration files, and to connect to the Office 365 portal's shared infrastructure, including Office in a browser. To turn off traffic for this endpoint, either uninstall the Photos app or disable the Microsoft Store. If you disable the Microsoft store, other Store apps cannot be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.|TLSv1.2|evoke-windowsservices-tas.msedge.net|
|Certificates|The following endpoint is used by the Automatic Root Certificates Update component to automatically check the list of trusted authorities on Windows Update to see if an update is available. It is possible to turn off traffic to this endpoint, but it is not recommended because as root certificates are updated over time, applications and websites may stop working because they did not receive an updated root certificate the application uses. Additionally, it is used to download certificates that are publicly known to be fraudulent. These settings are critical for both Windows security and the overall security of the Internet. We do not recommend blocking this endpoint. If traffic to this endpoint is turned off, Windows no longer automatically downloads certificates known to be fraudulent, which increases the attack vector on the device.||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#automatic-root-certificates-update)|
|||HTTP|ctldl.windowsupdate.com|
|Cortana and Live Tiles|||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-cortana)|
||The following endpoints are related to Cortana and Live Tiles. If you turn off traffic for this endpoint, you will block updates to Cortana greetings, tips, and Live Tiles.|TLSv1.2|www.bing.com*|
|Device metadata|||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#4-device-metadata-retrieval)|
||The following endpoint is used to retrieve device metadata. If you  turn off traffic for this endpoint, metadata will not be updated for the device.|HTTPS|dmd.metaservices.microsoft.com|
|Diagnostic Data|The following endpoints are used by the Windows Diagnostic Data, Connected User Experiences and Telemetry component and connects to the Microsoft Data Management service. If you turn off traffic for this endpoint, diagnostic and usage information, which helps Microsoft improve our products and services, will not be sent back to Microsoft. ||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-feedback)|
|||TLSv1.2|v10.events.data.microsoft.com|
||The following endpoints are used by Windows Error Reporting. To turn off traffic for these endpoints, enable the following Group Policy: Administrative Templates > Windows Components > Windows Error Reporting > Disable Windows Error Reporting. This means error reporting information will not be sent back to Microsoft.|HTTPS|*.telecommand.telemetry.microsoft.com|
|||TLS v1.2|watson.*.microsoft.com|
|Font Streaming|||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#6-font-streaming)|
||The following endpoints are used to download fonts on demand. If you turn off traffic for these endpoints, you will not be able to download fonts on demand. |HTTPS|fs.microsoft.com*|
|Licensing|The following endpoint is used for online activation and some app licensing. To turn off traffic for this endpoint, disable the Windows License Manager Service. This will also block online activation and app licensing may not work.||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#9-license-manager)|
|||HTTPS|*licensing.mp.microsoft.com|
|Maps|||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-offlinemaps)|
||The following endpoints are used to check for updates to maps that have been downloaded for offline use. If you turn off traffic for this endpoint, offline maps will not be updated.|TLSv1.2|*maps.windows.com|
|Microsoft Account|||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-microsoft-account)|
||The following endpoints are used for Microsoft accounts to sign in. If you turn off traffic for these endpoints, users cannot sign in with Microsoft accounts. |TLSv1.2|*login.live.com|
|Microsoft forward link redirection service (FWLink)|The following endpoint is used by the Microsoft forward link redirection service (FWLink) to redirect permanent web links to their actual, sometimes transitory, URL. FWlinks are similar to URL shorteners, just longer. If you disable this endpoint, Windows Defender won't be able to update its malware definitions; links from Windows and other Microsoft products to the Web won't work; and PowerShell updateable Help won't update. To disable the traffic, instead disable the traffic that's getting forwarded.|HTTPS|go.microsoft.com|
|Microsoft Store|||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#26-microsoft-store)|
||The following endpoint is used to download image files that are called when applications run (Microsoft Store or Inbox MSN Apps). If you turn off traffic for these endpoints, the image files won't be downloaded, and apps cannot be installed or updated from the Microsoft Store. Additionally, the Microsoft Store won't be able to revoke malicious apps and users will still be able to open them.|TLSv1.2/HTTPS|img-prod-cms-rt-microsoft-com.akamaized.net|
||The following endpoint is used for the Windows Push Notification Services (WNS). WNS enables third-party developers to send toast, tile, badge, and raw updates from their own cloud service. This provides a mechanism to deliver new updates to your users in a power-efficient and dependable way. If you turn off traffic for this endpoint, push notifications will no longer work, including MDM device management, mail synchronization, settings synchronization.|TLSv1.2|*.wns.windows.com|
||The following endpoint is used to revoke licenses for malicious apps in the Microsoft Store. To turn off traffic for this endpoint, either uninstall the app or disable the Microsoft Store. If you disable the Microsoft Store, other Microsoft Store apps cannot be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious apps and users will still be able to open them.|TLSv1.2|storecatalogrevocation.storequality.microsoft.com|
||The following endpoints are used to communicate with Microsoft Store. If you turn off traffic for these endpoints, apps cannot be installed or updated from the Microsoft Store.|HTTPS|*displaycatalog.mp.microsoft.com|
|||HTTP|*.dl.delivery.mp.microsoft.com|
||The following endpoint is used to get Microsoft Store analytics.|TLSv1.2|manage.devcenter.microsoft.com|
|Network Connection Status Indicator (NCSI)|||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-ncsi)|
||Network Connection Status Indicator (NCSI) detects Internet connectivity and corporate network connectivity status. NCSI sends a DNS request and HTTP query to this endpoint to determine if the device can communicate with the Internet. If you turn off traffic for this endpoint, NCSI won't be able to determine if the device is connected to the Internet and the network status tray icon will show a warning.|HTTP|www.msftconnecttest.com*|
|Office|The following endpoints are used to connect to the Office 365 portal's shared infrastructure, including Office in a browser. For more info, see Office 365 URLs and IP address ranges. You can turn this off by removing all Microsoft Office apps and the Mail and Calendar apps. If you turn off traffic for these endpoints, users won't be able to save documents to the cloud or see their recently used documents.||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#26-microsoft-store)|
|||HTTPS|*ow1.res.office365.com|
|||HTTPS|office.com|
|||HTTPS|blobs.officehome.msocdn.com|
|||HTTPS|self.events.data.microsoft.com|
|OneDrive|The following endpoints are related to OneDrive. If you turn off traffic for these endpoints, anything that relies on g.live.com to get updated URL information will no longer work.||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-onedrive)|
|||TLSv1.2|*g.live.com|
|||TLSv1.2|oneclient.sfx.ms|
|||HTTPS| logincdn.msauth.net|
|Settings|The following endpoint is used as a way for apps to dynamically update their configuration. Apps such as System Initiated User Feedback and the Xbox app use it. If you turn off traffic for this endpoint, an app that uses this endpoint may stop working.||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-feedback)|
|||TLSv1.2|settings-win.data.microsoft.com|
|Skype|The following endpoint is used to retrieve Skype configuration values. To turn off traffic for this endpoint, either uninstall the app or disable the Microsoft Store. If you disable the Microsoft store, other Microsoft Store apps cannot be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious apps and users will still be able to open them.||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore)|
|||HTTPS|*.pipe.aria.microsoft.com|
|||HTTPS|config.edge.skype.com|
|Teams|The following endpoint is used for Microsoft Teams application.||[Learn how to turn off traffic to all of the following endpoint(s).]( manage-connections-from-windows-operating-system-components-to-microsoft-services.md#26-microsoft-store)|
|||TLSv1.2|config.teams.microsoft.com|
|Windows Defender|The following endpoint is used for Windows Defender when Cloud-based Protection is enabled. If you turn off traffic for this endpoint, the device will not use Cloud-based Protection.||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-defender)|
|||TLSv1.2|wdcp.microsoft.com|
|||HTTPS|go.microsoft.com|
||The following endpoints are used for Windows Defender SmartScreen reporting and notifications. If you turn off traffic for these endpoints, SmartScreen notifications will not appear.|HTTPS|*smartscreen-prod.microsoft.com|
|||HTTPS|*smartscreen.microsoft.com |
|||HTTPS|checkappexec.microsoft.com|
|Windows Spotlight|The following endpoints are used to retrieve Windows Spotlight metadata that describes content, such as references to image locations, as well as suggested apps, Microsoft account notifications, and Windows tips. If you turn off traffic for these endpoints, Windows Spotlight will still try to deliver new lock screen images and updated content but it will fail; suggested apps, Microsoft account notifications, and Windows tips will not be downloaded. For more information, see Windows Spotlight.||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-spotlight)|
|||TLSv1.2|arc.msn.com|
|Windows Update|The following endpoint is used for Windows Update downloads of apps and OS updates, including HTTP downloads or HTTP downloads blended with peers. If you turn off traffic for this endpoint, Windows Update downloads will not be managed, as critical metadata that is used to make downloads more resilient is blocked. Downloads may be impacted by corruption (resulting in re-downloads of full files). Additionally, downloads of the same update by multiple devices on the same local network will not use peer devices for bandwidth reduction.||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-updates)|
|||TLSv1.2|*.prod.do.dsp.mp.microsoft.com|
|||HTTP|emdl.ws.microsoft.com|
||The following endpoints are used to download operating system patches, updates, and apps from Microsoft Store. If you turn off traffic for these endpoints, the device will not be able to download updates for the operating system.|HTTP|*.dl.delivery.mp.microsoft.com|
|||HTTP|*.windowsupdate.com|
||The following endpoints enable connections to Windows Update, Microsoft Update, and the online services of the Store. If you turn off traffic for these endpoints, the device will not be able to connect to Windows Update and Microsoft Update to help keep the device secure. Also, the device will not be able to acquire and update apps from the Store. These are dependent on also enabling "Device authentication" and "Microsoft Account" endpoints.|HTTPS|*.delivery.mp.microsoft.com|
|||TLSv1.2|*.update.microsoft.com|
||The following endpoint is used for compatibility database updates for Windows.|HTTP|adl.windows.com|
||The following endpoint is used for content regulation. If you turn off traffic for this endpoint, the Windows Update Agent will be unable to contact the endpoint and fallback behavior will be used. This may result in content being either incorrectly.|TLSv1.2|tsfe.trafficshaping.dsp.mp.microsoft.com|
|Xbox Live|The following endpoint is used for Xbox Live.||[Learn how to turn off traffic to all of the following endpoint(s).]( manage-connections-from-windows-operating-system-components-to-microsoft-services.md#26-microsoft-store)|
|||TLSv1.2|dlassets-ssl.xboxlive.com|

## Other Windows 10 editions

To view endpoints for other versions of Windows 10 Enterprise, see:
- [Manage connection endpoints for Windows 10, version 1909](manage-windows-1909-endpoints.md)
- [Manage connection endpoints for Windows 10, version 1903](manage-windows-1903-endpoints.md)
- [Manage connection endpoints for Windows 10, version 1809](manage-windows-1809-endpoints.md)
- [Manage connection endpoints for Windows 10, version 1803](manage-windows-1803-endpoints.md)
- [Manage connection endpoints for Windows 10, version 1709](manage-windows-1709-endpoints.md)

To view endpoints for non-Enterprise Windows 10 editions, see:
- [Windows 10, version 1909, connection endpoints for non-Enterprise editions](windows-endpoints-1909-non-enterprise-editions.md)
- [Windows 10, version 1903, connection endpoints for non-Enterprise editions](windows-endpoints-1903-non-enterprise-editions.md)
- [Windows 10, version 1809, connection endpoints for non-Enterprise editions](windows-endpoints-1809-non-enterprise-editions.md)
- [Windows 10, version 1803, connection endpoints for non-Enterprise editions](windows-endpoints-1803-non-enterprise-editions.md)
- [Windows 10, version 1709, connection endpoints for non-Enterprise editions](windows-endpoints-1709-non-enterprise-editions.md)


## Related links

- [Office 365 URLs and IP address ranges](https://support.office.com/en-us/article/Office-365-URLs-and-IP-address-ranges-8548a211-3fe7-47cb-abb1-355ea5aa88a2?ui=en-US&rs=en-US&ad=US)
- [Network infrastructure requirements for Microsoft Intune](https://docs.microsoft.com/mem/intune/fundamentals/intune-endpoints)
