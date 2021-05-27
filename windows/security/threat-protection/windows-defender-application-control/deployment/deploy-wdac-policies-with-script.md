---
title: Deploy Windows Defender Application Control (WDAC) policies using script (Windows 10)
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
ms.date: 04/14/2021
ms.technology: mde
ms.topic: article
ms.localizationpriority: medium
---

# Deploy WDAC policies using script

**Applies to:**

- Windows 10
- Windows Server 2016 and above

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
4. Run RefreshPolicy.exe to activate and refresh all WDAC policies on the managed endpoint.

   ```powershell
   & $RefreshPolicyTool
   ```

### Deploying signed policies

In addition to the steps outlined above, the binary policy file must also be copied to the device's EFI partition. Deploying your policy via [MEM](/windows/security/threat-protection/windows-defender-application-control/deploy-windows-defender-application-control-policies-using-intune.md) or the [Application Control CSP](#Deploying-multiple-policies-via-ApplicationControl-CSP) will handle this step automatically. 

1. Mount the EFI volume and make the directory, if it does not exist, in an elevated PowerShell prompt: 
```powershell
mountvol J: /S
J:
mkdir J:\EFI\Microsoft\Boot\CiPolicies\Active
```

2. Copy the signed policy binary as `{PolicyGUID}.cip` to J:\EFI\Microsoft\Boot\CiPolicies\Active
3. Reboot the system.

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
