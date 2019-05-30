---
title: Considerations when using Windows Defender Credential Guard (Windows 10)
description: Considerations and recommendations for certain scenarios when using Windows Defender Credential Guard in Windows 10.
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
ms.date: 08/31/2017
---

# Considerations when using Windows Defender Credential Guard

**Applies to**
-   Windows 10
-   Windows Server 2016

Prefer video? See [Credentials Protected by Windows Defender Credential Guard](https://mva.microsoft.com/en-us/training-courses/deep-dive-into-credential-guard-16651?l=mD3geLJyC_8304300474)
in the **Deep Dive into Windows Defender Credential Guard** video series.

Passwords are still weak. We recommend that in addition to deploying Windows Defender Credential Guard, organizations move away from passwords to other authentication methods, such as physical smart cards, virtual smart cards, or Windows Hello for Business.

Windows Defender Credential Guard uses hardware security, so some features such as Windows To Go, are not supported.

## Wi-fi and VPN Considerations
When you enable Windows Defender Credential Guard, you can no longer use NTLM classic authentication for Single Sign-On. You will be forced to enter your credentials to use these protocols and cannot save the credentials for future use. If you are using WiFi and VPN endpoints that are based on MS-CHAPv2, they are subject to similar attacks as for NTLMv1. For WiFi and VPN connections, Microsoft recommends that organizations move from MSCHAPv2-based connections such as PEAP-MSCHAPv2 and EAP-MSCHAPv2, to certificate-based authentication such as PEAP-TLS or EAP-TLS.

## Kerberos Considerations

When you enable Windows Defender Credential Guard, you can no longer use Kerberos unconstrained delegation or DES encryption. Unconstrained delegation could allow attackers to extract Kerberos keys from the isolated LSA process. Use constrained or resource-based Kerberos delegation instead.

## 3rd Party Security Support Providers Considerations
Some 3rd party Security Support Providers (SSPs and APs) might not be compatible with Windows Defender Credential Guard because it does not allow third-party SSPs to ask for password hashes from LSA. However, SSPs and APs still get notified of the password when a user logs on and/or changes their password. Any use of undocumented APIs within custom SSPs and APs are not supported. We recommend that custom implementations of SSPs/APs are tested with Windows Defender Credential Guard. SSPs and APs that depend on any undocumented or unsupported behaviors fail. For example, using the KerbQuerySupplementalCredentialsMessage API is not supported. Replacing the NTLM or Kerberos SSPs with custom SSPs and APs. For more info, see [Restrictions around Registering and Installing a Security Package](https://msdn.microsoft.com/library/windows/desktop/dn865014.aspx) on MSDN.

## Upgrade Considerations
As the depth and breadth of protections provided by Windows Defender Credential Guard are increased, subsequent releases of Windows 10 with Windows Defender Credential Guard running may impact scenarios that were working in the past. For example, Windows Defender Credential Guard may block the use of a particular type of credential or a particular component to prevent malware from taking advantage of vulnerabilities. Test scenarios required for operations in an organization before upgrading a device using Windows Defender Credential Guard.

### Saved Windows Credentials Protected

Starting with Windows 10, version 1511, domain credentials that are stored with Credential Manager are protected with Windows Defender Credential Guard. Credential Manager allows you to store three types of credentials: Windows credentials, certificate-based credentials, and generic credentials. Generic credentials such as user names and passwords that you use to log on to websites are not protected since the applications require your cleartext password. If the application does not need a copy of the password, they can save domain credentials as Windows credentials that are protected. Windows credentials are used to connect to other computers on a network. The following considerations apply to the Windows Defender Credential Guard protections for Credential Manager:
    -   Windows credentials saved by Remote Desktop Client cannot be sent to a remote host. Attempts to use saved Windows credentials fail, displaying the error message "Logon attempt failed."
    -   Applications that extract Windows credentials fail.
    -   When credentials are backed up from a PC that has Windows Defender Credential Guard enabled, the Windows credentials cannot be restored. If you need to back up your credentials, you must do this before you enable Windows Defender Credential Guard. Otherwise, you cannot restore those credentials.

## Clearing TPM Considerations
Virtualization-based Security (VBS) uses the TPM to protect its key. So when the TPM is cleared then the TPM protected key used to encrypt VBS secrets is lost.

>[!WARNING]
> Clearing the TPM results in loss of protected data for all features that use VBS to protect data.  <br>
> When a TPM is cleared ALL features, which use VBS to protect data can no longer decrypt their protected data.

As a result Credential Guard can no longer decrypt protected data. VBS creates a new TPM protected key for Credential Guard. Credential Guard uses the new key to protect new data. However, the previously protected data is lost forever.

>[!NOTE]
> Credential Guard obtains the key during initialization. So the data loss will only impact persistent data and occur after the next system startup.

### Windows credentials saved to Credential Manager
Since Credential Manager cannot decrypt saved Windows Credentials, they are deleted. Applications should prompt for credentials that were previously saved. If saved again, then Windows credentials are protected Credential Guard.

### Domain-joined device’s automatically provisioned public key
Beginning with Windows 10 and Windows Server 2016, domain-devices automatically provision a bound public key, for more information about automatic public key provisioning, see [Domain-joined Device Public Key Authentication](https://docs.microsoft.com/windows-server/security/kerberos/domain-joined-device-public-key-authentication).

Since Credential Guard cannot decrypt the protected private key, Windows uses the domain-joined computer's password for authentication to the domain. Unless additional policies are deployed, there should not be a loss of functionality. If a device is configured to only use public key, then it cannot authenticate with password until that policy is disabled. For more information on Configuring devices to only use public key, see [Domain-joined Device Public Key Authentication](https://docs.microsoft.com/windows-server/security/kerberos/domain-joined-device-public-key-authentication).

Also if any access control checks including authentication policies require devices to have either the KEY TRUST IDENTITY (S-1-18-4) or FRESH PUBLIC KEY IDENTITY (S-1-18-3) well-known SIDs, then those access checks fail. For more information about authentication policies, see [Authentication Policies and Authentication Policy Silos](https://docs.microsoft.com/windows-server/security/credentials-protection-and-management/authentication-policies-and-authentication-policy-silos). For more information about well-known SIDs, see [[MS-DTYP] Section 2.4.2.4 Well-known SID Structures](https://msdn.microsoft.com/library/cc980032.aspx).

### Breaking DPAPI on domain-joined devices
On domain-joined devices, DPAPI can recover user keys using a domain controller from the user's domain. If a domain-joined device has no connectivity to a domain controller, then recovery is not possible.

>[!IMPORTANT]
> Best practice when clearing a TPM on a domain-joined device is to be on a network with connectivity to domain controllers. This ensures DPAPI functions and the user does not experience strange behavior. <br>
Auto VPN configuration is protected with user DPAPI. User may not be able to use VPN to connect to domain controllers since the VPN configurations are lost.

If you must clear the TPM on a domain-joined device without connectivity to domain controllers, then you should consider the following.

Domain user sign-in on a domain-joined device after clearing a TPM for as long as there is no connectivity to a domain controller:

|Credential Type | Windows 10 version | Behavior
|---|---|---|
| Certificate (smart card or Windows Hello for Business) | All | All data protected with user DPAPI is unusable and user DPAPI does not work at all. |
| Password | Windows 10 v1709 or later | If the user signed-in with a certificate or password prior to clearing the TPM, then they can sign-in with password and user DPAPI is unaffected.
| Password | Windows 10 v1703 | If the user signed-in with a password prior to clearing the TPM, then they can sign-in with that password and are unaffected.
| Password | Windows 10 v1607 or earlier | Existing user DPAPI protected data is unusable. User DPAPI is able to protect new data.

Once the device has connectivity to the domain controllers, DPAPI recovers the user's key and data protected prior to clearing the TPM can be decrypted.

#### Impact of DPAPI failures on Windows Information Protection
When data protected with user DPAPI is unusable, then the user loses access to all work data protected by Windows Information Protection.  The impact includes: Outlook 2016 is unable to start and work protected documents cannot be opened.  If DPAPI is working, then newly created work data is protected and can be accessed.

**Workaround:** Users can resolve the problem by connecting their device to the domain and rebooting or using their Encrypting File System Data Recovery Agent certificate. For more information about Encrypting File System Data Recovery Agent certificate, see [Create and verify an Encrypting File System (EFS) Data Recovery Agent (DRA) certificate](https://docs.microsoft.com/windows/threat-protection/windows-information-protection/create-and-verify-an-efs-dra-certificate).


## See also

**Deep Dive into Windows Defender Credential Guard: Related videos**

[Virtualization-based security](https://mva.microsoft.com/en-us/training-courses/deep-dive-into-credential-guard-16651?l=1CoELLJyC_6704300474)
