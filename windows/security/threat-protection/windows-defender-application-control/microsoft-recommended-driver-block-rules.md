---
title: Microsoft recommended driver block rules (Windows)
description: View a list of recommended block rules to block vulnerable third-party drivers discovered by Microsoft and the security research community.
keywords:  security, malware, kernel mode, driver
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jgeurten
ms.reviewer: isbrahm
ms.author: dansimp
manager: dansimp
---

# Microsoft recommended driver block rules

**Applies to:**

- Windows 10
- Windows 11
- Windows Server 2016 and above

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](feature-availability.md).

Microsoft has strict requirements for code running in kernel. So, malicious actors are turning to exploit vulnerabilities in legitimate and signed kernel drivers to run malware in kernel. One of the many strengths of the Windows platform is our strong collaboration with independent hardware vendors (IHVs) and OEMs. Microsoft works closely with our IHVs and security community to ensure the highest level of driver security for our customers and when vulnerabilities in drivers do arise, that they're quickly patched and rolled out to the ecosystem. The vulnerable driver blocklist is designed to help harden systems against third party-developed drivers across the Windows ecosystem with any of the following attributes:

- Known security vulnerabilities that can be exploited by attackers to elevate privileges in the Windows kernel
- Malicious behaviors (malware) or certificates used to sign malware
- Behaviors that aren't malicious but circumvent the Windows Security Model and can be exploited by attackers to elevate privileges in the Windows kernel

Drivers can be submitted to Microsoft for security analysis at the [Microsoft Security Intelligence Driver Submission page](https://www.microsoft.com/en-us/wdsi/driversubmission). For more information about driver submission, see [Improve kernel security with the new Microsoft Vulnerable and Malicious Driver Reporting Center
](https://www.microsoft.com/security/blog/2021/12/08/improve-kernel-security-with-the-new-microsoft-vulnerable-and-malicious-driver-reporting-center/). To report an issue or request a change to the vulnerable driver blocklist, including updating a block rule once a driver vulnerability has been patched, visit the [Microsoft Security Intelligence portal](https://www.microsoft.com/wdsi) or submit feedback on this article.

## Microsoft vulnerable driver blocklist

Microsoft adds the vulnerable versions of the drivers to our vulnerable driver blocklist, which is automatically enabled on devices when any of the listed conditions are met:

| Condition | Windows 10 or 11 | Windows 11 22H2 or later |
|--|:--:|:--:|
| Device has [Hypervisor-protected code integrity (HVCI)](../device-guard/enable-virtualization-based-protection-of-code-integrity.md) enabled | :heavy_check_mark: | :heavy_check_mark: |
| Device is in [S mode](https://support.microsoft.com/windows/windows-10-and-windows-11-in-s-mode-faq-851057d6-1ee9-b9e5-c30b-93baebeebc85#WindowsVersion=Windows_11) | :heavy_check_mark: | :heavy_check_mark: |
| Device has [Smart App Control](https://support.microsoft.com/topic/what-is-smart-app-control-285ea03d-fa88-4d56-882e-6698afdb7003) enabled | :x: | :heavy_check_mark: |
| Clean install of Windows | :x: | :heavy_check_mark: |

Microsoft vulnerable driver blocklist can also be enabled using [Windows Security](https://support.microsoft.com/windows/stay-protected-with-windows-security-2ae0363d-0ada-c064-8b56-6a39afb6a963) or Windows Defender Application Control (WDAC). Additionally, you can enable Attack Surface Reduction (ASR) rule [**Block abuse of exploited vulnerable signed drivers**](/microsoft-365/security/defender-endpoint/attack-surface-reduction-rules-reference#block-abuse-of-exploited-vulnerable-signed-drivers) to prevent an application from writing a vulnerable signed driver to disk. The ASR rule doesn't block a driver already existing on the system from being loaded, however enabling Microsoft vulnerable driver blocklist prevents the existing driver from being loaded.

> [!NOTE]
> The option to disable Microsoft vulnerable driver blocklist in **Windows Security** is grayed out when HVCI or Smart App Control is enabled, or when the device is in S mode. You must disable HVCI or Smart App Control, or switch the device out of S mode before you can disable Microsoft vulnerable driver blocklist.

## Blocking vulnerable drivers using WDAC

Microsoft recommends enabling [HVCI](/windows/security/threat-protection/device-guard/enable-virtualization-based-protection-of-code-integrity) or S mode to protect your devices against security threats. If this setting isn't possible, Microsoft recommends blocking this list of drivers within your existing Windows Defender Application Control policy. Blocking kernel drivers without sufficient testing can result in devices or software to malfunction, and in rare cases, blue screen. It's recommended to first validate this policy in [audit mode](audit-windows-defender-application-control-policies.md) and review the audit block events.

<br>
<details>
  <summary>Expand this section to see the blocklist policy XML</summary>

:::code language="xml" source="samples/recommended-driver-block.xml":::

</details>

## More information

- [Merge Windows Defender Application Control policies](merge-windows-defender-application-control-policies.md)
