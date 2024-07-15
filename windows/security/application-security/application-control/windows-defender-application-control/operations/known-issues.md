---
title: WDAC Admin Tips & Known Issues
description: WDAC Known Issues
ms.manager: jsuther
ms.date: 04/15/2024
ms.topic: troubleshooting
ms.localizationpriority: medium
---

# WDAC Admin Tips & Known Issues

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This article covers tips and tricks for admins and known issues with Windows Defender Application Control (WDAC). Test this configuration in your lab before enabling it in production.

## WDAC policy file locations

**Multiple policy format WDAC policies** are found in the following locations depending on whether the policy is signed or not, and the method of policy deployment that was used.

- &lt;OS Volume&gt;\\Windows\\System32\\CodeIntegrity\\CiPolicies\Active\\*\{PolicyId GUID\}*.cip
- &lt;EFI System Partition&gt;\\Microsoft\\Boot\\CiPolicies\Active\\*\{PolicyId GUID\}*.cip

The *\{PolicyId GUID\}* value is unique by policy and defined in the policy XML with the &lt;PolicyId&gt; element.

For **single policy format WDAC policies**, in addition to the two preceding locations, also look for a file called SiPolicy.p7b in the following locations:

- &lt;EFI System Partition&gt;\\Microsoft\\Boot\\SiPolicy.p7b
- &lt;OS Volume&gt;\\Windows\\System32\\CodeIntegrity\\SiPolicy.p7b

> [!NOTE]
> A multiple policy format WDAC policy using the single policy format GUID `{A244370E-44C9-4C06-B551-F6016E563076}` may exist under any of the policy file locations.

## File Rule Precedence Order

When the WDAC engine evaluates files against the active set of policies on the device, rules are applied in the following order. Once a file encounters a match, WDAC stops further processing.

1. Explicit deny rules - a file is blocked if any explicit deny rule exists for it, even if other rules are created to try to allow it. Deny rules can use any [rule level](/windows/security/threat-protection/windows-defender-application-control/select-types-of-rules-to-create#windows-defender-application-control-file-rule-levels). Use the most specific rule level practical when creating deny rules to avoid blocking more than you intend.

2. Explicit allow rules - if any explicit allow rule exists for the file, the file runs.

3. WDAC then checks for the [Managed Installer extended attribute (EA)](/windows/security/threat-protection/windows-defender-application-control/configure-authorized-apps-deployed-with-a-managed-installer) or the [Intelligent Security Graph (ISG) EA](/windows/security/threat-protection/windows-defender-application-control/use-windows-defender-application-control-with-intelligent-security-graph) on the file. If either EA exists and the policy enables the corresponding option, then the file is allowed.

4. Lastly, WDAC makes a cloud call to the ISG to get reputation about the file, if the policy enables the ISG option.

5. Any file not allowed by an explicit rule or based on ISG or MI is blocked implicitly.

## Known issues

### Boot stop failure (blue screen) occurs if more than 32 policies are active

Until you apply the Windows security update released on or after April 9, 2024, your device is limited to 32 active policies. If the maximum number of policies is exceeded, the device bluescreens referencing ci.dll with a bug check value of 0x0000003b. Consider this maximum policy count limit when planning your WDAC policies. Any [Windows inbox policies](/windows/security/threat-protection/windows-defender-application-control/operations/inbox-wdac-policies) that are active on the device also count towards this limit. To remove the maximum policy limit, install the Windows security update released on, or after, April 9, 2024 and then restart the device. Otherwise, reduce the number of policies on the device to remain below 32 policies.

**Note:** The policy limit was not removed on Windows 11 21H2, and will remain limited to 32 policies.

### Audit mode policies can change the behavior for some apps or cause app crashes

Although WDAC audit mode is designed to avoid impact to apps, some features are always on/always enforced with any WDAC policy that turns on user mode code integrity (UMCI) with the option **0 Enabled:UMCI**. Here's a list of known system changes in audit mode:

- Some script hosts might block code or run code with fewer privileges even in audit mode. See [Script enforcement with WDAC](/windows/security/application-security/application-control/windows-defender-application-control/design/script-enforcement) for information about individual script host behaviors.
- Option **19 Enabled:Dynamic Code Security** is always enforced if any UMCI policy includes that option. See [WDAC and .NET](/windows/security/application-security/application-control/windows-defender-application-control/design/wdac-and-dotnet#wdac-and-net-hardening).

### .NET native images may generate false positive block events

In some cases, the code integrity logs where Windows Defender Application Control errors and warnings are written include error events for native images generated for .NET assemblies. Typically, native image blocks are functionally benign as a blocked native image falls back to its corresponding assembly and .NET regenerates the native image at its next scheduled maintenance window.

### Signatures using elliptical curve cryptography (ECC) aren't supported

WDAC signer-based rules only work with RSA cryptography. ECC algorithms, such as ECDSA, aren't supported. If WDAC blocks a file based on ECC signatures, the corresponding 3089 signature information events show VerificationError = 23. You can authorize the files instead by hash or file attribute rules, or using other signer rules if the file is also signed with signatures using RSA.

### MSI installers are treated as user writeable on Windows 10 when allowed by FilePath rule

MSI installer files are always detected as user writeable on Windows 10, and on Windows Server 2022 and earlier. If you need to allow MSI files using FilePath rules, you must set option **18 Disabled:Runtime FilePath Rule Protection** in your WDAC policy.

### MSI Installations launched directly from the internet are blocked by WDAC

Installing .msi files directly from the internet to a computer protected by WDAC fails.
For example, this command fails:

```console
msiexec -i https://download.microsoft.com/download/2/E/3/2E3A1E42-8F50-4396-9E7E-76209EA4F429/Windows10_Version_1511_ADMX.msi
```

As a workaround, download the MSI file and run it locally:

```console
msiexec -i c:\temp\Windows10_Version_1511_ADMX.msi
```

### Slow boot and performance with custom policies

WDAC evaluates all processes that run, including inbox Windows processes. You can cause slower boot times, degraded performance, and possibly boot issues if your policies don't build upon the WDAC templates or don't trust the Windows signers. For these reasons, you should use the [WDAC base templates](../design/example-wdac-base-policies.md) whenever possible to create your policies.

#### AppId Tagging policy considerations

AppId Tagging policies that aren't built upon the WDAC base templates or don't allow the Windows in-box signers might cause a significant increase in boot times (~2 minutes).

If you can't allowlist the Windows signers or build off the WDAC base templates, add the following rule to your policies to improve the performance:

:::image type="content" source="../images/known-issue-appid-dll-rule.png" alt-text="Allow all dlls in the policy.":::

:::image type="content" source="../images/known-issue-appid-dll-rule-xml.png" alt-text="Allow all dll files in the xml policy.":::

Since AppId Tagging policies evaluate but can't tag dll files, this rule short circuits dll evaluation and improve evaluation performance.
