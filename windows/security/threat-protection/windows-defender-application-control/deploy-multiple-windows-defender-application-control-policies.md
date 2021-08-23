---
title: Use multiple Windows Defender Application Control Policies  (Windows 10)
description: Windows Defender Application Control supports multiple code integrity policies for one device.
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: jogeurte
ms.author: dansimp
manager: dansimp
ms.date: 07/19/2021
ms.technology: mde
---

# Use multiple Windows Defender Application Control Policies

**Applies to:**

- Windows 10 version 1903 and above
- Windows Server 2022 and above

Prior to Windows 10 1903, WDAC only supported a single active policy on a system at any given time. This significantly limited customers in situations where multiple policies with different intents would be useful. Beginning with Windows 10 version 1903, WDAC supports up to 32 active policies on a device at once in order to enable the following scenarios:

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
  - Files that are allowed by either the base policy or the supplemental policy are not blocked

## Creating WDAC policies in Multiple Policy Format

In order to allow multiple policies to exist and take effect on a single system, policies must be created using the new Multiple Policy Format. The "MultiplePolicyFormat" switch in [New-CIPolicy](/powershell/module/configci/new-cipolicy?preserve-view=true&view=win10-ps) results in 1) unique GUIDs being generated for the policy ID and 2) the policy type being specified as base. The below is an example of creating a new policy in the multiple policy format.

```powershell
New-CIPolicy -MultiplePolicyFormat -ScanPath "<path>" -UserPEs -FilePath ".\policy.xml" -Level Publisher -Fallback Hash
```

Optionally, you can choose to make the new base policy allow for supplemental policies.

```powershell
Set-RuleOption -FilePath <string> -Option 17
```

For signed base policies to allow for supplemental policies, make sure that supplemental signers are defined. Use the **Supplemental** switch in **Add-SignerRule** to provide supplemental signers.

```powershell
Add-SignerRule -FilePath <string> -CertificatePath <string> [-Kernel] [-User] [-Update] [-Supplemental] [-Deny]  [<CommonParameters>]
```

### Supplemental policy creation

In order to create a supplemental policy, begin by creating a new policy in the Multiple Policy Format as shown above. From there, use Set-CIPolicyIdInfo to convert it to a supplemental policy and specify which base policy it expands. You can use either SupplementsBasePolicyID or BasePolicyToSupplementPath to specify the base policy.

- "SupplementsBasePolicyID": GUID of base policy that the supplemental policy applies to
- "BasePolicyToSupplementPath": path to base policy file that the supplemental policy applies to

```powershell
Set-CIPolicyIdInfo [-FilePath] <string> [-PolicyName <string>] [-SupplementsBasePolicyID <guid>] [-BasePolicyToSupplementPath <string>] [-ResetPolicyID] [-PolicyId <string>]  [<CommonParameters>]
```

> [!NOTE]
> **ResetPolicyId** reverts a supplemental policy to a base policy, and resets the policy GUIDs back to a random GUID.

### Merging policies

When merging, the policy type and ID of the leftmost/first policy specified is used. If the leftmost is a base policy with ID \<ID>, then regardless of what the GUIDs and types are for any subsequent policies, the merged policy will be a base policy with ID \<ID>.

## Deploying multiple policies

In order to deploy multiple WDAC policies, you must either deploy them locally by copying the `*.cip` policy files into the proper folder or by using the ApplicationControl CSP, which is supported by MEM Intune's Custom OMA-URI feature.

### Deploying multiple policies locally

To deploy policies locally using the new multiple policy format, follow these steps:

1. Ensure binary policy files have the correct naming format of `{PolicyGUID}.cip`.
   - Ensure that the name of the binary policy file is exactly the same as the PolicyID GUID in the policy
   - For example, if the policy XML had the ID as `<PolicyID>{A6D7FBBF-9F6B-4072-BF37-693741E1D745}</PolicyID>`, then the correct name for the binary policy file would be `{A6D7FBBF-9F6B-4072-BF37-693741E1D745}.cip`.
2. Copy binary policies to `C:\Windows\System32\CodeIntegrity\CiPolicies\Active`.
3. Reboot the system.

### Deploying multiple policies via ApplicationControl CSP

Multiple WDAC policies can be managed from an MDM server through ApplicationControl configuration service provider (CSP). The CSP also provides support for rebootless policy deployment.<br>

However, when policies are un-enrolled from an MDM server, the CSP will attempt to remove every policy from devices, not just the policies added by the CSP. The reason for this is that the ApplicationControl CSP doesn't track enrollment sources for individual policies, even though it will query all policies on a device, regardless if they were deployed by the CSP.

See [ApplicationControl CSP](/windows/client-management/mdm/applicationcontrol-csp) for more information on deploying multiple policies, optionally using MEM Intune's Custom OMA-URI capability.

> [!NOTE]
> WMI and GP do not currently support multiple policies. Instead, customers who cannot directly access the MDM stack should use the [ApplicationControl CSP via the MDM Bridge WMI Provider](/windows/client-management/mdm/applicationcontrol-csp#powershell-and-wmi-bridge-usage-guidance) to manage Multiple Policy Format WDAC policies.
