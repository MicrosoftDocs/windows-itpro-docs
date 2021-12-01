---
title: Policy CSP - LanmanWorkstation
description: Use the Policy CSP - LanmanWorkstation setting to determine if the SMB client will allow insecure guest logons to an SMB server.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: dansimp
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
This policy setting determines if the SMB client will allow insecure guest logons to an SMB server.

If you enable this policy setting or if you do not configure this policy setting, the SMB client will allow insecure guest logons.

If you disable this policy setting, the SMB client will reject insecure guest logons.

Insecure guest logons are used by file servers to allow unauthenticated access to shared folders. While uncommon in an enterprise environment, insecure guest logons are frequently used by consumer Network Attached Storage (NAS) appliances acting as file servers. Windows file servers require authentication and do not use insecure guest logons by default. Since insecure guest logons are unauthenticated, important security features such as SMB Signing and SMB Encryption are disabled. As a result, clients that allow insecure guest logons are vulnerable to a variety of man-in-the-middle attacks that can result in data loss, data corruption, and exposure to malware. Additionally, any data written to a file server using an insecure guest logon is potentially accessible to anyone on the network. Microsoft recommends disabling insecure guest logons and configuring file servers to require authenticated access.

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

