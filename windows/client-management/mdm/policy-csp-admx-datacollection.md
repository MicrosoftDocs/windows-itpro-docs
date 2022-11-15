---
title: Policy CSP - ADMX_DataCollection
description: Learn about the Policy CSP - ADMX_DataCollection.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 12/01/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_DataCollection

<hr/>

<!--Policies-->
## ADMX_DataCollection policies

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<dl>
  <dd>
    <a href="#admx-datacollection-commercialidpolicy">ADMX_DataCollection/CommercialIdPolicy</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-datacollection-commercialidpolicy"></a>**ADMX_DataCollection/CommercialIdPolicy**

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
This policy setting defines the identifier used to uniquely associate this device’s telemetry data as belonging to a given organization.

If your organization is participating in a program that requires this device to be identified as belonging to your organization, then use this setting to provide that identification. The value for this setting will be provided by Microsoft as part of the onboarding process for the program.

If you disable or don't configure this policy setting, then Microsoft won't be able to use this identifier to associate this machine and its telemetry data with your organization.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure the Commercial ID*
-   GP name: *CommercialIdPolicy*
-   GP path: *Windows Components\Data Collection and Preview Builds*
-   GP ADMX file name: *DataCollection.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

> [!NOTE]
> These policies are for upcoming release.

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)
