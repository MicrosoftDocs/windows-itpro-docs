---
title: Considerations when using Credential Guard (Windows 10)
description: Considerations and recommendations for certain scenarios when using Credential Guard in Windows 10.
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
localizationpriority: high
author: brianlic-msft
---

# Considerations when using Credential Guard

**Applies to**
-   Windows 10
-   Windows Server 2016

Prefer video? See [Credentials Protected by Credential Guard](https://mva.microsoft.com/en-us/training-courses/deep-dive-into-credential-guard-16651?l=mD3geLJyC_8304300474)
in the Deep Dive into Credential Guard video series.

-   If Credential Guard is enabled on a device after it's joined to a domain, the user and device secrets may already be compromised. We recommend that Credential Guard is enabled before the PC is joined to a domain.
-   You should perform regular reviews of the PCs that have Credential Guard enabled. This can be done with security audit policies or WMI queries. Here's a list of WinInit event IDs to look for:
    -   **Event ID 13** Credential Guard (LsaIso.exe) was started and will protect LSA credentials.
    -   **Event ID 14** Credential Guard (LsaIso.exe) configuration: 0x1, 0
        -   The first variable: 0x1 means Credential Guard is configured to run. 0x0 means it’s not configured to run.
        -   The second variable: 0 means it’s configured to run in protect mode. 1 means it's configured to run in test mode. This variable should always be 0.
    -   **Event ID 15** Credential Guard (LsaIso.exe) is configured but the secure kernel is not running; continuing without Credential Guard.
    -   **Event ID 16** Credential Guard (LsaIso.exe) failed to launch: \[error code\]
    -   **Event ID 17** Error reading Credential Guard (LsaIso.exe) UEFI configuration: \[error code\]
    You can also verify that TPM is being used for key protection by checking the following event in the **Microsoft** -&gt; **Windows** -&gt; **Kernel-Boot** event source. If you are running with a TPM, the TPM PCR mask value will be something other than 0.
    -   **Event ID 51** VSM Master Encryption Key Provisioning. Using cached copy status: 0x0. Unsealing cached copy status: 0x1. New key generation status: 0x1. Sealing status: 0x1. TPM PCR mask: 0x0.
-   Passwords are still weak so we recommend that your organization deploy Credential Guard and move away from passwords and to other authentication methods, such as physical smart cards, virtual smart cards, or Windows Hello for Business.
-   Some 3rd party Security Support Providers (SSPs and APs) might not be compatible with Credential Guard. Credential Guard does not allow 3rd party SSPs to ask for password hashes from LSA. However, SSPs and APs still get notified of the password when a user logs on and/or changes their password. Any use of undocumented APIs within custom SSPs and APs are not supported. We recommend that custom implementations of SSPs/APs are tested against Credential Guard to ensure that the SSPs and APs do not depend on any undocumented or unsupported behaviors. For example, using the KerbQuerySupplementalCredentialsMessage API is not supported. You should not replace the NTLM or Kerberos SSPs with custom SSPs and APs. For more info, see [Restrictions around Registering and Installing a Security Package](http://msdn.microsoft.com/library/windows/desktop/dn865014.aspx) on MSDN.
-   As the depth and breadth of protections provided by Credential Guard are increased, subsequent releases of Windows 10 with Credential Guard running may impact scenarios that were working in the past. For example, Credential Guard may block the use of a particular type of credential or a particular component to prevent malware from taking advantage of vulnerabilities. Therefore, we recommend that scenarios required for operations in an organization are tested before upgrading a device that has Credential Guard running.

-   Starting with Windows 10, version 1511, domain credentials that are stored with Credential Manager are protected with Credential Guard. Credential Manager allows you to store credentials, such as user names and passwords that you use to log on to websites or other computers on a network. The following considerations apply to the Credential Guard protections for Credential Manager:
    -   Credentials saved by Remote Desktop Services cannot be used to remotely connect to another machine without supplying the password. Attempts to use saved credentials will fail, displaying the error message "Logon attempt failed".
    -   Applications that extract derived domain credentials from Credential Manager will no longer be able to use those credentials.
    -   You cannot restore credentials using the Credential Manager control panel if the credentials were backed up from a PC that has Credential Guard turned on. If you need to back up your credentials, you must do this before you enable Credential Guard. Otherwise, you won't be able to restore those credentials.
    - Credential Guard uses hardware security so some features, such as Windows To Go, are not supported. 
      

## NTLM and CHAP Considerations

When you enable Credential Guard, you can no longer use NTLM v1 authentication. If you are using WiFi and VPN endpoints that are based on MS-CHAPv2, they are subject to similar attacks as NTLMv1. We recommend that organizations use certificated-based authentication for WiFi and VPN connections.

## Kerberos Considerations

When you enable Credential Guard, you can no longer use Kerberos unconstrained delegation or DES encryption. Unconstrained delegation could allow attackers to extract Kerberos keys from the isolated LSA process. You must use constrained or resource-based Kerberos delegation instead.

## See also

**Deep Dive into Credential Guard: Related videos**

[Virtualization-based security](https://mva.microsoft.com/en-us/training-courses/deep-dive-into-credential-guard-16651?l=1CoELLJyC_6704300474)
