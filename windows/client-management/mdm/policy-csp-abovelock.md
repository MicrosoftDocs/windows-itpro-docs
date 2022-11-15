---
title: Policy CSP - AboveLock
description: Learn the various AboveLock Policy configuration service provider (CSP) for Windows editions of Home, Pro, Business, and more.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/27/2019
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - AboveLock

<hr/>

<!--Policies-->
## AboveLock policies

<dl>
  <dd>
    <a href="#abovelock-allowcortanaabovelock">AboveLock/AllowCortanaAboveLock</a>
  </dd>
  <dd>
    <a href="#abovelock-allowtoasts">AboveLock/AllowToasts</a>
  </dd>
</dl>


<hr/>


<!--Policy-->
<a href="" id="abovelock-allowcortanaabovelock"></a>**AboveLock/AllowCortanaAboveLock**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
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
Added in Windows 10, version 1607. Specifies whether or not the user can interact with Cortana using speech while the system is locked. If you enable or don’t configure this setting, the user can interact with Cortana using speech while the system is locked. If you disable this setting, the system will need to be unlocked for the user to interact with Cortana using speech.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow Cortana above lock screen*
-   GP name: *AllowCortanaAboveLock*
-   GP path: *Windows Components/Search*
-   GP ADMX file name: *Search.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Not allowed.
-   1 (default) - Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="abovelock-allowtoasts"></a>**AboveLock/AllowToasts**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes, starting in Windows 10, version 1607|Yes|
|Enterprise|Yes, starting in Windows 10, version 1607|Yes|
|Education|Yes, starting in Windows 10, version 1607|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies whether to allow toast notifications above the device lock screen.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Not allowed.
-   1 (default) - Allowed.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[Policy CSP](policy-configuration-service-provider.md)