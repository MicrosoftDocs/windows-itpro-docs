---
title: Policy CSP - ADMX_Smartcard
description: Learn about Policy CSP - ADMX_Smartcard.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/23/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_Smartcard
> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_Smartcard policies

<dl>
  <dd>
    <a href="#admx-smartcard-allowcertificateswithnoeku">ADMX_Smartcard/AllowCertificatesWithNoEKU</a>
  </dd>
  <dd>
    <a href="#admx-smartcard-allowintegratedunblock">ADMX_Smartcard/AllowIntegratedUnblock</a>
  </dd>
  <dd>
    <a href="#admx-smartcard-allowsignatureonlykeys">ADMX_Smartcard/AllowSignatureOnlyKeys</a>
  </dd>
  <dd>
    <a href="#admx-smartcard-allowtimeinvalidcertificates">ADMX_Smartcard/AllowTimeInvalidCertificates</a>
  </dd>
  <dd>
    <a href="#admx-smartcard-certpropenabledstring">ADMX_Smartcard/CertPropEnabledString</a>
  </dd>
  <dd>
    <a href="#admx-smartcard-certproprootcleanupstring">ADMX_Smartcard/CertPropRootCleanupString</a>
  </dd>
  <dd>
    <a href="#admx-smartcard-certproprootenabledstring">ADMX_Smartcard/CertPropRootEnabledString</a>
  </dd>
  <dd>
    <a href="#admx-smartcard-disallowplaintextpin">ADMX_Smartcard/DisallowPlaintextPin</a>
  </dd>
  <dd>
    <a href="#admx-smartcard-enumerateecccerts">ADMX_Smartcard/EnumerateECCCerts</a>
  </dd>
  <dd>
    <a href="#admx-smartcard-filterduplicatecerts">ADMX_Smartcard/FilterDuplicateCerts</a>
  </dd>
  <dd>
    <a href="#admx-smartcard-forcereadingallcertificates">ADMX_Smartcard/ForceReadingAllCertificates</a>
  </dd>
  <dd>
    <a href="#admx-smartcard-integratedunblockpromptstring">ADMX_Smartcard/IntegratedUnblockPromptString</a>
  </dd>
  <dd>
    <a href="#admx-smartcard-reversesubject">ADMX_Smartcard/ReverseSubject</a>
  </dd>
  <dd>
    <a href="#admx-smartcard-scpnpenabled">ADMX_Smartcard/SCPnPEnabled</a>
  </dd>
  <dd>
    <a href="#admx-smartcard-scpnpnotification">ADMX_Smartcard/SCPnPNotification</a>
  </dd>
  <dd>
    <a href="#admx-smartcard-x509hintsneeded">ADMX_Smartcard/X509HintsNeeded</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-smartcard-allowcertificateswithnoeku"></a>**ADMX_Smartcard/AllowCertificatesWithNoEKU**

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
This policy setting lets you allow certificates without an Extended Key Usage (EKU) set to be used for signing in.

In versions of Windows, prior to Windows Vista, smart card certificates that are used for a sign-in require an enhanced key usage (EKU) extension with a smart card logon object identifier. This policy setting can be used to modify that restriction.

If you enable this policy setting, certificates with the following attributes can also be used to sign in on with a smart card:

- Certificates with no EKU
- Certificates with an All Purpose EKU
- Certificates with a Client Authentication EKU

If you disable or don't configure this policy setting, only certificates that contain the smart card logon object identifier can be used to sign in with a smart card.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow certificates with no extended key usage certificate attribute*
-   GP name: *AllowCertificatesWithNoEKU*
-   GP path: *Windows Components\Smart Card*
-   GP ADMX file name: *Smartcard.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-smartcard-allowintegratedunblock"></a>**ADMX_Smartcard/AllowIntegratedUnblock**

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
This policy setting lets you determine whether the integrated unblock feature will be available in the logon User Interface (UI).

In order to use the integrated unblock feature, your smart card must support this feature. Check with your hardware manufacturer to see if your smart card supports this feature.

If you enable this policy setting, the integrated unblock feature will be available.

If you disable or don't configure this policy setting then the integrated unblock feature won't be available.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow Integrated Unblock screen to be displayed at the time of logon*
-   GP name: *AllowIntegratedUnblock*
-   GP path: *Windows Components\Smart Card*
-   GP ADMX file name: *Smartcard.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-smartcard-allowsignatureonlykeys"></a>**ADMX_Smartcard/AllowSignatureOnlyKeys**

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
This policy setting lets you allow signature key-based certificates to be enumerated and available for a sign in.

If you enable this policy setting, then any certificates available on the smart card with a signature only key will be listed on the sign-in screen.

If you disable or don't configure this policy setting, any available smart card signature key-based certificates won't be listed on the sign-in screen.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow signature keys valid for Logon*
-   GP name: *AllowSignatureOnlyKeys*
-   GP path: *Windows Components\Smart Card*
-   GP ADMX file name: *Smartcard.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-smartcard-allowtimeinvalidcertificates"></a>**ADMX_Smartcard/AllowTimeInvalidCertificates**

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
This policy setting permits those certificates to be displayed for a sign-in, which are either expired or not yet valid.

Under previous versions of Microsoft Windows, certificates were required to contain a valid time and not be expired. The certificate must still be accepted by the domain controller in order to be used. This setting only controls displaying of the certificate on the client machine.

If you enable this policy setting, certificates will be listed on the sign-in screen regardless of whether they have an invalid time or their time validity has expired.

If you disable or don't configure this policy setting, certificates that are expired or not yet valid won't be listed on the sign-in screen.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow time invalid certificates*
-   GP name: *AllowTimeInvalidCertificates*
-   GP path: *Windows Components\Smart Card*
-   GP ADMX file name: *Smartcard.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-smartcard-certpropenabledstring"></a>**ADMX_Smartcard/CertPropEnabledString**

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
This policy setting allows you to manage the certificate propagation that occurs when a smart card is inserted.

If you enable or don't configure this policy setting then certificate propagation will occur when you insert your smart card.

If you disable this policy setting, certificate propagation won't occur and the certificates won't be made available to applications such as Outlook.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn on certificate propagation from smart card*
-   GP name: *CertPropEnabledString*
-   GP path: *Windows Components\Smart Card*
-   GP ADMX file name: *Smartcard.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-smartcard-certproprootcleanupstring"></a>**ADMX_Smartcard/CertPropRootCleanupString**

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
This policy setting allows you to manage the cleanup behavior of root certificates.

If you enable this policy setting, then root certificate cleanup will occur according to the option selected.

If you disable or don't configure this setting then root certificate cleanup will occur on a sign out.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure root certificate clean up*
-   GP name: *CertPropRootCleanupString*
-   GP path: *Windows Components\Smart Card*
-   GP ADMX file name: *Smartcard.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-smartcard-certproprootenabledstring"></a>**ADMX_Smartcard/CertPropRootEnabledString**

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
This policy setting allows you to manage the root certificate propagation that occurs when a smart card is inserted.

If you enable or don't configure this policy setting then root certificate propagation will occur when you insert your smart card.

> [!NOTE]
> For this policy setting to work this policy setting must also be enabled: "Turn on certificate propagation from smart card".

If you disable this policy setting, then root certificates won't be propagated from the smart card.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn on root certificate propagation from smart card*
-   GP name: *CertPropRootEnabledString*
-   GP path: *Windows Components\Smart Card*
-   GP ADMX file name: *Smartcard.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-smartcard-disallowplaintextpin"></a>**ADMX_Smartcard/DisallowPlaintextPin**

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
This policy setting prevents plaintext PINs from being returned by Credential Manager.

If you enable this policy setting, Credential Manager doesn't return a plaintext PIN.

If you disable or don't configure this policy setting, plaintext PINs can be returned by Credential Manager.

> [!NOTE]
> Enabling this policy setting could prevent certain smart cards from working on Windows. Please consult your smart card manufacturer to find out whether you will be affected by this policy setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent plaintext PINs from being returned by Credential Manager*
-   GP name: *DisallowPlaintextPin*
-   GP path: *Windows Components\Smart Card*
-   GP ADMX file name: *Smartcard.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-smartcard-enumerateecccerts"></a>**ADMX_Smartcard/EnumerateECCCerts**

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
This policy setting allows you to control whether elliptic curve cryptography (ECC) certificates on a smart card can be used to sign-in to a domain.

If you enable this policy setting, ECC certificates on a smart card can be used to sign in to a domain.

If you disable or don't configure this policy setting, ECC certificates on a smart card can't be used to sign in to a domain.

> [!NOTE]
> This policy setting only affects a user's ability to log on to a domain. ECC certificates on a smart card that are used for other applications, such as document signing, are not affected by this policy setting.
> If you use an ECDSA key to log on, you must also have an associated ECDH key to permit logons when you are not connected to the network.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow ECC certificates to be used for logon and authentication*
-   GP name: *EnumerateECCCerts*
-   GP path: *Windows Components\Smart Card*
-   GP ADMX file name: *Smartcard.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-smartcard-filterduplicatecerts"></a>**ADMX_Smartcard/FilterDuplicateCerts**

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
This policy setting lets you configure if all your valid logon certificates are displayed.

During the certificate renewal period, a user can have multiple valid logon certificates issued from the same certificate template. This scenario can cause confusion as to which certificate to select for a sign in. The common case for this behavior is when a certificate is renewed and the old one hasn't yet expired. Two certificates are determined to be the same if they're issued from the same template with the same major version and they're for the same user (determined by their UPN).

If there are two or more of the "same" certificate on a smart card and this policy is enabled, then the certificate that is used for a sign in on Windows 2000, Windows XP, and Windows 2003 Server will be shown, otherwise the certificate with the expiration time furthest in the future will be shown.

> [!NOTE]
> This setting will be applied after this policy: "Allow time invalid certificates"

If you enable or don't configure this policy setting, filtering will take place.

If you disable this policy setting, no filtering will take place.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Filter duplicate logon certificates*
-   GP name: *FilterDuplicateCerts*
-   GP path: *Windows Components\Smart Card*
-   GP ADMX file name: *Smartcard.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-smartcard-forcereadingallcertificates"></a>**ADMX_Smartcard/ForceReadingAllCertificates**

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
This policy setting allows you to manage the reading of all certificates from the smart card for a sign-in.

During a sign-in, Windows will by default only read the default certificate from the smart card unless it supports retrieval of all certificates in a single call. This setting forces Windows to read all the certificates from the card. This setting can introduce a significant performance decrease in certain situations. Contact your smart card vendor to determine if your smart card and associated CSP supports the required behavior.

If you enable this setting, then Windows will attempt to read all certificates from the smart card regardless of the feature set of the CSP.

If you disable or don't configure this setting, Windows will only attempt to read the default certificate from those cards that don't support retrieval of all certificates in a single call. Certificates other than the default won't be available for a sign in.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Force the reading of all certificates from the smart card*
-   GP name: *ForceReadingAllCertificates*
-   GP path: *Windows Components\Smart Card*
-   GP ADMX file name: *Smartcard.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-smartcard-integratedunblockpromptstring"></a>**ADMX_Smartcard/IntegratedUnblockPromptString**

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
This policy setting allows you to manage the displayed message when a smart card is blocked.

If you enable this policy setting, the specified message will be displayed to the user when the smart card is blocked.

> [!NOTE]
> The following policy setting must be enabled: "Allow Integrated Unblock screen to be displayed at the time of logon".

If you disable or don't configure this policy setting, the default message will be displayed to the user when the smart card is blocked, if the integrated unblock feature is enabled.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Display string when smart card is blocked*
-   GP name: *IntegratedUnblockPromptString*
-   GP path: *Windows Components\Smart Card*
-   GP ADMX file name: *Smartcard.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-smartcard-reversesubject"></a>**ADMX_Smartcard/ReverseSubject**

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
This policy setting lets you reverse the subject name from how it's stored in the certificate when displaying it during a sign in.

By default the User Principal Name (UPN) is displayed in addition to the common name to help users distinguish one certificate from another. For example, if the certificate subject was CN=User1, OU=Users, DN=example, DN=com and had an UPN of user1@example.com then "User1" will be displayed along with "user1@example.com." If the UPN isn't present, then the entire subject name will be displayed. This setting controls the appearance of that subject name and might need to be adjusted per organization.

If you enable this policy setting or don't configure this setting, then the subject name will be reversed.

If you disable, the subject name will be displayed as it appears in the certificate.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Reverse the subject name stored in a certificate when displaying*
-   GP name: *ReverseSubject*
-   GP path: *Windows Components\Smart Card*
-   GP ADMX file name: *Smartcard.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-smartcard-scpnpenabled"></a>**ADMX_Smartcard/SCPnPEnabled**

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
This policy setting allows you to control whether Smart Card Plug and Play is enabled.

If you enable or don't configure this policy setting, Smart Card Plug and Play will be enabled and the system will attempt to install a Smart Card device driver when a card is inserted in a Smart Card Reader for the first time.

If you disable this policy setting, Smart Card Plug and Play will be disabled and a device driver won't be installed when a card is inserted in a Smart Card Reader.

> [!NOTE]
> This policy setting is applied only for smart cards that have passed the Windows Hardware Quality Labs (WHQL) testing process.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn on Smart Card Plug and Play service*
-   GP name: *SCPnPEnabled*
-   GP path: *Windows Components\Smart Card*
-   GP ADMX file name: *Smartcard.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-smartcard-scpnpnotification"></a>**ADMX_Smartcard/SCPnPNotification**

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
This policy setting allows you to control whether a confirmation message is displayed when a smart card device driver is installed.

If you enable or don't configure this policy setting, a confirmation message will be displayed when a smart card device driver is installed.

If you disable this policy setting, a confirmation message won't be displayed when a smart card device driver is installed.

> [!NOTE]
> This policy setting is applied only for smart cards that have passed the Windows Hardware Quality Labs (WHQL) testing process.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Notify user of successful smart card driver installation*
-   GP name: *SCPnPNotification*
-   GP path: *Windows Components\Smart Card*
-   GP ADMX file name: *Smartcard.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-smartcard-x509hintsneeded"></a>**ADMX_Smartcard/X509HintsNeeded**

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
This policy setting lets you determine whether an optional field will be displayed during a sign-in and elevation that allows users to enter their user name or user name and domain, thereby associating a certificate with the users.

If you enable this policy setting, then an optional field that allows a user to enter their user name or user name and domain will be displayed.

If you disable or don't configure this policy setting, an optional field that allows users to enter their user name or user name and domain won't be displayed.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow user name hint*
-   GP name: *X509HintsNeeded*
-   GP path: *Windows Components\Smart Card*
-   GP ADMX file name: *Smartcard.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)
