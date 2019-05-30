---
title: Windows 10, version 1803, connection endpoints for non-Enterprise editions
description: Explains what Windows 10 endpoints are used in non-Enterprise editions.
keywords: privacy, manage connections to Microsoft, Windows 10, Windows Server 2016
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: high
audience: ITPro
author: dansimp
ms.author: dansimp
manager: dansimp
ms.collection: M365-security-compliance
ms.topic: article
ms.date: 6/26/2018
---
# Windows 10, version 1803, connection endpoints for non-Enterprise editions

 **Applies to**

- Windows 10 Home, version 1803
- Windows 10 Professional, version 1803
- Windows 10 Education, version 1803

In addition to the endpoints listed for [Windows 10 Enterprise](manage-windows-endpoints.md), the following endpoints are available on other editions of Windows 10, version 1803.

We used the following methodology to derive these network endpoints:

1.	Set up the latest version of Windows 10 on a test virtual machine using the default settings. 
2.	Leave the devices running idle for a week (that is, a user is not interacting with the system/device).
3.	Use globally accepted network protocol analyzer/capturing tools and log all background egress traffic.  
4.	Compile reports on traffic going to public IP addresses.
5.  The test virtual machine was logged in using a local account and was not joined to a domain or Azure Active Directory.
6.  All traffic was captured in our lab using a IPV4 network.  Therefore no IPV6 traffic is reported here. 

> [!NOTE]
> Microsoft uses global load balancers that can appear in network trace-routes. For example, an endpoint for *.akadns.net might be used to load balance requests to an Azure datacenter, which can change over time.

## Windows 10 Family

| **Destination** | **Protocol** | **Description** |
| --- | --- | --- |
| *.e-msedge.net	| HTTPS |	Used by OfficeHub to get the metadata of Office apps. |
| *.g.akamaiedge.net	| HTTPS |	Used to check for updates to maps that have been downloaded for offline use. |
| *.s-msedge.net	| HTTPS |	Used by OfficeHub to get the metadata of Office apps. |
| *.tlu.dl.delivery.mp.microsoft.com/filestreamingservice/files/ | HTTP | Enables connections to Windows Update. |
| arc.msn.com.nsatc.net	| HTTPS |	Used to retrieve Windows Spotlight metadata. |
| arc.msn.com/v3/Delivery/Placement	| HTTPS |	Used to retrieve Windows Spotlight metadata. |
| client-office365-tas.msedge.net*	| HTTPS |	Used to connect to the Office 365 portal’s shared infrastructure, including Office Online. |
| config.edge.skype.com/config/*	| HTTPS |	Used to retrieve Skype configuration values. |
| ctldl.windowsupdate.com/msdownload/update* | HTTP | Used to download certificates that are publicly known to be fraudulent. |
| cy2.displaycatalog.md.mp.microsoft.com.akadns.net	| HTTPS |	Used to communicate with Microsoft Store. |
| cy2.licensing.md.mp.microsoft.com.akadns.net	| HTTPS |	Used to communicate with Microsoft Store. |
| cy2.settings.data.microsoft.com.akadns.net	| HTTPS |	Used to communicate with Microsoft Store. |
| displaycatalog.mp.microsoft.com*	| HTTPS |	Used to communicate with Microsoft Store. |
| dm3p.wns.notify.windows.com.akadns.net	| HTTPS |	Used for the Windows Push Notification Services (WNS). |
| fe2.update.microsoft.com*	| HTTPS |	Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store. |
| fe3.delivery.dsp.mp.microsoft.com.nsatc.net	| HTTPS |	Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store. |
| fe3.delivery.mp.microsoft.com	| HTTPS |	Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store. |
| g.live.com/odclientsettings/Prod	| HTTPS |	Used by OneDrive for Business to download and verify app updates. |
| g.msn.com.nsatc.net	| HTTPS |	Used to retrieve Windows Spotlight metadata. |
| geo-prod.dodsp.mp.microsoft.com.nsatc.net	| HTTPS |	Enables connections to Windows Update. |
| ip5.afdorigin-prod-am02.afdogw.com	| HTTPS |	Used to serve office 365 experimentation traffic. |
| ipv4.login.msa.akadns6.net	| HTTPS |	Used for Microsoft accounts to sign in. |
| licensing.mp.microsoft.com/v7.0/licenses/content	| HTTPS |	Used for online activation and some app licensing. |
| location-inference-westus.cloudapp.net	| HTTPS |	Used for location data. |
| maps.windows.com/windows-app-web-link	| HTTPS |	Link to Maps application. |
| modern.watson.data.microsoft.com.akadns.net	| HTTPS |	Used by Windows Error Reporting. |
| ocos-office365-s2s.msedge.net*	| HTTPS | Used to connect to the Office 365 portal's shared infrastructure. |
| ocsp.digicert.com* |	HTTP | CRL and OCSP checks to the issuing certificate authorities. |
| oneclient.sfx.ms*	| HTTPS |	Used by OneDrive for Business to download and verify app updates. |
| onecollector.cloudapp.aria.akadns.net	| HTTPS |	Office Telemetry |
| prod.nexusrules.live.com.akadns.net	| HTTPS |	Office Telemetry |
| query.prod.cms.rt.microsoft.com*	| HTTPS |	Used to retrieve Windows Spotlight metadata. |
| ris.api.iris.microsoft.com*	| HTTPS |	Used to retrieve Windows Spotlight metadata. |
| settings.data.microsoft.com/settings/v2.0/*	| HTTPS |	Used for Windows apps to dynamically update their configuration. |
| settings-win.data.microsoft.com/settings/*	| HTTPS |	Used as a way for apps to dynamically update their configuration.  |
| share.microsoft.com/windows-app-web-link	| HTTPS |	Traffic related to Books app |
| sls.update.microsoft.com*	| HTTPS |	Enables connections to Windows Update. |
| storecatalogrevocation.storequality.microsoft.com*	| HTTPS |	Used to revoke licenses for malicious apps on the Microsoft Store. |
| storeedgefd.dsx.mp.microsoft.com*	| HTTPS |	Used to communicate with Microsoft Store. |
| tile-service.weather.microsoft.com* | HTTP | Used to download updates to the Weather app Live Tile. |
| tsfe.trafficshaping.dsp.mp.microsoft.com	| HTTPS |	Used for content regulation. |
| us.configsvc1.live.com.akadns.net	| HTTPS |	Microsoft Office configuration related traffic |
| watson.telemetry.microsoft.com/Telemetry.Request	| HTTPS |	Used by Windows Error Reporting. |
| wd-prod-cp-us-east-2-fe.eastus.cloudapp.azure.com	| HTTPS |	Azure front end traffic |


## Windows 10 Pro
| **Destination** | **Protocol** | **Description** |
| --- | --- | --- |
| *.e-msedge.net	| HTTPS |	Used by OfficeHub to get the metadata of Office apps. |
| *.g.akamaiedge.net	| HTTPS |	Used to check for updates to maps that have been downloaded for offline use. |
| *.s-msedge.net	| HTTPS |	Used by OfficeHub to get the metadata of Office apps. |
| *.tlu.dl.delivery.mp.microsoft.com/* | HTTP | Enables connections to Windows Update. |
| *geo-prod.dodsp.mp.microsoft.com.nsatc.net	| HTTPS |	Enables connections to Windows Update. |
| arc.msn.com.nsatc.net	| HTTPS |	Used to retrieve Windows Spotlight metadata. |
| au.download.windowsupdate.com/* | HTTP | Enables connections to Windows Update. |
| ctldl.windowsupdate.com/msdownload/update/* | HTTP |	Used to download certificates that are publicly known to be fraudulent. |
| cy2.licensing.md.mp.microsoft.com.akadns.net	| HTTPS |	Used to communicate with Microsoft Store. |
| cy2.settings.data.microsoft.com.akadns.net	| HTTPS |	Used to communicate with Microsoft Store. |
| dm3p.wns.notify.windows.com.akadns.net	| HTTPS |	Used for the Windows Push Notification Services (WNS) |
| fe3.delivery.dsp.mp.microsoft.com.nsatc.net	| HTTPS |	Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store. |
| flightingservicewus.cloudapp.net	| HTTPS |	Insider Program |
| g.msn.com.nsatc.net	| HTTPS |	Used to retrieve Windows Spotlight metadata. |
| ipv4.login.msa.akadns6.net	| HTTPS |	Used for Microsoft accounts to sign in. |
| location-inference-westus.cloudapp.net	| HTTPS |	Used for location data. |
| modern.watson.data.microsoft.com.akadns.net	| HTTPS |	Used by Windows Error Reporting. |
| ocsp.digicert.com* |	HTTP | CRL and OCSP checks to the issuing certificate authorities. |
| onecollector.cloudapp.aria.akadns.net	| HTTPS |	Office Telemetry |
| ris.api.iris.microsoft.com.akadns.net	| HTTPS |	Used to retrieve Windows Spotlight metadata. |
| tile-service.weather.microsoft.com/* | HTTP |	Used to download updates to the Weather app Live Tile. |
| tsfe.trafficshaping.dsp.mp.microsoft.com	| HTTPS |	Used for content regulation. |
| vip5.afdorigin-prod-am02.afdogw.com	| HTTPS |	Used to serve office 365 experimentation traffic |


## Windows 10 Education

| **Destination** | **Protocol** | **Description** |
| --- | --- | --- |
| *.b.akamaiedge.net	| HTTPS |	Used to check for updates to maps that have been downloaded for offline use. |
| *.e-msedge.net	| HTTPS |	Used by OfficeHub to get the metadata of Office apps. |
| *.g.akamaiedge.net	| HTTPS |	Used to check for updates to maps that have been downloaded for offline use. |
| *.s-msedge.net	| HTTPS |	Used by OfficeHub to get the metadata of Office apps. |
| *.telecommand.telemetry.microsoft.com.akadns.net | HTTPS | Used by Windows Error Reporting. |
| *.tlu.dl.delivery.mp.microsoft.com* | HTTP | Enables connections to Windows Update. |
| *.windowsupdate.com* | HTTP | Enables connections to Windows Update. |
| *geo-prod.do.dsp.mp.microsoft.com	| HTTPS |	Enables connections to Windows Update. |
| au.download.windowsupdate.com* | HTTP | Enables connections to Windows Update. |
| cdn.onenote.net/livetile/*	| HTTPS |	Used for OneNote Live Tile. |
| client-office365-tas.msedge.net/*	| HTTPS |	Used to connect to the Office 365 portal’s shared infrastructure, including Office Online. |
| cloudtile.photos.microsoft.com.akadns.net	| HTTPS |	Photos App in MS Store 
| config.edge.skype.com/*	| HTTPS |	Used to retrieve Skype configuration values.  |
| ctldl.windowsupdate.com/* | HTTP | Used to download certificates that are publicly known to be fraudulent. |
| cy2.displaycatalog.md.mp.microsoft.com.akadns.net	| HTTPS |	Used to communicate with Microsoft Store. |
| cy2.licensing.md.mp.microsoft.com.akadns.net	| HTTPS |	Used to communicate with Microsoft Store. |
| cy2.settings.data.microsoft.com.akadns.net	| HTTPS |	Used to communicate with Microsoft Store. |
| displaycatalog.mp.microsoft.com/*	| HTTPS |	Used to communicate with Microsoft Store. | 
| download.windowsupdate.com/*	| HTTPS |	Enables connections to Windows Update. |
| emdl.ws.microsoft.com/* | HTTP | Used to download apps from the Microsoft Store. |
| fe2.update.microsoft.com/*	| HTTPS |	Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store. |
| fe3.delivery.dsp.mp.microsoft.com.nsatc.net	| HTTPS |	Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store. |
| fe3.delivery.mp.microsoft.com/*	| HTTPS |	Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store. |
| flightingservicewus.cloudapp.net	| HTTPS |	Insider Program | 
| g.live.com/odclientsettings/*	| HTTPS |	Used by OneDrive for Business to download and verify app updates. |
| g.msn.com.nsatc.net	| HTTPS |	Used to retrieve Windows Spotlight metadata. |
| ipv4.login.msa.akadns6.net	| HTTPS |	Used for Microsoft accounts to sign in. |
| licensing.mp.microsoft.com/*	| HTTPS |	Used for online activation and some app licensing. |
| maps.windows.com/windows-app-web-link	| HTTPS |	Link to Maps application |
| modern.watson.data.microsoft.com.akadns.net	| HTTPS |	Used by Windows Error Reporting. |
| ocos-office365-s2s.msedge.net/*	| HTTPS |	Used to connect to the Office 365 portal's shared infrastructure. |
| ocsp.digicert.com* |	HTTP | CRL and OCSP checks to the issuing certificate authorities. |
| oneclient.sfx.ms/*	| HTTPS |	Used by OneDrive for Business to download and verify app updates. |
| onecollector.cloudapp.aria.akadns.net	| HTTPS |	Office telemetry | 
| settings-win.data.microsoft.com/settings/*	| HTTPS |	Used as a way for apps to dynamically update their configuration. |
| share.microsoft.com/windows-app-web-link	| HTTPS |	Traffic related to Books app | 
| sls.update.microsoft.com/*	| HTTPS |	Enables connections to Windows Update. |
| storecatalogrevocation.storequality.microsoft.com/*	| HTTPS |	Used to revoke licenses for malicious apps on the Microsoft Store. |
| tile-service.weather.microsoft.com/* | HTTP | Used to download updates to the Weather app Live Tile. |
| tsfe.trafficshaping.dsp.mp.microsoft.com	| HTTPS |	Used for content regulation. |
| vip5.afdorigin-prod-ch02.afdogw.com	| HTTPS |	Used to serve office 365 experimentation traffic. |
| watson.telemetry.microsoft.com/Telemetry.Request	| HTTPS |	Used by Windows Error Reporting. |
| wd-prod-cp-us-west-3-fe.westus.cloudapp.azure.com	| HTTPS |	Azure front end traffic | 
| www.bing.com/*	| HTTPS |	Used for updates for Cortana, apps, and Live Tiles. | 
