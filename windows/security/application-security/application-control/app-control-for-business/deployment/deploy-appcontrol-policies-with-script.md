---
title: Deploy App Control for Business policies using script
description: Use scripts to deploy App Control for Business policies. Learn how with this step-by-step guide.
ms.manager: jsuther
ms.date: 09/11/2024
ms.topic: how-to
ms.localizationpriority: medium
---

# Deploy App Control policies using script

[!INCLUDE [Feature availability note](../includes/feature-availability-note.md)]

This article describes how to deploy App Control for Business policies using script. The following instructions use PowerShell but can work with any scripting host.

You should now have one or more App Control policies converted into binary form. If not, follow the steps described in [Deploying App Control for Business policies](appcontrol-deployment-guide.md).

> [!IMPORTANT]
> Due to a known issue in Windows 11 updates earlier than 2024 (24H2), you should always activate new **signed** App Control Base policies with a reboot on systems with [**memory integrity**](../../../../hardware-security/enable-virtualization-based-protection-of-code-integrity.md) enabled. Skip all steps below that use CiTool, RefreshPolicy.exe, or WMI to initiate a policy activation. Instead, copy the policy binary to the correct system32 and EFI locations and then activate the policy with a system restart.
>
> This issue does not affect updates to signed Base policies that are already active on the system, deployment of unsigned policies, or deployment of supplemental policies (signed or unsigned). It also does not affect deployments to systems that are not running memory integrity.

## Deploying policies for Windows 11 22H2 and above, and Windows Server 2025 and above

You can use the inbox [CiTool](../operations/citool-commands.md) to deploy signed and unsigned policies on Windows 11 22H2 and Windows Server 2025 with the following commands. Be sure to replace **&lt;Path to policy binary file to deploy&gt;** in the following example with the actual path to your App Control policy binary file.

```powershell
# Policy binary files should be named as {GUID}.cip for multiple policy format files (where {GUID} = <PolicyId> from the Policy XML)
$PolicyBinary = "<Path to policy binary file to deploy>"
CiTool --update-policy $PolicyBinary [-json]
```

## Deploying policies for Windows 11, Windows 10 version 1903 and above, and Windows Server 2022 and above

To use this procedure, download and distribute the [App Control policy refresh tool](https://aka.ms/refreshpolicy) to all managed endpoints. Ensure your App Control policies allow the App Control policy refresh tool or use a managed installer to distribute the tool.

1. Initialize the variables to be used by the script.

    ```powershell
    # Policy binary files should be named as {GUID}.cip for multiple policy format files (where {GUID} = <PolicyId> from the Policy XML)
    $PolicyBinary = "<Path to policy binary file to deploy>"
    $DestinationFolder = $env:windir+"\System32\CodeIntegrity\CIPolicies\Active\"
    $RefreshPolicyTool = "<Path where RefreshPolicy.exe can be found from managed endpoints>"
    ```

2. Copy App Control for Business policy binary to the destination folder.

   ```powershell
   Copy-Item -Path $PolicyBinary -Destination $DestinationFolder -Force
   ```

3. Repeat steps 1-2 as appropriate to deploy more App Control policies.
4. Run RefreshPolicy.exe to activate and refresh all App Control policies on the managed endpoint.

   ```powershell
   & $RefreshPolicyTool
   ```

## Deploying policies for all other versions of Windows and Windows Server

Use WMI to deploy policies on all other versions of Windows and Windows Server.

1. Initialize the variables to be used by the script.

    ```powershell
    # Policy binary files should be named as SiPolicy.p7b for Windows 10 versions earlier than 1903
    $PolicyBinary = "<Path to policy binary file to deploy>"
    $DestinationBinary = $env:windir+"\System32\CodeIntegrity\SiPolicy.p7b"
    ```

2. Copy App Control for Business policy binary to the destination.

   ```powershell
   Copy-Item  -Path $PolicyBinary -Destination $DestinationBinary -Force
   ```

3. Refresh and activate App Control policy using WMI

   ```powershell
   Invoke-CimMethod -Namespace root\Microsoft\Windows\CI -ClassName PS_UpdateAndCompareCIPolicy -MethodName Update -Arguments @{FilePath = $DestinationBinary}
   ```

## Deploying signed policies

If you're using [signed App Control policies](use-signed-policies-to-protect-appcontrol-against-tampering.md), the policies must be deployed into your device's EFI partition in addition to the locations outlined in the earlier sections. Unsigned App Control policies don't need to be present in the EFI partition.

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
