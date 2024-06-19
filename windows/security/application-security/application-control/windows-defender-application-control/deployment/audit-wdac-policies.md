---
title: Use audit events to create WDAC policy rules
description: Audits allow admins to discover apps, binaries, and scripts that should be added to the WDAC policy.
ms.localizationpriority: medium
ms.date: 05/03/2018
ms.topic: conceptual
---

# Use audit events to create WDAC policy rules

>[!NOTE]
>Some capabilities of Windows Defender Application Control (WDAC) are only available on specific Windows versions. Learn more about the [Application Control feature availability](../feature-availability.md).

Running Application Control in audit mode lets you discover applications, binaries, and scripts that are missing from your WDAC policy but should be included.

While a WDAC policy is running in audit mode, any binary that runs but would have been denied is logged in the **Applications and Services Logs\\Microsoft\\Windows\\CodeIntegrity\\Operational** event log. Script and MSI are logged in the **Applications and Services Logs\\Microsoft\\Windows\\AppLocker\\MSI and Script** event log. These events can be used to generate a new WDAC policy that can be merged with the original Base policy or deployed as a separate Supplemental policy, if allowed.

## Overview of the process to create WDAC policy to allow apps using audit events

> [!Note]
> You must have already deployed a WDAC audit mode policy to use this process. If you have not already done so, see [Deploying Windows Defender Application Control policies](wdac-deployment-guide.md).

To familiarize yourself with creating WDAC rules from audit events, follow these steps on a device with a WDAC audit mode policy.

1. Install and run an application not allowed by the WDAC policy but that you want to allow.

2. Review the **CodeIntegrity - Operational** and **AppLocker - MSI and Script** event logs to confirm events, like those shown in Figure 1, are generated related to the application. For information about the types of events you should see, refer to [Understanding Application Control events](../operations/event-id-explanations.md).

   **Figure 1. Exceptions to the deployed WDAC policy**
   ![Event showing exception to WDAC policy.](../images/dg-fig23-exceptionstocode.png)

3. In an elevated PowerShell session, run the following commands to initialize variables used by this procedure. This procedure builds upon the **Lamna_FullyManagedClients_Audit.xml** policy introduced in [Create a WDAC policy for fully managed devices](../design/create-wdac-policy-for-fully-managed-devices.md) and will produce a new policy called **EventsPolicy.xml**.

   ```powershell
   $PolicyName= "Lamna_FullyManagedClients_Audit"
   $LamnaPolicy=$env:userprofile+"\Desktop\"+$PolicyName+".xml"
   $EventsPolicy=$env:userprofile+"\Desktop\EventsPolicy.xml"
   $EventsPolicyWarnings=$env:userprofile+"\Desktop\EventsPolicyWarnings.txt"
   ```

4. Use [New-CIPolicy](/powershell/module/configci/new-cipolicy) to generate a new WDAC policy from logged audit events. This example uses a **FilePublisher** file rule level and a **Hash** fallback level. Warning messages are redirected to a text file **EventsPolicyWarnings.txt**.

   ```powershell
   New-CIPolicy -FilePath $EventsPolicy -Audit -Level FilePublisher -Fallback SignedVersion,FilePublisher,Hash -UserPEs -MultiplePolicyFormat 3> $EventsPolicyWarnings
   ```

   > [!NOTE]
   > When you create policies from audit events, you should carefully consider the file rule level that you select to trust. The preceding example uses the **FilePublisher** rule level with a fallback level of  **Hash**, which may be more specific than desired. You can re-run the above command using different **-Level** and **-Fallback** options to meet your needs. For more information about WDAC rule levels, see [Understand WDAC policy rules and file rules](../design/select-types-of-rules-to-create.md).

5. Find and review the WDAC policy file **EventsPolicy.xml** that should be found on your desktop. Ensure that it only includes file and signer rules for applications, binaries, and scripts you wish to allow. You can remove rules by manually editing the policy XML or use the WDAC Policy Wizard tool (see [Editing existing base and supplemental WDAC policies with the Wizard](../design/wdac-wizard-editing-policy.md)).

6. Find and review the text file **EventsPolicyWarnings.txt** that should be found on your desktop. This file will include a warning for any files that WDAC couldn't create a rule for at either the specified rule level or fallback rule level.

   > [!NOTE]
   > New-CIPolicy only creates rules for files that can still be found on disk. Files which are no longer present on the system will not have a rule created to allow them. However, the event log should have sufficient information to allow these files by manually editing the policy XML to add rules. You can use an existing rule as a template and verify your results against the WDAC policy schema definition found at **%windir%\schemas\CodeIntegrity\cipolicy.xsd**.

7. Merge **EventsPolicy.xml** with the Base policy **Lamna_FullyManagedClients_Audit.xml** or convert it to a supplemental policy.

    For information on merging policies, refer to [Merge Windows Defender Application Control policies](merge-wdac-policies.md) and for information on supplemental policies see [Use multiple Windows Defender Application Control Policies](../design/deploy-multiple-wdac-policies.md).

8. Convert the Base or Supplemental policy to binary and deploy using your preferred method.
