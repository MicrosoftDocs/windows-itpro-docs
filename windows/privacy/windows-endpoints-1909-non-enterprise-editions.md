---
title: Windows 10, version 1909, connection endpoints for non-Enterprise editions
description: Explains what Windows 10 endpoints are used in non-Enterprise editions. Specific to Windows 10, version 1909.
keywords: privacy, manage connections to Microsoft, Windows 10, Windows Server 2016
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: high
audience: ITPro
author: gental-giant
ms.author: v-hakima
manager: obezeajo
ms.collection: M365-security-compliance
ms.topic: article
ms.date: 08/18/2020
---
# Windows 10, version 1909, connection endpoints for non-Enterprise editions

 **Applies to**

- Windows 10 Home, version 1909
- Windows 10 Professional, version 1909
- Windows 10 Education, version 1909

In addition to the endpoints listed for [Windows 10 Enterprise](manage-windows-2004-endpoints.md), the following endpoints are available on other non-Enterprise editions of Windows 10, version 1909.

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
|arc.msn.com|HTTP/TLS v1.2|Windows Spotlight  
|api.asm.skype.com|TLS v1.2|Used to retrieve Skype configuration values
|browser.pipe.aria.microsoft.com|HTTPS|Used to retrieve Skype configuration values
|ctldl.windowsupdate.com/*|HTTP|Certificate Trust List
|client.wns.windows.com|HTTP|Used for the Windows Push Notification Service(WNS)
|config.edge.skype.com|HTTP/TLS v1.2|Used to retrieve Skype configuration values
|dmd.metaservices.microsoft.com|HTTP|Device metadata
|config.teams.microsoft.com|HTTPS|Used for Microsoft Teams application
|*dl.delivery.mp.microsoft.com|HTTP|Used to download operating system patches, updates, and apps from Microsoft Store
|*.tlu.dl.delivery.mp.microsoft.com|HTTP|Used to download operating system patches, updates, and apps from Microsoft Store
|displaycatalog.mp.microsoft.com/*|HTTP/TLS v1.2|Used to communicate with Microsoft Store
|evoke-windowsservices-tas.msedge.net|HTTP/TLS v1.2|Used by the Photos app to download configuration files, and to connect to the Office 365 portal's shared infrastructure, including Office in a browser
|fe2cr.update.microsoft.com|HTTPS/TLS v1.2|Enables connections to Windows Update, Microsoft Update, and the online services of the Store
|fe3cr.delivery.mp.microsoft.com|HTTPS/TLS v1.2|Used to download operating system patches, updates, and apps from Microsoft Store
|go.microsoft.com|HTTP|Windows Defender and/or Microsoft forward link redirection service (FWLink)
|g.live.com|HTTP|OneDrive
|checkappexec.microsoft.com|HTTPS|Used for Windows Defender Smartscreen reporting and notifications
|emdl.ws.microsoft.com|HTTP|Windows Update
|*.prod.do.dsp.mp.microsoft.com|HTTP/TLS v1.2|Windows Update
|*.au.download.windowsupdate.com|HTTP|Windows Update
|download.windowsupdate.com|HTTP|Windows Update
|inference.location.live.net|TLS v1.2|Used for Location Data
|iecvlist.microsoft.com|HTTP|This endpoint is related to Microsoft Edge
|login.live.com|HTTPS/TLS v1.2|Device Authentication
|logincdn.msauth.net|HTTPS|OneDrive
|licensing.mp.microsoft.com|HTTP/TLS v1.2|Licensing
|maps.windows.com|TLS v1.2|Used to check for updates to maps that have been downloaded for offline use
|mobile.pipe.aria.microsoft.com|HTTP|Office Telemetry
|nav.smartscreen.microsoft.com|HTTP|Used for Windows Defender SmartScreen reporting and notifications
|outlook.office365.com|HTTP|Used to connect to the Microsoft 365 admin center's shared infrastructure, including Office in a browser
|ocsp.digicert.com|HTTP|Used by the Automatic Root Certificates Update component to automatically check the list of trusted authorities on Windows Update to see if an update is available
|oneclient.sfx.ms|HTTPS|Used by OneDrive for Business to download and verify app updates
|pti.store.microsoft.com/*|HTTP|Used to communicate with Microsoft Store
|img-prod-cms-rt-microsoft-com.akamaized.net|HTTP|Used to communicate with Microsoft Store
|manage.devcenter.microsoft.com|HTTP/TLS v1.2|Used to get Microsoft Store analytics
|ris.api.iris.microsoft.com|HTTPS|Used to retrieve Windows Spotlight metadata that describes content
|settings-win.data.microsoft.com|HTTPS/TLS v1.2|Used for Windows apps to dynamically update their configuration
|smartscreen-prod.microsoft.com|HTTP|Used for Windows Defender SmartScreen reporting and notifications
|*.blob.core.windows.net|HTTP/TLS v1.2|Windows Telemetry
|storage.live.com|HTTP/TLS v1.2|OneDrive
|skydrivesync.policies.live.net|TLS v1.2|OneDrive
|dm2302.settings.live.net|HTTP|OneDrive
|slscr.update.microsoft.com|HTTPS/TLS V1.2|Windows Update
|tile-service.weather.microsoft.com|HTTP|Used for the Weather app
|tsfe.trafficshaping.dsp.mp.microsoft.com|HTTP|This endpoint is used for content regulation
|watson.telemetry.microsoft.com*|HTTPS/TLS v1.2|Diagnostic Data
|v10.events.data.microsoft.com/onecollector/1.0/|HTTPS|Microsoft Office
|v10.events.data.microsoft.com|HTTPS/TLS v1.2|Used by the Connected User Experiences and Telemetry component and connects to the Microsoft Data Management service
|www.bing.com|HTTPS/TLS v1.2|Cortana and Live Tiles
|www.msftconnecttest.com|HTTP|Network Connection Status Indicator (NCSI)
|wdcp.microsoft.com|HTTPS|Used for Windows Defender when Cloud-based Protection is enabled
|activity.windows.com|TLSV1.2|Used by Activity Feed Service which enables multiple cross-device data roaming scenarios on Windows
|adl.windows.com|HTTP|Used for compatibility database updates for Windows
|spclient.wg.spotify.com|TLSV1.2|Used for Spotify Live Tile
|cs.dds.microsoft.com|TLSV1.2|Used by Device Directory Service to keep track of user-device associations and storing metadata about the devices.

## Windows 10 Pro

| **Destination** | **Protocol** | **Description** |
| --- | --- | --- |
|*.prod.do.dsp.mp.microsoft.com|HTTP/TLS v1.2|Windows Update
|api.onedrive.com|HTTP|OneDrive
|smartscreen-prod.microsoft.com|HTTP|Used for Windows Defender SmartScreen reporting and notifications
|nav.smartscreen.microsoft.com|HTTPS/TLS v1.2|Windows Defender
|*.update.microsoft.com|HTTP|Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store  
|browser.pipe.aria.microsoft.com|HTTPS|Used to retrieve Skype configuration values
|*.windowsupdate.com|HTTP|Used to download operating system patches and updates
|*.wns.windows.com|TLS v1.2|Used for the Windows Push Notification Services (WNS)
|*dl.delivery.mp.microsoft.com|HTTP|Used to download operating system patches, updates, and apps from Microsoft Store
|c-ring.msedge.net|TLS v1.2|Cortana and Live Tiles
|a-ring.msedge.net|TLS v1.2|Cortana and Live Tiles
|*storecatalogrevocation.storequality.microsoft.com|HTTP/TLS v1.2|Used to revoke licenses for malicious apps on the Microsoft Store
|arc.msn.com|HTTP/TLS v1.2|Windows Spotlight
|*.blob.core.windows.net|HTTP/TLS v1.2|Windows Telemetry
|cdn.onenote.net|HTTPS/TLS v1.2|OneNote Live Tile
|checkappexec.microsoft.com|HTTPS|Used for Windows Defender SmartScreen reporting and notifications
|config.edge.skype.com|HTTP/TLS v1.2|Used to retrieve Skype configuration values
|config.teams.microsoft.com|HTTPS|Used for Microsoft Teams application
|ctldl.windowsupdate.com|HTTP|Used by the Automatic Root Certificates Update component to automatically check the list of trusted authorities on Windows Update to see if an update is available
|displaycatalog.mp.microsoft.com*|HTTP/TLS v1.2|Microsoft Store
|emdl.ws.microsoft.com|HTTP|Windows Update
|fe2cr.update.microsoft.com|HTTPS/TLS v1.2|Windows Update
|fe3cr.delivery.mp.microsoft.com|HTTPS/TLS v1.2|Windows Update
|slscr.update.microsoft.com|HTTPS/TLS v1.2|Windows Update
|evoke-windowsservices-tas.msedge.net|HTTPS/TLS v1.2|Used by the Photos app to download configuration files, and to connect to the Office 365 portal's shared infrastructure, including Office in a browser
|fp.msedge.net|HTTPS/TLS v1.2|Cortana and Live Tiles
|fp-vp.azureedge.net|TLS v1.2|Cortana and Live Tiles
|g.live.com|TLS v1.2|OneDrive
|go.microsoft.com|HTTP|Windows Defender and/or Microsoft forward link redirection service (FWLink)
|iecvlist.microsoft.com|HTTP|Microsoft Edge
|inference.location.live.net|TLS v1.2|Used for Location Data
|img-prod-cms-rt-microsoft-com.akamaized.net|HTTP|Used to communicate with Microsoft Store
|licensing.mp.microsoft.com*|HTTP/TLS v1.2|Licensing
|login.live.com|HTTPS/TLS v1.2|Device Authentication
|logincdn.msauth.net|HTTPS|Used for Microsoft accounts to sign in
|manage.devcenter.microsoft.com|HTTP/TLS v1.2|Microsoft Store analytics
|maps.windows.com|TLS v1.2|Related to Maps application
|ocsp.digicert.com|HTTP|Used by the Automatic Root Certificates Update component to automatically check the list of trusted authorities on Windows Update to see if an update is available
|ocsp.msocsp.com|HTTP|Used by the Automatic Root Certificates Update component to automatically check the list of trusted authorities on Windows Update to see if an update is available
|oneclient.sfx.ms|HTTPS|Used by OneDrive for Business to download and verify app updates
|mobile.pipe.aria.microsoft.com|HTTP|Office Telemetry
|pti.store.microsoft.com/*|HTTP|Used to communicate with Microsoft Store
|ris.api.iris.microsoft.com|TLS v1.2|Windows Spotlight
|settings-win.data.microsoft.com|HTTPS/TLS v1.2|Used for Windows apps to dynamically update their configuration
|spo-ring.msedge.net|TLSv1.2|Cortana and Live Tiles
|telecommand.telemetry.microsoft.com|TLS v1.2|Used by Windows Error Reporting ||tile-service.weather.microsoft.com|HTTP|Used for the Weather app
|tsfe.trafficshaping.dsp.mp.microsoft.com|HTTPS|Used for content regulation
|v10.events.data.microsoft.com/onecollector/1.0/|HTTPS/TLS v1.2|Diagnostic Data
|v10.events.data.microsoft.com|HTTPS/TLS v1.2|Used by the Connected User Experiences and Telemetry component and connects to the Microsoft Data Management service
|watson.telemetry.microsoft.com*|HTTPS/TLS v1.2|Used by Windows Error Reporting
|wdcp.microsoft.com|HTTPS|Used for Windows Defender when Cloud-based Protection is enabled
|www.bing.com|HTTPS/TLS v1.2|Cortana and Live Tiles
|www.msftconnecttest.com|HTTP|Network Connection Status Indicator (NCSI)
|outlook.office365.com|HTTP|Microsoft Office
|storage.live.com|HTTP/TLS v1.2|OneDrive
|skydrivesync.policies.live.net|TLS v1.2|OneDrive
|windows.policies.live.net|HTTP|OneDrive
|activity.windows.com|TLSV1.2|Used by Activity Feed Service which enables multiple cross-device data roaming scenarios on Windows
|adl.windows.com|HTTP|Used for compatibility database updates for Windows
|spclient.wg.spotify.com|TLSV1.2|Used for Spotify Live Tile
|cs.dds.microsoft.com|TLSV1.2|Used by Device Directory Service to keep track of user-device associations and storing metadata about the devices.

## Windows 10 Education

| **Destination** | **Protocol** | **Description** |
| --- | --- | --- |
|arc.msn.com|HTTPS/TLS v1.2|Windows Spotlight
|*.dl.delivery.mp.microsoft.com|HTTP|Used to download operating system patches, updates, and apps from Microsoft
|client.wns.windows.com|TLS v1.2|Used for the Windows Push Notification Services (WNS)
|*storecatalogrevocation.storequality.microsoft.com|TLS v1.2|Used to revoke licenses for malicious apps on the Microsoft Store
|ctldl.windowsupdate.com|HTTP|Certificate Trust List
|dmd.metaservices.microsoft.com|HTTP|Device metadata
|Inference.location.live.net|TLS v1.2|Location
|oneclient.sfx.ms|HTTPS|OneDrive
|storage.live.com|HTTP/TLS v1.2|OneDrive
|skydrivesync.policies.live.net|TLS v1.2|OneDrive
|slscr.update.microsoft.com|HTTPS/TLS v1.2|Windows Update
|fe2cr.update.microsoft.com|HTTPS/TLS v1.2|Windows Update
|fe3cr.delivery.mp.microsoft.com|HTTPS/TLS v1.2|Windows Update
|tsfe.trafficshaping.dsp.mp.microsoft.com|HTTP/TLS v1.2|Windows Update
|officehomeblobs.blob.core.windows.net|HTTP|Windows Telemetry
|displaycatalog.mp.microsoft.com/*|HTTP/TLS v1.2|Microsoft Store
|img-prod-cms-rt-microsoft-com.akamaized.net|HTTP|Used to communicate with Microsoft Store
|config.teams.microsoft.com|HTTPS|Teams
|api.asm.skype.com|TLS v1.2|Used to retrieve Skype configuration values
|config.edge.skype.com|HTTP/TLS v1.2|Used to retrieve Skype configuration values
|logincdn.msauth.net|HTTPS|OneDrive
|iecvlist.microsoft.com|HTTP|Microsoft Edge
|download.windowsupdate.com|HTTP|Windows Update
|checkappexec.microsoft.com|HTTPS|Windows Defender
|pti.store.microsoft.com/*|HTTP|Microsoft Store
|emdl.ws.microsoft.com|HTTP|Windows Update
|evoke-windowsservices-tas.msedge.net|HTTPS/TLS v1.2|Photos app
|g.live.com|TLS v1.2|OneDrive
|go.microsoft.com|HTTP|Windows Defender
|licensing.mp.microsoft.com|HTTP/TLS v1.2|Licensing
|login.live.com|HTTPS/TLS v1.2|Device Authentication
|manage.devcenter.microsoft.com|TLS v1.2|Microsoft Store analytics
|ocsp.digicert.com|HTTP|CRL and OCSP checks to the issuing certificate authorities
|ris.api.iris.microsoft.com|TLS v1.2|Windows spotlight
|telecommand.telemetry.microsoft.com|TLS v1.2|Used by Windows Error Reporting  
|tile-service.weather.microsoft.com|HTTP|Used to download updates to the Weather app Live Tile
|v10.events.data.microsoft.com|HTTPS/TLS v1.2|Diagnostic Data
|V10.events.data.microsoft.com/onecollector/1.0/|HTTPS|Diagnostic Data
|Watson.telemetry.microsoft.com/telemetry.request|HTTPS|Diagnostic Data
|watson.telemetry.microsoft.com|HTTPS|Diagnostic Data
|outlook.office365.com|HTTP|Microsoft Office
|www.bing.com|TLS v1.2|Used for updates for Cortana, apps, and Live Tiles
|www.msftconnecttest.com|HTTP|Network Connection (NCSI)
|adl.windows.com|HTTP|Used for compatibility database updates for Windows
