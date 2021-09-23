---
title: Policy CSP - ADMX_pca
description: Policy CSP - ADMX_pca
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nimishasatapathy
ms.date: 09/20/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_pca
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_pca policies  

<dl>
  <dd>
    <a href="#admx-pca-detectdeprecatedcomcomponentfailurespolicy">ADMX_pca/DetectDeprecatedCOMComponentFailuresPolicy</a>
  </dd>
  <dd>
    <a href="#admx-pca-detectdeprecatedcomponentfailurespolicy">ADMX_pca/DetectDeprecatedComponentFailuresPolicy</a>
  </dd>
  <dd>
    <a href="#admx-pca-detectinstallfailurespolicy">ADMX_pca/DetectInstallFailuresPolicy</a>
  </dd>
  <dd>
    <a href="#admx-pca-detectundetectedinstallerspolicy">ADMX_pca/DetectUndetectedInstallersPolicy</a>
  </dd>
  <dd>
    <a href="#admx-pca-detectupdatefailurespolicy">ADMX_pca/DetectUpdateFailuresPolicy</a>
  </dd>
  <dd>
    <a href="#admx-pca-disablepcauipolicy">ADMX_pca/DisablePcaUIPolicy</a>
  </dd>
  <dd>
    <a href="#admx-pca-detectblockeddriverspolicy">ADMX_pca/DetectBlockedDriversPolicy</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href=""id="admx-pca-detectdeprecatedcomcomponentfailurespolicy"></a>**ADMX_pca/DetectDeprecatedCOMComponentFailuresPolicy**  

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
This policy setting configures the Program Compatibility Assistant (PCA) to diagnose failures with application and driver compatibility.  

- If you enable this policy setting, the PCA is configured to detect failures during application installation, failures during application runtime, and drivers blocked due to compatibility issues. When failures are detected, the PCA will provide options to run the application in a compatibility mode or get help online through a Microsoft website.  
- If you disable this policy setting, the PCA does not detect compatibility issues for applications and drivers.  

If you do not configure this policy setting, the PCA is configured to detect failures during application installation, failures during application runtime, and drivers blocked due to compatibility issues.  

> [!NOTE]
> This policy setting has no effect if the "Turn off Program Compatibility Assistant" policy setting is enabled. 

The Diagnostic Policy Service (DPS) and Program Compatibility Assistant Service must be running for the PCA to run. These services can be configured by using the Services snap-in to the Microsoft Management Console.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Detect compatibility issues for applications and drivers*
-   GP name: *DetectDeprecatedCOMComponentFailuresPolicy*
-   GP path: *System\Troubleshooting and Diagnostics\Application Compatibility Diagnostics*
-   GP ADMX file name: *pca.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>
<a href="" id="admx-pca-detectdeprecatedcomponentfailurespolicy"></a>**ADMX_pca/DetectDeprecatedComponentFailuresPolicy**  

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
This setting exists only for backward compatibility, and is not valid for this version of Windows. 

To configure the Program Compatibility Assistant, use the 'Turn off Program Compatibility Assistant' setting under Computer Configuration\Administrative 
Templates\Windows Components\Application Compatibility.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Detect application install failures*
-   GP name: *DetectDeprecatedComponentFailuresPolicy*
-   GP path: *System\Troubleshooting and Diagnostics\Application Compatibility Diagnostics*
-   GP ADMX file name: *pca.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<a href="" id="admx-pca-detectinstallfailurespolicy"></a>**ADMX_pca/DetectInstallFailuresPolicy**  

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

This setting exists only for backward compatibility, and is not valid for this version of Windows. To configure the Program Compatibility Assistant, use the 'Turn off Program Compatibility Assistant' setting under Computer Configuration\Administrative Templates\Windows Components\Application Compatibility.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Detect applications unable to launch installers under UAC*
-   GP name: *DetectInstallFailuresPolicy*
-   GP path: *System\Troubleshooting and Diagnostics\Application Compatibility Diagnostics*
-   GP ADMX file name: *pca.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<a href="" id="admx-pca-detectundetectedinstallerspolicy"></a>**ADMX_pca/DetectUndetectedInstallersPolicy**  

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

This setting exists only for backward compatibility, and is not valid for this version of Windows. To configure the Program Compatibility Assistant, use the 'Turn off Program Compatibility Assistant' setting under Computer Configuration\Administrative Templates\Windows Components\Application Compatibility.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Detect application failures caused by deprecated Windows DLLs*
-   GP name: *DetectUndetectedInstallersPolicy*
-   GP path: *System\Troubleshooting and Diagnostics\Application Compatibility Diagnostics*
-   GP ADMX file name: *pca.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<a href="" id="admx-pca-detectupdatefailurespolicy"></a>**ADMX_pca/DetectUpdateFailuresPolicy**  

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

This setting exists only for backward compatibility, and is not valid for this version of Windows. 
To configure the Program Compatibility Assistant, use the 'Turn off Program Compatibility Assistant' setting under Computer Configuration\Administrative Templates\Windows Components\Application Compatibility.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Detect application failures caused by deprecated COM objects*
-   GP name: *DetectUpdateFailuresPolicy*
-   GP path: *System\Troubleshooting and Diagnostics\Application Compatibility Diagnostics*
-   GP ADMX file name: *pca.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<a href="" id="admx-pca-disablepcauipolicy"></a>**ADMX_pca/DisablePcaUIPolicy**  

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

This setting exists only for backward compatibility, and is not valid for this version of Windows. 
To configure the Program Compatibility Assistant, use the 'Turn off Program Compatibility Assistant' setting under Computer Configuration\Administrative Templates\Windows Components\Application Compatibility.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Detect application installers that need to be run as administrator*
-   GP name: *DisablePcaUIPolicy*
-   GP path: *System\Troubleshooting and Diagnostics\Application Compatibility Diagnostics*
-   GP ADMX file name: *pca.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<a href="" id="admx-pca-detectblockeddriverspolicy"></a>**ADMX_pca/DetectBlockedDriversPolicy**  

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

This setting exists only for backward compatibility, and is not valid for this version of Windows. 
To configure the Program Compatibility Assistant, use the 'Turn off Program Compatibility Assistant' setting under Computer Configuration\Administrative Templates\Windows Components\Application Compatibility.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Notify blocked drivers*
-   GP name: *DetectBlockedDriversPolicy*
-   GP path: *System\Troubleshooting and Diagnostics\Application Compatibility Diagnostics*
-   GP ADMX file name: *pca.admx*

<!--/ADMXBacked-->
<!--/Policy-->

> [!NOTE]
> These policies are currently only available as part of a Windows Insider release.

<!--/Policies-->

