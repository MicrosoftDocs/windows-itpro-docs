---
title: Policy CSP - ADMX_DigitalLocker
description: Learn about Policy CSP - ADMX_DigitalLocker.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 08/31/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_DigitalLocker

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_DigitalLocker policies

<dl>
  <dd>
    <a href="#admx-digitallocker-digitalx-diableapplication-titletext-1">ADMX_DigitalLocker/Digitalx_DiableApplication_TitleText_1</a>
  </dd>
  <dd>
    <a href="#admx-digitallocker-digitalx-diableapplication-titletext-2">ADMX_DigitalLocker/Digitalx_DiableApplication_TitleText_2</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-digitallocker-digitalx-diableapplication-titletext-1"></a>**ADMX_DigitalLocker/Digitalx_DiableApplication_TitleText_1**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies whether Digital Locker can run.

Digital Locker is a dedicated download manager associated with Windows Marketplace and a feature of Windows that can be used to manage and download products acquired and stored in the user's Windows Marketplace Digital Locker.

If you enable this setting, Digital Locker won't run.

If you disable or don't configure this setting, Digital Locker can be run.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not allow Digital Locker to run*
-   GP name: *Digitalx_DiableApplication_TitleText_1*
-   GP path: *Windows Components/Digital Locker*
-   GP ADMX file name: *DigitalLocker.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-digitallocker-digitalx-diableapplication-titletext-2"></a>**ADMX_DigitalLocker/Digitalx_DiableApplication_TitleText_2**

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
This policy setting specifies whether Digital Locker can run.

Digital Locker is a dedicated download manager associated with Windows Marketplace and a feature of Windows that can be used to manage and download products acquired and stored in the user's Windows Marketplace Digital Locker.

If you enable this setting, Digital Locker won't run.

If you disable or don't configure this setting, Digital Locker can be run.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not allow Digital Locker to run*
-   GP name: *Digitalx_DiableApplication_TitleText_2*
-   GP path: *Windows Components/Digital Locker*
-   GP ADMX file name: *DigitalLocker.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)