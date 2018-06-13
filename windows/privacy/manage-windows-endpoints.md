---
title: Windows 10 connection endpoints
description: Explains what Windows 10 endpoints are used for, how to turn off traffic to them, and the impact.
keywords: privacy, manage connections to Microsoft, Windows 10, Windows Server 2016
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: high
author: brianlic-msft
ms.author: brianlic
ms.date: 11/21/2017
---
# Manage Windows 10 connection endpoints

**Applies to**

- Windows 10, version 1709 and later

Some Windows components, app, and related services transfer data to Microsoft network endpoints. Some examples include:

-	Connecting to Microsoft Office and Windows sites to download the latest app and security updates.
-	Connecting to email servers to send and receive email.
-	Connecting to the web for every day web browsing.
-	Connecting to the cloud to store and access backups.
-	Using your location to show a weather forecast.

This article lists different endpoints that are available on a clean installation of Windows 10, version 1709 and later.
Details about the different ways to control traffic to these endpoints are covered in [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md). 
Where applicable, each endpoint covered in this topic includes a link to specific details about how to control traffic to it. 

We used the following methodology to derive these network endpoints:

1.	Set up the latest version of Windows 10 on a test virtual machine using the default settings. 
2.	Leave the devices running idle for a week (that is, a user is not interacting with the system/device).
3.	Use globally accepted network protocol analyzer/capturing tools and log all background egress traffic.  
4.	Compile reports on traffic going to public IP addresses.
5.  The test virtual machine was logged in using a local account and was not joined to a domain or Azure Active Directory.

> [!NOTE]
> Microsoft uses global load balancers that can appear in network trace-routes. For example, an endpoint for *.akadns.net might be used to load balance requests to an Azure datacenter, which can change over time.

## Windows 10 Enterprise connection endpoints

## Apps

The following endpoint is used to download updates to the Weather app Live Tile. 
If you [turn off traffic to this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#live-tiles), no Live Tiles will be updated.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| explorer        | HTTP     | tile-service.weather.microsoft.com  | 1709 |
|   | HTTP  | blob.weather.microsoft.com | 1803 |

The following endpoint is used for OneNote Live Tile. 
To turn off traffic for this endpoint, either uninstall OneNote or [disable the Microsoft Store](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore). 
If you disable the Microsoft store, other Store apps cannot be installed or updated. 
Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
|  | HTTPS   | cdn.onenote.net/livetile/?Language=en-US | 1709 |

The following endpoints are used for Twitter updates. 
To turn off traffic for these endpoints, either uninstall Twitter or [disable the Microsoft Store](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore). 
If you disable the Microsoft store, other Store apps cannot be installed or updated. 
Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
|  | HTTPS   | wildcard.twimg.com | 1709 |
| svchost.exe |             | oem.twimg.com/windows/tile.xml | 1709 |

The following endpoint is used for Facebook updates. 
To turn off traffic for this endpoint, either uninstall Facebook or [disable the Microsoft Store](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore). 
If you disable the Microsoft store, other Store apps cannot be installed or updated. 
Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
|  |    | star-mini.c10r.facebook.com | 1709 |

The following endpoint is used by the Photos app to download configuration files, and to connect to the Office 365 portal's shared infrastructure, including Office Online. 
To turn off traffic for this endpoint, either uninstall the Photos app or [disable the Microsoft Store](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore). 
If you disable the Microsoft store, other Store apps cannot be installed or updated. 
Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| WindowsApps\Microsoft.Windows.Photos | HTTPS | evoke-windowsservices-tas.msedge.net | 1709 |

The following endpoint is used for Candy Crush Saga updates. 
To turn off traffic for this endpoint, either uninstall Candy Crush Saga or [disable the Microsoft Store](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore). 
If you disable the Microsoft store, other Store apps cannot be installed or updated. 
Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
|  | TLS v1.2    | candycrushsoda.king.com | 1709 |

The following endpoint is used for by the Microsoft Wallet app. 
To turn off traffic for this endpoint, either uninstall the Wallet app or [disable the Microsoft Store](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore). 
If you disable the Microsoft store, other Store apps cannot be installed or updated. 
Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| system32\AppHostRegistrationVerifier.exe | HTTPS | wallet.microsoft.com | 1709 |

The following endpoint is used by the Groove Music app for update HTTP handler status. 
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-apps-for-websites), apps for websites won't work and customers who visit websites (such as mediaredirect.microsoft.com) that are registered with their associated app (such as Groove Music) will stay at the website and won't be able to directly launch the app.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| system32\AppHostRegistrationVerifier.exe | HTTPS | mediaredirect.microsoft.com | 1709 |

## Cortana and Search

The following endpoint is used to get images that are used for Microsoft Store suggestions.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-cortana), you will block images that are used for Microsoft Store suggestions.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| searchui        | HTTPS |store-images.s-microsoft.com  | 1709 |

The following endpoint is used to update Cortana greetings, tips, and Live Tiles.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-cortana), you will block updates to Cortana greetings, tips, and Live Tiles.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| backgroundtaskhost  | HTTPS   | www.bing.com/client | 1709 |

The following endpoint is used to configure parameters, such as how often the Live Tile is updated. It's also used to activate experiments. 
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-cortana), parameters would not be updated and the device would no longer participate in experiments.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| backgroundtaskhost  | HTTPS   | www.bing.com/proactive | 1709 |

The following endpoint is used by Cortana to report diagnostic and diagnostic data information.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-cortana), Microsoft won't be aware of issues with Cortana and won't be able to fix them.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| searchui <br> backgroundtaskhost | HTTPS   | www.bing.com/threshold/xls.aspx | 1709 |

## Certificates

The following endpoint is used by the Automatic Root Certificates Update component to automatically check the list of trusted authorities on Windows Update to see if an update is available. It is possible to [turn off traffic to this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#automatic-root-certificates-update), but that is not recommended because when root certificates are updated over time, applications and websites may stop working because they did not receive an updated root certificate the application uses. 

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| svchost        | HTTP     | ctldl.windowsupdate.com | 1709 |

The following endpoints are used to download certificates that are publicly known to be fraudulent.
These settings are critical for both Windows security and the overall security of the Internet. 
We do not recommend blocking this endpoint.
If traffic to this endpoint is turned off, Windows no longer automatically downloads certificates known to be fraudulent, which increases the attack vector on the device.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| svchost        | HTTP     | ctldl.windowsupdate.com | 1709 |

## Device authentication

The following endpoint is used to authenticate a device.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-feedback), the device will not be authenticated.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
|   | HTTPS   | login.live.com/ppsecure | 1709 |

## Device metadata

The following endpoint is used to retrieve device metadata.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-devinst), metadata will not be updated for the device.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
|   |    | dmd.metaservices.microsoft.com.akadns.net | 1709 |
|   |  HTTP  | dmd.metaservices.microsoft.com | 1803 |

## Diagnostic Data

The following endpoint is used by the Connected User Experiences and Telemetry component and connects to the Microsoft Data Management service.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-feedback), diagnostic and usage information, which helps Microsoft find and fix problems and improve our products and services, will not be sent back to Microsoft.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| svchost |   | cy2.vortex.data.microsoft.com.akadns.net | 1709 |

The following endpoint is used by the Connected User Experiences and Telemetry component and connects to the Microsoft Data Management service.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-feedback), diagnostic and usage information, which helps Microsoft find and fix problems and improve our products and services, will not be sent back to Microsoft.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| svchost |    | v10.vortex-win.data.microsoft.com/collect/v1 | 1709 |

The following endpoints are used by Windows Error Reporting.
To turn off traffic for these endpoints, enable the following Group Policy: Administrative Templates > Windows Components > Windows Error Reporting > Disable Windows Error Reporting. This means error reporting information will not be sent back to Microsoft.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| wermgr |        | watson.telemetry.microsoft.com  | 1709 |
|        | TLS v1.2 | modern.watson.data.microsoft.com.akadns.net | 1709 |

## Font streaming

The following endpoints are used to download fonts on demand.
If you [turn off traffic for these endpoints](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#font-streaming), you will not be able to download fonts on demand.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| svchost  |     | fs.microsoft.com      | 1709 |
|          |     | fs.microsoft.com/fs/windows/config.json | 1709 | 

## Licensing

The following endpoint is used for online activation and some app licensing.
To turn off traffic for this endpoint, disable the Windows License Manager Service. This will also block online activation and app licensing may not work.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| licensemanager  | HTTPS   | licensing.mp.microsoft.com/v7.0/licenses/content | 1709 |

## Location

The following endpoint is used for location data.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-location), apps cannot use location data.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
|  | HTTP   | location-inference-westus.cloudapp.net  | 1709 |

## Maps

The following endpoint is used to check for updates to maps that have been downloaded for offline use.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-offlinemaps), offline maps will not be updated.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| svchost | HTTPS   | *g.akamaiedge.net  | 1709 |

## Microsoft account

The following endpoints are used for Microsoft accounts to sign in. 
If you [turn off traffic for these endpoints](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-microsoft-account), users cannot sign in with Microsoft accounts.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
|  |   | login.msa.akadns6.net  | 1709 |
| system32\Auth.Host.exe | HTTPS | auth.gfx.ms | 1709 |

## Microsoft Store

The following endpoint is used for the Windows Push Notification Services (WNS). WNS enables third-party developers to send toast, tile, badge, and raw updates from their own cloud service. This provides a mechanism to deliver new updates to your users in a power-efficient and dependable way.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#live-tiles), push notifications will no longer work, including MDM device management, mail synchronization, settings synchronization.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
|  |    | *.wns.windows.com | 1709 |

The following endpoint is used to revoke licenses for malicious apps in the Microsoft Store. 
To turn off traffic for this endpoint, either uninstall the app or [disable the Microsoft Store](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore). If you disable the Microsoft store, other Microsoft Store apps cannot be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious apps and users will still be able to open them.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
|  | HTTP   | storecatalogrevocation.storequality.microsoft.com | 1709 |

The following endpoints are used to download image files that are called when applications run (Microsoft Store or Inbox MSN Apps). 
If you [turn off traffic for these endpoints](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore), the image files won't be downloaded, and apps cannot be installed or updated from the Microsoft Store. Additionally, the Microsoft Store won't be able to revoke malicious apps and users will still be able to open them.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
|  | HTTPS   | img-prod-cms-rt-microsoft-com.akamaized.net | 1709 |
| backgroundtransferhost | HTTPS   | store-images.microsoft.com | 1803 |

The following endpoints are used to communicate with Microsoft Store. 
If you [turn off traffic for these endpoints](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore), apps cannot be installed or updated from the Microsoft Store. Additionally, the Microsoft Store won't be able to revoke malicious apps and users will still be able to open them.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
|  | HTTP   | storeedgefd.dsx.mp.microsoft.com  | 1709 |
|  | HTTP   | pti.store.microsoft.com  | 1709 |
||TLS v1.2|cy2.\*.md.mp.microsoft.com.\*.| 1709 |
| svchost | HTTPS | displaycatalog.mp.microsoft.com | 1803 |

## Network Connection Status Indicator (NCSI)

Network Connection Status Indicator (NCSI) detects Internet connectivity and corporate network connectivity status. NCSI sends a DNS request and HTTP query to this endpoint to determine if the device can communicate with the Internet. 
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-ncsi), NCSI won't be able to determine if the device is connected to the Internet and the network status tray icon will show a warning.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
|  | HTTP   | www.msftconnecttest.com/connecttest.txt | 1709 |

## Office

The following endpoints are used to connect to the Office 365 portal's shared infrastructure, including Office Online. For more info, see [Office 365 URLs and IP address ranges](https://support.office.com/article/Office-365-URLs-and-IP-address-ranges-8548a211-3fe7-47cb-abb1-355ea5aa88a2?ui=en-US&rs=en-US&ad=US#BKMK_Portal-identity). 
You can turn this off by removing all Microsoft Office apps and the Mail and Calendar apps.
If you turn off traffic for these endpoints, users won't be able to save documents to the cloud or see their recently used documents.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
|   |    | *.a-msedge.net  | 1709 | 
| hxstr  |    | *.c-msedge.net  | 1709 | 
|   |    | *.e-msedge.net  | 1709 |
|   |    | *.s-msedge.net  | 1709 |
|   | HTTPS | ocos-office365-s2s.msedge.net | 1803 |

The following endpoint is used to connect to the Office 365 portal's shared infrastructure, including Office Online. For more info, see [Office 365 URLs and IP address ranges](https://support.office.com/article/Office-365-URLs-and-IP-address-ranges-8548a211-3fe7-47cb-abb1-355ea5aa88a2?ui=en-US&rs=en-US&ad=US#BKMK_Portal-identity). 
You can turn this off by removing all Microsoft Office apps and the Mail and Calendar apps.
If you turn off traffic for these endpoints, users won't be able to save documents to the cloud or see their recently used documents.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| system32\Auth.Host.exe | HTTPS | outlook.office365.com | 1709 |

The following endpoint is OfficeHub traffic used to get the metadata of Office apps. To turn off traffic for this endpoint, either uninstall the app or [disable the Microsoft Store](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore). If you disable the Microsoft store, other Microsoft Store apps cannot be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious apps and users will still be able to open them.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
|Windows Apps\Microsoft.Windows.Photos|HTTPS|client-office365-tas.msedge.net| 1709 |

## OneDrive

The following endpoint is a redirection service that’s used to automatically update URLs.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-onedrive), anything that relies on g.live.com to get updated URL information will no longer work.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| onedrive | HTTP \ HTTPS   | g.live.com/1rewlive5skydrive/ODSUProduction | 1709 |

The following endpoint is used by OneDrive for Business to download and verify app updates. For more info, see [Office 365 URLs and IP address ranges](https://support.office.com/article/Office-365-URLs-and-IP-address-ranges-8548a211-3fe7-47cb-abb1-355ea5aa88a2?ui=en-US&rs=en-US&ad=US).
To turn off traffic for this endpoint, uninstall OneDrive for Business. In this case, your device will not able to get OneDrive for Business app updates.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| onedrive | HTTPS   | oneclient.sfx.ms | 1709 |

## Settings

The following endpoint is used as a way for apps to dynamically update their configuration. Apps such as System Initiated User Feedback and the Xbox app use it.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-feedback), an app that uses this endpoint may stop working.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| dmclient |   | cy2.settings.data.microsoft.com.akadns.net  | 1709 |

The following endpoint is used as a way for apps to dynamically update their configuration. Apps such as System Initiated User Feedback and the Xbox app use it.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-feedback), an app that uses this endpoint may stop working.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| dmclient  | HTTPS  | settings.data.microsoft.com | 1709 |

The following endpoint is used as a way for apps to dynamically update their configuration. Apps such as Windows Connected User Experiences and Telemetry component and Windows Insider Program use it.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-feedback), an app that uses this endpoint may stop working.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| svchost | HTTPS   | settings-win.data.microsoft.com | 1709 |

## Skype

The following endpoint is used to retrieve Skype configuration values. To turn off traffic for this endpoint, either uninstall the app or [disable the Microsoft Store](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore). If you disable the Microsoft store, other Microsoft Store apps cannot be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious apps and users will still be able to open them.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
|microsoft.windowscommunicationsapps.exe | HTTPS | config.edge.skype.com | 1709 |



## Windows Defender

The following endpoint is used for Windows Defender when Cloud-based Protection is enabled.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-defender), the device will not use Cloud-based Protection.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
|   |    | wdcp.microsoft.com | 1709 |

The following endpoints are used for Windows Defender definition updates.
If you [turn off traffic for these endpoints](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-defender), definitions will not be updated.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
|   |    | definitionupdates.microsoft.com | 1709 |
|MpCmdRun.exe|HTTPS|go.microsoft.com | 1709 |

## Windows Spotlight

The following endpoints are used to retrieve Windows Spotlight metadata that describes content, such as references to image locations, as well as suggested apps, Microsoft account notifications, and Windows tips.
If you [turn off traffic for these endpoints](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-spotlight), Windows Spotlight will still try to deliver new lock screen images and updated content but it will fail; suggested apps, Microsoft account notifications, and Windows tips will not be downloaded. For more information, see [Windows Spotlight](/windows/configuration/windows-spotlight).

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| backgroundtaskhost  | HTTPS   | arc.msn.com | 1709 |
| backgroundtaskhost  |    | g.msn.com.nsatc.net | 1709 |
|    |TLS v1.2| *.search.msn.com | 1709 |
|   | HTTPS   | ris.api.iris.microsoft.com | 1709 |
|    | HTTPS | query.prod.cms.rt.microsoft.com | 1709 |

## Windows Update

The following endpoint is used for Windows Update downloads of apps and OS updates, including HTTP downloads or HTTP downloads blended with peers.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-updates), Windows Update downloads will not be managed, as critical metadata that is used to make downloads more resilient is blocked. Downloads may be impacted by corruption (resulting in re-downloads of full files). Additionally, downloads of the same update by multiple devices on the same local network will not use peer devices for bandwidth reduction.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| svchost  | HTTPS   | *.prod.do.dsp.mp.microsoft.com  | 1709 |

The following endpoints are used to download operating system patches and updates. 
If you [turn off traffic for these endpoints](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-wu), the device will not be able to download updates for the operating system.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| svchost | HTTP  | *.windowsupdate.com | 1709 |
|         | HTTP   | fg.download.windowsupdate.com.c.footprint.net | 1709 |

The following endpoint is used by the Highwinds Content Delivery Network to perform Windows updates. 
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-wu), the device will not perform updates.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
|  |            | cds.d2s7q6s2.hwcdn.net | 1709 |

The following endpoints are used by the Verizon Content Delivery Network to perform Windows updates. 
If you [turn off traffic for these endpoints](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-wu), the device will not perform updates.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
|  |  HTTP          | *wac.phicdn.net | 1709 |
|  |                | *wac.edgecastcdn.net | 1709 |

The following endpoint is used to download apps and Windows Insider Preview builds from the Microsoft Store. Time Limited URL (TLU) is a mechanism for protecting the content. For example, it prevents someone from copying the URL and then getting access to the app that the person has not acquired).
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-wu), the updating functionality on this device is essentially in a disabled state, resulting in user unable to get apps from the Store, get latest version of Windows, and so on.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| svchost |    | *.tlu.dl.delivery.mp.microsoft.com.c.footprint.net | 1709 |

The following endpoint is used to download apps from the Microsoft Store. It's used as part of calculating the right ranges for apps.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-wu), users of the device will not able to get apps from the Microsoft Store.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| svchost |    | emdl.ws.microsoft.com  | 1709 |

The following endpoints enable connections to Windows Update, Microsoft Update, and the online services of the Store. 
If you [turn off traffic for these endpoints](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-wu), the device will not be able to connect to Windows Update and Microsoft Update to help keep the device secure. Also, the device will not be able to acquire and update apps from the Store.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| svchost | HTTPS   | fe2.update.microsoft.com | 1709 |
| svchost |    | fe3.delivery.mp.microsoft.com  | 1709 |
|       |      | fe3.delivery.dsp.mp.microsoft.com.nsatc.net | 1709 |
| svchost | HTTPS   | sls.update.microsoft.com | 1709 |
|   | HTTP | *.dl.delivery.mp.microsoft.com | 1803 |

The following endpoint is used for content regulation.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-wu), the Windows Update Agent will be unable to contact the endpoint and fallback behavior will be used. This may result in content being either incorrectly downloaded or not downloaded at all.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
| svchost | HTTPS   | tsfe.trafficshaping.dsp.mp.microsoft.com | 1709 |

The following endpoints are used to download content.
If you [turn off traffic for these endpoints](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-wu), you will block any content from being downloaded.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
|  |    | a122.dscd.akamai.net  | 1709 |
|  |    | a1621.g.akamai.net   | 1709 |

## Microsoft forward link redirection service (FWLink)

The following endpoint is used by the Microsoft forward link redirection service (FWLink) to redirect permanent web links to their actual, sometimes transitory, URL. FWlinks are similar to URL shorteners, just longer.

If you disable this endpoint, Windows Defender won't be able to update its malware definitions; links from Windows and other Microsoft products to the Web won't work; and PowerShell updateable Help won't update. To disable the traffic, instead disable the traffic that's getting forwarded.

| Source process | Protocol | Destination | Applies from Windows 10 version |
|----------------|----------|------------|----------------------------------|
|Various|HTTPS|go.microsoft.com| 1709 |

## Endpoints for other Windows editions

In addition to the endpoints listed for Windows 10 Enterprise, the following endpoints are available on other editions of Windows 10, version 1709.

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
| telecommand.telemetry.microsoft.com | HTTPS | Used by Windows Error Reporting. |
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
| client-office365-tas.msedge.net | HTTP | Used to connect to the Office 365 portal’s shared infrastructure, including Office Online. |
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
| fe3.delivery.dsp.mp.microsoft.com.nsatc.net | TLSv1.2/
HTTPS | Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store. |
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
| ris.api.iris.microsoft.com.akadns.net | TLSv1.2/
HTTPS | Used to retrieve Windows Spotlight metadata. |
| settings-win.data.microsoft.com | HTTPS | Used for Windows apps to dynamically update their configuration. |
| sls.update.microsoft.com.nsatc.net | TLSv1.2/
HTTPS | Enables connections to Windows Update. |
| star-mini.c10r.facebook.com | TLSv1.2 | Used for the Facebook Live Tile. |
| storecatalogrevocation.storequality.microsoft.com | HTTPS | Used to revoke licenses for malicious apps on the Microsoft Store. |
| storeedgefd.dsx.mp.microsoft.com | HTTPS | Used to communicate with Microsoft Store. |
| store-images.s-microsoft.com | HTTP | Used to get images that are used for Microsoft Store suggestions. |
| tile-service.weather.microsoft.com | HTTP | Used to download updates to the Weather app Live Tile. |
| tsfe.trafficshaping.dsp.mp.microsoft.com | TLSv1.2 | Used for content regulation. |
| v10.vortex-win.data.microsoft.com | HTTPS | Used to retrieve Windows Insider Preview builds. |
| wallet.microsoft.com | HTTPS | Used by the Microsoft Wallet app. |
| wallet-frontend-prod-westus.cloudapp.net | TLSv1.2 | Used by the Microsoft Wallet app. |
| watson.telemetry.microsoft.com | HTTPS | Used by Windows Error Reporting. |
| wdcp.microsoft.akadns.net | TLSv1.2 | Used for Windows Defender when Cloud-based Protection is enabled. |
| wildcard.twimg.com | TLSv1.2 | Used for the Twitter Live Tile. |
| www.bing.com | HTTP | Used for updates for Cortana, apps, and Live Tiles. |
| www.facebook.com | HTTPS | Used for the Facebook Live Tile. |
| [www.microsoft.com](http://www.microsoft.com/) | HTTPS | Used for updates for Cortana, apps, and Live Tiles. |

## Windows 10 Pro

| **Destination** | **Protocol** | **Description** |
| --- | --- | --- |
| *.*.akamai.net | HTTP | Used to download content. |
| *.*.akamaiedge.net | HTTP/
TLSv1.2 | Used to check for updates to maps that have been downloaded for offline use. |
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
| client-office365-tas.msedge.net | HTTPS | Used to connect to the Office 365 portal’s shared infrastructure, including Office Online. |
| config.edge.skype.com | HTTPS | Used to retrieve Skype configuration values. |
| ctldl.windowsupdate.com | HTTP | Used to download certificates that are publicly known to be fraudulent. |
| cs12.<span class="anchor" id="_Hlk500262422"></span>wpc.v0cdn.net | HTTP | Used by the Verizon Content Delivery Network to download content for Windows upgrades with Wireless Planning and Coordination (WPC). |
| cy2.displaycatalog.md.mp.microsoft.com.akadns.net | TLSv1.2 | Used to communicate with Microsoft Store. |
| cy2.settings.data.microsoft.com.akadns.net | TLSv1.2 | Used as a way for apps to dynamically update their configuration. |
| cy2.vortex.data.microsoft.com.akadns.net | TLSv1.2 | Used to retrieve Windows Insider Preview builds. |
| definitionupdates.microsoft.com | HTTPS | Used for Windows Defender definition updates. |
| displaycatalog.mp.microsoft.com | HTTPS | Used to communicate with Microsoft Store. |
| download.windowsupdate.com | HTTP | Enables connections to Windows Update. |
| evoke-windowsservices-tas.msedge.net | HTTPS | Used by the Photos app to download configuration files, and to connect to the Office 365 portal’s shared infrastructure, including Office Online. |
| fe2.update.microsoft.com | HTTPS | Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store. |
| fe2.update.microsoft.com.nsatc.net | TLSv1.2 | Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store. |
| fe3.delivery.dsp.mp.microsoft.com.nsatc.net | TLSv1.2/
HTTPS | Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store. |
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
| telecommand.telemetry.microsoft.com | HTTPS | Used by Windows Error Reporting. |
| tile-service.weather.microsoft.com | HTTP | Used to download updates to the Weather app Live Tile. |
| tsfe.trafficshaping.dsp.mp.microsoft.com | HTTPS | Used for content regulation. |
| v10.vortex-win.data.microsoft.com | HTTPS | Used to retrieve Windows Insider Preview builds. |
| wallet.microsoft.com | HTTPS | Used by the Microsoft Wallet app. |
| watson.telemetry.microsoft.com | HTTPS | Used by Windows Error Reporting. |
| wdcp.microsoft.akadns.net | HTTPS | Used for Windows Defender when Cloud-based Protection is enabled. |
| wildcard.twimg.com | TLSv1.2 | Used for the Twitter Live Tile. |
| www.bing.com | TLSv1.2 | Used for updates for Cortana, apps, and Live Tiles. |
| www.facebook.com | HTTPS | Used for the Facebook Live Tile. |
| [www.microsoft.com](http://www.microsoft.com/) | HTTPS | Used for updates for Cortana, apps, and Live Tiles. |

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
| evoke-windowsservices-tas.msedge.net/ab | HTTPS | Used by the Photos app to download configuration files, and to connect to the Office 365 portal’s shared infrastructure, including Office Online. |
| fe2.update.microsoft.com.nsatc.net | TLSv1.2 | Enables connections to Windows Update, Microsoft Update, and the online services of Microsoft Store. |
| fe3.delivery.dsp.mp.microsoft.com.nsatc.net | TLSv1.2 | Enables connections to Windows Update. |
| fg.download.windowsupdate.com.c.footprint.net | HTTP | Used to download operating system patches and updates. |
| fp.msedge.net | HTTPS | Used by OfficeHub to get the metadata of Office apps. |
| g.msn.com.nsatc.net | HTTP/
TLSv1.2 | Used to retrieve Windows Spotlight metadata. |
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
| telecommand.telemetry.microsoft.com | HTTPS | Used by Windows Error Reporting. |
| tsfe.trafficshaping.dsp.mp.microsoft.com | TLSv1.2 | Used for content regulation. |
| wallet.microsoft.com | HTTPS | Used by the Microsoft Wallet app. |
| watson.telemetry.microsoft.com | HTTPS | Used by Windows Error Reporting. |
| wdcp.microsoft.akadns.net | TLSv1.2 | Used for Windows Defender when Cloud-based Protection is enabled. |
| www.bing.com | HTTPS | Used for updates for Cortana, apps, and Live Tiles. |

## Related links

- [Office 365 URLs and IP address ranges](https://support.office.com/en-us/article/Office-365-URLs-and-IP-address-ranges-8548a211-3fe7-47cb-abb1-355ea5aa88a2?ui=en-US&rs=en-US&ad=US)
- [Network infrastructure requirements for Microsoft Intune](https://docs.microsoft.com/intune/get-started/network-infrastructure-requirements-for-microsoft-intune)