---
title: Policy CSP - ADMX_Bits
description: Policy CSP - ADMX_Bits
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 10/20/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_Bits
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_Bits policies  

<dl>
  <dd>
    <a href="#admx-bits-bits-disablebranchcache">ADMX_Bits/BITS_DisableBranchCache</a>
  </dd>
  <dd>
    <a href="#admx-bits-bits-disablepeercachingclient">ADMX_Bits/BITS_DisablePeercachingClient</a>
  </dd>
  <dd>
    <a href="#admx-bits-bits-disablepeercachingserver">ADMX_Bits/BITS_DisablePeercachingServer</a>
  </dd>
  <dd>
    <a href="#admx-bits-bits-enablepeercaching">ADMX_Bits/BITS_EnablePeercaching</a>
  </dd>
  <dd>
    <a href="#admx-bits-bits-maxbandwidthservedforpeers">ADMX_Bits/BITS_MaxBandwidthServedForPeers</a>
  </dd>
  <dd>
    <a href="#admx-bits-bits-maxbandwidthv2-maintenance">ADMX_Bits/BITS_MaxBandwidthV2_Maintenance</a>
  </dd>
  <dd>
    <a href="#admx-bits-bits-maxbandwidthv2-work">ADMX_Bits/BITS_MaxBandwidthV2_Work</a>
  </dd>
  <dd>
    <a href="#admx-bits-bits-maxcachesize">ADMX_Bits/BITS_MaxCacheSize</a>
  </dd>
  <dd>
    <a href="#admx-bits-bits-maxcontentage">ADMX_Bits/BITS_MaxContentAge</a>
  </dd>
  <dd>
    <a href="#admx-bits-bits-maxdownloadtime">ADMX_Bits/BITS_MaxDownloadTime</a>
  </dd>
  <dd>
    <a href="#admx-bits-bits-maxfilesperjob">ADMX_Bits/BITS_MaxFilesPerJob</a>
  </dd>
  <dd>
    <a href="#admx-bits-bits-maxjobspermachine">ADMX_Bits/BITS_MaxJobsPerMachine</a>
  </dd>
  <dd>
    <a href="#admx-bits-bits-maxjobsperuser">ADMX_Bits/BITS_MaxJobsPerUser</a>
  </dd>
  <dd>
    <a href="#admx-bits-bits-maxrangesperfile">ADMX_Bits/BITS_MaxRangesPerFile</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-bits-bits-disablebranchcache"></a>**ADMX_Bits/BITS_DisableBranchCache**  

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
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Available in the latest Windows 10 Insider Preview Build. This setting affects whether the BITS client is allowed to use Windows Branch Cache. If the Windows Branch Cache component is installed and enabled on a computer, BITS jobs on that computer can use Windows Branch Cache by default.

If you enable this policy setting, the BITS client does not use Windows Branch Cache.

If you disable or do not configure this policy setting, the BITS client uses Windows Branch Cache.

> [!NOTE]
> This policy setting does not affect the use of Windows Branch Cache by applications other than BITS. This policy setting does not apply to BITS transfers over SMB. This setting has no effect if the computer's administrative settings for Windows Branch Cache disable its use entirely.
      
<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Do not allow the BITS client to use Windows Branch Cache*
-   GP name: *BITS_DisableBranchCache*
-   GP path: *Network\Background Intelligent Transfer Service (BITS)*
-   GP ADMX file name: *Bits.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-bits-bits-disablepeercachingclient"></a>**ADMX_Bits/BITS_DisablePeercachingClient**  

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
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies whether the computer will act as a BITS peer caching client. By default, when BITS peer caching is enabled, the computer acts as both a peer caching server (offering files to its peers) and a peer caching client (downloading files from its peers).

If you enable this policy setting, the computer will no longer use the BITS peer caching feature to download files; files will be downloaded only from the origin server. However, the computer will still make files available to its peers.

If you disable or do not configure this policy setting, the computer attempts to download peer-enabled BITS jobs from peer computers before reverting to the origin server.

> [!NOTE]
> This policy setting has no effect if the "Allow BITS peer caching" policy setting is disabled or not configured.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Do not allow the computer to act as a BITS Peercaching client*
-   GP name: *BITS_DisablePeercachingClient*
-   GP path: *Network\Background Intelligent Transfer Service (BITS)*
-   GP ADMX file name: *Bits.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-bits-bits-disablepeercachingserver"></a>**ADMX_Bits/BITS_DisablePeercachingServer**  

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
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies whether the computer will act as a BITS peer caching server. By default, when BITS peer caching is enabled, the computer acts as both a peer caching server (offering files to its peers) and a peer caching client (downloading files from its peers).

If you enable this policy setting, the computer will no longer cache downloaded files and offer them to its peers. However, the computer will still download files from peers.

If you disable or do not configure this policy setting, the computer will offer downloaded and cached files to its peers.

> [!NOTE]
> This setting has no effect if the "Allow BITS peer caching" setting is disabled or not configured.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Do not allow the computer to act as a BITS Peercaching server*
-   GP name: *BITS_DisablePeercachingServer*
-   GP path: *Network\Background Intelligent Transfer Service (BITS)*
-   GP ADMX file name: *Bits.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-bits-bits-enablepeercaching"></a>**ADMX_Bits/BITS_EnablePeercaching**  

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
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines if the Background Intelligent Transfer Service (BITS) peer caching feature is enabled on a specific computer. By default, the files in a BITS job are downloaded only from the origin server specified by the job's owner.

If BITS peer caching is enabled, BITS caches downloaded files and makes them available to other BITS peers. When transferring a download job, BITS first requests the files for the job from its peers in the same IP subnet. If none of the peers in the subnet have the requested files, BITS downloads them from the origin server.

If you enable this policy setting, BITS downloads files from peers, caches the files, and responds to content requests from peers. Using the "Do not allow the computer to act as a BITS peer caching server" and "Do not allow the computer to act as a BITS peer caching client" policy settings, it is possible to control BITS peer caching functionality at a more detailed level. However, it should be noted that the "Allow BITS peer caching" policy setting must be enabled for the other two policy settings to have any effect.

If you disable or do not configure this policy setting, the BITS peer caching feature will be disabled, and BITS will download files directly from the origin server.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Allow BITS Peercaching*
-   GP name: *BITS_EnablePeercaching*
-   GP path: *Network\Background Intelligent Transfer Service (BITS)*
-   GP ADMX file name: *Bits.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-bits-bits-maxbandwidthservedforpeers"></a>**ADMX_Bits/BITS_MaxBandwidthServedForPeers**  

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
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Available in the latest Windows 10 Insider Preview Build. This policy setting limits the network bandwidth that BITS uses for peer cache transfers (this setting does not affect transfers from the origin server).

To prevent any negative impact to a computer caused by serving other peers, by default BITS will use up to 30 percent of the bandwidth of the slowest active network interface. For example, if a computer has both a 100 Mbps network card and a 56 Kbps modem, and both are active, BITS will use a maximum of 30 percent of 56 Kbps. 

You can change the default behavior of BITS, and specify a fixed maximum bandwidth that BITS will use for peer caching.

If you enable this policy setting, you can enter a value in bits per second (bps) between 1048576 and 4294967200 to use as the maximum network bandwidth used for peer caching.

If you disable this policy setting or do not configure it, the default value of 30 percent of the slowest active network interface will be used.

> [!NOTE] 
> This setting has no effect if the "Allow BITS peer caching" policy setting is disabled or not configured.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Limit the maximum network bandwidth used for Peercaching*
-   GP name: *BITS_MaxBandwidthServedForPeers*
-   GP path: *Network\Background Intelligent Transfer Service (BITS)*
-   GP ADMX file name: *Bits.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-bits-bits-maxbandwidthv2-maintenance"></a>**ADMX_Bits/BITS_MaxBandwidthV2_Maintenance**  

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
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Available in the latest Windows 10 Insider Preview Build. This policy setting limits the network bandwidth that Background Intelligent Transfer Service (BITS) uses for background transfers during the maintenance days and hours. Maintenance schedules further limit the network bandwidth that is used for background transfers.

If you enable this policy setting, you can define a separate set of network bandwidth limits and set up a schedule for the maintenance period.

You can specify a limit to use for background jobs during a maintenance schedule. For example, if normal priority jobs are currently limited to 256 Kbps on a work schedule, you can further limit the network bandwidth of normal priority jobs to 0 Kbps from 8:00 A.M. to 10:00 A.M. on a maintenance schedule.

If you disable or do not configure this policy setting, the limits defined for work or non-work schedules will be used.

> [!NOTE]
> The bandwidth limits that are set for the maintenance period supersede any limits defined for work and other schedules.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Set up a maintenance schedule to limit the maximum network bandwidth used for BITS background transfers*
-   GP name: *BITS_MaxBandwidthV2_Maintenance*
-   GP path: *Network\Background Intelligent Transfer Service (BITS)*
-   GP ADMX file name: *Bits.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-bits-bits-maxbandwidthv2-work"></a>**ADMX_Bits/BITS_MaxBandwidthV2_Work**  

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
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Available in the latest Windows 10 Insider Preview Build. This policy setting limits the network bandwidth that Background Intelligent Transfer Service (BITS) uses for background transfers during the work and non-work days and hours. The work schedule is defined using a weekly calendar, which consists of days of the week and hours of the day. All hours and days that are not defined in a work schedule are considered non-work hours.

If you enable this policy setting, you can set up a schedule for limiting network bandwidth during both work and non-work hours. After the work schedule is defined, you can set the bandwidth usage limits for each of the three BITS background priority levels: high, normal, and low.

You can specify a limit to use for background jobs during a work schedule. For example, you can limit the network bandwidth of low priority jobs to 128 Kbps from 8:00 A.M. to 5:00 P.M. on Monday through Friday, and then set the limit to 512 Kbps for non-work hours.

If you disable or do not configure this policy setting, BITS uses all available unused bandwidth for background job transfers.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Set up a work schedule to limit the maximum network bandwidth used for BITS background transfers*
-   GP name: *BITS_MaxBandwidthV2_Work*
-   GP path: *Network\Background Intelligent Transfer Service (BITS)*
-   GP ADMX file name: *Bits.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-bits-bits-maxcachesize"></a>**ADMX_Bits/BITS_MaxCacheSize**  

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
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Available in the latest Windows 10 Insider Preview Build. This policy setting limits the maximum amount of disk space that can be used for the BITS peer cache, as a percentage of the total system disk size. BITS will add files to the peer cache and make those files available to peers until the cache content reaches the specified cache size. By default, BITS will use 1 percent of the total system disk for the peercache.

If you enable this policy setting, you can enter the percentage of disk space to be used for the BITS peer cache. You can enter a value between 1 percent and 80 percent.

If you disable or do not configure this policy setting, the default size of the BITS peer cache is 1 percent of the total system disk size.

> [!NOTE]
> This policy setting has no effect if the "Allow BITS peer caching" setting is disabled or not configured.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Limit the BITS Peercache size*
-   GP name: *BITS_MaxCacheSize*
-   GP path: *Network\Background Intelligent Transfer Service (BITS)*
-   GP ADMX file name: *Bits.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-bits-bits-maxcontentage"></a>**ADMX_Bits/BITS_MaxContentAge**  

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
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Available in the latest Windows 10 Insider Preview Build. This policy setting limits the maximum age of files in the Background Intelligent Transfer Service (BITS) peer cache. In order to make the most efficient use of disk space, by default BITS removes any files in the peer cache that have not been accessed in the past 90 days.

If you enable this policy setting, you can specify in days the maximum age of files in the cache. You can enter a value between 1 and 120 days.

If you disable or do not configure this policy setting, files that have not been accessed for the past 90 days will be removed from the peer cache.

> [!NOTE]
> This policy setting has no effect if the "Allow BITS Peercaching" policy setting is disabled or not configured.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Limit the age of files in the BITS Peercache*
-   GP name: *BITS_MaxContentAge*
-   GP path: *Network\Background Intelligent Transfer Service (BITS)*
-   GP ADMX file name: *Bits.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-bits-bits-maxdownloadtime"></a>**ADMX_Bits/BITS_MaxDownloadTime**  

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
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Available in the latest Windows 10 Insider Preview Build. This policy setting limits the amount of time that Background Intelligent Transfer Service (BITS) will take to download the files in a BITS job.

The time limit applies only to the time that BITS is actively downloading files. When the cumulative download time exceeds this limit, the job is placed in the error state.

By default BITS uses a maximum download time of 90 days (7,776,000 seconds).

If you enable this policy setting, you can set the maximum job download time to a specified number of seconds.

If you disable or do not configure this policy setting, the default value of 90 days (7,776,000 seconds) will be used.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Limit the maximum BITS job download time*
-   GP name: *BITS_MaxDownloadTime*
-   GP path: *Network\Background Intelligent Transfer Service (BITS)*
-   GP ADMX file name: *Bits.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-bits-bits-maxfilesperjob"></a>**ADMX_Bits/BITS_MaxFilesPerJob**  

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
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Available in the latest Windows 10 Insider Preview Build. This policy setting limits the number of files that a BITS job can contain. By default, a BITS job is limited to 200 files. You can use this setting to raise or lower the maximum number of files a BITS jobs can contain.

If you enable this policy setting, BITS will limit the maximum number of files a job can contain to the specified number.

If you disable or do not configure this policy setting, BITS will use the default value of 200 for the maximum number of files a job can contain.

> [!NOTE]
> BITS Jobs created by services and the local administrator account do not count toward this limit.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Limit the maximum number of files allowed in a BITS job*
-   GP name: *BITS_MaxFilesPerJob*
-   GP path: *Network\Background Intelligent Transfer Service (BITS)*
-   GP ADMX file name: *Bits.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-bits-bits-maxjobspermachine"></a>**ADMX_Bits/BITS_MaxJobsPerMachine**  

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
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Available in the latest Windows 10 Insider Preview Build. This policy setting limits the number of BITS jobs that can be created for all users of the computer. By default, BITS limits the total number of jobs that can be created on the computer to 300 jobs. You can use this policy setting to raise or lower the maximum number of user BITS jobs.

If you enable this policy setting, BITS will limit the maximum number of BITS jobs to the specified number.

If you disable or do not configure this policy setting, BITS will use the default BITS job limit of 300 jobs.

> [!NOTE]
> BITS jobs created by services and the local administrator account do not count toward this limit.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Limit the maximum number of BITS jobs for this computer*
-   GP name: *BITS_MaxJobsPerMachine*
-   GP path: *Network\Background Intelligent Transfer Service (BITS)*
-   GP ADMX file name: *Bits.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-bits-bits-maxjobsperuser"></a>**ADMX_Bits/BITS_MaxJobsPerUser**  

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
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Available in the latest Windows 10 Insider Preview Build. This policy setting limits the number of BITS jobs that can be created by a user. By default, BITS limits the total number of jobs that can be created by a user to 60 jobs. You can use this setting to raise or lower the maximum number of BITS jobs a user can create.

If you enable this policy setting, BITS will limit the maximum number of BITS jobs a user can create to the specified number.

If you disable or do not configure this policy setting, BITS will use the default user BITS job limit of 300 jobs.

> [!NOTE]
> This limit must be lower than the setting specified in the "Maximum number of BITS jobs for this computer" policy setting, or 300 if the "Maximum number of BITS jobs for this computer" policy setting is not configured. BITS jobs created by services and the local administrator account do not count toward this limit.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Limit the maximum number of BITS jobs for each user*
-   GP name: *BITS_MaxJobsPerUser*
-   GP path: *Network\Background Intelligent Transfer Service (BITS)*
-   GP ADMX file name: *Bits.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-bits-bits-maxrangesperfile"></a>**ADMX_Bits/BITS_MaxRangesPerFile**  

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
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Available in the latest Windows 10 Insider Preview Build. This policy setting limits the number of ranges that can be added to a file in a BITS job. By default, files in a BITS job are limited to 500 ranges per file. You can use this setting to raise or lower the maximum number ranges per file.

If you enable this policy setting, BITS will limit the maximum number of ranges that can be added to a file to the specified number.

If you disable or do not configure this policy setting, BITS will limit ranges to 500 ranges per file.

> [!NOTE]
> BITS Jobs created by services and the local administrator account do not count toward this limit.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Limit the maximum number of ranges that can be added to the file in a BITS job*
-   GP name: *BITS_MaxRangesPerFile*
-   GP path: *Network\Background Intelligent Transfer Service (BITS)*
-   GP ADMX file name: *Bits.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

> [!NOTE]
> These policies are currently only available as part of a Windows Insider release.

<!--/Policies-->

