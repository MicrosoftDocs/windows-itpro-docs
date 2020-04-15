---
title: Use multiple Windows Defender Application Control Policies  (Windows 10)
description: Windows Defender Application Control supports multiple code integrity policies for one device.
keywords: whitelisting, security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: isbrahm
ms.author: dansimp
manager: dansimp
ms.date: 04/15/2020
---

# Use multiple Windows Defender Application Control Policies

**Applies to:**

-   Windows 10
-   Windows Server 2016

The restriction of only having a single code integrity policy active on a system at any given time has felt limiting for customers in situations where multiple policies with different intents would be useful. Beginning with Windows 10 version 1903, WDAC supports multiple simultaneous code integrity policies for one device in order to enable the following scenarios:

1. Enforce and Audit Side-by-Side
    - To validate policy changes before deploying in enforcement mode, users can now deploy an audit-mode base policy side-by-side with an existing enforcement-mode base policy
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
  - Files that are allowed by the base policy or the supplemental policy are not blocked

## Creating WDAC policies in Multiple Policy Format

In order to allow multiple policies to exist and take effect on a single system, policies must be created using the new Multiple Policy Format. The "MultiplePolicyFormat" switch in [New-CIPolicy](https://docs.microsoft.com/powershell/module/configci/new-cipolicy?view=win10-ps) results in 1) random GUIDs being generated for the policy ID and 2) the policy type being specified as base. The below is an example of creating a new policy in the multiple policy format.

```powershell
New-CIPolicy -MultiplePolicyFormat -ScanPath "<path>" -UserPEs -FilePath ".\policy.xml" -Level Publisher -Fallback Hash
```

Optionally, you can choose to make the new base policy supplementable (allow supplemental policies).

```powershell
Set-RuleOption -FilePath <string> -Option 17
```

For signed base policies that are being made supplementable, you need to ensure that supplemental signers are defined. Use the "Supplemental" switch in Add-SignerRule to provide supplemental signers.

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

Note that "ResetPolicyId" reverts a supplemental policy to a base policy, and resets the policy GUIDs back to a random GUID.

### Merging policies

When merging, the policy type and ID of the leftmost/first policy specified is used. If the leftmost is a base policy with ID \<ID>, then regardless of what the GUIDs and types are for any subsequent policies, the merged policy will be a base policy with ID \<ID>.

## Deploying multiple policies

In order to deploy multiple WDAC policies, you must either deploy them locally by copying the `*.cip` policy files into the proper folder or by using the ApplicationControl CSP, which is supported by MEM Intune's Custom OMA-URI feature. You cannot use the "Deploy Windows Defender Application Control" group policy setting to deploy multiple CI policies.

### Deploying multiple policies locally

In order to deploy policies locally using the new multiple policy format you will need to:

1. Ensure policies are copied to the right location
   - Policies must be copied to this directory: C:\Windows\System32\CodeIntegrity\CiPolicies\Active
2. Binary policy files must have the correct name which takes the format {PolicyGUID}.cip
   - Ensure that the name of the binary policy file is exactly the same as the PolicyID in the policy
   - For example, if the policy XML had the ID as `<PolicyID>{A6D7FBBF-9F6B-4072-BF37-693741E1D745}</PolicyID>` then the correct name for the binary policy file would be {A6D7FBBF-9F6B-4072-BF37-693741E1D745}.cip
3. Reboot the system

### Deploying multiple policies via ApplicationControl CSP

Multiple WDAC policies can be managed from an MDM server through ApplicationControl configuration service provider (CSP). The CSP also provides support for rebootless policy deployment. Refer to [ApplicationControl CSP](https://docs.microsoft.com/windows/client-management/mdm/applicationcontrol-csp) for more information on deploying multiple policies, optionally using MEM Intune's Custom OMA-URI capability.
