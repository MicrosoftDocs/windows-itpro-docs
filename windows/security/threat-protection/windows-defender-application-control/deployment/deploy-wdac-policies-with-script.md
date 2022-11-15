---
title: Deploy Windows Defender Application Control (WDAC) policies using script (Windows)
description: Use scripts to deploy Windows Defender Application Control (WDAC) policies. Learn how with this step-by-step guide.
keywords: security, malware
ms.prod: windows-client
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: aaroncz
ms.author: jogeurte
ms.manager: jsuther
manager: aaroncz
ms.date: 10/06/2022
ms.technology: itpro-security
ms.topic: article
ms.localizationpriority: medium
---

# Deploy WDAC policies using script

**Applies to:**

- Windows 10
- Windows 11
- Windows Server 2016 and above

>[!NOTE]
>Some capabilities of Windows Defender Application Control (WDAC) are only available on specific Windows versions. Learn more about the [Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This article describes how to deploy Windows Defender Application Control (WDAC) policies using script. The instructions below use PowerShell but can work with any scripting host.

> [!NOTE]
> To use this procedure, download and distribute the [WDAC policy refresh tool](https://aka.ms/refreshpolicy) to all managed endpoints. Ensure your WDAC policies allow the WDAC policy refresh tool or use a managed installer to distribute the tool.

## Deploying policies for Windows 10 version 1903 and above

You should now have one or more WDAC policies converted into binary form. If not, follow the steps described in [Deploying Windows Defender Application Control (WDAC) policies](/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control-deployment-guide).

1. Initialize the variables to be used by the script.

    ```powershell
    # Policy binary files should be named as {GUID}.cip for multiple policy format files (where {GUID} = <PolicyId> from the Policy XML)
    $PolicyBinary = "<Path to policy binary file to deploy>"
    $DestinationFolder = $env:windir+"\System32\CodeIntegrity\CIPolicies\Active\"
    $RefreshPolicyTool = "<Path where RefreshPolicy.exe can be found from managed endpoints>"
    ```

2. Copy Windows Defender Application Control (WDAC) policy binary to the destination folder.

   ```powershell
   Copy-Item -Path $PolicyBinary -Destination $DestinationFolder -Force
   ```

3. Repeat steps 1-2 as appropriate to deploy more WDAC policies.
4. Run RefreshPolicy.exe to activate and refresh all WDAC policies on the managed endpoint.

   ```powershell
   & $RefreshPolicyTool
   ```

## Deploying policies for Windows 10 versions earlier than 1903

1. Initialize the variables to be used by the script.

    ```powershell
    # Policy binary files should be named as SiPolicy.p7b for Windows 10 versions earlier than 1903
    $PolicyBinary = "<Path to policy binary file to deploy>"
    $DestinationBinary = $env:windir+"\System32\CodeIntegrity\SiPolicy.p7b"
    ```

2. Copy Windows Defender Application Control (WDAC) policy binary to the destination.

   ```powershell
   Copy-Item  -Path $PolicyBinary -Destination $DestinationBinary -Force
   ```

3. Refresh and activate WDAC policy using WMI

   ```powershell
   Invoke-CimMethod -Namespace root\Microsoft\Windows\CI -ClassName PS_UpdateAndCompareCIPolicy -MethodName Update -Arguments @{FilePath = $DestinationBinary}
   ```

## Deploying signed policies

If you are using [signed WDAC policies](/windows/security/threat-protection/windows-defender-application-control/use-signed-policies-to-protect-windows-defender-application-control-against-tampering), the policies must be deployed into your device's EFI partition in addition to the steps outlined above. Unsigned WDAC policies do not need to be present in the EFI partition. Deploying your policy via [Microsoft Intune](/windows/security/threat-protection/windows-defender-application-control/deploy-windows-defender-application-control-policies-using-intune) or the Application Control CSP will handle this step automatically. 

1. Mount the EFI volume and make the directory, if it doesn't exist, in an elevated PowerShell prompt: 

    ```powershell
   $MountPoint = 'C:\EFIMount'
   $EFIDestinationFolder = "$MountPoint\EFI\Microsoft\Boot\CiPolicies\Active"
   $EFIPartition = (Get-Partition | Where-Object IsSystem).AccessPaths[0]
   if (-Not (Test-Path $MountPoint)) { New-Item -Path $MountPoint -Type Directory -Force }
   mountvol $MountPoint $EFIPartition
   if (-Not (Test-Path $EFIDestinationFolder)) { New-Item -Path $EFIDestinationFolder -Type Directory -Force }
    ```

2. Copy the signed policy to the created folder:

    ```powershell
   Copy-Item -Path $PolicyBinary -Destination $EFIDestinationFolder -Force
    ```

3. Restart the system.
