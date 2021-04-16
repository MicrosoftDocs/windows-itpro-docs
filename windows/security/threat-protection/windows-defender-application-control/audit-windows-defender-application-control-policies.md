---
title: Use audit events to create WDAC policy rules (Windows 10)
description: Audits allow admins to discover apps that were missed during an initial policy scan and to identify new apps that were installed since the policy was created.
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
ms.date: 05/03/2018
ms.technology: mde
---

# Use audit events to create WDAC policy rules

**Applies to:**

- Windows 10
- Windows Server 2016 and above

Running Application Control in audit mode allows administrators to discover applications, binaries, and scripts that were missed during the initial policy creation and to identify any new applications that have been installed and run since the original policy was created.

While a WDAC policy is running in audit mode, any binary that runs and would have been denied had the policy been enforced is logged in the **Applications and Services Logs\\Microsoft\\Windows\\CodeIntegrity\\Operational** event log or, for script and MSI, in the **Applications and Services Logs\\Microsoft\\Windows\\AppLocker\\MSI and Script** event log. These events can be used to easily generate a new WDAC policy which can be merged with the original Base policy or, on Windows 10 1903+, included in a separate Supplemental policy when the Base policy allows supplemental policies.

## Overview of the process to create WDAC policy to allow apps using audit events

> [!Note]
> You must have already deployed a WDAC audit mode policy to use this process. If you have not already done so, see [Deploying Windows Defender Application Control policies](windows-defender-application-control-deployment-guide.md).

To familiarize yourself with the process to generate WDAC rules from audit events, follow these steps on a device with a WDAC audit mode policy in effect.

1. Install and run an application that should not currently be allowed by the WDAC policy but which you want to allow.

2. Review the **CodeIntegrity - Operational** and **AppLocker - MSI and Script** event logs to confirm events, like those shown in Figure 1, are generated related to the application. For information about the types of events you should see, refer to [Understanding Application Control events](event-id-explanations.md).

   **Figure 1. Exceptions to the deployed WDAC policy**
   ![Event showing exception to WDAC policy](images/dg-fig23-exceptionstocode.png)

3. In an elevated Windows Powershell session, run the following commands to initialize variables used by this procedure. This builds upon the **Lamna_FullyManagedClients_Audit.xml** policy introduced in [Create a WDAC policy for fully-managed devices](create-wdac-policy-for-fully-managed-devices.md) and will produce a new policy called **EventsPolicy.xml**.

   ```powershell
   $PolicyName= "Lamna_FullyManagedClients_Audit"
   $LamnaPolicy=$env:userprofile+"\Desktop\"+$PolicyName+".xml"
   $EventsPolicy=$env:userprofile+"\Desktop\EventsPolicy.xml"
   $EventsPolicyWarnings=$env:userprofile+"\Desktop\EventsPolicyWarnings.txt"
   ```

4. Use [New-CIPolicy](/powershell/module/configci/new-cipolicy) to generate a new WDAC policy from logged audit events. This example uses a file rule level of **FilePublisher** with a fallback level of **Hash** and redirects warning messages to a text file **EventsPolicyWarnings.txt**.

   ```powershell
   New-CIPolicy -FilePath $EventsPolicy -Audit -Level FilePublisher -Fallback Hash –UserPEs -MultiplePolicyFormat 3> $EventsPolicyWarnings
   ```

   > [!NOTE]
   > When you create policies from audit events, you should carefully consider the file rule level that you select to trust. The preceding example uses the **FilePublisher** rule level with a fallback level of  **Hash**, which may be more specific than desired. You can re-run the above command using different **-Level** and **-Fallback** options to meet your needs. For more information about WDAC rule levels refer to [Understand WDAC policy rules and file rules](select-types-of-rules-to-create.md).

5. Find and review the WDAC policy file **EventsPolicy.xml** which should be found on your desktop. Ensure that the file and signer rules that were created authorize only the applications, binaries, and scripts you wish to allow. You can remove rules by manually editing the policy XML or use the WDAC Policy Wizard tool (see [Editing existing base and supplemental WDAC policies with the Wizard](wdac-wizard-editing-policy.md)).

6. Find and review the text file **EventsPolicyWarnings.txt** which should be found on your desktop. This will include a warning for any files that WDAC could not create a rule for at either the specified rule level or fallback rule level.

   > [!NOTE]
   > New-CIPolicy only creates rules for files that can still be found on disk. Files which are no longer present on the system will not have a rule created to allow them. However, the event log should have sufficient information to allow these files by manually editing the policy XML to add rules. You can use an existing rule as a template and verify your results against the WDAC policy schema definition found at **%windir%\schemas\CodeIntegrity\cipolicy.xsd**.

7. Merge **EventsPolicy.xml** with the Base policy **Lamna_FullyManagedClients_Audit.xml** or convert it to a supplemental policy.

    For information on merging policies, refer to [Merge Windows Defender Application Control policies](merge-windows-defender-application-control-policies.md) and for information on supplemental policies see [Use multiple Windows Defender Application Control Policies](deploy-multiple-windows-defender-application-control-policies.md).

8. Convert the Base or Supplemental policy to binary and deploy using your preferred method.
