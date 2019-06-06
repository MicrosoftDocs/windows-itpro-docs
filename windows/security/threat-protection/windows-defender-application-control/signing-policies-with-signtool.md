---
title: Signing Windows Defender Application Control policies with SignTool.exe  (Windows 10)
description: SSigned WDAC policies give organizations the highest level of malware protection available in Windows 10. 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.date: 02/21/2018
ms.reviewer: 
manager: dansimp
ms.author: dansimp
---

# Signing Windows Defender Application Control policies with SignTool.exe 

**Applies to:**

-   Windows 10
-   Windows Server 2016

Signed WDAC policies give organizations the highest level of malware protection available in Windows 10. 
In addition to their enforced policy rules, signed policies cannot be modified or deleted by a user or administrator on the computer. 
These policies are designed to prevent administrative tampering and kernel mode exploit access. 
With this in mind, it is much more difficult to remove signed WDAC policies. 
Before you sign and deploy a signed WDAC policy, we recommend that you [audit the policy](audit-windows-defender-application-control-policies.md) to discover any blocked applications that should be allowed to run. 

Signing WDAC policies by using an on-premises CA-generated certificate or a purchased code signing certificate is straightforward. 
If you do not currently have a code signing certificate exported in .pfx format (containing private keys, extensions, and root certificates), see [Optional: Create a code signing certificate for Windows Defender Application Control](create-code-signing-cert-for-windows-defender-application-control.md) to create one with your on-premises CA. 

Before signing WDAC policies for the first time, be sure to enable rule options 9 (“Advanced Boot Options Menu”) and 10 (“Boot Audit on Failure”) to leave troubleshooting options available to administrators. To ensure that a rule option is enabled, you can run a command such as `Set-RuleOption -FilePath <PathAndFilename> -Option 9` even if you're not sure whether the option is already enabled—if so, the command has no effect. When validated and ready for enterprise deployment, you can remove these options. For more information about rule options, see [Windows Defender Application Control policy rules](select-types-of-rules-to-create.md).

To sign a WDAC policy with SignTool.exe, you need the following components:

-   SignTool.exe, found in the Windows SDK (Windows 7 or later)

-   The binary format of the WDAC policy that you generated in the [Create a Windows Defender Application Control policy from a reference computer](create-initial-default-policy.md) section or another WDAC policy that you have created

-   An internal CA code signing certificate or a purchased code signing certificate

If you do not have a code signing certificate, see the [Optional: Create a code signing certificate for Windows Defender Application Control](create-code-signing-cert-for-windows-defender-application-control.md) section for instructions on how to create one. If you use an alternate certificate or WDAC policy, be sure to update the following steps with the appropriate variables and certificate so that the commands will function properly. To sign the existing WDAC policy, copy each of the following commands into an elevated Windows PowerShell session:

1. Initialize the variables that will be used:

   ` $CIPolicyPath=$env:userprofile+"\Desktop\"`
    
   ` $InitialCIPolicy=$CIPolicyPath+"InitialScan.xml"`
    
   ` $CIPolicyBin=$CIPolicyPath+"DeviceGuardPolicy.bin"`

   > [!Note] 
   > This example uses the WDAC policy that you created in [Create a Windows Defender Application Control policy from a reference computer](create-initial-default-policy.md). If you are signing another policy, be sure to update the **$CIPolicyPath** and **$CIPolicyBin** variables with the correct information.

2. Import the .pfx code signing certificate. Import the code signing certificate that you will use to sign the WDAC policy into the signing user’s personal store on the computer that will be doing the signing. In this example, you use the certificate that was created in [Optional: Create a code signing certificate for Windows Defender Application Control](create-code-signing-cert-for-windows-defender-application-control.md).

3. Export the .cer code signing certificate. After the code signing certificate has been imported, export the .cer version to your desktop. This version will be added to the policy so that it can be updated later.

4. Navigate to your desktop as the working directory:

   ` cd $env:USERPROFILE\Desktop `

5. Use [Add-SignerRule](https://docs.microsoft.com/powershell/module/configci/add-signerrule) to add an update signer certificate to the WDAC policy:

   ` Add-SignerRule -FilePath $InitialCIPolicy -CertificatePath <Path to exported .cer certificate> -Kernel -User –Update`

   > [!Note] 
   > <Path to exported .cer certificate> should be the full path to the certificate that you exported in   step 3.
   Also, adding update signers is crucial to being able to modify or disable this policy in the future. 

6. Use [Set-RuleOption](https://docs.microsoft.com/powershell/module/configci/set-ruleoption) to remove the unsigned policy rule option:

   ` Set-RuleOption -FilePath $InitialCIPolicy -Option 6 -Delete`

7. Use [ConvertFrom-CIPolicy](https://docs.microsoft.com/powershell/module/configci/convertfrom-cipolicy) to convert the policy to binary format:

   ` ConvertFrom-CIPolicy $InitialCIPolicy $CIPolicyBin`

8. Sign the WDAC policy by using SignTool.exe:

   ` <Path to signtool.exe> sign -v /n "ContosoDGSigningCert" -p7 . -p7co 1.3.6.1.4.1.311.79.1 -fd sha256 $CIPolicyBin`

   > [!Note] 
   > The *&lt;Path to signtool.exe&gt;* variable should be the full path to the SignTool.exe utility. **ContosoDGSigningCert** is the subject name of the certificate that will be used to sign the WDAC policy. You should import this certificate to your personal certificate store on the computer you use to sign the policy.

9. Validate the signed file. When complete, the commands should output a signed policy file called DeviceGuardPolicy.bin.p7 to your desktop. You can deploy this file the same way you deploy an enforced or non-enforced policy. For information about how to deploy WDAC policies, see [Deploy and manage Windows Defender Application Control with Group Policy](deploy-windows-defender-application-control-policies-using-group-policy.md).

