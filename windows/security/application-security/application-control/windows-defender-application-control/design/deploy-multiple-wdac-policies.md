---
title: Use multiple Windows Defender Application Control Policies
description: Windows Defender Application Control supports multiple code integrity policies for one device.
ms.localizationpriority: medium
ms.date: 07/19/2021
ms.topic: article
---

# Use multiple Windows Defender Application Control Policies

>[!NOTE]
>Some capabilities of Windows Defender Application Control (WDAC) are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](../feature-availability.md).

Prior to Windows 10 1903, Windows Defender Application Control only supported a single active policy on a system at any given time. This limited customers in situations where multiple policies with different intents would be useful. Beginning with Windows 10 version 1903, WDAC supports up to 32 active policies on a device at once in order to enable the following scenarios:

1. Enforce and Audit Side-by-Side
    - To validate policy changes before deploying in enforcement mode, users can now deploy an audit-mode base policy side by side with an existing enforcement-mode base policy
2. Multiple Base Policies
    - Users can enforce two or more base policies simultaneously in order to allow simpler policy targeting for policies with different scope/intent
    - If two base policies exist on a device, an application has to be allowed by both to run
3. Supplemental Policies
    - Users can deploy one or more supplemental policies to expand a base policy
    - A supplemental policy expands a single base policy, and multiple supplemental policies can expand the same base policy
    - For supplemental policies, applications that are allowed by either the base policy or its supplemental policy/policies are allowed to run

> [!NOTE]
> Pre-1903 systems do not support the use of Multiple Policy Format WDAC policies.

## Base and supplemental policy interaction

- Multiple base policies: intersection
  - Only applications allowed by both policies run without generating block events
- Base + supplemental policy: union
  - Files that are allowed by either the base policy or the supplemental policy aren't blocked

## Creating WDAC policies in Multiple Policy Format

In order to allow multiple policies to exist and take effect on a single system, policies must be created using the new Multiple Policy Format. The "MultiplePolicyFormat" switch in [New-CIPolicy](/powershell/module/configci/new-cipolicy?preserve-view=true&view=win10-ps) results in 1) unique GUIDs being generated for the policy ID and 2) the policy type being specified as base. The below example describes the process of creating a new policy in the multiple policy format.

```powershell
New-CIPolicy -MultiplePolicyFormat -ScanPath "<path>" -UserPEs -FilePath ".\policy.xml" -Level FilePublisher -Fallback SignedVersion,Publisher,Hash
```

Optionally, you can choose to make the new base policy allow for supplemental policies.

```powershell
Set-RuleOption -FilePath ".\policy.xml" -Option 17
```

For signed base policies to allow for supplemental policies, make sure that supplemental signers are defined. Use the **Supplemental** switch in **Add-SignerRule** to provide supplemental signers.

```powershell
Add-SignerRule -FilePath ".\policy.xml" -CertificatePath <certificate_path_> [-Kernel] [-User] [-Update] [-Supplemental] [-Deny]
```

### Supplemental policy creation

In order to create a supplemental policy, begin by creating a new policy in the Multiple Policy Format as shown above. From there, use Set-CIPolicyIdInfo to convert it to a supplemental policy and specify which base policy it expands. You can use either SupplementsBasePolicyID or BasePolicyToSupplementPath to specify the base policy.

- "SupplementsBasePolicyID": GUID of base policy that the supplemental policy applies to
- "BasePolicyToSupplementPath": path to base policy file that the supplemental policy applies to

```powershell
Set-CIPolicyIdInfo -FilePath ".\supplemental_policy.xml" [-SupplementsBasePolicyID <BasePolicyGUID>] [-BasePolicyToSupplementPath <basepolicy_path_>] -PolicyId <policy_Id> -PolicyName <PolicyName>
```

### Merging policies

When you're merging policies, the policy type and ID of the leftmost/first policy specified is used. If the leftmost is a base policy with ID \<ID>, then regardless of what the GUIDs and types are for any subsequent policies, the merged policy will be a base policy with ID \<ID>.

## Deploying multiple policies

In order to deploy multiple Windows Defender Application Control policies, you must either deploy them locally by copying the `*.cip` policy files into the proper folder or by using the ApplicationControl CSP, which is supported by Microsoft Intune's custom OMA-URI feature.

### Deploying multiple policies locally

To deploy policies locally using the new multiple policy format, follow these steps:

1. Ensure binary policy files have the correct naming format of `{PolicyGUID}.cip`.
   - Ensure that the name of the binary policy file is exactly the same as the PolicyID GUID in the policy
   - For example, if the policy XML had the ID as `<PolicyID>{A6D7FBBF-9F6B-4072-BF37-693741E1D745}</PolicyID>`, then the correct name for the binary policy file would be `{A6D7FBBF-9F6B-4072-BF37-693741E1D745}.cip`.
2. Copy binary policies to `C:\Windows\System32\CodeIntegrity\CiPolicies\Active`.
3. Reboot the system.

### Deploying multiple policies via ApplicationControl CSP

Multiple Windows Defender Application Control policies can be managed from an MDM server through ApplicationControl configuration service provider (CSP). The CSP also provides support for rebootless policy deployment.<br>

However, when policies are unenrolled from an MDM server, the CSP will attempt to remove every policy from devices, not just the policies added by the CSP. The reason for this is that the ApplicationControl CSP doesn't track enrollment sources for individual policies, even though it will query all policies on a device, regardless if they were deployed by the CSP.

For more information on deploying multiple policies, optionally using Microsoft Intune's custom OMA-URI capability, see [ApplicationControl CSP](/windows/client-management/mdm/applicationcontrol-csp).

> [!NOTE]
> WMI and GP do not currently support multiple policies. Instead, customers who cannot directly access the MDM stack should use the [ApplicationControl CSP via the MDM Bridge WMI Provider](/windows/client-management/mdm/applicationcontrol-csp#powershell-and-wmi-bridge-usage-guidance) to manage Multiple Policy Format Windows Defender Application Control policies.

### Known Issues in Multiple Policy Format

* If the maximum number of policies is exceeded, the device may bluescreen referencing ci.dll with a bug check value of 0x0000003b. 
* If policies are loaded without requiring a reboot such as `PS_UpdateAndCompareCIPolicy`, they will still count towards this limit. 
* This may pose an especially large challenge if the value of `{PolicyGUID}.cip` changes between releases. It may result in a long window between a change and the resultant reboot.
