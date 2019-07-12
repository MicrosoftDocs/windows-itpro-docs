---
title: Deploy multiple Windows Defender Application Control Policies  (Windows 10)
description: Windows Defender Application Control supports multiple code integrity policies for one device.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: mdsakibMSFT
ms.date: 05/17/2019
---

# Deploy multiple Windows Defender Application Control Policies 

**Applies to:**

-   Windows 10
-   Windows Server 2016

>[!IMPORTANT]
>Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The restriction of only having a single code integrity policy active on a system at any given time has felt limiting for customers in situations where multiple policies with different intents would be useful. Beginning with Windows 10 version 1903, WDAC supports multiple simultaneous code integrity policies for one device in order to enable the following scenarios:

1.	Enforce and Audit Side-by-Side
    - To validate policy changes before deploying in enforcement mode, users can now deploy an audit-mode base policy side-by-side with an existing enforcement-mode base policy
2.	Multiple Base Policies
    - Users can enforce two or more base policies simultaneously in order to allow simpler policy targeting for policies with different scope/intent
    - If two base policies exist on a device, an application has to be allowed by both to run
3.	Supplemental Policies
    - Users can deploy one or more supplemental policies to expand a base policy
    - A supplemental policy expands a single base policy, and multiple supplemental policies can expand the same base policy
    - For supplemental policies, applications that are allowed by either the base policy or its supplemental policy/policies are allowed to run

## How do Base and Supplemental Policies Interact?

- Multiple base policies: intersection
  - Only applications allowed by both policies run without generating block events
- Base + supplemental policy: union
  - Files that are allowed by the base policy or the supplemental policy are not blocked

Note that multiple policies will not work on pre-1903 systems.

### Allow Multiple Policies

In order to allow multiple policies to exist and take effect on a single system, policies must be created using the new Multiple Policy Format. The "MultiplePolicyFormat" switch in New-CIPolicy results in 1) random GUIDs being generated for the policy ID and 2) the policy type being specified as base.

```powershell
New-CIPolicy -MultiplePolicyFormat -foo –bar
```

Optionally, you can choose to make the new base policy supplementable (allow supplemental policies).

```powershell
Set-RuleOption -FilePath <string> Enabled:Allow Supplemental Policies
```

For signed base policies that are being made supplementable, you need to ensure that supplemental signers are defined. Use the "Supplemental" switch in Add-SignerRule to provide supplemental signers.

```powershell
Add-SignerRule -FilePath <string> -CertificatePath <string> [-Kernel] [-User] [-Update] [-Supplemental] [-Deny]  [<CommonParameters>]
```

### Supplemental Policy Creation

In order to create a supplemental policy, begin by creating a new policy in the Multiple Policy Format. From there, use Set-CIPolicyIdInfo to convert it to a supplemental policy and specify which base policy it expands.
- "SupplementsBasePolicyID": guid of new supplemental policy
- "BasePolicyToSupplementPath": base policy that the supplemental policy applies to

```powershell
Set-CIPolicyIdInfo [-FilePath] <string> [-PolicyName <string>] [-SupplementsBasePolicyID <guid>] [-BasePolicyToSupplementPath <string>] [-ResetPolicyID] [-PolicyId <string>]  [<CommonParameters>]
```

Note that "ResetPolicyId" reverts a supplemental policy to a base policy, and resets the policy guids back to a random guid.

### Merging policies

When merging, the policy type and ID of the leftmost/first policy specified is used. If the leftmost is a base policy with ID \<ID>, then regardless of what the GUIDS and types are for any subsequent policies, the merged policy will be a base policy with ID \<ID>.

### Deploying policies

In order to deploy policies using the new multiple policy format you will need to:

1. Ensure policies are copied to the right location
   - Policies must be copied to this directory: C:\Windows\System32\CodeIntegrity\CiPolicies\Active
2. Binary policy files must have the correct name which takes the format {PolicyGUID}.cip
   - Ensure that the name of the binary policy file is exactly the same as the PolicyID in the policy
   - For example if the policy XML had the ID as `<PolicyID>{A6D7FBBF-9F6B-4072-BF37-693741E1D745}</PolicyID>` the correct name for the binary policy file would be {A6D7FBBF-9F6B-4072-BF37-693741E1D745}.cip
3. Reboot the system or use WMI to rebootlessly refresh the policy

```powershell
Invoke-CimMethod -Namespace root\Microsoft\Windows\CI -ClassName PS_UpdateAndCompareCIPolicy -MethodName Update -Arguments @{FilePath = 'C:\Windows\System32\CodeIntegrity\CiPolicies\Active\{A6D7FBBF-9F6B-4072-BF37-693741E1D745}.cip'}
```
