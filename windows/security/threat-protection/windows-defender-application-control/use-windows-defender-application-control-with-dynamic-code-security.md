---
title: Windows Defender Application Control and .NET (Windows)
description: Understand how WDAC and .NET work together and use Dynamic Code Security to verify code loaded by .NET at runtime.
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
author: jsuther1974
ms.reviewer: jogeurte
ms.author: vinpa
manager: aaroncz
ms.date: 08/10/2022
ms.technology: itpro-security
ms.topic: article
---

# Windows Defender Application Control (WDAC) and .NET

.NET apps (as written in a high-level language like C#) are compiled to an Intermediate Language (IL). IL is a compact code format that can be supported on any operating system or architecture. Most .NET apps use APIs that are supported in multiple environments, requiring only the .NET runtime to run. IL needs to be compiled to native code in order to execute on a CPU, for example Arm64 or x64. When .NET compiles IL to native image (NI) on a device with a WDAC user mode policy, it first checks whether the original IL file passes the current WDAC policies. If so, .NET sets an NTFS extended attribute (EA) on the generated NI file so that WDAC knows to trust it as well. When the .NET app runs, WDAC sees the EA on the NI file and allows it.

The EA set on the NI file only applies to the currently active WDAC policies. If one of the active WDAC policies is updated or a new policy is applied, the EA on the NI file is invalidated. The next time the app runs, WDAC will block the NI file. .NET handles the block gracefully and will fall back to the original IL code. If the IL still passes the latest WDAC policies, then the app runs without any functional impact. Since the IL is now being compiled at runtime, you may notice a slight impact to performance of the app. When .NET must fall back to IL, .NET will also schedule a process to run at the next maintenance window to regenerate all NI files, thus reestablishing the WDAC EA for all code that passes the latest WDAC policies.

In some cases, if an NI file is blocked, you may see a "false positive" block event in the *CodeIntegrity - Operational* event log as described in [WDAC Admin Tips & Known Issues](/windows/security/threat-protection/windows-defender-application-control/operations/known-issues#net-native-images-may-generate-false-positive-block-events).

To mitigate any performance impact caused when the WDAC EA isn't valid or missing, use any of the following strategies:

1. Work with the app developer to pre-compile their NI and digitally sign it. Then, ensure your WDAC policies allow that signature;
2. Run *ngen.exe update* to force .NET to regenerate all NI files immediately after applying changes to your WDAC policies;
3. [Create and sign a catalog file](/windows/security/threat-protection/windows-defender-application-control/deploy-catalog-files-to-support-windows-defender-application-control) for the native images

## WDAC and .NET hardening

Security researchers have found that some .NET capabilities that allow apps to load libraries from external sources or generate new code at runtime can be used to circumvent WDAC controls.
Beginning with Windows 10, version 1803, WDAC includes a new option, called *Dynamic Code Security* that works with .NET to verify code loaded at runtime.

When the Dynamic Code Security option is enabled, Application Control policy is applied to libraries that .NET loads from external sources. For example, any non-local sources, such as the internet or a network share.

Additionally, it detects tampering in code generated to disk by .NET and blocks loading code that has been tampered with.

Dynamic Code Security isn't enabled by default because existing policies may not account for externally loaded libraries.
Additionally, a few .NET loading features, including loading unsigned assemblies built with System.Reflection.Emit, aren't currently supported with Dynamic Code Security enabled.
Microsoft recommends testing Dynamic Code Security in audit mode before enforcing it to discover whether any new libraries should be included in the policy.

Additionally, customers can precompile for deployment only to prevent an allowed executable from being terminated because it tries to load unsigned dynamically generated code. See the "Precompiling for Deployment Only" section in the [ASP.NET Precompilation Overview](/previous-versions/aspnet/bb398860(v=vs.100)) document for how to fix that.

To enable Dynamic Code Security, add the following option to the `<Rules>` section of your WDAC policy:

```xml
<Rule> 
    <Option>Enabled:Dynamic Code Security</Option> 
</Rule>
```
