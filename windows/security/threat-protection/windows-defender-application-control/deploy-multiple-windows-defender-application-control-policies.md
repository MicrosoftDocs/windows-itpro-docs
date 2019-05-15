---
title: Deploy multiple Windows Defender Application Control Policies  (Windows 10)
description: Windows Defender Application Control supports multiple code integrity policies for one device.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: jsuther1974
ms.date: 05/10/2019
---

# Deploy multiple Windows Defender Application Control Policies 

**Applies to:**

-   Windows 10
-   Windows Server 2016

>[!IMPORTANT]
>Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The restriction of only having a single code integrity policy active on a system at any given time has felt limiting for customers in situations where multiple policies with different intents would be useful. Beginning with Windows 10 version 1903, WDAC supports multiple simultaneous code integrity policies for one device in order to light up the following scenarios:

1.	Enforce and Audit Side-by-Side
    - To validate policy changes before deploying in enforcement mode, users can now deploy an audit-mode base policy side-by-side with an existing enforcement-mode base policy
2.	Multiple Base Policies
    - Users can enforce two or more base policies simultaneously in order to allow simpler policy targeting for policies with different scope/intent
3.	Supplemental Policies
    - Users can deploy one or more supplemental policies to expand a base policy
    - If two base policies exist on a device, an application has to be allowed by both to run
    - For supplemental policies, applications that are allowed by either the base policy or its supplemental policy/policies are allowed to run

## How do Base and Supplemental Policies Interact?

- Multiple base policies: intersection
  - Only applications allowed by both policies run without generating block events
- Base + supplemental policy: union
  - Files that are allowed by the base policy or the supplemental policy are not blocked

## Newly supported scenarios

With the ability to support multiple CI policies, three new scenarios are supported:

1.	Enforce and Audit Side-by-Side (Intersection)
    - To validate policy changes before deploying in enforcement mode, deploy an audit-mode base policy side-by-side with an existing enforcement-mode base policy
2.	Multiple Base Policies (Intersection)
    - Enforce two or more base policies simultaneously to allow simpler policy targeting for policies with different scope/intent
    - Ex. Base1 is a corporate standard policy that is relatively loose to accommodate all organizations while forcing minimum corp standards (e.g. Windows works + Managed Installer + path rules). Base2 is a team-specific policy that further restricts what is allowed to run (e.g. Windows works + Managed Installer + corporate signed apps only)
3.	Supplemental Policies (Union)
    - Deploy a supplemental policy (or policies) to expand a base policy
    - Ex. The Azure host base policy restricts tightly to just allow Windows and hardware drivers. Can add a supplemental policy to allow just the additional signer rules needed to support signed code from the Exchange team.

## PowerShell parameters

New-CIPolicy
- MultiplePolicyFormat: allows for multiple policies

```powershell
New-CIPolicy [-FilePath] <string> -Level {None | Hash | FileName | SignedVersion | Publisher | FilePublisher | LeafCertificate | PcaCertificate | RootCertificate | WHQL | WHQLPublisher | WHQLFilePublisher | PFN | FilePath}
   [-DriverFiles <DriverFile[]>] [-Fallback {None | Hash | FileName | SignedVersion | Publisher | FilePublisher | LeafCertificate | PcaCertificate | RootCertificate | WHQL | WHQLPublisher | WHQLFilePublisher | PFN | FilePath}]
   [-Audit] [-ScanPath <string>] [-ScriptFileNames] [-AllowFileNameFallbacks] [-SpecificFileNameLevel {None | OriginalFileName | InternalName | FileDescription | ProductName | PackageFamilyName | FilePath}] [-UserPEs] [-NoScript]
   [-Deny] [-NoShadowCopy] [-MultiplePolicyFormat] [-OmitPaths <string[]>] [-PathToCatroot <string>]  [<CommonParameters>] – to generate new policy format(base policy and policy type and policy guid)
```

Set-CIPolicyIdInfo
- **SupplementsBasePolicyID**: guid of new supplemental policy
- **BasePolicyToSupplementPath**: base policy that the supplemental policy applies to
- **ResetPolicyID**: reset the policy guids back to a random guid

```powershell
Set-CIPolicyIdInfo [-FilePath] <string> [-PolicyName <string>] [-SupplementsBasePolicyID <guid>] [-BasePolicyToSupplementPath <string>] [-ResetPolicyID] [-PolicyId <string>]  [<CommonParameters>]
```

Add-SignerRule
- **Supplemental**: provides supplemental signers

```powershell
Add-SignerRule -FilePath <string> -CertificatePath <string> [-Kernel] [-User] [-Update] [-Supplemental] [-Deny]  [<CommonParameters>] 
```

Set-RuleOption
- **Enabled:Allow Supplemental Policies**: makes base policy able to be supplemented

### Examples

**Scenario #1: Creating a new base policy**

```powershell
New-CiPolicy -MulitplePolicyFormat -foo –bar
```

- **MultiplePolicyFormat** switch results in 1) random GUIDs being generated for the policy ID and 2) the policy type being specified as base.
  Can optionally choose to make it supplementable:
  - Set-RuleOption has a new option **Enabled:Allow Supplemental Policies** to set for base policy
- For signed policies that are being made supplementable, need to ensure that supplemental signers are defined. Use “Add-SignerRule” to provide supplemental signers.
  ```powershell
  Add-SignerRule -FilePath <string> -CertificatePath <string> [-Kernel] [-User] [-Update] [-Supplemental] [-Deny]  [<CommonParameters>]
  ```

**Scenario #2: Creating a new supplemental policy**

1. Scan using `New-CiPolicy –MuliplePolicyFormat` to generate a base policy:
   ```powershell
   New-CIPolicy -Level PcaCertificate -UserPEs -ScanPath <path> -MultiplePolicyFormat 3> <path\CIPolicyLog.txt> -FilePath <path\SupplementalPolicy.xml>
   ```
2. Change this new base policy to a supplemental policy
   - Provide path of base in `Set-CIPolicyIdInfo –BasePolicytoSupplementPath`
   - Provide GUID of base in `Set-CIPolicyIdInfo –SupplementsBasePolicyID`
   ```powershell
   Set-CIPolicyIdInfo -BasePolicyToSupplementPath <path\SupplementalPolicy.xml> -SupplementsBasePolicyID <BasePolicyID> -FilePath <path\SupplementalPolicy.xml>
   ```   
   - Can revert the policy back to being a base policy using `-ResetPolicyID`
   
**Scenario #3: Merging policies**

- When merging, the policy type and ID of the leftmost/first policy specified is used
  - If the leftmost is a base policy with ID <ID>, then regardless of what the GUIDS and types are for any subsequent policies, the merged policy will be a base policy with ID <ID>
