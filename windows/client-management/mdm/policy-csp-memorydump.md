---
title: Policy CSP - MemoryDump
description: Use the Policy CSP
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

# Policy CSP - MemoryDump

<hr/>

<!--Policies-->
## MemoryDump policies

<dl>
  <dd>
    <a href="#memorydump-allowcrashdump">MemoryDump/AllowCrashDump</a>
  </dd>
  <dd>
    <a href="#memorydump-allowlivedump">MemoryDump/AllowLiveDump</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="memorydump-allowcrashdump"></a>**MemoryDump/AllowCrashDump**

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
This policy setting decides if crash dump collection on the machine is allowed or not.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - Disable crash dump collection.
- 1 (default) - Allow crash dump collection.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="memorydump-allowlivedump"></a>**MemoryDump/AllowLiveDump**

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
This policy setting decides if crash dump collection on the machine is allowed or not.

<!--/Description-->

<!--SupportedValues-->
The following list shows the supported values:

- 0 - Disable crash dump collection.
- 1 (default) - Allow crash dump collection.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)