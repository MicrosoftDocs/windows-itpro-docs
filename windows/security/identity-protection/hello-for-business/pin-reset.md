---
title: PIN reset
description: Learn how Microsoft PIN reset service enables your users to recover a forgotten Windows Hello for Business PIN, and how to configure it.
ms.date: 04/23/2024
ms.topic: how-to
---

# PIN reset

This article describes how *Microsoft PIN reset service* enables your users to recover a forgotten Windows Hello for Business PIN, and how to configure it.

## Overview

Windows Hello for Business provides the capability for users to reset forgotten PINs. There are two forms of PIN reset:

- *Destructive PIN reset*: the user's existing PIN and underlying credentials, including any keys or certificates added to their Windows Hello container, are deleted from the client and a new sign in key and PIN are provisioned. Destructive PIN reset is the default option, and doesn't require configuration
- *Non-destructive PIN reset*: the user's Windows Hello for Business container and keys are preserved, but the user's PIN that they use to authorize key usage is changed. For nondestructive PIN reset, you must deploy the *Microsoft PIN reset service* and configure your clients' policy to enable the *PIN recovery* feature

## How nondestructive PIN reset works

**Requirements:**

- Hybrid or cloud-only Windows Hello for Business deployments
- Windows Enterprise, Education and Pro editions. There's no licensing requirement for this feature

When nondestructive PIN reset is enabled on a client, a *256-bit AES* key is generated locally. The key is added to a user's Windows Hello for Business container and keys as the *PIN reset protector*. This PIN reset protector is encrypted using a public key retrieved from the Microsoft PIN reset service and then stored on the client for later use during PIN reset. After a user initiates a PIN reset, completes authentication and multifactor authentication to Microsoft Entra ID, the encrypted PIN reset protector is sent to the Microsoft PIN reset service, decrypted, and returned to the client. The decrypted PIN reset protector is used to change the PIN used to authorize Windows Hello for Business keys, and it's then cleared from memory.

Using Group Policy, Microsoft Intune or a compatible MDM solution, you can configure Windows devices to securely use the Microsoft PIN reset service, which enables users to reset their forgotten PIN without requiring re-enrollment.

The following table compares destructive and nondestructive PIN reset:

|Category|Destructive PIN reset|Nondestructive PIN reset|
|--- |--- |--- |
|**Functionality**|The user's existing PIN and underlying credentials, including any keys or certificates added to their Windows Hello container, are deleted from the client and a new sign in key and PIN are provisioned.|You must deploy the Microsoft PIN reset service and client policy to enable the PIN recovery feature. During a nondestructive PIN reset, the user's Windows Hello for Business container and keys are preserved, but the user's PIN that they use to authorize key usage is changed.|
|**Microsoft Entra joined**|Cert Trust, Key Trust, and cloud Kerberos trust|Cert Trust, Key Trust, and cloud Kerberos trust|
|**Microsoft Entra hybrid joined**|Cert Trust and cloud Kerberos trust for both settings and above the lock support destructive PIN reset. Key Trust doesn't support this option from above the lock screen. This is due to the sync delay between when a user provisions their Windows Hello for Business credential and being able to use it for sign-in. It does support from the settings page and the users must have a corporate network connectivity to the DC. |Cert Trust, Key Trust, and cloud Kerberos trust for both settings and above the lock support nondestructive PIN reset. No network connection is required for the DC.|
|**On Premises**|If AD FS is used for on premises deployments, users must have a corporate network connectivity to federation services. |The PIN reset service relies on Microsoft Entra identities, so it's only available for Microsoft Entra hybrid joined and Microsoft Entra joined devices.|
|**Additional configuration required**|Supported by default and doesn't require configuration|Deploy the Microsoft PIN reset service and client policy to enable the PIN recovery feature.|
|**MSA/Enterprise**|MSA and Enterprise|Enterprise only.|

## Enable the Microsoft PIN Reset Service in your Microsoft Entra tenant

Before you can use nondestructive PIN reset, you must register two applications in your Microsoft Entra tenant:

- Microsoft Pin Reset Service Production
- Microsoft Pin Reset Client Production

To register the applications, follow these steps:

:::row:::
  :::column span="3":::
  1. Go to the [Microsoft PIN Reset Service Production website][APP-1], and sign in as at least an [Application Administrator][ENT-2]. Review the permissions requested by the *Microsoft Pin Reset Service Production* application and select **Accept** to give consent to the application to access your organization
  :::column-end:::
  :::column span="1":::
    :::image type="content" alt-text="Screenshot showing the PIN reset service permissions page." source="images/pin-reset/pin-reset-service-prompt.png" lightbox="images/pin-reset/pin-reset-service-prompt.png" border="true":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::
  2. Go to the [Microsoft PIN Reset Client Production website][APP-2], and sign as at least an [Application Administrator][ENT-2]. Review the permissions requested by the *Microsoft Pin Reset Client Production* application, and select **Next**.
  :::column-end:::
  :::column span="1":::
    :::image type="content" alt-text="Screenshot showing the PIN reset client permissions page." source="images/pin-reset/pin-reset-client-prompt.png" lightbox="images/pin-reset/pin-reset-client-prompt.png" border="true":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::
  3. Review the permissions requested by the *Microsoft Pin Reset Service Production* application and select **Accept** to confirm consent to both applications to access your organization.
  >[!NOTE]
  >After acceptance, the redirect page will show a blank page. This is a known behavior.
  :::column-end:::
  :::column span="1":::
    :::image type="content" alt-text="Screenshot showing the PIN reset service permissions final page." source="images/pin-reset/pin-reset-service-prompt-2.png" lightbox="images/pin-reset/pin-reset-service-prompt-2.png" border="true":::
  :::column-end:::
:::row-end:::

### Confirm that the two PIN Reset service principals are registered in your tenant

1. Sign in to the [Microsoft Entra Manager admin center][ENTRA]
1. Select **Microsoft Entra ID > Applications > Enterprise applications**
1. Search by application name "Microsoft PIN" and verify that both **Microsoft Pin Reset Service Production** and **Microsoft Pin Reset Client Production** are in the list
   :::image type="content" alt-text="PIN reset service permissions page." source="images/pin-reset/pin-reset-applications.png" lightbox="images/pin-reset/pin-reset-applications-expanded.png":::

## Enable PIN recovery on the clients

To enable PIN recovery on the clients, you can use:

- Microsoft Intune/MDM
- Group policy

The following instructions provide details how to configure your devices. Select the option that best suits your needs.

#### [:::image type="icon" source="../../images/icons/intune.svg"::: **Intune**](#tab/intune)

[!INCLUDE [intune-settings-catalog-1](../../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| **Windows Hello For Business** | Enable Pin Recovery | True |

[!INCLUDE [intune-settings-catalog-2](../../../../includes/configure/intune-settings-catalog-2.md)]

>[!NOTE]
> You can also configure PIN recovery from the **Endpoint security** blade:
>
> 1. Sign in to the [Microsoft Intune admin center][INTUNE]
> 1. Select **Endpoint security > Account protection > Create Policy**

Alternatively, you can configure devices using a [custom policy][INT-1] with the [PassportForWork CSP][CSP-1].

| OMA-URI |Data type| Value|
|-|-|-|
| `./Vendor/MSFT/Policy/PassportForWork/`*TenantId*`/Policies/EnablePinRecovery`| Boolean | True |

>[!NOTE]
> You must replace `TenantId` with the identifier of your Microsoft Entra tenant. To look up your Tenant ID, see [How to find your Microsoft Entra tenant ID][ENT-3] or try the following, ensuring to sign-in with your organization's account::

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/organization?$select=id
```

#### [:::image type="icon" source="../../images/icons/group-policy.svg"::: **GPO**](#tab/gpo)

[!INCLUDE [gpo-settings-1](../../../../includes/configure/gpo-settings-1.md)]

| Group policy path | Group policy setting | Value |
| - | - | - |
|**Computer Configuration > Administrative Templates > Windows Components > Windows Hello for Business**| Use PIN Recovery | Enabled |

[!INCLUDE [gpo-settings-2](../../../../includes/configure/gpo-settings-2.md)]

---

#### Confirm that PIN Recovery policy is enforced on the devices

The _PIN reset_ configuration can be viewed by running [**dsregcmd /status**][ENT-4] from the command line. This state can be found under the output in the user state section as the **CanReset** line item. If **CanReset** reports as DestructiveOnly, then only destructive PIN reset is enabled. If **CanReset** reports DestructiveAndNonDestructive, then nondestructive PIN reset is enabled.

**Sample User state Output for Destructive PIN Reset**

```cmd
+----------------------------------------------------------------------+
| User State                                                           |
+----------------------------------------------------------------------+

                    NgcSet : YES
                  NgcKeyId : {FA0DB076-A5D7-4844-82D8-50A2FB42EC7B}
                  CanReset : DestructiveOnly
           WorkplaceJoined : NO
             WamDefaultSet : YES
       WamDefaultAuthority : organizations
              WamDefaultId : https://login.microsoft.com
            WamDefaultGUID : { B16898C6-A148-4967-9171-64D755DA8520 } (AzureAd)

+----------------------------------------------------------------------+
```

**Sample User state Output for Non-Destructive PIN Reset**

```cmd
+----------------------------------------------------------------------+
| User State                                                           |
+----------------------------------------------------------------------+

                    NgcSet : YES
                  NgcKeyId : {FA0DB076-A5D7-4844-82D8-50A2FB42EC7B}
                  CanReset : DestructiveAndNonDestructive
           WorkplaceJoined : NO
             WamDefaultSet : YES
       WamDefaultAuthority : organizations
              WamDefaultId : https://login.microsoft.com
            WamDefaultGUID : { B16898C6-A148-4967-9171-64D755DA8520 } (AzureAd)

+----------------------------------------------------------------------+
```

## Configure allowed URLs for federated identity providers on Microsoft Entra joined devices

**Applies to:** Microsoft Entra joined devices

PIN reset on Microsoft Entra joined devices uses a flow called *web sign-in* to authenticate users in the lock screen. Web sign-in only allows navigation to specific domains. If web sign-in attempts to navigate to a domain that isn't allowed, it displays a page with the error message: *We can't open that page right now*.\
If you have a federated environment and authentication is handled using AD FS or a non-Microsoft identity provider, then you must configure your devices with a policy to allow a list of domains that can be reached during PIN reset flows. When set, it ensures that authentication pages from that identity provider can be used during Microsoft Entra joined PIN reset.

[!INCLUDE [intune-settings-catalog-1](../../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| **Authentication** | Configure Web Sign In Allowed Urls | Provide a semicolon delimited list of domains needed for authentication during the PIN reset scenario. An example value would be **signin.contoso.com;portal.contoso.com**|

[!INCLUDE [intune-settings-catalog-2](../../../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][INT-1] with the [Policy CSP][CSP-2].

| Setting |
|--------|
| <li> OMA-URI: `./Vendor/MSFT/Policy/Config/Authentication/ConfigureWebSignInAllowedUrls` </li><li>Data type: String </li><li>Value: Provide a semicolon delimited list of domains needed for authentication during the PIN reset scenario. An example value would be **signin.contoso.com;portal.contoso.com**</li>|

> [!NOTE]
> For Azure Government, there is a known issue with PIN reset on Microsoft Entra joined devices failing. When the user attempts to launch PIN reset, the PIN reset UI shows an error page that says, *"We can't open that page right now"*. The ConfigureWebSignInAllowedUrls policy can be used to work around this issue. If you are experiencing this problem and you are using Azure US Government cloud, set **login.microsoftonline.us** as the value for the ConfigureWebSignInAllowedUrls policy.

## User experience

Destructive and nondestructive PIN reset scenarios use the same steps for initiating a PIN reset. If users have forgotten their PINs, but have an alternate sign-in method, they can navigate to Sign-in options in *Settings* and initiate a PIN reset from the PIN options. If users don't have an alternate way to sign into their devices, PIN reset can also be initiated from the Windows lock screen with the *PIN credential provider*. Users must authenticate and complete multifactor authentication to reset their PIN. After PIN reset is complete, users can sign in using their new PIN.

>[!IMPORTANT]
>For Microsoft Entra hybrid joined devices, users must have corporate network connectivity to domain controllers to complete destructive PIN reset. If AD FS is being used for certificate trust or for on-premises only deployments, users must also have corporate network connectivity to federation services to reset their PIN.

### Reset PIN from Settings

1. Sign-in to Windows 10 using an alternate credential
1. Open **Settings > Accounts > Sign-in options**
1. Select **PIN (Windows Hello) > I forgot my PIN** and follow the instructions

### Reset PIN from the lock screen

For Microsoft Entra joined devices:

1. If the PIN credential provider isn't selected, expand the **Sign-in options** link, and select the PIN pad icon
1. Select **I forgot my PIN** from the PIN credential provider
1. Select an authentication option from the list of presented options. This list is based on the different authentication methods enabled in your tenant (like Password, PIN, Security key)
1. Follow the instructions provided by the provisioning process
1. When finished, unlock your desktop using your newly created PIN

  > [!VIDEO https://learn-video.azurefd.net/vod/player?id=310f7665-6276-4ad8-b76e-429073c10972 alt-text="Anmimation showing the PIN reset user experience from the lock screen."]

For Microsoft Entra hybrid joined devices:

1. If the PIN credential provider isn't selected, expand the **Sign-in options** link, and select the PIN pad icon
1. Select **I forgot my PIN** from the PIN credential provider
1. Enter your password and press enter
1. Follow the instructions provided by the provisioning process
1. When finished, unlock your desktop using your newly created PIN

> [!NOTE]
> Key trust on Microsoft Entra hybrid joined devices doesn't support destructive PIN reset from above the Lock Screen. This is due to the sync delay between when a user provisions their Windows Hello for Business credential and being able to use it for sign-in. For this deployment model, you must deploy non-destructive PIN reset for above lock PIN reset to work.

You may find that PIN reset from Settings only works post sign in. Also, the lock screen PIN reset function doesn't work if you have any matching limitation of self-service password reset from the lock screen. For more information, see [Enable Microsoft Entra self-service password reset at the Windows sign-in screen][ENT-1].

<!--links-->

[APP-1]: https://login.windows.net/common/oauth2/authorize?response_type=code&client_id=b8456c59-1230-44c7-a4a2-99b085333e84&resource=https%3A%2F%2Fgraph.windows.net&redirect_uri=https%3A%2F%2Fcred.microsoft.com&state=e9191523-6c2f-4f1d-a4f9-c36f26f89df0&prompt=admin_consent
[APP-2]: https://login.windows.net/common/oauth2/authorize?response_type=code&client_id=9115dd05-fad5-4f9c-acc7-305d08b1b04e&resource=https%3A%2F%2Fcred.microsoft.com%2F&redirect_uri=ms-appx-web%3A%2F%2FMicrosoft.AAD.BrokerPlugin%2F9115dd05-fad5-4f9c-acc7-305d08b1b04e&state=6765f8c5-f4a7-4029-b667-46a6776ad611&prompt=admin_consent
[CSP-1]: /windows/client-management/mdm/passportforwork-csp
[CSP-2]: /windows/client-management/mdm/policy-csp-authentication#authentication-configurewebsigninallowedurls
[ENT-1]: /entra/identity/authentication/howto-sspr-windows#general-limitations
[ENT-2]: /entra/identity/role-based-access-control/permissions-reference#application-administrator
[ENT-3]: /entra/fundamentals/how-to-find-tenant
[ENT-4]: /entra/identity/devices/troubleshoot-device-dsregcmd
[ENTRA]: https://entra.microsoft.com
[INT-1]: /mem/intune/configuration/settings-catalog
[INTUNE]: https://go.microsoft.com/fwlink/?linkid=2109431
