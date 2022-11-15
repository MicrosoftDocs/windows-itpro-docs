---
title: Policy CSP - ADMX_COM
description: Learn about the Policy CSP - ADMX_COM.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 08/18/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_COM

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_COM policies

<dl>
  <dd>
    <a href="#admx-com-appmgmt-com-searchforclsid-1">ADMX_COM/AppMgmt_COM_SearchForCLSID_1</a>
  </dd>
  <dd>
    <a href="#admx-com-appmgmt-com-searchforclsid-2">ADMX_COM/AppMgmt_COM_SearchForCLSID_2</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-com-appmgmt-com-searchforclsid-1"></a>**ADMX_COM/AppMgmt_COM_SearchForCLSID_1**

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
This policy setting directs the system to search Active Directory for missing Component Object Model (COM) components that a program requires.

Many Windows programs, such as the MMC snap-ins, use the interfaces provided by the COM components. These programs can't perform all their functions unless Windows has internally registered the required components.

If you enable this policy setting and a component registration is missing, the system searches for it in Active Directory and, if it's found, downloads it. The resulting searches might make some programs start or run slowly.

If you disable or don't configure this policy setting, the program continues without the registration. As a result, the program might not perform all its functions, or it might stop.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Download missing COM components*
-   GP name: *AppMgmt_COM_SearchForCLSID_1*
-   GP path: *System*
-   GP ADMX file name: *COM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-com-appmgmt-com-searchforclsid-2"></a>**ADMX_COM/AppMgmt_COM_SearchForCLSID_2**

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
This policy setting directs the system to search Active Directory for missing Component Object Model (COM) components that a program requires.

Many Windows programs, such as the MMC snap-ins, use the interfaces provided by the COM components. These programs can't perform all their functions unless Windows has internally registered the required components.

If you enable this policy setting and a component registration is missing, the system searches for it in Active Directory and, if it's found, downloads it. The resulting searches might make some programs start or run slowly.

If you disable or don't configure this policy setting, the program continues without the registration. As a result, the program might not perform all its functions, or it might stop.

This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Download missing COM components*
-   GP name: *AppMgmt_COM_SearchForCLSID_2*
-   GP path: *System*
-   GP ADMX file name: *COM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)