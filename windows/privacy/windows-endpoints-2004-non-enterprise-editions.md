---
title: Windows 10, version 2004, connection endpoints for non-Enterprise editions
description: Explains what Windows 10 endpoints are used in non-Enterprise editions. Specific to Windows 10, version 2004.
keywords: privacy, manage connections to Microsoft, Windows 10, Windows Server 2016
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: high
audience: ITPro
author: linque1
ms.author: obezeajo
manager: robsize
ms.collection: M365-security-compliance
ms.topic: article
ms.date: 5/11/2020
---
# Windows 10, version 2004, connection endpoints for non-Enterprise editions

 **Applies to**

- Windows 10 Home, version 2004
- Windows 10 Professional, version 2004
- Windows 10 Education, version 2004

In addition to the endpoints listed for [Windows 10 Enterprise](manage-windows-2004-endpoints.md), the following endpoints are available on other non-Enterprise editions of Windows 10, version 2004.

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

| **Destination** | **Protocol** | **Description** |
| --- | --- | --- |
|*.delivery.mp.microsoft.com|HTTP|Used to download operating system patches, updates, and apps from Microsoft
|*.prod.do.dsp.mp.microsoft.com|TLSv1.2|Windows Update 
|*.smartscreen.microsoft.com|HTTPS|Windows Defender SmartScreen 
|*.smartscreen-prod.microsoft.com|HTTPS|Windows Defender SmartScreen 
|*.update.microsoft.com|TLSv1.2|Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store
|*.windowsupdate.com|HTTP|Used to download operating system patches and updates
|*dl.delivery.mp.microsoft.com|HTTP|Used to download operating system patches, updates, and apps from Microsoft 
|*storecatalogrevocation.storequality.microsoft.com|TLSv1.2|Used to revoke licenses for malicious apps on the Microsoft Store
|arc.msn.com|TLSv1.2|Windows Spotlight 
|cdn.onenote.net|HTTPS|OneNote
|config.edge.skype.com|HTTPS|Skype 
|config.teams.microsoft.com|HTTPS|Skype 
|crl.microsoft.com|HTTPS|Skype 
|ctldl.windowsupdate.com|HTTP|Certificate Trust List 
|da.xboxservices.com|HTTPS|Microsoft Edge  
|displaycatalog.mp.microsoft.com|HTTPS|Microsoft Store 
|dmd.metaservices.microsoft.com|HTTP|Device Authentication 
|evoke-windowsservices-tas.msedge.net|TLSv1.2|Photos app 
|fs.microsoft.com|TLSv1.2|Maps application
|g.live.com|TLSv1.2|OneDrive 
|go.microsoft.com|HTTPS|Windows Defender
|img-prod-cms-rt-microsoft-com|TLSv1.2|This endpoint is related to Microsoft Edge 
|licensing.mp.microsoft.com|HTTPS|Licensing 
|login.live.com|TLSv1.2|Device Authentication
|logincdn.msauth.net|TLSv1.2|Device Authentication
|manage.devcenter.microsoft.com|TLSv1.2|Microsoft Store analytics  
|maps.windows.com|TLSv1.2|Related to Maps application 
|ocsp.digicert.com|HTTPS|CRL and OCSP checks to the issuing certificate authorities
|oneclient.sfx.ms|HTTPS|Used by OneDrive for Business to download and verify app updates
|pipe.aria.microsoft.com|HTTPS|Used to retrieve Skype configuration values
|ris.api.iris.microsoft.com|TLSv1.2|Windows Telemetry
|settings-win.data.microsoft.com|TLSv1.2|Used for Windows apps to dynamically update their configuration
|storesdk.dsx.mp.microsoft.com|HTTPS|Used to communicate with Microsoft Store
|telecommand.telemetry.microsoft.com|TLSv1.2|Used by Windows Error Reporting
|tile-service.weather.microsoft.com|HTTPS|Used to download updates to the Weather app Live Tile
|tsfe.trafficshaping.dsp.mp.microsoft.com|TLSv1.2|Used for content regulation
|v10.events.data.microsoft.com|TLSv1.2|Diagnostic Data
|v20.events.data.microsoft.com|TLSv1.2|Diagnostic Data
|watson.telemetry.microsoft.com|HTTPS|Diagnostic Data
|wdcp.microsoft.com|TLSv1.2|Used for Windows Defender when Cloud-based Protection is enabled
|www.bing.com|TLSv1.2|Used for updates for Cortana, apps, and Live Tiles
|www.msftconnecttest.com|HTTP|Network Connection (NCSI)
|www.office.com|HTTPS|Microsoft Office


## Windows 10 Pro

| **Destination** | **Protocol** | **Description** |
| --- | --- | --- |
|*.delivery.mp.microsoft.com|HTTP|Used to download operating system patches, updates, and apps from Microsoft
|*.prod.do.dsp.mp.microsoft.com|TLSv1.2|Windows Update 
|*.smartscreen.microsoft.com|HTTPS|Windows Defender SmartScreen 
|*.smartscreen-prod.microsoft.com|HTTPS|Windows Defender SmartScreen 
|*.update.microsoft.com|TLSv1.2|Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store
|*.windowsupdate.com|HTTP|Used to download operating system patches and updates
|*.wns.windows.com|TLSv1.2|Used for the Windows Push Notification Services (WNS)
|*dl.delivery.mp.microsoft.com|HTTP|Used to download operating system patches, updates, and apps from Microsoft
|*msn-com.akamaized.net|HTTPS|This endpoint is related to Microsoft Edge
|*ring.msedge.net|HTTPS|Used by Microsoft OfficeHub to get the metadata of Microsoft Office apps 
|*storecatalogrevocation.storequality.microsoft.com|TLSv1.2|Used to revoke licenses for malicious apps on the Microsoft Store
|arc.msn.com|TLSv1.2|Windows Spotlight 
|blobs.officehome.msocdn.com|HTTPS|OneNote
|cdn.onenote.net|HTTPS|OneNote
|checkappexec.microsoft.com|HTTPS|OneNote
|config.edge.skype.com|HTTPS|Skype 
|config.teams.microsoft.com|HTTPS|Skype 
|crl.microsoft.com|HTTPS|Skype 
|ctldl.windowsupdate.com|HTTP|Certificate Trust List 
|d2i2wahzwrm1n5.cloudfront.net|HTTPS|Microsoft Edge
|da.xboxservices.com|HTTPS|Microsoft Edge  
|displaycatalog.mp.microsoft.com|HTTPS|Microsoft Store 
|dlassets-ssl.xboxlive.com|HTTPS|Xbox Live 
|dmd.metaservices.microsoft.com|HTTP|Device Authentication 
|emdl.ws.microsoft.com|HTTP|Windows Update 
|evoke-windowsservices-tas.msedge.net|TLSv1.2|Photos app 
|fp.msedge.net|HTTPS|Cortana and Live Tiles
|fs.microsoft.com|TLSv1.2|Maps application
|g.live.com|TLSv1.2|OneDrive 
|go.microsoft.com|HTTPS|Windows Defender
|img-prod-cms-rt-microsoft-com*|TLSv1.2|This endpoint is related to Microsoft Edge 
|licensing.mp.microsoft.com|HTTPS|Licensing 
|login.live.com|TLSv1.2|Device Authentication
|manage.devcenter.microsoft.com|TLSv1.2|Microsoft Store analytics  
|maps.windows.com|TLSv1.2|Related to Maps application 
|ocsp.digicert.com|HTTPS|CRL and OCSP checks to the issuing certificate authorities
|oneclient.sfx.ms|HTTPS|Used by OneDrive for Business to download and verify app updates
|pipe.aria.microsoft.com|HTTPS|Used to retrieve Skype configuration values
|ris.api.iris.microsoft.com|TLSv1.2|Windows Telemetry
|s1325.t.eloqua.com|HTTPS|Microsoft Edge
|self.events.data.microsoft.com|HTTPS|Microsoft Office
|settings-win.data.microsoft.com|TLSv1.2|Used for Windows apps to dynamically update their configuration
|store-images.*microsoft.com|HTTPS|Used to get images that are used for Microsoft Store suggestions
|storesdk.dsx.mp.microsoft.com|HTTPS|Microsoft Store
|telecommand.telemetry.microsoft.com|TLSv1.2|Used by Windows Error Reporting
|tile-service.weather.microsoft.com|HTTPS|Used to download updates to the Weather app Live Tile
|time.windows.com|HTTPS|Fetch the time
|tsfe.trafficshaping.dsp.mp.microsoft.com|HTTPS|The following endpoint is used for content regulation
|v10.events.data.microsoft.com|TLSv1.2|Diagnostic Data
|watson.telemetry.microsoft.com|HTTPS|Diagnostic Data
|wdcp.microsoft.com|TLSv1.2|Used for Windows Defender when Cloud-based Protection is enabled
|www.bing.com|TLSv1.2|Used for updates for Cortana, apps, and Live Tiles
|www.msftconnecttest.com|HTTP|Network Connection (NCSI)
|www.msn.com|HTTPS|Network Connection (NCSI)
|www.office.com|HTTPS|Microsoft Office


## Windows 10 Education

| **Destination** | **Protocol** | **Description** |
| --- | --- | --- |
|*.delivery.mp.microsoft.com|HTTP|Used to download operating system patches, updates, and apps from Microsoft
|*.prod.do.dsp.mp.microsoft.com|TLSv1.2|Windows Update 
|*.smartscreen.microsoft.com|HTTPS|Windows Defender SmartScreen 
|*.smartscreen-prod.microsoft.com|HTTPS|Windows Defender SmartScreen 
|*.update.microsoft.com|TLSv1.2|Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store
|*.windowsupdate.com|HTTP|Used to download operating system patches and updates
|*.wns.windows.com|TLSv1.2|Used for the Windows Push Notification Services (WNS)
|*dl.delivery.mp.microsoft.com|HTTP|Used to download operating system patches, updates, and apps from Microsoft
|*ring.msedge.net|HTTPS|Used by Microsoft OfficeHub to get the metadata of Microsoft Office apps 
|*storecatalogrevocation.storequality.microsoft.com|TLSv1.2|Used to revoke licenses for malicious apps on the Microsoft Store
|arc.msn.com|TLSv1.2|Windows Spotlight 
|blobs.officehome.msocdn.com|HTTPS|OneNote
|cdn.onenote.net|HTTPS|OneNote
|checkappexec.microsoft.com|HTTPS|OneNote
|config.edge.skype.com|HTTPS|Skype 
|config.teams.microsoft.com|HTTPS|Skype 
|crl.microsoft.com|HTTPS|Skype 
|ctldl.windowsupdate.com|HTTP|Certificate Trust List 
|da.xboxservices.com|HTTPS|Microsoft Edge  
|dmd.metaservices.microsoft.com|HTTP|Device Authentication 
|emdl.ws.microsoft.com|HTTP|Windows Update 
|evoke-windowsservices-tas.msedge.net|TLSv1.2|Photos app 
|fp.msedge.net|HTTPS|Cortana and Live Tiles
|fs.microsoft.com|TLSv1.2|Maps application
|g.live.com|TLSv1.2|OneDrive 
|go.microsoft.com|HTTPS|Windows Defender
|licensing.mp.microsoft.com|HTTPS|Licensing 
|login.live.com|TLSv1.2|Device Authentication
|logincdn.msauth.net|HTTPS|Device Authentication
|manage.devcenter.microsoft.com|TLSv1.2|Microsoft Store analytics  
|ocsp.digicert.com|HTTPS|CRL and OCSP checks to the issuing certificate authorities
|ocsp.msocsp.com|HTTPS|CRL and OCSP checks to the issuing certificate authorities
|ow1.res.office365.com|HTTPS|Microsoft Office
|pipe.aria.microsoft.com|HTTPS|Used to retrieve Skype configuration values
|ris.api.iris.microsoft.com|TLSv1.2|Windows Telemetry
|s1325.t.eloqua.com|HTTPS|Microsoft Edge
|settings-win.data.microsoft.com|TLSv1.2|Used for Windows apps to dynamically update their configuration
|telecommand.telemetry.microsoft.com|TLSv1.2|Used by Windows Error Reporting
|tile-service.weather.microsoft.com|HTTPS|Used to download updates to the Weather app Live Tile
|v10.events.data.microsoft.com|TLSv1.2|Diagnostic Data
|v20.events.data.microsoft.com|HTTPS|Diagnostic Data
|watson.telemetry.microsoft.com|HTTPS|Diagnostic Data
|wdcp.microsoft.com|TLSv1.2|Used for Windows Defender when Cloud-based Protection is enabled
|www.bing.com|TLSv1.2|Used for updates for Cortana, apps, and Live Tiles
|www.microsoft.com|HTTP|Connected User Experiences and Telemetry, Microsoft Data Management service
|www.msftconnecttest.com|HTTP|Network Connection (NCSI)
|www.office.com|HTTPS|Microsoft Office

