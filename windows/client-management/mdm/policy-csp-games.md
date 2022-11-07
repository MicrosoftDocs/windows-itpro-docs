---
title: Policy CSP - Games
description: Learn to use the Policy CSP - Games setting so that you can specify whether advanced gaming services can be used.
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

# Policy CSP - Games

<hr/>

<!--Policies-->
## Games policies

<dl>
  <dd>
    <a href="#games-allowadvancedgamingservices">Games/AllowAdvancedGamingServices</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="games-allowadvancedgamingservices"></a>**Games/AllowAdvancedGamingServices**

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
Added in Windows 10, version 1709. Specifies whether advanced gaming services can be used. These services may send data to Microsoft or publishers of games that use these services.

Supported value type is integer.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - Not Allowed
- 1 (default) - Allowed

<!--/SupportedValues-->
<!--/Policy-->
<hr/>


<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)