---
title: Enforce Windows Defender Application Control (WDAC) policies (Windows)
description: Learn how to switch a WDAC policy from audit to enforced mode.
keywords: security, malware
ms.prod: m365-security
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: jogeurte
ms.author: jogeurte
ms.manager: jsuther
manager: dansimp
ms.date: 04/22/2021
ms.technology: mde
ms.topic: article
ms.localizationpriority: medium
---

# Enforce Windows Defender Application Control (WDAC) policies

**Applies to:**

-   Windows 10
-   Windows 11
-   Windows Server 2016 and above

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Defender App Guard feature availability](feature-availability.md).

You should now have one or more WDAC policies broadly deployed in audit mode. You have analyzed events collected from the devices with those policies and you're ready to enforce. Use this procedure to prepare and deploy your WDAC policies in enforcement mode.

> [!NOTE]
> Some of the steps described in this article only apply to Windows 10 version 1903 and above, or Windows 11. When using this topic to plan your own organization's WDAC policies, consider whether your managed clients can use all or some of these features. Evaluate the impact for any features that may be unavailable on your clients running earlier versions of Windows 10 and Windows Server. You may need to adapt this guidance to meet your specific organization's needs.

## Convert WDAC **base** policy from audit to enforced

As described in [common WDAC deployment scenarios](types-of-devices.md), we'll use the example of **Lamna Healthcare Company (Lamna)** to illustrate this scenario. Lamna is attempting to adopt stronger application policies, including the use of application control to prevent unwanted or unauthorized applications from running on their managed devices.

**Alice Pena** is the IT team lead responsible for Lamna's WDAC rollout.

Alice previously created and deployed a policy for the organization's [fully managed devices](create-wdac-policy-for-fully-managed-devices.md). They updated the policy based on audit event data as described in [Use audit events to create WDAC policy rules](audit-windows-defender-application-control-policies.md) and redeployed it. All remaining audit events are as expected and Alice is ready to switch to enforcement mode.

1. Initialize the variables that will be used and create the enforced policy by copying the audit version.

   ```powershell
   $EnforcedPolicyName = "Lamna_FullyManagedClients_Enforced"
   $AuditPolicyXML = $env:USERPROFILE+"\Desktop\Lamna_FullyManagedClients_Audit.xml"
   $EnforcedPolicyXML = $env:USERPROFILE+"\Desktop\"+$EnforcedPolicyName+".xml"
   cp $AuditPolicyXML $EnforcedPolicyXML
   ```

2. Use [Set-CIPolicyIdInfo](/powershell/module/configci/set-cipolicyidinfo) to give the new policy a unique ID, and descriptive name. Changing the ID and name lets you deploy the enforced policy side by side with the audit policy. Do this step if you plan to harden your WDAC policy over time. If you prefer to replace the audit policy in-place, you can skip this step.

   ```powershell
   $EnforcedPolicyID = Set-CIPolicyIdInfo -FilePath $EnforcedPolicyXML -PolicyName $EnforcedPolicyName -ResetPolicyID
   $EnforcedPolicyID = $EnforcedPolicyID.Substring(11)
   ```


3. *[Optionally]* Use [Set-RuleOption](/powershell/module/configci/set-ruleoption) to enable rule options 9 (“Advanced Boot Options Menu”) and 10 (“Boot Audit on Failure”). Option 9 allows users to disable WDAC enforcement for a single boot session from a pre-boot menu. Option 10 instructs Windows to switch the policy from enforcement to audit only if a boot critical kernel-mode driver is blocked. We strongly recommend these options when deploying a new enforced policy to your first deployment ring. Then, if no issues are found, you can remove the options and restart your deployment.

   ```powershell
   Set-RuleOption -FilePath $EnforcedPolicyXML -Option 9
   Set-RuleOption -FilePath $EnforcedPolicyXML -Option 10
   ```

4. Use Set-RuleOption to delete the audit mode rule option, which changes the policy to enforcement:

   ```powershell
   Set-RuleOption -FilePath $EnforcedPolicyXML -Option 3 -Delete
   ```

5. Use [ConvertFrom-CIPolicy](/powershell/module/configci/convertfrom-cipolicy) to convert the new WDAC policy to binary:

   > [!NOTE]
   > If you did not use -ResetPolicyID in Step 2 above, then you must replace $EnforcedPolicyID in the following command with the *PolicyID* attribute found in your base policy XML.

   ```powershell
   $EnforcedPolicyBinary = $env:USERPROFILE+"\Desktop\"+$EnforcedPolicyID+".cip"
   ConvertFrom-CIPolicy $EnforcedPolicyXML $EnforcedPolicyBinary
   ```

## Make copies of any needed **supplemental** policies to use with the enforced base policy

Since the enforced policy was given a unique PolicyID in the previous procedure, you need to duplicate any needed supplemental policies to use with the enforced policy. Supplemental policies always inherit the Audit or Enforcement mode from the base policy they modify. If you didn't reset the enforcement base policy's PolicyID, you can skip this procedure.

1. Initialize the variables that will be used and create a copy of the current supplemental policy. Some variables and files from the previous procedure will also be used.

   ```powershell
   $SupplementalPolicyName = "Lamna_Supplemental1"
   $CurrentSupplementalPolicy = $env:USERPROFILE+"\Desktop\"+$SupplementalPolicyName+"_Audit.xml"
   $EnforcedSupplementalPolicy = $env:USERPROFILE+"\Desktop\"+$SupplementalPolicyName+"_Enforced.xml"
   ```

2. Use [Set-CIPolicyIdInfo](/powershell/module/configci/set-cipolicyidinfo) to give the new supplemental policy a unique ID and descriptive name, and change which base policy to supplement.

   ```powershell
   $SupplementalPolicyID = Set-CIPolicyIdInfo -FilePath $EnforcedSupplementalPolicy -PolicyName $SupplementalPolicyName -SupplementsBasePolicyID $EnforcedPolicyID -BasePolicyToSupplementPath $EnforcedPolicyXML -ResetPolicyID
   $SupplementalPolicyID = $SupplementalPolicyID.Substring(11)
   ```

   > [!NOTE]
   > If Set-CIPolicyIdInfo does not output the new PolicyID value on your Windows 10 version, you will need to obtain the *PolicyId* value from the XML directly.

3. Use [ConvertFrom-CIPolicy](/powershell/module/configci/convertfrom-cipolicy) to convert the new WDAC supplemental policy to binary:

   ```powershell
   $EnforcedSuppPolicyBinary = $env:USERPROFILE+"\Desktop\"+$SupplementalPolicyName+"_"+$SupplementalPolicyID+".xml"
   ConvertFrom-CIPolicy $EnforcedSupplementalPolicy $EnforcedSuppPolicyBinary
   ```
4. Repeat the steps above if you have other supplemental policies to update.

## Deploy your enforced policy and supplemental policies

Now that your base policy is in enforced mode, you can begin to deploy it to your managed endpoints. For information about deploying policies, see [Deploying Windows Defender Application Control (WDAC) policies](windows-defender-application-control-deployment-guide.md).
