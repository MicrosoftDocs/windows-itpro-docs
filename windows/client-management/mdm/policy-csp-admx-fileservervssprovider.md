---
title: Policy CSP - ADMX_FileServerVSSProvider
description: Learn about the Policy CSP - ADMX_FileServerVSSProvider.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/02/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_FileServerVSSProvider

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_FileServerVSSProvider policies

<dl>
  <dd>
    <a href="#admx-fileservervssprovider-pol-encryptprotocol">ADMX_FileServerVSSProvider/Pol_EncryptProtocol</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-fileservervssprovider-pol-encryptprotocol"></a>**ADMX_FileServerVSSProvider/Pol_EncryptProtocol**

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
This policy setting determines whether the RPC protocol messages used by VSS for SMB2 File Shares feature is enabled.

VSS for SMB2 File Shares feature enables VSS aware backup applications to perform application consistent backup and restore of VSS aware applications storing data on SMB2 File Shares.

By default, the RPC protocol message between File Server VSS provider and File Server VSS Agent is signed but not encrypted.

> [!NOTE]
> To make changes to this setting effective, you must restart Volume Shadow Copy (VSS) Service.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow or Disallow use of encryption to protect the RPC protocol messages between File Share Shadow Copy Provider running on application server and File Share Shadow Copy Agent running on the file servers.*
-   GP name: *Pol_EncryptProtocol*
-   GP path: *System/File Share Shadow Copy Provider*
-   GP ADMX file name: *FileServerVSSProvider.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)