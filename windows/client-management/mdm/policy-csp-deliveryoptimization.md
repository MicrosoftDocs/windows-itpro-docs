---
title: Policy CSP - DeliveryOptimization
description: Learn how to use the Policy CSP - DeliveryOptimization setting to configure one or more Microsoft Connected Cache servers to be used by Delivery Optimization.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.localizationpriority: medium
ms.date: 06/09/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - DeliveryOptimization



<hr/>

<!--Policies-->
## DeliveryOptimization policies  

<dl>
  <dd>
    <a href="#deliveryoptimization-doabsolutemaxcachesize">DeliveryOptimization/DOAbsoluteMaxCacheSize</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-doallowvpnpeercaching">DeliveryOptimization/DOAllowVPNPeerCaching</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-docachehost">DeliveryOptimization/DOCacheHost</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-docachehostsource">DeliveryOptimization/DOCacheHostSource</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-dodelaybackgrounddownloadfromhttp">DeliveryOptimization/DODelayBackgroundDownloadFromHttp</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-dodelaycacheserverfallbackbackground">DeliveryOptimization/DODelayCacheServerFallbackBackground</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-dodelaycacheserverfallbackforeground">DeliveryOptimization/DODelayCacheServerFallbackForeground</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-dodelayforegrounddownloadfromhttp">DeliveryOptimization/DODelayForegroundDownloadFromHttp</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-dodownloadmode">DeliveryOptimization/DODownloadMode</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-dogroupid">DeliveryOptimization/DOGroupId</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-dogroupidsource">DeliveryOptimization/DOGroupIdSource</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-domaxbackgrounddownloadbandwidth">DeliveryOptimization/DOMaxBackgroundDownloadBandwidth</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-domaxcacheage">DeliveryOptimization/DOMaxCacheAge</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-domaxcachesize">DeliveryOptimization/DOMaxCacheSize</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-domaxdownloadbandwidth">DeliveryOptimization/DOMaxDownloadBandwidth</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-domaxforegrounddownloadbandwidth">DeliveryOptimization/DOMaxForegroundDownloadBandwidth</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-domaxuploadbandwidth">DeliveryOptimization/DOMaxUploadBandwidth</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-dominbackgroundqos">DeliveryOptimization/DOMinBackgroundQos</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-dominbatterypercentageallowedtoupload">DeliveryOptimization/DOMinBatteryPercentageAllowedToUpload</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-domindisksizeallowedtopeer">DeliveryOptimization/DOMinDiskSizeAllowedToPeer</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-dominfilesizetocache">DeliveryOptimization/DOMinFileSizeToCache</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-dominramallowedtopeer">DeliveryOptimization/DOMinRAMAllowedToPeer</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-domodifycachedrive">DeliveryOptimization/DOModifyCacheDrive</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-domonthlyuploaddatacap">DeliveryOptimization/DOMonthlyUploadDataCap</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-dopercentagemaxbackgroundbandwidth">DeliveryOptimization/DOPercentageMaxBackgroundBandwidth</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-dopercentagemaxdownloadbandwidth">DeliveryOptimization/DOPercentageMaxDownloadBandwidth</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-dopercentagemaxforegroundbandwidth">DeliveryOptimization/DOPercentageMaxForegroundBandwidth</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-dorestrictpeerselectionby">DeliveryOptimization/DORestrictPeerSelectionBy</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-dosethourstolimitbackgrounddownloadbandwidth">DeliveryOptimization/DOSetHoursToLimitBackgroundDownloadBandwidth</a>
  </dd>
  <dd>
    <a href="#deliveryoptimization-dosethourstolimitforegrounddownloadbandwidth">DeliveryOptimization/DOSetHoursToLimitForegroundDownloadBandwidth</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-doabsolutemaxcachesize"></a>**DeliveryOptimization/DOAbsoluteMaxCacheSize**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


Added in Windows 10, version 1607. Specifies the maximum size in GB of Delivery Optimization cache. This policy overrides the DOMaxCacheSize policy. The value 0 (zero) means "unlimited" cache. Delivery Optimization will clear the cache when the device is running low on disk space.

The default value is 10.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Absolute Max Cache Size (in GB)*
-   GP name: *AbsoluteMaxCacheSize*
-   GP element: *AbsoluteMaxCacheSize*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-doallowvpnpeercaching"></a>**DeliveryOptimization/DOAllowVPNPeerCaching**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


Added in Windows 10, version 1703. Specifies whether the device is allowed to participate in Peer Caching while connected via VPN to the domain network. This means the device can download from or upload to other domain network devices, either on VPN or on the corporate domain network.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Enable Peer Caching while the device connects via VPN*
-   GP name: *AllowVPNPeerCaching*
-   GP element: *AllowVPNPeerCaching*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - Not allowed.
-   1 - Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-docachehost"></a>**DeliveryOptimization/DOCacheHost**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

This policy allows you to configure one or more Microsoft Connected Cache servers to be used by Delivery Optimization.

One or more values can be added as either fully qualified domain names (FQDN) or IP addresses. To add multiple values, separate each FQDN or IP address by commas.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Cache Server Hostname*
-   GP name: *CacheHost*
-   GP element: *CacheHost*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-docachehostsource"></a>**DeliveryOptimization/DOCacheHostSource**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>8</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>8</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>8</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>8</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

This policy allows you to configure one or more Delivery Optimization in Network Cache servers through a custom DHCP Option. One or more values can be added as either fully qualified domain names (FQDN) or IP addresses.  To add multiple values, separate each FQDN or IP address by commas.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Cache Server Hostname Source*
-   GP name: *CacheHostSource*
-   GP element: *CacheHostSource*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 1 = DHCP Option ID.
- 2 = DHCP Option ID Force.

When DHCP Option ID (1) is set, the client will query DHCP Option ID 235 and use the returned FQDN or IP value as Cache Server Hostname value. This policy will be overridden when the [Cache Server Hostname](#deliveryoptimization-docachehost) policy has been set.

When DHCP Option ID Force (2) is set, the client will query DHCP Option ID 235 and use the returned FQDN or IP value as Cache Server Hostname value, and will override the Cache Server Hostname policy if it has been set.

> [!Note]
> If the DHCP Option ID is formatted incorrectly, the client will fall back to the [Cache Server Hostname](#deliveryoptimization-docachehost) policy value if that value has been set.

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-dodelaybackgrounddownloadfromhttp"></a>**DeliveryOptimization/DODelayBackgroundDownloadFromHttp**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1803. This policy allows you to delay the use of an HTTP source in a background download that is allowed to use peer-to-peer.

After the max delay is reached, the download will resume using HTTP, either downloading the entire payload or complementing the bytes that could not be downloaded from peers. Note that a download that is waiting for peer sources, will appear to be stuck for the end user. The recommended value is 1 hour (3600).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Delay background download from http (in secs)*
-   GP name: *DelayBackgroundDownloadFromHttp*
-   GP element: *DelayBackgroundDownloadFromHttp*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-dodelaycacheserverfallbackbackground"></a>**DeliveryOptimization/DODelayCacheServerFallbackBackground**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies the time in seconds to delay the fallback from Cache Server to the HTTP source for a background content download.

> [!NOTE]
> The [DODelayBackgroundDownloadFromHttp](#deliveryoptimization-dodelaybackgrounddownloadfromhttp) policy takes precedence over this policy to allow downloads from peers first.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Delay Background download Cache Server fallback (in seconds)*
-   GP name: *DelayCacheServerFallbackBackground*
-   GP element: *DelayCacheServerFallbackBackground*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
This policy is specified in seconds.  
Supported values: 0 - one month (in seconds)
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-dodelaycacheserverfallbackforeground"></a>**DeliveryOptimization/DODelayCacheServerFallbackForeground**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies the time in seconds to delay the fallback from Cache Server to the HTTP source for foreground content download.

> [!NOTE]
> The [DODelayForegroundDownloadFromHttp](#deliveryoptimization-dodelayforegrounddownloadfromhttp) policy takes precedence over this policy to allow downloads from peers first.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Delay Foreground download Cache Server fallback (in seconds)*
-   GP name: *DelayCacheServerFallbackForeground*
-   GP element: *DelayCacheServerFallbackForeground*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
This policy is specified in seconds.  
Supported values: 0 - one month (in seconds)
<!--/SupportedValues-->
<!--Example-->
<!--/Example-->
<!--Validation-->
<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-dodelayforegrounddownloadfromhttp"></a>**DeliveryOptimization/DODelayForegroundDownloadFromHttp**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1803. This policy allows you to delay the use of an HTTP source in a foreground (interactive) download that is allowed to use peer-to-peer.

After the max delay has reached, the download will resume using HTTP, either downloading the entire payload or complementing the bytes that could not be downloaded from Peers.

Note that a download that is waiting for peer sources, will appear to be stuck for the end user.

The recommended value is 1 minute (60).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Delay Foreground download from http (in secs)*
-   GP name: *DelayForegroundDownloadFromHttp*
-   GP element: *DelayForegroundDownloadFromHttp*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values as number of seconds:

-   0 to 86400 (1 day)
-   0 - managed by the cloud service
-   Default is not configured.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-dodownloadmode"></a>**DeliveryOptimization/DODownloadMode**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


Specifies the download method that Delivery Optimization can use in downloads of Windows Updates, Apps and App updates.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Download Mode*
-   GP name: *DownloadMode*
-   GP element: *DownloadMode*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – HTTP only, no peering.
-   1 (default) – HTTP blended with peering behind the same NAT.
-   2 – HTTP blended with peering across a private group. Peering occurs on devices in the same Active Directory Site (if it exists) or the same domain by default. When this option is selected, peering will cross NATs. To create a custom group use Group ID in combination with Mode 2.
-   3 – HTTP blended with Internet peering.
-   99 - Simple download mode with no peering. Delivery Optimization downloads using HTTP only and does not attempt to contact the Delivery Optimization cloud services. Added in Windows 10, version 1607.
-   100 - Bypass mode. Do not use Delivery Optimization and use BITS instead. Added in Windows 10, version 1607. Note that this value is deprecated and will be removed in a future release.
<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-dogroupid"></a>**DeliveryOptimization/DOGroupId**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


This Policy specifies an arbitrary group ID that the device belongs to. Use this if you need to create a single group for Local Network Peering for branches that are on different domains or are not on the same LAN. Note that this is a best effort optimization and should not be relied on for an authentication of identity.

> [!NOTE]
> You must use a GUID as the group ID.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Group ID*
-   GP name: *GroupId*
-   GP element: *GroupId*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-dogroupidsource"></a>**DeliveryOptimization/DOGroupIdSource**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1803. Set this policy to restrict peer selection to a specific source. Available options are: 1 = AD Site, 2 = Authenticated domain SID, 3 = DHCP Option ID, 4 = DNS Suffix, 5 = AAD.

When set, the Group ID will be assigned automatically from the selected source.

If you set this policy, the GroupID policy will be ignored.

The options set in this policy only apply to Group (2) download mode. If Group (2) isn't set as Download mode, this policy will be ignored.  

For option 3 - DHCP Option ID, the client will query DHCP Option ID 234 and use the returned GUID value as the Group ID.

Starting with Windows 10, version 1903, you can use the Azure Active Directory (Azure AD) Tenant ID as a means to define groups. To do this, set the value of DOGroupIdSource to 5.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Select the source of Group IDs*
-   GP name: *GroupIdSource*
-   GP element: *GroupIdSource*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   1 - AD site
-   2 - Authenticated domain SID
-   3 - DHCP user option
-   4 - DNS suffix
-   5 - AAD

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-domaxbackgrounddownloadbandwidth"></a>**DeliveryOptimization/DOMaxBackgroundDownloadBandwidth**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>8</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>8</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>8</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>8</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy specifies the maximum background download bandwidth in KiloBytes/second that the device can use across all concurrent download activities using Delivery Optimization.

The default value 0 (zero) means that Delivery Optimization dynamically adjusts to use the available bandwidth for downloads.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Maximum Background Download Bandwidth (in KB/s)*
-   GP name: *MaxBackgroundDownloadBandwidth*
-   GP element: *MaxBackgroundDownloadBandwidth*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-domaxcacheage"></a>**DeliveryOptimization/DOMaxCacheAge**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


Specifies the maximum time in seconds that each file is held in the Delivery Optimization cache after downloading successfully. The value 0 (zero) means "unlimited"; Delivery Optimization will hold the files in the cache longer and make the files available for uploads to other devices, as long as the cache size has not exceeded. The value 0 is new in Windows 10, version 1607.

The default value is 259200 seconds (3 days).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Max Cache Age (in seconds)*
-   GP name: *MaxCacheAge*
-   GP element: *MaxCacheAge*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-domaxcachesize"></a>**DeliveryOptimization/DOMaxCacheSize**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.

 
Specifies the maximum cache size that Delivery Optimization can utilize, as a percentage of disk size (1-100).

The default value is 20.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Max Cache Size (percentage)*
-   GP name: *MaxCacheSize*
-   GP element: *MaxCacheSize*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-domaxdownloadbandwidth"></a>**DeliveryOptimization/DOMaxDownloadBandwidth**  

<!--SupportedSKUs-->


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
<hr/>

<!--/Scope-->
<!--Description-->
This policy is deprecated. Use [DOMaxForegroundDownloadBandwidth](#deliveryoptimization-domaxforegrounddownloadbandwidth) and [DOMaxBackgroundDownloadBandwidth](#deliveryoptimization-domaxbackgrounddownloadbandwidth) policies instead.

<!--/Description-->
<!--ADMXMapped-->
<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-domaxforegrounddownloadbandwidth"></a>**DeliveryOptimization/DOMaxForegroundDownloadBandwidth**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>8</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>8</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>8</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>8</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy specifies the maximum foreground download bandwidth in KiloBytes/second that the device can use across all concurrent download activities using Delivery Optimization.

The default value 0 (zero) means that Delivery Optimization dynamically adjusts to use the available bandwidth for downloads.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Maximum Foreground Download Bandwidth (in KB/s)*
-   GP name: *MaxForegroundDownloadBandwidth*
-   GP element: *MaxForegroundDownloadBandwidth*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-domaxuploadbandwidth"></a>**DeliveryOptimization/DOMaxUploadBandwidth**  

<!--SupportedSKUs-->
<!--/SupportedSKUs-->
<!--Scope-->

<!--/Scope-->
<!--Description-->

This policy is deprecated because it only applies to uploads to Internet peers (only allowed when DownloadMode is set to 3) which is not used in commercial deployments. There is no alternate policy to use.

<!--/Description-->
<!--ADMXMapped-->
<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-dominbackgroundqos"></a>**DeliveryOptimization/DOMinBackgroundQos**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


Added in Windows 10, version 1607. Specifies the minimum download QoS (Quality of Service or speed) in KiloBytes/sec for background downloads. This policy affects the blending of peer and HTTP sources. Delivery Optimization complements the download from the HTTP source to achieve the minimum QoS value set.

The default value is 500.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Minimum Background QoS (in KB/s)*
-   GP name: *MinBackgroundQos*
-   GP element: *MinBackgroundQos*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-dominbatterypercentageallowedtoupload"></a>**DeliveryOptimization/DOMinBatteryPercentageAllowedToUpload**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Business, Enterprise, and Education editions and not supported in Windows 10 Mobile.

Added in Windows 10, version 1703. Specifies any value between 1 and 100 (in percentage) to allow the device to upload data to LAN and Group peers while on battery power. Uploads will automatically pause when the battery level drops below the set minimum battery level. The recommended value to set is 40 (for 40%) if you allow uploads on battery.

The default value is 0. The value 0 (zero) means "not limited" and the cloud service default value will be used.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow uploads while the device is on battery while under set Battery level (percentage)*
-   GP name: *MinBatteryPercentageAllowedToUpload*
-   GP element: *MinBatteryPercentageAllowedToUpload*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-domindisksizeallowedtopeer"></a>**DeliveryOptimization/DOMinDiskSizeAllowedToPeer**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Business, Enterprise, and Education editions and not supported in Windows 10 Mobile.


Added in Windows 10, version 1703. Specifies the required minimum disk size (capacity in GB) for the device to use Peer Caching. Recommended values: 64 GB to 256 GB.

> [!NOTE]
> If the DOMofidyCacheDrive policy is set, the disk size check will apply to the new working directory specified by this policy.

The default value is 32 GB.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Minimum disk size allowed to use Peer Caching (in GB)*
-   GP name: *MinDiskSizeAllowedToPeer*
-   GP element: *MinDiskSizeAllowedToPeer*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-dominfilesizetocache"></a>**DeliveryOptimization/DOMinFileSizeToCache**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Business, Enterprise, and Education editions and not supported in Windows 10 Mobile.


Added in Windows 10, version 1703. Specifies the minimum content file size in MB enabled to use Peer Caching. Recommended values: 1 MB to 100,000 MB.

The default value is 100 MB.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Minimum Peer Caching Content File Size (in MB)*
-   GP name: *MinFileSizeToCache*
-   GP element: *MinFileSizeToCache*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-dominramallowedtopeer"></a>**DeliveryOptimization/DOMinRAMAllowedToPeer**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Business, Enterprise, and Education editions and not supported in Windows 10 Mobile.


Added in Windows 10, version 1703. Specifies the minimum RAM size in GB required to use Peer Caching. For example, if the minimum set is 1 GB, then devices with 1 GB or higher available RAM will be allowed to use Peer caching. Recommended values: 1 GB to 4 GB.

The default value is 4 GB.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Minimum RAM capacity (inclusive) required to enable use of Peer Caching (in GB)*
-   GP name: *MinRAMAllowedToPeer*
-   GP element: *MinRAMAllowedToPeer*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-domodifycachedrive"></a>**DeliveryOptimization/DOModifyCacheDrive**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


Added in Windows 10, version 1607. Specifies the drive that Delivery Optimization should use for its cache. The drive location can be specified using environment variables, drive letter or using a full path.

By default, %SystemDrive% is used to store the cache.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Modify Cache Drive*
-   GP name: *ModifyCacheDrive*
-   GP element: *ModifyCacheDrive*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-domonthlyuploaddatacap"></a>**DeliveryOptimization/DOMonthlyUploadDataCap**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


Added in Windows 10, version 1607. Specifies the maximum total bytes in GB that Delivery Optimization is allowed to upload to Internet peers in each calendar month.

The value 0 (zero) means "unlimited"; No monthly upload limit is applied if 0 is set.

The default value is 20.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Monthly Upload Data Cap (in GB)*
-   GP name: *MonthlyUploadDataCap*
-   GP element: *MonthlyUploadDataCap*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-dopercentagemaxbackgroundbandwidth"></a>**DeliveryOptimization/DOPercentageMaxBackgroundBandwidth**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1803. Specifies the maximum background download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth. The default value 0 (zero) means that Delivery Optimization dynamically adjusts to use the available bandwidth for background downloads.

Note that downloads from LAN peers will not be throttled even when this policy is set.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Maximum Background Download Bandwidth (percentage)*
-   GP name: *PercentageMaxBackgroundBandwidth*
-   GP element: *PercentageMaxBackgroundBandwidth*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-dopercentagemaxdownloadbandwidth"></a>**DeliveryOptimization/DOPercentageMaxDownloadBandwidth**  

<hr/>

<!--Description-->
This policy is deprecated. Use [DOPercentageMaxForegroundBandwidth](#deliveryoptimization-dopercentagemaxforegroundbandwidth) and [DOPercentageMaxBackgroundBandwidth](#deliveryoptimization-dopercentagemaxbackgroundbandwidth) policies instead.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-dopercentagemaxforegroundbandwidth"></a>**DeliveryOptimization/DOPercentageMaxForegroundBandwidth**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1803. Specifies the maximum foreground download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth. The default value 0 (zero) means that Delivery Optimization dynamically adjusts to use the available bandwidth for foreground downloads.

Note that downloads from LAN peers will not be throttled even when this policy is set.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Maximum Foreground Download Bandwidth (percentage)*
-   GP name: *PercentageMaxForegroundBandwidth*
-   GP element: *PercentageMaxForegroundBandwidth*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-dorestrictpeerselectionby"></a>**DeliveryOptimization/DORestrictPeerSelectionBy**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1803. Set this policy to restrict peer selection via selected option. 
Options available are: 1=Subnet mask (more options will be added in a future release).

Option 1 (Subnet mask) applies to both Download Mode LAN (1) and Group (2).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Select a method to restrict Peer Selection*
-   GP name: *RestrictPeerSelectionBy*
-   GP element: *RestrictPeerSelectionBy*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   1 - Subnet mask.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-dosethourstolimitbackgrounddownloadbandwidth"></a>**DeliveryOptimization/DOSetHoursToLimitBackgroundDownloadBandwidth**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows&nbsp;10, version 1803. Specifies the maximum background download bandwidth that Delivery Optimization uses during and outside business hours across all concurrent download activities as a percentage of available download bandwidth.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Set Business Hours to Limit Background Download Bandwidth*
-   GP name: *SetHoursToLimitBackgroundDownloadBandwidth*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXBacked-->
<!--SupportedValues-->
This policy allows an IT Admin to define the following:

-  Business hours range (for example 06:00 to 18:00)
-  % of throttle for background traffic during business hours
-  % of throttle for background traffic outside of business hours

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="deliveryoptimization-dosethourstolimitforegrounddownloadbandwidth"></a>**DeliveryOptimization/DOSetHoursToLimitForegroundDownloadBandwidth**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows&nbsp;10, version 1803. Specifies the maximum foreground download bandwidth that Delivery Optimization uses during and outside business hours across all concurrent download activities as a percentage of available download bandwidth.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Set Business Hours to Limit Foreground Download Bandwidth*
-   GP name: *SetHoursToLimitForegroundDownloadBandwidth*
-   GP path: *Windows Components/Delivery Optimization*
-   GP ADMX file name: *DeliveryOptimization.admx*

<!--/ADMXBacked-->
<!--SupportedValues-->
This policy allows an IT Admin to define the following:

-  Business hours range (for example 06:00 to 18:00)
-  % of throttle for foreground traffic during business hours
-  % of throttle for foreground traffic outside of business hours

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

Footnotes:

- 1 - Available in Windows 10, version 1607.
- 2 - Available in Windows 10, version 1703.
- 3 - Available in Windows 10, version 1709.
- 4 - Available in Windows 10, version 1803.
- 5 - Available in Windows 10, version 1809.
- 6 - Available in Windows 10, version 1903.
- 7 - Available in Windows 10, version 1909.
- 8 - Available in Windows 10, version 2004.

<!--/Policies-->

