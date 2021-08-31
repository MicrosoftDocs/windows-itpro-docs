---
title: Use audit events to create then enforce WDAC policy rules (Windows 10)
description: Learn how audits allow admins to discover apps, binaries, and scripts that should be added to a WDAC policy, then learn how to switch that WDAC policy from audit to enforced mode.
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
ms.date: 05/03/2021
ms.technology: mde
---

# Use audit events to create WDAC policy rules and Convert **base** policy from audits to enforced

**Applies to:**

- Windows 10
- Windows Server 2016 and above

Running Application Control in audit mode lets you discover applications, binaries, and scripts that are missing from your WDAC policy but should be included.

While a WDAC policy is running in audit mode, any binary that runs but would have been denied is logged in the **Applications and Services Logs\\Microsoft\\Windows\\CodeIntegrity\\Operational** event log. Script and MSI are logged in the **Applications and Services Logs\\Microsoft\\Windows\\AppLocker\\MSI and Script** event log. These events can be used to generate a new WDAC policy that can be merged with the original Base policy or deployed as a separate Supplemental policy, if allowed.

## Overview of the process to create WDAC policy to allow apps using audit events

> [!NOTE]
> You must have already deployed a WDAC audit mode policy to use this process. If you have not already done so, see [Deploying Windows Defender Application Control policies](windows-defender-application-control-deployment-guide.md).

To familiarize yourself with creating WDAC rules from audit events, follow these steps on a device with a WDAC audit mode policy.

1. Install and run an application not allowed by the WDAC policy but that you want to allow.

2. Review the **CodeIntegrity - Operational** and **AppLocker - MSI and Script** event logs to confirm events, like those shown in Figure 1, are generated related to the application. For information about the types of events you should see, refer to [Understanding Application Control events](event-id-explanations.md).

   **Figure 1. Exceptions to the deployed WDAC policy** <br>

   ![Event showing exception to WDAC policy.](images/dg-fig23-exceptionstocode.png)

3. In an elevated PowerShell session, run the following commands to initialize variables used by this procedure. This procedure builds upon the **Lamna_FullyManagedClients_Audit.xml** policy introduced in [Create a WDAC policy for fully managed devices](create-wdac-policy-for-fully-managed-devices.md) and will produce a new policy called **EventsPolicy.xml**.

   ```powershell
   $PolicyName= "Lamna_FullyManagedClients_Audit"
   $LamnaPolicy=$env:userprofile+"\Desktop\"+$PolicyName+".xml"
   $EventsPolicy=$env:userprofile+"\Desktop\EventsPolicy.xml"
   $EventsPolicyWarnings=$env:userprofile+"\Desktop\EventsPolicyWarnings.txt"
   ```

4. Use [New-CIPolicy](/powershell/module/configci/new-cipolicy) to generate a new WDAC policy from logged audit events. This example uses a **FilePublisher** file rule level and a **Hash** fallback level. Warning messages are redirected to a text file **EventsPolicyWarnings.txt**.

   ```powershell
   New-CIPolicy -FilePath $EventsPolicy -Audit -Level FilePublisher -Fallback Hash –UserPEs -MultiplePolicyFormat 3> $EventsPolicyWarnings
   ```

   > [!NOTE]
   > When you create policies from audit events, you should carefully consider the file rule level that you select to trust. The preceding example uses the **FilePublisher** rule level with a fallback level of  **Hash**, which may be more specific than desired. You can re-run the above command using different **-Level** and **-Fallback** options to meet your needs. For more information about WDAC rule levels, see [Understand WDAC policy rules and file rules](select-types-of-rules-to-create.md).

5. Find and review the WDAC policy file **EventsPolicy.xml** that should be found on your desktop. Ensure that it only includes file and signer rules for applications, binaries, and scripts you wish to allow. You can remove rules by manually editing the policy XML or use the WDAC Policy Wizard tool (see [Editing existing base and supplemental WDAC policies with the Wizard](wdac-wizard-editing-policy.md)).

6. Find and review the text file **EventsPolicyWarnings.txt** that should be found on your desktop. This file will include a warning for any files that WDAC couldn't create a rule for at either the specified rule level or fallback rule level.

   > [!NOTE]
   > New-CIPolicy only creates rules for files that can still be found on disk. Files which are no longer present on the system will not have a rule created to allow them. However, the event log should have sufficient information to allow these files by manually editing the policy XML to add rules. You can use an existing rule as a template and verify your results against the WDAC policy schema definition found at **%windir%\schemas\CodeIntegrity\cipolicy.xsd**.

7. Merge **EventsPolicy.xml** with the Base policy **Lamna_FullyManagedClients_Audit.xml** or convert it to a supplemental policy.

    For information on merging policies, refer to [Merge Windows Defender Application Control policies](merge-windows-defender-application-control-policies.md) and for information on supplemental policies see [Use multiple Windows Defender Application Control Policies](deploy-multiple-windows-defender-application-control-policies.md).

8. Convert the Base or Supplemental policy to binary and deploy using your preferred method.

## Convert WDAC **BASE** policy from audit to enforced

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

   > [!NOTE]
   > If Set-CIPolicyIdInfo does not output the new PolicyID value on your Windows 10 version, you will need to obtain the *PolicyId* value from the XML directly.

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
   $EnforcedPolicyBinary = $env:USERPROFILE+"\Desktop\"+$EnforcedPolicyName+"_"+$EnforcedPolicyID+".xml"
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
