---
title: Policy CSP - EAP
description: Learn how to use the Policy CSP - Education setting to control graphing functionality in the Windows Calculator app.
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

# Policy CSP - EAP

<hr/>

<!--Policies-->
## EAP policies

<dl>
  <dd>
    <a href="#eap-allowtls1_3">EAP/AllowTLS1_3</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="eap-allowtls1_3"></a>**EAP/AllowTLS1_3**

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
Added in Windows 10, version 21H1. This policy setting allows or disallows use of TLS 1.3 during EAP client authentication.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *AllowTLS1_3*
-   GP name: *AllowTLS1_3*
-   GP path: *Windows Components/EAP*
-   GP ADMX file name: *EAP.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 – Use of TLS version 1.3 is not allowed for authentication.
- 1 (default) – Use of TLS version 1.3 is allowed for authentication.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>


<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)