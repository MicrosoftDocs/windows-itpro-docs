---
title: TPM fundamentals (Windows 10)
description: This topic for the IT professional provides a description of the components of the Trusted Platform Module (TPM 1.2 and TPM 2.0) and explains how they are used to mitigate dictionary attacks.
MSHAttr: PreferredLib /library
ms.assetid: ac90f5f9-9a15-4e87-b00d-4adcf2ec3000
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# TPM fundamentals


**Applies to**

-   Windows 10

This topic for the IT professional provides a description of the components of the Trusted Platform Module (TPM 1.2 and TPM 2.0) and explains how they are used to mitigate dictionary attacks.

A Trusted Platform Module (TPM) is a microchip designed to provide basic security-related functions, primarily involving encryption keys. The TPM is usually installed on the motherboard of a computer, and it communicates with the remainder of the system by using a hardware bus.

Computers that incorporate a TPM can create cryptographic keys and encrypt them so that they can only be decrypted by the TPM. This process, often called wrapping or binding a key, can help protect the key from disclosure. Each TPM has a master wrapping key, called the storage root key, which is stored within the TPM itself. The private portion of a storage root key or endorsement key that is created in a TPM is never exposed to any other component, software, process, or user.

You can specify whether encryption keys that are created by the TPM can be migrated or not. If you specify that they can be migrated, the public and private portions of the key can be exposed to other components, software, processes, or users. If you specify that encryption keys cannot be migrated, the private portion of the key is never exposed outside the TPM.

Computers that incorporate a TPM can also create a key that has not only been wrapped, but is also tied to certain platform measurements. This type of key can be unwrapped only when those platform measurements have the same values that they had when the key was created. This process is referred to as “sealing the key to the TPM.” Decrypting the key is called unsealing. The TPM can also seal and unseal data that is generated outside the TPM. With this sealed key and software, such as BitLocker Drive Encryption, you can lock data until specific hardware or software conditions are met.

With a TPM, private portions of key pairs are kept separate from the memory that is controlled by the operating system. Keys can be sealed to the TPM, and certain assurances about the state of a system (assurances that define the trustworthiness of a system) can be made before the keys are unsealed and released for use. Because the TPM uses its own internal firmware and logic circuits to process instructions, it does not rely on the operating system, and it is not exposed to vulnerabilities that might exist in the operating system or application software.

For info about which versions of Windows support which versions of the TPM, see [Trusted Platform Module technology overview](trusted-platform-module-technology-overview.md). The features that are available in the versions are defined in specifications by the Trusted Computing Group (TCG). For more info, see the Trusted Platform Module page on the Trusted Computing Group website: [Trusted Platform Module](http://www.trustedcomputinggroup.org/developers/trusted_platform_module).

The following sections provide an overview of the technologies that support the TPM:

-   [TPM-based Virtual Smart Card](#bkmk-vsc)

-   [Measured Boot with support for attestation](#bkmk-measuredboot)

-   [Automated provisioning and management of the TPM](#bkmk-autoprov)

-   [TPM-based certificate storage](#bkmk-tpmcs)

-   [Physical presence interface](#bkmk-physicalpresenceinterface)

-   [TPM Cmdlets](#bkmk-tpmcmdlets)

-   [TPM Owner Authorization Value](#bkmk-authvalue)

-   [States of existence in a TPM](#bkmk-stateex)

-   [Endorsement keys](#bkmk-endorsementkeys)

-   [TPM Key Attestation](#bkmk-ketattestation)

-   [How the TPM mitigates dictionary attacks](#bkmk-howtpmmitigates)

-   [How do I check the state of my TPM?](#bkmk-checkstate)

-   [What can I do if my TPM is in reduced functionality mode?](#bkmk-fixrfm)

The following topic describes the TPM Services that can be controlled centrally by using Group Policy settings:

[Trusted Platform Module Services Group Policy Settings](trusted-platform-module-services-group-policy-settings.md)

## <a href="" id="bkmk-autoprov"></a>Automated provisioning and management of the TPM


TPM provisioning can be streamlined to make it easier to deploy systems that are ready for BitLocker and other TPM-dependent features. These enhancements include simplifying the TPM state model to report **Ready**, **Ready with reduced functionality**, or **Not ready**. You can also automatically provision TPMs in the **Ready** state, remote provisioning to remove the requirement for the physical presence of a technician for the initial deployment. In addition, the TPM stack is available in the Windows Preinstallation Environment (Windows PE).

A number of management settings have been added for easier management and configuration of the TPM through Group Policy. The primary new settings include Active Directory-based backup of TPM owner authentication, the level of owner authentication that should be stored locally on the TPM, and the software-based TPM lockout settings for standard users. For more info about backing up owner authentication to Windows Server 2008 R2 AD DS domains, see [AD DS schema extensions to support TPM backup](schema-extensions-for-windows-server-2008-r2-to-support-ad-ds-backup-of-tpm-information-from-windows-8-clients.md).

## <a href="" id="bkmk-measuredboot"></a>Measured Boot with support for attestation


The Measured Boot feature provides antimalware software with a trusted (resistant to spoofing and tampering) log of all boot components. Antimalware software can use the log to determine whether components that ran before it are trustworthy versus infected with malware. It can also send the Measured Boot logs to a remote server for evaluation. The remote server can initiate remediation actions by interacting with software on the client or through out-of-band mechanisms, as appropriate.

## <a href="" id="bkmk-vsc"></a>TPM-based Virtual Smart Card


The Virtual Smart Card emulates the functionality of traditional smart cards, but Virtual Smart Cards use the TPM chip that is available on an organization’s computers, rather than requiring the use of a separate physical smart card and reader. This greatly reduces the management and deployment cost of smart cards in an enterprise. To the end user, the Virtual Smart Card is always available on the computer. If a user needs to use more than one computer, a Virtual Smart Card must be issued to the user for each computer. A computer that is shared among multiple users can host multiple Virtual Smart Cards, one for each user.

## <a href="" id="bkmk-tpmcs"></a>TPM-based certificate storage


The TPM can be used to protect certificates and RSA keys. The TPM key storage provider (KSP) provides easy, convenient use of the TPM as a way of strongly protecting private keys. The TPM KSP can be used to generate keys when an organization enrolls for certificates, and the KSP is managed by templates in the UI. The TPM can also be used to protect certificates that are imported from an outside source. TPM-based certificates can be used exactly as standard certificates with the added functionality that the certificate can never leave the TPM from which the keys were generated. The TPM can now be used for crypto-operations through Cryptography API: Next Generation (CNG). For more info, see [Cryptography API: Next Generation](http://msdn.microsoft.com/library/windows/desktop/aa376210.aspx).

## <a href="" id="bkmk-authvalue"></a>TPM Owner Authorization Value


For Windows 8 a change to how the TPM owner authorization value is stored in AD DS was implemented in the AD DS schema. The TPM owner authorization value is now stored in a separate object which is linked to the Computer object. This value was stored as a property in the Computer object itself for the default Windows Server 2008 R2 schemas. Windows Server 2012 domain controllers have the default schema to backup TPM owner authorization information in the separate object. If you are not upgrading your domain controller to Windows Server 2012 you need to extend the schema to support this change. If Active Directory backup of the TPM owner authorization value is enabled in a Windows Server 2008 R2 environment without extending the schema, the TPM provisioning will fail and the TPM will remain in a Not Ready state for computers running Windows 8.

If your computer is not being joined to a domain the TPM owner authorization value will be stored in the local computer registry. Using BitLocker to encrypt the operating system drive will protect the owner authorization value from being disclosed when the computer is at rest, but there is a risk that a malicious user could obtain the TPM owner authorization value when the computer is unlocked. Therefore, we recommend that in this situation you configure your computer to automatically lock after 30 seconds of inactivity. If automatic locking is not used, then you should consider removing full owner authorization from the computer registry.

**Registry information**

Registry key: HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Policies\\Microsoft\\TPM

DWORD: OSManagedAuthLevel

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Value Data</th>
<th align="left">Setting</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>0</p></td>
<td align="left"><p>None</p></td>
</tr>
<tr class="even">
<td align="left"><p>2</p></td>
<td align="left"><p>Delegated</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4</p></td>
<td align="left"><p>Full</p></td>
</tr>
</tbody>
</table>

 

**Note**  
If the operating system managed TPM authentication setting is changed from "Full" to "Delegated" the full TPM owner authorization value will be regenerated and any copies of the original TPM owner authorization value will be invalid. If you are backing up the TPM owner authorization value to AD DS, the new owner authorization value will be automatically backed up to AD DS when it is changed.

 

## <a href="" id="bkmk-tpmcmdlets"></a>TPM Cmdlets


If you are using PowerShell to script and manage your computers, you can now manage the TPM using Windows PowerShell as well. To install the TPM cmdlets use the following command:

**dism /online /enable-feature /FeatureName:tpm-psh-cmdlets**

For details about the individual cmdlets, see [TPM Cmdlets in Windows PowerShell](http://technet.microsoft.com/library/jj603116.aspx)

## <a href="" id="bkmk-physicalpresenceinterface"></a>Physical presence interface


The TCG specifications for TPMs require physical presence to perform some TPM administrative functions, such as turning on and turning off the TPM. Physical presence means a person must physically interact with the system and the TPM interface to confirm or reject changes to TPM status. This typically cannot be automated with scripts or other automation tools unless the individual OEM supplies them. Here are some are examples of TPM administrative tasks that require physical presence:

-   Activating the TPM
-   Clearing the existing owner information from the TPM without the owner’s password
-   Deactivating the TPM
-   Disabling the TPM temporarily without the owner’s password

## <a href="" id="bkmk-stateex"></a>States of existence in a TPM


For each of these TPM 1.2 states of existence, the TPM can transition into another state (for example, moving from disabled to enabled). The states are not exclusive.

These states of existence do not apply for Trusted Platform Module 2.0 because it cannot be turned off from within the operating system environment.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">State</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Enabled</p></td>
<td align="left"><p>Most features of the TPM are available.</p>
<p>The TPM can be enabled and disabled multiple times within a boot period, if ownership is taken.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Disabled</p></td>
<td align="left"><p>The TPM restricts most operations. Exceptions include the ability to report TPM capabilities, extend and reset Platform Configuration Register (PCR) functions, and perform hashing and basic initialization.</p>
<p>The TPM can be enabled and disabled multiple times within a start-up period.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Activated</p></td>
<td align="left"><p>Most features of the TPM are available. The TPM can be activated and deactivated only through physical presence, which requires a restart.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Deactivated</p></td>
<td align="left"><p>Similar to the disabled state, with the exception that ownership can be taken when the TPM is deactivated and enabled. The TPM can be activated and deactivated only through physical presence, which requires a restart.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Owned</p></td>
<td align="left"><p>Most features of the TPM are available. The TPM has an endorsement key and storage root key, and the owner knows information about owner authorization data.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Unowned</p></td>
<td align="left"><p>The TPM does not have a storage root key, and it may or may not have an endorsement key.</p></td>
</tr>
</tbody>
</table>

 

**Important**  
Applications cannot use the TPM until the state is enabled, activated, and owned. All operations are available only when the TPM is in this state.

 

The state of the TPM exists independently of the computer’s operating system. When the TPM is enabled, activated, and owned, the state of the TPM is preserved if the operating system is reinstalled.

## <a href="" id="bkmk-endorsementkeys"></a>Endorsement keys


For a TPM to be usable by a trusted application, it must contain an endorsement key, which is an RSA key pair. The private half of the key pair is held inside the TPM, and it is never revealed or accessible outside the TPM. If the TPM does not contain an endorsement key, the application might cause the TPM to generate one automatically as part of the setup.

An endorsement key can be created at various points in the TPM’s lifecycle, but it needs to be created only once for the lifetime of the TPM. The existence of an endorsement key is a requirement before TPM ownership can be taken.

## <a href="" id="bkmk-ketattestation"></a>Key attestation


TPM key attestation allows a certification authority to verify that a private key is actually protected by a TPM and that the TPM is one that the certification authority trusts. Endorsement keys which have been proven valid can be used to bind the user identity to a device. Moreover, the user certificate with a TPM attested key provides higher security assurance backed up by the non-exportability, anti-hammering, and isolation of keys provided by a TPM.

## <a href="" id="bkmk-howtpmmitigates"></a>How the TPM mitigates dictionary attacks


When a TPM processes a command, it does so in a protected environment, for example, a dedicated microcontroller on a discrete chip or a special hardware-protected mode on the main CPU. A TPM can be used to create a cryptographic key that is not disclosed outside the TPM, but is able to be used in the TPM after the correct authorization value is provided.

TPMs have dictionary attack logic that is designed to prevent brute force attacks that attempt to determine authorization values for using a key. The basic approach is for the TPM to allow only a limited number of authorization failures before it prevents more attempts to use keys and locks. Providing a failure count for individual keys is not technically practical, so TPMs have a global lockout when too many authorization failures occur.

Because many entities can use the TPM, a single authorization success cannot reset the TPM’s dictionary attack logic. This prevents an attacker from creating a key with a known authorization value and then using it to reset the TPM’s dictionary attack logic. Generally TPMs are designed to forget about authorization failures after a period of time so the TPM does not enter a lockout state unnecessarily. A TPM owner password can be used to reset the TPM’s lockout logic.

### TPM 2.0 dictionary attack behavior

TPM 2.0 has well defined dictionary attack logic behavior. This is in contrast to TPM 1.2 for which the dictionary attack logic was set by the manufacturer, and the logic varied widely throughout the industry.

**Warning**  
For the purposes of this topic, Windows 8 Certified Hardware also pertains to Windows 8.1 systems. The following references to “Windows” include these supported Windows versions.

 

For Windows 8 Certified Hardware systems with TPM 2.0, the TPM is configured by Windows to lock after 32 authorization failures and to forget one authorization failure every two hours. This means that a user could quickly attempt to use a key with the wrong authorization value 32 times. For each of the 32 attempts, the TPM records if the authorization value was correct or not. This inadvertently causes the TPM to enter a locked state after 32 failed attempts.

Attempts to use a key with an authorization value for the next two hours would not return success or failure; instead the response indicates that the TPM is locked. After two hours, one authorization failure is forgotten and the number of authorization failures remembered by the TPM drops to 31, so the TPM leaves the locked state and returns to normal operation. With the correct authorization value, keys could be used normally if no authorization failures occur during the next two hours. If a period of 64 hours elapses with no authorization failures, the TPM does not remember any authorization failures, and 32 failed attempts could occur again.

Windows 8 Certification does not require TPM 2.0 systems to forget about authorization failures when the system is fully powered off or when the system has hibernated. Windows does require that authorization failures are forgotten when the system is running normally, in a sleep mode, or in low power states other than off. If a Windows system with TPM 2.0 is locked, the TPM leaves lockout mode if the system is left on for two hours.

The dictionary attack logic for TPM 2.0 can be fully reset immediately by sending a reset lockout command to the TPM and providing the TPM owner password. By default, Windows automatically provisions TPM 2.0 and stores the TPM owner password for use by system administrators.

In some enterprise situations, the TPM owner authorization value is configured to be stored centrally in Active Directory, and it is not stored on the local system. An administrator can launch the TPM MMC and choose to reset the TPM lockout time. If the TPM owner password is stored locally, it is used to reset the lockout time. If the TPM owner password is not available on the local system, the administrator needs to provide it. If an administrator attempts to reset the TPM lockout state with the wrong TPM owner password, the TPM does not allow another attempt to reset the lockout state for 24 hours.

TPM 2.0 allows some keys to be created without an authorization value associated with them. These keys can be used when the TPM is locked. For example, BitLocker with a default TPM-only configuration is able to use a key in the TPM to start Windows, even when the TPM is locked.

### Rationale behind the Windows 8.1 and Windows 8 defaults

Windows relies on the TPM 2.0 dictionary attack protection for multiple features. The defaults that are selected for Windows 8 balance trade-offs for different scenarios.

For example, when BitLocker is used with a TPM plus PIN configuration, it needs the number of PIN guesses to be limited over time. If the computer is lost, someone could make only 32 PIN guesses immediately, and then only one more guess every two hours. This totals about 4415 guesses per year. This makes a good standard for system administrators to determine how many PIN characters to use for BitLocker deployments.

The Windows TPM-based smart card, which is a virtual smart card, can be configured to allow sign in to the system. In contrast with physical smart cards, the sign-in process uses a TPM-based key with an authorization value. The following list shows the advantages of virtual smart cards:

Physical smart cards can enforce lockout for only the physical smart card PIN, and they can reset the lockout after the correct PIN is entered. With a virtual smart card, the TPM’s dictionary attack is not reset after a successful authentication. The allowed number of authorization failures before the TPM enters lockout includes many factors.

Hardware manufacturers and software developers have the option to use the security features of the TPM to meet their requirements.

The intent of selecting 32 failures as the lock-out threshold is so users rarely lock the TPM (even when learning to type new passwords or if they frequently lock and unlock their computers). If users lock the TPM, they must to wait two hours or use some other credential to sign in, such as a user name and password.

## <a href="" id="bkmk-checkstate"></a>How do I check the state of my TPM?


You can check the state of the TPM on a PC by running the Trusted Platform Module snap-in (tpm.msc). The **Status** heading tells you the state of your TPM. The TPM can be in one of the following states: **Ready for use**, **Ready for use, with reduced functionality**, and **Not ready for use**. To take advantage of most of the TPM features in Windows 10, the TPM must be **Ready for use**.

## <a href="" id="bkmk-fixrfm"></a>What can I do if my TPM is in reduced functionality mode?


If your TPM is in reduced functionality mode, some features that rely on the TPM will not function correctly. This is most often caused by doing a clean installation of Windows 10 on a device where Windows 8.1, Windows 8, or Windows 7 had previously been installed on the same hardware. If your TPM is in reduced functionality mode, the Status heading in the Trusted Platform Module snap-in shows **The TPM is ready for use, with reduced functionality**. You can fix this by clearing the TPM.

**To clear the TPM**

1.  Open the Trusted Platform Module snap-in (tpm.msc).

2.  Click **Clear TPM**, and then click **Restart.**

3.  When the PC is restarting, you might be prompted to press a button on the keyboard to clear the TPM.

4.  After the PC restarts, your TPM will be automatically prepared for use by Windows 10.

**Note**  
Clearing the TPM causes you to lose all TPM keys and data protected by those keys, such as a virtual smart card. You should not perform this procedure on a device you do not own, such as a work or school PC, without being instructed to do so by your IT administrator.

 

## Additional resources


[Trusted Platform Module Technology Overview](trusted-platform-module-technology-overview.md)

[Trusted Platform Module Services Group Policy Settings](trusted-platform-module-services-group-policy-settings.md)

[TPM Cmdlets in Windows PowerShell](http://technet.microsoft.com/library/jj603116.aspx)

[Schema Extensions for Windows Server 2008 R2 to support AD DS backup of TPM information from Windows 8 clients](schema-extensions-for-windows-server-2008-r2-to-support-ad-ds-backup-of-tpm-information-from-windows-8-clients.md)

[TPM WMI providers](http://go.microsoft.com/fwlink/p/?LinkId=93478)

[Prepare your organization for BitLocker: Planning and Policies - TPM configurations](http://technet.microsoft.com/library/jj592683.aspx)

 

 





