---
title: Policy CSP - CredentialsDelegation
description: Learn how to use the Policy CSP - CredentialsDelegation setting so that remote host can allow delegation of non-exportable credentials.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - CredentialsDelegation

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).


<hr/>

<!--Policies-->
## CredentialsDelegation policies

<dl>
  <dd>
    <a href="#credentialsdelegation-remotehostallowsdelegationofnonexportablecredentials">CredentialsDelegation/RemoteHostAllowsDelegationOfNonExportableCredentials</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="credentialsdelegation-remotehostallowsdelegationofnonexportablecredentials"></a>**CredentialsDelegation/RemoteHostAllowsDelegationOfNonExportableCredentials**

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
Remote host allows delegation of non-exportable credentials.

When credential delegation is being used, devices provide an exportable version of credentials to the remote host. This version exposes users to the risk of credential theft from attackers on the remote host.

If you enable this policy setting, the host supports Restricted Admin or Remote Credential Guard mode.

If you disable or don't configure this policy setting, Restricted Administration and Remote Credential Guard mode aren't supported. User will always need to pass their credentials to the host.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remote host allows delegation of non-exportable credentials*
-   GP name: *AllowProtectedCreds*
-   GP path: *System/Credentials Delegation*
-   GP ADMX file name: *CredSsp.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)
