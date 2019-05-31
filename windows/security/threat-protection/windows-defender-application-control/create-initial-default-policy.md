---
title: Create an initial default policy (Windows 10)
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

# Create a Windows Defender Application Control policy from a reference computer

**Applies to:**

-   Windows 10
-   Windows Server 2016

This section outlines the process to create a WDAC policy with Windows PowerShell. 
For this example, you must initiate variables to be used during the creation process or use the full file paths in the command. 
Then create the WDAC policy by scanning the system for installed applications. 
The policy file is converted to binary format when it gets created so that Windows can interpret it.

> [!Note] 
> Make sure the reference computer is virus and malware-free, and install any software you want to be scanned before creating the WDAC policy. 

Each installed software application should be validated as trustworthy before you create a policy. 
We recommend that you review the reference computer for software that can load arbitrary DLLs and run code or scripts that could render the PC more vulnerable. 
Examples include software aimed at development or scripting such as msbuild.exe (part of Visual Studio and the .NET Framework) which can be removed if you do not want to run scripts. 
You can remove or disable such software on the reference computer. 



To create a WDAC policy, copy each of the following commands into an elevated Windows PowerShell session, in order:

1.  Initialize variables that you will use. The following example commands use **InitialScan.xml** and **DeviceGuardPolicy.bin** for the names of the files that will be created:

    ` $CIPolicyPath=$env:userprofile+"\Desktop\"`

    ` $InitialCIPolicy=$CIPolicyPath+"InitialScan.xml"`

    ` $CIPolicyBin=$CIPolicyPath+"DeviceGuardPolicy.bin"`

2.  Use [New-CIPolicy](https://docs.microsoft.com/powershell/module/configci/new-cipolicy) to create a new WDAC policy by scanning the system for installed applications:

    ```powershell
    New-CIPolicy -Level PcaCertificate -FilePath $InitialCIPolicy –UserPEs 3> CIPolicyLog.txt 
    ```

    > [!Note] 
    
    > - When you specify the **-UserPEs** parameter (to include user mode executables in the scan), rule option **0 Enabled:UMCI** is automatically added to the WDAC policy. In contrast, if you do not specify **-UserPEs**, the policy will be empty of user mode executables and will only have rules for kernel mode binaries like drivers, in other words, the whitelist will not include applications. If you create such a policy and later add rule option **0 Enabled:UMCI**, all attempts to start applications will cause a response from Windows Defender Application Control. In audit mode, the response is logging an event, and in enforced mode, the response is blocking the application. 
    
    > - You can add the **-Fallback** parameter to catch any applications not discovered using the primary file rule level specified by the **-Level** parameter. For more information about file rule level options, see [Windows Defender Application Control file rule levels](select-types-of-rules-to-create.md).

    > - To specify that the WDAC policy scan only a specific drive, include the **-ScanPath** parameter followed by a path. Without this parameter, the entire system is scanned.
    
    > - The preceding example includes `3> CIPolicylog.txt`, which redirects warning messages to a text file, **CIPolicylog.txt**.

3.  Use [ConvertFrom-CIPolicy](https://docs.microsoft.com/powershell/module/configci/convertfrom-cipolicy) to convert the WDAC policy to a binary format:

    ```powershell
    ConvertFrom-CIPolicy $InitialCIPolicy $CIPolicyBin
    ```

After you complete these steps, the WDAC binary file (DeviceGuardPolicy.bin) and original .xml file (InitialScan.xml) will be available on your desktop. You can use the binary file as a WDAC policy or sign it for additional security.

> [!Note] 
> We recommend that you keep the original .xml file of the policy for use when you need to merge the WDAC policy with another policy or update its rule options. Alternatively, you would have to create a new policy from a new scan for servicing. For more information about how to merge WDAC policies, see [Merge Windows Defender Application Control policies](merge-windows-defender-application-control-policies.md).

We recommend that every WDAC policy be run in audit mode before being enforced. Doing so allows administrators to discover any issues with the policy without receiving error messages. For information about how to audit a WDAC policy, see [Audit Windows Defender Application Control policies](audit-windows-defender-application-control-policies.md).


