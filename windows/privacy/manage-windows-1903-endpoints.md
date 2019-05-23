---
title: Connection endpoints for Windows 10 Enterprise, version 1903
description: Explains what Windows 10 endpoints are used for, how to turn off traffic to them, and the impact.
keywords: privacy, manage connections to Microsoft, Windows 10, Windows Server 2016
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: high
audience: ITPro
author: danihalfin
ms.author: v-medgar
manager: sanashar
ms.collection: M365-security-compliance
ms.topic: article
ms.date: 5/3/2019
---
# Manage connection endpoints for Windows 10 Enterprise, version 1903

**Applies to**

- Windows 10 Enterprise, version 1903

Some Windows components, app, and related services transfer data to Microsoft network endpoints. Some examples include:

-	Connecting to Microsoft Office and Windows sites to download the latest app and security updates.
-	Connecting to email servers to send and receive email.
-	Connecting to the web for every day web browsing.
-	Connecting to the cloud to store and access backups.
-	Using your location to show a weather forecast.

This article lists different endpoints that are available on a clean installation of Windows 10, version 1709 and later.
Details about the different ways to control traffic to these endpoints are covered in [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md). 
Where applicable, each endpoint covered in this topic includes a link to the specific details on how to control that traffic. 

The following methodology was used to derive these network endpoints:

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

## Windows 10 1903 Enterprise connection endpoints

|Area|Description|Protocol|Destination|
|----------------|----------|----------|------------|
|Apps|The following endpoints are used to download updates to the Weather app Live Tile. If you turn off traffic to this endpoint, no Live Tiles will be updated.|HTTP|blob.weather.microsoft.com|
|||HTTP|tile-service.weather.microsoft.com
||The following endpoint is used for OneNote Live Tile. To turn off traffic for this endpoint, either uninstall OneNote or disable the Microsoft Store. If you disable the Microsoft store, other Store apps cannot be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.|HTTPS|cdn.onenote.net/livetile/?Language=en-US
||The following endpoint is used for Twitter updates. To turn off traffic for these endpoints, either uninstall Twitter or disable the Microsoft Store. If you disable the Microsoft store, other Store apps cannot be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.|HTTPS|*.twimg.com*|
||The following endpoint is used for Candy Crush Saga updates. To turn off traffic for this endpoint, either uninstall Candy Crush Saga or disable the Microsoft Store. If you disable the Microsoft store, other Store apps cannot be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.|TLS v1.2|candycrushsoda.king.com|
||The following endpoint is used by the Photos app to download configuration files, and to connect to the Office 365 portal's shared infrastructure, including Office Online. To turn off traffic for this endpoint, either uninstall the Photos app or disable the Microsoft Store. If you disable the Microsoft store, other Store apps cannot be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.|HTTPS|evoke-windowsservices-tas.msedge.net|
||The following endpoint is used for by the Microsoft Wallet app. To turn off traffic for this endpoint, either uninstall the Wallet app or disable the Microsoft Store. If you disable the Microsoft store, other Store apps cannot be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.|HTTPS|wallet.microsoft.com|
||The following endpoint is used by the Groove Music app for update HTTP handler status. If you turn off traffic for this endpoint, apps for websites won't work and customers who visit websites (such as mediaredirect.microsoft.com) that are registered with their associated app (such as Groove Music) will stay at the website and won't be able to directly launch the app.|HTTPS|mediaredirect.microsoft.com|
||The following endpoints are used when using the Whiteboard app. To turn off traffic for this endpoint disable the Microsoft Store.|HTTPS|int.whiteboard.microsoft.com|
|||HTTPS|wbd.ms|
|||HTTPS|whiteboard.microsoft.com|
|||HTTP / HTTPS|whiteboard.ms|
|Azure |The following endpoints are related to Azure. |HTTPS|wd-prod-*fe*.cloudapp.azure.com|
|||HTTPS|ris-prod-atm.trafficmanager.net|
|||HTTPS|validation-v2.sls.trafficmanager.net|
|Certificates|The following endpoint is used by the Automatic Root Certificates Update component to automatically check the list of trusted authorities on Windows Update to see if an update is available. It is possible turn off traffic to this endpoint, but that is not recommended because when root certificates are updated over time, applications and websites may stop working because they did not receive an updated root certificate the application uses. Additionally, it is used to download certificates that are publicly known to be fraudulent. These settings are critical for both Windows security and the overall security of the Internet. We do not recommend blocking this endpoint. If traffic to this endpoint is turned off, Windows no longer automatically downloads certificates known to be fraudulent, which increases the attack vector on the device.|HTTP|ctldl.windowsupdate.com|
|Cortana and Search|The following endpoint is used to get images that are used for Microsoft Store suggestions. If you turn off traffic for this endpoint, you will block images that are used for Microsoft Store suggestions. |HTTPS|store-images.*microsoft.com|
||The following endpoints are related to Cortana and Live Tiles. If you turn off traffic for this endpoint, you will block updates to Cortana greetings, tips, and Live Tiles.|HTTPS|www.bing.com/client|
|||HTTPS|www.bing.com|
|||HTTPS|www.bing.com/proactive|
|||HTTPS|www.bing.com/threshold/xls.aspx|
|||HTTP|exo-ring.msedge.net|
|||HTTP|fp.msedge.net|
|||HTTP|fp-vp.azureedge.net|
|||HTTP|odinvzc.azureedge.net|
|||HTTP|spo-ring.msedge.net|
|Device authentication|
||The following endpoint is used to authenticate a device. If you  turn off traffic for this endpoint, the device will not be authenticated.|HTTPS|login.live.com*|
||The following endpoint is used to retrieve device metadata. If you  turn off traffic for this endpoint, metadata will not be updated for the device.|HTTP|dmd.metaservices.microsoft.com|
|Diagnostic Data|The following endpoints are used by the Connected User Experiences and Telemetry component and connects to the Microsoft Data Management service. If you turn off traffic for this endpoint, diagnostic and usage information, which helps Microsoft find and fix problems and improve our products and services, will not be sent back to Microsoft.|HTTP|v10.events.data.microsoft.com|
|||HTTPS|v10.vortex-win.data.microsoft.com/collect/v1|
|||HTTP|www.microsoft.com|
||The following endpoints are used by Windows Error Reporting. To turn off traffic for these endpoints, enable the following Group Policy: Administrative Templates > Windows Components > Windows Error Reporting > Disable Windows Error Reporting. This means error reporting information will not be sent back to Microsoft.|HTTPS|co4.telecommand.telemetry.microsoft.com|
|||HTTP|cs11.wpc.v0cdn.net|
|||HTTPS|cs1137.wpc.gammacdn.net|
|||TLS v1.2|modern.watson.data.microsoft.com*|
|||HTTPS|watson.telemetry.microsoft.com|
|Licensing|The following endpoint is used for online activation and some app licensing. To turn off traffic for this endpoint, disable the Windows License Manager Service. This will also block online activation and app licensing may not work.|HTTPS|*licensing.mp.microsoft.com*|
|Location|The following endpoints are used for location data. If you turn off traffic for this endpoint, apps cannot use location data.|HTTPS|inference.location.live.net|
|||HTTP|location-inference-westus.cloudapp.net|
|Maps|The following endpoints are used to check for updates to maps that have been downloaded for offline use. If you turn off traffic for this endpoint, offline maps will not be updated.|HTTPS|*g.akamaiedge.net|
|||HTTP|*maps.windows.com*|
|Microsoft Account|The following endpoints are used for Microsoft accounts to sign in. If you turn off traffic for these endpoints, users cannot sign in with Microsoft accounts. |HTTP|login.msa.akadns6.net|
|||HTTP|us.configsvc1.live.com.akadns.net|
|Microsoft Edge|This traffic is related to the Microsoft Edge browser.|HTTPS|iecvlist.microsoft.com|
|Microsoft forward link redirection service (FWLink)|The following endpoint is used by the Microsoft forward link redirection service (FWLink) to redirect permanent web links to their actual, sometimes transitory, URL. FWlinks are similar to URL shorteners, just longer. If you disable this endpoint, Windows Defender won't be able to update its malware definitions; links from Windows and other Microsoft products to the Web won't work; and PowerShell updateable Help won't update. To disable the traffic, instead disable the traffic that's getting forwarded.|HTTPS|go.microsoft.com|
|Microsoft Store|The following endpoint is used for the Windows Push Notification Services (WNS). WNS enables third-party developers to send toast, tile, badge, and raw updates from their own cloud service. This provides a mechanism to deliver new updates to your users in a power-efficient and dependable way. If you turn off traffic for this endpoint, push notifications will no longer work, including MDM device management, mail synchronization, settings synchronization.|HTTPS|*.wns.windows.com|
||The following endpoint is used to revoke licenses for malicious apps in the Microsoft Store. To turn off traffic for this endpoint, either uninstall the app or disable the Microsoft Store. If you disable the Microsoft Store, other Microsoft Store apps cannot be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious apps and users will still be able to open them.|HTTP|storecatalogrevocation.storequality.microsoft.com|
||The following endpoint is used to download image files that are called when applications run (Microsoft Store or Inbox MSN Apps). If you turn off traffic for these endpoints, the image files won't be downloaded, and apps cannot be installed or updated from the Microsoft Store. Additionally, the Microsoft Store won't be able to revoke malicious apps and users will still be able to open them.|HTTPS|img-prod-cms-rt-microsoft-com*|
|||HTTPS|store-images.microsoft.com|
||The following endpoints are used to communicate with Microsoft Store. If you turn off traffic for these endpoints, apps cannot be installed or updated from the Microsoft Store. Additionally, the Microsoft Store won't be able to revoke malicious apps and users will still be able to open them.|TLS v1.2|*.md.mp.microsoft.com*|
|||HTTPS|*displaycatalog.mp.microsoft.com|
|||HTTP \ HTTPS|pti.store.microsoft.com|
|||HTTP|storeedgefd.dsx.mp.microsoft.com|
|||HTTP|markets.books.microsoft.com|
|||HTTP |share.microsoft.com|
|Network Connection Status Indicator (NCSI)|
||Network Connection Status Indicator (NCSI) detects Internet connectivity and corporate network connectivity status. NCSI sends a DNS request and HTTP query to this endpoint to determine if the device can communicate with the Internet. If you turn off traffic for this endpoint, NCSI won't be able to determine if the device is connected to the Internet and the network status tray icon will show a warning.|HTTP|www.msftconnecttest.com*|
Office|The following endpoints are used to connect to the Office 365 portal's shared infrastructure, including Office Online. For more info, see Office 365 URLs and IP address ranges. You can turn this off by removing all Microsoft Office apps and the Mail and Calendar apps. If you turn off traffic for these endpoints, users won't be able to save documents to the cloud or see their recently used documents.|HTTP|*.c-msedge.net|
|||HTTPS|*.e-msedge.net|
|||HTTPS|*.s-msedge.net|
|||HTTPS|nexusrules.officeapps.live.com|
|||HTTPS|ocos-office365-s2s.msedge.net|
|||HTTPS|officeclient.microsoft.com|
|||HTTPS|outlook.office365.com|
|||HTTPS|client-office365-tas.msedge.net|
|||HTTPS|www.office.com|
|||HTTPS|onecollector.cloudapp.aria|
|||HTTP|v10.events.data.microsoft.com/onecollector/1.0/|
|||HTTPS|self.events.data.microsoft.com|
||The following endpoint is used to connect the Office To-Do app to its cloud service. To turn off traffic for this endpoint, either uninstall the app or disable the Microsoft Store.|HTTPS|to-do.microsoft.com
|OneDrive|The following endpoints are related to OneDrive. If you turn off traffic for these endpoints, anything that relies on g.live.com to get updated URL information will no longer work.|HTTP \ HTTPS|g.live.com/1rewlive5skydrive/*|
|||HTTP|msagfx.live.com|
|||HTTPS|oneclient.sfx.ms|
|Settings|The following endpoint is used as a way for apps to dynamically update their configuration. Apps such as System Initiated User Feedback and the Xbox app use it. If you turn off traffic for this endpoint, an app that uses this endpoint may stop working.|HTTPS|cy2.settings.data.microsoft.com.akadns.net|
|||HTTPS|settings.data.microsoft.com|
|||HTTPS|settings-win.data.microsoft.com|
|Skype|The following endpoint is used to retrieve Skype configuration values. To turn off traffic for this endpoint, either uninstall the app or disable the Microsoft Store. If you disable the Microsoft store, other Microsoft Store apps cannot be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious apps and users will still be able to open them.|HTTPS|browser.pipe.aria.microsoft.com|
|||HTTP|config.edge.skype.com|
|||HTTP|s2s.config.skype.com|
|||HTTPS|skypeecs-prod-usw-0-b.cloudapp.net|
|Windows Defender|The following endpoint is used for Windows Defender when Cloud-based Protection is enabled. If you turn off traffic for this endpoint, the device will not use Cloud-based Protection.|HTTPS|wdcp.microsoft.com|
|||HTTPS|definitionupdates.microsoft.com|
|||HTTPS|go.microsoft.com|
||The following endpoints are used for Windows Defender Smartscreen reporting and notifications. If you turn off traffic for these endpoints, Smartscreen notifications will not appear.|HTTPS|*smartscreen.microsoft.com|
|||HTTPS|smartscreen-sn3p.smartscreen.microsoft.com|
|||HTTPS|unitedstates.smartscreen-prod.microsoft.com|
|Windows Spotlight|The following endpoints are used to retrieve Windows Spotlight metadata that describes content, such as references to image locations, as well as suggested apps, Microsoft account notifications, and Windows tips. If you turn off traffic for these endpoints, Windows Spotlight will still try to deliver new lock screen images and updated content but it will fail; suggested apps, Microsoft account notifications, and Windows tips will not be downloaded. For more information, see Windows Spotlight.|TLS v1.2|*.search.msn.com|
|||HTTPS|arc.msn.com|
|||HTTPS|g.msn.com*|
|||HTTPS|query.prod.cms.rt.microsoft.com|
|||HTTPS|ris.api.iris.microsoft.com|
|Windows Update|The following endpoint is used for Windows Update downloads of apps and OS updates, including HTTP downloads or HTTP downloads blended with peers. If you turn off traffic for this endpoint, Windows Update downloads will not be managed, as critical metadata that is used to make downloads more resilient is blocked. Downloads may be impacted by corruption (resulting in re-downloads of full files). Additionally, downloads of the same update by multiple devices on the same local network will not use peer devices for bandwidth reduction.|HTTPS|*.prod.do.dsp.mp.microsoft.com|
|||HTTP|cs9.wac.phicdn.net|
|||HTTP|emdl.ws.microsoft.com|
||The following endpoints are used to download operating system patches, updates, and apps from Microsoft Store. If you turn off traffic for these endpoints, the device will not be able to download updates for the operating system.|HTTP|*.dl.delivery.mp.microsoft.com|
|||HTTP|*.windowsupdate.com*|
||The following endpoints enable connections to Windows Update, Microsoft Update, and the online services of the Store. If you turn off traffic for these endpoints, the device will not be able to connect to Windows Update and Microsoft Update to help keep the device secure. Also, the device will not be able to acquire and update apps from the Store.|HTTPS|*.delivery.mp.microsoft.com|
|||HTTPS|*.update.microsoft.com|
||The following endpoint is used for content regulation. If you turn off traffic for this endpoint, the Windows Update Agent will be unable to contact the endpoint and fallback behavior will be used. This may result in content being either incorrectly.|HTTPS|tsfe.trafficshaping.dsp.mp.microsoft.com|


## Other Windows 10 editions

To view endpoints for other versions of Windows 10 Enterprise, see:
- [Manage connection endpoints for Windows 10, version 1809](manage-windows-1809-endpoints.md)
- [Manage connection endpoints for Windows 10, version 1803](manage-windows-1803-endpoints.md)
- [Manage connection endpoints for Windows 10, version 1709](manage-windows-1709-endpoints.md)

To view endpoints for non-Enterprise Windows 10 editions, see:
- [Windows 10, version 1809, connection endpoints for non-Enterprise editions](windows-endpoints-1809-non-enterprise-editions.md)
- [Windows 10, version 1803, connection endpoints for non-Enterprise editions](windows-endpoints-1803-non-enterprise-editions.md)
- [Windows 10, version 1709, connection endpoints for non-Enterprise editions](windows-endpoints-1709-non-enterprise-editions.md)


## Related links

- [Office 365 URLs and IP address ranges](https://support.office.com/en-us/article/Office-365-URLs-and-IP-address-ranges-8548a211-3fe7-47cb-abb1-355ea5aa88a2?ui=en-US&rs=en-US&ad=US)
- [Network infrastructure requirements for Microsoft Intune](https://docs.microsoft.com/intune/get-started/network-infrastructure-requirements-for-microsoft-intune)


