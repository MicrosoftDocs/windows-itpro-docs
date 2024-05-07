---
ms.date: 08/31/2023
title: Considerations and known issues when using Credential Guard
description: Considerations, recommendations and known issues when using Credential Guard.
ms.topic: troubleshooting
---

> [!IMPORTANT]
> Windows Server 2025 is in PREVIEW. This information relates to a prerelease product that may be substantially modified before it's released. Microsoft makes no warranties, expressed or implied, with respect to the information provided here.

# Considerations and known issues when using Credential Guard

It's recommended that in addition to deploying Credential Guard, organizations move away from passwords to other authentication methods, such as Windows Hello for Business, FIDO 2 security keys or smart cards.

## Wi-fi and VPN considerations

When Credential Guard is enabled, you can no longer use NTLM classic authentication for single sign-on. You'll be forced to enter your credentials to use these protocols and can't save the credentials for future use.

If you're using WiFi and VPN endpoints that are based on MS-CHAPv2, they're subject to similar attacks as for NTLMv1.

For WiFi and VPN connections, it's recommended to move from MSCHAPv2-based connections (such as PEAP-MSCHAPv2 and EAP-MSCHAPv2), to certificate-based authentication (such as PEAP-TLS or EAP-TLS).

## Delegation considerations

When Credential Guard is enabled, certain types of identity delegation will be unusable, as their underlying authentication schemes are incompatible with Credential Guard or require supplied credentials.

When Credential Guard is enabled, [Credential Security Support Provider ("CredSSP")](/windows/win32/secauthn/credential-security-support-provider) is no longer able to use saved or sign-on (SSO) credentials, though cleartext credentials can still be supplied. CredSSP-based Delegation requires cleartext credentials to be supplied on the destination machine and will not work with SSO once Credential Guard is enabled. Usage of [CredSSP for delegation](/windows/win32/secauthn/credential-security-support-provider), and in general, is not recommended due to the risk of credential theft. 

Kerberos Unconstrained delegation, as well as DES, are blocked by Credential Guard. [Unconstrained delegation](/defender-for-identity/security-assessment-unconstrained-kerberos#what-risk-does-unsecure-kerberos-delegation-pose-to-an-organization) is not a recommended practice.

Instead [Kerberos](/windows-server/security/kerberos/kerberos-authentication-overview) or [Negotiate SSP](/windows/win32/secauthn/microsoft-negotiate) are recommended for authentication generally, and for delegation, [Kerberos Constrained Delegation](/windows-server/security/kerberos/kerberos-constrained-delegation-overview) and [Resource-Based Kerberos Constrained Delegation](/windows-server/security/kerberos/kerberos-constrained-delegation-overview#resource-based-constrained-delegation-across-domains) are recommended. These methods provide greater credential security overall, and are also compatible with Credential Guard.

## Non-Microsoft Security Support Providers considerations

Some non-Microsoft Security Support Providers (SSPs and APs) might not be compatible with Credential Guard because it doesn't allow non-Microsoft SSPs to ask for password hashes from LSA. However, SSPs and APs still get notified of the password when a user logs on and/or changes their password. Any use of undocumented APIs within custom SSPs and APs aren't supported.

It's recommended that custom implementations of SSPs/APs are tested with Credential Guard. SSPs and APs that depend on any undocumented or unsupported behaviors fail. For example, using the KerbQuerySupplementalCredentialsMessage API isn't supported. Replacing the NTLM or Kerberos SSPs with custom SSPs and APs.

For more information, see [Restrictions around Registering and Installing a Security Package](/windows/win32/secauthn/restrictions-around-registering-and-installing-a-security-package).

## Upgrade considerations

As the depth and breadth of protections provided by Credential Guard are increased, new releases of Windows with Credential Guard running may affect scenarios that were working in the past. For example, Credential Guard may block the use of a particular type of credential or a particular component to prevent malware from taking advantage of vulnerabilities.

We recommend testing scenarios required for operations in an organization before upgrading a device that uses Credential Guard.

Upgrades to Windows 11, 22H2 and Windows Server 2025 (preview) will have Credential Guard [enabled by default](index.md#default-enablement) if it has not been explicitly disabled.

## Saved Windows credentials considerations

*Credential Manager* allows you to store three types of credentials:

- Windows credentials
- Certificate-based credentials
- Generic credentials

Domain credentials that are stored in *Credential Manager* are protected with Credential Guard.

Generic credentials, such as user names and passwords that you use to sign in websites, aren't protected since the applications require your clear-text password. If the application doesn't need a copy of the password, they can save domain credentials as Windows credentials that are protected. Windows credentials are used to connect to other computers on a network.

The following considerations apply to the Credential Guard protections for Credential Manager:

- Windows credentials saved by the Remote Desktop client can't be sent to a remote host. Attempts to use saved Windows credentials fail, displaying the error message *Logon attempt failed*
- Applications that extract Windows credentials fail
- When credentials are backed up from a PC that has Credential Guard enabled, the Windows credentials can't be restored. If you need to back up your credentials, you must do so before you enable Credential Guard

## TPM clearing considerations

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

Also if any access control checks including authentication policies require devices to have either the `KEY TRUST IDENTITY (S-1-18-4)` or `FRESH PUBLIC KEY IDENTITY (S-1-18-3)` well-known SIDs, then those access checks fail. For more information about authentication policies, see [Authentication Policies and Authentication Policy Silos](/windows-server/security/credentials-protection-and-management/authentication-policies-and-authentication-policy-silos). For more information about well-known SIDs, see [[MS-DTYP] Section 2.4.2.4 Well-known SID Structures](/openspecs/windows_protocols/ms-dtyp/81d92bba-d22b-4a8c-908a-554ab29148ab).

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

## Known issues

Credential Guard blocks certain authentication capabilities. Applications that require such capabilities won't function when Credential Guard is enabled.

This article describes known issues when Credential Guard is enabled.

### Live Migration with Hyper-V breaks when upgrading to Windows Server 2025 (preview)

Devices which use CredSSP-based Delegation may no longer be able to use [Live Migration with Hyper-V](/windows-server/virtualization/hyper-v/manage/live-migration-overview) after upgrading to Windows Server 2025 (preview). Applications and services which rely on Live Migration (such as [SCVMM](/system-center/vmm/overview)) may also be affected.

#### Affected devices
Any Server with Credential Guard enabled may encounter this issue. Starting in Windows Server 2025, [Credential Guard is enabled by default](index.md#default-enablement-on-windows-server) on all domain-joined servers that are not Domain Controllers. Default enablement of Credential Guard can be [pre-emptively blocked](configure.md#how-to-prevent-default-enablement) before upgrade.

#### Cause of the issue
Live Migration with Hyper-V, and applications and services which rely on it, are affected by the issue if one or both ends of a given connection try to use CredSSP with Credential Guard enabled. With Credential Guard enabled, CredSSP can only utilize supplied credentials, not saved or SSO credentials.

If the source machine of a Live Migration uses CredSSP for delegation with Credential Guard enabled, the Live Migration will fail. In most cases, Credential Guard's enablement state on the destination machine will not impact Live Migration. Live Migration will also fail in cluster scenarios (eg, SCVMM), since any device may at one point act as a source machine.

#### How to fix the issue
Instead of CredSSP Delegation, [Kerberos Constrained Delegation and Resource-Based Kerberos Constrained Delegation](/windows-server/security/kerberos/kerberos-constrained-delegation-overview) are recommended. These forms of delegation provide greater credential protections, in addition to being compatible with Credential Guard. Administrators of Hyper-V can configure these types of delegation manually or with the help of automated scripts.

For a more immediate but less secure fix, [Credential Guard can be disabled](configure.md#disable-credential-guard). Credential Guard doesn't have per-protocol or per-application policies, and it can either be turned on or off. If you disable Credential Guard, you leave stored domain credentials vulnerable to theft.

### Single sign-on for Network services breaks after upgrading to Windows 11, version 22H2 or Windows Server 2025

Devices that use 802.1x wireless or wired network, RDP, or VPN connections that rely on insecure protocols with password-based authentication are unable to use SSO to sign in and are forced to manually re-authenticate in every new Windows session when Credential Guard is running.

#### Affected devices

Any device with Credential Guard enabled may encounter the issue. As part of the Windows 11, version 22H2 and Windows Server 2025 updates, eligible devices that didn't disable Credential Guard, have it [enabled by default](index.md#default-enablement). This affects all devices on Enterprise (E3 and E5) and Education licenses, as well as some Pro licenses, as long as they meet the [minimum hardware requirements](index.md#hardware-and-software-requirements).

All Windows Pro devices that previously ran Credential Guard on an eligible license and later downgraded to Pro, and which still meet the [minimum hardware requirements](index.md#hardware-and-software-requirements), will receive default enablement.

> [!TIP]
> To determine if a Windows Pro device receives default enablement when upgraded to **Windows 11, version 22H2** or **Windows Server 2025**, check if the registry key `IsolatedCredentialsRootSecret` is present in `Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0`.
> If it's present, the device enables Credential Guard after the update.
>
> Credential Guard can be disabled after upgrade by following the [disablement instructions](configure.md#disable-credential-guard).

#### Cause of the issue

Applications and services are affected by the issue when they rely on insecure protocols that use password-based authentication. Such protocols are considered insecure because they can lead to password disclosure on the client or the server, and Credential Guard blocks them. Affected protocols include:

- Kerberos unconstrained delegation (both SSO and supplied credentials are blocked)
- Kerberos when PKINIT uses RSA encryption instead of Diffie-Hellman (both SSO and supplied credentials are blocked)
- MS-CHAP (only SSO is blocked)
- WDigest (only SSO is blocked)
- NTLM v1 (only SSO is blocked)

> [!NOTE]
> Since only SSO is blocked for MS-CHAP, WDigest, and NTLM v1, these protocols can still be used by prompting the user to supply credentials.

#### How to confirm the issue

MS-CHAP and NTLMv1 are relevant to the SSO breakage after the Windows 11, version 22H2 update. To confirm if Credential Guard is blocking MS-CHAP or NTLMv1, open the Event Viewer (`eventvwr.exe`) and go to `Application and Services Logs\Microsoft\Windows\NTLM\Operational`. Check the following logs:

:::row:::
  :::column span="1":::
  **Event ID (type)**
  :::column-end:::
  :::column span="3":::
  **Description**
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="1":::
  4013 (Warning)
  :::column-end:::
  :::column span="3":::
    ```logging
    <string
      id="NTLMv1BlockedByCredGuard"
      value="Attempt to use NTLMv1 failed.
      Target server: %1%nSupplied user: %2%nSupplied domain: %3%nPID
      of client process: %4%nName
      of client process: %5%nLUID
      of client process: %6%nUser identity
      of client process: %7%nDomain name
      of user identity of client process: %8%nMechanism OID: 9%n%n
      This device doesn't support NTLMv1.
    />
    ```
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="1":::
  4014 (Error)
  :::column-end:::
  :::column span="3":::
    ```logging
    <string
      id="NTLMGetCredentialKeyBlockedByCredGuard"
      value="Attempt to get credential key by call package blocked by Credential Guard.%n%n
      Calling Process Name: %1%nService Host Tag: %2"
    />
    ```
  :::column-end:::
:::row-end:::

#### How to fix the issue

We recommend moving away from MSCHAPv2-based connections, such as PEAP-MSCHAPv2 and EAP-MSCHAPv2, to certificate-based authentication, like PEAP-TLS or EAP-TLS. Credential Guard doesn't block certificate-based authentication.

For a more immediate, but less secure fix, [disable Credential Guard](configure.md#disable-credential-guard). Credential Guard doesn't have per-protocol or per-application policies, and it can either be turned on or off. If you disable Credential Guard, you leave stored domain credentials vulnerable to theft.

> [!TIP]
> To prevent default enablement, configure your devices [to disable Credential Guard](configure.md#disable-credential-guard) before updating to a version which [received default enablement](index.md#default-enablement). If the setting is not configured (which is the default state) and if the device is eligible, the device automatically enable Credential Guard after the update.
>
> If Credential Guard is explicitly disabled, the device will not automatically enable Credential Guard after the update.

### Issues with non-Microsoft applications

The following issue affects MSCHAPv2:

- [Credential guard doesn't work with MSCHAPv2 configurations, of which Cisco ISE is a common enterprise implementation](https://quickview.cloudapps.cisco.com/quickview/bug/CSCul55352).

The following issue affects the Java GSS API. See the following Oracle bug database article:

- [JDK-8161921: Credential Guard doesn't allow sharing of TGT with Java](https://bugs.java.com/bugdatabase/view_bug?bug_id=8161921)

When Credential Guard is enabled on Windows, the Java GSS API doesn't authenticate. Credential Guard blocks specific application authentication capabilities and doesn't provide the TGT session key to applications, regardless of registry key settings. For more information, see [Application requirements](index.md#application-requirements).

#### Vendor support

The following products and services don't support Credential Guard:

- [Check Point Endpoint Security Client support for Microsoft Credential Guard and Hypervisor-Protected Code Integrity features](https://supportcenter.checkpoint.com/supportcenter/portal?eventSubmit_doGoviewsolutiondetails=&solutionid=sk113912)
- [*VMware Workstation and Device/Credential Guard aren't compatible* error in VMware Workstation on Windows 10 host (2146361)](https://kb.vmware.com/s/article/2146361)
- [ThinkPad support for Hypervisor-Protected Code Integrity and Credential Guard in Microsoft Windows](https://support.lenovo.com/in/en/solutions/ht503039)
- [Windows devices with Credential Guard and Symantec Endpoint Protection 12.1](https://www.symantec.com/connect/forums/windows-10-device-guard-credentials-guard-and-sep-121)

>[!IMPORTANT]
>This list isn't comprehensive. Check whether your product vendor, product version, or computer system supports Credential Guard on systems that run a specific version of Windows. Specific computer system models may be incompatible with Credential Guard.
