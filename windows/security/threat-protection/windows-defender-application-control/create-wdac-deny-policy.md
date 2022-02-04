---
title: Create WDAC Deny Policy
description: Explains how to create WDAC deny policies
keywords: WDAC, policy
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jgeurten
ms.reviewer: jsuther1974
ms.author: dansimp
manager: dansimp
ms.date: 11/29/2021
ms.technology: windows-sec
---

# Guidance on Creating WDAC Deny Policies

With Windows Defender Application Control (WDAC), you can create policies to explicitly deny specific drivers and applications.

In this article we explain:

1. File Rule Precedence Order
2. Adding Allow Rules
3. Singe Policy Considerations
4. Multiple Policy Considerations
5. Best Practices
6. Tutorial

## File Rule Precedence Order

To create effective WDAC deny policies, it's crucial to understand how WDAC parses the policy. The WDAC engine evaluates files against the policy in the following order.

1. Explicit deny rules - if any explicit deny rule exists for a file, it will not run even if other rules are created to try to allow it. Deny rules can use any [rule level](select-types-of-rules-to-create.md#windows-defender-application-control-file-rule-levels). Use the most specific rule level practical when creating deny rules to avoid blocking more than you intend.

2. Explicit allow rules.

3. WDAC will then check for the [Managed Installer extended (EA)](configure-authorized-apps-deployed-with-a-managed-installer.md) or the [Intelligent Security Graph (ISG) EA](use-windows-defender-application-control-with-intelligent-security-graph.md) on the file.

4. Lastly, WDAC will call the Intelligent Security Graph (ISG) to get reputation on file, if the policy has support for the ISG.

5. If no rule exists for the file and it's not allowed based on ISG or MI, then the file is blocked implicitly.

## Interaction with Existing Policies

### Adding Allow Rules

If this deny policy is the only policy on the device, the following rule(s) need to be added to the policy in addition to the deny/block rules to trust for the driver files outside of the intended blocklisted ones:

```xml
<FileRules>
    <Allow ID="ID_ALLOW_A_1" FriendlyName="Allow Kernel Drivers" FileName="*" />
</FileRules>
<SigningScenarios>
    <SigningScenario Value="131" ID="ID_SIGNINGSCENARIO_DRIVERS_1" FriendlyName="Kernel Mode Signing Scenario">
      <ProductSigners>
        <FileRulesRef>
          <FileRuleRef RuleID="ID_ALLOW_A_1" />
        </FileRulesRef>
      </ProductSigners>
    </SigningScenario>
</SigningScenarios>
```

If the policy enables user mode code integrity via the ***Enabled:UMCI*** rule-option, the following section needs to be added to the policy in addition to the deny/block rules to trust for the driver and user mode files outside of the intended blocklisted ones:

```xml
<FileRules>
  <Allow ID="ID_ALLOW_A_1" FriendlyName="Allow Kernel Drivers" FileName="*" />
  <Allow ID="ID_ALLOW_A_2" FriendlyName="Allow User mode components" FileName="*" />
</FileRules>
<SigningScenarios>
    <SigningScenario Value="131" ID="ID_SIGNINGSCENARIO_DRIVERS_1" FriendlyName="Kernel Mode Signing Scenario">
      <ProductSigners>
        <FileRulesRef>
          <FileRuleRef RuleID="ID_ALLOW_A_1" />
        </FileRulesRef>
      </ProductSigners>
    </SigningScenario>
    <SigningScenario Value="12" ID="ID_SIGNINGSCENARIO_WINDOWS" FriendlyName="User Mode Signing Scenario">
      <ProductSigners>
        <FileRulesRef>
          <FileRuleRef RuleID="ID_ALLOW_A_2" />
        </FileRulesRef>
      </ProductSigners>
    </SigningScenario>
</SigningScenarios>
```

## Single Policy Considerations

If the set of deny rules is to be added into an existing policy with allow rules, then the above Allow All rules shouldn't be added to the policy. Instead, the deny policy should be merged with the existing WDAC policy via the [WDAC Wizard](wdac-wizard-merging-policies.md) or using the following PowerShell command:

```PowerShell
$DenyPolicy = <path_to_deny_policy>
$ExistingPolicy = <path_to_existing_policy>
Merge-CIPolicy -PolicyPaths $ DenyPolicy, $ExistingPolicy -OutputFilePath $ExistingPolicy
```

## Multiple Policy Considerations

If you're currently using [multiple policies](deploy-multiple-windows-defender-application-control-policies.md) on a device, there are two options for integrating the blocklist into your policy set.

(Recommended) The first option is to keep the blocklist as its own policy isolated from your allow policies as it is easier to manage. Since applications need to be [allowed by both WDAC policies to run on the device](deploy-multiple-windows-defender-application-control-policies.md#base-and-supplemental-policy-interaction), you'll need to add the Allow All rule(s) to your deny policy. Doing so won't override the set of applications allowed by WDAC illustrated by the following example:

Policy 1 is an allowlist of Windows and Microsoft-signed applications. Policy 2 is our new deny policy, which blocks MaliciousApp.exe with the Allow All rules. MaliciousApp.exe will be blocked since there's an explicit block rule in Policy 2. Windows and Microsoft applications will be allowed since there's an explicit allow rule in Policy 1 and Policy 2 (due to the Allow All rules). All other applications, if not Windows and Microsoft signed, for example, ExampleApp.exe, won't be allowed as this application is only trusted by Policy 2 (due to the Allow All rules) and not Policy 1.

The second option involves merging the blocklist with your existing WDAC policy, regardless if the policy is an allowlist policy and contains allow and/or deny rules.

## Best Practices

1. **Starting with Audit Mode Policies** - as with all new policies, we recommend rolling out your new deny policy in Audit Mode and monitoring the [3077 block events](event-id-explanations.md) to ensure only the applications you intended to block are being blocked. More information on monitoring block events via the Event Viewer logs and Advanced Hunting: [Managing and troubleshooting Windows Defender Application Control policies](windows-defender-application-control-operational-guide.md)

2. **Recommended Deny Rules Types** - signer and file attribute rules are recommended from a security, manageability, and performance perspective. Hash rules should only be utilized where otherwise impossible. The hash of an application is updated for every new version released by the publisher, which quickly becomes impractical to manage and protect against new threats where the attacker is quickly iterating on the payload. Additionally, WDAC has optimized parsing of hash rules, but devices may see performance impacts at runtime evaluation when policies have tens of thousands or more hash rules.

## Creating a Deny Policy Tutorial

Deny rules and policies can be created using the PowerShell cmdlets or the [WDAC Wizard](https://webapp-wdac-wizard.azurewebsites.net/). We recommend creating signer rules (PCACertificate, Publisher, and FilePublisher) wherever possible. In the cases of unsigned binaries, rules must be created on attributes of the file, such as the original filename, or the hash.

### Software Publisher Based Deny Rule

```Powershell
$DenyRules += New-CIPolicyRule -Level FilePublisher -DriverFilePath <binary_to_block> -Deny -Fallback FileName,Hash
```

### Software Attributes Based Deny Rule

```Powershell
$DenyRules += New-CIPolicyRule -Level FileName -DriverFilePath <binary_to_block> -Deny -Fallback Hash
```

### Hash Based Deny Rule

```PowerShell
 New-CIPolicyRule -Level Hash -DriverFilePath <binary_to_block> -Deny
 ```

### Adding Allow All Rules

If necessary, as in the cases listed above, [Allow All Rules](#adding-allow-rules) may need to be added to the policy. The Allow All rules can be manually added to the policy xml or by merging with the Allow All xml present on the client system in the WDAC template folder:

```PowerShell
$DenyPolicy = <path_to_deny_policy>
$AllowAllPolicy = $Env:windir + "\schemas\CodeIntegrity\ExamplePolicies\AllowAll.xml"
Merge-CIPolicy -PolicyPaths $DenyPolicy, $AllowAllPolicy -OutputFilePath $DenyPolicy
```

### Deploying the Deny Policy

Policies should be thoroughly evaluated and first rolled out in audit mode before strict enforcement. Policies can be deployed via multiple options:

1. Mobile Device Management (MDM): [Deploy WDAC policies using Mobile Device Management (MDM) (Windows)](deploy-windows-defender-application-control-policies-using-intune.md)

2. Microsoft Endpoint Configuration Manager (MEMCM): [Deploy Windows Defender Application Control (WDAC) policies by using Microsoft Endpoint Configuration Manager (MEMCM) (Windows)](deployment/deploy-wdac-policies-with-memcm.md)

3. Scripting [Deploy Windows Defender Application Control (WDAC) policies using script (Windows)](deployment/deploy-wdac-policies-with-script.md)

4. Group Policy: [Deploy WDAC policies via Group Policy (Windows)](deploy-windows-defender-application-control-policies-using-group-policy.md)
