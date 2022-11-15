---
title: Policy CSP - ADMX_DistributedLinkTracking
description: Learn about Policy CSP - ADMX_DistributedLinkTracking.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 03/22/2021
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_DistributedLinkTracking

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_DistributedLinkTracking policies

<dl>
  <dd>
    <a href="#admx-distributedlinktracking-dlt_allowdomainmode">ADMX_DistributedLinkTracking/DLT_AllowDomainMode</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-distributedlinktracking-dlt_allowdomainmode"></a>**ADMX_DistributedLinkTracking/DLT_AllowDomainMode**

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
> * Machine

<hr/>

<!--/Scope-->
<!--Description-->
This policy specifies that Distributed Link Tracking clients in this domain may use the Distributed Link Tracking (DLT) server, which runs on domain controllers.

The DLT client enables programs to track linked files that are moved within an NTFS volume, to another NTFS volume on the same computer, or to an NTFS volume on  another computer.

The DLT client can more reliably track links when allowed to use the DLT server.
This policy shouldn't be set unless the DLT server is running on all domain controllers in the domain.

> [!NOTE]
> This policy setting applies to all sites in Trusted zones.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow Distributed Link Tracking clients to use domain resources*
-   GP name: *DLT_AllowDomainMode*
-   GP path: *Windows\System!DLT_AllowDomainMode*
-   GP ADMX file name: *DistributedLinkTracking.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)