---
title: Audit Windows Defender Application Control (WDAC) policies (Windows 10)
description: Windows Defender Application Control restricts which applications users are allowed to run and the code that runs in the system core.
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.date: 05/03/2018
---

# Audit Windows Defender Application Control policies

**Applies to:**

-   Windows 10
-   Windows Server 2016

Running Appication Control in audit mode allows administrators to discover any applications that were missed during an initial policy scan and to identify any new applications that have been installed and run since the original policy was created. While a WDAC policy is running in audit mode, any binary that runs and would have been denied had the policy been enforced is logged in the **Applications and Services Logs\\Microsoft\\Windows\\CodeIntegrity\\Operational** event log. When these logged binaries have been validated, they can easily be added to a new WDAC policy. When the new exception policy is created, you can merge it with your existing WDAC policies.

Before you begin this process, you need to create a WDAC policy binary file. If you have not already done so, see [Create an initial Windows Defender Application Control policy from a reference computer](create-initial-default-policy.md).

**To audit a Windows Defender Application Control policy with local policy:**

1. Before you begin, find the *.bin policy file , for example, the DeviceGuardPolicy.bin. Copy the file to C:\\Windows\\System32\\CodeIntegrity.

2. On the computer you want to run in audit mode, open the Local Group Policy Editor by running **GPEdit.msc**.

   > [!Note]
   > 
   > - The computer that you will run in audit mode must be clean of viruses or malware. Otherwise, in the process that you follow after auditing the system, you might unintentionally merge in a policy that allows viruses or malware to run.
   > 
   > - An alternative method to test a policy is to rename the test file to SIPolicy.p7b and drop it into C:\\Windows\\System32\\CodeIntegrity, rather than deploy it by using the Local Group Policy Editor.
    
3. Navigate to **Computer Configuration\\Administrative Templates\\System\\Windows Defender Device Guard**, and then select **Deploy Windows Defender Application Control**. Enable this setting by using the appropriate file path, for example, C:\\Windows\\System32\\CodeIntegrity\\DeviceGuardPolicy.bin, as shown in Figure 1.

   > [!Note]
   > 
   > - You can copy the WDAC policies to a file share to which all computer accounts have access rather than copy them to every system. 
   > 
   > - You might have noticed that the GPO setting references a .p7b file and this policy uses a .bin file. Regardless of the type of policy you deploy (.bin, .p7b, or .p7), they are all converted to SIPolicy.p7b when dropped onto the computers running Windows 10. We recommend that you make your WDAC policy names friendly and allow the system to convert the policy names for you. By doing this, it ensures that the policies are easily distinguishable when viewed in a share or any other central repository.

   ![Group Policy called Deploy Windows Defender Application Control](images/dg-fig22-deploycode.png)

   Figure 1. Deploy your Windows Defender Application Control policy

4. Restart the reference system for the WDAC policy to take effect.

5. Use the system as you normally would, and monitor code integrity events in the event log. While in audit mode, any exception to the deployed WDAC policy will be logged in the **Applications and Services Logs\\Microsoft\\Windows\\CodeIntegrity\\Operational** event log, as shown in Figure 2.

   ![Event showing exception to WDAC policy](images/dg-fig23-exceptionstocode.png)

   Figure 2. Exceptions to the deployed WDAC policy

   You will be reviewing the exceptions that appear in the event log, and making a list of any applications that should be allowed to run in your environment.
   
6. If you want to create a catalog file to simplify the process of including unsigned LOB applications in your WDAC policy, this is a good time to create it. For information, see [Deploy catalog files to support Windows Defender Application Control](deploy-catalog-files-to-support-windows-defender-application-control.md).   

Now that you have a WDAC policy deployed in audit mode, you can capture any audit information that appears in the event log. This is described in the next section.

## Create a Windows Defender Application Control policy that captures audit information from the event log

Use the following procedure after you have been running a computer with a WDAC policy in audit mode for a period of time. When you are ready to capture the needed policy information from the event log (so that you can later merge that information into the original WDAC policy), complete the following steps. 

<!-- Watch the phrase "later step in this procedure" in step 1, in case the organization of the procedures changes. -->

1. Review the audit information in the event log. From the WDAC policy exceptions that you see, make a list of any applications that should be allowed to run in your environment, and decide on the file rule level that should be used to trust these applications.

   Although the Hash file rule level will catch all of these exceptions, it may not be the best way to trust all of them. For information about file rule levels, see [Windows Defender Application Control file rule levels](select-types-of-rules-to-create.md) in "Deploy Windows Defender Application Control: policy rules and file rules."
    
   Your event log might also contain exceptions for applications that you eventually want your WDAC policy to block. If these appear, make a list of these also, for a later step in this procedure.

2. In an elevated Windows PowerShell session, initialize the variables that will be used. The example filename shown here is **DeviceGuardAuditPolicy.xml**:

   `$CIPolicyPath=$env:userprofile+"\Desktop\"`

   `$CIAuditPolicy=$CIPolicyPath+"DeviceGuardAuditPolicy.xml"`

3. Use [New-CIPolicy](https://docs.microsoft.com/powershell/module/configci/new-cipolicy) to generate a new WDAC policy from logged audit events. This example uses a file rule level of **Hash** and includes `3> CIPolicylog.txt`, which redirects warning messages to a text file, **CIPolicylog.txt**.

   `New-CIPolicy -Audit -Level Hash -FilePath $CIAuditPolicy –UserPEs 3> CIPolicylog.txt`

   > [!NOTE]
   > When you create policies from audit events, you should carefully consider the file rule level that you select to trust. The preceding example uses the **Hash** rule level, which is the most specific. Any change to the file (such as replacing the file with a newer version of the same file) will change the Hash value, and require an update to the policy.

4. Find and review the WDAC audit policy .xml file that you created. If you used the example variables as shown, the filename will be **DeviceGuardAuditPolicy.xml**, and it will be on your desktop. Look for the following:

   - Any applications that were caught as exceptions, but should be allowed to run in your environment. These are applications that should be in the .xml file. Leave these as-is in the file.
    
   - Any applications that actually should not be allowed to run in your environment. Edit these out of the .xml file. If they remain in the .xml file, and the information in the file is merged into your existing WDAC policy, the policy will treat the applications as trusted, and allow them to run. 

You can now use this file to update the existing WDAC policy that you ran in audit mode by merging the two policies. For instructions on how to merge this audit policy with the existing WDAC policy, see the next section, [Merge Windows Defender Application Control policies](merge-windows-defender-application-control-policies.md).

> [!NOTE]
> You may have noticed that you did not generate a binary version of this policy as you did in [Create a Windows Defender Application Control policy from a reference computer](create-initial-default-policy.md). This is because WDAC policies created from an audit log are not intended to run as stand-alone policies but rather to update existing WDAC policies.
