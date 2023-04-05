---
ms.date: 11/28/2022
title: Windows Defender Credential Guard - Known issues
description: Windows Defender Credential Guard - Known issues in Windows Enterprise
ms.topic: article
---
# Windows Defender Credential Guard: Known issues

Windows Defender Credential Guard has certain application requirements. Windows Defender Credential Guard blocks specific authentication capabilities. So applications that require such capabilities won't function when it's enabled. For more information, see [Application requirements](credential-guard-requirements.md#application-requirements).

## Known Issue: Single Sign-On (SSO) for Network services breaks after upgrading to **Windows 11, version 22H2**  

### Symptoms of the issue:  
Devices that use 802.1x wireless or wired network, RDP, or VPN connections that rely on insecure protocols with password-based authentication will be unable to use SSO to log in and will be forced to manually re-authenticate in every new Windows session when Windows Defender Credential Guard is running.  

### Affected devices:  
Any device that enables Windows Defender Credential Guard may encounter this issue. As part of the Windows 11, version 22H2 update, eligible devices which had not previously explicitly disabled Windows Defender Credential Guard had it enabled by default. This affected all devices on Enterprise (E3 and E5) and Education licenses, as well as some Pro licenses*, as long as they met the [minimum hardware requirements](credential-guard-requirements.md#hardware-and-software-requirements). 
  
\* All Pro devices which previously ran Windows Defender Credential Guard on an eligible license and later downgraded to Pro, and which still meet the [minimum hardware requirements](credential-guard-requirements.md#hardware-and-software-requirements), will receive default enablement.  

> [!TIP]
> To determine if your Pro device will receive default enablement when upgraded to **Windows 11, version 22H2**, do the following **before** upgrading:  
> Check if the registry key `IsolatedCredentialsRootSecret` is present in `Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0`. If it is present, the device will have Windows Defender Credential Guard enabled after upgrading. Note that Windows Defender Credential Guard can be disabled after upgrade by following the [disablement instructions](credential-guard-manage.md#disable-windows-defender-credential-guard).

### Why this is happening:  
Applications and services are affected by this issue when they rely on insecure protocols that use password-based authentication. Windows Defender Credential Guard blocks the use of these insecure protocols by design. These protocols are considered insecure because they can lead to password disclosure on the client and the server, which is in direct contradiction to the goals of Windows Defender Credential Guard. Affected procols include:
  - Kerberos unconstrained delegation (both SSO and supplied credentials are blocked)
  - Kerberos when PKINIT uses RSA encryption instead of Diffie-Hellman (both SSO and supplied credentials are blocked)
  - MS-CHAP (only SSO is blocked)
  - WDigest (only SSO is blocked)
  - NTLM v1 (only SSO is blocked)  
  
Since only SSO is blocked for MS-CHAP, WDigest, and NTLM v1, these protocols can still be used by prompting the user to supply credentials.  

> [!NOTE]
> MS-CHAP and NTLMv1 are particularly relevant to the observed SSO breakage after the Windows 11, version 22H2 update. To confirm whether Windows Defender Credential Guard is blocking either of these protocols, check the NTLM event logs in Event Viewer at `Application and Services Logs\Microsoft\Windows\NTLM\Operational` for the following warning and/or error:  
  >  
  > **Event ID 4013** (Warning)  
  > ```
  > <string  
  >   id="NTLMv1BlockedByCredGuard"  
  >   value="Attempt to use NTLMv1 failed.
  >   Target server: %1%nSupplied user: %2%nSupplied domain: %3%nPID of client process: %4%nName of client process: %5%nLUID of client process: %6%nUser identity of client process: %7%nDomain name of user identity of client process: %8%nMechanism OID: %9%n%nThis device does not support NTLMv1. For more information, see https://go.microsoft.com/fwlink/?linkid=856826."  
  > />  
  >  ```
  >  
  > **Event ID 4014** (Error)  
  > ```
  > <string  
  >    id="NTLMGetCredentialKeyBlockedByCredGuard"  
  >    value="Attempt to get credential key by call package blocked by Credential Guard.%n%nCalling Process Name: %1%nService Host Tag: %2"  
  > />  
  > ```

### Options to fix the issue:  

Microsoft recommends that organizations move away from MSCHAPv2-based connections such as PEAP-MSCHAPv2 and EAP-MSCHAPv2, to certificate-based authentication such as PEAP-TLS or EAP-TLS. Windows Defender Credential Guard will not block certificate-based authentication.  

For a more immediate but less secure fix, [disable Windows Defender Credential Guard](credential-guard-manage.md#disable-windows-defender-credential-guard). Note that Windows Defender Credential Guard does not have per-protocol or per-application policies, and must either be completely on or off. Disabling Windows Defender Credential Guard will leave some stored domain credentials vulnerable to theft. Windows Defender Credential Guard can be disabled after it has already been enabled, or it can be explicitly disabled prior to updating to Windows 11, version 22H2, which will prevent default enablement from occurring.  

> [!TIP]
> To _prevent_ default enablement, [use Group Policy to explicitly disable Windows Defender Credential Guard](credential-guard-manage.md#disabling-windows-defender-credential-guard-using-group-policy) before updating to Windows 11, version 22H2. If the GPO value is not configured (which is the default state), the device will receive default enablement after updating, if eligible. If the GPO value is set to "disabled", it will not be enabled after updating. This process can also be done via Mobile Device Management (MDM) policy rather than Group Policy if the devices are currently being managed by MDM.  

## Known issues involving third-party applications

The following issue affects MSCHAPv2:

- [Credential guard doesn't work with MSCHAPv2 configurations, of which Cisco ISE is a very popular enterprise implementation](https://quickview.cloudapps.cisco.com/quickview/bug/CSCul55352).

The following issue affects the Java GSS API. See the following Oracle bug database article:

- [JDK-8161921: Windows Defender Credential Guard doesn't allow sharing of TGT with Java](http://bugs.java.com/bugdatabase/view_bug.do?bug_id=8161921)

When Windows Defender Credential Guard is enabled on Windows, the Java GSS API won't authenticate. This is expected behavior because Windows Defender Credential Guard blocks specific application authentication capabilities and won't provide the TGT session key to applications regardless of registry key settings. For more information, see [Application requirements](credential-guard-requirements.md#application-requirements).

The following issue affects Cisco AnyConnect Secure Mobility Client:

- [Blue screen on Windows computers running Hypervisor-Protected Code Integrity and Windows Defender Credential Guard with Cisco Anyconnect 4.3.04027](https://quickview.cloudapps.cisco.com/quickview/bug/CSCvc66692)

The following issue affects McAfee Application and Change Control (MACC):

- [KB88869 Windows machines exhibit high CPU usage with McAfee Application and Change Control (MACC) installed when Windows Defender Credential Guard is enabled](https://kcm.trellix.com/corporate/index?page=content&id=KB88869) <sup>[Note 1](#bkmk_note1)</sup>

The following issue affects Citrix applications:

- Windows machines exhibit high CPU usage with Citrix applications installed when Windows Defender Credential Guard is enabled. <sup>[Note 1](#bkmk_note1)</sup>

<a name="bkmk_note1"></a>

> [!NOTE]
> **Note 1**: Products that connect to Virtualization Based Security (VBS) protected processes can cause Windows Defender Credential Guard-enabled Windows 10, Windows 11, Windows Server 2016, or Windows Server 2019 machines to exhibit high CPU usage. For technical and troubleshooting information, see [KB4032786 High CPU usage in the LSAISO process on Windows](/troubleshoot/windows-client/performance/lsaiso-process-high-cpu-usage).
>
> For more technical information on LSAISO.exe, see [Isolated User Mode (IUM) Processes](/windows/win32/procthread/isolated-user-mode--ium--processes).

## Vendor support

For more information on Citrix support for Secure Boot, see [Citrix Support for Secure Boot](https://www.citrix.com/blogs/2016/12/08/windows-server-2016-hyper-v-secure-boot-support-now-available-in-xenapp-7-12/)

Windows Defender Credential Guard isn't supported by the following products, products versions, computer systems, or Windows 10 versions:

- [Support for Hypervisor-Protected Code Integrity and Windows Defender Credential Guard on Windows with McAfee encryption products](https://kcm.trellix.com/corporate/index?page=content&id=KB86009KB86009)

- [Check Point Endpoint Security Client support for Microsoft Windows Defender Credential Guard and Hypervisor-Protected Code Integrity features](https://supportcenter.checkpoint.com/supportcenter/portal?eventSubmit_doGoviewsolutiondetails=&solutionid=sk113912)

- ["VMware Workstation and Device/Credential Guard are not compatible" error in VMware Workstation on Windows 10 host (2146361)](https://kb.vmware.com/s/article/2146361)

- [ThinkPad support for Hypervisor-Protected Code Integrity and Windows Defender Credential Guard in Microsoft Windows](https://support.lenovo.com/in/en/solutions/ht503039)

- [Windows devices with Windows Defender Credential Guard and Symantec Endpoint Protection 12.1](https://www.symantec.com/connect/forums/windows-10-device-guard-credentials-guard-and-sep-121)

This list isn't comprehensive. Check whether your product vendor, product version, or computer system supports Windows Defender Credential Guard on systems that run Windows or specific versions of Windows. Specific computer system models may be incompatible with Windows Defender Credential Guard.

Microsoft encourages third-party vendors to contribute to this page by providing relevant product support information and by adding links to their own product support statements.
  
## Previous known issues that have been fixed
  
The following known issues have been fixed in the [Cumulative Security Update for November 2017](https://support.microsoft.com/topic/november-27-2017-kb4051033-os-build-14393-1914-447b6b88-e75d-0a24-9ab9-5dcda687aaf4):

- Scheduled tasks with domain user-stored credentials fail to run when Credential Guard is enabled. The task fails and reports Event ID 104 with the following message:

    ```console
    Task Scheduler failed to log on '\Test'.
    Failure occurred in 'LogonUserExEx'.
    User Action: Ensure the credentials for the task are correctly specified.
    Additional Data: Error Value: 2147943726. 2147943726: ERROR\_LOGON\_FAILURE (The user name or password is incorrect).
    ```

- When you enable NTLM audit on the domain controller, an Event ID 8004 with an indecipherable username format is logged. You also get a similar user name in a user logon failure event 4625 with error 0xC0000064 on the machine itself. For example:

    ```console
    Log Name: Microsoft-Windows-NTLM/Operational
    Source: Microsoft-Windows-Security-Netlogon
    Event ID: 8004
    Task Category: Auditing NTLM
    Level: Information
    Description:
    Domain Controller Blocked Audit: Audit NTLM authentication to this domain controller.
    Secure Channel name: <Secure Channel Name>
    User name:
    @@CyBAAAAUBQYAMHArBwUAMGAoBQZAQGA1BAbAUGAyBgOAQFAhBwcAsGA6AweAgDA2AQQAMEAwAANAgDA1AQLAIEADBQRAADAtAANAYEA1AwQA0CA5AAOAMEAyAQLAYDAxAwQAEDAEBwMAMEAwAgMAMDACBgRA0HA
    Domain name: NULL
    ```

  - This event stems from a scheduled task running under local user context with the [Cumulative Security Update for November 2017](https://support.microsoft.com/topic/november-27-2017-kb4051033-os-build-14393-1914-447b6b88-e75d-0a24-9ab9-5dcda687aaf4) or later and happens when Credential Guard is enabled.
  - The username appears in an unusual format because local accounts aren't protected by Credential Guard. The task also fails to execute.
  - As a workaround, run the scheduled task under a domain user or the computer's SYSTEM account.

The following known issues have been fixed by servicing releases made available in the Cumulative Security Updates for April 2017:

- [KB4015217 Windows Defender Credential Guard generates double bad password count on Active Directory domain-joined Windows machines](https://support.microsoft.com/topic/april-11-2017-kb4015217-os-build-14393-1066-and-14393-1083-b5f79067-98bd-b4ec-8b81-5d858d7dc722)

    This issue can potentially lead to unexpected account lockouts. For more information, see the following support articles:

  - [KB4015219](https://support.microsoft.com/topic/april-11-2017-kb4015219-os-build-10586-873-68b8e379-aafa-ea6c-6b29-56d19785e657)
  - [KB4015221](https://support.microsoft.com/topic/april-11-2017-kb4015221-os-build-10240-17354-743f52bc-a484-d23f-71f5-b9957cbae0e6)
