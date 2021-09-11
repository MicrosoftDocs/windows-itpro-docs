---
title: Policy CSP - ADMX_DiskNVCache
description: Policy CSP - ADMX_DiskNVCache
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nimishasatapathy
ms.date: 09/09/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_DiskNVCache
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_DiskNVCache policies  

<dl>
  <dd>
    <a href="#admx-disknvcache-bootresumepolicy">ADMX_DiskNVCache/BootResumePolicy</a>
  </dd>
  <dd>
    <a href="#admx-disknvcache-cachepowermodepolicy">ADMX_DiskNVCache/CachePowerModePolicy</a>
  </dd>
  <dd>
    <a href="#admx-disknvcache-featureoffpolicy">ADMX_DiskNVCache/FeatureOffPolicy</a>
  </dd>
  <dd>
    <a href="#admx-disknvcache-solidstatepolicy">ADMX_DiskNVCache/SolidStatePolicy</a>
  </dd>  
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-disknvcache-bootresumepolicy"></a>**DiskNVCache/BootResumePolicy**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
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
This policy setting turns off the boot and resume optimizations for the hybrid hard disks in the system.

- If you enable this policy setting, the system does not use the non-volatile (NV) cache to optimize boot and resume.
- If you disable this policy setting, the system uses the NV cache to achieve faster boot and resume.

The system determines the data that will be stored in the NV cache to optimize boot and resume.
The required data is stored in the NV cache during shutdown and hibernate, respectively. 
This might cause a slight increase in the time taken for shutdown and hibernate.
If you do not configure this policy setting, the default behavior is observed and the NV cache is used for boot and resume optimizations.  

> [!NOTE]
> This policy setting is applicable only if the NV cache feature is on.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off boot and resume optimizations*
-   GP name: *BootResumePolicy*
-   GP path: *Windows\NvCache!OptimizeBootAndResume*
-   GP ADMX file name: *DiskNVCache.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-disknvcache-cachepowermodepolicy"></a>**ADMX_DiskNVCache/CachePowerModePolicy**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
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
This policy setting turns off power save mode on the hybrid hard disks in the system.

- If you enable this policy setting, the hard disks are not put into NV cache power save mode and no power savings are achieved. 
- If you disable this policy setting, the hard disks are put into an NV cache power saving mode. 

In this mode, the system tries to save power by aggressively spinning down the disk.  
If you do not configure this policy setting, the default behavior is to allow the hybrid hard disks to be in power save mode.

> [!NOTE]
> This policy setting is applicable only if the NV cache feature is on. 

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off cache power mode*
-   GP name: *DiskNVCache/CachePowerModePolicy*
-   GP path: *Windows\NvCache!EnablePowerModeState*
-   GP ADMX file name: *DiskNVCache.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-disknvcache-featureoffpolicy"></a>**ADMX_DiskNVCache/FeatureOffPolicy**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Machine

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting turns off all support for the non-volatile (NV) cache on all hybrid hard disks in the system.

To check if you have hybrid hard disks in the system, from Device Manager, right-click the disk drive and select Properties.

The NV cache can be used to optimize boot and resume by reading data from the cache while the disks are spinning up. 
The NV cache can also be used to reduce the power consumption of the system by keeping the disks spun down while satisfying reads and writes from the cache.
- If you enable this policy setting, the system will not manage the NV cache and will not enable NV cache power saving mode.  
- If you disable this policy setting, the system will manage the NV cache on the disks if the other policy settings for the NV cache are appropriately configured. 

> [!NOTE]
> This policy setting will take effect on next boot. If you do not configure this policy setting, the default behavior is to turn on support for the NV cache.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off non-volatile cache feature*
-   GP name: *DiskNVCache/FeatureOffPolicy*
-   GP path: *Windows\NvCache!EnableNvCache*
-   GP ADMX file name: *DiskNVCache.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-disknvcache-solidstatepolicy"></a>**ADMX_DiskNVCache/SolidStatePolicy**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
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
This policy setting turns off the solid state mode for the hybrid hard disks.  
- If you enable this policy setting, frequently written files such as the file system metadata and registry may not be stored in the NV cache.
- If you disable this policy setting, the system will store frequently written data into the non-volatile (NV) cache.

This allows the system to exclusively run out of the NV cache and power down the disk for longer periods to save power. 

> [!NOTE]
> This can cause increased wear of the NV cache. If you do not configure this policy setting, the default behavior of the system is observed and frequently written files will be stored in the NV cache.  

> [!NOTE]
> This policy setting is applicable only if the NV cache feature is on.	

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off solid state mode*
-   GP name: *DiskNVCache/SolidStatePolicy*
-   GP path: *Windows\NvCache!EnableSolidStateMode*
-   GP ADMX file name: *DiskNVCache.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

