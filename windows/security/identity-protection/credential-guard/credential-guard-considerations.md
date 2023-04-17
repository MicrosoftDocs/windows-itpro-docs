---
ms.date: 01/06/2023
title: Considerations when using Windows Defender Credential Guard
description: Considerations and recommendations for certain scenarios when using Windows Defender Credential Guard.
ms.topic: article
---

# Considerations when using Windows Defender Credential Guard

It's recommended that in addition to deploying Windows Defender Credential Guard, organizations move away from passwords to other authentication methods, such as Windows Hello for Business, FIDO 2 security keys or smart cards.

## Wi-fi and VPN considerations

When you enable Windows Defender Credential Guard, you can no longer use NTLM classic authentication for single sign-on. You'll be forced to enter your credentials to use these protocols and can't save the credentials for future use.\
If you're using WiFi and VPN endpoints that are based on MS-CHAPv2, they're subject to similar attacks as for NTLMv1.

For WiFi and VPN connections, it's recommended to move from MSCHAPv2-based connections (such as PEAP-MSCHAPv2 and EAP-MSCHAPv2), to certificate-based authentication (such as PEAP-TLS or EAP-TLS).

## Kerberos considerations

When you enable Windows Defender Credential Guard, you can no longer use Kerberos unconstrained delegation or DES encryption. Unconstrained delegation could allow attackers to extract Kerberos keys from the isolated LSA process.\
Use constrained or resource-based Kerberos delegation instead.

## Third party Security Support Providers considerations

Some third party Security Support Providers (SSPs and APs) might not be compatible with Windows Defender Credential Guard because it doesn't allow third-party SSPs to ask for password hashes from LSA. However, SSPs and APs still get notified of the password when a user logs on and/or changes their password. Any use of undocumented APIs within custom SSPs and APs aren't supported.\
It's recommended that custom implementations of SSPs/APs are tested with Windows Defender Credential Guard. SSPs and APs that depend on any undocumented or unsupported behaviors fail. For example, using the KerbQuerySupplementalCredentialsMessage API isn't supported. Replacing the NTLM or Kerberos SSPs with custom SSPs and APs.

For more information, see [Restrictions around Registering and Installing a Security Package](/windows/win32/secauthn/restrictions-around-registering-and-installing-a-security-package).

## Upgrade considerations

As the depth and breadth of protections provided by Windows Defender Credential Guard are increased, new releases of Windows with Windows Defender Credential Guard running may affect scenarios that were working in the past. For example, Windows Defender Credential Guard may block the use of a particular type of credential or a particular component to prevent malware from taking advantage of vulnerabilities.

Test scenarios required for operations in an organization before upgrading a device using Windows Defender Credential Guard.

## Saved Windows credentials protected

Domain credentials that are stored in *Credential Manager* are protected with Windows Defender Credential Guard. Credential Manager allows you to store three types of credentials:

- Windows credentials
- Certificate-based credentials
- Generic credentials

Generic credentials, such as user names and passwords that you use to sign in websites, aren't protected since the applications require your clear-text password. If the application doesn't need a copy of the password, they can save domain credentials as Windows credentials that are protected. Windows credentials are used to connect to other computers on a network.

The following considerations apply to the Windows Defender Credential Guard protections for Credential Manager:

- Windows credentials saved by the Remote Desktop client can't be sent to a remote host. Attempts to use saved Windows credentials fail, displaying the error message *Logon attempt failed.*
- Applications that extract Windows credentials fail
- When credentials are backed up from a PC that has Windows Defender Credential Guard enabled, the Windows credentials can't be restored. If you need to back up your credentials, you must do so before you enable Windows Defender Credential Guard. Otherwise, you can't restore those credentials

## Clearing TPM considerations

Virtualization-based Security (VBS) uses the TPM to protect its key. When the TPM is cleared, the TPM protected key used to encrypt VBS secrets is lost.

>[!WARNING]
> Clearing the TPM results in loss of protected data for all features that use VBS to protect data.
>
> When a TPM is cleared, **all** features that use VBS to protect data can no longer decrypt their protected data.

As a result, Credential Guard can no longer decrypt protected data. VBS creates a new TPM protected key for Credential Guard. Credential Guard uses the new key to protect new data. However, the previously protected data is lost forever.

>[!NOTE]
> Credential Guard obtains the key during initialization. The data loss will only impact persistent data and occur after the next system startup.

### Windows credentials saved to Credential Manager

Since Credential Manager can't decrypt saved Windows Credentials, they're deleted. Applications should prompt for credentials that were previously saved. If saved again, then Windows credentials are protected Credential Guard.

### Domain-joined device's automatically provisioned public key

Active Directory domain-joined devices automatically provision a bound public key, for more information about automatic public key provisioning, see [Domain-joined Device Public Key Authentication](/windows-server/security/kerberos/domain-joined-device-public-key-authentication).

Since Credential Guard can't decrypt the protected private key, Windows uses the domain-joined computer's password for authentication to the domain. Unless other policies are deployed, there shouldn't be a loss of functionality. If a device is configured to only use public key, then it can't authenticate with password until that policy is disabled. For more information on Configuring devices to only use public key, see [Domain-joined Device Public Key Authentication](/windows-server/security/kerberos/domain-joined-device-public-key-authentication).

Also if any access control checks including authentication policies require devices to have either the KEY TRUST IDENTITY (S-1-18-4) or FRESH PUBLIC KEY IDENTITY (S-1-18-3) well-known SIDs, then those access checks fail. For more information about authentication policies, see [Authentication Policies and Authentication Policy Silos](/windows-server/security/credentials-protection-and-management/authentication-policies-and-authentication-policy-silos). For more information about well-known SIDs, see [[MS-DTYP] Section 2.4.2.4 Well-known SID Structures](/openspecs/windows_protocols/ms-dtyp/81d92bba-d22b-4a8c-908a-554ab29148ab).

### Breaking DPAPI on domain-joined devices

On domain-joined devices, DPAPI can recover user keys using a domain controller from the user's domain. If a domain-joined device has no connectivity to a domain controller, then recovery isn't possible.

>[!IMPORTANT]
> Best practice when clearing a TPM on a domain-joined device is to be on a network with connectivity to domain controllers. This ensures DPAPI functions and the user does not experience strange behavior.

Auto VPN configuration is protected with user DPAPI. User may not be able to use VPN to connect to domain controllers since the VPN configurations are lost.
If you must clear the TPM on a domain-joined device without connectivity to domain controllers, then you should consider the following.

Domain user sign-in on a domain-joined device after clearing a TPM for as long as there's no connectivity to a domain controller:

|Credential Type | Behavior
|---|---|---|
| Certificate (smart card or Windows Hello for Business) | All data protected with user DPAPI is unusable and user DPAPI doesn't work at all. |
| Password | If the user signed in with a certificate or password prior to clearing the TPM, then they can sign-in with password and user DPAPI is unaffected. |

Once the device has connectivity to the domain controllers, DPAPI recovers the user's key and data protected prior to clearing the TPM can be decrypted.

#### Impact of DPAPI failures on Windows Information Protection

When data protected with user DPAPI is unusable, then the user loses access to all work data protected by Windows Information Protection.  The impact includes: Outlook is unable to start and work protected documents can't be opened. If DPAPI is working, then newly created work data is protected and can be accessed.

**Workaround:** Users can resolve the problem by connecting their device to the domain and rebooting or using their Encrypting File System Data Recovery Agent certificate. For more information about Encrypting File System Data Recovery Agent certificate, see [Create and verify an Encrypting File System (EFS) Data Recovery Agent (DRA) certificate](/windows/threat-protection/windows-information-protection/create-and-verify-an-efs-dra-certificate).