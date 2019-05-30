---
title: Policy CSP - DataProtection
description: Policy CSP - DataProtection
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 01/26/2019
ms.reviewer: 
manager: dansimp
---

# Policy CSP - DataProtection



<hr/>

<!--Policies-->
## DataProtection policies  

<dl>
  <dd>
    <a href="#dataprotection-allowdirectmemoryaccess">DataProtection/AllowDirectMemoryAccess</a>
  </dd>
  <dd>
    <a href="#dataprotection-legacyselectivewipeid">DataProtection/LegacySelectiveWipeID</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="dataprotection-allowdirectmemoryaccess"></a>**DataProtection/AllowDirectMemoryAccess**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
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
This policy setting allows you to block direct memory access (DMA) for all hot pluggable PCI downstream ports until a user logs into Windows. Once a user logs in, Windows will enumerate the PCI devices connected to the host plug PCI ports. Every time the user locks the machine, DMA will be blocked on hot plug PCI ports with no children devices until the user logs in again. Devices which were already enumerated when the machine was unlocked will continue to function until unplugged. This policy setting is only enforced when [BitLocker Device Encryption](https://docs.microsoft.com/windows/security/information-protection/bitlocker/bitlocker-device-encryption-overview-windows-10#bitlocker-device-encryption) is enabled.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="dataprotection-legacyselectivewipeid"></a>**DataProtection/LegacySelectiveWipeID**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
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
> [!IMPORTANT]
> This policy may change in a future release. It may be used for testing purposes, but should not be used in a production environment at this time.

 
Setting used by Windows 8.1 Selective Wipe.

> [!NOTE]
> This policy is not recommended for use in Windows 10.

<!--/Description-->
<!--/Policy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.
-   4 - Added in Windows 10, version 1803.

<!--/Policies-->

<!--StartIoTCore-->
## <a href="" id="iotcore"></a>DataProtection policies supported by IoT Core  

-   [DataProtection/AllowDirectMemoryAccess](#dataprotection-allowdirectmemoryaccess)  
<!--EndIoTCore-->

