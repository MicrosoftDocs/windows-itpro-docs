---
title: Example Windows Defender Application Control base policies
description: When creating a Windows Defender Application Control (WDAC) policy for an organization, start from one of the many available example base policies.
ms.topic: reference
ms.prod: windows-client
ms.localizationpriority: medium
author: jsuther1974
ms.reviewer: jogeurte
ms.author: vinpa
manager: aaroncz
ms.date: 03/31/2023
ms.technology: itpro-security
---

# Windows Defender Application Control example base policies

**Applies to:**

- Windows 10
- Windows 11
- Windows Server 2016 and above

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. For more information, see [Windows Defender Application Control feature availability](feature-availability.md).

When you create policies for use with Windows Defender Application Control (WDAC), start from an existing base policy and then add or remove rules to build your own custom policy. Windows includes several example policies that you can use. These example policies are provided "as-is". You should thoroughly test the policies you deploy using safe deployment methods.

| **Example Base Policy** | **Description** | **Where it can be found** |
|-------------------------|---------------------------------------------------------------|--------|
| **DefaultWindows_\*.xml** | This example policy is available in both audit and enforced mode. It includes rules to allow Windows, third-party hardware and software kernel drivers, and Windows Store apps. Used as the basis for the [Microsoft Intune product family](https://www.microsoft.com/security/business/endpoint-management/microsoft-intune) policies. | %OSDrive%\Windows\schemas\CodeIntegrity\ExamplePolicies\DefaultWindows_\*.xml <br> %ProgramFiles%\WindowsApps\Microsoft.WDAC.WDACWizard*\DefaultWindows_Audit.xml |
| **AllowMicrosoft.xml** | This example policy includes the rules from DefaultWindows and adds rules to trust apps signed by the Microsoft product root certificate. | %OSDrive%\Windows\schemas\CodeIntegrity\ExamplePolicies\AllowMicrosoft.xml <br> %ProgramFiles%\WindowsApps\Microsoft.WDAC.WDACWizard*\AllowMicrosoft.xml |
| **AllowAll.xml** | This example policy is useful when creating a blocklist. All block policies should include rules allowing all other code to run and then add the DENY rules for your organization's needs. | %OSDrive%\Windows\schemas\CodeIntegrity\ExamplePolicies\AllowAll.xml |
| **AllowAll_EnableHVCI.xml** | This example policy can be used to enable [memory integrity](https://support.microsoft.com/windows/core-isolation-e30ed737-17d8-42f3-a2a9-87521df09b78) (also known as hypervisor-protected code integrity) using WDAC. | %OSDrive%\Windows\schemas\CodeIntegrity\ExamplePolicies\AllowAll_EnableHVCI.xml |
| **DenyAllAudit.xml** | ***Warning: Will cause boot issues on Windows Server 2019 and earlier. Do not use on those operating systems.*** Only deploy this example policy in audit mode to track all binaries running on critical systems or to meet regulatory requirements. | %OSDrive%\Windows\schemas\CodeIntegrity\ExamplePolicies\DenyAllAudit.xml |
| **Microsoft Configuration Manager** | Customers who use Configuration Manager can deploy a policy with Configuration Manager's built-in WDAC integration, and then use the generated policy XML as an example base policy. | %OSDrive%\Windows\CCM\DeviceGuard on a managed endpoint |
| **SmartAppControl.xml** | This example policy includes rules based on [Smart App Control](https://support.microsoft.com/topic/what-is-smart-app-control-285ea03d-fa88-4d56-882e-6698afdb7003) that are well-suited for lightly managed systems. This policy includes a rule that is unsupported for enterprise WDAC policies and must be removed. For more information about using this example policy, see [Create a custom base policy using an example base policy](create-wdac-policy-for-lightly-managed-devices.md#create-a-custom-base-policy-using-an-example-wdac-base-policy). | %OSDrive%\Windows\schemas\CodeIntegrity\ExamplePolicies\SmartAppControl.xml <br>%ProgramFiles%\WindowsApps\Microsoft.WDAC.WDACWizard*\SignedReputable.xml |
| **Example supplemental policy** | This example policy shows how to use supplemental policy to expand the DefaultWindows_Audit.xml allow a single Microsoft-signed file. | %OSDrive%\Windows\schemas\CodeIntegrity\ExamplePolicies\DefaultWindows_Supplemental.xml |
| **Microsoft Recommended Block List** | This policy includes a list of Windows and Microsoft-signed code that Microsoft recommends blocking when using WDAC, if possible. | [Microsoft recommended block rules](/windows/security/threat-protection/windows-defender-application-control/microsoft-recommended-block-rules) <br> %ProgramFiles%\WindowsApps\Microsoft.WDAC.WDACWizard*\Recommended_UserMode_Blocklist.xml |
| **Microsoft recommended driver blocklist** | This policy includes rules to block known vulnerable or malicious kernel drivers. | [Microsoft recommended driver block rules](/windows/security/threat-protection/windows-defender-application-control/microsoft-recommended-driver-block-rules) <br> %OSDrive%\Windows\schemas\CodeIntegrity\ExamplePolicies\RecommendedDriverBlock_Enforced.xml <br> %ProgramFiles%\WindowsApps\Microsoft.WDAC.WDACWizard*\Recommended_Driver_Blocklist.xml |
| **Windows S mode** | This policy includes the rules used to enforce [Windows S mode](https://support.microsoft.com/windows/windows-10-and-windows-11-in-s-mode-faq-851057d6-1ee9-b9e5-c30b-93baebeebc85). | %ProgramFiles%\WindowsApps\Microsoft.WDAC.WDACWizard*\WinSiPolicy.xml.xml |
| **Windows 11 SE** | This policy includes the rules used to enforce [Windows 11 SE](/education/windows/windows-11-se-overview), a version of Windows built for use in schools. | %ProgramFiles%\WindowsApps\Microsoft.WDAC.WDACWizard*\WinSEPolicy.xml.xml |

> [!NOTE]
> Not all policies shown available at %OSDrive%\Windows\schemas\CodeIntegrity\ExamplePolicies can be found on all versions of Windows.
