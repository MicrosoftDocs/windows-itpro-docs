---
title: Policy CSP - ControlPolicyConflict
description: Policy CSP - ControlPolicyConflict
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: MariciaAlforque
ms.date: 03/12/2018
---

# Policy CSP - ControlPolicyConflict


<hr/>

<!--Policies-->
## ControlPolicyConflict policies  

<dl>
  <dd>
    <a href="#controlpolicyconflict-mdmwinsovergp">ControlPolicyConflict/MDMWinsOverGP</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="controlpolicyconflict-mdmwinsovergp"></a>**ControlPolicyConflict/MDMWinsOverGP**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1803. This policy allows the IT admin to control which policy will be used whenever both the MDM policy and its equivalent Group Policy (GP) are set on the device.

> [!Note]  
> MDMWinsOverGP only applies to policies in Policy CSP. It does not apply to other MDM settings with equivalent GP settings that are defined on other configuration service providers.

This policy is used to ensure that MDM policy wins over GP when policy is configured on MDM channel. The default value is 0. The MDM policies in Policy CSP will behave as described if this policy value is set 1.
Note: This policy doesn’t support the Delete command and doesn’t support setting the value to 0 again after it was previously set to 1. Windows 10 version 1809 will support using the Delete command to set the value to 0 again, if it was previously set to 1.

The following list shows the supported values:

- 0 (default)
- 1 - The MDM policy is used and the GP policy is blocked.

The policy should be set at every sync to ensure the device removes any settings that conflict with MDM just as it does on the very first set of the policy. This ensures that:

-  GP settings that correspond to MDM applied settings are not conflicting 
-  The current Policy Manager policies are refreshed from what MDM has set 
-  Any values set by scripts/user outside of GP that conflict with MDM are removed

The [Policy DDF](policy-ddf-file.md) contains the following tags to identify the policies with equivalent GP:  

-  \<MSFT:ADMXBacked\>   
-  \<MSFT:ADMXMapped\>
-  \<MSFT:GPRegistryMappedName\>    
-  \<MSFT:GPDBMappedName\>  

For the list MDM-GP mapping list, see [Policies supported by GP
](policy-configuration-service-provider.md#policies-supported-by-gp).

The MDM Diagnostic report shows the applied configurations states of a device including policies, certificates, configuration sources, and resource information. The report includes a list of blocked GP settings because MDM equivalent is configured, if any. To get the diagnostic report, go to **Settings** > **Accounts** > **Access work or school** > and then click the desired work or school account. Scroll to the bottom of the page to **Advanced Diagnostic Report** and then click **Create Report**.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default)
- 1 - The MDM policy is used and the GP policy is blocked.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.
-   4 - Added in Windows 10, version 1803.

<!--/Policies-->

