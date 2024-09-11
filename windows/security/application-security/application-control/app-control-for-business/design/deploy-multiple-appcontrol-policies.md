---
title: Use multiple App Control for Business Policies
description: App Control for Business supports multiple code integrity policies for one device.
ms.localizationpriority: medium
ms.date: 09/11/2024
ms.topic: how-to
---

# Use multiple App Control for Business Policies

[!INCLUDE [Feature availability note](../includes/feature-availability-note.md)]

Beginning with Windows 10 version 1903 and Windows Server 2022, you can deploy multiple App Control for Business policies side-by-side on a device. To allow more than 32 active policies, install the Windows security update released on, or after, April 9, 2024 and then restart the device. With these updates, there's no limit for the number of policies you can deploy at once to a given device. Until you install the Windows security update released on or after April 9, 2024, your device is limited to 32 active policies and you must not exceed that number.

>[!NOTE]
>The policy limit was not removed on Windows 11 21H2 and will remain limited to 32 policies.

Here are some common scenarios where multiple side-by-side policies are useful:

1. Enforce and Audit Side-by-Side
    - To validate policy changes before deploying in enforcement mode, users can now deploy an audit-mode base policy side by side with an existing enforcement-mode base policy
2. Multiple Base Policies
    - Users can enforce two or more base policies simultaneously in order to allow simpler policy targeting for policies with different scope/intent
    - If two base policies exist on a device, an application must pass both policies for it to run
3. Supplemental Policies
    - Users can deploy one or more supplemental policies to expand a base policy
    - A supplemental policy expands a single base policy, and multiple supplemental policies can expand the same base policy
    - For supplemental policies, applications allowed by either the base policy or its supplemental policy/policies run

> [!NOTE]
> Pre-1903 systems do not support the use of Multiple Policy Format App Control policies.

## Base and supplemental policy interaction

- Multiple base policies: intersection
  - Only applications allowed by both policies run without generating block events
- Base + supplemental policy: union
  - Files allowed by either the base policy or the supplemental policy run

## Creating App Control policies in Multiple Policy Format

In order to allow multiple policies to exist and take effect on a single system, policies must be created using the new Multiple Policy Format. The "MultiplePolicyFormat" switch in [New-CIPolicy](/powershell/module/configci/new-cipolicy?preserve-view=true&view=win10-ps) results in 1) unique values generated for the policy ID and 2) the policy type set as a Base policy. The below example describes the process of creating a new policy in the multiple policy format.

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

In order to create a supplemental policy, begin by creating a new policy in the Multiple Policy Format as shown earlier. From there, use Set-CIPolicyIdInfo to convert it to a supplemental policy and specify which base policy it expands. You can use either SupplementsBasePolicyID or BasePolicyToSupplementPath to specify the base policy.

- "SupplementsBasePolicyID": GUID of base policy that the supplemental policy applies to
- "BasePolicyToSupplementPath": path to base policy file that the supplemental policy applies to

```powershell
Set-CIPolicyIdInfo -FilePath ".\supplemental_policy.xml" [-SupplementsBasePolicyID <BasePolicyGUID>] [-BasePolicyToSupplementPath <basepolicy_path_>] -PolicyId <policy_Id> -PolicyName <PolicyName>
```

### Merging policies

When you're merging policies, the policy type and ID of the leftmost/first policy specified is used. If the leftmost is a base policy with ID \<ID>, then regardless of what the GUIDs and types are for any subsequent policies, the merged policy is a base policy with ID \<ID>.

## Deploying multiple policies

In order to deploy multiple App Control for Business policies, you must either deploy them locally by copying the `*.cip` policy files into the proper folder or by using the ApplicationControl CSP.

### Deploying multiple policies locally

To deploy policies locally using the new multiple policy format, follow these steps:

1. Ensure binary policy files have the correct naming format of `{PolicyGUID}.cip`.
   - Ensure that the name of the binary policy file is exactly the same as the PolicyID GUID in the policy
   - For example, if the policy XML had the ID as `<PolicyID>{A6D7FBBF-9F6B-4072-BF37-693741E1D745}</PolicyID>`, then the correct name for the binary policy file would be `{A6D7FBBF-9F6B-4072-BF37-693741E1D745}.cip`.
2. Copy binary policies to `C:\Windows\System32\CodeIntegrity\CiPolicies\Active`.
3. Reboot the system.

### Deploying multiple policies via ApplicationControl CSP

Multiple App Control for Business policies can be managed from an MDM server through ApplicationControl configuration service provider (CSP). The CSP also provides support for rebootless policy deployment.<br>

However, when policies are unenrolled from an MDM server, the CSP attempts to remove every policy not actively deployed, not just the policies added by the CSP. This behavior happens because the system doesn't know what deployment methods were used to apply individual policies.

For more information on deploying multiple policies, optionally using Microsoft Intune's custom OMA-URI capability, see [ApplicationControl CSP](/windows/client-management/mdm/applicationcontrol-csp).

> [!NOTE]
> WMI and GP do not currently support multiple policies. Instead, customers who cannot directly access the MDM stack should use the [ApplicationControl CSP via the MDM Bridge WMI Provider](/windows/client-management/mdm/applicationcontrol-csp#powershell-and-wmi-bridge-usage-guidance) to manage Multiple Policy Format App Control for Business policies.
