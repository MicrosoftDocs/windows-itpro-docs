---
title: Policy CSP - ADMX_CredSsp
description: Learn about the Policy CSP - ADMX_CredSsp.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 11/12/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_CredSsp

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_CredSsp policies

<dl>
  <dd>
    <a href="#admx-credssp-allowdefcredentialswhenntlmonly">ADMX_CredSsp/AllowDefCredentialsWhenNTLMOnly</a>
  </dd>
  <dd>
    <a href="#admx-credssp-allowdefaultcredentials">ADMX_CredSsp/AllowDefaultCredentials</a>
  </dd>
  <dd>
    <a href="#admx-credssp-allowencryptionoracle">ADMX_CredSsp/AllowEncryptionOracle</a>
  </dd>
  <dd>
    <a href="#admx-credssp-allowfreshcredentials">ADMX_CredSsp/AllowFreshCredentials</a>
  </dd>
  <dd>
    <a href="#admx-credssp-allowfreshcredentialswhenntlmonly">ADMX_CredSsp/AllowFreshCredentialsWhenNTLMOnly</a>
  </dd>
  <dd>
    <a href="#admx-credssp-allowsavedcredentials">ADMX_CredSsp/AllowSavedCredentials</a>
  </dd>
  <dd>
    <a href="#admx-credssp-allowsavedcredentialswhenntlmonly">ADMX_CredSsp/AllowSavedCredentialsWhenNTLMOnly</a>
  </dd>
  <dd>
    <a href="#admx-credssp-denydefaultcredentials">ADMX_CredSsp/DenyDefaultCredentials</a>
  </dd>
  <dd>
    <a href="#admx-credssp-denyfreshcredentials">ADMX_CredSsp/DenyFreshCredentials</a>
  </dd>
  <dd>
    <a href="#admx-credssp-denysavedcredentials">ADMX_CredSsp/DenySavedCredentials</a>
  </dd>
  <dd>
    <a href="#admx-credssp-restrictedremoteadministration">ADMX_CredSsp/RestrictedRemoteAdministration</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-credssp-allowdefcredentialswhenntlmonly"></a>**ADMX_CredSsp/AllowDefCredentialsWhenNTLMOnly**

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
This policy setting applies to applications using the Cred SSP component (for example: Remote Desktop Connection).

This policy setting applies when server authentication was achieved via NTLM.

If you enable this policy setting, you can specify the servers to which the user's default credentials can be delegated (default credentials are those credentials that you use when first signing in to Windows).

If you disable or don't configure (by default) this policy setting, delegation of default credentials isn't permitted to any machine.

> [!NOTE]
> The "Allow delegating default credentials with NTLM-only server authentication" policy setting can be set to one or more Service Principal Names (SPNs). The SPN represents the target server to which the user credentials can be delegated.  The use of a single wildcard character is permitted when specifying the SPN.
>
> For Example:
>
> - TERMSRV/host.humanresources.fabrikam.com Remote Desktop Session Host running on host.humanresources.fabrikam.com machine
> - TERMSRV/* Remote Desktop Session Host running on all machines.
> - TERMSRV/*.humanresources.fabrikam.com Remote Desktop Session Host running on all machines in .humanresources.fabrikam.com

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow delegating default credentials with NTLM-only server authentication*
-   GP name: *AllowDefCredentialsWhenNTLMOnly*
-   GP path: *System\Credentials Delegation*
-   GP ADMX file name: *CredSsp.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-credssp-allowdefaultcredentials"></a>**ADMX_CredSsp/AllowDefaultCredentials**

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
This policy setting applies to applications using the Cred SSP component (for example: Remote Desktop Connection).

This policy setting applies when server authentication was achieved by using a trusted X509 certificate or Kerberos.

If you enable this policy setting, you can specify the servers to which the user's default credentials can be delegated (default credentials are those credentials that you use when first logging on to Windows).

The policy becomes effective the next time the user signs on to a computer running Windows.

If you disable or don't configure (by default) this policy setting, delegation of default credentials isn't permitted to any computer. Applications depending upon this delegation behavior might fail authentication. For more information, see KB.

FWlink for KB:
https://go.microsoft.com/fwlink/?LinkId=301508

> [!NOTE]
> The "Allow delegating default credentials" policy setting can be set to one or more Service Principal Names (SPNs). The SPN represents the target server to which the user credentials can be delegated. The use of a single wildcard character is permitted when specifying the SPN.
>
> For Example:
>
> - TERMSRV/host.humanresources.fabrikam.com Remote Desktop Session Host running on host.humanresources.fabrikam.com machine
> - TERMSRV/* Remote Desktop Session Host running on all machines.
> - TERMSRV/*.humanresources.fabrikam.com Remote Desktop Session Host running on all machines in .humanresources.fabrikam.com

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow delegating default credentials*
-   GP name: *AllowDefaultCredentials*
-   GP path: *System\Credentials Delegation*
-   GP ADMX file name: *CredSsp.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-credssp-allowencryptionoracle"></a>**ADMX_CredSsp/AllowEncryptionOracle**

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
This policy setting applies to applications using the CredSSP component (for example: Remote Desktop Connection).

Some versions of the CredSSP protocol are vulnerable to an encryption oracle attack against the client.  This policy controls compatibility with vulnerable clients and servers.  This policy allows you to set the level of protection desired for the encryption oracle vulnerability.

If you enable this policy setting, CredSSP version support will be selected based on the following options:

- Force Updated Clients: Client applications that use CredSSP won't be able to fall back to the insecure versions and services using CredSSP won't accept unpatched clients.

    > [!NOTE]
    > This setting should not be deployed until all remote hosts support the newest version.

- Mitigated: Client applications that use CredSSP won't be able to fall back to the insecure version but services using CredSSP will accept unpatched clients. See the link below for important information about the risk posed by remaining unpatched clients.

- Vulnerable: Client applications that use CredSSP will expose the remote servers to attacks by supporting a fallback to the insecure versions and services using CredSSP will accept unpatched clients.

For more information about the vulnerability and servicing requirements for protection, see https://go.microsoft.com/fwlink/?linkid=866660

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-  GP Friendly name: *Encryption Oracle Remediation*
-   GP name: *AllowEncryptionOracle*
-   GP path: *System\Credentials Delegation*
-   GP ADMX file name: *CredSsp.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-credssp-allowfreshcredentials"></a>**ADMX_CredSsp/AllowFreshCredentials**

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
This policy setting applies to applications using the Cred SSP component (for example: Remote Desktop Connection).

This policy setting applies when server authentication was achieved via a trusted X509 certificate or Kerberos.

If you enable this policy setting, you can specify the servers to which the user's fresh credentials can be delegated (fresh credentials are those credentials that you're prompted for when executing the application).

If you don't configure (by default) this policy setting, after proper mutual authentication, delegation of fresh credentials is permitted to Remote Desktop Session Host running on any machine (TERMSRV/*).

If you disable this policy setting, delegation of fresh credentials isn't permitted to any machine.

> [!NOTE]
> The "Allow delegating fresh credentials" policy setting can be set to one or more Service Principal Names (SPNs). The SPN represents the target server to which the user credentials can be delegated. The use of a single wildcard is permitted when specifying the SPN.
>
> For Example:
>
> - TERMSRV/host.humanresources.fabrikam.com Remote Desktop Session Host running on host.humanresources.fabrikam.com machine
> - TERMSRV/* Remote Desktop Session Host running on all machines.
> - TERMSRV/*.humanresources.fabrikam.com Remote Desktop Session Host running on all machines in .humanresources.fabrikam.com

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow delegating fresh credentials*
-   GP name: *AllowFreshCredentials*
-   GP path: *System\Credentials Delegation*
-   GP ADMX file name: *CredSsp.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-credssp-allowfreshcredentialswhenntlmonly"></a>**ADMX_CredSsp/AllowFreshCredentialsWhenNTLMOnly**

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
This policy setting applies to applications using the Cred SSP component (for example: Remote Desktop Connection).

This policy setting applies when server authentication was achieved via NTLM.

If you enable this policy setting, you can specify the servers to which the user's fresh credentials can be delegated (fresh credentials are those credentials that you're prompted for when executing the application).

If you don't configure (by default) this policy setting, after proper mutual authentication, delegation of fresh credentials is permitted to Remote Desktop Session Host running on any machine (TERMSRV/*).

If you disable this policy setting, delegation of fresh credentials isn't permitted to any machine.

> [!NOTE]
> The "Allow delegating fresh credentials with NTLM-only server authentication" policy setting can be set to one or more Service Principal Names (SPNs). The SPN represents the target server to which the user credentials can be delegated. The use of a single wildcard character is permitted when specifying the SPN.
>
> For Example:
>
> - TERMSRV/host.humanresources.fabrikam.com Remote Desktop Session Host running on host.humanresources.fabrikam.com machine
> - TERMSRV/* Remote Desktop Session Host running on all machines.
> - TERMSRV/*.humanresources.fabrikam.com Remote Desktop Session Host running on all machines in humanresources.fabrikam.com

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow delegating fresh credentials with NTLM-only server authentication*
-   GP name: *AllowFreshCredentialsWhenNTLMOnly*
-   GP path: *System\Credentials Delegation*
-   GP ADMX file name: *CredSsp.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-credssp-allowsavedcredentials"></a>**ADMX_CredSsp/AllowSavedCredentials**

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
This policy setting applies to applications using the Cred SSP component (for example: Remote Desktop Connection).

This policy setting applies when server authentication was achieved via a trusted X509 certificate or Kerberos.

If you enable this policy setting, you can specify the servers to which the user's saved credentials can be delegated (saved credentials are those credentials that you elect to save/remember using the Windows credential manager).

If you don't configure (by default) this policy setting, after proper mutual authentication, delegation of saved credentials is permitted to Remote Desktop Session Host running on any machine (TERMSRV/*).

If you disable this policy setting, delegation of saved credentials isn't permitted to any machine.

> [!NOTE]
> The "Allow delegating saved credentials" policy setting can be set to one or more Service Principal Names (SPNs). The SPN represents the target server to which the user credentials can be delegated. The use of a single wildcard character is permitted when specifying the SPN.
>
> For Example:
>
> - TERMSRV/host.humanresources.fabrikam.com Remote Desktop Session Host running on host.humanresources.fabrikam.com machine
> - TERMSRV/* Remote Desktop Session Host running on all machines.
> - TERMSRV/*.humanresources.fabrikam.com Remote Desktop Session Host running on all machines in humanresources.fabrikam.com

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow delegating saved credentials*
-   GP name: *AllowSavedCredentials*
-   GP path: *System\Credentials Delegation*
-   GP ADMX file name: *CredSsp.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-credssp-allowsavedcredentialswhenntlmonly"></a>**ADMX_CredSsp/AllowSavedCredentialsWhenNTLMOnly**

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
This policy setting applies to applications using the Cred SSP component (for example: Remote Desktop Connection).

This policy setting applies when server authentication was achieved via NTLM.

If you enable this policy setting, you can specify the servers to which the user's saved credentials can be delegated (saved credentials are those credentials that you elect to save/remember using the Windows credential manager).

If you don't configure (by default) this policy setting, after proper mutual authentication, delegation of saved credentials is permitted to Remote Desktop Session Host running on any machine (TERMSRV/*) if the client machine isn't a member of any domain. If the client is domain-joined, by default, the delegation of saved credentials isn't permitted to any machine.

If you disable this policy setting, delegation of saved credentials isn't permitted to any machine.

> [!NOTE]
> The "Allow delegating saved credentials with NTLM-only server authentication" policy setting can be set to one or more Service Principal Names (SPNs). The SPN represents the target server to which the user credentials can be delegated. The use of a single wildcard character is permitted when specifying the SPN.
>
> For Example:
>
> - TERMSRV/host.humanresources.fabrikam.com Remote Desktop Session Host running on host.humanresources.fabrikam.com machine
> - TERMSRV/* Remote Desktop Session Host running on all machines.
> - TERMSRV/*.humanresources.fabrikam.com Remote Desktop Session Host running on all machines in humanresources.fabrikam.com

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow delegating saved credentials with NTLM-only server authentication*
-   GP name: *AllowSavedCredentialsWhenNTLMOnly*
-   GP path: *System\Credentials Delegation*
-   GP ADMX file name: *CredSsp.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-credssp-denydefaultcredentials"></a>**ADMX_CredSsp/DenyDefaultCredentials**

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
This policy setting applies to applications using the Cred SSP component (for example: Remote Desktop Connection).

If you enable this policy setting, you can specify the servers to which the user's default credentials can't be delegated (default credentials are those credentials that you use when first logging on to Windows).

If you disable or don't configure (by default) this policy setting, this policy setting doesn't specify any server.

> [!NOTE]
> The "Deny delegating default credentials" policy setting can be set to one or more Service Principal Names (SPNs). The SPN represents the target server to which the user credentials can't be delegated. The use of a single wildcard character is permitted when specifying the SPN.
>
> For Example:
>
> - TERMSRV/host.humanresources.fabrikam.com Remote Desktop Session Host running on host.humanresources.fabrikam.com machine
> - TERMSRV/* Remote Desktop Session Host running on all machines.
> - TERMSRV/*.humanresources.fabrikam.com Remote Desktop Session Host running on all machines in .humanresources.fabrikam.com

This policy setting can be used in combination with the "Allow delegating default credentials" policy setting to define exceptions for specific servers that are otherwise permitted when using wildcard characters in the "Allow delegating default credentials" server list.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Deny delegating default credentials*
-   GP name: *DenyDefaultCredentials*
-   GP path: *System\Credentials Delegation*
-   GP ADMX file name: *CredSsp.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-credssp-denyfreshcredentials"></a>**ADMX_CredSsp/DenyFreshCredentials**

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
This policy setting applies to applications using the Cred SSP component (for example: Remote Desktop Connection).

If you enable this policy setting, you can specify the servers to which the user's fresh credentials can't be delegated (fresh credentials are those credentials that you're prompted for when executing the application).

If you disable or don't configure (by default) this policy setting, this policy setting doesn't specify any server.

> [!NOTE]
> The "Deny delegating fresh credentials" policy setting can be set to one or more Service Principal Names (SPNs). The SPN represents the target server to which the user credentials can't be delegated. The use of a single wildcard character is permitted when specifying the SPN.
>
> For Example:
>
> - TERMSRV/host.humanresources.fabrikam.com Remote Desktop Session Host running on host.humanresources.fabrikam.com machine
> - TERMSRV/* Remote Desktop Session Host running on all machines.
> - TERMSRV/*.humanresources.fabrikam.com Remote Desktop Session Host running on all machines in .humanresources.fabrikam.com

This policy setting can be used in combination with the "Allow delegating fresh credentials" policy setting to define exceptions for specific servers that are otherwise permitted when using wildcard characters in the "Allow delegating fresh credentials" server list.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Deny delegating fresh credentials*
-   GP name: *DenyFreshCredentials*
-   GP path: *System\Credentials Delegation*
-   GP ADMX file name: *CredSsp.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-credssp-denysavedcredentials"></a>**ADMX_CredSsp/DenySavedCredentials**

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
This policy setting applies to applications using the Cred SSP component (for example: Remote Desktop Connection).

If you enable this policy setting, you can specify the servers to which the user's saved credentials can't be delegated (saved credentials are those credentials that you elect to save/remember using the Windows credential manager).

If you disable or don't configure (by default) this policy setting, this policy setting doesn't specify any server.

> [!NOTE]
> The "Deny delegating saved credentials" policy setting can be set to one or more Service Principal Names (SPNs). The SPN represents the target server to which the user credentials can't be delegated. The use of a single wildcard character is permitted when specifying the SPN.
>
> For Example:
>
> - TERMSRV/host.humanresources.fabrikam.com Remote Desktop Session Host running on host.humanresources.fabrikam.com machine
> - TERMSRV/* Remote Desktop Session Host running on all machines.
> - TERMSRV/*.humanresources.fabrikam.com Remote Desktop Session Host running on all machines in .humanresources.fabrikam.com

This policy setting can be used in combination with the "Allow delegating saved credentials" policy setting to define exceptions for specific servers that are otherwise permitted when using wildcard characters in the "Allow delegating saved credentials" server list.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Deny delegating saved credentials*
-   GP name: *DenySavedCredentials*
-   GP path: *System\Credentials Delegation*
-   GP ADMX file name: *CredSsp.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-credssp-restrictedremoteadministration"></a>**ADMX_CredSsp/RestrictedRemoteAdministration**

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
When the participating applications are running in Restricted Admin or Remote Credential Guard mode, participating applications don't expose signed in or supplied credentials to a remote host. Restricted Admin limits access to resources located on other servers or networks from the remote host because credentials aren't delegated. Remote Credential Guard doesn't limit access to resources because it redirects all requests back to the client device.

Participating apps:
Remote Desktop Client

If you enable this policy setting, the following options are supported:

- Restrict credential delegation: Participating applications must use Restricted Admin or Remote Credential Guard to connect to remote hosts.
- Require Remote Credential Guard: Participating applications must use Remote Credential Guard to connect to remote hosts.
- Require Restricted Admin: Participating applications must use Restricted Admin to connect to remote hosts.

If you disable or don't configure this policy setting, Restricted Admin and Remote Credential Guard mode aren't enforced and participating apps can delegate credentials to remote devices.

> [!NOTE]
> To disable most credential delegation, it may be sufficient to deny delegation in Credential Security Support Provider (CredSSP) by modifying Administrative template settings (located at Computer Configuration\Administrative Templates\System\Credentials Delegation).
>
> On Windows 8.1 and Windows Server 2012 R2, enabling this policy will enforce Restricted Administration mode, regardless of the mode chosen. These versions don't support Remote Credential Guard.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Restrict delegation of credentials to remote servers*
-   GP name: *RestrictedRemoteAdministration*
-   GP path: *System\Credentials Delegation*
-   GP ADMX file name: *CredSsp.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)