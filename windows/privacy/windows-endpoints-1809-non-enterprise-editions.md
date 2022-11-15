---
title: Windows 10, version 1809, connection endpoints for non-Enterprise editions
description: Explains what Windows 10 endpoints are used in non-Enterprise editions. Specific to Windows 10, version 1809.
ms.prod: windows-client
ms.technology: itpro-privacy
ms.localizationpriority: high
author: DHB-MSFT
ms.author: danbrown
manager: dougeby
ms.topic: reference
---
# Windows 10, version 1809, connection endpoints for non-Enterprise editions

 **Applies to**

- Windows 10 Home, version 1809
- Windows 10 Professional, version 1809
- Windows 10 Education, version 1809

In addition to the endpoints listed for [Windows 10 Enterprise](manage-windows-1809-endpoints.md), the following endpoints are available on other editions of Windows 10, version 1809.

We used the following methodology to derive these network endpoints:

1. Set up the latest version of Windows 10 on a test virtual machine using the default settings. 
2. Leave the devices running idle for a week (that is, a user is not interacting with the system/device).
3. Use globally accepted network protocol analyzer/capturing tools and log all background egress traffic.  
4. Compile reports on traffic going to public IP addresses.
5.  The test virtual machine was logged in using a local account and was not joined to a domain or Azure Active Directory.
6.  All traffic was captured in our lab using a IPV4 network.  Therefore no IPV6 traffic is reported here. 

> [!NOTE]
> Microsoft uses global load balancers that can appear in network trace-routes. For example, an endpoint for *.akadns.net might be used to load balance requests to an Azure datacenter, which can change over time.

## Windows 10 Family

| **Destination** | **Protocol** | **Description** |
| --- | --- | --- |
|\*.aria.microsoft.com\*	| HTTPS |	Office Telemetry
|\*.dl.delivery.mp.microsoft.com\*	| HTTP |	Enables connections to Windows Update.
|\*.download.windowsupdate.com\*	| HTTP |	Used to download operating system patches and updates.
|\*.g.akamai.net	| HTTPS |	Used to check for updates to maps that have been downloaded for offline use.
|\*.msn.com\*	|TLSv1.2/HTTPS |	Windows Spotlight related traffic
|\*.Skype.com	| HTTP/HTTPS |	Skype related traffic
|\*.smartscreen.microsoft.com\*	| HTTPS |	Windows Defender Smartscreen related traffic
|\*.telecommand.telemetry.microsoft.com\*	| HTTPS |	Used by Windows Error Reporting.
|\*cdn.onenote.net*	| HTTP |	OneNote related traffic
|\*displaycatalog.mp.microsoft.com\*	| HTTPS |	Used to communicate with Microsoft Store.
|\*emdl.ws.microsoft.com\*	| HTTP |	Windows Update related traffic
|\*geo-prod.do.dsp.mp.microsoft.com\*	|TLSv1.2/HTTPS |	Enables connections to Windows Update.
|\*hwcdn.net*	| HTTP |	Used by the Highwinds Content Delivery Network to perform Windows updates.
|\*img-prod-cms-rt-microsoft-com.akamaized.net*	| HTTPS |	Used to download image files that are called when applications run (Microsoft Store or Inbox MSN Apps).
|\*maps.windows.com\*	| HTTPS |	Related to Maps application.
|\*msedge.net*	| HTTPS |	Used by OfficeHub to get the metadata of Office apps.
|\*nexusrules.officeapps.live.com\*	| HTTPS |	Office Telemetry
|\*photos.microsoft.com\*	| HTTPS |	Photos App related traffic
|\*prod.do.dsp.mp.microsoft.com\*	|TLSv1.2/HTTPS |	Used for Windows Update downloads of apps and OS updates.
|\*wac.phicdn.net*	| HTTP |	Windows Update related traffic
|\*windowsupdate.com\*	| HTTP |	Windows Update related traffic
|\*wns.windows.com\*	| HTTPS, TLSv1.2 |	Used for the Windows Push Notification Services (WNS).
|\*wpc.v0cdn.net*	| |	Windows Telemetry related traffic
|auth.gfx.ms/16.000.27934.1/OldConvergedLogin_PCore.js	| |	MSA related
|evoke-windowsservices-tas.msedge*	| HTTPS |	The following endpoint is used by the Photos app to download configuration files, and to connect to the Microsoft 365 admin center's shared infrastructure, including Office. To turn off traffic for this endpoint, either uninstall the Photos app or disable the Microsoft Store. If you disable the Microsoft store, other Store apps cannot be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.
|fe2.update.microsoft.com\*	|TLSv1.2/HTTPS |	Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store.
|fe3.\*.mp.microsoft.com.\* 	|TLSv1.2/HTTPS |	Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store.
|fs.microsoft.com	| |	Font Streaming (in ENT traffic)
|g.live.com\*	| HTTPS |	Used by OneDrive
|iriscoremetadataprod.blob.core.windows.net	| HTTPS |	Windows Telemetry
|mscrl.microsoft.com	| |	Certificate Revocation List related traffic.
|ocsp.digicert.com\*	| HTTP |	CRL and OCSP checks to the issuing certificate authorities.
|officeclient.microsoft.com	| HTTPS |	Office related traffic.
|oneclient.sfx.ms*	| HTTPS |	Used by OneDrive for Business to download and verify app updates.
|purchase.mp.microsoft.com\*	| HTTPS |	Used to communicate with Microsoft Store.
|query.prod.cms.rt.microsoft.com\*	| HTTPS |	Used to retrieve Windows Spotlight metadata.
|ris.api.iris.microsoft.com\*	|TLSv1.2/HTTPS |	Used to retrieve Windows Spotlight metadata.
|ris-prod-atm.trafficmanager.net	| HTTPS |	Azure traffic manager
|settings.data.microsoft.com\*	| HTTPS |	Used for Windows apps to dynamically update their configuration.
|settings-win.data.microsoft.com\*	| HTTPS |	Used for Windows apps to dynamically update their configuration.
|sls.update.microsoft.com\*	|TLSv1.2/HTTPS |	Enables connections to Windows Update.
|store*.dsx.mp.microsoft.com\*	| HTTPS |	Used to communicate with Microsoft Store.
|storecatalogrevocation.storequality.microsoft.com\*	| HTTPS |	Used to revoke licenses for malicious apps on the Microsoft Store.
|store-images.s-microsoft.com\*	| HTTP |	Used to get images that are used for Microsoft Store suggestions.
|tile-service.weather.microsoft.com\*	| HTTP |	Used to download updates to the Weather app Live Tile.
|tsfe.trafficshaping.dsp.mp.microsoft.com\*	|TLSv1.2 |	Used for content regulation.
|v10.events.data.microsoft.com	| HTTPS |	Diagnostic Data
|wdcp.microsoft.*	|TLSv1.2 |	Used for Windows Defender when Cloud-based Protection is enabled.
|wd-prod-cp-us-west-1-fe.westus.cloudapp.azure.com	| HTTPS |	Windows Defender related traffic.
|www.bing.com*	| HTTP |	Used for updates for Cortana, apps, and Live Tiles.

## Windows 10 Pro

| **Destination** | **Protocol** | **Description** |
| --- | --- | --- |
| *.e-msedge.net	| HTTPS |	Used by OfficeHub to get the metadata of Office apps. |
| *.g.akamaiedge.net	| HTTPS |	Used to check for updates to maps that have been downloaded for offline use. |
| *.s-msedge.net	| HTTPS |	Used by OfficeHub to get the metadata of Office apps. |
| \*.tlu.dl.delivery.mp.microsoft.com/\* | HTTP | Enables connections to Windows Update. |
| *geo-prod.dodsp.mp.microsoft.com.nsatc.net	| HTTPS |	Enables connections to Windows Update. |
| arc.msn.com.nsatc.net	| HTTPS |	Used to retrieve Windows Spotlight metadata. |
| au.download.windowsupdate.com/* | HTTP | Enables connections to Windows Update. |
| ctldl.windowsupdate.com/msdownload/update/* | HTTP |	Used to download certificates that are publicly known to be fraudulent. |
| cy2.licensing.md.mp.microsoft.com.akadns.net	| HTTPS |	Used to communicate with Microsoft Store. |
| cy2.settings.data.microsoft.com.akadns.net	| HTTPS |	Used to communicate with Microsoft Store. |
| dm3p.wns.notify.windows.com.akadns.net	| HTTPS |	Used for the Windows Push Notification Services (WNS) |
| fe3.delivery.dsp.mp.microsoft.com.nsatc.net	| HTTPS |	Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store. |
| g.msn.com.nsatc.net	| HTTPS |	Used to retrieve Windows Spotlight metadata. |
| ipv4.login.msa.akadns6.net	| HTTPS |	Used for Microsoft accounts to sign in. |
| location-inference-westus.cloudapp.net	| HTTPS |	Used for location data. |
| modern.watson.data.microsoft.com.akadns.net	| HTTPS |	Used by Windows Error Reporting. |
| ocsp.digicert.com\* |	HTTP | CRL and OCSP checks to the issuing certificate authorities. |
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
| *.tlu.dl.delivery.mp.microsoft.com\* | HTTP | Enables connections to Windows Update. |
| *.windowsupdate.com\* | HTTP | Enables connections to Windows Update. |
| *geo-prod.do.dsp.mp.microsoft.com	| HTTPS |	Enables connections to Windows Update. |
| au.download.windowsupdate.com\* | HTTP | Enables connections to Windows Update. |
| cdn.onenote.net/livetile/*	| HTTPS |	Used for OneNote Live Tile. |
| client-office365-tas.msedge.net/*	| HTTPS |	Used to connect to the Microsoft 365 admin center’s shared infrastructure, including Office. |
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
| g.live.com/odclientsettings/*	| HTTPS |	Used by OneDrive for Business to download and verify app updates. |
| g.msn.com.nsatc.net	| HTTPS |	Used to retrieve Windows Spotlight metadata. |
| ipv4.login.msa.akadns6.net	| HTTPS |	Used for Microsoft accounts to sign in. |
| licensing.mp.microsoft.com/*	| HTTPS |	Used for online activation and some app licensing. |
| maps.windows.com/windows-app-web-link	| HTTPS |	Link to Maps application |
| modern.watson.data.microsoft.com.akadns.net	| HTTPS |	Used by Windows Error Reporting. |
| ocos-office365-s2s.msedge.net/*	| HTTPS |	Used to connect to the Microsoft 365 admin center's shared infrastructure. |
| ocsp.digicert.com\* |	HTTP | CRL and OCSP checks to the issuing certificate authorities. |
| oneclient.sfx.ms/*	| HTTPS |	Used by OneDrive for Business to download and verify app updates. |
| settings-win.data.microsoft.com/settings/*	| HTTPS |	Used as a way for apps to dynamically update their configuration. |
| sls.update.microsoft.com/*	| HTTPS |	Enables connections to Windows Update. |
| storecatalogrevocation.storequality.microsoft.com/*	| HTTPS |	Used to revoke licenses for malicious apps on the Microsoft Store. |
| tile-service.weather.microsoft.com/* | HTTP | Used to download updates to the Weather app Live Tile. |
| tsfe.trafficshaping.dsp.mp.microsoft.com	| HTTPS |	Used for content regulation. |
| vip5.afdorigin-prod-ch02.afdogw.com	| HTTPS |	Used to serve office 365 experimentation traffic. |
| watson.telemetry.microsoft.com/Telemetry.Request	| HTTPS |	Used by Windows Error Reporting. |
| bing.com/*	| HTTPS |	Used for updates for Cortana, apps, and Live Tiles. |
