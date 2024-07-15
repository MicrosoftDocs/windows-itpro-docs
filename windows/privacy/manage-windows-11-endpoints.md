---
title: Connection endpoints for Windows 11 Enterprise
description: Explains what Windows 11 endpoints are used for, how to turn off traffic to them, and the impact. Specific to Windows 11.
ms.service: windows-client
ms.subservice: itpro-privacy
ms.localizationpriority: high
author: DHB-MSFT
ms.author: danbrown
manager: laurawi
ms.date: 10/06/2023
ms.topic: reference
---

# Manage connection endpoints for Windows 11 Enterprise

**Applies to**

- Windows 11 Enterprise

Some Windows components, app, and related services transfer data to Microsoft network endpoints. Some examples include:

- Connecting to Microsoft Office and Windows sites to download the latest app and security updates.
- Connecting to email servers to send and receive email.
- Connecting to the web for every day web browsing.
- Connecting to the cloud to store and access backups.
- Using your location to show a weather forecast.

Details about the different ways to control traffic to these endpoints are covered in [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md).
Where applicable, each endpoint covered in this article includes a link to the specific details on how to control that traffic.

The following methodology was used to derive these network endpoints:

1. Set up the latest version of Windows 11 on a test virtual machine using the default settings.
2. Leave the device(s) running idle for a week ("idle" means a user isn't interacting with the system/device).
3. Use globally accepted network protocol analyzer/capturing tools and log all background egress traffic.
4. Compile reports on traffic going to public IP addresses.
5. The test virtual machine(s) was logged into using a local account, and wasn't joined to a domain or Microsoft Entra ID.
6. All traffic was captured in our lab using an IPV4 network. Therefore, no IPV6 traffic is reported here.
7. These tests were conducted in an approved Microsoft lab. It's possible your results may be different.
8. These tests were conducted for one week, but if you capture traffic for longer you may have different results.

> [!NOTE]
> Microsoft uses global load balancers that can appear in network trace-routes. For example, an endpoint for *.akadns.net might be used to load balance requests to an Azure datacenter, which can change over time.

To view endpoints for non-Enterprise Windows 11 editions, see [Windows 11 connection endpoints for non-Enterprise editions](windows-11-endpoints-non-enterprise-editions.md).

## Windows 11 Enterprise connection endpoints

|Area|Description|Protocol|Destination|
|----------------|----------|----------|------------|
|Apps|||[Learn how to turn off traffic to the following endpoint(s) for apps.](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore)|
||The following endpoint is used for the Weather app. To turn off traffic for this endpoint, either uninstall the Weather app or disable the Microsoft Store. If you disable the Microsoft store, other Store apps can't be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.|HTTP|tile-service.weather.microsoft.com|
||The following endpoint is used for OneNote Live Tile. To turn off traffic for this endpoint, either uninstall OneNote or disable the Microsoft Store. If you disable the Microsoft store, other Store apps can't be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.|TLSv1.2/HTTPS/HTTP|cdn.onenote.net|
||The following endpoint is used by the Photos app to download configuration files, and to connect to the Office 365 portal's shared infrastructure, including Office in a browser. To turn off traffic for this endpoint, either uninstall the Photos app or disable the Microsoft Store. If you disable the Microsoft store, other Store apps can't be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.|TLSv1.2/HTTPS|evoke-windowsservices-tas.msedge.net|
|Certificates|||[Learn how to turn off traffic to all of the following endpoint(s) for certificates.](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#automatic-root-certificates-update)|
||Certificates are digital files, stored on client devices, used to both encrypt data and verify the identity of an individual or organization. Trusted root certificates issued by a certification authority (CA) are stored in a certificate trust list (CTL). The Automatic Root Certificates Update mechanism contacts Windows Updates to update the CTL. If a new version of the CTL is identified, the list of trusted root certificates cached on the local device will be updated. Untrusted certificates are certificates where the server certificate issuer is unknown or isn't trusted by the service. Untrusted certificates are also stored in a list on the local device and updated by the Automatic Root Certificates Update mechanism.<br> <br>If automatic updates are turned off, applications and websites may stop working because they didn't receive an updated root certificate that the application uses. Additionally, the list of untrusted certificates will no longer be updated, which increases the attack vector on the device. |TLSv1.2/HTTPS/HTTP|ctldl.windowsupdate.com|
|||HTTP|ocsp.digicert.com|
|Cortana and Live Tiles|||[Learn how to turn off traffic to all of the following endpoint(s) for Cortana and Live Tiles.](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-cortana)|
||The following endpoints are related to Cortana and Live Tiles. If you turn off traffic for this endpoint, you'll block updates to Cortana greetings, tips, and Live Tiles.|TLSv1.2/HTTPS/HTTP|www.bing.com*|
|||HTTPS|business.bing.com|
|||HTTP|c.bing.com|
|||HTTP|th.bing.com|
|||HTTP|c-ring.msedge.net|
|||TLSv1.2/HTTPS/HTTP|fp.msedge.net|
|||TLSv1.2|I-ring.msedge.net|
|||HTTPS/HTTP|s-ring.msedge.net|
|||HTTP|dual-s-ring.msedge.net|
|||HTTP|creativecdn.com|
|||HTTP|edgeassetservice.azureedge.net|
|||HTTP|r.bing.com|
|||HTTPS|a-ring-fallback.msedge.net|
|||HTTPS|fp-afd-nocache-ccp.azureedge.net|
|||TLSv1.2|prod-azurecdn-akamai-iris.azureedge.net|
|||TLSv1.2|widgetcdn.azureedge.net|
|||TLSv1.2|widgetservice.azurefd.net|
|Device authentication|||[Learn how to turn off traffic to all of the following endpoint(s) for device authentication.](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-feedback)|
||The following endpoint is used to authenticate a device. If you turn off traffic for this endpoint, the device won't be authenticated.|HTTPS|login.live.com*|
|Device metadata|||[Learn how to turn off traffic to all of the following endpoint(s) for device metadata.](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#4-device-metadata-retrieval)|
||The following endpoint is used to retrieve device metadata. If you turn off traffic for this endpoint, metadata won't be updated for the device.|HTTP|dmd.metaservices.microsoft.com|
|Diagnostic Data| ||[Learn how to turn off traffic to all of the following endpoint(s) for diagnostic data.](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-feedback)|
|||TLSv1.2|functional.events.data.microsoft.com|
|||HTTP|browser.events.data.msn.com|
|||TLSv1.2/HTTP|www.microsoft.com|
||The following endpoints are used by the Connected User Experiences and Telemetry component and connects to the Microsoft Data Management service. If you turn off traffic for this endpoint, diagnostic and usage information, which helps Microsoft find and fix problems and improve our products and services, won't be sent back to Microsoft.|TLSv1.2/HTTP|self.events.data.microsoft.com|
|||TLSv1.2/HTTPS/HTTP|v10.events.data.microsoft.com|
||The following endpoints are used by Windows Error Reporting. To turn off traffic for these endpoints, enable the following Group Policy: Administrative Templates > Windows Components > Windows Error Reporting > Disable Windows Error Reporting. This means error reporting information won't be sent back to Microsoft.|TLSv1.2|telecommand.telemetry.microsoft.com|
|||TLS v1.2/HTTPS/HTTP|watson.*.microsoft.com|
|||TLSv1.2|www.telecommandsvc.microsoft.com|
|Font Streaming|||[Learn how to turn off traffic to all of the following endpoint(s) for font streaming.](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#6-font-streaming)|
||The following endpoint is used to download fonts on demand. If you turn off traffic for these endpoints, you won't be able to download fonts on demand.|HTTPS|fs.microsoft.com|
|Licensing|||[Learn how to turn off traffic to all of the following endpoint(s) for licensing.](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#9-license-manager)|
||The following endpoint is used for online activation and some app licensing. To turn off traffic for this endpoint, disable the Windows License Manager Service. This will also block online activation and app licensing may not work.|TLSv1.2/HTTPS/HTTP|licensing.mp.microsoft.com|
|Location|||[Learn how to turn off traffic to all of the following endpoint(s) for location.](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#182-location)|
||The following endpoint is used for location data. If you turn off traffic for this endpoint, apps can't use location data.|TLSv1.2|inference.location.live.net|
|Maps|||[Learn how to turn off traffic to all of the following endpoint(s) for maps.](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-offlinemaps)|
||The following endpoints are used to check for updates to maps that have been downloaded for offline use. If you turn off traffic for this endpoint, offline maps won't be updated.|TLSv1.2/HTTPS/HTTP|maps.windows.com|
|||HTTP|ecn.dev.virtualearth.net|
|||HTTP|ecn-us.dev.virtualearth.net|
|||HTTPS|weathermapdata.blob.core.windows.net|
|Microsoft Account|||[Learn how to turn off traffic to all of the following endpoint(s) for Microsoft account.](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-microsoft-account)|
||The following endpoint is used for Microsoft accounts to sign in. If you turn off traffic for these endpoints, users can't sign in with Microsoft accounts. |TLSv1.2/HTTPS/HTTP|login.live.com|
|Microsoft Defender Antivirus|||[Learn how to turn off traffic to all of the following endpoint(s) for Microsoft Defender Antivirus.](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-defender)|
||The following endpoint is used for Windows Defender when Cloud-based Protection is enabled. If you turn off traffic for this endpoint, the device won't use Cloud-based Protection.|TLSv1.2/HTTPS|wdcp.microsoft.com|
||The following endpoints are used for Windows Defender SmartScreen reporting and notifications. If you turn off traffic for these endpoints, SmartScreen notifications won't appear.|HTTPS|*.smartscreen-prod.microsoft.com|
|||HTTPS/HTTP|checkappexec.microsoft.com|
|||TLSv1.2/HTTP|ping-edge.smartscreen.microsoft.com|
|||HTTP|data-edge.smartscreen.microsoft.com|
|||TLSv1.2|nav-edge.smartscreen.microsoft.com|
|Microsoft Edge|||[Learn how to turn off traffic to all of the following endpoint(s) for Microsoft Edge.](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#13-microsoft-edge)|
|||TLSv1.2/HTTP|edge.microsoft.com|
|||TLSv1.2/HTTP|windows.msn.com|
||This network traffic is related to the Microsoft Edge browser. The Microsoft Edge browser requires this endpoint to contact external websites.|HTTPS|iecvlist.microsoft.com|
||The following endpoint is used by Microsoft Edge Update service to check for new updates. If you disable this endpoint, Microsoft Edge won’t be able to check for and apply new edge updates.|TLSv1.2/HTTPS/HTTP|msedge.api.cdp.microsoft.com|
|Microsoft Store|||[Learn how to turn off traffic to all of the following endpoint(s) for Microsoft Store.](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#26-microsoft-store)|
||The following endpoints are used to download image files that are called when applications run (Microsoft Store or Inbox MSN Apps). If you turn off traffic for these endpoints, the image files won't be downloaded, and apps can't be installed or updated from the Microsoft Store. Additionally, the Microsoft Store won't be able to revoke malicious apps and users will still be able to open them.|TLSv1.2/HTTPS|img-prod-cms-rt-microsoft-com.akamaized.net|
|||HTTP|img-s-msn-com.akamaized.net|
||The following endpoints are needed to load the content in the Microsoft Store app.|HTTPS|livetileedge.dsx.mp.microsoft.com|
|||HTTP|storeedgefd.dsx.mp.microsoft.com|
||The following endpoint is used for the Windows Push Notification Services (WNS). WNS enables third-party developers to send toast, tile, badge, and raw updates from their own cloud service. This provides a mechanism to deliver new updates to your users in a power-efficient and dependable way. If you turn off traffic for this endpoint, push notifications will no longer work, including MDM device management, mail synchronization, settings synchronization.|TLSv1.2/HTTPS|*.wns.windows.com|
||The following endpoints are used to revoke licenses for malicious apps in the Microsoft Store. To turn off traffic for this endpoint, either uninstall the app or disable the Microsoft Store. If you disable the Microsoft Store, other Microsoft Store apps can't be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious apps and users will still be able to open them|TLSv1.2/HTTPS/HTTP|storecatalogrevocation.storequality.microsoft.com|
||The following endpoint is used to get Microsoft Store analytics.|HTTPS|manage.devcenter.microsoft.com|
||The following endpoints are used to communicate with Microsoft Store. If you turn off traffic for these endpoints, apps can't be installed or updated from the Microsoft Store.|TLSv1.2/HTTPS/HTTP|*displaycatalog.mp.microsoft.com|
|||HTTP|share.microsoft.com|
||The following endpoint is used to get Microsoft Store analytics.|TLSv1.2/HTTPS/HTTP|manage.devcenter.microsoft.com|
|Microsoft To Do|||[Learn how to turn off traffic to all of the following endpoint(s) for Microsoft To Do.](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#26-microsoft-store)|
||The following endpoints are used for the Microsoft To Do app.|HTTP|staging.to-do.microsoft.com|
|||TLSv1.2/HTTP|to-do.microsoft.com|
|Network Connection Status Indicator (NCSI)|||[Learn how to turn off traffic to all of the following endpoint(s) for Network Connection Status Indicator (NCSI).](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-ncsi)|
||Network Connection Status Indicator (NCSI) detects Internet connectivity and corporate network connectivity status. NCSI sends a DNS request and HTTP query to this endpoint to determine if the device can communicate with the Internet. If you turn off traffic for this endpoint, NCSI won't be able to determine if the device is connected to the internet, and the network status tray icon will show a warning.|HTTPS|www.msftconnecttest.com*|
|||HTTP|ipv6.msftconnecttest.com|
|Office|||[Learn how to turn off traffic to all of the following endpoint(s) for Office.](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#26-microsoft-store)|
||The following endpoints are used to connect to the Office 365 portal's shared infrastructure, including Office in a browser. For more info, see [Office 365 URLs and IP address ranges](/microsoft-365/enterprise/urls-and-ip-address-ranges). You can turn this off by removing all Microsoft Office apps and the Mail and Calendar apps. If you turn off traffic for these endpoints, users won't be able to save documents to the cloud or see their recently used documents.|HTTPS|www.office.com|
|||HTTPS|blobs.officehome.msocdn.com|
|||HTTPS|officehomeblobs.blob.core.windows.net|
|||HTTPS|self.events.data.microsoft.com|
|||TLSv1.2/HTTPS/HTTP|outlookmobile-office365-tas.msedge.net|
|||HTTP|officeclient.microsoft.com|
|||HTTP|ecs.nel.measure.office.net|
|||HTTPS/HTTP|telecommandstorageprod.blob.core.windows.net|
|||TLSv1.2|odc.officeapps.live.com|
|OneDrive|||[Learn how to turn off traffic to all of the following endpoint(s) for OneDrive.](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-onedrive)|
||The following endpoints are related to OneDrive. If you turn off traffic for these endpoints, anything that relies on g.live.com to get updated URL information will no longer work.|TLSv1.2/HTTPS/HTTP|g.live.com|
|||HTTP|onedrive.live.com|
|||TLSv1.2/HTTPS/HTTP|oneclient.sfx.ms|
|||HTTPS| logincdn.msauth.net|
|Settings|||[Learn how to turn off traffic to all of the following endpoint(s) for settings.](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-feedback)|
||The following endpoints are used as a way for apps to dynamically update their configuration. Apps such as System Initiated User Feedback and the Xbox app use it. If you turn off traffic for this endpoint, an app that uses this endpoint may stop working.|TLSv1.2/HTTPS/HTTP|settings-win.data.microsoft.com|
|||HTTPS|settings.data.microsoft.com|
|Skype|||[Learn how to turn off traffic to all of the following endpoint(s) for Skype.](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore)|
||The following endpoints are used to retrieve Skype configuration values. To turn off traffic for this endpoint, either uninstall the app or disable the Microsoft Store. If you disable the Microsoft store, other Microsoft Store apps can't be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious apps and users will still be able to open them.|HTTPS/HTTP|*.pipe.aria.microsoft.com|
|||TLSv1.2/HTTPS/HTTP|config.edge.skype.com|
|Teams|||[Learn how to turn off traffic to all of the following endpoint(s) for Teams.]( manage-connections-from-windows-operating-system-components-to-microsoft-services.md#26-microsoft-store)|
||The following endpoints are used for Microsoft Teams application.|TLSv1.2/HTTPS/HTTP|config.teams.microsoft.com|
|||HTTP|teams.live.com|
|||TLSv1.2/HTTP|teams.events.data.microsoft.com|
|||HTTP|statics.teams.cdn.live.net|
|Windows Spotlight|||[Learn how to turn off traffic to all of the following endpoint(s) for Windows Spotlight.](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-spotlight)|
||The following endpoints are used to retrieve Windows Spotlight metadata that describes content, such as references to image locations, as well as suggested apps, Microsoft account notifications, and Windows tips. If you turn off traffic for these endpoints, Windows Spotlight will still try to deliver new lock screen images and updated content but it will fail; suggested apps, Microsoft account notifications, and Windows tips won't be downloaded. |TLSv1.2/HTTPS/HTTP|arc.msn.com|
|||HTTPS|ris.api.iris.microsoft.com|
|||TLSv1.2/HTTP|api.msn.com|
|||TLSv1.2/HTTP|assets.msn.com|
|||HTTP|c.msn.com|
|||HTTP|ntp.msn.com|
|||HTTP|srtb.msn.com|
|||TLSv1.2/HTTP|www.msn.com|
|||TLSv1.2/HTTP|fd.api.iris.microsoft.com|
|||TLSv1.2|staticview.msn.com|
|Windows Update|||[Learn how to turn off traffic to all of the following endpoint(s) for Windows Update.](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-updates)|
|||TLSv1.2|definitionupdates.microsoft.com|
||The following endpoint is used for Windows Update downloads of apps and OS updates, including HTTP downloads or HTTP downloads blended with peers. If you turn off traffic for this endpoint, Windows Update downloads won't be managed, as critical metadata that is used to make downloads more resilient is blocked. Downloads may be impacted by corruption (resulting in re-downloads of full files). Additionally, downloads of the same update by multiple devices on the same local network won't use peer devices for bandwidth reduction.|TLSv1.2/HTTPS/HTTP|*.prod.do.dsp.mp.microsoft.com|
||The following endpoints are used to download operating system patches, updates, and apps from Microsoft Store. If you turn off traffic for these endpoints, the device won't be able to download updates for the operating system.|TLSv1.2/HTTPS/HTTP|*.dl.delivery.mp.microsoft.com|
|||HTTP|*.windowsupdate.com|
||The following endpoints enable connections to Windows Update, Microsoft Update, and the online services of the Store. If you turn off traffic for these endpoints, the device won't be able to connect to Windows Update and Microsoft Update to help keep the device secure. Also, the device won't be able to acquire and update apps from the Store. These are dependent on also enabling "Device authentication" and "Microsoft Account" endpoints.|TLSv1.2/HTTPS/HTTP|*.delivery.mp.microsoft.com|
|||TLSv1.2/HTTPS/HTTP|*.update.microsoft.com|
||The following endpoint is used for compatibility database updates for Windows.|HTTPS|adl.windows.com|
||The following endpoint is used for content regulation. If you turn off traffic for this endpoint, the Windows Update Agent will be unable to contact the endpoint, and fallback behavior will be used. This may result in content being either incorrectly downloaded or not downloaded at all.|TLSv1.2/HTTPS/HTTP|tsfe.trafficshaping.dsp.mp.microsoft.com|
|Xbox Live|||[Learn how to turn off traffic to all of the following endpoint(s) for Xbox Live.](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#26-microsoft-store)|
||The following endpoints are used for Xbox Live.|HTTPS|dlassets-ssl.xboxlive.com|
|||TLSv1.2|da.xboxservices.com|

## Related links

- [Office 365 URLs and IP address ranges](/microsoft-365/enterprise/urls-and-ip-address-ranges)
- [Network endpoints for Microsoft Intune](/mem/intune/fundamentals/intune-endpoints)
