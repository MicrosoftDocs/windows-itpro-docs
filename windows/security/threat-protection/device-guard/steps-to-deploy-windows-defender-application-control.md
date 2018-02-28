---
title: Deploy code integrity policies - steps (Windows 10)
description: This article describes how to deploy code integrity policies, one of the main features that are part of Windows Defender Device Guard in Windows 10. 
keywords: virtualization, security, malware
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: high
author: brianlic-msft
ms.date: 02/13/2018
---

# Steps to Deploy Windows Defender Application Control

**Applies to**
-   Windows 10
-   Windows Server 2016

For an overview of the process described in the following procedures, see [Deploy Windows Defender Application Control: policy rules and file rules](deploy-windows-defender-application-control-policy-rules-and-file-rules.md). To understand how the deployment of Windows Defender Application Control (WDAC) fits with other steps in the Windows Defender Device Guard deployment process, see [Planning and getting started on the Windows Defender Device Guard deployment process](planning-and-getting-started-on-the-device-guard-deployment-process.md).

## Create a Windows Defender Application Control policy from a reference computer

This section outlines the process to create a WDAC policy with Windows PowerShell. 
For this example, you must initiate variables to be used during the creation process or use the full file paths in the command. 
Then create the WDAC policy by scanning the system for installed applications. 
The policy file is converted to binary format when it gets created so that Windows can interpret it.

> [!Note] 
> Make sure the reference computer is virus and malware-free, and install any software you want to be scanned before creating the WDAC policy. 

### Scripting and applications

Each installed software application should be validated as trustworthy before you create a policy. 
We recommend that you review the reference computer for software that can load arbitrary DLLs and run code or scripts that could render the PC more vulnerable. 
Examples include software aimed at development or scripting such as msbuild.exe (part of Visual Studio and the .NET Framework) which can be removed if you do not want to run scripts. 
You can remove or disable such software on the reference computer. 
You can also fine-tune your control by [using Windows Defender Application Control in combination with AppLocker](introduction-to-device-guard-virtualization-based-security-and-windows-defender-application-control.md#windows-defender-device-guard-with-applocker). 


To create a WDAC policy, copy each of the following commands into an elevated Windows PowerShell session, in order:

1.  Initialize variables that you will use. The following example commands use **InitialScan.xml** and **DeviceGuardPolicy.bin** for the names of the files that will be created:

    ` $CIPolicyPath=$env:userprofile+"\Desktop\"`

    ` $InitialCIPolicy=$CIPolicyPath+"InitialScan.xml"`

    ` $CIPolicyBin=$CIPolicyPath+"DeviceGuardPolicy.bin"`

2.  Use [New-CIPolicy](https://technet.microsoft.com/library/mt634473.aspx) to create a new WDAC policy by scanning the system for installed applications:

    ` New-CIPolicy -Level PcaCertificate -FilePath $InitialCIPolicy –UserPEs 3> CIPolicyLog.txt `

    > [!Note] 
    
    > - When you specify the **-UserPEs** parameter (to include user mode executables in the scan), rule option **0 Enabled:UMCI** is automatically added to the WDAC policy. In contrast, if you do not specify **-UserPEs**, the policy will be empty of user mode executables and will only have rules for kernel mode binaries like drivers, in other words, the whitelist will not include applications. If you create such a policy and later add rule option **0 Enabled:UMCI**, all attempts to start applications will cause a response from Windows Defender Application Control. In audit mode, the response is logging an event, and in enforced mode, the response is blocking the application. 
    
    > - You can add the **-Fallback** parameter to catch any applications not discovered using the primary file rule level specified by the **-Level** parameter. For more information about file rule level options, see [Windows Defender Application Control file rule levels](deploy-windows-defender-application-control-policy-rules-and-file-rules.md#windows-defender-application-control-file-rule-levels) in “Deploy Windows Defender Application Control: policy rules and file rules.”

    > - To specify that the WDAC policy scan only a specific drive, include the **-ScanPath** parameter followed by a path. Without this parameter, the entire system is scanned.
    
    > - The preceding example includes `3> CIPolicylog.txt`, which redirects warning messages to a text file, **CIPolicylog.txt**.

3.  Use [ConvertFrom-CIPolicy](https://technet.microsoft.com/library/mt733073.aspx) to convert the WDAC policy to a binary format:

    ` ConvertFrom-CIPolicy $InitialCIPolicy $CIPolicyBin`

After you complete these steps, the WDAC binary file (DeviceGuardPolicy.bin) and original .xml file (IntialScan.xml) will be available on your desktop. You can use the binary file as a WDAC policy or sign it for additional security.

> [!Note] 
> We recommend that you keep the original .xml file of the policy for use when you need to merge the WDAC policy with another policy or update its rule options. Alternatively, you would have to create a new policy from a new scan for servicing. For more information about how to merge WDAC policies, see [Merge Windows Defender Application Control policies](#merge-windows-defender-application-control-policies).

We recommend that every WDAC policy be run in audit mode before being enforced. Doing so allows administrators to discover any issues with the policy without receiving error message dialog boxes. For information about how to audit a WDAC policy, see the next section, [Audit Windows Defender Application Control policies](#audit-windows-defender-application-control-policies).

## Audit Windows Defender Application Control policies

When WDAC policies are run in audit mode, it allows administrators to discover any applications that were missed during an initial policy scan and to identify any new applications that have been installed and run since the original policy was created. While a WDAC policy is running in audit mode, any binary that runs and would have been denied had the policy been enforced is logged in the **Applications and Services Logs\\Microsoft\\Windows\\CodeIntegrity\\Operational** event log. When these logged binaries have been validated, they can easily be added to a new WDAC policy. When the new exception policy is created, you can merge it with your existing WDAC policies.

> [!Note] 
> Before you begin this process, you need to create a WDAC policy binary file. If you have not already done so, see [Create a Windows Defender Application Control policy from a reference computer](#create-a-windows-defender-application-control-policy-from-a-reference-computer), earlier in this topic, for a step-by-step walkthrough of the process to create a WDAC policy and convert it to binary format.

**To audit a Windows Defender Application Control policy with local policy:**

1.  Find a *.bin policy file that you have created, for example, the DeviceGuardPolicy.bin file that resulted from the steps in the earlier section, [Create a Windows Defender Application Control policy from a reference computer](#create-a-windows-defender-application-control-policy-from-a-reference-computer). Copy the file to C:\\Windows\\System32\\CodeIntegrity.

2.  On the computer you want to run in audit mode, open the Local Group Policy Editor by running **GPEdit.msc**.

    > [!Note]
    
    > - The computer that you will run in audit mode must be clean of viruses or malware. Otherwise, in the process that you follow after auditing the system, you might unintentionally merge in a policy that allows viruses or malware to run.
    
    > - An alternative method to test a policy is to rename the test file to SIPolicy.p7b and drop it into C:\\Windows\\System32\\CodeIntegrity, rather than deploy it by using the Local Group Policy Editor.
    
3.  Navigate to **Computer Configuration\\Administrative Templates\\System\\Windows Defender Device Guard**, and then select **Deploy Windows Defender Application Control**. Enable this setting by using the appropriate file path, for example, C:\\Windows\\System32\\CodeIntegrity\\DeviceGuardPolicy.bin, as shown in Figure 1.

    > [!Note]
    
    > - The illustration shows the example file name *DeviceGuardPolicy.bin* because this name was used earlier in this topic, in [Create a Windows Defender Application Control policy from a reference computer](#create-a-windows-defender-application-control-policy-from-a-reference-computer). Also, this policy file does not need to be copied to every system. You can instead copy the WDAC policies to a file share to which all computer accounts have access.

    > - Any policy you select here is converted to SIPolicy.p7b when it is deployed to the individual computers.

    > - You might have noticed that the GPO setting references a .p7b file and this policy uses a .bin file. Regardless of the type of policy you deploy (.bin, .p7b, or .p7), they are all converted to SIPolicy.p7b when dropped onto the computers running Windows 10. We recommend that you make your WDAC policy names friendly and allow the system to convert the policy names for you. By doing this, it ensures that the policies are easily distinguishable when viewed in a share or any other central repository.

   ![Group Policy called Deploy Windows Defender Application Control](images/dg-fig22-deploycode.png)

   Figure 1. Deploy your Windows Defender Application Control policy

4.  Restart the reference system for the WDAC policy to take effect.

5.  Use the system as you normally would, and monitor code integrity events in the event log. While in audit mode, any exception to the deployed WDAC policy will be logged in the **Applications and Services Logs\\Microsoft\\Windows\\CodeIntegrity\\Operational** event log, as shown in Figure 2.

   ![Event showing exception to WDAC policy](images/dg-fig23-exceptionstocode.png)

   Figure 2. Exceptions to the deployed WDAC policy

   You will be reviewing the exceptions that appear in the event log, and making a list of any applications that should be allowed to run in your environment.
   
6. If you want to create a catalog file to simplify the process of including unsigned LOB applications in your WDAC policy, this is a good time to create it. For information, see [Deploy catalog files to support Windows Defender Application Control](deploy-catalog-files-to-support-windows-defender-application-control.md).   

Now that you have a WDAC policy deployed in audit mode, you can capture any audit information that appears in the event log. This is described in the next section.

## Create a Windows Defender Application Control policy that captures audit information from the event log

Use the following procedure after you have been running a computer with a WDAC policy in audit mode for a period of time. When you are ready to capture the needed policy information from the event log (so that you can later merge that information into the original WDAC policy), complete the following steps. 

<!-- Watch the phrase "later step in this procedure" in step 1, in case the organization of the procedures changes. -->

1.  Review the audit information in the event log. From the WDAC policy exceptions that you see, make a list of any applications that should be allowed to run in your environment, and decide on the file rule level that should be used to trust these applications.

    Although the Hash file rule level will catch all of these exceptions, it may not be the best way to trust all of them. For information about file rule levels, see [Windows Defender Application Control file rule levels](deploy-windows-defender-application-control-policy-rules-and-file-rules.md#windows-defender-application-control-file-rule-levels) in "Deploy Windows Defender Application Control: policy rules and file rules."
    
    Your event log might also contain exceptions for applications that you eventually want your WDAC policy to block. If these appear, make a list of these also, for a later step in this procedure.

2.  In an elevated Windows PowerShell session, initialize the variables that will be used. The example filename shown here is **DeviceGuardAuditPolicy.xml**:

    ` $CIPolicyPath=$env:userprofile+"\Desktop\"`

    ` $CIAuditPolicy=$CIPolicyPath+"DeviceGuardAuditPolicy.xml"`

3.  Use [New-CIPolicy](https://technet.microsoft.com/library/mt634473.aspx) to generate a new WDAC policy from logged audit events. This example uses a file rule level of **Hash** and includes `3> CIPolicylog.txt`, which redirects warning messages to a text file, **CIPolicylog.txt**.

    ` New-CIPolicy -Audit -Level Hash -FilePath $CIAuditPolicy –UserPEs 3> CIPolicylog.txt`

  > [!Note] 
  > When you create policies from audit events, you should carefully consider the file rule level that you select to trust. The preceding example uses the **Hash** rule level, which is the most specific. Any change to the file (such as replacing the file with a newer version of the same file) will change the Hash value, and require an update to the policy.

4.  Find and review the WDAC audit policy .xml file that you created. If you used the example variables as shown, the filename will be **DeviceGuardAuditPolicy.xml**, and it will be on your desktop. Look for the following:

    - Any applications that were caught as exceptions, but should be allowed to run in your environment. These are applications that should be in the .xml file. Leave these as-is in the file.
    
    - Any applications that actually should not be allowed to run in your environment. Edit these out of the .xml file. If they remain in the .xml file, and the information in the file is merged into your existing WDAC policy, the policy will treat the applications as trusted, and allow them to run. 

You can now use this file to update the existing WDAC policy that you ran in audit mode by merging the two policies. For instructions on how to merge this audit policy with the existing WDAC policy, see the next section, [Merge Windows Defender Application Control policies](#merge-windows-defender-application-control-policies).

> [!Note] 
> You may have noticed that you did not generate a binary version of this policy as you did in [Create a Windows Defender Application Control policy from a reference computer](#create-a-windows-defender-application-control-policy-from-a-reference-computer). This is because WDAC policies created from an audit log are not intended to run as stand-alone policies but rather to update existing WDAC policies.

## Use a Windows Defender Application Control policy to control specific plug-ins, add-ins, and modules

As of Windows 10, version 1703, you can use WDAC policies not only to control applications, but also to control whether specific plug-ins, add-ins, and modules can run from specific apps (such as a line-of-business application or a browser):

| Approach (as of Windows 10, version 1703) | Guideline |
|---|---|
| You can work from a list of plug-ins, add-ins, or modules that you want only a specific application to be able to run. Other applications would be blocked from running them. | Use `New-CIPolicyRule` with the `-AppID` option. |
| In addition, you can work  from a list of plug-ins, add-ins, or modules that you want to block in a specific application. Other applications would be allowed to run them. | Use `New-CIPolicyRule` with the `-AppID` and `-Deny` options. |

To work with these options, the typical method is to create a policy that only affects plug-ins, add-ins, and modules, then merge it into your ‘master’ policy (merging is described in the next section).

For example, to create a WDAC policy that allows **addin1.dll** and **addin2.dll** to run in **ERP1.exe**, your organization’s enterprise resource planning (ERP) application, but blocks those add-ins in other applications, run the following commands. Note that in the second command, **+=** is used to add a second rule to the **$rule** variable:

```
$rule = New-CIPolicyRule -DriverFilePath '.\temp\addin1.dll' -Level FileName -AppID '.\ERP1.exe'
$rule += New-CIPolicyRule -DriverFilePath '.\temp\addin2.dll' -Level FileName -AppID '.\ERP1.exe'
New-CIPolicy -Rules $rule -FilePath ".\AllowERPAddins.xml" -UserPEs
```

As another example, to create a WDAC policy that blocks **addin3.dll** from running in Microsoft Word, run the following command. You must include the `-Deny` option to block the specified add-ins in the specifed application:

```
$rule = New-CIPolicyRule -DriverFilePath '.\temp\addin3.dll' -Level FileName -Deny -AppID '.\winword.exe'
New-CIPolicy -Rules $rule -FilePath ".\BlockAddins.xml" -UserPEs
```

## Merge Windows Defender Application Control policies

When you develop WDAC policies, you will occasionally need to merge two policies. A common example is when a WDAC policy is initially created and audited. Another example is when you create a single master policy by using multiple policies previously created from reference computers. Because each computer running Windows 10 can have only one WDAC policy, it is important to properly maintain these policies. In this example, audit events have been saved into a secondary WDAC policy that you then merge with the initial WDAC policy.

> [!Note] 
> The following example uses several of the WDAC policy .xml files that you created in earlier sections in this topic. You can follow this process, however, with any two WDAC policies you would like to combine.

To merge two WDAC policies, complete the following steps in an elevated Windows PowerShell session:

1.  Initialize the variables that will be used:

    ` $CIPolicyPath=$env:userprofile+"\Desktop\"`

    ` $InitialCIPolicy=$CIPolicyPath+"InitialScan.xml"`

    ` $AuditCIPolicy=$CIPolicyPath+"DeviceGuardAuditPolicy.xml"`

    ` $MergedCIPolicy=$CIPolicyPath+"MergedPolicy.xml"`

    ` $CIPolicyBin=$CIPolicyPath+"NewDeviceGuardPolicy.bin"`

  > [!Note] 
  > The variables in this section specifically expect to find an initial policy on your desktop called **InitialScan.xml** and an audit WDAC policy called **DeviceGuardAuditPolicy.xml**. If you want to merge other WDAC policies, update the variables accordingly.

2.  Use [Merge-CIPolicy](https://technet.microsoft.com/library/mt634485.aspx) to merge two policies and create a new WDAC policy:

    ` Merge-CIPolicy -PolicyPaths $InitialCIPolicy,$AuditCIPolicy -OutputFilePath $MergedCIPolicy`

3.  Use [ConvertFrom-CIPolicy](https://technet.microsoft.com/library/mt733073.aspx) to convert the merged WDAC policy to binary format:

    ` ConvertFrom-CIPolicy $MergedCIPolicy $CIPolicyBin `

Now that you have created a new WDAC policy (for example, called **NewDeviceGuardPolicy.bin**), you can deploy the policy binary to systems manually or by using Group Policy or Microsoft client management solutions. For information about how to deploy this new policy with Group Policy, see the [Deploy and manage Windows Defender Application Control with Group Policy](#deploy-and-manage-windows-defender-application-control-with-group-policy) section.

## Enforce Windows Defender Application Control policies

Every WDAC policy is created with audit mode enabled. After you have successfully deployed and tested a WDAC policy in audit mode and are ready to test the policy in enforced mode, complete the following steps in an elevated Windows PowerShell session:

> [!Note] 
> Every WDAC policy should be tested in audit mode first. For information about how to audit WDAC policies, see [Audit Windows Defender Application Control policies](#audit-windows-defender-application-control-policies), earlier in this topic.

1.  Initialize the variables that will be used:

    ` $CIPolicyPath=$env:userprofile+"\Desktop\"`

    ` $InitialCIPolicy=$CIPolicyPath+"InitialScan.xml" `

    ` $EnforcedCIPolicy=$CIPolicyPath+"EnforcedPolicy.xml"`

    ` $CIPolicyBin=$CIPolicyPath+"EnforcedDeviceGuardPolicy.bin"`

    > [!Note] 
    > The initial WDAC policy that this section refers to was created in the [Create a Windows Defender Application Control policy from a reference computer](#create-a-windows-defender-application-control-policy-from-a-reference-computer) section. If you are using a different WDAC policy, update the **CIPolicyPath** and **InitialCIPolicy** variables.

2. Ensure that rule options 9 (“Advanced Boot Options Menu”) and 10 (“Boot Audit on Failure”) are set the way that you intend for this policy. We strongly recommend that you enable these rule options before you run any enforced policy for the first time. Enabling these options provides administrators with a pre-boot command prompt, and allows Windows to start even if the WDAC policy blocks a kernel-mode driver from running. When ready for enterprise deployment, you can remove these options.

    To ensure that these options are enabled in a policy, use [Set-RuleOption](https://technet.microsoft.com/library/mt634483.aspx) as shown in the following commands. You can run these commands even if you're not sure whether options 9 and 10 are already enabled—if so, the commands have no effect.
    
    ` Set-RuleOption -FilePath $InitialCIPolicy -Option 9`
    
    ` Set-RuleOption -FilePath $InitialCIPolicy -Option 10`

3.  Copy the initial file to maintain an original copy:

    ` copy $InitialCIPolicy $EnforcedCIPolicy`

4.  Use [Set-RuleOption](https://technet.microsoft.com/library/mt634483.aspx) to delete the audit mode rule option:

    ` Set-RuleOption -FilePath $EnforcedCIPolicy -Option 3 -Delete`

  > [!Note] 
  > To enforce a WDAC policy, you delete option 3, the **Audit Mode Enabled** option. There is no “enforced” option that can be placed in a WDAC policy.

5.  Use [ConvertFrom-CIPolicy](https://technet.microsoft.com/library/mt733073.aspx) to convert the new WDAC policy to binary format:

    ` ConvertFrom-CIPolicy $EnforcedCIPolicy $CIPolicyBin`

Now that this policy is in enforced mode, you can deploy it to your test computers. Rename the policy to SIPolicy.p7b and copy it to C:\\Windows\\System32\\CodeIntegrity for testing, or deploy the policy through Group Policy by following the instructions in [Deploy and manage Windows Defender Application Control with Group Policy](#deploy-and-manage-windows-defender-application-control-with-group-policy). You can also use other client management software to deploy and manage the policy.

## Signing Windows Defender Application Control policies with SignTool.exe

Signed WDAC policies give organizations the highest level of malware protection available in Windows 10. 
In addition to their enforced policy rules, signed policies cannot be modified or deleted by a user or administrator on the computer. 
These policies are designed to prevent administrative tampering and kernel mode exploit access. 
With this in mind, it is much more difficult to remove signed WDAC policies. 
Before you sign and deploy a signed WDAC policy, we recommend that you [audit the policy](#audit-windows-defender-application-control-policies) to discover any blocked applications that should be allowed to run. 

Signing WDAC policies by using an on-premises CA-generated certificate or a purchased code signing certificate is straightforward. 
If you do not currently have a code signing certificate exported in .pfx format (containing private keys, extensions, and root certificates), see [Optional: Create a code signing certificate for Windows Defender Application Control](optional-create-a-code-signing-certificate-for-windows-defender-application-control.md) to create one with your on-premises CA. 

Before signing WDAC policies for the first time, be sure to enable rule options 9 (“Advanced Boot Options Menu”) and 10 (“Boot Audit on Failure”) to leave troubleshooting options available to administrators. To ensure that a rule option is enabled, you can run a command such as `Set-RuleOption -FilePath <PathAndFilename> -Option 9` even if you're not sure whether the option is already enabled—if so, the command has no effect. When validated and ready for enterprise deployment, you can remove these options. For more information about rule options, see [Windows Defender Application Control policy rules](deploy-windows-defender-application-control-policy-rules-and-file-rules.md#windows-defender-application-control-policy-rules) in "Deploy Windows Defender Application Control: policy rules and file rules."

To sign a WDAC policy with SignTool.exe, you need the following components:

-   SignTool.exe, found in the Windows SDK (Windows 7 or later)

-   The binary format of the WDAC policy that you generated in the [Create a Windows Defender Application Control policy from a reference computer](#create-a-windows-defender-application-control-policy-from-a-reference-computer) section or another WDAC policy that you have created

-   An internal CA code signing certificate or a purchased code signing certificate

If you do not have a code signing certificate, see the [Optional: Create a code signing certificate for Windows Defender Application Control](optional-create-a-code-signing-certificate-for-windows-defender-application-control.md) section for instructions on how to create one. If you use an alternate certificate or WDAC policy, be sure to update the following steps with the appropriate variables and certificate so that the commands will function properly. To sign the existing WDAC policy, copy each of the following commands into an elevated Windows PowerShell session:

1.  Initialize the variables that will be used:

    ` $CIPolicyPath=$env:userprofile+"\Desktop\"`
    
    ` $InitialCIPolicy=$CIPolicyPath+"InitialScan.xml"`
    
    ` $CIPolicyBin=$CIPolicyPath+"DeviceGuardPolicy.bin"`

   > [!Note] 
   > This example uses the WDAC policy that you created in the [Create a Windows Defender Application Control policy from a reference computer](#create-a-windows-defender-application-control-policy-from-a-reference-computer) section. If you are signing another policy, be sure to update the **$CIPolicyPath** and **$CIPolicyBin** variables with the correct information.

2.  Import the .pfx code signing certificate. Import the code signing certificate that you will use to sign the WDAC policy into the signing user’s personal store on the computer that will be doing the signing. In this example, you use the certificate that was created in [Optional: Create a code signing certificate for Windows Defender Application Control](optional-create-a-code-signing-certificate-for-windows-defender-application-control.md).

3.  Export the .cer code signing certificate. After the code signing certificate has been imported, export the .cer version to your desktop. This version will be added to the policy so that it can be updated later.

4.  Navigate to your desktop as the working directory:

    ` cd $env:USERPROFILE\Desktop `

5.  Use [Add-SignerRule](https://technet.microsoft.com/library/mt634479.aspx) to add an update signer certificate to the WDAC policy:

    ` Add-SignerRule -FilePath $InitialCIPolicy -CertificatePath <Path to exported .cer certificate> -Kernel -User –Update`

   > [!Note] 
   > *&lt;Path to exported .cer certificate&gt;* should be  the full path to the certificate that you exported in   step 3.
    Also, adding update signers is crucial to being able to modify or disable this policy in the future. For more information about how to disable signed WDAC policies, see the [Disable signed Windows Defender Application Control policies within Windows](#disable-signed-windows-defender-application-control-policies-within-windows) section.

6.  Use [Set-RuleOption](https://technet.microsoft.com/library/mt634483.aspx) to remove the unsigned policy rule option:

    ` Set-RuleOption -FilePath $InitialCIPolicy -Option 6 -Delete`

7.  Use [ConvertFrom-CIPolicy](https://technet.microsoft.com/library/mt733073.aspx) to convert the policy to binary format:

    ` ConvertFrom-CIPolicy $InitialCIPolicy $CIPolicyBin`

8.  Sign the WDAC policy by using SignTool.exe:

    ` <Path to signtool.exe> sign -v /n "ContosoDGSigningCert" -p7 . -p7co 1.3.6.1.4.1.311.79.1 -fd sha256 $CIPolicyBin`

   > [!Note] 
   > The *&lt;Path to signtool.exe&gt;* variable should be the full path to the SignTool.exe utility. **ContosoDGSigningCert** is the subject name of the certificate that will be used to sign the WDAC policy. You should import this certificate to your personal certificate store on the computer you use to sign the policy.

9.  Validate the signed file. When complete, the commands should output a signed policy file called DeviceGuardPolicy.bin.p7 to your desktop. You can deploy this file the same way you deploy an enforced or non-enforced policy. For information about how to deploy WDAC policies, see [Deploy and manage Windows Defender Application Control with Group Policy](#deploy-and-manage-windows-defender-application-control-with-group-policy).

## Disable unsigned Windows Defender Application Control policies

There may come a time when an administrator wants to disable a WDAC policy. For unsigned WDAC policies, this process is simple. Depending on how the WDAC policy was deployed, unsigned policies can be disabled in one of two ways. If a WDAC policy was manually enabled and copied to the code integrity folder location, simply delete the file and restart the computer. The following locations can contain executing WDAC policies:

-   &lt;EFI System Partition&gt;\\Microsoft\\Boot\\

-   &lt;OS Volume&gt;\\Windows\\System32\\CodeIntegrity\\

If the WDAC policy was deployed by using Group Policy, the GPO that is currently enabling and deploying the policy must be set to disabled. Then, the WDAC policy will be disabled on the next computer restart.

## Disable signed Windows Defender Application Control policies within Windows

Signed policies protect Windows from administrative manipulation as well as malware that has gained administrative-level access to the system. For this reason, signed WDAC policies are intentionally more difficult to remove than unsigned policies. They inherently protect themselves from modification or removal and therefore are difficult even for administrators to remove successfully. If the signed WDAC policy is manually enabled and copied to the CodeIntegrity folder, to remove the policy, you must complete the following steps.

> [!Note] 
> For reference, signed WDAC policies should be replaced and removed from the following locations:

-   &lt;EFI System Partition&gt;\\Microsoft\\Boot\\

-   &lt;OS Volume&gt;\\Windows\\System32\\CodeIntegrity\\


1.  Replace the existing policy with another signed policy that has the **6 Enabled: Unsigned System Integrity Policy** rule option enabled.

    > **Note**&nbsp;&nbsp;To take effect, this policy must be signed with a certificate previously added to the **UpdatePolicySigners** section of the original signed policy you want to replace.

2.  Restart the client computer.

3.  Verify that the new signed policy exists on the client.

    > **Note**&nbsp;&nbsp;If the signed policy that contains rule option 6 has not been processed on the client, the addition of an unsigned policy may cause boot failures.

4.  Delete the new policy.

5.  Restart the client computer.

If the signed WDAC policy has been deployed using by using Group Policy, you must complete the following steps:

1.  Replace the existing policy in the GPO with another signed policy that has the **6 Enabled: Unsigned System Integrity Policy** rule option enabled.

    > **Note**&nbsp;&nbsp;To take effect, this policy must be signed with a certificate previously added to the **UpdatePolicySigners** section of the original signed policy you want to replace.

2.  Restart the client computer.

3.  Verify that the new signed policy exists on the client.

    > **Note**&nbsp;&nbsp;If the signed policy that contains rule option 6 has not been processed on the client, the addition of an unsigned policy may cause boot failures.

4.  Set the GPO to disabled.

5.  Delete the new policy.

6.  Restart the client computer.

## Disable signed Windows Defender Application Control policies within the BIOS

There may be a time when signed WDAC policies cause a boot failure. Because WDAC policies enforce kernel mode drivers, it is important that they be thoroughly tested on each software and hardware configuration before being enforced and signed. Signed WDAC policies are validated in the pre-boot sequence by using Secure Boot. When you disable the Secure Boot feature in the BIOS, and then delete the file from the following locations on the operating system disk, it allows the system to boot into Windows:

-   &lt;EFI System Partition&gt;\\Microsoft\\Boot\\

-   &lt;OS Volume&gt;\\Windows\\System32\\CodeIntegrity\\

## Deploy and manage Windows Defender Application Control with Group Policy

WDAC policies can easily be deployed and managed with Group Policy. A Windows Defender Device Guard administrative template will be available in Windows Server 2016 that allows you to simplify deployment of Windows Defender Device Guard hardware-based security features and Windows Defender Application Control policies. The following procedure walks you through how to deploy a WDAC policy called **DeviceGuardPolicy.bin** to a test OU called *DG Enabled PCs* by using a GPO called **Contoso GPO Test**.

> [!Note] 
> This walkthrough requires that you have previously created a WDAC policy and have a computer running Windows 10 on which to test a Group Policy deployment. For more information about how to create a WDAC policy, see [Create a Windows Defender Application Control policy from a reference computer](#create-a-windows-defender-application-control-policy-from-a-reference-computer), earlier in this topic.

> [!Note] 
> Signed WDAC policies can cause boot failures when deployed. We recommend that signed WDAC policies be thoroughly tested on each hardware platform before enterprise deployment.

To deploy and manage a WDAC policy with Group Policy:

1.  On a domain controller on a client computer on which RSAT is installed, open the GPMC by running **GPMC.MSC** or searching for “Group Policy Management” in Windows Search.

2.  Create a new GPO: right-click an OU and then click **Create a GPO in this domain, and Link it here**, as shown in Figure 3.

    > **Note**&nbsp;&nbsp;You can use any OU name. Also, security group filtering is an option when you consider different ways of combining WDAC policies (or keeping them separate), as discussed in [Planning and getting started on the Windows Defender Device Guard deployment process](planning-and-getting-started-on-the-device-guard-deployment-process.md).

    ![Group Policy Management, create a GPO](images/dg-fig24-creategpo.png)

    Figure 3. Create a GPO

3.  Name the new GPO. You can choose any name. 

4.  Open the Group Policy Management Editor: right-click the new GPO, and then click **Edit**.

5.  In the selected GPO, navigate to Computer Configuration\\Administrative Templates\\System\\Device Guard. Right-click **Deploy Windows Defender Application Control** and then click **Edit**.

    ![Edit the Group Policy for Windows Defender Application Control](images/wdac-edit-gp.png)

    Figure 4. Edit the Group Policy for Windows Defender Application Control

6.  In the **Deploy Windows Defender Application Control** dialog box, select the **Enabled** option, and then specify the code integrity policy deployment path.

    In this policy setting, you specify either the local path in which the policy will exist on the client computer or a Universal Naming Convention (UNC) path that the client computers will look to retrieve the latest version of the policy. For example, with DeviceGuardPolicy.bin on the test computer, the example file path would be C:\\Windows\\System32\\CodeIntegrity\\DeviceGuardPolicy.bin, as shown in Figure 5.

    > [!Note] 
    > The illustration shows the example file name *DeviceGuardPolicy.bin* because this name was used earlier in this topic, in [Create a Windows Defender Application Control policy from a reference computer](#create-a-windows-defender-application-control-policy-from-a-reference-computer). Also, this policy file does not need to be copied to every computer. You can instead copy the WDAC policies to a file share to which all computer accounts have access. Any policy selected here is converted to SIPolicy.p7b when it is deployed to the individual client computers.

    ![Group Policy called Deploy Windows Defender Application Control](images/dg-fig26-enablecode.png)

    Figure 5. Enable the Windows Defender Application Control policy

    > [!Note] 
    > You may have noticed that the GPO setting references a .p7b file and this example uses a .bin file for the policy. Regardless of the type of policy you deploy (.bin, .p7b, or .p7), they are all converted to SIPolicy.p7b when dropped on the client computer running Windows 10. Make your WDAC policies friendly and allow the system to convert the policy names for you to ensure that the policies are easily distinguishable when viewed in a share or any other central repository.

7.  Close the Group Policy Management Editor, and then restart the Windows 10 test computer. Restarting the computer updates the WDAC policy. For information about how to audit WDAC policies, see the [Audit Windows Defender Application Control policies](#audit-windows-defender-application-control-policies) section.

## Related topics

[Introduction to Windows Defender Device Guard: virtualization-based security and Windows Defender Application Control](introduction-to-device-guard-virtualization-based-security-and-windows-defender-application-control.md)

[Enable virtualization-based protection of code integrity](deploy-device-guard-enable-virtualization-based-security.md)

