---
title: Create a WDAC policy for fixed-workload devices using a reference computer (Windows 10)
description: To create a Windows Defender Application Control (WDAC) policy for fixed-workload devices within your organization, follow this guide.
keywords: whitelisting, security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: isbrahm
ms.author: dansimp
manager: dansimp
ms.date: 05/03/2018
---

# Create a WDAC policy for fixed-workload devices using a reference computer

**Applies to:**

-   Windows 10
-   Windows Server 2016 and above

This section outlines the process to create a WDAC policy for fixed-workload devices within an organization. Fixed-workload devices tend to be dedicated to a specific functional purpose and share common configuration attributes with other devices servicing the same functional role. Examples of fixed-workload devices may include Active Directory Domain Controllers, Secure Admin Workstations, pharmaceutical drug-mixing equipment, manufacturing devices, cash registers, ATMs, etc...

For this example, you must initiate variables to be used during the creation process or use the full file paths in the command. 
Then create the WDAC policy by scanning the system for installed applications. 
The policy file is converted to binary format when it gets created so that Windows can interpret it.

## Overview of the process of creating Windows Defender Application Control policies

A common system imaging practice in today’s IT organization is to establish a “golden” image as a reference for what an ideal system should look like, and then use that image to clone additional company assets. WDAC policies follow a similar methodology, that begins with the establishment of a golden computer. As with imaging, you can have multiple golden computers based on model, department, application set, and so on. Although the thought process around the creation of WDAC policies is similar to imaging, these policies should be maintained independently. Assess the necessity of additional WDAC policies based on what should be allowed to be installed and run and for whom. For more details on doing this assessment, see the [WDAC Design Guide](windows-defender-application-control-design-guide.md).

Optionally, WDAC can align with your software catalog as well as any IT department–approved applications. One straightforward method to implement WDAC is to use existing images to create one master WDAC policy. You do so by creating a WDAC policy from each image, and then by merging the policies. This way, what is installed on all of those images will be allowed to run, if the applications are installed on a computer based on a different image. Alternatively, you may choose to create a base applications policy and add policies based on the computer’s role or department. Organizations have a choice of how their policies are created, merged or serviced, and managed.

If you plan to use an internal CA to sign catalog files or WDAC policies, see the steps in [Optional: Create a code signing certificate for Windows Defender Application Control](create-code-signing-cert-for-windows-defender-application-control.md). 

> [!NOTE]
> Make sure the reference computer is virus and malware-free, and install any software you want to be scanned before creating the WDAC policy. 

Each installed software application should be validated as trustworthy before you create a policy. 
We recommend that you review the reference computer for software that can load arbitrary DLLs and run code or scripts that could render the PC more vulnerable. 
Examples include software aimed at development or scripting such as msbuild.exe (part of Visual Studio and the .NET Framework) which can be removed if you do not want to run scripts. 
You can remove or disable such software on the reference computer. 



To create a WDAC policy, copy each of the following commands into an elevated Windows PowerShell session, in order:

1. Initialize variables that you will use.

   ```powershell
   $PolicyPath=$env:userprofile+"\Desktop\"
   $PolicyName="FixedWorkloadPolicy_Audit"
   $WDACPolicy=$PolicyPath+$PolicyName+".xml"
   $WDACPolicyBin=$PolicyPath+$PolicyName+".bin"

2. Use [New-CIPolicy](https://docs.microsoft.com/powershell/module/configci/new-cipolicy) to create a new WDAC policy by scanning the system for installed applications:

   ```powershell
   New-CIPolicy -Level PcaCertificate -FilePath $WDACPolicy –UserPEs 3> CIPolicyLog.txt 
   ```

   > [!Note]
   > 
   > - When you specify the **-UserPEs** parameter (to include user mode executables in the scan), rule option **0 Enabled:UMCI** is automatically added to the WDAC policy. In contrast, if you do not specify **-UserPEs**, the policy will be empty of user mode executables and will only have rules for kernel mode binaries like drivers, in other words, the whitelist will not include applications. If you create such a policy and later add rule option **0 Enabled:UMCI**, all attempts to start applications will cause a response from Windows Defender Application Control. In audit mode, the response is logging an event, and in enforced mode, the response is blocking the application. 
   > - You can add the **-MultiplePolicyFormat** parameter when creating policies which will be deployed to computers which are running Windows build 1903+. For more information about multiple policies, see [Deploy multiple Windows Defender Application Control policies](deploy-multiple-windows-defender-application-control-policies.md).
   > - You can add the **-Fallback** parameter to catch any applications not discovered using the primary file rule level specified by the **-Level** parameter. For more information about file rule level options, see [Windows Defender Application Control file rule levels](select-types-of-rules-to-create.md).
   > 
   > - To specify that the WDAC policy scan only a specific drive, include the **-ScanPath** parameter followed by a path. Without this parameter, the entire system is scanned.
   > 
   > - The preceding example includes `3> CIPolicylog.txt`, which redirects warning messages to a text file, **CIPolicylog.txt**.

3. Use [ConvertFrom-CIPolicy](https://docs.microsoft.com/powershell/module/configci/convertfrom-cipolicy) to convert the WDAC policy to a binary format:

   ```powershell
   ConvertFrom-CIPolicy $WDACPolicy $WDACPolicyBin
   ```

After you complete these steps, the WDAC binary file ($WDACPolicyBin) and original .xml file ($WDACPolicy) will be available on your desktop. You can use the binary file as a WDAC policy or sign it for additional security.

> [!NOTE]
> We recommend that you keep the original .xml file of the policy for use when you need to merge the WDAC policy with another policy or update its rule options. Alternatively, you would have to create a new policy from a new scan for servicing. For more information about how to merge WDAC policies, see [Merge Windows Defender Application Control policies](merge-windows-defender-application-control-policies.md).

We recommend that every WDAC policy be run in audit mode before being enforced. Doing so allows administrators to discover any issues with the policy without receiving error messages. For information about how to audit a WDAC policy, see [Audit Windows Defender Application Control policies](audit-windows-defender-application-control-policies.md).


