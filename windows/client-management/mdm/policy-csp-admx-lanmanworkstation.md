---
title: Policy CSP - ADMX_LanmanWorkstation
description: Policy CSP - ADMX_LanmanWorkstation
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 12/08/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_LanmanWorkstation
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_LanmanWorkstation policies  

<dl>
  <dd>
    <a href="#admx-lanmanworkstation-pol-ciphersuiteorder">ADMX_LanmanWorkstation/Pol_CipherSuiteOrder</a>
  </dd>
  <dd>
    <a href="#admx-lanmanworkstation-pol-enablehandlecachingforcafiles">ADMX_LanmanWorkstation/Pol_EnableHandleCachingForCAFiles</a>
  </dd>
  <dd>
    <a href="#admx-lanmanworkstation-pol-enableofflinefilesforcashares">ADMX_LanmanWorkstation/Pol_EnableOfflineFilesforCAShares</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-lanmanworkstation-pol-ciphersuiteorder"></a>**ADMX_LanmanWorkstation/Pol_CipherSuiteOrder**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines the cipher suites used by the SMB client.

If you enable this policy setting, cipher suites are prioritized in the order specified.

If you enable this policy setting and do not specify at least one supported cipher suite, or if you disable or do not configure this policy setting, the default cipher suite order is used.

SMB 3.11 cipher suites:

- AES_128_GCM
- AES_128_CCM
- AES_256_GCM
- AES_256_CCM

> [!NOTE]
> AES_256 is not supported on Windows 10 version 20H2 and lower. If you enter only AES_256 crypto lines, the older clients will not be able to connect anymore.

SMB 3.0 and 3.02 cipher suites:

- AES_128_CCM

How to modify this setting:

Arrange the desired cipher suites in the edit box, one cipher suite per line, in order from most to least preferred, with the most preferred cipher suite at the top. Remove any cipher suites you don't want to use.

> [!NOTE]
> When configuring this security setting, changes will not take effect until you restart Windows.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Cipher suite order*
-   GP name: *Pol_CipherSuiteOrder*
-   GP path: *Network\Lanman Workstation*
-   GP ADMX file name: *LanmanWorkstation.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-lanmanworkstation-pol-enablehandlecachingforcafiles"></a>**ADMX_LanmanWorkstation/Pol_EnableHandleCachingForCAFiles**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines the behavior of SMB handle caching for clients connecting to an SMB share where the Continuous Availability (CA) flag is enabled.

If you enable this policy setting, the SMB client will allow cached handles to files on CA shares. This may lead to better performance when repeatedly accessing a large number of unstructured data files on CA shares running in Microsoft Azure Files.

If you disable or do not configure this policy setting, Windows will prevent use of cached handles to files opened through CA shares.

> [!NOTE]
> This policy has no effect when connecting Scale-out File Server shares provided by a Windows Server. Microsoft does not recommend enabling this policy for clients that routinely connect to files hosted on a Windows Failover Cluster with the File Server for General Use role, as it can lead to adverse failover times and increased memory and CPU usage.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Handle Caching on Continuous Availability Shares*
-   GP name: *Pol_EnableHandleCachingForCAFiles*
-   GP path: *Network\Lanman Workstation*
-   GP ADMX file name: *LanmanWorkstation.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-lanmanworkstation-pol-enableofflinefilesforcashares"></a>**ADMX_LanmanWorkstation/Pol_EnableOfflineFilesforCAShares**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines the behavior of Offline Files on clients connecting to an SMB share where the Continuous Availability (CA) flag is enabled.

If you enable this policy setting, the "Always Available offline" option will appear in the File Explorer menu on a Windows computer when connecting to a CA-enabled share. Pinning of files on CA-enabled shares using client-side caching will also be possible.

If you disable or do not configure this policy setting, Windows will prevent use of Offline Files with CA-enabled shares.

> [!NOTE]
> Microsoft does not recommend enabling this group policy. Use of CA with Offline Files will lead to very long transition times between the online and offline states.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Offline Files Availability on Continuous Availability Shares*
-   GP name: *Pol_EnableOfflineFilesforCAShares*
-   GP path: *Network\Lanman Workstation*
-   GP ADMX file name: *LanmanWorkstation.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

> [!NOTE]
> These policies are for upcoming release.

<!--/Policies-->