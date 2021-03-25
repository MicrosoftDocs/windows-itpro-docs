---
title: Policy CSP - ADMX_FileRecovery
description: Policy CSP - ADMX_FileRecovery
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 03/24/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_FileRecovery
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_FileRecovery  

<dl>
  <dd>
    <a href="#admx-filerecovery-wdiscenarioexecutionpolicy">ADMX_FileRecovery/WdiScenarioExecutionPolicy</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-filerecovery-wdiscenarioexecutionpolicy"></a>**ADMX_FileRecovery/WdiScenarioExecutionPolicy**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to configure the recovery behavior for corrupted files to one of three states:  
- Regular: Detection, troubleshooting, and recovery of corrupted files will automatically start with a minimal UI display. Windows will attempt to present you with a dialog box when a system restart is required. This is the default recovery behavior for all corrupted files.  
- Silent: Detection, troubleshooting, and recovery of corrupted files will automatically start with no UI. Windows will log an administrator event when a system restart is required. This behavior is recommended for headless operation.  
- Troubleshooting Only: Detection and troubleshooting of corrupted files will automatically start with no UI. Recovery is not attempted automatically. 

Windows will log an administrator event with instructions if manual recovery is possible.  
- If you enable this setting, the recovery behavior for corrupted files will be set to either the regular (default), silent, or troubleshooting only state.  
- If you disable this setting, the recovery behavior for corrupted files will be disabled. No troubleshooting or resolution will be attempted.  

If you do not configure this setting, the recovery behavior for corrupted files will be set to the regular recovery behavior.  
No system or service restarts are required for changes to this policy to take immediate effect after a Group Policy refresh.  

> [!NOTE]
> This policy setting will take effect only when the Diagnostic Policy Service (DPS) is in the running state. 

When the service is stopped or disabled, system file recovery will not be attempted. 
The DPS can be configured with the Services snap-in to the Microsoft Management Console.

> [!NOTE]
> This policy setting applies to all sites in Trusted zones.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure Corrupted File Recovery behavior*
-   GP name: *WdiScenarioExecutionPolicy*
-   GP path: *System\Troubleshooting and Diagnostics\Corrupted File Recovery*
-   GP ADMX file name: *FileRecovery.admx*

<!--/ADMXBacked-->
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

