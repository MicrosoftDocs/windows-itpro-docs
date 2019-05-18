---
title: Windows 10, version 1903, connection endpoints for non-Enterprise editions
description: Explains what Windows 10 endpoints are used in non-Enterprise editions.
keywords: privacy, manage connections to Microsoft, Windows 10, Windows Server 2016
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: high
audience: ITPro
author: mikeedgar
ms.author: v-medgar
manager: sanashar
ms.collection: M365-security-compliance
ms.topic: article
ms.date: 5/9/2019
---
# Windows 10, version 1903, connection endpoints for non-Enterprise editions

 **Applies to**

- Windows 10 Home, version 1903
- Windows 10 Professional, version 1903
- Windows 10 Education, version 1903

In addition to the endpoints listed for [Windows 10 Enterprise](manage-windows-1903-endpoints.md), the following endpoints are available on other non-Enterprise editions of Windows 10, version 1903.

The following methodology was used to derive the network endpoints:

1.	Set up the latest version of Windows 10 on a test virtual machine using the default settings. 
2.	Leave the device(s) running idle for a week ("idle" means a user is not interacting with the system/device).
3.	Use globally accepted network protocol analyzer/capturing tools and log all background egress traffic.  
4.	Compile reports on traffic going to public IP addresses.
5.  The test virtual machine(s) was logged into using a local account, and was not joined to a domain or Azure Active Directory.
6.  All traffic was captured in our lab using a IPV4 network.  Therefore, no IPV6 traffic is reported here. 
7.  These tests were conducted in an approved Microsoft lab.  It's possible your results may be different.
8.  These tests were conducted for one week, but if you capture traffic for longer you may have different results.


> [!NOTE]
> Microsoft uses global load balancers that can appear in network trace-routes. For example, an endpoint for *.akadns.net might be used to load balance requests to an Azure datacenter, which can change over time.

## Windows 10 Family

| **Destination** | **Protocol** | **Description** |
| --- | --- | --- |
|\*.aria.microsoft.com*|HTTPS|Microsoft Office Telemetry
|\*.b.akamai*.net|HTTPS|Used to check for updates to Maps that have been downloaded for offline use
|\*.c-msedge.net|HTTP|Microsoft Office 
|\*.dl.delivery.mp.microsoft.com*|HTTP|Enables connections to Windows Update
|\*.download.windowsupdate.com*|HTTP|Used to download operating system patches and updates
|\*.g.akamai*.net|HTTPS|Used to check for updates to Maps that have been downloaded for offline use
|\*.login.msa.*.net|HTTPS|Microsoft Account related
|\*.msn.com*|TLSv1.2/HTTPS|Windows Spotlight 
|\*.skype.com|HTTP/HTTPS|Skype 
|\*.smartscreen.microsoft.com*|HTTPS|Windows Defender Smartscreen 
|\*.telecommand.telemetry.microsoft.com*|HTTPS|Used by Windows Error Reporting
|*cdn.onenote.net*|HTTP|OneNote 
|*displaycatalog.*mp.microsoft.com*|HTTPS|Used to communicate with Microsoft Store 
|*emdl.ws.microsoft.com*|HTTP|Windows Update 
|*geo-prod.do.dsp.mp.microsoft.com*|TLSv1.2/HTTPS|Enables connections to Windows Update 
|*hwcdn.net*|HTTP|Highwinds Content Delivery Network / Windows updates 
|*img-prod-cms-rt-microsoft-com*|HTTPS|Microsoft Store or Inbox MSN Apps image download 
|*licensing.*mp.microsoft.com*|HTTPS|Licensing 
|*maps.windows.com*|HTTPS|Related to Maps application 
|*msedge.net*|HTTPS|Used by Microsoft OfficeHub to get the metadata of Microsoft Office apps 
|*nexusrules.officeapps.live.com*|HTTPS|Microsoft Office Telemetry
|*photos.microsoft.com*|HTTPS|Photos App 
|*prod.do.dsp.mp.microsoft.com*|TLSv1.2/HTTPS|Used for Windows Update downloads of apps and OS updates 
|*purchase.md.mp.microsoft.com.akadns.net|HTTPS|Used to communicate with Microsoft Store 
|*settings.data.microsoft.com.akadns.net|HTTPS|Used for Windows apps to dynamically update their configuration
|*wac.phicdn.net*|HTTP|Windows Update 
|*windowsupdate.com*|HTTP|Windows Update 
|*wns.*windows.com*|TLSv1.2/HTTPS|Used for the Windows Push Notification Services (WNS)
|*wpc.v0cdn.net*|HTTP|Windows Telemetry 
|arc.msn.com|HTTPS|Spotlight  
|auth.gfx.ms*|HTTPS|MSA related
|cdn.onenote.net|HTTPS|OneNote Live Tile
|dmd.metaservices.microsoft.com*|HTTP|Device Authentication 
|e-0009.e-msedge.net|HTTPS|Microsoft Office 
|e10198.b.akamaiedge.net|HTTPS|Maps application 
|evoke-windowsservices-tas.msedge*|HTTPS|Photos app 
|fe2.update.microsoft.com*|TLSv1.2/HTTPS|Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store
|fe3.*.mp.microsoft.com.*|TLSv1.2/HTTPS|Windows Update, Microsoft Update, and Microsoft Store services 
|g.live.com*|HTTPS|OneDrive 
|go.microsoft.com|HTTP|Windows Defender
|iriscoremetadataprod.blob.core.windows.net|HTTPS|Windows Telemetry
|login.live.com|HTTPS|Device Authentication  
|msagfx.live.com|HTTP|OneDrive 
|ocsp.digicert.com*|HTTP|CRL and OCSP checks to the issuing certificate authorities
|officeclient.microsoft.com|HTTPS|Microsoft Office 
|oneclient.sfx.ms*|HTTPS|Used by OneDrive for Business to download and verify app updates
|onecollector.cloudapp.aria.akadns.net|HTTPS|Microsoft Office
|ow1.res.office365.com|HTTP|Microsoft Office
|pti.store.microsoft.com|HTTPS|Microsoft Store
|purchase.mp.microsoft.com*|HTTPS|Used to communicate with Microsoft Store
|query.prod.cms.rt.microsoft.com*|HTTPS|Used to retrieve Windows Spotlight metadata
|ris.api.iris.microsoft.com*|TLSv1.2/HTTPS|Used to retrieve Windows Spotlight metadata
|ris-prod-atm.trafficmanager.net|HTTPS|Azure traffic manager
|s-0001.s-msedge.net|HTTPS|Microsoft Office
|self.events.data.microsoft.com|HTTPS|Microsoft Office
|settings.data.microsoft.com*|HTTPS|Used for Windows apps to dynamically update their configuration
|settings-win.data.microsoft.com*|HTTPS|Used for Windows apps to dynamically update their configuration
|share.microsoft.com|HTTPS|Microsoft Store
|skypeecs-prod-usw-0.cloudapp.net|HTTPS|Microsoft Store
|sls.update.microsoft.com*|TLSv1.2/HTTPS|Enables connections to Windows Update
|slscr.update.microsoft.com*|HTTPS|Enables connections to Windows Update
|store*.dsx.mp.microsoft.com*|HTTPS|Used to communicate with Microsoft Store
|storecatalogrevocation.storequality.microsoft.com|HTTPS|Microsoft Store
|storecatalogrevocation.storequality.microsoft.com*|HTTPS|Used to revoke licenses for malicious apps on the Microsoft Store
|store-images.*microsoft.com*|HTTP|Used to get images that are used for Microsoft Store suggestions
|storesdk.dsx.mp.microsoft.com|HTTP|Microsoft Store
|tile-service.weather.microsoft.com*|HTTP|Used to download updates to the Weather app Live Tile
|time.windows.com|HTTP|Microsoft Windows Time related
|tsfe.trafficshaping.dsp.mp.microsoft.com*|TLSv1.2/HTTPS|Used for content regulation
|v10.events.data.microsoft.com|HTTPS|Diagnostic Data
|watson.telemetry.microsoft.com|HTTPS|Diagnostic Data
|wdcp.microsoft.*|TLSv1.2, HTTPS|Used for Windows Defender when Cloud-based Protection is enabled
|wd-prod-cp-us-west-1-fe.westus.cloudapp.azure.com|HTTPS|Windows Defender 
|wusofficehome.msocdn.com|HTTPS|Microsoft Office
|www.bing.com*|HTTP|Used for updates for Cortana, apps, and Live Tiles
|www.msftconnecttest.com|HTTP|Network Connection (NCSI)
|www.office.com|HTTPS|Microsoft Office


## Windows 10 Pro

| **Destination** | **Protocol** | **Description** |
| --- | --- | --- |
|\*.cloudapp.azure.com|HTTPS|Azure 
|\*.delivery.dsp.mp.microsoft.com.nsatc.net|HTTPS|Windows Update, Microsoft Update, and Microsoft Store services 
|\*.displaycatalog.md.mp.microsoft.com.akadns.net|HTTPS|Microsoft Store 
|\*.dl.delivery.mp.microsoft.com*|HTTP|Enables connections to Windows Update
|\*.e-msedge.net|HTTPS|Used by OfficeHub to get the metadata of Office apps
|\*.g.akamaiedge.net|HTTPS|Used to check for updates to maps that have been downloaded for offline use
|\*.s-msedge.net|HTTPS|Used by OfficeHub to get the metadata of Office apps
|\*.windowsupdate.com*|HTTP|Enables connections to Windows Update
|\*.wns.notify.windows.com.akadns.net|HTTPS|Used for the Windows Push Notification Services (WNS)
|\*dsp.mp.microsoft.com.nsatc.net|HTTPS|Enables connections to Windows Update
|\*c-msedge.net|HTTP|Office
|a1158.g.akamai.net|HTTP|Maps application 
|arc.msn.com*|HTTP / HTTPS|Used to retrieve Windows Spotlight metadata
|blob.mwh01prdstr06a.store.core.windows.net|HTTPS|Microsoft Store 
|browser.pipe.aria.microsoft.com|HTTPS|Microsoft Office 
|bubblewitch3mobile.king.com|HTTPS|Bubble Witch application 
|candycrush.king.com|HTTPS|Candy Crush application 
|cdn.onenote.net|HTTP|Microsoft OneNote 
|cds.p9u4n2q3.hwcdn.net|HTTP|Highwinds Content Delivery Network traffic for Windows updates
|client.wns.windows.com|HTTPS|Winddows Notification System 
|co4.telecommand.telemetry.microsoft.com.akadns.net|HTTPS|Windows Error Reporting 
|config.edge.skype.com|HTTPS|Microsoft Skype 
|cs11.wpc.v0cdn.net|HTTP|Windows Telemetry 
|cs9.wac.phicdn.net|HTTP|Windows Update 
|cy2.licensing.md.mp.microsoft.com.akadns.net|HTTPS|Used to communicate with Microsoft Store
|cy2.purchase.md.mp.microsoft.com.akadns.net|HTTPS|Used to communicate with Microsoft Store
|cy2.settings.data.microsoft.com.akadns.net|HTTPS|Used to communicate with Microsoft Store
|dmd.metaservices.microsoft.com.akadns.net|HTTP|Device Authentication 
|e-0009.e-msedge.net|HTTPS|Microsoft Office 
|e10198.b.akamaiedge.net|HTTPS|Maps application 
|fe3.update.microsoft.com|HTTPS|Windows Update 
|g.live.com|HTTPS|Microsoft OneDrive 
|g.msn.com.nsatc.net|HTTPS|Used to retrieve Windows Spotlight metadata
|geo-prod.do.dsp.mp.microsoft.com|HTTPS|Windows Update 
|go.microsoft.com|HTTP|Windows Defender 
|iecvlist.microsoft.com|HTTPS|Microsoft Edge 
|img-prod-cms-rt-microsoft-com.akamaized.net|HTTP / HTTPS|Microsoft Store 
|ipv4.login.msa.akadns6.net|HTTPS|Used for Microsoft accounts to sign in
|licensing.mp.microsoft.com|HTTP|Licensing 
|location-inference-westus.cloudapp.net|HTTPS|Used for location data
|login.live.com|HTTP|Device Authentication 
|maps.windows.com|HTTP|Maps application 
|modern.watson.data.microsoft.com.akadns.net|HTTPS|Used by Windows Error Reporting
|msagfx.live.com|HTTP|OneDrive 
|nav.smartscreen.microsoft.com|HTTPS|Windows Defender 
|ocsp.digicert.com*|HTTP|CRL and OCSP checks to the issuing certificate authorities
|oneclient.sfx.ms|HTTP|OneDrive 
|pti.store.microsoft.com|HTTPS|Microsoft Store 
|ris.api.iris.microsoft.com.akadns.net|HTTPS|Used to retrieve Windows Spotlight metadata
|ris-prod-atm.trafficmanager.net|HTTPS|Azure 
|s2s.config.skype.com|HTTP|Microsoft Skype 
|settings-win.data.microsoft.com|HTTPS|Application settings 
|share.microsoft.com|HTTPS|Microsoft Store 
|skypeecs-prod-usw-0.cloudapp.net|HTTPS|Microsoft Skype 
|slscr.update.microsoft.com|HTTPS|Windows Update 
|storecatalogrevocation.storequality.microsoft.com|HTTPS|Microsoft Store 
|store-images.microsoft.com|HTTPS|Microsoft Store 
|tile-service.weather.microsoft.com/*|HTTP|Used to download updates to the Weather app Live Tile
|time.windows.com|HTTP|Windows time 
|tsfe.trafficshaping.dsp.mp.microsoft.com|HTTPS|Used for content regulation
|v10.events.data.microsoft.com*|HTTPS|Microsoft Office 
|vip5.afdorigin-prod-am02.afdogw.com|HTTPS|Used to serve office 365 experimentation traffic
|watson.telemetry.microsoft.com|HTTPS|Telemetry 
|wdcp.microsoft.com|HTTPS|Windows Defender 
|wusofficehome.msocdn.com|HTTPS|Microsoft Office 
|www.bing.com|HTTPS|Cortana and Search 
|www.microsoft.com|HTTP|Diagnostic 
|www.msftconnecttest.com|HTTP|Network connection 
|www.office.com|HTTPS|Microsoft Office



## Windows 10 Education

| **Destination** | **Protocol** | **Description** |
| --- | --- | --- |
|\*.b.akamaiedge.net|HTTPS|Used to check for updates to maps that have been downloaded for offline use
|\*.c-msedge.net|HTTP|Used by OfficeHub to get the metadata of Office apps
|\*.dl.delivery.mp.microsoft.com*|HTTP|Windows Update
|\*.e-msedge.net|HTTPS|Used by OfficeHub to get the metadata of Office apps
|\*.g.akamaiedge.net|HTTPS|Used to check for updates to Maps that have been downloaded for offline use
|\*.licensing.md.mp.microsoft.com.akadns.net|HTTPS|Microsoft Store
|\*.settings.data.microsoft.com.akadns.net|HTTPS|Microsoft Store
|\*.skype.com*|HTTPS|Used to retrieve Skype configuration values 
|\*.smartscreen*.microsoft.com|HTTPS|Windows Defender 
|\*.s-msedge.net|HTTPS|Used by OfficeHub to get the metadata of Office apps
|\*.telecommand.telemetry.microsoft.com*|HTTPS|Used by Windows Error Reporting
|\*.wac.phicdn.net|HTTP|Windows Update 
|\*.windowsupdate.com*|HTTP|Windows Update
|\*.wns.windows.com|HTTPS|Windows Notifications Service 
|\*.wpc.*.net|HTTP|Diagnostic Data
|\*displaycatalog.md.mp.microsoft.com.akadns.net|HTTPS|Microsoft Store
|\*dsp.mp.microsoft.com|HTTPS|Windows Update
|a1158.g.akamai.net|HTTP|Maps 
|a122.dscg3.akamai.net|HTTP|Maps 
|a767.dscg3.akamai.net|HTTP|Maps 
|au.download.windowsupdate.com*|HTTP|Windows Update
|bing.com/*|HTTPS|Used for updates for Cortana, apps, and Live Tiles
|blob.dz5prdstr01a.store.core.windows.net|HTTPS|Microsoft Store 
|browser.pipe.aria.microsoft.com|HTTP|Used by OfficeHub to get the metadata of Office apps
|cdn.onenote.net/livetile/*|HTTPS|Used for OneNote Live Tile
|cds.p9u4n2q3.hwcdn.net|HTTP|Used by the Highwinds Content Delivery Network to perform Windows updates
|client-office365-tas.msedge.net/*|HTTPS|Office 365 porta and Office Online
|ctldl.windowsupdate.com*|HTTP|Used to download certificates that are publicly known to be fraudulent
|displaycatalog.mp.microsoft.com/*|HTTPS|Microsoft Store
|dmd.metaservices.microsoft.com*|HTTP|Device Authentication
|download.windowsupdate.com*|HTTPS|Windows Update
|emdl.ws.microsoft.com/*|HTTP|Used to download apps from the Microsoft Store
|evoke-windowsservices-tas.msedge.net|HTTPS|Photo app 
|fe2.update.microsoft.com*|HTTPS|Windows Update, Microsoft Update, Microsoft Store services 
|fe3.delivery.dsp.mp.microsoft.com.nsatc.net|HTTPS|Windows Update, Microsoft Update, Microsoft Store services 
|fe3.delivery.mp.microsoft.com*|HTTPS|Windows Update, Microsoft Update, Microsoft Store services 
|g.live.com*|HTTPS|Used by OneDrive for Business to download and verify app updates
|g.msn.com.nsatc.net|HTTPS|Used to retrieve Windows Spotlight metadata
|go.microsoft.com|HTTP|Windows Defender 
|iecvlist.microsoft.com|HTTPS|Microsoft Edge browser 
|ipv4.login.msa.akadns6.net|HTTPS|Used for Microsoft accounts to sign in
|licensing.mp.microsoft.com*|HTTPS|Used for online activation and some app licensing
|login.live.com|HTTPS|Device Authentication
|maps.windows.com/windows-app-web-link|HTTPS|Maps application
|modern.watson.data.microsoft.com.akadns.net|HTTPS|Used by Windows Error Reporting
|msagfx.live.com|HTTPS|OneDrive 
|ocos-office365-s2s.msedge.net/*|HTTPS|Used to connect to the Office 365 portal's shared infrastructure
|ocsp.digicert.com*|HTTP|CRL and OCSP checks to the issuing certificate authorities
|oneclient.sfx.ms/*|HTTPS|Used by OneDrive for Business to download and verify app updates
|onecollector.cloudapp.aria.akadns.net|HTTPS|Microsoft Office 
|pti.store.microsoft.com|HTTPS|Microsoft Store 
|settings-win.data.microsoft.com/settings/*|HTTPS|Used as a way for apps to dynamically update their configuration 
|share.microsoft.com|HTTPS|Microsoft Store 
|skypeecs-prod-usw-0.cloudapp.net|HTTPS|Skype 
|sls.update.microsoft.com*|HTTPS|Windows Update
|storecatalogrevocation.storequality.microsoft.com*|HTTPS|Used to revoke licenses for malicious apps on the Microsoft Store
|tile-service.weather.microsoft.com*|HTTP|Used to download updates to the Weather app Live Tile
|tsfe.trafficshaping.dsp.mp.microsoft.com|HTTPS|Windows Update 
|v10.events.data.microsoft.com*|HTTPS|Diagnostic Data
|vip5.afdorigin-prod-ch02.afdogw.com|HTTPS|Used to serve Office 365 experimentation traffic
|watson.telemetry.microsoft.com*|HTTPS|Used by Windows Error Reporting
|wdcp.microsoft.com|HTTPS|Windows Defender 
|wd-prod-cp-us-east-1-fe.eastus.cloudapp.azure.com|HTTPS|Azure 
|wusofficehome.msocdn.com|HTTPS|Microsoft Office 
|www.bing.com|HTTPS|Cortana and Search 
|www.microsoft.com|HTTP|Diagnostic Data
|www.microsoft.com/pkiops/certs/*|HTTP|CRL and OCSP checks to the issuing certificate authorities
|www.msftconnecttest.com|HTTP|Network Connection 
|www.office.com|HTTPS|Microsoft Office

