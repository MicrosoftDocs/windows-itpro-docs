---
title: Connection endpoints for Windows 10 Enterprise, version 1909
description: Explains what Windows 10 endpoints are used for, how to turn off traffic to them, and the impact. Specific to Windows 10 Enterprise, version 1909.
ms.prod: windows-client
ms.technology: itpro-privacy
ms.localizationpriority: high
author: DHB-MSFT
ms.author: danbrown
manager: dougeby
ms.topic: reference
---
# Manage connection endpoints for Windows 10 Enterprise, version 1909

**Applies to**

- Windows 10 Enterprise, version 1909

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
6. All traffic was captured in our lab using an IPV4 network. Therefore, no IPV6 traffic is reported here.
7. These tests were conducted in an approved Microsoft lab. It's possible your results may be different.
8. These tests were conducted for one week, but if you capture traffic for longer you may have different results.

> [!NOTE]
> Microsoft uses global load balancers that can appear in network trace-routes. For example, an endpoint for *.akadns.net might be used to load balance requests to an Azure datacenter, which can change over time.

## Windows 10 1909 Enterprise connection endpoints

|Area|Description|Protocol|Destination|
|----------------|----------|----------|------------|
|Apps|||[Learn how to turn off traffic to the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore)|
||The following endpoint is used for the Weather app. To turn off traffic for this endpoint, either uninstall the Weather app or disable the Microsoft Store. If you disable the Microsoft store, other Store apps cannot be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.|HTTP|tile-service.weather.microsoft.com|
|||HTTP|tile-service.weather.microsoft.com/en-us/livetile/preinstall|
||The following endpoint is used for OneNote Live Tile. To turn off traffic for this endpoint, either uninstall OneNote or disable the Microsoft Store. If you disable the Microsoft store, other Store apps cannot be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.|HTTPS|cdn.onenote.net/*|
||The following endpoint is used by the Photos app to download configuration files, and to connect to the Office 365 portal's shared infrastructure, including Office in a browser. To turn off traffic for this endpoint, either uninstall the Photos app or disable the Microsoft Store. If you disable the Microsoft store, other Store apps cannot be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.|TLS v1.2|evoke-windowsservices-tas.msedge.net|
|Certificates|Certificates are digital files, stored on client devices, used to both encrypt data and verify the identity of an individual or organization. Trusted root certificates issued by a certification authority (CA) are stored in a certificate trust list (CTL). The Automatic Root Certificates Update mechanism contacts Windows Updates to update the CTL. If a new version of the CTL is identified, the list of trusted root certificates cached on the local device will be updated. Untrusted certificates are certificates where the server certificate issuer is unknown or is not trusted by the service. Untrusted certificates are also stored in a list on the local device and updated by the Automatic Root Certificates Update mechanism.<br> <br>If automatic updates are turned off, applications and websites may stop working because they did not receive an updated root certificate that the application uses. Additionally, the list of untrusted certificates will no longer be updated, which increases the attack vector on the device.||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#automatic-root-certificates-update)|
|||HTTP|ctldl.windowsupdate.com|
|Cortana and Live Tiles|||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-cortana)|
||The following endpoints are related to Cortana and Live Tiles. If you turn off traffic for this endpoint, you will block updates to Cortana greetings, tips, and Live Tiles.|HTTPS|www.bing.com*|
|||HTTPS|www.bing.com/client/config|
|||TLS v1.2|fp.msedge.net|
|Device authentication|||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-feedback)|
||The following endpoint is used to authenticate a device. If you  turn off traffic for this endpoint, the device will not be authenticated.|HTTPS|login.live.com*|
|Diagnostic Data|The following endpoints are used by the Connected User Experiences and Telemetry component and connects to the Microsoft Data Management service. If you turn off traffic for this endpoint, diagnostic and usage information, which helps Microsoft find and fix problems and improve our products and services, will not be sent back to Microsoft. ||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-feedback)|
|||HTTP|v10.events.data.microsoft.com|
||The following endpoints are used by Windows Error Reporting. To turn off traffic for these endpoints, enable the following Group Policy: Administrative Templates > Windows Components > Windows Error Reporting > Disable Windows Error Reporting. This means error reporting information will not be sent back to Microsoft.|HTTPS|*.telecommand.telemetry.microsoft.com|
|||TLS v1.2|watson.*.microsoft.com|
|Licensing|The following endpoint is used for online activation and some app licensing. To turn off traffic for this endpoint, disable the Windows License Manager Service. This will also block online activation and app licensing may not work.||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#9-license-manager)|
|||HTTPS|*licensing.mp.microsoft.com|
|||HTTPS|licensing.mp.microsoft.com/v7.0/licenses/content|
|Location|||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-location)|
||The following endpoints are used for location data. If you turn off traffic for this endpoint, apps cannot use location data.|TLS v1.2|inference.location.live.net|
|Maps|||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-offlinemaps)|
||The following endpoints are used to check for updates to maps that have been downloaded for offline use. If you turn off traffic for this endpoint, offline maps will not be updated.|HTTP|*maps.windows.com|
|Microsoft Account|||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-microsoft-account)|
||The following endpoints are used for Microsoft accounts to sign in. If you turn off traffic for these endpoints, users cannot sign in with Microsoft accounts. |TLS v1.2|*login.live.com|
|Microsoft Edge|||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#13-microsoft-edge)|
||This traffic is related to the Microsoft Edge browser.|HTTPS|iecvlist.microsoft.com|
|Microsoft forward link redirection service (FWLink)|The following endpoint is used by the Microsoft forward link redirection service (FWLink) to redirect permanent web links to their actual, sometimes transitory, URL. FWlinks are similar to URL shorteners, just longer. If you disable this endpoint, Windows Defender won't be able to update its malware definitions; links from Windows and other Microsoft products to the Web won't work; and PowerShell updateable Help won't update. To disable the traffic, instead disable the traffic that's getting forwarded.|HTTPS|go.microsoft.com|
|Microsoft Store|||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#26-microsoft-store)|
||The following endpoints are used to revoke licenses for malicious apps in the Microsoft Store. To turn off traffic for this endpoint, either uninstall the app or disable the Microsoft Store. If you disable the Microsoft Store, other Microsoft Store apps cannot be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious apps and users will still be able to open them|TLS v1.2|1storecatalogrevocation.storequality.microsoft.com|
|||HTTPS|storecatalogrevocation.storequality.microsoft.com|
||The following endpoint is used to get Microsoft Store analytics.|HTTPS|manage.devcenter.microsoft.com|
||The following endpoints are used to communicate with Microsoft Store. If you turn off traffic for these endpoints, apps cannot be installed or updated from the Microsoft Store.|HTTPS|displaycatalog.mp.microsoft.com/*|
|||HTTPS|pti.store.microsoft.com/*|
|Network Connection Status Indicator (NCSI)|||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-ncsi)|
||Network Connection Status Indicator (NCSI) detects Internet connectivity and corporate network connectivity status. NCSI sends a DNS request and HTTP query to this endpoint to determine if the device can communicate with the Internet. If you turn off traffic for this endpoint, NCSI won't be able to determine if the device is connected to the Internet and the network status tray icon will show a warning.|HTTP|www.msftconnecttest.com*|
|Office|The following endpoints are used to connect to the Office 365 portal's shared infrastructure, including Office in a browser. For more info, see Office 365 URLs and IP address ranges. You can turn this off by removing all Microsoft Office apps and the Mail and Calendar apps. If you turn off traffic for these endpoints, users won't be able to save documents to the cloud or see their recently used documents.||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#26-microsoft-store)|
|||HTTP/ TLS v1.2|v10.events.data.microsoft.com/onecollector/1.0/|
|||TLS v1.2|*.blob.core.windows.net|
|||HTTP|officehomeblobs.blob.core.windows.net|
||The following endpoints are used by Microsoft OfficeHub to get the metadata of Microsoft Office apps |TLS v1.2|c-ring.msedge.net|
|OneDrive|The following endpoints are related to OneDrive. If you turn off traffic for these endpoints, anything that relies on g.live.com to get updated URL information will no longer work.||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-onedrive)|
|||TLS v1.2|*g.live.com|
|||HTTPS|oneclient.sfx.ms|
|||HTTPS| logincdn.msauth.net|
|||HTTP| windows.policies.live.net|
|Settings|The following endpoint is used as a way for apps to dynamically update their configuration. Apps such as System Initiated User Feedback and the Xbox app use it. If you turn off traffic for this endpoint, an app that uses this endpoint may stop working.||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-feedback)|
|||TLS v1.2|settings-win.data.microsoft.com|
|Skype|The following endpoint is used to retrieve Skype configuration values. To turn off traffic for this endpoint, either uninstall the app or disable the Microsoft Store. If you disable the Microsoft store, other Microsoft Store apps cannot be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious apps and users will still be able to open them.||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore)|
|||HTTPS|*.pipe.aria.microsoft.com|
|||HTTP/TLS v1.2|config.edge.skype.com|
|Teams|The following endpoint is used for Microsoft Teams application.||[Learn how to turn off traffic to all of the following endpoint(s).]( manage-connections-from-windows-operating-system-components-to-microsoft-services.md#26-microsoft-store)|
|||HTTPS|config.teams.microsoft.com|
|Windows Defender|The following endpoint is used for Windows Defender when Cloud-based Protection is enabled. If you turn off traffic for this endpoint, the device will not use Cloud-based Protection.||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-defender)|
|||HTTPS/TLS v1.2|wdcp.microsoft.com|
||The following endpoints are used for Windows Defender SmartScreen reporting and notifications. If you turn off traffic for these endpoints, SmartScreen notifications will not appear.|HTTPS/TLS v1.2|*smartscreen-prod.microsoft.com|
|||HTTPS|checkappexec.microsoft.com|
|Windows Spotlight|The following endpoints are used to retrieve Windows Spotlight metadata that describes content, such as references to image locations, as well as suggested apps, Microsoft account notifications, and Windows tips. If you turn off traffic for these endpoints, Windows Spotlight will still try to deliver new lock screen images and updated content but it will fail; suggested apps, Microsoft account notifications, and Windows tips will not be downloaded. For more information, see Windows Spotlight.||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-spotlight)|
|||HTTPS/TLS v1.2|arc.msn.com|
|||HTTPS|ris.api.iris.microsoft.com|
|Windows Update|The following endpoint is used for Windows Update downloads of apps and OS updates, including HTTP downloads or HTTP downloads blended with peers. If you turn off traffic for this endpoint, Windows Update downloads will not be managed, as critical metadata that is used to make downloads more resilient is blocked. Downloads may be impacted by corruption (resulting in re-downloads of full files). Additionally, downloads of the same update by multiple devices on the same local network will not use peer devices for bandwidth reduction.||[Learn how to turn off traffic to all of the following endpoint(s).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-updates)|
|||HTTPS/TLS v1.2|*.prod.do.dsp.mp.microsoft.com|
|||HTTP|emdl.ws.microsoft.com|
||The following endpoints are used to download operating system patches, updates, and apps from Microsoft Store. If you turn off traffic for these endpoints, the device will not be able to download updates for the operating system.|HTTP|*.dl.delivery.mp.microsoft.com|
|||HTTP|*.windowsupdate.com|
||The following endpoints enable connections to Windows Update, Microsoft Update, and the online services of the Store. If you turn off traffic for these endpoints, the device will not be able to connect to Windows Update and Microsoft Update to help keep the device secure. Also, the device will not be able to acquire and update apps from the Store. These are dependent on also enabling "Device authentication" and "Microsoft Account" endpoints.|HTTP|*.delivery.mp.microsoft.com|
|||HTTPS/TLS v1.2|*.update.microsoft.com|
||The following endpoint is used for compatibility database updates for Windows.|HTTP|adl.windows.com|
||The following endpoint is used for content regulation. If you turn off traffic for this endpoint, the Windows Update Agent will be unable to contact the endpoint and fallback behavior will be used. This may result in content being either incorrectly.|HTTPS/TLS v1.2|tsfe.trafficshaping.dsp.mp.microsoft.com|
## Other Windows 10 editions

To view endpoints for other versions of Windows 10 Enterprise, see:

- [Manage connection endpoints for Windows 10, version 21H2](manage-windows-21H2-endpoints.md)
- [Manage connection endpoints for Windows 10, version 1903](manage-windows-1903-endpoints.md)
- [Manage connection endpoints for Windows 10, version 1809](manage-windows-1809-endpoints.md)

To view endpoints for non-Enterprise Windows 10 editions, see:

- [Windows 10, version 21H1, connection endpoints for non-Enterprise editions](windows-endpoints-21H1-non-enterprise-editions.md)
- [Windows 10, version 1903, connection endpoints for non-Enterprise editions](windows-endpoints-1903-non-enterprise-editions.md)
- [Windows 10, version 1809, connection endpoints for non-Enterprise editions](windows-endpoints-1809-non-enterprise-editions.md)

## Related links

- [Office 365 URLs and IP address ranges](/microsoft-365/enterprise/urls-and-ip-address-ranges)
- [Network infrastructure requirements for Microsoft Intune](/mem/intune/fundamentals/intune-endpoints)
