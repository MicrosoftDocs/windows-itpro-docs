---
title: Policy CSP - DataProtection
description: Use the Policy CSP - DataProtection setting to block direct memory access (DMA) for all hot pluggable PCI downstream ports until a user logs into Windows.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: aaroncz
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

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to block direct memory access (DMA) for all hot pluggable PCI downstream ports until a user logs into Windows.

Once a user logs in, Windows will enumerate the PCI devices connected to the host plug PCI ports. Every time the user locks the machine, DMA will be blocked on hot plug PCI ports with no children devices until the user logs in again. Devices which were already enumerated when the machine was unlocked will continue to function until unplugged. This policy setting is only enforced when [BitLocker Device Encryption](/windows/security/information-protection/bitlocker/bitlocker-device-encryption-overview-windows-10#bitlocker-device-encryption) is enabled.

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

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

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



<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)
