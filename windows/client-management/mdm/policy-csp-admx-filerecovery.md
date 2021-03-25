---
title: Policy CSP - ADMX_FileRecovery
description: Policy CSP - ADMX_FileRecovery
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 03/02/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_FileRecovery
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_FileRecovery policies  

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
> * Machine

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting substitutes custom alert text in the disk diagnostic message shown to users when a disk reports a S.M.A.R.T. fault. 

If you enable this policy setting, Windows displays custom alert text in the disk diagnostic message. The custom text may not exceed 512 characters. 

If you disable or do not configure this policy setting, Windows displays the default alert text in the disk diagnostic message. 

No reboots or service restarts are required for this policy setting to take effect: changes take effect immediately. 

This policy setting only takes effect if the Disk Diagnostic scenario policy setting  is enabled or not configured and the Diagnostic Policy Service (DPS) is in the running state. When the service is stopped or disabled, diagnostic scenarios are not executed. The DPS can be configured with the Services snap-in to the Microsoft Management Console. 

> [!NOTE]
> For Windows Server systems, this policy setting applies only if the Desktop Experience optional component is installed and the Remote Desktop Services role is not installed.

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
-   GP English name: *Disk Diagnostic: Configure execution level*
-   GP name: *WdiScenarioExecutionPolicy*
-   GP path: *System\Troubleshooting and Diagnostics\Disk Diagnostic*
-   GP ADMX file name: *FileRecovery.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

Footnotes:

- 1 - Available in Windows 10, version 1607
- 2 - Available in Windows 10, version 1703
- 3 - Available in Windows 10, version 1709
- 4 - Available in Windows 10, version 1803
- 5 - Available in Windows 10, version 1809
- 6 - Available in Windows 10, version 1903
- 7 - Available in Windows 10, version 1909
- 8 - Available in Windows 10, version 2004
- 9 - Available in Windows 10, version 20H2

<!--/Policies-->

