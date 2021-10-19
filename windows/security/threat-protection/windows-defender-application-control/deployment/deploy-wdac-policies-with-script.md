---
title: Deploy Windows Defender Application Control (WDAC) policies using script (Windows)
description: Use scripts to deploy Windows Defender Application Control (WDAC) policies. Learn how with this step-by-step guide.
keywords: security, malware
ms.prod: m365-security
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: jogeurte
ms.author: jogeurte
ms.manager: jsuther
manager: dansimp
ms.date: 09/29/2021
ms.technology: mde
ms.topic: article
ms.localizationpriority: medium
---

# Deploy WDAC policies using script

**Applies to:**

- Windows 10
- Windows 11
- Windows Server 2016 and above

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Defender App Guard feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This topic describes how to deploy Windows Defender Application Control (WDAC) policies using script. The instructions below use PowerShell but can work with any scripting host.

> [!NOTE]
> To use this procedure, download and distribute the [WDAC policy refresh tool](https://aka.ms/refreshpolicy) to all managed endpoints. Ensure your WDAC policies allow the WDAC policy refresh tool or use a managed installer to distribute the tool.

## Script-based deployment process for Windows 10 version 1903 and above

1. Initialize the variables to be used by the script.

    ```powershell
    # Policy binary files should be named as {GUID}.cip for multiple policy format files (where {GUID} = <PolicyId> from the Policy XML)
    $PolicyBinary = "<Path to policy binary file to deploy>"
    $DestinationFolder = $env:windir+"\System32\CodeIntegrity\CIPolicies\Active\"
    $RefreshPolicyTool = "<Path where RefreshPolicy.exe can be found from managed endpoints>"
    ```

2. Copy WDAC policy binary to the destination folder.

   ```powershell
   Copy-Item -Path $PolicyBinary -Destination $DestinationFolder -Force
   ```

3. Repeat steps 1-2 as appropriate to deploy additional WDAC policies.
4. The binary policy file must also be copied to the device's EFI partition:

   ```powershell
   $MountPoint = 'C:\EFI'
   $EFIDestinationFolder = "$MountPoint\Microsoft\Boot\CiPolicies\Active"
   $EFIPartition = (Get-Partition | Where-Object IsSystem).AccessPaths[0]
   mkdir $EFIDestinationFolder
   mountvol $MountPoint $EFIPartition
   Copy-Item -Path $PolicyBinary -Destination $EFIDestinationFolder -Force
   mountvol $MountPoint /d
   ```
   
5. Run RefreshPolicy.exe to activate and refresh all WDAC policies on the managed endpoint.

   ```powershell
   & $RefreshPolicyTool
   ```

6. Restart the system.

> [!NOTE]
> Deploying your policy via [MEM](/windows/security/threat-protection/windows-defender-application-control/deploy-windows-defender-application-control-policies-using-intune) or the Application Control CSP will handle step 4 automatically. 

## Script-based deployment process for Windows 10 versions earlier than 1903

1. Initialize the variables to be used by the script.

    ```powershell
    # Policy binary files should be named as SiPolicy.p7b for Windows 10 versions earlier than 1903
    $PolicyBinary = "<Path to policy binary file to deploy>"
    $DestinationBinary = $env:windir+"\System32\CodeIntegrity\SiPolicy.p7b"
    ```

2. Copy WDAC policy binary to the destination.

   ```powershell
   Copy-Item  -Path $PolicyBinary -Destination $DestinationBinary -Force
   ```

3. Refresh and activate WDAC policy using WMI

   ```powershell
   Invoke-CimMethod -Namespace root\Microsoft\Windows\CI -ClassName PS_UpdateAndCompareCIPolicy -MethodName Update -Arguments @{FilePath = $DestinationBinary}
   ```
