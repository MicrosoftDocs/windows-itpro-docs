---
title: Policy CSP - ADMX_LanmanServer
description: Learn about the Policy CSP - ADMX_LanmanServer.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 08/13/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_LanmanServer

>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_LanmanServer policies

<dl>
  <dd>
    <a href="#admx-lanmanserver-pol-ciphersuiteorder">ADMX_LanmanServer/Pol_CipherSuiteOrder</a>
  </dd>
  <dd>
    <a href="#admx-lanmanserver-pol-hashpublication">ADMX_LanmanServer/Pol_HashPublication</a>
  </dd>
  <dd>
    <a href="#admx-lanmanserver-pol-hashsupportversion">ADMX_LanmanServer/Pol_HashSupportVersion</a>
  </dd>
  <dd>
    <a href="#admx-lanmanserver-pol-honorciphersuiteorder">ADMX_LanmanServer/Pol_HonorCipherSuiteOrder</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-lanmanserver-pol-ciphersuiteorder"></a>**ADMX_LanmanServer/Pol_CipherSuiteOrder**

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
This policy setting determines the cipher suites used by the SMB server.

If you enable this policy setting, cipher suites are prioritized in the order specified.

If you enable this policy setting and don't specify at least one supported cipher suite, or if you disable or don't configure this policy setting, the default cipher suite order is used.

SMB 3.11 cipher suites:

- AES_128_GCM
- AES_128_CCM

SMB 3.0 and 3.02 cipher suites:

- AES_128_CCM

**How to modify this setting:**

Arrange the desired cipher suites in the edit box, one cipher suite per line, in order from most to least preferred, with the most preferred cipher suite at the top. Remove any cipher suites you don't want to use.

> [!NOTE]
> When configuring this security setting, changes will not take effect until you restart Windows.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Cipher suite order*
-   GP name: *Pol_CipherSuiteOrder*
-   GP path: *Network/Lanman Server*
-   GP ADMX file name: *LanmanServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policies-->

<hr/>

<!--Policy-->
<a href="" id="admx-lanmanserver-pol-hashpublication"></a>**ADMX_LanmanServer/Pol_HashPublication**

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
This policy setting specifies whether a hash generation service generates hashes, also called content information, for data that is stored in shared folders. This policy setting must be applied to server computers that have the File Services role and both the File Server and the BranchCache for Network Files role services installed.

Policy configuration

Select one of the following options:

- Not Configured. With this selection, hash publication settings aren't applied to file servers. In the circumstance where file servers are domain members but you don't want to enable BranchCache on all file servers, you can specify Not Configured for this domain Group Policy setting, and then configure local machine policy to enable BranchCache on individual file servers. Because the domain Group Policy setting isn't configured, it will not over-write the enabled setting that you use on individual servers where you want to enable BranchCache.
- Enabled. With this selection, hash publication is turned on for all file servers where Group Policy is applied. For example, if Hash Publication for BranchCache is enabled in domain Group Policy, hash publication is turned on for all domain member file servers to which the policy is applied. The file servers are then able to create content information for all content that is stored in BranchCache-enabled file shares.
- Disabled. With this selection, hash publication is turned off for all file servers where Group Policy is applied.

In circumstances where this policy setting is enabled, you can also select the following configuration options:

- Allow hash publication for all shared folders. With this option, BranchCache generates content information for all content in all shares on the file server.
- Allow hash publication only for shared folders on which BranchCache is enabled. With this option, content information is generated only for shared folders on which BranchCache is enabled. If you use this setting, you must enable BranchCache for individual shares in Share and Storage Management on the file server.
- Disallow hash publication on all shared folders. With this option, BranchCache doesn't generate content information for any shares on the computer and doesn't send content information to client computers that request content.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Hash Publication for BranchCache*
-   GP name: *Pol_HashPublication*
-   GP path: *Network/Lanman Server*
-   GP ADMX file name: *LanmanServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policies-->

<hr/>

<!--Policy-->
<a href="" id="admx-lanmanserver-pol-hashsupportversion"></a>**ADMX_LanmanServer/Pol_HashSupportVersion**

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
This policy setting specifies whether the BranchCache hash generation service supports version 1 (V1) hashes, version 2 (V2) hashes, or both V1 and V2 hashes. Hashes, also called content information, are created based on the data in shared folders where BranchCache is enabled.

If you specify only one version that is supported, content information for that version is the only type that is generated by BranchCache, and it's the only type of content information that can be retrieved by client computers. For example, if you enable support for V1 hashes, BranchCache generates only V1 hashes and client computers can retrieve only V1 hashes.

For policy configuration, select one of the following options:

- Not Configured. With this selection, BranchCache settings aren't applied to client computers by this policy setting. In this circumstance, which is the default, both V1 and V2 hash generation and retrieval are supported.
- Enabled. With this selection, the policy setting is applied and the hash version(s) that are specified in "Hash version supported" are generated and retrieved.
- Disabled. With this selection, both V1 and V2 hash generation and retrieval are supported.

In circumstances where this setting is enabled, you can also select and configure the following option:

Hash version supported:

- To support V1 content information only, configure "Hash version supported" with the value of 1.
- To support V2 content information only, configure "Hash version supported" with the value of 2.
- To support both V1 and V2 content information, configure "Hash version supported" with the value of 3.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Hash Version support for BranchCache*
-   GP name: *Pol_HashSupportVersion*
-   GP path: *Network/Lanman Server*
-   GP ADMX file name: *LanmanServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-lanmanserver-pol-honorciphersuiteorder"></a>**ADMX_LanmanServer/Pol_HonorCipherSuiteOrder**

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
This policy setting determines how the SMB server selects a cipher suite when negotiating a new connection with an SMB client.

If you enable this policy setting, the SMB server will select the cipher suite it most prefers from the list of client-supported cipher suites, ignoring the client's preferences.

If you disable or don't configure this policy setting, the SMB server will select the cipher suite the client most prefers from the list of server-supported cipher suites.

> [!NOTE]
> When configuring this security setting, changes will not take effect until you restart Windows.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Honor cipher suite order*
-   GP name: *Pol_HonorCipherSuiteOrder*
-   GP path: *Network/Lanman Server*
-   GP ADMX file name: *LanmanServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)
