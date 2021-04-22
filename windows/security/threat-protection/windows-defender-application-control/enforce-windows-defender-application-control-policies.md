---
title: Enforce Windows Defender Application Control (WDAC) policies (Windows 10)
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

- Windows 10
- Windows Server 2016 and above

You should now have one or more WDAC policies broadly deployed in audit mode. You have analyzed events collected from the devices with those policies and you are ready to proceed to enforcement. Use this procedure to prepare and deploy your WDAC policy in enforcement mode.

## Convert WDAC policy from audit to enforced

As described in [common WDAC deployment scenarios](types-of-devices.md), we will use the example of **Lamna Healthcare Company (Lamna)** to illustrate this scenario. Lamna is attempting to adopt stronger application policies, including the use of application control to prevent unwanted or unauthorized applications from running on their managed devices.

**Alice Pena** is the IT team lead tasked with the rollout of WDAC.

Alice previously created and deployed a policy for the organization's [fully-managed devices](create-wdac-policy-for-fully-managed-devices.md). She updated the policy based on audit event data as described in [Use audit events to create WDAC policy rules](audit-windows-defender-application-control-policies.md) and re-deployed it. All remaining audit events appear to be expected and Alice is ready to switch to enforcement mode.

1. Initialize the variables that will be used:

   `$CIPolicyPath=$env:userprofile+"\Desktop\"`

   `$InitialCIPolicy=$CIPolicyPath+"InitialScan.xml"`

   `$EnforcedCIPolicy=$CIPolicyPath+"EnforcedPolicy.xml"`

   `$CIPolicyBin=$CIPolicyPath+"EnforcedDeviceGuardPolicy.bin"`

   > [!NOTE]
   > The initial WDAC policy that this section refers to was created in the [Create a Windows Defender Application Control policy from a reference computer](create-initial-default-policy.md) section. If you are using a different WDAC policy, update the **CIPolicyPath** and **InitialCIPolicy** variables.

2. Ensure that rule options 9 (“Advanced Boot Options Menu”) and 10 (“Boot Audit on Failure”) are set the way that you intend for this policy. We strongly recommend that you enable these rule options before you run any enforced policy for the first time. Enabling these options provides administrators with a pre-boot command prompt, and allows Windows to start even if the WDAC policy blocks a kernel-mode driver from running. When ready for enterprise deployment, you can remove these options.

    To ensure that these options are enabled in a policy, use [Set-RuleOption](/powershell/module/configci/set-ruleoption) as shown in the following commands. You can run these commands even if you're not sure whether options 9 and 10 are already enabled—if so, the commands have no effect.
    
    `Set-RuleOption -FilePath $InitialCIPolicy -Option 9`
    
    `Set-RuleOption -FilePath $InitialCIPolicy -Option 10`

3. Copy the initial file to maintain an original copy:

   `copy $InitialCIPolicy $EnforcedCIPolicy`

4. Use Set-RuleOption to delete the audit mode rule option:

   `Set-RuleOption -FilePath $EnforcedCIPolicy -Option 3 -Delete`

   > [!NOTE]
   > To enforce a WDAC policy, you delete option 3, the **Audit Mode Enabled** option. There is no “enforced” option that can be placed in a WDAC policy.

5. Use [ConvertFrom-CIPolicy](/powershell/module/configci/convertfrom-cipolicy) to convert the new WDAC policy to binary format:

   `ConvertFrom-CIPolicy $EnforcedCIPolicy $CIPolicyBin`

Now that this policy is in enforced mode, you can deploy it to your test computers. Rename the policy to SIPolicy.p7b and copy it to C:\\Windows\\System32\\CodeIntegrity for testing, or deploy the policy through Group Policy by following the instructions in [Deploy and manage Windows Defender Application Control with Group Policy](deploy-windows-defender-application-control-policies-using-group-policy.md). You can also use other client management software to deploy and manage the policy.