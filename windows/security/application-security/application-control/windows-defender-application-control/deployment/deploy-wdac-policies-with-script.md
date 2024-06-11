---
title: Deploy Windows Defender Application Control (WDAC) policies using script
description: Use scripts to deploy Windows Defender Application Control (WDAC) policies. Learn how with this step-by-step guide.
ms.manager: jsuther
ms.date: 01/23/2023
ms.topic: how-to
ms.localizationpriority: medium
---

# Deploy WDAC policies using script

>[!NOTE]
>Some capabilities of Windows Defender Application Control (WDAC) are only available on specific Windows versions. Learn more about the [Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This article describes how to deploy Windows Defender Application Control (WDAC) policies using script. The following instructions use PowerShell but can work with any scripting host.

You should now have one or more WDAC policies converted into binary form. If not, follow the steps described in [Deploying Windows Defender Application Control (WDAC) policies](/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control-deployment-guide).

> [!IMPORTANT]
> Due to a known issue, you should always activate new **signed** WDAC Base policies with a reboot on systems with [**memory integrity**](../../../../hardware-security/enable-virtualization-based-protection-of-code-integrity.md) enabled. Skip all steps below that use CiTool, RefreshPolicy.exe, or WMI to initiate a policy activation. Instead, copy the policy binary to the correct system32 and EFI locations and then activate the policy with a system restart.
>
> This issue does not affect updates to signed Base policies that are already active on the system, deployment of unsigned policies, or deployment of supplemental policies (signed or unsigned). It also does not affect deployments to systems that are not running memory integrity.

## Deploying policies for Windows 11 22H2 and above

You can use the inbox [CiTool](/windows/security/threat-protection/windows-defender-application-control/operations/citool-commands) to apply policies on Windows 11 22H2 with the following commands. Be sure to replace **&lt;Path to policy binary file to deploy&gt;** in the following example with the actual path to your WDAC policy binary file.

```powershell
# Policy binary files should be named as {GUID}.cip for multiple policy format files (where {GUID} = <PolicyId> from the Policy XML)
$PolicyBinary = "<Path to policy binary file to deploy>"
CiTool --update-policy $PolicyBinary [-json]
```

## Deploying policies for Windows 11, Windows 10 version 1903 and above, and Windows Server 2022 and above

To use this procedure, download and distribute the [WDAC policy refresh tool](https://aka.ms/refreshpolicy) to all managed endpoints. Ensure your WDAC policies allow the WDAC policy refresh tool or use a managed installer to distribute the tool.

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

## Deploying policies for all other versions of Windows and Windows Server

Use WMI to apply policies on all other versions of Windows and Windows Server.

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

If you're using [signed WDAC policies](/windows/security/threat-protection/windows-defender-application-control/use-signed-policies-to-protect-windows-defender-application-control-against-tampering), the policies must be deployed into your device's EFI partition in addition to the locations outlined in the earlier sections. Unsigned WDAC policies don't need to be present in the EFI partition. <!-- Deploying your policy via [Microsoft Intune](/windows/security/threat-protection/windows-defender-application-control/deploy-windows-defender-application-control-policies-using-intune) or the Application Control CSP will handle this step automatically. -->

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
