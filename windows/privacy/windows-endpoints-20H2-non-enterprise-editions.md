---
title: Windows 10, version 20H2, connection endpoints for non-Enterprise editions
description: Explains what Windows 10 endpoints are used in non-Enterprise editions. Specific to Windows 10, version 20H2.
keywords: privacy, manage connections to Microsoft, Windows 10, Windows Server 2016
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: high
audience: ITPro
author: gental-giant
ms.author: v-hakima
manager: robsize
ms.collection: M365-security-compliance
ms.topic: article
ms.date: 12/17/2020
---
# Windows 10, version 20H2, connection endpoints for non-Enterprise editions

 **Applies to**

- Windows 10 Home, version 20H2
- Windows 10 Professional, version 20H2
- Windows 10 Education, version 20H2

In addition to the endpoints listed for [Windows 10 Enterprise](manage-windows-2004-endpoints.md), the following endpoints are available on other non-Enterprise editions of Windows 10, version 20H2.

The following methodology was used to derive the network endpoints:

1. Set up the latest version of Windows 10 on a test virtual machine using the default settings.
2. Leave the device(s) running idle for a week ("idle" means a user is not interacting with the system/device).
3. Use globally accepted network protocol analyzer/capturing tools and log all background egress traffic.  
4. Compile reports on traffic going to public IP addresses.
5. The test virtual machine(s) was logged into using a local account, and was not joined to a domain or Azure Active Directory.
6. All traffic was captured in our lab using a IPV4 network.  Therefore, no IPV6 traffic is reported here.
7. These tests were conducted in an approved Microsoft lab.  It's possible your results may be different.
8. These tests were conducted for one week. If you capture traffic for longer you may have different results.

> [!NOTE]
> Microsoft uses global load balancers that can appear in network trace-routes. For example, an endpoint for *.akadns.net might be used to load balance requests to an Azure datacenter, which can change over time.

## Windows 10 Family

| **Area** | **Description** | **Protocol** | **Destination** |
|-----------|--------------- |------------- |-----------------|
| Activity Feed Service |The following endpoints are used by Activity Feed Service which enables multiple cross-device data roaming scenarios on Windows|TLSv1.2/HTTPS/HTTP|activity.windows.com|
|Apps|The following endpoints are used for the Weather app.|TLSv1.2/HTTPS/HTTP|tile-service.weather.microsoft.com|
||The following endpoint is used by the Photos app to download configuration files, and to connect to the Office 365 portal's shared infrastructure, including Office in a browser.|TLSv1.2/HTTPS/HTTP|evoke-windowsservices-tas.msedge.net|
||The following endpoint is used for OneNote Live Tile.|HTTPS/HTTP|cdn.onenote.net|
||Used for Spotify Live Tile|HTTPS/HTTP|spclient.wg.spotify.com|
|Certificates|The following endpoint is used by the Automatic Root Certificates Update component to automatically check the list of trusted authorities on Windows Update to see if an update is available.|TLSv1.2/HTTPS/HTTP|ctldl.windowsupdate.com/*|
|Cortana and Live Tiles|The following endpoints are related to Cortana and Live Tiles|TLSv1.2/HTTPS/HTTP|www.bing.com*|
|||HTTPS/HTTP|fp.msedge.net|
|||HTTPS/HTTP|k-ring.msedge.net|
|||TLSv1.2|b-ring.msedge.net|
|Device authentication|The following endpoint is used to authenticate a device.|HTTPS|login.live.com*|
|Device Directory Service|Used by Device Directory Service to keep track of user-device associations and storing metadata about the devices.|HTTPS/HTTP|cs.dds.microsoft.com|
|Device metadata|The following endpoint is used to retrieve device metadata.|TLSv1.2/HTTP|dmd.metaservices.microsoft.com|
|Diagnostic data|The following endpoints are used by the Connected User Experiences and Telemetry component and connects to the Microsoft Data Management service.|TLSv1.2/HTTP|v10.events.data.microsoft.com|
|||TLSv1.2/HTTPS/HTTP|v20.events.data.microsoft.com|
|||TLSv1.2/HTTP|www.microsoft.com|
||The following endpoints are used by Windows Error Reporting.|TLSv1.2/HTTPS/HTTP|watson.telemetry.microsoft.com|
|Font Streaming|The following endpoints are used to download fonts on demand.|TLSv1.2/HTTPS|fs.microsoft.com*|
|Licensing|The following endpoint is used for online activation and some app licensing.|HTTPS/HTTP|*licensing.mp.microsoft.com|
|||HTTPS|licensing.mp.microsoft.com/v7.0/licenses/content|
|Location|The following endpoints are used for location data.|TLSV1.2|inference.location.live.net|
|Maps|The following endpoints are used to check for updates to maps that have been downloaded for offline use.|HTTPS/HTTP|maps.windows.com| 
|||HTTPS/HTTP|*.ssl.ak.dynamic.tiles.virtualearth.net|
|||HTTPS/HTTP|*.ssl.ak.tiles.virtualearth.net|
|||HTTPS/HTTP|dev.virtualearth.net|
|||HTTPS/HTTP|ecn.dev.virtualearth.net|
|||HTTPS/HTTP|ssl.bing.com|
|Microsoft Account|The following endpoints are used for Microsoft accounts to sign in|TLSv1.2/HTTPS/HTTP|*login.live.com|
|Microsoft Edge|The following endpoints are used for Microsoft Edge Browser Services.|HTTPS/HTTP|edge.activity.windows.com|
|||HTTPS/HTTP|edge.microsoft.com|
||The following endpoint is used by Microsoft Edge Update service to check for new updates.|HTTPS/HTTP|msedge.api.cdp.microsoft.com|
|Microsoft forward link redirection|The following endpoint is used by the Microsoft forward link redirection service (FWLink) to redirect permanent web links to their actual, sometimes transitory, URL. FWlinks are similar to URL shorteners, just longer|HTTP|go.microsoft.com/fwlink/|
|||TLSv1.2/HTTPS/HTTP|go.microsoft.com|
|Microsoft Store|The following endpoint is used to download image files that are called when applications run (Microsoft Store or Inbox MSN Apps)|TLSv1.2/HTTPS/HTTP|img-prod-cms-rt-microsoft-com.akamaized.net|
||The following endpoint is used for the Windows Push Notification Services (WNS). WNS enables third-party developers to send toast, tile, badge, and raw updates from their own cloud service. This provides a mechanism to deliver new updates to your users in a power-efficient and dependable way.|TLSv1.2/HTTPS|*.wns.windows.com|
||The following endpoint is used to revoke licenses for malicious apps in the Microsoft Store.|TLSv1.2/HTTPS/HTTP|storecatalogrevocation.storequality.microsoft.com|
||The following endpoints are used to communicate with Microsoft Store.|TLSv1.2/HTTPS/HTTP|*displaycatalog.mp.microsoft.com|
|||HTTPS|pti.store.microsoft.com|
|||HTTPS|storesdk.dsx.mp.microsoft.com|
||The following endpoint is used to get Microsoft Store analytics.|TLSv1.2/HTTPS/HTTP|manage.devcenter.microsoft.com|
||The following endpoints are used get images that are used for Microsoft Store suggestions|TLSv1.2|store-images.s-microsoft.com|
|Network Connection Status Indicator (NCSI)|Network Connection Status Indicator (NCSI) detects Internet connectivity and corporate network connectivity status. NCSI sends a DNS request and HTTP query to this endpoint to determine if the device can communicate with the Internet.|TLSv1.2/HTTP|www.msftconnecttest.com*|
|Office|The following endpoints are used to connect to the Office 365 portal's shared infrastructure, including Office in a browser.|TLSv1.2/HTTPS/HTTP|outlook.office365.com|
|||TLSv1.2/HTTPS|office.com|
|||TLSv1.2/HTTPS|blobs.officehome.msocdn.com|
|||HTTPS/HTTP|officehomeblobs.blob.core.windows.net|
|||HTTP/HTTPS|*.blob.core.windows.net|
|||TLSv1.2|self.events.data.microsoft.com|
|||HTTPS/HTTP|outlookmobile-office365-tas.msedge.net|
|||HTTP|roaming.officeapps.live.com|
|||HTTPS/HTTP|substrate.office.com|
|OneDrive|The following endpoints are related to OneDrive.|HTTPS|g.live.com|
|||TLSv1.2/HTTPS|oneclient.sfx.ms|
|||HTTPS/TLSv1.2|logincdn.msauth.net|
|||HTTPS/HTTP|windows.policies.live.net|
|||HTTPS/HTTP|api.onedrive.com|
|||HTTPS/HTTP|skydrivesync.policies.live.net|
|||HTTPS/HTTP|*storage.live.com|
|||HTTPS/HTTP|*settings.live.net|
|Settings|The following endpoint is used as a way for apps to dynamically update their configuration. Apps such as System Initiated User Feedback and the Xbox app use it.|TLSv1.2/HTTPS/HTTP|settings.data.microsoft.com*|
|||TLSv1.2/HTTPS/HTTP|settings-win.data.microsoft.com*|
|Skype|The following endpoint is used to retrieve Skype configuration values.|TLSv1.2/HTTPS/HTTP|*.pipe.aria.microsoft.com|
|||TLSv1.2/HTTPS/HTTP|config.edge.skype.com|
|Teams|The following endpoint is used for Microsoft Teams application.|TLSv1.2/HTTPS/HTTP|config.teams.microsoft.com|
|Windows Defender|The following endpoint is used for Windows Defender when Cloud-based Protection is enabled|TLSv1.2/HTTPS|wdcp.microsoft.com|
||||wdcpalt.microsoft.com|
|||HTTPS/HTTP|*.smartscreen-prod.microsoft.com|
|||TLSv1.2|definitionupdates.microsoft.com|
||The following endpoints are used for Windows Defender SmartScreen reporting and notifications.|TLSv1.2|*.smartscreen.microsoft.com|
|||TLSv1.2/HTTP|checkappexec.microsoft.com|
|Windows Spotlight|The following endpoints are used to retrieve Windows Spotlight metadata that describes content, such as references to image locations, as well as suggested apps, Microsoft account notifications, and Windows tips.|TLSv1.2/HTTPS/HTTP|arc.msn.com*|
|||TLSv1.2/HTTPS/HTTP|ris.api.iris.microsoft.com|
|||HTTPS|mucp.api.account.microsoft.com|
|Windows Update|The following endpoint is used for Windows Update downloads of apps and OS updates, including HTTP downloads or HTTP downloads blended with peers.|TLSv1.2/HTTPS/HTTP|*.prod.do.dsp.mp.microsoft.com|
|||TLSv1.2/HTTP|emdl.ws.microsoft.com|
|||TLSv1.2/HTTPS/HTTP|*.dl.delivery.mp.microsoft.com|
||The following endpoints are used to download operating system patches, updates, and apps from Microsoft Store.|TLSv1.2/HTTP|*.windowsupdate.com|
|||TLSv1.2/HTTPS/HTTP|*.delivery.mp.microsoft.com|
||The following endpoints enable connections to Windows Update, Microsoft Update, and the online services of the Store to help keep the device secure.|TLSv1.2/HTTPS/HTTP|*.update.microsoft.com|
||The following endpoint is used for compatibility database updates for Windows.|HTTP/HTTPS|adl.windows.com|
||The following endpoint is used for content regulation.|TLSv1.2/HTTPS/HTTP|tsfe.trafficshaping.dsp.mp.microsoft.com|
|Xbox Live|The following endpoints are used for Xbox Live.|
|||TLSv1.2/HTTPS/HTTP|dlassets-ssl.xboxlive.com| 
|||TLSv1.2/HTTPS|da.xboxservices.com|
|||HTTPS|www.xboxab.com|
|

## Windows 10 Pro

| **Area** | **Description** | **Protocol** | **Destination** |
| --- | --- | --- | ---|
| Activity Feed Service |The following endpoints are used by Activity Feed Service which enables multiple cross-device data roaming scenarios on Windows|TLSv1.2/HTTPS/HTTP|activity.windows.com|
|Apps|The following endpoints are used for the Weather app.|TLSv1.2/HTTPS/HTTP|tile-service.weather.microsoft.com|
||The following endpoint is used by the Photos app to download configuration files, and to connect to the Office 365 portal's shared infrastructure, including Office in a browser.|TLSv1.2/HTTPS/HTTP|evoke-windowsservices-tas.msedge.net|
||The following endpoint is used for OneNote Live Tile.|HTTPS/HTTP|cdn.onenote.net|
||Used for Spotify Live Tile|HTTPS/HTTP|spclient.wg.spotify.com|
|Certificates|The following endpoint is used by the Automatic Root Certificates Update component to automatically check the list of trusted authorities on Windows Update to see if an update is available.|TLSv1.2/HTTPS/HTTP|ctldl.windowsupdate.com/*|
|Cortana and Live Tiles|The following endpoints are related to Cortana and Live Tiles|TLSv1.2/HTTPS/HTTP|www.bing.com*|
|Device authentication|The following endpoint is used to authenticate a device.|HTTPS|login.live.com*|
|Device metadata|The following endpoint is used to retrieve device metadata.|TLSv1.2/HTTP|dmd.metaservices.microsoft.com|
|Diagnostic data|The following endpoints are used by the Connected User Experiences and Telemetry component and connects to the Microsoft Data Management service.|TLSv1.2/HTTP|v10.events.data.microsoft.com|
|||TLSv1.2/HTTPS/HTTP|v20.events.data.microsoft.com|
|||TLSv1.2/HTTP|www.microsoft.com|
||The following endpoints are used by Windows Error Reporting.|TLSv1.2/HTTPS/HTTP|watson.telemetry.microsoft.com|
|Font Streaming|The following endpoints are used to download fonts on demand.|TLSv1.2/HTTPS|fs.microsoft.com*|
|Licensing|The following endpoint is used for online activation and some app licensing.|HTTPS/HTTP|*licensing.mp.microsoft.com|
|Maps|The following endpoints are used to check for updates to maps that have been downloaded for offline use.|HTTPS/HTTP|maps.windows.com|
|Microsoft Account|The following endpoints are used for Microsoft accounts to sign in|TLSv1.2/HTTPS/HTTP|*login.live.com|
|Microsoft Edge|The following endpoint is used by Microsoft Edge Update service to check for new updates.|HTTPS/HTTP|msedge.api.cdp.microsoft.com|
|Microsoft forward link redirection|The following endpoint is used by the Microsoft forward link redirection service (FWLink) to redirect permanent web links to their actual, sometimes transitory, URL. FWlinks are similar to URL shorteners, just longer|TLSv1.2/HTTPS/HTTP|go.microsoft.com|
|Microsoft Store|The following endpoint is used to download image files that are called when applications run (Microsoft Store or Inbox MSN Apps)|TLSv1.2/HTTPS/HTTP|img-prod-cms-rt-microsoft-com.akamaized.net|
||The following endpoint is used for the Windows Push Notification Services (WNS). WNS enables third-party developers to send toast, tile, badge, and raw updates from their own cloud service. This provides a mechanism to deliver new updates to your users in a power-efficient and dependable way.|TLSv1.2/HTTPS|*.wns.windows.com|
||The following endpoint is used to revoke licenses for malicious apps in the Microsoft Store.|TLSv1.2/HTTPS/HTTP|storecatalogrevocation.storequality.microsoft.com|
||The following endpoints are used to communicate with Microsoft Store.|TLSv1.2/HTTPS/HTTP|*displaycatalog.mp.microsoft.com|
|||HTTPS|pti.store.microsoft.com|
|||HTTPS|storesdk.dsx.mp.microsoft.com|
||The following endpoint is used to get Microsoft Store analytics.|TLSv1.2/HTTPS/HTTP|manage.devcenter.microsoft.com|
|Network Connection Status Indicator (NCSI)|Network Connection Status Indicator (NCSI) detects Internet connectivity and corporate network connectivity status. NCSI sends a DNS request and HTTP query to this endpoint to determine if the device can communicate with the Internet.|TLSv1.2/HTTP|www.msftconnecttest.com*|
|Office|The following endpoints are used to connect to the Office 365 portal's shared infrastructure, including Office in a browser.|TLSv1.2/HTTPS/HTTP|outlook.office365.com|
|||TLSv1.2/HTTPS|office.com|
|||TLSv1.2/HTTPS|blobs.officehome.msocdn.com|
|||HTTPS/HTTP|officehomeblobs.blob.core.windows.net|
|||HTTP/HTTPS|*.blob.core.windows.net|
|||TLSv1.2|self.events.data.microsoft.com|
|||HTTPS/HTTP|outlookmobile-office365-tas.msedge.net|
|||TLSv1.2/HTTPS/HTTP|officeclient.microsoft.com|
|||HTTPS/HTTP|substrate.office.com|
|OneDrive|The following endpoints are related to OneDrive.|HTTPS|g.live.com|
|||TLSv1.2/HTTPS|oneclient.sfx.ms|
|||HTTPS/TLSv1.2|logincdn.msauth.net|
|||HTTPS/HTTP|windows.policies.live.net|
|||HTTPS/HTTP|*storage.live.com|
|||HTTPS/HTTP|*settings.live.net|
|Settings|The following endpoint is used as a way for apps to dynamically update their configuration. Apps such as System Initiated User Feedback and the Xbox app use it.|TLSv1.2/HTTPS/HTTP|settings.data.microsoft.com*|
|||TLSv1.2/HTTPS/HTTP|settings-win.data.microsoft.com*|
|Skype|The following endpoint is used to retrieve Skype configuration values.|TLSv1.2/HTTPS/HTTP|*.pipe.aria.microsoft.com|
|||TLSv1.2/HTTPS/HTTP|config.edge.skype.com|
|Teams|The following endpoint is used for Microsoft Teams application.|TLSv1.2/HTTPS/HTTP|config.teams.microsoft.com|
|Windows Defender|The following endpoint is used for Windows Defender when Cloud-based Protection is enabled|TLSv1.2/HTTPS|wdcp.microsoft.com|
||||wdcpalt.microsoft.com|
|||HTTPS/HTTP|*.smartscreen-prod.microsoft.com|
||The following endpoints are used for Windows Defender SmartScreen reporting and notifications.|TLSv1.2|*.smartscreen.microsoft.com|
|||TLSv1.2/HTTP|checkappexec.microsoft.com|
|Windows Spotlight|The following endpoints are used to retrieve Windows Spotlight metadata that describes content, such as references to image locations, as well as suggested apps, Microsoft account notifications, and Windows tips.|TLSv1.2/HTTPS/HTTP|arc.msn.com*|
|||TLSv1.2/HTTPS/HTTP|ris.api.iris.microsoft.com|
|Windows Update|The following endpoint is used for Windows Update downloads of apps and OS updates, including HTTP downloads or HTTP downloads blended with peers.|TLSv1.2/HTTPS/HTTP|*.prod.do.dsp.mp.microsoft.com|
|||TLSv1.2/HTTP|emdl.ws.microsoft.com|
|||TLSv1.2/HTTPS/HTTP|*.dl.delivery.mp.microsoft.com|
||The following endpoints are used to download operating system patches, updates, and apps from Microsoft Store.|TLSv1.2/HTTP|*.windowsupdate.com|
|||TLSv1.2/HTTPS/HTTP|*.delivery.mp.microsoft.com|
||The following endpoints enable connections to Windows Update, Microsoft Update, and the online services of the Store to help keep the device secure.|TLSv1.2/HTTPS/HTTP|*.update.microsoft.com|
||The following endpoint is used for compatibility database updates for Windows.|HTTP/HTTPS|adl.windows.com|
||The following endpoint is used for content regulation.|TLSv1.2/HTTPS/HTTP|tsfe.trafficshaping.dsp.mp.microsoft.com|
|Xbox Live|The following endpoints are used for Xbox Live.|
|||TLSv1.2/HTTPS/HTTP|dlassets-ssl.xboxlive.com| 
|||TLSv1.2/HTTPS|da.xboxservices.com|
|

## Windows 10 Education

| **Area** | **Description** | **Protocol** | **Destination** |
| --- | --- | --- | ---|
| Activity Feed Service |The following endpoints are used by Activity Feed Service which enables multiple cross-device data roaming scenarios on Windows|TLSv1.2/HTTPS/HTTP|activity.windows.com|
|Apps|The following endpoints are used for the Weather app.|TLSv1.2/HTTPS/HTTP|tile-service.weather.microsoft.com|
||The following endpoint is used by the Photos app to download configuration files, and to connect to the Office 365 portal's shared infrastructure, including Office in a browser.|TLSv1.2/HTTPS/HTTP|evoke-windowsservices-tas.msedge.net|
||The following endpoint is used for OneNote Live Tile.|HTTPS/HTTP|cdn.onenote.net|
|Bing Search|The following endpoint is used by Microsoft Search in Bing enabling users to search across files, SharePoint sites, OneDrive content, Teams and Yammer conversations, and other shared data sources in an organization, as well as the web.|HTTPS|business.bing.com|
|Certificates|The following endpoint is used by the Automatic Root Certificates Update component to automatically check the list of trusted authorities on Windows Update to see if an update is available.|TLSv1.2/HTTPS/HTTP|ctldl.windowsupdate.com/*|
|Cortana and Live Tiles|The following endpoints are related to Cortana and Live Tiles|TLSv1.2/HTTPS/HTTP|www.bing.com*|
|||HTTPS/HTTP|fp.msedge.net|
|||TLSv1.2|odinvzc.azureedge.net|
|||TLSv1.2|b-ring.msedge.net|
|Device metadata|The following endpoint is used to retrieve device metadata.|TLSv1.2/HTTP|dmd.metaservices.microsoft.com|
|Diagnostic data|The following endpoints are used by the Connected User Experiences and Telemetry component and connects to the Microsoft Data Management service.|TLSv1.2/HTTP|v10.events.data.microsoft.com|
|||TLSv1.2/HTTPS/HTTP|v20.events.data.microsoft.com|
|||TLSv1.2/HTTP|www.microsoft.com|
||The following endpoints are used by Windows Error Reporting.|TLSv1.2/HTTPS/HTTP|watson.telemetry.microsoft.com|
|Font Streaming|The following endpoints are used to download fonts on demand.|TLSv1.2/HTTPS|fs.microsoft.com*|
|Licensing|The following endpoint is used for online activation and some app licensing.|HTTPS/HTTP|*licensing.mp.microsoft.com|
|Location|The following endpoints are used for location data.|TLSV1.2|inference.location.live.net|
|Maps|The following endpoints are used to check for updates to maps that have been downloaded for offline use.|HTTPS/HTTP|maps.windows.com|
|Microsoft Account|The following endpoints are used for Microsoft accounts to sign in|TLSv1.2/HTTPS/HTTP|*login.live.com|
|Microsoft Edge|The following endpoint is used by Microsoft Edge Update service to check for new updates.|HTTPS/HTTP|msedge.api.cdp.microsoft.com|
|Microsoft forward link redirection|The following endpoint is used by the Microsoft forward link redirection service (FWLink) to redirect permanent web links to their actual, sometimes transitory, URL. FWlinks are similar to URL shorteners, just longer|TLSv1.2/HTTPS/HTTP|go.microsoft.com|
|Microsoft Store|The following endpoint is used to download image files that are called when applications run (Microsoft Store or Inbox MSN Apps)|TLSv1.2/HTTPS/HTTP|img-prod-cms-rt-microsoft-com.akamaized.net|
||The following endpoint is used for the Windows Push Notification Services (WNS). WNS enables third-party developers to send toast, tile, badge, and raw updates from their own cloud service. This provides a mechanism to deliver new updates to your users in a power-efficient and dependable way.|TLSv1.2/HTTPS|*.wns.windows.com|
||The following endpoint is used to revoke licenses for malicious apps in the Microsoft Store.|TLSv1.2/HTTPS/HTTP|storecatalogrevocation.storequality.microsoft.com|
|||TLSv1.2/HTTPS/HTTP|1storecatalogrevocation.storequality.microsoft.com|
||The following endpoints are used to communicate with Microsoft Store.|TLSv1.2/HTTPS/HTTP|*displaycatalog.mp.microsoft.com|
|||HTTPS|pti.store.microsoft.com|
|||HTTPS|storesdk.dsx.mp.microsoft.com|
||The following endpoint is used to get Microsoft Store analytics.|TLSv1.2/HTTPS/HTTP|manage.devcenter.microsoft.com|
|Network Connection Status Indicator (NCSI)|Network Connection Status Indicator (NCSI) detects Internet connectivity and corporate network connectivity status. NCSI sends a DNS request and HTTP query to this endpoint to determine if the device can communicate with the Internet.|TLSv1.2/HTTP|www.msftconnecttest.com*|
|Office|The following endpoints are used to connect to the Office 365 portal's shared infrastructure, including Office in a browser.|TLSv1.2/HTTPS|office.com|
|||HTTPS/HTTP|officehomeblobs.blob.core.windows.net|
|||TLSv1.2|self.events.data.microsoft.com|
|OneDrive|The following endpoints are related to OneDrive.|HTTPS|g.live.com|
|||TLSv1.2/HTTPS|oneclient.sfx.ms|
|||HTTPS/TLSv1.2|logincdn.msauth.net|
|Settings|The following endpoint is used as a way for apps to dynamically update their configuration. Apps such as System Initiated User Feedback and the Xbox app use it.|TLSv1.2/HTTPS/HTTP|settings.data.microsoft.com*|
|||TLSv1.2/HTTPS/HTTP|settings-win.data.microsoft.com*|
|Skype|The following endpoint is used to retrieve Skype configuration values.|TLSv1.2/HTTPS/HTTP|*.pipe.aria.microsoft.com|
|||TLSv1.2/HTTPS/HTTP|config.edge.skype.com|
|Teams|The following endpoint is used for Microsoft Teams application.|TLSv1.2/HTTPS/HTTP|config.teams.microsoft.com|
|Windows Defender|The following endpoint is used for Windows Defender when Cloud-based Protection is enabled|TLSv1.2/HTTPS|wdcp.microsoft.com|
||||wdcpalt.microsoft.com|
|||HTTPS/HTTP|*.smartscreen-prod.microsoft.com|
||The following endpoints are used for Windows Defender SmartScreen reporting and notifications.|TLSv1.2|*.smartscreen.microsoft.com|
|||TLSv1.2/HTTP|checkappexec.microsoft.com|
|Windows Spotlight|The following endpoints are used to retrieve Windows Spotlight metadata that describes content, such as references to image locations, as well as suggested apps, Microsoft account notifications, and Windows tips.|TLSv1.2/HTTPS/HTTP|arc.msn.com*|
|||TLSv1.2/HTTPS/HTTP|ris.api.iris.microsoft.com|
|Windows Update|The following endpoint is used for Windows Update downloads of apps and OS updates, including HTTP downloads or HTTP downloads blended with peers.|TLSv1.2/HTTPS/HTTP|*.prod.do.dsp.mp.microsoft.com|
|||TLSv1.2/HTTP|emdl.ws.microsoft.com|
|||TLSv1.2/HTTPS/HTTP|*.dl.delivery.mp.microsoft.com|
||The following endpoints are used to download operating system patches, updates, and apps from Microsoft Store.|TLSv1.2/HTTP|*.windowsupdate.com|
|||TLSv1.2/HTTPS/HTTP|*.delivery.mp.microsoft.com|
||The following endpoints enable connections to Windows Update, Microsoft Update, and the online services of the Store to help keep the device secure.|TLSv1.2/HTTPS/HTTP|*.update.microsoft.com|
||The following endpoint is used for compatibility database updates for Windows.|HTTP/HTTPS|adl.windows.com|
||The following endpoint is used for content regulation.|TLSv1.2/HTTPS/HTTP|tsfe.trafficshaping.dsp.mp.microsoft.com|
|Xbox Live|The following endpoints are used for Xbox Live.|
|||TLSv1.2/HTTPS/HTTP|dlassets-ssl.xboxlive.com|
|||TLSv1.2/HTTPS|da.xboxservices.com|
