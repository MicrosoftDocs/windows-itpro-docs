---
title: Policy CSP - ADMX_nca
description: Policy CSP - ADMX_nca
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

# Policy CSP - ADMX_nca
>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_nca policies

<dl>
  <dd>
    <a href="#admx-nca-corporateresources">ADMX_nca/CorporateResources</a>
  </dd>
  <dd>
    <a href="#admx-nca-customcommands">ADMX_nca/CustomCommands</a>
  </dd>
  <dd>
    <a href="#admx-nca-dtes">ADMX_nca/DTEs</a>
  </dd>
  <dd>
    <a href="#admx-nca-friendlyname">ADMX_nca/FriendlyName</a>
  </dd>
  <dd>
    <a href="#admx-nca-localnameson">ADMX_nca/LocalNamesOn</a>
  </dd>
  <dd>
    <a href="#admx-nca-passivemode">ADMX_nca/PassiveMode</a>
  </dd>
  <dd>
    <a href="#admx-nca-showui">ADMX_nca/ShowUI</a>
  </dd>
  <dd>
    <a href="#admx-nca-supportemail">ADMX_nca/SupportEmail</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-nca-corporateresources"></a>**ADMX_nca/CorporateResources**

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
This policy setting specifies resources on your intranet that are normally accessible to DirectAccess clients. Each entry is a string that identifies the type of resource and the location of the resource.

Each string can be one of the following types:

- A DNS name or IPv6 address that NCA pings. The syntax is “PING:” followed by a fully qualified domain name (FQDN) that resolves to an IPv6 address, or an IPv6 address. Examples: PING:myserver.corp.contoso.com or PING:2002:836b:1::1.

> [!NOTE]
> We recommend that you use FQDNs instead of IPv6 addresses wherever possible.

> [!IMPORTANT]
> At least one of the entries must be a PING: resource.
> -	A Uniform Resource Locator (URL) that NCA queries with a Hypertext Transfer Protocol (HTTP) request. The contents of the web page don't matter. The syntax is “HTTP:” followed by a URL. The host portion of the URL must resolve to an IPv6 address of a Web server or contain an IPv6 address. Examples: HTTP:http://myserver.corp.contoso.com/ or HTTP:http://2002:836b:1::1/.
> -	A Universal Naming Convention (UNC) path to a file that NCA checks for existence. The contents of the file don't matter. The syntax is “FILE:” followed by a UNC path. The ComputerName portion of the UNC path must resolve to an IPv6 address or contain an IPv6 address. Examples: FILE:\\myserver\myshare\test.txt or FILE:\\2002:836b:1::1\myshare\test.txt.

You must configure this setting to have complete NCA functionality.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Corporate Resources*
-   GP name: *CorporateResources*
-   GP path: *Network\DirectAccess Client Experience Settings*
-   GP ADMX file name: *nca.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-nca-customcommands"></a>**ADMX_nca/CustomCommands**

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
This policy setting specifies commands configured by the administrator for custom logging. These commands will run in addition to default log commands.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Custom Commands*
-   GP name: *CustomCommands*
-   GP path: *Network\DirectAccess Client Experience Settings*
-   GP ADMX file name: *nca.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-nca-dtes"></a>**ADMX_nca/DTEs**

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
This policy setting specifies the IPv6 addresses of the endpoints of the Internet Protocol security (IPsec) tunnels that enable DirectAccess. NCA attempts to access the resources that are specified in the Corporate Resources setting through these configured tunnel endpoints.

By default, NCA uses the same DirectAccess server that the DirectAccess client computer connection is using. In default configurations of DirectAccess, there are typically two IPsec tunnel endpoints: one for the infrastructure tunnel and one for the intranet tunnel. You should configure one endpoint for each tunnel.

Each entry consists of the text PING: followed by the IPv6 address of an IPsec tunnel endpoint. Example: PING:2002:836b:1::836b:1.

You must configure this setting to have complete NCA functionality.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *IPsec Tunnel Endpoints*
-   GP name: *DTEs*
-   GP path: *Network\DirectAccess Client Experience Settings*
-   GP ADMX file name: *nca.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-nca-friendlyname"></a>**ADMX_nca/FriendlyName**

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
This policy setting specifies the string that appears for DirectAccess connectivity when the user clicks the Networking notification area icon. For example, you can specify “Contoso Intranet Access” for the DirectAccess clients of the Contoso Corporation.

If this setting isn't configured, the string that appears for DirectAccess connectivity is “Corporate Connection”.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Friendly Name*
-   GP name: *FriendlyName*
-   GP path: *Network\DirectAccess Client Experience Settings*
-   GP ADMX file name: *nca.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-nca-localnameson"></a>**ADMX_nca/LocalNamesOn**

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
This policy setting specifies whether the user has Connect and Disconnect options for the DirectAccess entry when the user clicks the Networking notification area icon.

If the user clicks the Disconnect option, NCA removes the DirectAccess rules from the Name Resolution Policy Table (NRPT) and the DirectAccess client computer uses whatever normal name resolution is available to the client computer in its current network configuration, including sending all DNS queries to the local intranet or Internet DNS servers. NCA doesn't remove the existing IPsec tunnels and users can still access intranet resources across the DirectAccess server by specifying IPv6 addresses rather than names.

The ability to disconnect allows users to specify single-label, unqualified names (such as “PRINTSVR”) for local resources when connected to a different intranet and for temporary access to intranet resources when network location detection hasn't correctly determined that the DirectAccess client computer is connected to its own intranet.

To restore the DirectAccess rules to the NRPT and resume normal DirectAccess functionality, the user clicks Connect.

> [!NOTE]
> If the DirectAccess client computer is on the intranet and has correctly determined its network location, the Disconnect option has no effect because the rules for DirectAccess are already removed from the NRPT.

If this setting isn't configured, users don't have Connect or Disconnect options.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prefer Local Names Allowed*
-   GP name: *LocalNamesOn*
-   GP path: *Network\DirectAccess Client Experience Settings*
-   GP ADMX file name: *nca.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-nca-passivemode"></a>**ADMX_nca/PassiveMode**

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
This policy setting specifies whether NCA service runs in Passive Mode or not.

Set this policy setting to Disabled to keep NCA probing actively all the time. If this setting isn't configured, NCA probing is in active mode by default.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *DirectAccess Passive Mode*
-   GP name: *PassiveMode*
-   GP path: *Network\DirectAccess Client Experience Settings*
-   GP ADMX file name: *nca.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-nca-showui"></a>**ADMX_nca/ShowUI**

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
This policy setting specifies whether an entry for DirectAccess connectivity appears when the user clicks the Networking notification area icon.

Set this policy setting to Disabled to prevent user confusion when you're just using DirectAccess to remotely manage DirectAccess client computers from your intranet and not providing seamless intranet access.

If this setting isn't configured, the entry for DirectAccess connectivity appears.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *User Interface*
-   GP name: *ShowUI*
-   GP path: *Network\DirectAccess Client Experience Settings*
-   GP ADMX file name: *nca.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-nca-supportemail"></a>**ADMX_nca/SupportEmail**

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
This policy setting specifies the e-mail address to be used when sending the log files that are generated by NCA to the network administrator.

When the user sends the log files to the Administrator, NCA uses the default e-mail client to open a new message with the support email address in the To: field of the message, then attaches the generated log files as a .html file. The user can review the message and add additional information before sending the message.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Support Email Address*
-   GP name: *SupportEmail*
-   GP path: *Network\DirectAccess Client Experience Settings*
-   GP ADMX file name: *nca.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)