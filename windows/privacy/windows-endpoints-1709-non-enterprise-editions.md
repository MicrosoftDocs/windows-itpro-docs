---
title: Windows 10, version 1709, connection endpoints for non-Enterprise editions
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
ms.reviewer: 
---
# Windows 10, version 1709, connection endpoints for non-Enterprise editions

 **Applies to**

- Windows 10 Home, version 1709
- Windows 10 Professional, version 1709
- Windows 10 Education, version 1709

In addition to the endpoints listed for [Windows 10 Enterprise](manage-windows-endpoints.md), the following endpoints are available on other editions of Windows 10, version 1709.

We used the following methodology to derive these network endpoints:

1.	Set up the latest version of Windows 10 on a test virtual machine using the default settings.
2.	Leave the devices running idle for a week (that is, a user is not interacting with the system/device).
3.	Use globally accepted network protocol analyzer/capturing tools and log all background egress traffic.
4.	Compile reports on traffic going to public IP addresses.
5.  The test virtual machine was logged in using a local account and was not joined to a domain or Azure Active Directory.
6.  All traffic was captured in our lab using a IPV4 network.  Therefore no IPV6 traffic is reported here. 

> [!NOTE]
> Microsoft uses global load balancers that can appear in network trace-routes. For example, an endpoint for *.akadns.net might be used to load balance requests to an Azure datacenter, which can change over time.

## Windows 10 Home

| **Destination** | **Protocol** | **Description** |
| --- | --- | --- |
| *.tlu.dl.delivery.mp.microsoft.com.c.footprint.net | HTTP | Enables connections to Windows Update. |
| *.wac.phicdn.net | HTTP | Used by the Verizon Content Delivery Network to perform Windows updates. |
| *.1.msftsrvcs.vo.llnwi.net | HTTP | Used for Windows Update downloads of apps and OS updates. |
| *.c-msedge.net | HTTP | Used by OfficeHub to get the metadata of Office apps. |
| *.delivery.dsp.mp.microsoft.com.nsatc.net | TLSv1.2 | Enables connections to Windows Update. |
| *.dscd.akamai.net | HTTP | Used to download content. |
| *.dspg.akamaiedge.net | HTTP | Used to check for updates to maps that have been downloaded for offline use. |
| *.hwcdn.net | HTTP | Used by the Highwinds Content Delivery Network to perform Windows updates. |
| *.m1-msedge.net | TLSv1.2 | Used by OfficeHub to get the metadata of Office apps. |
| *.search.msn.com | TLSv1.2 | Used to retrieve Windows Spotlight metadata. |
| *.wac.edgecastcdn.net | TLSv1.2 | Used by the Verizon Content Delivery Network to perform Windows updates. |
| *.wns.windows.com | TLSv1.2 | Used for the Windows Push Notification Services (WNS). |
| *prod.do.dsp.mp.microsoft.com | TLSv1.2\/HTTPS | Used for Windows Update downloads of apps and OS updates. |
| .g.akamaiedge.net | HTTP | Used to check for updates to maps that have been downloaded for offline use. |
| 2.dl.delivery.mp.microsoft.com | HTTP | Enables connections to Windows Update. |
| 2.tlu.dl.delivery.mp.microsoft.com | HTTP | Enables connections to Windows Update. |
| arc.msn.com | HTTPS | Used to retrieve Windows Spotlight metadata. |
| arc.msn.com.nsatc.net | TLSv1.2 | Used to retrieve Windows Spotlight metadata. |
| a-ring.msedge.net | HTTPS | Used by OfficeHub to get the metadata of Office apps. |
| au.download.windowsupdate.com | HTTP | Used to download operating system patches and updates. |
| b-ring.msedge.net | HTTPS | Used by OfficeHub to get the metadata of Office apps. |
| candycrushsoda.king.com | TLSv1.2 | Used for Candy Crush Saga updates. |
| cdn.content.prod.cms.msn.com | HTTP | Used to retrieve Windows Spotlight metadata. |
| cdn.onenote.net | HTTP | Used for OneNote Live Tile. |
| client-office365-tas.msedge.net | HTTP | Used to connect to the Office 365 portal’s shared infrastructure, including Office. |
| config.edge.skype.com | HTTP | Used to retrieve Skype configuration values. |
| ctldl.windowsupdate.com | HTTP | Used to download certificates that are publicly known to be fraudulent. |
| cy2.displaycatalog.md.mp.microsoft.com.akadns.net | TLSv1.2 | Used to communicate with Microsoft Store. |
| cy2.licensing.md.mp.microsoft.com.akadns.net | TLSv1.2 | Used to communicate with Microsoft Store. |
| cy2.purchase.md.mp.microsoft.com.akadns.net | TLSv1.2 | Used to communicate with Microsoft Store. |
| cy2.settings.data.microsoft.com.akadns.net | TLSv1.2 | Used as a way for apps to dynamically update their configuration. |
| cy2.vortex.data.microsoft.com.akadns.net | TLSv1.2 | Used to retrieve Windows Insider Preview builds. |
| definitionupdates.microsoft.com | HTTPS | Used for Windows Defender definition updates. |
| displaycatalog.mp.microsoft.com | HTTPS | Used to communicate with Microsoft Store. |
| dl.delivery.mp.microsoft.com | HTTPS | Enables connections to Windows Update. |
| dual-a-0001.a-msedge.net | TLSv1.2 | Used by OfficeHub to get the metadata of Office apps. |
| fe2.update.microsoft.com | HTTPS | Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store. |
| fe2.update.microsoft.com.nsatc.net | TLSv1.2 | Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store. |
| fe3.delivery.dsp.mp.microsoft.com.nsatc.net | TLSv1.2\/HTTPS | Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store. |
| fg.download.windowsupdate.com.c.footprint.net | HTTP | Used to download operating system patches and updates. |
| fp.msedge.net | HTTPS | Used by OfficeHub to get the metadata of Office apps. |
| g.live.com/1rewlive5skydrive/ | HTTPS | Used by a redirection service to automatically update URLs. |
| g.msn.com.nsatc.net | HTTP | Used to retrieve Windows Spotlight metadata. |
| geo-prod.do.dsp.mp.microsoft.com.nsatc.net | TLSv1.2 | Enables connections to Windows Update. |
| go.microsoft.com | HTTPS | Used by a redirection service to automatically update URLs. |
| img-prod-cms-rt-microsoft-com.akamaized.net | HTTPS | Used to download image files that are called when applications run (Microsoft Store or Inbox MSN Apps). |
| *.login.msa.akadns6.net | TLSv1.2 | Used for Microsoft accounts to sign in. |
| licensing.mp.microsoft.com | HTTPS | Used for online activation and some app licensing. |
| location-inference-westus.cloudapp.net | TLSv1.2 | Used for location data. |
| login.live.com | HTTPS | Used to authenticate a device. |
| mediaredirect.microsoft.com | HTTPS | Used by the Groove Music app to update HTTP handler status. |
| modern.watson.data.microsoft.com.akadns.net | TLSv1.2 | Used by Windows Error Reporting. |
| msftsrvcs.vo.llnwd.net | HTTP | Enables connections to Windows Update. |
| msnbot-*.search.msn.com | TLSv1.2 | Used to retrieve Windows Spotlight metadata. |
| oem.twimg.com | HTTPS | Used for the Twitter Live Tile. |
| oneclient.sfx.ms | HTTPS | Used by OneDrive for Business to download and verify app updates. |
| peer4-wst.msedge.net | HTTPS | Used by OfficeHub to get the metadata of Office apps. |
| pti.store.microsoft.com | HTTPS | Used to communicate with Microsoft Store. |
| pti.store.microsoft.com.unistore.akadns.net | TLSv1.2 | Used to communicate with Microsoft Store. |
| purchase.mp.microsoft.com | HTTPS | Used to communicate with Microsoft Store. |
| ris.api.iris.microsoft.com.akadns.net | TLSv1.2\/HTTPS | Used to retrieve Windows Spotlight metadata. |
| settings-win.data.microsoft.com | HTTPS | Used for Windows apps to dynamically update their configuration. |
| sls.update.microsoft.com.nsatc.net | TLSv1.2\/HTTPS | Enables connections to Windows Update. |
| star-mini.c10r.facebook.com | TLSv1.2 | Used for the Facebook Live Tile. |
| storecatalogrevocation.storequality.microsoft.com | HTTPS | Used to revoke licenses for malicious apps on the Microsoft Store. |
| storeedgefd.dsx.mp.microsoft.com | HTTPS | Used to communicate with Microsoft Store. |
| store-images.s-microsoft.com | HTTP | Used to get images that are used for Microsoft Store suggestions. |
| tile-service.weather.microsoft.com | HTTP | Used to download updates to the Weather app Live Tile. |
| tsfe.trafficshaping.dsp.mp.microsoft.com | TLSv1.2 | Used for content regulation. |
| v10.vortex-win.data.microsoft.com | HTTPS | Used to retrieve Windows Insider Preview builds. |
| wallet.microsoft.com | HTTPS | Used by the Microsoft Wallet app. |
| wallet-frontend-prod-westus.cloudapp.net | TLSv1.2 | Used by the Microsoft Wallet app. |
| *.telemetry.microsoft.com | HTTPS | Used by Windows Error Reporting. |
| ceuswatcab01.blob.core.windows.net | HTTPS | Used by Windows Error Reporting. |
| ceuswatcab02.blob.core.windows.net | HTTPS | Used by Windows Error Reporting. |
| eaus2watcab01.blob.core.windows.net | HTTPS | Used by Windows Error Reporting. |
| eaus2watcab02.blob.core.windows.net | HTTPS | Used by Windows Error Reporting. |
| weus2watcab01.blob.core.windows.net | HTTPS | Used by Windows Error Reporting. |
| weus2watcab02.blob.core.windows.net | HTTPS | Used by Windows Error Reporting. |
| wdcp.microsoft.akadns.net | TLSv1.2 | Used for Windows Defender when Cloud-based Protection is enabled. |
| wildcard.twimg.com | TLSv1.2 | Used for the Twitter Live Tile. |
| www.bing.com | HTTP | Used for updates for Cortana, apps, and Live Tiles. |
| www.facebook.com | HTTPS | Used for the Facebook Live Tile. |
| [www.microsoft.com](https://www.microsoft.com/) | HTTPS | Used for updates for Cortana, apps, and Live Tiles. |

## Windows 10 Pro

| **Destination** | **Protocol** | **Description** |
| --- | --- | --- |
| *.*.akamai.net | HTTP | Used to download content. |
| *.*.akamaiedge.net | TLSv1.2\/HTTP | Used to check for updates to maps that have been downloaded for offline use. |
| *.a-msedge.net | TLSv1.2 | Used by OfficeHub to get the metadata of Office apps. |
| *.blob.core.windows.net | HTTPS | Used by Windows Update to update words used for language input methods. |
| *.c-msedge.net | HTTP | Used by OfficeHub to get the metadata of Office apps. |
| *.dl.delivery.mp.microsoft.com | HTTP | Enables connections to Windows Update. |
| *.dspb.akamaiedge.net | TLSv1.2 | Used to check for updates to maps that have been downloaded for offline use. |
| *.dspg.akamaiedge.net | TLSv1.2 | Used to check for updates to maps that have been downloaded for offline use. |
| *.e-msedge.net | TLSv1.2 | Used by OfficeHub to get the metadata of Office apps. |
| *.login.msa.akadns6.net | TLSv1.2 | Used for Microsoft accounts to sign in. |
| *.s-msedge.net | TLSv1.2 | Used by OfficeHub to get the metadata of Office apps. |
| *.telecommand.telemetry.microsoft.com.akadns.net | TLSv1.2 | Used by Windows Error Reporting. |
| *.wac.edgecastcdn.net | TLSv1.2 | Used by the Verizon Content Delivery Network to perform Windows updates. |
| *.wac.phicdn.net | HTTP | Used by the Verizon Content Delivery Network to perform Windows updates. |
| *.wns.windows.com | TLSv1.2 | Used for the Windows Push Notification Services (WNS). |
| *prod.do.dsp.mp.microsoft.com | TLSv1.2\/HTTPS | Used for Windows Update downloads of apps and OS updates. |
| 3.dl.delivery.mp.microsoft.com | HTTPS | Enables connections to Windows Update. |
| 3.dl.delivery.mp.microsoft.com.c.footprint.net | HTTP | Enables connections to Windows Update. |
| 3.tlu.dl.delivery.mp.microsoft.com | HTTP | Enables connections to Windows Update. |
| 3.tlu.dl.delivery.mp.microsoft.com.c.footprint.net | HTTP | Enables connections to Windows Update. |
| arc.msn.com | HTTPS | Used to retrieve Windows Spotlight metadata. |
| arc.msn.com.nsatc.net | TLSv1.3 | Used to retrieve Windows Spotlight metadata. |
| au.download.windowsupdate.com | HTTPS | Used to download operating system patches and updates. |
| b-ring.msedge.net | HTTPS | Used by OfficeHub to get the metadata of Office apps. |
| candycrushsoda.king.com | HTTPS | Used for Candy Crush Saga updates. |
| cdn.content.prod.cms.msn.com | HTTP | Used to retrieve Windows Spotlight metadata. |
| cdn.onenote.net | HTTPS | Used for OneNote Live Tile. |
| client-office365-tas.msedge.net | HTTPS | Used to connect to the Office 365 portal’s shared infrastructure, including Office. |
| config.edge.skype.com | HTTPS | Used to retrieve Skype configuration values. |
| ctldl.windowsupdate.com | HTTP | Used to download certificates that are publicly known to be fraudulent. |
| cs12.<span class="anchor" id="_Hlk500262422"></span>wpc.v0cdn.net | HTTP | Used by the Verizon Content Delivery Network to download content for Windows upgrades with Wireless Planning and Coordination (WPC). |
| cy2.displaycatalog.md.mp.microsoft.com.akadns.net | TLSv1.2 | Used to communicate with Microsoft Store. |
| cy2.settings.data.microsoft.com.akadns.net | TLSv1.2 | Used as a way for apps to dynamically update their configuration. |
| cy2.vortex.data.microsoft.com.akadns.net | TLSv1.2 | Used to retrieve Windows Insider Preview builds. |
| definitionupdates.microsoft.com | HTTPS | Used for Windows Defender definition updates. |
| displaycatalog.mp.microsoft.com | HTTPS | Used to communicate with Microsoft Store. |
| download.windowsupdate.com | HTTP | Enables connections to Windows Update. |
| evoke-windowsservices-tas.msedge.net | HTTPS | Used by the Photos app to download configuration files, and to connect to the Office 365 portal’s shared infrastructure, including Office. |
| fe2.update.microsoft.com | HTTPS | Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store. |
| fe2.update.microsoft.com.nsatc.net | TLSv1.2 | Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store. |
| fe3.delivery.dsp.mp.microsoft.com.nsatc.net | TLSv1.2\/HTTPS | Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store. |
| fe3.delivery.mp.microsoft.com | HTTPS | Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store. |
| fg.download.windowsupdate.com.c.footprint.net | HTTP | Used to download operating system patches and updates. |
| fp.msedge.net | HTTPS | Used by OfficeHub to get the metadata of Office apps. |
| fs.microsoft.com | HTTPS | Used to download fonts on demand |
| g.live.com | HTTP | Used by a redirection service to automatically update URLs. |
| g.msn.com | HTTPS | Used to retrieve Windows Spotlight metadata. |
| g.msn.com.nsatc.net | TLSv1.2 | Used to retrieve Windows Spotlight metadata. |
| geo-prod.do.dsp.mp.microsoft.com | HTTPS | Enables connections to Windows Update. |
| geover-prod.do.dsp.mp.microsoft.com | HTTPS | Enables connections to Windows Update. |
| go.microsoft.com | HTTPS | Used by a redirection service to automatically update URLs. |
| gpla1.wac.v2cdn.net | HTTP | Used for Baltimore CyberTrust Root traffic. . |
| img-prod-cms-rt-microsoft-com.akamaized.net | HTTPS | Used to download image files that are called when applications run (Microsoft Store or Inbox MSN Apps). |
| licensing.mp.microsoft.com | HTTPS | Used for online activation and some app licensing. |
| location-inference-westus.cloudapp.net | TLSv1.2 | Used for location data. |
| login.live.com | HTTPS | Used to authenticate a device. |
| l-ring.msedge.net | HTTPS | Used by OfficeHub to get the metadata of Office apps. |
| mediaredirect.microsoft.com | HTTPS | Used by the Groove Music app to update HTTP handler status. |
| modern.watson.data.microsoft.com.akadns.net | TLSv1.2 | Used by Windows Error Reporting. |
| msnbot-*.search.msn.com | TLSv1.2 | Used to retrieve Windows Spotlight metadata. |
| oem.twimg.com | HTTP | Used for the Twitter Live Tile. |
| oneclient.sfx.ms | HTTP | Used by OneDrive for Business to download and verify app updates. |
| peer1-wst.msedge.net | HTTP | Used by OfficeHub to get the metadata of Office apps. |
| pti.store.microsoft.com | HTTPS | Used to communicate with Microsoft Store. |
| pti.store.microsoft.com.unistore.akadns.net | HTTPS | Used to communicate with Microsoft Store. |
| purchase.mp.microsoft.com | HTTPS | Used to communicate with Microsoft Store. |
| ris.api.iris.microsoft.com | HTTPS | Used to retrieve Windows Spotlight metadata. |
| settings-win.data.microsoft.com | HTTPS | Used for Windows apps to dynamically update their configuration. |
| sls.update.microsoft.com | HTTPS | Enables connections to Windows Update. |
| storecatalogrevocation.storequality.microsoft.com | HTTPS | Used to revoke licenses for malicious apps on the Microsoft Store. |
| storeedgefd.dsx.mp.microsoft.com | HTTPS | Used to communicate with Microsoft Store. |
| store-images.s-microsoft.com | HTTPS | Used to get images that are used for Microsoft Store suggestions. |
| store-images.s-microsoft.com | HTTPS | Used to get images that are used for Microsoft Store suggestions. |
| *.telemetry.microsoft.com | HTTPS | Used by Windows Error Reporting. |
| ceuswatcab01.blob.core.windows.net | HTTPS | Used by Windows Error Reporting. |
| ceuswatcab02.blob.core.windows.net | HTTPS | Used by Windows Error Reporting. |
| eaus2watcab01.blob.core.windows.net | HTTPS | Used by Windows Error Reporting. |
| eaus2watcab02.blob.core.windows.net | HTTPS | Used by Windows Error Reporting. |
| weus2watcab01.blob.core.windows.net | HTTPS | Used by Windows Error Reporting. |
| weus2watcab02.blob.core.windows.net | HTTPS | Used by Windows Error Reporting. |
| tile-service.weather.microsoft.com | HTTP | Used to download updates to the Weather app Live Tile. |
| tsfe.trafficshaping.dsp.mp.microsoft.com | HTTPS | Used for content regulation. |
| v10.vortex-win.data.microsoft.com | HTTPS | Used to retrieve Windows Insider Preview builds. |
| wallet.microsoft.com | HTTPS | Used by the Microsoft Wallet app. |
| wdcp.microsoft.akadns.net | HTTPS | Used for Windows Defender when Cloud-based Protection is enabled. |
| wildcard.twimg.com | TLSv1.2 | Used for the Twitter Live Tile. |
| www.bing.com | TLSv1.2 | Used for updates for Cortana, apps, and Live Tiles. |
| www.facebook.com | HTTPS | Used for the Facebook Live Tile. |
| [www.microsoft.com](https://www.microsoft.com/) | HTTPS | Used for updates for Cortana, apps, and Live Tiles. |

## Windows 10 Education

| **Destination** | **Protocol** | **Description** |
| --- | --- | --- |
| *.a-msedge.net | TLSv1.2 | Used by OfficeHub to get the metadata of Office apps. |
| *.b.akamaiedge.net | TLSv1.2 | Used to check for updates to maps that have been downloaded for offline use. |
| *.c-msedge.net | HTTP | Used by OfficeHub to get the metadata of Office apps. |
| *.dscb1.akamaiedge.net | HTTP | Used to check for updates to maps that have been downloaded for offline use. |
| *.dscd.akamai.net | HTTP | Used to download content. |
| *.dspb.akamaiedge.net | TLSv1.2 | Used to check for updates to maps that have been downloaded for offline use. |
| *.dspw65.akamai.net | HTTP | Used to download content. |
| *.e-msedge.net | TLSv1.2 | Used by OfficeHub to get the metadata of Office apps. |
| *.g.akamai.net | HTTP | Used to download content. |
| *.g.akamaiedge.net | TLSv1.2 | Used to check for updates to maps that have been downloaded for offline use. |
| *.l.windowsupdate.com | HTTP | Enables connections to Windows Update. |
| *.s-msedge.net | TLSv1.2 | Used by OfficeHub to get the metadata of Office apps. |
| *.wac.phicdn.net | HTTP | Used by the Verizon Content Delivery Network to perform Windows updates |
| *.wns.windows.com | TLSv1.2 | Used for the Windows Push Notification Services (WNS). |
| *prod.do.dsp.mp.microsoft.com | TLSv1.2 | Used for Windows Update downloads of apps and OS updates. |
| *prod.do.dsp.mp.microsoft.com.nsatc.net | TLSv1.2 | Used for Windows Update downloads of apps and OS updates. |
| 3.dl.delivery.mp.microsoft.com.c.footprint.net | HTTP | Enables connections to Windows Update. |
| 3.tlu.dl.delivery.mp.microsoft.com.c.footprint.net | HTTP | Enables connections to Windows Update. |
| a-ring.msedge.net | HTTPS | Used by OfficeHub to get the metadata of Office apps. |
| au.download.windowsupdate.com | HTTP | Used to download operating system patches and updates. |
| cdn.onenote.net | HTTPS | Used for OneNote Live Tile. |
| cds.*.hwcdn.net | HTTP | Used by the Highwinds Content Delivery Network to perform Windows updates. |
| co4.telecommand.telemetry.microsoft.com.akadns.net | TLSv1.2 | Used by Windows Error Reporting. |
| config.edge.skype.com | HTTPS | Used to retrieve Skype configuration values. |
| ctldl.windowsupdate.com | HTTP | Used to download certificates that are publicly known to be fraudulent. |
| cs12.wpc.v0cdn.net | HTTP | Used by the Verizon Content Delivery Network to download content for Windows upgrades with Wireless Planning and Coordination (WPC). |
| cy2.displaycatalog.md.mp.microsoft.com.akadns.net | TLSv1.2 | Used to communicate with Microsoft Store. |
| cy2.settings.data.microsoft.com.akadns.net | TLSv1.2 | Used as a way for apps to dynamically update their configuration. |
| cy2.vortex.data.microsoft.com.akadns.net | TLSv1.2 | Used to retrieve Windows Insider Preview builds. |
| dl.delivery.mp.microsoft.com | HTTPS | Enables connections to Windows Update. |
| download.windowsupdate.com | HTTP | Enables connections to Windows Update. |
| evoke-windowsservices-tas.msedge.net/ab | HTTPS | Used by the Photos app to download configuration files, and to connect to the Office 365 portal’s shared infrastructure, including Office. |
| fe2.update.microsoft.com.nsatc.net | TLSv1.2 | Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store. |
| fe3.delivery.dsp.mp.microsoft.com.nsatc.net | TLSv1.2 | Enables connections to Windows Update. |
| fg.download.windowsupdate.com.c.footprint.net | HTTP | Used to download operating system patches and updates. |
| fp.msedge.net | HTTPS | Used by OfficeHub to get the metadata of Office apps. |
| g.msn.com.nsatc.net | TLSv1.2\/HTTP | Used to retrieve Windows Spotlight metadata. |
| geo-prod.do.dsp.mp.microsoft.com.nsatc.net | TLSv1.2 | Enables connections to Windows Update. |
| geover-prod.do.dsp.mp.microsoft.com | HTTPS | Enables connections to Windows Update. |
| go.microsoft.com | HTTPS | Used by a redirection service to automatically update URLs. |
| gpla1.wac.v2cdn.net | HTTP | Used for Baltimore CyberTrust Root traffic. . |
| ipv4.login.msa.akadns6.net | TLSv1.2 | Used for Microsoft accounts to sign in. |
| licensing.mp.microsoft.com | HTTPS | Used for online activation and some app licensing. |
| location-inference-westus.cloudapp.net | TLSv1.2 | Used for location data. |
| login.live.com/* | HTTPS | Used to authenticate a device. |
| l-ring.msedge.net | HTTPS | Used by OfficeHub to get the metadata of Office apps. |
| mediaredirect.microsoft.com | HTTPS | Used by the Groove Music app to update HTTP handler status. |
| modern.watson.data.microsoft.com.akadns.net | TLSv1.2 | Used by Windows Error Reporting. |
| msftconnecttest.com/* | HTTP | Used by Network Connection Status Indicator (NCSI) to detect Internet connectivity and corporate network connectivity status. |
| msnbot-65-52-108-198.search.msn.com | TLSv1.2 | Used to retrieve Windows Spotlight metadata. |
| oneclient.sfx.ms | HTTP | Used by OneDrive for Business to download and verify app updates. |
| peer1-wst.msedge.net | HTTPS | Used by OfficeHub to get the metadata of Office apps. |
| pti.store.microsoft.com.unistore.akadns.net | TLSv1.2 | Used to communicate with Microsoft Store. |
| settings-win.data.microsoft.com | HTTPS | Used for Windows apps to dynamically update their configuration. |
| sls.update.microsoft.com.nsatc.net | TLSv1.2 | Enables connections to Windows Update. |
| store-images.s-microsoft.com | HTTPS | Used to get images that are used for Microsoft Store suggestions. |
| tile-service.weather.microsoft.com | HTTP | Used to download updates to the Weather app Live Tile. |
| *.telemetry.microsoft.com | HTTPS | Used by Windows Error Reporting. |
| ceuswatcab01.blob.core.windows.net | HTTPS | Used by Windows Error Reporting. |
| ceuswatcab02.blob.core.windows.net | HTTPS | Used by Windows Error Reporting. |
| eaus2watcab01.blob.core.windows.net | HTTPS | Used by Windows Error Reporting. |
| eaus2watcab02.blob.core.windows.net | HTTPS | Used by Windows Error Reporting. |
| weus2watcab01.blob.core.windows.net | HTTPS | Used by Windows Error Reporting. |
| weus2watcab02.blob.core.windows.net | HTTPS | Used by Windows Error Reporting. |
| tsfe.trafficshaping.dsp.mp.microsoft.com | TLSv1.2 | Used for content regulation. |
| wallet.microsoft.com | HTTPS | Used by the Microsoft Wallet app. |

| wdcp.microsoft.akadns.net | TLSv1.2 | Used for Windows Defender when Cloud-based Protection is enabled. |
| www.bing.com | HTTPS | Used for updates for Cortana, apps, and Live Tiles. |
