---
title: Policy CSP - ADMX_ActiveXInstallService
description: Learn about the Policy CSP - ADMX_ActiveXInstallService.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 11/09/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_ActiveXInstallService

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).


<hr/>

<!--Policies-->
## ADMX_ActiveXInstallService policies

<dl>
  <dd>
    <a href="#admx-activexinstallservice-axisurlzonepolicies">ADMX_ActiveXInstallService/AxISURLZonePolicies</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-activexinstallservice-axisurlzonepolicies"></a>**ADMX_ActiveXInstallService/AxISURLZonePolicies**

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
This policy setting controls the installation of ActiveX controls for sites in Trusted zone.

If you enable this policy setting, ActiveX controls are installed according to the settings defined by this policy setting.

If you disable or don't configure this policy setting, ActiveX controls prompt the user before installation.

If the trusted site uses the HTTPS protocol, this policy setting can also control how ActiveX Installer Service responds to certificate errors. By default all HTTPS connections must supply a server certificate that passes all validation criteria. If a trusted site has a certificate error but you want to trust it anyway, you can select the certificate errors that you want to ignore.

> [!NOTE]
> This policy setting applies to all sites in Trusted zones.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Establish ActiveX installation policy for sites in Trusted zones*
-   GP name: *AxISURLZonePolicies*
-   GP path: *Windows Components\ActiveX Installer Service*
-   GP ADMX file name: *ActiveXInstallService.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)