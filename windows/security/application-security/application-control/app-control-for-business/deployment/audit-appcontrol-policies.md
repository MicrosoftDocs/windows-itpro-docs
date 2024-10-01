---
title: Use audit events to create App Control policy rules
description: Audits allow admins to discover apps, binaries, and scripts that should be added to the App Control policy.
ms.localizationpriority: medium
ms.date: 09/11/2024
ms.topic: conceptual
---

# Use audit events to create App Control policy rules

[!INCLUDE [Feature availability note](../includes/feature-availability-note.md)]

Running App Control in audit mode lets you discover applications, binaries, and scripts that are missing from your App Control policy but should be included.

While an App Control policy is running in audit mode, any binary that runs but would have been denied is logged in the **Applications and Services Logs\\Microsoft\\Windows\\CodeIntegrity\\Operational** event log. Script and MSI are logged in the **Applications and Services Logs\\Microsoft\\Windows\\AppLocker\\MSI and Script** event log. These events can be used to generate a new App Control policy that can be merged with the original Base policy or deployed as a separate Supplemental policy, if allowed.

## Overview of the process to create App Control policy to allow apps using audit events

> [!Note]
> You must have already deployed an App Control audit mode policy to use this process. If you have not already done so, see [Deploying App Control for Business policies](appcontrol-deployment-guide.md).

To familiarize yourself with creating App Control rules from audit events, follow these steps on a device with an App Control audit mode policy.

1. Install and run an application not allowed by the App Control policy but that you want to allow.

2. Review the **CodeIntegrity - Operational** and **AppLocker - MSI and Script** event logs to confirm events, like those shown in Figure 1, are generated related to the application. For information about the types of events you should see, refer to [Understanding App Control events](../operations/event-id-explanations.md).

   **Figure 1. Exceptions to the deployed App Control policy**<br>
   :::image type="content" alt-text="Event showing exception to App Control policy." source="../images/dg-fig23-exceptionstocode.png":::

3. In an elevated PowerShell session, run the following commands to initialize variables used by this procedure. This procedure builds upon the **Lamna_FullyManagedClients_Audit.xml** policy introduced in [Create an App Control policy for fully managed devices](../design/create-appcontrol-policy-for-fully-managed-devices.md) and will produce a new policy called **EventsPolicy.xml**.

   ```powershell
   $PolicyName= "Lamna_FullyManagedClients_Audit"
   $LamnaPolicy=$env:userprofile+"\Desktop\"+$PolicyName+".xml"
   $EventsPolicy=$env:userprofile+"\Desktop\EventsPolicy.xml"
   $EventsPolicyWarnings=$env:userprofile+"\Desktop\EventsPolicyWarnings.txt"
   ```

4. Use [New-CIPolicy](/powershell/module/configci/new-cipolicy) to generate a new App Control policy from logged audit events. This example uses a **FilePublisher** file rule level and a **Hash** fallback level. Warning messages are redirected to a text file **EventsPolicyWarnings.txt**.

   ```powershell
   New-CIPolicy -FilePath $EventsPolicy -Audit -Level FilePublisher -Fallback SignedVersion,FilePublisher,Hash -UserPEs -MultiplePolicyFormat 3> $EventsPolicyWarnings
   ```

   > [!NOTE]
   > When you create policies from audit events, you should carefully consider the file rule level that you select to trust. The preceding example uses the **FilePublisher** rule level with a fallback level of  **Hash**, which may be more specific than desired. You can re-run the above command using different **-Level** and **-Fallback** options to meet your needs. For more information about App Control rule levels, see [Understand App Control policy rules and file rules](../design/select-types-of-rules-to-create.md).

5. Find and review the App Control policy file **EventsPolicy.xml** that should be found on your desktop. Ensure that it only includes file and signer rules for applications, binaries, and scripts you wish to allow. You can remove rules by manually editing the policy XML or use the App Control Policy Wizard tool (see [Editing existing base and supplemental App Control policies with the Wizard](../design/appcontrol-wizard-editing-policy.md)).

6. Find and review the text file **EventsPolicyWarnings.txt** that should be found on your desktop. This file will include a warning for any files that App Control couldn't create a rule for at either the specified rule level or fallback rule level.

   > [!NOTE]
   > New-CIPolicy only creates rules for files that can still be found on disk. Files which are no longer present on the system will not have a rule created to allow them. However, the event log should have sufficient information to allow these files by manually editing the policy XML to add rules. You can use an existing rule as a template and verify your results against the App Control policy schema definition found at **%windir%\schemas\CodeIntegrity\cipolicy.xsd**.

7. Merge **EventsPolicy.xml** with the Base policy **Lamna_FullyManagedClients_Audit.xml** or convert it to a supplemental policy.

    For information on merging policies, refer to [Merge App Control for Business policies](merge-appcontrol-policies.md) and for information on supplemental policies see [Use multiple App Control for Business Policies](../design/deploy-multiple-appcontrol-policies.md).

8. Convert the Base or Supplemental policy to binary and deploy using your preferred method.
