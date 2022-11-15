---
title: Policy CSP - ADMX_MobilePCPresentationSettings
description: Learn about Policy CSP - ADMX_MobilePCPresentationSettings.
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

# Policy CSP - ADMX_MobilePCPresentationSettings

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_MobilePCPresentationSettings policies

<dl>
  <dd>
    <a href="#admx-mobilepcpresentationsettings-presentationsettingsenable_1">ADMX_MobilePCPresentationSettings/PresentationSettingsEnable_1</a>
  </dd>
  <dd>
    <a href="#admx-mobilepcpresentationsettings-presentationsettingsenable_2">ADMX_MobilePCPresentationSettings/PresentationSettingsEnable_2</a>
  </dd>
</dl>

<hr/>

<!--Policy-->

<a href="" id="admx-mobilepcpresentationsettings-presentationsettingsenable_1"></a>**ADMX_MobilePCPresentationSettings/PresentationSettingsEnable_1**


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
This policy setting turns off Windows presentation settings.

If you enable this policy setting, Windows presentation settings can't be invoked.

If you disable this policy setting, Windows presentation settings can be invoked.

The presentation settings icon will be displayed in the notification area. This will give users a quick and easy way to configure their system settings before a presentation to block system notifications and screen blanking, adjust speaker volume, and apply a custom background image.

> [!NOTE]
> Users will be able to customize their system settings for presentations in Windows Mobility Center.
If you do not configure this policy setting, Windows presentation settings can be invoked.


<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Windows presentation settings*
-   GP name: *PresentationSettingsEnable_1*
-   GP path: *Windows Components\Presentation Settings*
-   GP ADMX file name: *MobilePCPresentationSettings.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-mobilepcpresentationsettings-presentationsettingsenable_2"></a>**ADMX_MobilePCPresentationSettings/PresentationSettingsEnable_2**

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
This policy setting turns off Windows presentation settings.

If you enable this policy setting, Windows presentation settings can't be invoked.

If you disable this policy setting, Windows presentation settings can be invoked.

The presentation settings icon will be displayed in the notification area. This will give users a quick and easy way to configure their system settings before a presentation to block system notifications and screen blanking, adjust speaker volume, and apply a custom background image.

> [!NOTE]
> Users will be able to customize their system settings for presentations in Windows Mobility Center.

If you do not configure this policy setting, Windows presentation settings can be invoked.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Windows presentation settings*
-   GP name: *PresentationSettingsEnable_2*
-   GP path: *Windows Components\Presentation Settings*
-   GP ADMX file name: *MobilePCPresentationSettings.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)