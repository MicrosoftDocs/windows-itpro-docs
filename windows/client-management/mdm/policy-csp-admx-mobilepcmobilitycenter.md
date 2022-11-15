---
title: Policy CSP - ADMX_MobilePCMobilityCenter
description: Learn about Policy CSP - ADMX_MobilePCMobilityCenter.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/20/2021
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_MobilePCMobilityCenter

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_MobilePCMobilityCenter policies

<dl>
  <dd>
    <a href="#admx-mobilepcmobilitycenter-mobilitycenterenable_1">ADMX_MobilePCMobilityCenter/MobilityCenterEnable_1</a>
  </dd>
  <dd>
    <a href="#admx-mobilepcmobilitycenter-mobilitycenterenable_2">ADMX_MobilePCMobilityCenter/MobilityCenterEnable_2</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-mobilepcmobilitycenter-mobilitycenterenable_1"></a>**ADMX_MobilePCMobilityCenter/MobilityCenterEnable_1**

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
This policy setting turns off Windows Mobility Center.

- If you enable this policy setting, the user is unable to invoke Windows Mobility Center. The Windows Mobility Center UI is removed from all shell entry points and the .exe file doesn't launch it.
- If you disable this policy setting, the user is able to invoke Windows Mobility Center and the .exe file launches it.

If you don't configure this policy setting, Windows Mobility Center is on by default.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Windows Mobility Center*
-   GP name: *MobilityCenterEnable_1*
-   GP path: *Windows Components\Windows Mobility Center*
-   GP ADMX file name: *MobilePCMobilityCenter.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-mobilepcmobilitycenter-mobilitycenterenable_2"></a>**ADMX_MobilePCMobilityCenter/MobilityCenterEnable_2**

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
This policy setting turns off Windows Mobility Center.

- If you enable this policy setting, the user is unable to invoke Windows Mobility Center. The Windows Mobility Center UI is removed from all shell entry points and the .exe file doesn't launch it.
- If you disable this policy setting, the user is able to invoke Windows Mobility Center and the .exe file launches it.

If you don't configure this policy setting, Windows Mobility Center is on by default.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Windows Mobility Center*
-   GP name: *MobilityCenterEnable_2*
-   GP path: *Windows Components\Windows Mobility Center*
-   GP ADMX file name: *MobilePCMobilityCenter.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)
