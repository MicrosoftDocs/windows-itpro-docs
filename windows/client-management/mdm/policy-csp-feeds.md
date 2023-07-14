---
title: Policy CSP - Feeds
description: Use the Policy CSP - Feeds setting policy specifies whether news and interests is allowed on the device.
ms.author: vinpa
ms.topic: reference
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 09/17/2021
ms.reviewer:
manager: aaroncz
---

# Policy CSP - Feeds

<hr/>

<!--Policies-->
## Feeds policies

<dl>
  <dd>
    <a href="#feeds-feedsenabled">Feeds/FeedsEnabled</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="feeds-feedsenabled"></a>**Feeds/FeedsEnabled**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Machine

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies, whether news and interests is allowed on the device.

The values for this policy are 1 and 0. This policy defaults to 1.

- 1 - Default - News and interests feature will be allowed on the taskbar. The settings UI will be present in Taskbar context menu, and users will be able to turn off or switch mode.

- 0 - News and interests feature will be turned off completely, and the settings UI in Taskbar context menu will be removed.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable news and interests on the taskbar*
-   GP name: *FeedsEnabled*
-   GP path: *Windows Components\News and interests*
-   GP ADMX file name: *Feeds.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)