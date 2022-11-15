---
title: Policy CSP - LanmanWorkstation
description: Use the Policy CSP - LanmanWorkstation setting to determine if the SMB client will allow insecure guest sign ins to an SMB server.
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

# Policy CSP - LanmanWorkstation

<hr/>

<!--Policies-->
## LanmanWorkstation policies

<dl>
  <dd>
    <a href="#lanmanworkstation-enableinsecureguestlogons">LanmanWorkstation/EnableInsecureGuestLogons</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="lanmanworkstation-enableinsecureguestlogons"></a>**LanmanWorkstation/EnableInsecureGuestLogons**

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
This policy setting determines, if the SMB client will allow insecure guest sign in to an SMB server.

If you enable this policy setting or if you don't configure this policy setting, the SMB client will allow insecure guest sign in.

If you disable this policy setting, the SMB client will reject insecure guest sign in.

Insecure guest sign in are used by file servers to allow unauthenticated access to shared folders. While uncommon in an enterprise environment, insecure guest sign in are frequently used by consumer Network Attached Storage (NAS) appliances acting as file servers. Windows file servers require authentication, and don't use insecure guest sign in by default. Since insecure guest sign in are unauthenticated, important security features such as SMB Signing and SMB Encryption are disabled. As a result, clients that allow insecure guest sign in are vulnerable to various man-in-the-middle attacks that can result in data loss, data corruption, and exposure to malware. Additionally, any data written to a file server using an insecure guest sign in is potentially accessible to anyone on the network. Microsoft recommends disabling insecure guest sign in and configuring file servers to require authenticated access.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Enable insecure guest logons*
-   GP name: *Pol_EnableInsecureGuestLogons*
-   GP path: *Network/Lanman Workstation*
-   GP ADMX file name: *LanmanWorkstation.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
This setting supports a range of values between 0 and 1.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)