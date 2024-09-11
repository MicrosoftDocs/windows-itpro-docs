---
title: Create App Control Deny Policy
description: Explains how to create App Control deny policies
ms.localizationpriority: medium
ms.date: 09/11/2024
ms.topic: how-to
---

# Guidance on Creating App Control Deny Policies

With App Control for Business, you can create policies to explicitly deny specific drivers and applications. To create effective App Control for Business deny policies, you should [understand the order of rule precedence](../operations/known-issues.md#file-rule-precedence-order) App Control applies as it evaluates files against the active policies.

## Standalone Deny policy

When creating a policy that consists solely of deny rules, you must include "Allow All" rules in both the kernel and user mode sections of the policy in addition to your explicit deny rules. The "Allow All" rules ensure that anything not explicitly denied by your policy is allowed to run. If you fail to add "Allow All" rules to a deny-only policy, then you risk blocking everything. This outcome happens because some code is *explicitly* denied and all other code is *implicitly* denied, because there are no rules to authorize it. We recommend using the [AllowAll policy template](example-appcontrol-base-policies.md) when creating your standalone deny policies.

```xml
<FileRules>
  <Allow ID="ID_ALLOW_A_1" FriendlyName="Allow Kernel Drivers" FileName="*" />
  <Allow ID="ID_ALLOW_A_2" FriendlyName="Allow User mode components" FileName="*" />
</FileRules>
<SigningScenarios>
    <SigningScenario Value="131" ID="ID_SIGNINGSCENARIO_DRIVERS" FriendlyName="Kernel Mode Signing Scenario">
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

Adding the preceding "Allow All" rules don't affect any other App Control policies you've deployed that apply an explicit allowlist. To illustrate, consider the following example:

Policy1 is an allowlist for Windows- and Microsoft-signed applications.

Policy2 is our new deny policy, which blocks MaliciousApp.exe and also the Windows component binary wmic.exe. It also includes the "Allow All" rules.

- MaliciousApp.exe is blocked since there's an explicit block rule in Policy2. It's also *implicitly* blocked by Policy1 since there are no allow rules that cover the file in that policy.
- The Windows-signed file wmic.exe is blocked since there's an explicit block rule in Policy2.
- All other Windows- and Microsoft-signed applications are allowed since there's an explicit allow rule in both Policy1 and Policy2 that covers the file.
- All other applications are implicitly denied. For example, ExampleApp.exe, isn't allowed since it's only trusted by Policy2 (due to the Allow All rules) and not Policy1.

## Mixed Allow and Deny policy considerations

If the set of deny rules is to be added into an existing policy that includes explicit allow rules, then don't include the preceding "Allow All" rules. Instead, the deny rules should be merged with the existing App Control policy via the [App Control Wizard](appcontrol-wizard-merging-policies.md) or using the following PowerShell command:

```PowerShell
$DenyPolicy = <path_to_deny_policy>
$ExistingPolicy = <path_to_existing_policy>
Merge-CIPolicy -PolicyPaths $ DenyPolicy, $ExistingPolicy -OutputFilePath $ExistingPolicy
```

## Best Practices

1. **Test first in Audit mode** - as with all new policies, we recommend rolling out your new deny policy in Audit Mode and monitoring the [3076 audit block events](../operations/event-id-explanations.md) to ensure only the applications you intended to block are blocked. More information on monitoring block events via the Event Viewer logs and Advanced Hunting: [Managing and troubleshooting App Control for Business policies](../operations/appcontrol-operational-guide.md)

2. **Recommended Deny Rules Types** - signer and file attribute rules are recommended from a security, manageability, and performance perspective. Hash rules should only be used if necessary. Since the hash of a file changes with any change to the file, it's hard to keep up with a hash-based block policy where the attacker can trivially update the file. While App Control has optimized parsing of hash rules, some devices may see performance impacts at runtime evaluation if policies have tens of thousands or more hash rules.

## Creating a Deny policy tutorial

Deny rules and policies can be created using the PowerShell cmdlets or the [App Control Wizard](https://webapp-wdac-wizard.azurewebsites.net/). We recommend creating signer rules (PCACertificate, Publisher, and FilePublisher) wherever possible. In the cases of unsigned binaries, rules must be created on attributes of the file, such as the original filename, or the hash.

### Software Publisher-based deny rule

```Powershell
$DenyRules += New-CIPolicyRule -Level FilePublisher -DriverFilePath <binary_to_block> -Fallback SignedVersion,Publisher,Hash -Deny
```

### Software attributes-based deny rule

```Powershell
$DenyRules += New-CIPolicyRule -Level FileName -DriverFilePath <binary_to_block> -Fallback Hash -Deny
```

### Hash-based deny rule

```PowerShell
$DenyRules += New-CIPolicyRule -Level Hash -DriverFilePath <binary_to_block> -Deny
```

### Merge deny rules with AllowAll template policy

After creating your deny rules, you can merge them with the AllowAll template policy:

```PowerShell
$DenyPolicy = <path_to_deny_policy_destination>
$AllowAllPolicy = $Env:windir + "\schemas\CodeIntegrity\ExamplePolicies\AllowAll.xml"
Merge-CIPolicy -PolicyPaths $AllowAllPolicy -OutputFilePath $DenyPolicy -Rules $DenyRules
Set-CiPolicyIdInfo -FilePath $DenyPolicy -PolicyName "My Deny Policy" -ResetPolicyID
```

### Deploy the Deny Policy

You should now have a deny policy prepared to deploy. See the [App Control Deployment Guide](../deployment/appcontrol-deployment-guide.md) to deploy your policy to your managed endpoints.
