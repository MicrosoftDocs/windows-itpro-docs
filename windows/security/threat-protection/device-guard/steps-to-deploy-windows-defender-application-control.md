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


## Related topics

[Windows Defender Application Control](windows-defender-application-control.md)


