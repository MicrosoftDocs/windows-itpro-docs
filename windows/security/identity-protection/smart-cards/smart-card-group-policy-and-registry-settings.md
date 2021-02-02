---
title: Smart Card Group Policy and Registry Settings (Windows 10)
description: Discover the Group Policy, registry key, local security policy, and credential delegation policy settings that are available for configuring smart cards.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
audience: ITPro
author: dansimp
ms.author: dansimp
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
ms.localizationpriority: medium
ms.date: 04/19/2017
ms.reviewer: 
---

# Smart Card Group Policy and Registry Settings

Applies to: Windows 10, Windows Server 2016

This article for IT professionals and smart card developers describes the Group Policy settings, registry key settings, local security policy settings, and credential delegation policy settings that are available for configuring smart cards.

The following sections and tables list the smart card-related Group Policy settings and registry keys that can be set on a per-computer basis. If you use domain Group Policy Objects (GPOs), you can edit and apply Group Policy settings to local or domain computers.

-   [Primary Group Policy settings for smart cards](#primary-group-policy-settings-for-smart-cards)

    -   [Allow certificates with no extended key usage certificate attribute](#allow-certificates-with-no-extended-key-usage-certificate-attribute)

    -   [Allow ECC certificates to be used for logon and authentication](#allow-ecc-certificates-to-be-used-for-logon-and-authentication)

    -   [Allow Integrated Unblock screen to be displayed at the time of logon](#allow-integrated-unblock-screen-to-be-displayed-at-the-time-of-logon)

    -   [Allow signature keys valid for Logon](#allow-signature-keys-valid-for-logon)

    -   [Allow time invalid certificates](#allow-time-invalid-certificates)

    -   [Allow user name hint](#allow-user-name-hint)

    -   [Configure root certificate clean up](#configure-root-certificate-clean-up)

    -   [Display string when smart card is blocked](#display-string-when-smart-card-is-blocked)

    -   [Filter duplicate logon certificates](#filter-duplicate-logon-certificates)

    -   [Force the reading of all certificates from the smart card](#force-the-reading-of-all-certificates-from-the-smart-card)

    -   [Notify user of successful smart card driver installation](#notify-user-of-successful-smart-card-driver-installation)

    -   [Prevent plaintext PINs from being returned by Credential Manager](#prevent-plaintext-pins-from-being-returned-by-credential-manager)

    -   [Reverse the subject name stored in a certificate when displaying](#reverse-the-subject-name-stored-in-a-certificate-when-displaying)

    -   [Turn on certificate propagation from smart card](#turn-on-certificate-propagation-from-smart-card)

    -   [Turn on root certificate propagation from smart card](#turn-on-root-certificate-propagation-from-smart-card)

    -   [Turn on Smart Card Plug and Play service](#turn-on-smart-card-plug-and-play-service)

-   [Base CSP and Smart Card KSP registry keys](#base-csp-and-smart-card-ksp-registry-keys)

-   [CRL checking registry keys](#crl-checking-registry-keys)

-   [Additional smart card Group Policy settings and registry keys](#additional-smart-card-group-policy-settings-and-registry-keys)

## Primary Group Policy settings for smart cards

The following smart card Group Policy settings are in Computer Configuration\\Administrative Templates\\Windows Components\\Smart Card.

The registry keys are in the following locations:

- **HKEY\_LOCAL\_MACHINE\\SOFTWARE\Policies\\Microsoft\\Windows\\ScPnP\\EnableScPnP**

- **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\SmartCardCredentialProvider**

- **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\CertProp**

> [!NOTE]
> Smart card reader registry information is in **HKEY\_LOCAL\_MACHINE\\Software\\Microsoft\\Cryptography\\Calais\\Readers**.<br>
Smart card registry information is in **HKEY\_LOCAL\_MACHINE\\Software\\Microsoft\\Cryptography\\Calais\\SmartCards**.

The following table lists the default values for these GPO settings. Variations are documented under the policy descriptions in this article.

| **Server type or GPO**    | **Default value** |
|----------------------------------------------|-------------------|
| Default Domain Policy     | Not configured    |
| Default Domain Controller Policy             | Not configured    |
| Stand-Alone Server Default Settings          | Not configured    |
| Domain Controller Effective Default Settings | Disabled          |
| Member Server Effective Default Settings     | Disabled          |
| Client Computer Effective Default Settings   | Disabled          |

### Allow certificates with no extended key usage certificate attribute

You can use this policy setting to allow certificates without an enhanced key usage (EKU) set to be used for sign in.

> [!NOTE]
> Enhanced key usage certificate attribute is also known as extended key usage.
> 
> In versions of Windows before Windows Vista, smart card certificates that are used to sign in require an EKU extension with a smart card logon object identifier. This policy setting can be used to modify that restriction.

When this policy setting is turned on, certificates with the following attributes can also be used to sign in with a smart card:

-   Certificates with no EKU

-   Certificates with an All Purpose EKU

-   Certificates with a Client Authentication EKU

When this policy setting isn't turned on, only certificates that contain the smart card logon object identifier can be used to sign in with a smart card.

| **Item**          | **Description**                 |
|--------------------------------------|-------------------------------------------------------------------------------------------------------------|
| Registry key      | AllowCertificatesWithNoEKU      |
| Default values    | No changes per operating system versions<br>Disabled and not configured are equivalent |
| Policy management | Restart requirement: None<br>Sign off requirement: None<br>Policy conflicts: None    |
| Notes and resources                  |              |

### Allow ECC certificates to be used for logon and authentication

You can use this policy setting to control whether elliptic curve cryptography (ECC) certificates on a smart card can be used to sign in to a domain. 

When this setting is turned on, ECC certificates on a smart card can be used to sign in to a domain. 

When this setting isn't turned on, ECC certificates on a smart card can't be used to sign in to a domain.

| **Item**          | **Description**                   |
|--------------------------------------|-------------------------------|
| Registry key      | **EnumerateECCCerts**                |
| Default values    | No changes per operating system versions<br>Disabled and not configured are equivalent   |
| Policy management | Restart requirement: None<br>Sign off requirement: None<br>Policy conflicts: None      |
| Notes and resources                  | This policy setting only affects a user's ability to sign in to a domain. ECC certificates on a smart card that are used for other applications, such as document signing, aren't affected by this policy setting. <br>If you use an ECDSA key to sign in, you must also have an associated ECDH key to permit sign in when you're not connected to the network. |

### Allow Integrated Unblock screen to be displayed at the time of logon

You can use this policy setting to determine whether the integrated unblock feature is available in the sign-in user interface (UI). The feature was introduced as a standard feature in the Credential Security Support Provider in Windows Vista.

When this setting is turned on, the integrated unblock feature is available. 

When this setting isn't turned on, the feature is not available.

| **Item**          | **Description**    |
|--------------------------------------|---------------------------------------------------------------------------------------------------------------|
| Registry key      | **AllowIntegratedUnblock**              |
| Default values    | No changes per operating system versions<br>Disabled and not configured are equivalent       |
| Policy management | Restart requirement: None<br>Sign off requirement: None<br>Policy conflicts: None          |
| Notes and resources                  | To use the integrated unblock feature, the smart card must support it. Check with the hardware manufacturer to verify that the smart card supports this feature.<br>You can create a custom message that the user sees when the smart card is blocked by configuring the policy setting [Display string when smart card is blocked](#display-string-when-smart-card-is-blocked). |

### Allow signature keys valid for Logon

You can use this policy setting to allow signature key–based certificates to be enumerated and available for sign in. 

When this setting is turned on, any certificates that are available on the smart card with a signature-only key are listed on the sign-in screen. 

When this setting isn't turned on, certificates available on the smart card with a signature-only key aren't listed on the sign-in screen.

| **Item**          | **Description**                 |
|--------------------------------------|-------------------------------------------------------------------------------------------------------------|
| Registry key      | **AllowSignatureOnlyKeys**|
| Default values    | No changes per operating system versions<br>Disabled and not configured are equivalent |
| Policy management | Restart requirement: None<br>Sign off requirement: None<br>Policy conflicts: None    |
| Notes and resources                  |              |

### Allow time invalid certificates

You can use this policy setting to permit certificates that are expired or not yet valid to be displayed for sign in.

> [!NOTE]
> Before Windows Vista, certificates were required to contain a valid time and to not expire. For a certificate to be used, it must be accepted by the domain controller. This policy setting only controls which certificates are displayed on the client computer.

When this setting is turned on, certificates are listed on the sign-in screen whether they have an invalid time, or their time validity has expired.

When this policy setting isn't turned on, certificates that are expired or not yet valid aren't listed on the sign-in screen.

| **Item**          | **Description**                 |
|--------------------------------------|-------------------------------------------------------------------------------------------------------------|
| Registry key      | **AllowTimeInvalidCertificates** |
| Default values    | No changes per operating system versions<br>Disabled and not configured are equivalent |
| Policy management | Restart requirement: None<br>Sign off requirement: None<br>Policy conflicts: None    |
| Notes and resources                  |              |

### Allow user name hint

You can use this policy setting to determine whether an optional field appears during sign in and provides a subsequent elevation process where users can enter their username or username and domain, which associates a certificate with the user. 

When this policy setting is turned on, users see an optional field where they can enter their username or username and domain. 

When this policy setting isn't turned on, users don't see this optional field.

| **Item**          | **Description**                 |
|--------------------------------------|-------------------------------------------------------------------------------------------------------------|
| Registry key      | **X509HintsNeeded**|
| Default values    | No changes per operating system versions<br>Disabled and not configured are equivalent |
| Policy management | Restart requirement: None<br>Sign off requirement: None<br>Policy conflicts: None    |
| Notes and resources                  |              |

### Configure root certificate clean up

You can use this policy setting to manage the cleanup behavior of root certificates. Certificates are verified by using a trust chain, and the trust anchor for the digital certificate is the Root Certification Authority (CA). A CA can issue multiple certificates with the root certificate as the top certificate of the tree structure. A private key is used to sign other certificates. This creates an inherited trustworthiness for all certificates immediately under the root certificate. 

When this policy setting is turned on, you can set the following cleanup options:

-   **No cleanup**. When the user signs out or removes the smart card, the root certificates used during their session persist on the computer.

-   **Clean up certificates on smart card removal**. When the smart card is removed, the root certificates are removed.

-   **Clean up certificates on log off**. When the user signs out of Windows, the root certificates are removed.

When this policy setting isn't turned on, root certificates are automatically removed when the user signs out of Windows.

| **Item**          | **Description**                 |
|--------------------------------------|-------------------------------------------------------------------------------------------------------------|
| Registry key      | **RootCertificateCleanupOption**|
| Default values    | No changes per operating system versions<br>Disabled and not configured are equivalent |
| Policy management | Restart requirement: None<br>Sign off requirement: None<br>Policy conflicts: None    |
| Notes and resources                  |              |

### Display string when smart card is blocked

You can use this policy setting to change the default message that a user sees if their smart card is blocked.

When this policy setting is turned on, you can create and manage the displayed message that the user sees when a smart card is blocked. 

When this policy setting isn't turned on (and the integrated unblock feature is also enabled), the user sees the system’s default message when the smart card is blocked.

| **Item**          | **Description**             |
|--------------------------------------|-------------------------|
| Registry key      | **IntegratedUnblockPromptString**      |
| Default values    | No changes per operating system versions<br>Disabled and not configured are equivalent                |
| Policy management | Restart requirement: None<br>Sign off requirement: None<br>Policy conflicts: This policy setting is only effective when the [Allow Integrated Unblock screen to be displayed at the time of logon](#allow-integrated-unblock-screen-to-be-displayed-at-the-time-of-logon) policy is enabled. |
| Notes and resources                  |          |

### Filter duplicate logon certificates

You can use this policy setting to configure which valid sign-in certificates are displayed. 

> [!NOTE]
> During the certificate renewal period, a user’s smart card can have multiple valid sign-in certificates issued from the same certificate template, which can cause confusion about which certificate to select. This behavior can occur when a certificate is renewed and the old certificate has not expired yet.
> 
> If two certificates are issued from the same template with the same major version and they are for the same user (this is determined by their UPN), they are determined to be the same.  

When this policy setting is turned on, filtering occurs so that the user can select from only the most current valid certificates. 

If this policy setting isn't turned on, all the certificates are displayed to the user.

This policy setting is applied to the computer after the [Allow time invalid certificates](#allow-time-invalid-certificates) policy setting is applied.

| **Item**          | **Description**               |
|--------------------------------------|--------------------------------------------------------------------------------------------------|
| Registry key      | **FilterDuplicateCerts**|
| Default values    | No changes per operating system versions<br>Disabled and not configured are equivalent                  |
| Policy management | Restart requirement: None<br>Sign off requirement: None<br>Policy conflicts: None  |
| Notes and resources                  | If there are two or more of the same certificates on a smart card and this policy setting is enabled, the certificate that is used to sign in to computers running Windows 2000, Windows XP, or Windows Server 2003 will be displayed. Otherwise, the certificate with the most distant expiration time will be displayed. |

### Force the reading of all certificates from the smart card

You can use this policy setting to manage how Windows reads all certificates from the smart card for sign in. During sign in, Windows reads only the default certificate from the smart card unless it supports retrieval of all certificates in a single call. This policy setting forces Windows to read all the certificates from the smart card.

When this policy setting is turned on, Windows attempts to read all certificates from the smart card, regardless of the CSP feature set. 

When this policy isn't turned on, Windows attempts to read only the default certificate from smart cards that don't support retrieval of all certificates in a single call. Certificates other than the default aren't available for sign in.

| **Item**          | **Description**                 |
|--------------------------------------|----------------------------------------------------------------------------|
| Registry key      | **ForceReadingAllCertificates** |
| Default values    | No changes per operating system versions<br>Disabled and not configured are equivalent |
| Policy management | Restart requirement: None<br>Sign off requirement: None<br>Policy conflicts: None<br><br>**Important**: Enabling this policy setting can adversely impact performance during the sign in process in certain situations.  |
| Notes and resources                  | Contact the smart card vendor to determine if your smart card and associated CSP support the required behavior.                |

### Notify user of successful smart card driver installation

You can use this policy setting to control whether the user sees a confirmation message when a smart card device driver is installed. 

When this policy setting is turned on, the user sees a confirmation message when a smart card device driver is installed. 

When this setting isn't turned on, the user doesn't see a smart card device driver installation message.

| **Item**          | **Description**        |
|--------------------------------------|------------------------------------------------|
| Registry key      | **ScPnPNotification** |
| Default values    | No changes per operating system versions<br>Disabled and not configured are equivalent           |
| Policy management | Restart requirement: None<br>Sign off requirement: None<br>Policy conflicts: None              |
| Notes and resources                  | This policy setting applies only to smart card drivers that have passed the Windows Hardware Quality Labs (WHQL) testing process.        |

### Prevent plaintext PINs from being returned by Credential Manager

You can use this policy setting to prevent Credential Manager from returning plaintext PINs. 

> [!NOTE]
> Credential Manager is controlled by the user on the local computer, and it stores credentials from supported browsers and Windows applications. Credentials are saved in special encrypted folders on the computer under the user’s profile. 

When this policy setting is turned on, Credential Manager doesn't return a plaintext PIN. 

When this setting isn't turned on, Credential Manager can return plaintext PINs.

| **Item**          | **Description**     |
|--------------------------------------|-----------------------------------------------------------------------------------|
| Registry key      | **DisallowPlaintextPin**|
| Default values    | No changes per operating system versions<br>Disabled and not configured are equivalent        |
| Policy management | Restart requirement: None<br>Sign off requirement: None<br>Policy conflicts: None           |
| Notes and resources                  | If this policy setting is enabled, some smart cards might not work in computers running Windows. Consult the smart card manufacturer to determine whether this policy setting should be enabled. |

### Reverse the subject name stored in a certificate when displaying

You can use this policy setting to control the way the subject name appears during sign in.

> [!NOTE]
> To help users distinguish one certificate from another, the user principal name (UPN) and the common name are displayed by default. For example, when this setting is enabled, if the certificate subject is CN=User1, OU=Users, DN=example, DN=com and the UPN is user1@example.com, "User1" is displayed with "user1@example.com." If the UPN is not present, the entire subject name is displayed. This setting controls the appearance of that subject name, and it might need to be adjusted for your organization.

When this policy setting is turned on, the subject name during sign in appears reversed from the way that it's stored in the certificate.

When this policy setting isn’t turned on, the subject name appears the same as it’s stored in the certificate.


| **Item**          | **Description**                 |
|--------------------------------------|-------------------------------------------------------------------------------------------------------------|
| Registry key      | **ReverseSubject** |
| Default values    | No changes per operating system versions<br>Disabled and not configured are equivalent |
| Policy management | Restart requirement: None<br>Sign off requirement: None<br>Policy conflicts: None    |
| Notes and resources                  |              |

### Turn on certificate propagation from smart card

You can use this policy setting to manage the certificate propagation that occurs when a smart card is inserted. 
> [!NOTE]
> The certificate propagation service applies when a signed-in user inserts a smart card in a reader that is attached to the computer. This action causes the certificate to be read from the smart card. The certificates are then added to the user's Personal store.

When this policy setting is turned on, certificate propagation occurs when the user inserts the smart card. 

When this policy setting is turned off, certificate propagation doesn't occur, and the certificates aren't available to applications, like Outlook.

| **Item**          | **Description**    |
|--------------------------------------|----------------|
| Registry key      | **CertPropEnabled**|
| Default values    | No changes per operating system versions<br>Enabled and not configured are equivalent        |
| Policy management | Restart requirement: None<br>Sign off requirement: None<br>Policy conflicts: This policy setting must be enabled to allow the [Turn on root certificate propagation from smart card](#turn-on-root-certificate-propagation-from-smart-card) setting to work when it is enabled. |
| Notes and resources                  | |

### Turn on root certificate propagation from smart card

You can use this policy setting to manage the root certificate propagation that occurs when a smart card is inserted. 

> [!NOTE]
> The certificate propagation service applies when a signed-in user inserts a smart card in a reader that is attached to the computer. This action causes the certificate to be read from the smart card. The certificates are then added to the user's Personal store. 

When this policy setting is turned on, root certificate propagation occurs when the user inserts the smart card.

When this policy setting isn’t turned on, root certificate propagation doesn’t occur when the user inserts the smart card.

| **Item**          | **Description**   |
|--------------------------------------|---------------------------------------------------------------------------------------------------------|
| Registry key      | **EnableRootCertificate Propagation** |
| Default values    | No changes per operating system versions<br>Enabled and not configured are equivalent       |
| Policy management | Restart requirement: None<br>Sign off requirement: None<br>Policy conflicts: For this policy setting to work, the [Turn on certificate propagation from smart card](#turn-on-certificate-propagation-from-smart-card) policy setting must also be enabled. |
| Notes and resources                  |                   |

### Turn on Smart Card Plug and Play service

You can use this policy setting to control whether Smart Card Plug and Play is enabled. 

> [!NOTE]
> Your users can use smart cards from vendors who have published their drivers through Windows Update without needing special middleware. These drivers will be downloaded in the same way as drivers for other devices in Windows. If an appropriate driver isn't available from Windows Update, a PIV-compliant mini driver that's included with any of the supported versions of Windows is used for these cards.

When this policy setting is turned on, the system attempts to install a smart card device driver the first time a smart card is inserted in a smart card reader. 

When this policy setting isn't turned on, a device driver isn't installed when a smart card is inserted in a smart card reader.

| **Item**          | **Description**        |
|--------------------------------------|------------------------------------------------|
| Registry key      | **EnableScPnP** |
| Default values    | No changes per operating system versions<br>Enabled and not configured are equivalent            |
| Policy management | Restart requirement: None<br>Sign off requirement: None<br>Policy conflicts: None              |
| Notes and resources                  | This policy setting applies only to smart card drivers that have passed the Windows Hardware Quality Labs (WHQL) testing process.        |

## Base CSP and Smart Card KSP registry keys

The following registry keys can be configured for the base cryptography service provider (CSP) and the smart card key storage provider (KSP). The following tables list the keys. All keys use the DWORD type.

The registry keys for the Base CSP are in the registry in **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Cryptography\\Defaults\\Provider\\Microsoft Base Smart Card Crypto Provider**.

The registry keys for the smart card KSP are in **HKEY\_LOCAL\_MACHINE\\SYSTEM\\ControlSet001\\Control\\Cryptography\\Providers\\Microsoft Smart Card Key Storage Provider**.

**Registry keys for the base CSP and smart card KSP**

| **Registry Key**                   | **Description**                 |
|------------------------------------|---------------------------------------------------------------------------------|
| **AllowPrivateExchangeKeyImport**  | A non-zero value allows RSA exchange (for example, encryption) private keys to be imported for use in key archival scenarios.<br>Default value: 00000000           |
| **AllowPrivateSignatureKeyImport** | A non-zero value allows RSA signature private keys to be imported for use in key archival scenarios.<br>Default value: 00000000                 |
| **DefaultPrivateKeyLenBits**       | Defines the default length for private keys, if desired.<br>Default value: 00000400<br>Default key generation parameter: 1024-bit keys        |
| **RequireOnCardPrivateKeyGen**     | This key sets the flag that requires on-card private key generation (default). If this value is set, a key generated on a host can be imported into the smart card. This is used for smart cards that don't support on-card key generation or where key escrow is required.<br>Default value: 00000000 |
| **TransactionTimeoutMilliseconds** | Default timeout values allow you to specify whether transactions that take an excessive amount of time will fail.<br>Default value: 000005dc1500<br>The default timeout for holding transactions to the smart card is 1.5 seconds.           |

**Additional registry keys for the smart card KSP**

| **Registry Key**               | **Description**             |
|--------------------------------|-----------------------------------------------------|
| **AllowPrivateECDHEKeyImport** | This value allows Ephemeral Elliptic Curve Diffie-Hellman (ECDHE) private keys to be imported for use in key archival scenarios.<br>Default value: 00000000    |
| **AllowPrivateECDSAKeyImport** | This value allows Elliptic Curve Digital Signature Algorithm (ECDSA) private keys to be imported for use in key archival scenarios.<br>Default value: 00000000 |

## CRL checking registry keys

The following table lists the keys and the corresponding values to turn off certificate revocation list (CRL) checking at the Key Distribution Center (KDC) or client. To manage CRL checking, you must configure settings for both the KDC and the client.

**CRL checking registry keys**

| **Registry Key**         | **Details**                 |
|------------|-----------------------------|
| **HKEY\_LOCAL\_MACHINE\\SYSTEM\\CCS\\Services\\Kdc\\UseCachedCRLOnlyAndIgnoreRevocationUnknownErrors**| Type = DWORD<br>Value = 1 |
| **HKEY\_LOCAL\_MACHINE\\SYSTEM\\CCS\\Control\\LSA\\Kerberos\\Parameters\\UseCachedCRLOnlyAndIgnoreRevocationUnknownErrors**| Type = DWORD<br>Value = 1 |

## Additional smart card Group Policy settings and registry keys

In a smart card deployment, additional Group Policy settings can be used to enhance ease-of-use or security. Two of these policy settings that can complement a smart card deployment are:

-   Turning off delegation for computers

-   Interactive logon: Do not require CTRL+ALT+DEL (not recommended)

The following smart card-related Group Policy settings are in Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options.

**Local security policy settings**

| Group Policy setting and registry key    |  Default   | Description   |
|------------------------------------------|------------|---------------|
| Interactive logon: Require smart card<br><br>**scforceoption**   |  Disabled        | This security policy setting requires users to sign in to a computer by using a smart card.<br><br>**Enabled**  Users can sign in to the computer only by using a smart card.<br>**Disabled**  Users can sign in to the computer by using any method.         |
| Interactive logon: Smart card removal behavior<br><br>**scremoveoption** | This policy setting isn't defined, which means that the system treats it as **No Action**. | This setting determines what happens when the smart card for a signed-in user is removed from the smart card reader. The options are:<br>**No Action**<br>**Lock Workstation**: The workstation is locked when the smart card is removed, so users can leave the area, take their smart card with them, and still maintain a protected session.<br>**Force Logoff**: The user is automatically signed out when the smart card is removed.<br>**Disconnect if a Remote Desktop Services session**: Removal of the smart card disconnects the session without signing out the user. The user can reinsert the smart card and resume the session later, or at another computer that's equipped with a smart card reader, without having to sign in again. If the session is local, this policy setting functions identically to the **Lock Workstation** option.<br><br>**Note**: In earlier versions of Windows Server, Remote Desktop Services was called Terminal Services.  |

From the Local Security Policy Editor (secpol.msc), you can edit and apply system policies to manage credential delegation for local or domain computers.

The following smart card-related Group Policy settings are in Computer Configuration\\Administrative Templates\\System\\Credentials Delegation.

Registry keys are in **HKEY\_LOCAL\_MACHINE\\SYSTEM\\ControlSet001\\Control\\Lsa\\Credssp\\PolicyDefaults**.

> [!NOTE]
> In the following table, fresh credentials are those that you are prompted for when running an application.

**Credential delegation policy settings**


|                                        Group Policy setting and registry key                                         |    Default     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
|----------------------------------------------------------------------------------------------------------------------|----------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|                         Allow Delegating Fresh Credentials<br><br>**AllowFreshCredentials**  | Not configured | This policy setting applies: <br>When server authentication was achieved through a trusted X509 certificate or Kerberos protocol.<br>To applications that use the CredSSP component (for example, Remote Desktop Services).<br><br>**Enabled**: You can specify the servers where the user's fresh credentials can be delegated. <br>**Not configured**: After proper mutual authentication, delegation of fresh credentials is permitted to Remote Desktop Services running on any computer.<br>**Disabled**: Delegation of fresh credentials to any computer isn't permitted.<br><br>**Note**: This policy setting can be set to one or more service principal names (SPNs). The SPN represents the target server where the user credentials can be delegated. A single wildcard character is permitted when specifying the SPN, for example:<br>Use \*TERMSRV/\*\* for Remote Desktop Session Host (RD Session Host) running on any computer. <br>Use *TERMSRV/host.humanresources.fabrikam.com* for RD Session Host running on the host.humanresources.fabrikam.com computer.<br>Use *TERMSRV/\*.humanresources.fabrikam.com* for RD Session Host running on all computers in .humanresources.fabrikam.com |
| Allow Delegating Fresh Credentials with NTLM-only Server Authentication<br><br>**AllowFreshCredentialsWhenNTLMOnly** | Not configured |                                                                                                                                                                            This policy setting applies:<br>When server authentication was achieved by using NTLM.<br>To applications that use the CredSSP component (for example, Remote Desktop).<br><br>**Enabled**: You can specify the servers where the user's fresh credentials can be delegated.<br>**Not configured**: After proper mutual authentication, delegation of fresh credentials is permitted to RD Session Host running on any computer (TERMSRV/\*).<br>**Disabled**: Delegation of fresh credentials isn't permitted to any computer.<br><br>**Note**: This policy setting can be set to one or more SPNs. The SPN represents the target server where the user credentials can be delegated. A single wildcard character (\*) is permitted when specifying the SPN.<br>See the **Allow Delegating Fresh Credentials** policy setting description for examples.                                                                                                                                                                            |
|                          Deny Delegating Fresh Credentials<br><br>**DenyFreshCredentials** | Not configured |                                                                                                                                                                                                                                                                                                 This policy setting applies to applications that use the CredSSP component (for example, Remote Desktop).<br><br>**Enabled**: You can specify the servers where the user's fresh credentials can't be delegated.<br>**Disabled** or **Not configured**: A server is not specified.<br><br>**Note**: This policy setting can be set to one or more SPNs. The SPN represents the target server where the user credentials can't be delegated. A single wildcard character (\*) is permitted when specifying the SPN.<br>For examples, see the "Allow delegating fresh credentials" policy setting.                                                                                                                                                                                                                                                                                                 |

If you're using Remote Desktop Services with smart card logon, you can't delegate default and saved credentials. The registry keys in the following table, which are at **HKEY\_LOCAL\_MACHINE\\SYSTEM\\ControlSet001\\Control\\Lsa\\Credssp\\PolicyDefaults**, and the corresponding Group Policy settings are ignored.

| **Registry key** | **Corresponding Group Policy setting**                 |
|-------------------------------------|---------------------------------------------------------------------------|
| **AllowDefaultCredentials**             | Allow Delegating Default Credentials                   |
| **AllowDefaultCredentialsWhenNTLMOnly** | Allow Delegating Default Credentials with NTLM-only Server Authentication |
| **AllowSavedCredentials** | Allow Delegating Saved Credentials  |
| **AllowSavedCredentialsWhenNTLMOnly** | Allow Delegating Saved Credentials with NTLM-only Server Authentication   |

## See also

[Smart Card Technical Reference](smart-card-windows-smart-card-technical-reference.md)
