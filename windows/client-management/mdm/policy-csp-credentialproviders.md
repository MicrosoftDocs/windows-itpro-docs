---
title: Policy CSP - CredentialProviders
description: Policy CSP - CredentialProviders
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
---

# Policy CSP - CredentialProviders

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

<!--StartPolicies-->
<hr/>

## CredentialProviders policies  

<!--StartPolicy-->
<a href="" id="credentialproviders-allowpinlogon"></a>**CredentialProviders/AllowPINLogon**  

<!--StartSKU-->
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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
This policy setting allows you to control whether a domain user can sign in using a convenience PIN.

If you enable this policy setting, a domain user can set up and sign in with a convenience PIN.

If you disable or don't configure this policy setting, a domain user can't set up and use a convenience PIN.

Note: The user's domain password will be cached in the system vault when using this feature.

To configure Windows Hello for Business, use the Administrative Template policies under Windows Hello for Business.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn on convenience PIN sign-in*
-   GP name: *AllowDomainPINLogon*
-   GP ADMX file name: *credentialproviders.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="credentialproviders-blockpicturepassword"></a>**CredentialProviders/BlockPicturePassword**  

<!--StartSKU-->
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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
This policy setting allows you to control whether a domain user can sign in using a picture password.

If you enable this policy setting, a domain user can't set up or sign in with a picture password.

If you disable or don't configure this policy setting, a domain user can set up and use a picture password.

Note that the user's domain password will be cached in the system vault when using this feature.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn off picture password sign-in*
-   GP name: *BlockDomainPicturePassword*
-   GP ADMX file name: *credentialproviders.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="credentialproviders-enablewindowsautopilotresetcredentials"></a>**CredentialProviders/EnableWindowsAutoPilotResetCredentials**  

<!--StartSKU-->
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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Added in Windows 10, version 1709. Boolean policy to enable the credential provider that triggers the PC refresh on a device. This policy does not actually trigger the refresh. When the policy is enabled, a WNF notification is generated that would schedule a task to update the visibility of the new provider. The admin user is required to authenticate to trigger the refresh on the target device.

The auto pilot reset feature allows admin to reset devices to a known good managed state while preserving the management enrollment. After the auto pilot reset is triggered the devices are for ready for use by information workers or students.

Default value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

<!--StartIoTCore-->
## <a href="" id="iotcore"></a>CredentialProviders policies supported by IoT Core  

-   [CredentialProviders/AllowPINLogon](#credentialproviders-allowpinlogon)  
-   [CredentialProviders/BlockPicturePassword](#credentialproviders-blockpicturepassword)  
<!--EndIoTCore-->

