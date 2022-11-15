---
title: Policy CSP - ADMX_NCSI
description: Learn about Policy CSP - ADMX_NCSI.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/14/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_NCSI

>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_NCSI policies

<dl>
  <dd>
    <a href="#admx-ncsi-ncsi-corpdnsprobecontent">ADMX_NCSI/NCSI_CorpDnsProbeContent</a>
  </dd>
  <dd>
    <a href="#admx-ncsi-ncsi-corpdnsprobehost">ADMX_NCSI/NCSI_CorpDnsProbeHost</a>
  </dd>
  <dd>
    <a href="#admx-ncsi-ncsi-corpsiteprefixes">ADMX_NCSI/NCSI_CorpSitePrefixes</a>
  </dd>
  <dd>
    <a href="#admx-ncsi-ncsi-corpwebprobeurl">ADMX_NCSI/NCSI_CorpWebProbeUrl</a>
  </dd>
  <dd>
    <a href="#admx-ncsi-ncsi-domainlocationdeterminationurl">ADMX_NCSI/NCSI_DomainLocationDeterminationUrl</a>
  </dd>
  <dd>
    <a href="#admx-ncsi-ncsi-globaldns">ADMX_NCSI/NCSI_GlobalDns</a>
  </dd>
  <dd>
    <a href="#admx-ncsi-ncsi-passivepolling">ADMX_NCSI/NCSI_PassivePolling</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-ncsi-ncsi-corpdnsprobecontent"></a>**ADMX_NCSI/NCSI_CorpDnsProbeContent**

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
This policy setting enables you to specify the expected address of the host name used for the DNS probe. Successful resolution of the host name to this address indicates corporate connectivity.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify corporate DNS probe host address*
-   GP name: *NCSI_CorpDnsProbeContent*
-   GP path: *Network\Network Connectivity Status Indicator*
-   GP ADMX file name: *NCSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-ncsi-ncsi-corpdnsprobehost"></a>**ADMX_NCSI/NCSI_CorpDnsProbeHost**

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
This policy setting enables you to specify the host name of a computer known to be on the corporate network. Successful resolution of this host name to the expected address indicates corporate connectivity.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify corporate DNS probe host name*
-   GP name: *NCSI_CorpDnsProbeHost*
-   GP path: *Network\Network Connectivity Status Indicator*
-   GP ADMX file name: *NCSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-ncsi-ncsi-corpsiteprefixes"></a>**ADMX_NCSI/NCSI_CorpSitePrefixes**

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
This policy setting enables you to specify the list of IPv6 corporate site prefixes to monitor for corporate connectivity. Reachability of addresses with any of the prefixes indicates corporate connectivity.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify corporate site prefix list*
-   GP name: *NCSI_CorpSitePrefixes*
-   GP path: *Network\Network Connectivity Status Indicator*
-   GP ADMX file name: *NCSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-ncsi-ncsi-corpwebprobeurl"></a>**ADMX_NCSI/NCSI_CorpWebProbeUrl**

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
This policy setting enables you to specify the URL of the corporate website, against which an active probe is performed.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify corporate Website probe URL*
-   GP name: *NCSI_CorpWebProbeUrl*
-   GP path: *Network\Network Connectivity Status Indicator*
-   GP ADMX file name: *NCSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-ncsi-ncsi-domainlocationdeterminationurl"></a>**ADMX_NCSI/NCSI_DomainLocationDeterminationUrl**

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
This policy setting enables you to specify the HTTPS URL of the corporate website that clients use to determine the current domain location (that is, whether the computer is inside or outside the corporate network). Reachability of the URL destination indicates that the client location is inside corporate network; otherwise it is outside the network.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify domain location determination URL*
-   GP name: *NCSI_DomainLocationDeterminationUrl*
-   GP path: *Network\Network Connectivity Status Indicator*
-   GP ADMX file name: *NCSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-ncsi-ncsi-globaldns"></a>**ADMX_NCSI/NCSI_GlobalDns**

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
This policy setting enables you to specify DNS binding behavior. NCSI by default will restrict DNS lookups to the interface it's currently probing on. If you enable this setting, NCSI will allow the DNS lookups to happen on any interface.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify global DNS*
-   GP name: *NCSI_GlobalDns*
-   GP path: *Network\Network Connectivity Status Indicator*
-   GP ADMX file name: *NCSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-ncsi-ncsi-passivepolling"></a>**ADMX_NCSI/NCSI_PassivePolling**

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
This Policy setting enables you to specify passive polling behavior. NCSI polls various measurements throughout the network stack on a frequent interval to determine if network connectivity has been lost.  Use the options to control the passive polling behavior.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify passive polling*
-   GP name: *NCSI_PassivePolling*
-   GP path: *Network\Network Connectivity Status Indicator*
-   GP ADMX file name: *NCSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)