---
title: Connection endpoints for Windows 10, version 1809
description: Explains what Windows 10 endpoints are used for, how to turn off traffic to them, and the impact.
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
# Manage connection endpoints for Windows 10, version 1809

**Applies to**

- Windows 10, version 1809

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
6.  All traffic was captured in our lab using a IPV4 network.  Therefore no IPV6 traffic is reported here. 

> [!NOTE]
> Microsoft uses global load balancers that can appear in network trace-routes. For example, an endpoint for *.akadns.net might be used to load balance requests to an Azure datacenter, which can change over time.

## Windows 10 Enterprise connection endpoints

## Apps

The following endpoint is used to download updates to the Weather app Live Tile. 
If you [turn off traffic to this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#live-tiles), no Live Tiles will be updated.

| Source process | Protocol | Destination |
|----------------|----------|------------|
| explorer        | HTTP     | tile-service.weather.microsoft.com  |
|   | HTTP  | blob.weather.microsoft.com |

The following endpoint is used for OneNote Live Tile. 
To turn off traffic for this endpoint, either uninstall OneNote or [disable the Microsoft Store](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore). 
If you disable the Microsoft store, other Store apps cannot be installed or updated. 
Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.

| Source process | Protocol | Destination |
|----------------|----------|------------|
|  | HTTPS   | cdn.onenote.net/livetile/?Language=en-US |

The following endpoints are used for Twitter updates. 
To turn off traffic for these endpoints, either uninstall Twitter or [disable the Microsoft Store](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore). 
If you disable the Microsoft store, other Store apps cannot be installed or updated. 
Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.

| Source process | Protocol | Destination |
|----------------|----------|------------|
|  | HTTPS   | wildcard.twimg.com |
| svchost.exe |             | oem.twimg.com/windows/tile.xml |

The following endpoint is used for Facebook updates. 
To turn off traffic for this endpoint, either uninstall Facebook or [disable the Microsoft Store](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore). 
If you disable the Microsoft store, other Store apps cannot be installed or updated. 
Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.

| Source process | Protocol | Destination |
|----------------|----------|------------|
|  |    | star-mini.c10r.facebook.com |

The following endpoint is used by the Photos app to download configuration files, and to connect to the Office 365 portal's shared infrastructure, including Office Online. 
To turn off traffic for this endpoint, either uninstall the Photos app or [disable the Microsoft Store](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore). 
If you disable the Microsoft store, other Store apps cannot be installed or updated. 
Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.

| Source process | Protocol | Destination |
|----------------|----------|------------|
| WindowsApps\Microsoft.Windows.Photos | HTTPS | evoke-windowsservices-tas.msedge.net |

The following endpoint is used for Candy Crush Saga updates. 
To turn off traffic for this endpoint, either uninstall Candy Crush Saga or [disable the Microsoft Store](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore). 
If you disable the Microsoft store, other Store apps cannot be installed or updated. 
Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.

| Source process | Protocol | Destination |
|----------------|----------|------------|
|  | TLS v1.2    | candycrushsoda.king.com |

The following endpoint is used for by the Microsoft Wallet app. 
To turn off traffic for this endpoint, either uninstall the Wallet app or [disable the Microsoft Store](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore). 
If you disable the Microsoft store, other Store apps cannot be installed or updated. 
Additionally, the Microsoft Store won't be able to revoke malicious Store apps and users will still be able to open them.

| Source process | Protocol | Destination |
|----------------|----------|------------|
| system32\AppHostRegistrationVerifier.exe | HTTPS | wallet.microsoft.com |

The following endpoint is used by the Groove Music app for update HTTP handler status. 
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-apps-for-websites), apps for websites won't work and customers who visit websites (such as mediaredirect.microsoft.com) that are registered with their associated app (such as Groove Music) will stay at the website and won't be able to directly launch the app.

| Source process | Protocol | Destination |
|----------------|----------|------------|
| system32\AppHostRegistrationVerifier.exe | HTTPS | mediaredirect.microsoft.com |

The following endpoints are used when using the Whiteboard app.
To turn off traffic for this endpoint [disable the Microsoft Store](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore).

| Source process | Protocol | Destination |
|----------------|----------|------------|
|  | HTTPS | wbd.ms |
|  | HTTPS | int.whiteboard.microsoft.com |
|  | HTTPS | whiteboard.microsoft.com |
|  | HTTP / HTTPS | whiteboard.ms |

## Cortana and Search

The following endpoint is used to get images that are used for Microsoft Store suggestions.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-cortana), you will block images that are used for Microsoft Store suggestions.

| Source process | Protocol | Destination |
|----------------|----------|------------|
| searchui        | HTTPS |store-images.s-microsoft.com  |

The following endpoint is used to update Cortana greetings, tips, and Live Tiles.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-cortana), you will block updates to Cortana greetings, tips, and Live Tiles.

| Source process | Protocol | Destination |
|----------------|----------|------------|
| backgroundtaskhost  | HTTPS   | www.bing.com/client |

The following endpoint is used to configure parameters, such as how often the Live Tile is updated. It's also used to activate experiments. 
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-cortana), parameters would not be updated and the device would no longer participate in experiments.

| Source process | Protocol | Destination |
|----------------|----------|------------|
| backgroundtaskhost  | HTTPS   | www.bing.com/proactive |

The following endpoint is used by Cortana to report diagnostic and diagnostic data information.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-cortana), Microsoft won't be aware of issues with Cortana and won't be able to fix them.

| Source process | Protocol | Destination |
|----------------|----------|------------|
| searchui <br> backgroundtaskhost | HTTPS   | www.bing.com/threshold/xls.aspx |

## Certificates

The following endpoint is used by the Automatic Root Certificates Update component to automatically check the list of trusted authorities on Windows Update to see if an update is available. It is possible to [turn off traffic to this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#automatic-root-certificates-update), but that is not recommended because when root certificates are updated over time, applications and websites may stop working because they did not receive an updated root certificate the application uses.

Additionally, it is used to download certificates that are publicly known to be fraudulent.
These settings are critical for both Windows security and the overall security of the Internet. 
We do not recommend blocking this endpoint.
If traffic to this endpoint is turned off, Windows no longer automatically downloads certificates known to be fraudulent, which increases the attack vector on the device.

| Source process | Protocol | Destination |
|----------------|----------|------------|
| svchost        | HTTP     | ctldl.windowsupdate.com | 

## Device authentication

The following endpoint is used to authenticate a device.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-feedback), the device will not be authenticated.

| Source process | Protocol | Destination |
|----------------|----------|------------|
|   | HTTPS   | login.live.com/ppsecure |

## Device metadata

The following endpoint is used to retrieve device metadata.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-devinst), metadata will not be updated for the device.

| Source process | Protocol | Destination |
|----------------|----------|------------|
|   |    | dmd.metaservices.microsoft.com.akadns.net |
|   |  HTTP  | dmd.metaservices.microsoft.com |

## Diagnostic Data

The following endpoint is used by the Connected User Experiences and Telemetry component and connects to the Microsoft Data Management service.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-feedback), diagnostic and usage information, which helps Microsoft find and fix problems and improve our products and services, will not be sent back to Microsoft.

| Source process | Protocol | Destination |
|----------------|----------|------------|
| svchost |   | cy2.vortex.data.microsoft.com.akadns.net |

The following endpoint is used by the Connected User Experiences and Telemetry component and connects to the Microsoft Data Management service.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-feedback), diagnostic and usage information, which helps Microsoft find and fix problems and improve our products and services, will not be sent back to Microsoft.

| Source process | Protocol | Destination |
|----------------|----------|------------|
| svchost | HTTPS | v10.vortex-win.data.microsoft.com/collect/v1 |

The following endpoints are used by Windows Error Reporting.
To turn off traffic for these endpoints, enable the following Group Policy: Administrative Templates > Windows Components > Windows Error Reporting > Disable Windows Error Reporting. This means error reporting information will not be sent back to Microsoft.

| Source process | Protocol | Destination |
|----------------|----------|------------|
| wermgr |        | watson.telemetry.microsoft.com  |
|        | TLS v1.2 | modern.watson.data.microsoft.com.akadns.net |

## Font streaming

The following endpoints are used to download fonts on demand.
If you [turn off traffic for these endpoints](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#font-streaming), you will not be able to download fonts on demand.

| Source process | Protocol | Destination |
|----------------|----------|------------|
| svchost  |     | fs.microsoft.com      |
|          |     | fs.microsoft.com/fs/windows/config.json | 

## Licensing

The following endpoint is used for online activation and some app licensing.
To turn off traffic for this endpoint, disable the Windows License Manager Service. This will also block online activation and app licensing may not work.

| Source process | Protocol | Destination |
|----------------|----------|------------|
| licensemanager  | HTTPS   | licensing.mp.microsoft.com/v7.0/licenses/content |

## Location

The following endpoint is used for location data.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-location), apps cannot use location data.

| Source process | Protocol | Destination |
|----------------|----------|------------|
|  | HTTP   | location-inference-westus.cloudapp.net  |
|  | HTTPS | inference.location.live.net |

## Maps

The following endpoint is used to check for updates to maps that have been downloaded for offline use.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-offlinemaps), offline maps will not be updated.

| Source process | Protocol | Destination |
|----------------|----------|------------|
| svchost | HTTPS   | *g.akamaiedge.net  |

## Microsoft account

The following endpoints are used for Microsoft accounts to sign in. 
If you [turn off traffic for these endpoints](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-microsoft-account), users cannot sign in with Microsoft accounts.

| Source process | Protocol | Destination |
|----------------|----------|------------|
|  |   | login.msa.akadns6.net  |
| system32\Auth.Host.exe | HTTPS | auth.gfx.ms |
|  |   | us.configsvc1.live.com.akadns.net |

## Microsoft Store

The following endpoint is used for the Windows Push Notification Services (WNS). WNS enables third-party developers to send toast, tile, badge, and raw updates from their own cloud service. This provides a mechanism to deliver new updates to your users in a power-efficient and dependable way.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#live-tiles), push notifications will no longer work, including MDM device management, mail synchronization, settings synchronization.

| Source process | Protocol | Destination |
|----------------|----------|------------|
|  |  HTTPS  | *.wns.windows.com |

The following endpoint is used to revoke licenses for malicious apps in the Microsoft Store. 
To turn off traffic for this endpoint, either uninstall the app or [disable the Microsoft Store](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore). If you disable the Microsoft store, other Microsoft Store apps cannot be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious apps and users will still be able to open them.

| Source process | Protocol | Destination |
|----------------|----------|------------|
|  | HTTP   | storecatalogrevocation.storequality.microsoft.com |

The following endpoints are used to download image files that are called when applications run (Microsoft Store or Inbox MSN Apps). 
If you [turn off traffic for these endpoints](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore), the image files won't be downloaded, and apps cannot be installed or updated from the Microsoft Store. Additionally, the Microsoft Store won't be able to revoke malicious apps and users will still be able to open them.

| Source process | Protocol | Destination |
|----------------|----------|------------|
|  | HTTPS   | img-prod-cms-rt-microsoft-com.akamaized.net |
| backgroundtransferhost | HTTPS   | store-images.microsoft.com |

The following endpoints are used to communicate with Microsoft Store. 
If you [turn off traffic for these endpoints](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore), apps cannot be installed or updated from the Microsoft Store. Additionally, the Microsoft Store won't be able to revoke malicious apps and users will still be able to open them.

| Source process | Protocol | Destination |
|----------------|----------|------------|
|  | HTTP   | storeedgefd.dsx.mp.microsoft.com  |
|  | HTTP \ HTTPS   | pti.store.microsoft.com  |
||TLS v1.2|cy2.\*.md.mp.microsoft.com.\*.|
| svchost | HTTPS | displaycatalog.mp.microsoft.com |

## Network Connection Status Indicator (NCSI)

Network Connection Status Indicator (NCSI) detects Internet connectivity and corporate network connectivity status. NCSI sends a DNS request and HTTP query to this endpoint to determine if the device can communicate with the Internet. 
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-ncsi), NCSI won't be able to determine if the device is connected to the Internet and the network status tray icon will show a warning.

| Source process | Protocol | Destination |
|----------------|----------|------------|
|  | HTTP   | www.msftconnecttest.com/connecttest.txt |

## Office

The following endpoints are used to connect to the Office 365 portal's shared infrastructure, including Office Online. For more info, see [Office 365 URLs and IP address ranges](https://support.office.com/article/Office-365-URLs-and-IP-address-ranges-8548a211-3fe7-47cb-abb1-355ea5aa88a2?ui=en-US&rs=en-US&ad=US#BKMK_Portal-identity). 
You can turn this off by removing all Microsoft Office apps and the Mail and Calendar apps.
If you turn off traffic for these endpoints, users won't be able to save documents to the cloud or see their recently used documents.

| Source process | Protocol | Destination |
|----------------|----------|------------|
|   |    | *.a-msedge.net  | 
| hxstr  |    | *.c-msedge.net  | 
|   |    | *.e-msedge.net  |
|   |    | *.s-msedge.net  |
|   | HTTPS | ocos-office365-s2s.msedge.net |
|   | HTTPS | nexusrules.officeapps.live.com |
|   | HTTPS | officeclient.microsoft.com |

The following endpoint is used to connect to the Office 365 portal's shared infrastructure, including Office Online. For more info, see [Office 365 URLs and IP address ranges](https://support.office.com/article/Office-365-URLs-and-IP-address-ranges-8548a211-3fe7-47cb-abb1-355ea5aa88a2?ui=en-US&rs=en-US&ad=US#BKMK_Portal-identity). 
You can turn this off by removing all Microsoft Office apps and the Mail and Calendar apps.
If you turn off traffic for these endpoints, users won't be able to save documents to the cloud or see their recently used documents.

| Source process | Protocol | Destination |
|----------------|----------|------------|
| system32\Auth.Host.exe | HTTPS | outlook.office365.com |

The following endpoint is OfficeHub traffic used to get the metadata of Office apps. To turn off traffic for this endpoint, either uninstall the app or [disable the Microsoft Store](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore). If you disable the Microsoft store, other Microsoft Store apps cannot be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious apps and users will still be able to open them.

| Source process | Protocol | Destination |
|----------------|----------|------------|
|Windows Apps\Microsoft.Windows.Photos|HTTPS|client-office365-tas.msedge.net|

The following endpoint is used to connect the Office To-Do app to it's cloud service.
To turn off traffic for this endpoint, either uninstall the app or [disable the Microsoft Store](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore).

| Source process | Protocol | Destination |
|----------------|----------|------------|
|   |HTTPS|to-do.microsoft.com|

## OneDrive

The following endpoint is a redirection service that’s used to automatically update URLs.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-onedrive), anything that relies on g.live.com to get updated URL information will no longer work.

| Source process | Protocol | Destination |
|----------------|----------|------------|
| onedrive | HTTP \ HTTPS   | g.live.com/1rewlive5skydrive/ODSUProduction |

The following endpoint is used by OneDrive for Business to download and verify app updates. For more info, see [Office 365 URLs and IP address ranges](https://support.office.com/article/Office-365-URLs-and-IP-address-ranges-8548a211-3fe7-47cb-abb1-355ea5aa88a2?ui=en-US&rs=en-US&ad=US).
To turn off traffic for this endpoint, uninstall OneDrive for Business. In this case, your device will not able to get OneDrive for Business app updates.

| Source process | Protocol | Destination |
|----------------|----------|------------|
| onedrive | HTTPS   | oneclient.sfx.ms |

## Settings

The following endpoint is used as a way for apps to dynamically update their configuration. Apps such as System Initiated User Feedback and the Xbox app use it.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-feedback), an app that uses this endpoint may stop working.

| Source process | Protocol | Destination |
|----------------|----------|------------|
| dmclient |   | cy2.settings.data.microsoft.com.akadns.net  |

The following endpoint is used as a way for apps to dynamically update their configuration. Apps such as System Initiated User Feedback and the Xbox app use it.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-feedback), an app that uses this endpoint may stop working.

| Source process | Protocol | Destination |
|----------------|----------|------------|
| dmclient  | HTTPS  | settings.data.microsoft.com |

The following endpoint is used as a way for apps to dynamically update their configuration. Apps such as Windows Connected User Experiences and Telemetry component and Windows Insider Program use it.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-priv-feedback), an app that uses this endpoint may stop working.

| Source process | Protocol | Destination |
|----------------|----------|------------|
| svchost | HTTPS   | settings-win.data.microsoft.com |

## Skype

The following endpoint is used to retrieve Skype configuration values. To turn off traffic for this endpoint, either uninstall the app or [disable the Microsoft Store](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-windowsstore). If you disable the Microsoft store, other Microsoft Store apps cannot be installed or updated. Additionally, the Microsoft Store won't be able to revoke malicious apps and users will still be able to open them.

| Source process | Protocol | Destination |
|----------------|----------|------------|
|microsoft.windowscommunicationsapps.exe | HTTPS | config.edge.skype.com |
|  | HTTPS | browser.pipe.aria.microsoft.com |
|  |  | skypeecs-prod-usw-0-b.cloudapp.net |

## Windows Defender

The following endpoint is used for Windows Defender when Cloud-based Protection is enabled.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-defender), the device will not use Cloud-based Protection.

| Source process | Protocol | Destination |
|----------------|----------|------------|
|   |    | wdcp.microsoft.com |

The following endpoints are used for Windows Defender definition updates.
If you [turn off traffic for these endpoints](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-defender), definitions will not be updated.

| Source process | Protocol | Destination |
|----------------|----------|------------|
|   |    | definitionupdates.microsoft.com |
|MpCmdRun.exe|HTTPS|go.microsoft.com |

The following endpoints are used for Windows Defender Smartscreen reporting and notifications.
If you [turn off traffic for these endpoints](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-defender-smartscreen), Smartscreen notifications will no appear.

| Source process | Protocol | Destination |
|----------------|----------|------------|
|  | HTTPS | ars.smartscreen.microsoft.com |
|  | HTTPS | unitedstates.smartscreen-prod.microsoft.com |
|  |  | smartscreen-sn3p.smartscreen.microsoft.com |  

## Windows Spotlight

The following endpoints are used to retrieve Windows Spotlight metadata that describes content, such as references to image locations, as well as suggested apps, Microsoft account notifications, and Windows tips.
If you [turn off traffic for these endpoints](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-spotlight), Windows Spotlight will still try to deliver new lock screen images and updated content but it will fail; suggested apps, Microsoft account notifications, and Windows tips will not be downloaded. For more information, see [Windows Spotlight](/windows/configuration/windows-spotlight).

| Source process | Protocol | Destination |
|----------------|----------|------------|
| backgroundtaskhost  | HTTPS   | arc.msn.com |
| backgroundtaskhost  |    | g.msn.com.nsatc.net |
|    |TLS v1.2| *.search.msn.com |
|   | HTTPS   | ris.api.iris.microsoft.com |
|    | HTTPS | query.prod.cms.rt.microsoft.com |

## Windows Update

The following endpoint is used for Windows Update downloads of apps and OS updates, including HTTP downloads or HTTP downloads blended with peers.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-updates), Windows Update downloads will not be managed, as critical metadata that is used to make downloads more resilient is blocked. Downloads may be impacted by corruption (resulting in re-downloads of full files). Additionally, downloads of the same update by multiple devices on the same local network will not use peer devices for bandwidth reduction.

| Source process | Protocol | Destination |
|----------------|----------|------------|
| svchost  | HTTPS   | *.prod.do.dsp.mp.microsoft.com  |

The following endpoints are used to download operating system patches, updates, and apps from Microsoft Store. 
If you [turn off traffic for these endpoints](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-wu), the device will not be able to download updates for the operating system.

| Source process | Protocol | Destination |
|----------------|----------|------------|
| svchost | HTTP  | *.windowsupdate.com |
| svchost | HTTP  | *.dl.delivery.mp.microsoft.com |

The following endpoints enable connections to Windows Update, Microsoft Update, and the online services of the Store. 
If you [turn off traffic for these endpoints](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-wu), the device will not be able to connect to Windows Update and Microsoft Update to help keep the device secure. Also, the device will not be able to acquire and update apps from the Store.

| Source process | Protocol | Destination |
|----------------|----------|------------|
| svchost | HTTPS   | *.update.microsoft.com |
| svchost | HTTPS   | *.delivery.mp.microsoft.com  |

The following endpoint is used for content regulation.
If you [turn off traffic for this endpoint](manage-connections-from-windows-operating-system-components-to-microsoft-services.md#bkmk-wu), the Windows Update Agent will be unable to contact the endpoint and fallback behavior will be used. This may result in content being either incorrectly downloaded or not downloaded at all.

| Source process | Protocol | Destination |
|----------------|----------|------------|
| svchost | HTTPS   | tsfe.trafficshaping.dsp.mp.microsoft.com |


## Microsoft forward link redirection service (FWLink)

The following endpoint is used by the Microsoft forward link redirection service (FWLink) to redirect permanent web links to their actual, sometimes transitory, URL. FWlinks are similar to URL shorteners, just longer.

If you disable this endpoint, Windows Defender won't be able to update its malware definitions; links from Windows and other Microsoft products to the Web won't work; and PowerShell updateable Help won't update. To disable the traffic, instead disable the traffic that's getting forwarded.

| Source process | Protocol | Destination |
|----------------|----------|------------|
|Various|HTTPS|go.microsoft.com|

## Other Windows 10 editions

To view endpoints for other versions of Windows 10 Enterprise, see:
- [Manage connection endpoints for Windows 10, version 1803](manage-windows-1803-endpoints.md)
- [Manage connection endpoints for Windows 10, version 1709](manage-windows-1709-endpoints.md)

To view endpoints for non-Enterprise Windows 10 editions, see:
- [Windows 10, version 1809, connection endpoints for non-Enterprise editions](windows-endpoints-1809-non-enterprise-editions.md)
- [Windows 10, version 1803, connection endpoints for non-Enterprise editions](windows-endpoints-1803-non-enterprise-editions.md)
- [Windows 10, version 1709, connection endpoints for non-Enterprise editions](windows-endpoints-1709-non-enterprise-editions.md)


## Related links

- [Office 365 URLs and IP address ranges](https://support.office.com/en-us/article/Office-365-URLs-and-IP-address-ranges-8548a211-3fe7-47cb-abb1-355ea5aa88a2?ui=en-US&rs=en-US&ad=US)
- [Network infrastructure requirements for Microsoft Intune](https://docs.microsoft.com/intune/get-started/network-infrastructure-requirements-for-microsoft-intune)
