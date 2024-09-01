---
title: EnterpriseDataProtection CSP
description: Learn how the EnterpriseDataProtection configuration service provider (CSP) configures Windows Information Protection (formerly, Enterprise Data Protection) settings.
ms.date: 08/09/2017
---

# EnterpriseDataProtection CSP

[!INCLUDE [wip-deprecation](includes/wip-deprecation.md)]

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The EnterpriseDataProtection configuration service provider (CSP) is used to configure settings for Windows Information Protection (WIP), formerly known as Enterprise Data Protection. For more information about WIP, see [Protect your enterprise data using Windows Information Protection (WIP)](/previous-versions/windows/it-pro/windows-10/security/information-protection/windows-information-protection/protect-enterprise-data-using-wip).

> [!NOTE]
> To make Windows Information Protection functional, the AppLocker CSP and the network isolation-specific settings must also be configured. For more information, see [AppLocker CSP](applocker-csp.md) and NetworkIsolation policies in [Policy CSP](policy-configuration-service-provider.md).

While Windows Information Protection has no hard dependency on VPN, for best results you should configure VPN profiles first before you configure the WIP policies. For VPN best practice recommendations, see [VPNv2 CSP](vpnv2-csp.md).

To learn more about Windows Information Protection, see the following articles:

- [Create a Windows Information Protection (WIP) policy](/previous-versions/windows/it-pro/windows-10/security/information-protection/windows-information-protection/overview-create-wip-policy)
- [General guidance and best practices for Windows Information Protection (WIP)](/previous-versions/windows/it-pro/windows-10/security/information-protection/windows-information-protection/guidance-and-best-practices-wip)

The following example shows the EnterpriseDataProtection CSP in tree format.

```console
./Device/Vendor/MSFT
EnterpriseDataProtection
----Settings
--------EDPEnforcementLevel
--------EnterpriseProtectedDomainNames
--------AllowUserDecryption
--------DataRecoveryCertificate
--------RevokeOnUnenroll
--------RMSTemplateIDForEDP
--------AllowAzureRMSForEDP
--------EDPShowIcons
----Status
```

## <a href="" id="--device-vendor-msft-enterprisedataprotection"></a> `./Device/Vendor/MSFT/EnterpriseDataProtection`

The root node for the CSP.

### <a href="" id="settings"></a> Settings

The root node for the Windows Information Protection (WIP) configuration settings.

#### <a href="" id="settings-edpenforcementlevel"></a> Settings/EDPEnforcementLevel

Set the WIP enforcement level.

> [!NOTE]
> Setting this value isn't sufficient to enable Windows Information Protection on the device. Attempts to change this value will fail when the WIP cleanup is running.

The following list shows the supported values:

- 0 (default) - Off / No protection (decrypts previously protected data).
- 1 - Silent mode (encrypt and audit only).
- 2 - Allow override mode (encrypt, prompt and allow overrides, and audit).
- 3 - Hides overrides (encrypt, prompt but hide overrides, and audit).

Supported operations are Add, Get, Replace, and Delete. Value type is integer.

#### <a href="" id="settings-enterpriseprotecteddomainnames"></a> Settings/EnterpriseProtectedDomainNames

A list of domains used by the enterprise for its user identities separated by pipes (`|`). The first domain in the list must be the primary enterprise ID, that is, the one representing the managing authority for Windows Information Protection. User identities from one of these domains is considered an enterprise managed account and data associated with it should be protected. For example, the domains for all email accounts owned by the enterprise would be expected to appear in this list. Attempts to change this value will fail when the WIP cleanup is running.

Changing the primary enterprise ID isn't supported and may cause unexpected behavior on the client.

> [!NOTE]
> The client requires domain name to be canonical, otherwise the setting will be rejected by the client.

Here are the steps to create canonical domain names:

1. Transform the ASCII characters (A-Z only) to lowercase. For example, Microsoft.COM -> microsoft.com.
2. Call [IdnToAscii](/windows/win32/api/winnls/nf-winnls-idntoascii) with IDN\_USE\_STD3\_ASCII\_RULES as the flags.
3. Call [IdnToUnicode](/windows/win32/api/winnls/nf-winnls-idntounicode) with no flags set (dwFlags = 0).

Supported operations are Add, Get, Replace, and Delete. Value type is string.

#### <a href="" id="settings-allowuserdecryption"></a> Settings/AllowUserDecryption

Allows the user to decrypt files. If this is set to 0 (Not Allowed), then the user won't be able to remove protection from enterprise content through the operating system or the application user experiences.

> [!IMPORTANT]
> Starting in Windows 10, version 1703, AllowUserDecryption is no longer supported.

The following list shows the supported values:

- 0 - Not allowed.
- 1 (default) - Allowed.

Most restricted value is 0.

Supported operations are Add, Get, Replace, and Delete. Value type is integer.

#### <a href="" id="settings-datarecoverycertificate"></a> Settings/DataRecoveryCertificate

Specifies a recovery certificate that can be used for data recovery of encrypted files. This certificate is the same as the data recovery agent (DRA) certificate for encrypting file system (EFS), only delivered through mobile device management (MDM) instead of Group Policy.

> [!NOTE]
> If this policy and the corresponding Group Policy setting are both configured, the Group Policy setting is enforced.

DRA information from MDM policy must be a serialized binary blob identical to what we expect from GP.
The binary blob is the serialized version of following structure:

```cpp
//
//  Recovery Policy Data Structures
//

typedef struct _RECOVERY_POLICY_HEADER {
    USHORT      MajorRevision;
    USHORT      MinorRevision;
    ULONG       RecoveryKeyCount;
} RECOVERY_POLICY_HEADER, *PRECOVERY_POLICY_HEADER;

typedef struct _RECOVERY_POLICY_1_1    {
        RECOVERY_POLICY_HEADER  RecoveryPolicyHeader;
        RECOVERY_KEY_1_1        RecoveryKeyList[1];
}   RECOVERY_POLICY_1_1, *PRECOVERY_POLICY_1_1;

#define EFS_RECOVERY_POLICY_MAJOR_REVISION_1   (1)
#define EFS_RECOVERY_POLICY_MINOR_REVISION_0   (0)

#define EFS_RECOVERY_POLICY_MINOR_REVISION_1   (1)

///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//  RECOVERY_KEY Data Structure                                               /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

//
// Current format of recovery data.
//

typedef struct _RECOVERY_KEY_1_1   {
        ULONG               TotalLength;
        EFS_PUBLIC_KEY_INFO PublicKeyInfo;
} RECOVERY_KEY_1_1, *PRECOVERY_KEY_1_1;


typedef struct _EFS_PUBLIC_KEY_INFO {

    //
    // The length of this entire structure, including string data
    // appended to the end. The length should be a multiple of 8 for
    // 64 bit alignment
    //

    ULONG Length;

    //
    // Sid of owner of the public key (regardless of format).
   // This field is to be treated as a hint only.
    //

    ULONG PossibleKeyOwner;

    //
    // Contains information describing how to interpret
    // the public key information
    //

    ULONG KeySourceTag;

    union {

        struct {

            //
            // The following fields contain offsets based at the
            // beginning of the structure.  Each offset is to
            // a NULL terminated WCHAR string.
            //

            ULONG ContainerName;
            ULONG ProviderName;

            //
            // The exported public key used to encrypt the FEK.
            // This field contains an offset from the beginning of the
            // structure.
            //

            ULONG PublicKeyBlob;

            //
            // Length of the PublicKeyBlob in bytes
            //

            ULONG PublicKeyBlobLength;

        } ContainerInfo;

        struct {

            ULONG CertificateLength;       // in bytes
            ULONG Certificate;             // offset from start of structure

        } CertificateInfo;


        struct {

            ULONG ThumbprintLength;        // in bytes
            ULONG CertHashData;            // offset from start of structure

        } CertificateThumbprint;
    };



} EFS_PUBLIC_KEY_INFO, *PEFS_PUBLIC_KEY_INFO;

//
// Possible KeyTag values
//

typedef enum _PUBLIC_KEY_SOURCE_TAG {
    EfsCryptoAPIContainer = 1,
    EfsCertificate,
    EfsCertificateThumbprint
} PUBLIC_KEY_SOURCE_TAG, *PPUBLIC_KEY_SOURCE_TAG;
```

For EFSCertificate KeyTag, it's expected to be a DER ENCODED binary certificate.

Supported operations are Add, Get, Replace, and Delete. Value type is base-64 encoded certificate.

#### <a href="" id="settings-revokeonunenroll"></a> Settings/RevokeOnUnenroll

This policy controls whether to revoke the Windows Information Protection keys when a device unenrolls from the management service. If set to 0 (Don't revoke keys), the keys won't be revoked and the user will continue to have access to protected files after unenrollment. If the keys aren't revoked, there will be no revoked file cleanup, later. Prior to sending the unenroll command, when you want a device to do a selective wipe when it's unenrolled, then you should explicitly set this policy to 1.

The following list shows the supported values:

- 0 - Don't revoke keys.
- 1 (default) - Revoke keys.

Supported operations are Add, Get, Replace, and Delete. Value type is integer.

#### <a href="" id="settings-revokeonmdmhandoff"></a> Settings/RevokeOnMDMHandoff

Added in Windows 10, version 1703. This policy controls whether to revoke the Windows Information Protection keys when a device upgrades from mobile application management (MAM) to MDM. If set to 0 (Don't revoke keys), the keys won't be revoked and the user will continue to have access to protected files after upgrade. This setting is recommended if the MDM service is configured with the same WIP EnterpriseID as the MAM service.

- 0 - Don't revoke keys.
- 1 (default) - Revoke keys.

Supported operations are Add, Get, Replace, and Delete. Value type is integer.

#### <a href="" id="settings-rmstemplateidforedp"></a> Settings/RMSTemplateIDForEDP

TemplateID GUID to use for Rights Management Service (RMS) encryption. The RMS template allows the IT admin to configure the details about who has access to RMS-protected file and how long they have access.

Supported operations are Add, Get, Replace, and Delete. Value type is string (GUID).

#### <a href="" id="settings-allowazurermsforedp"></a> Settings/AllowAzureRMSForEDP

Specifies whether to allow Azure RMS encryption for Windows Information Protection.

- 0 (default) - Don't use RMS.
- 1 - Use RMS.

Supported operations are Add, Get, Replace, and Delete. Value type is integer.

#### <a href="" id="settings-smbautoencryptedfileextensions"></a> Settings/SMBAutoEncryptedFileExtensions

Added in Windows 10, version 1703. Specifies a list of file extensions, so that files with these extensions are encrypted when copying from a Server Message Block (SMB) share within the corporate boundary as defined in the Policy CSP nodes for [NetworkIsolation/EnterpriseIPRange](policy-csp-networkisolation.md) and [NetworkIsolation/EnterpriseNetworkDomainNames](policy-csp-networkisolation.md). Use semicolon (;) delimiter in the list.
When this policy isn't specified, the existing auto-encryption behavior is applied.  When this policy is configured, only files with the extensions in the list will be encrypted.
Supported operations are Add, Get, Replace and Delete. Value type is string.

#### <a href="" id="settings-edpshowicons"></a> Settings/EDPShowIcons

Determines whether overlays are added to icons for WIP protected files in Explorer and enterprise only app tiles on the **Start** menu. Starting in Windows 10, version 1703 this setting also configures the visibility of the Windows Information Protection icon in the title bar of a WIP-protected app.
The following list shows the supported values:

- 0 (default) - No WIP overlays on icons or tiles.
- 1 - Show WIP overlays on protected files and apps that can only create enterprise content.

Supported operations are Add, Get, Replace, and Delete. Value type is integer.

### <a href="" id="status"></a> Status

A read-only bit mask that indicates the current state of Windows Information Protection on the Device. The MDM service can use this value to determine the current overall state of WIP. WIP is only on (bit 0 = 1) if WIP mandatory policies and WIP AppLocker settings are configured.

Suggested values:

|Reserved for future use|WIP mandatory settings<br>Set = 1<br>Not set = 0|Reserved for future use|AppLocker configured<br>Yes = 1<br>No = 0|WIP on = 1<br>WIP off = 0|
|--- |--- |--- |--- |--- |
|4|3|2|1|0|

Bit 0 indicates whether WIP is on or off.

Bit 1 indicates whether AppLocker WIP policies are set.

Bit 3 indicates whether the mandatory Windows Information Protection policies are configured. If one or more of the mandatory WIP policies aren't configured, the bit 3 is set to 0 (zero).

Here's the list of mandatory WIP policies:

- EDPEnforcementLevel in EnterpriseDataProtection CSP
- DataRecoveryCertificate in EnterpriseDataProtection CSP
- EnterpriseProtectedDomainNames in EnterpriseDataProtection CSP
- NetworkIsolation/EnterpriseIPRange in Policy CSP
- NetworkIsolation/EnterpriseNetworkDomainNames in Policy CSP

Bits 2 and 4 are reserved for future use.

Supported operation is Get. Value type is integer.

## Related articles

[Configuration service provider reference](index.yml)

[Protect your enterprise data using Windows Information Protection (WIP)](/previous-versions/windows/it-pro/windows-10/security/information-protection/windows-information-protection/protect-enterprise-data-using-wip)
