---
title: Remove App Control for Business policies
description: Learn how to disable both signed and unsigned App Control for Business policies, within Windows and within the BIOS.
ms.localizationpriority: medium
ms.date: 09/11/2024
ms.topic: how-to
---

# Remove App Control for Business policies

[!INCLUDE [Feature availability note](../includes/feature-availability-note.md)]

## Removing App Control policies

There may come a time when you want to remove one or more App Control policies, or remove all App Control policies you've deployed. This article describes the various ways to remove App Control policies.

> [!IMPORTANT]
> **Signed Base App Control policy**
>
> If the base policy you are trying to remove is a signed App Control policy, you must first deploy a signed replacement policy that includes option **6 Enabled:Unsigned System Integrity Policy**.
>
> The replacement policy must have the same PolicyId as the one it's replacing and a version that's equal to or greater than the existing policy. The replacement policy must also include \<UpdatePolicySigners\>.
>
> To take effect, this policy must be signed with a certificate included in the \<UpdatePolicySigners\> section of the original policy you want to replace.
>
> You must then restart the computer so that the UEFI protection of the policy is deactivated. ***Failing to do so will result in a boot start failure.***
>
> Signed supplemental App Control policies can be removed in the same manner as unsigned policies, without the need to follow the aforementioned steps

Before removing any policy, you must first disable the method used to deploy it (such as Group Policy or MDM). Otherwise, the policy may redeploy to the computer.

To make a policy effectively inactive before removing it, you can first replace the policy with a new one that includes the following changes:

1. Replace the policy rules with "Allow *" rules;
2. Set option **3 Enabled:Audit Mode** to change the policy to audit mode only;
3. Set option **11 Disabled:Script Enforcement**;
4. Allow all COM objects. See [Allow COM object registration in an App Control policy](../design/allow-com-object-registration-in-appcontrol-policy.md#examples);
5. If applicable, remove option **0 Enabled:UMCI** to convert the policy to kernel mode only.

### Remove App Control policies using CiTool.exe

Beginning with the Windows 11 2022 Update, you can remove App Control policies using CiTool.exe. From an elevated command window, run the following command. Be sure to replace the text *PolicyId GUID* with the actual PolicyId of the App Control policy you want to remove:

```powershell
CiTool.exe -rp "{PolicyId GUID}" -json
```

> [!NOTE]
> Beginning with the Windows 11 2024 update, unsigned policies can be removed using CiTool.exe without requiring a restart. In previous versions of Windows, however, a restart is required to complete the removal process.

### Remove App Control policies using MDM solutions like Intune

You can use a Mobile Device Management (MDM) solution, like Microsoft Intune, to remove App Control policies from client machines using the [ApplicationControl CSP](/windows/client-management/mdm/applicationcontrol-csp).

Consult your MDM solution provider for specific information on using the ApplicationControl CSP.

Then restart the computer.

### Remove App Control policies using script

To remove App Control policies using script, your script must delete the policy file(s) from the computer. For **multiple policy format (1903+) App Control policies**, look for the policy files in the following locations. Be sure to replace the *PolicyId GUID* with the actual PolicyId of the App Control policy you want to remove.

- &lt;EFI System Partition&gt;\\Microsoft\\Boot\\CiPolicies\Active\\*\{PolicyId GUID\}*.cip
- &lt;OS Volume&gt;\\Windows\\System32\\CodeIntegrity\\CiPolicies\Active\\*\{PolicyId GUID\}*.cip

For **single policy format App Control policies**, in addition to the two locations above, also look for a file called SiPolicy.p7b that may be found in the following locations:

- &lt;EFI System Partition&gt;\\Microsoft\\Boot\\SiPolicy.p7b
- &lt;OS Volume&gt;\\Windows\\System32\\CodeIntegrity\\SiPolicy.p7b

Then restart the computer.

#### Sample script to delete a single App Control policy

```powershell
# Set PolicyId GUID to the PolicyId from your App Control policy XML
$PolicyId = "{PolicyId GUID}"

# Initialize variables
$SinglePolicyFormatPolicyId = "{A244370E-44C9-4C06-B551-F6016E563076}"
$SinglePolicyFormatFileName = "\SiPolicy.p7b"
$MountPoint =  $env:SystemDrive+"\EFIMount"
$SystemCodeIntegrityFolderRoot = $env:windir+"\System32\CodeIntegrity"
$EFICodeIntegrityFolderRoot = $MountPoint+"\EFI\Microsoft\Boot"
$MultiplePolicyFilePath = "\CiPolicies\Active\"+$PolicyId+".cip"

# Mount the EFI partition
$EFIPartition = (Get-Partition | Where-Object IsSystem).AccessPaths[0]
if (-Not (Test-Path $MountPoint)) { New-Item -Path $MountPoint -Type Directory -Force }
mountvol $MountPoint $EFIPartition

# Check if the PolicyId to be removed is the system reserved GUID for single policy format.
# If so, the policy may exist as both SiPolicy.p7b in the policy path root as well as
# {GUID}.cip in the CiPolicies\Active subdirectory
if ($PolicyId -eq $SinglePolicyFormatPolicyId) {$NumFilesToDelete = 4} else {$NumFilesToDelete = 2}

$Count = 1
while ($Count -le $NumFilesToDelete)
{

    # Set the $PolicyPath to the file to be deleted, if exists
    Switch ($Count)
    {
        1 {$PolicyPath = $SystemCodeIntegrityFolderRoot+$MultiplePolicyFilePath}
        2 {$PolicyPath = $EFICodeIntegrityFolderRoot+$MultiplePolicyFilePath}
        3 {$PolicyPath = $SystemCodeIntegrityFolderRoot+$SinglePolicyFormatFileName}
        4 {$PolicyPath = $EFICodeIntegrityFolderRoot+$SinglePolicyFormatFileName}
    }

    # Delete the policy file from the current $PolicyPath
    Write-Host "Attempting to remove $PolicyPath..." -ForegroundColor Cyan
    if (Test-Path $PolicyPath) {Remove-Item -Path $PolicyPath -Force -ErrorAction Continue}

    $Count = $Count + 1
}

# Dismount the EFI partition
mountvol $MountPoint /D
```

> [!NOTE]
> You must run the script as administrator to remove App Control policies on your computer.

## Remove App Control policies causing boot stop failures

An App Control policy that blocks boot critical drivers can cause a boot stop failure (BSOD) to occur, though this can be mitigated by setting option **10 Enabled:Boot Audit On Failure** in your policies. Additionally, signed App Control policies protect the policy from administrative manipulation and malware that has gained administrative-level access to the system. For this reason, signed App Control policies are intentionally more difficult to remove than unsigned policies even for administrators. Tampering with or removing a signed App Control policy will cause a BSOD to occur.

To remove a policy that is causing boot stop failures:

1. If the policy is a **signed** App Control policy, turn off Secure Boot from your [UEFI BIOS menu](/windows-hardware/manufacture/desktop/boot-to-uefi-mode-or-legacy-bios-mode). For help with locating where to turn off Secure Boot within your BIOS menu, consult with your original equipment manufacturer (OEM).
2. Access the Advanced Boot Options menu on your computer and choose the option to **Disable Driver Signature Enforcement**. For instructions on accessing the Advanced Boot Options menu during startup, consult with your OEM. This option will suspend all code integrity checks, including App Control, for a single boot session.
3. Start Windows normally and sign in. Then, [remove App Control policies using script](#remove-app-control-policies-using-script).
4. If you turned off Secure Boot in step 1 above and your drive is protected by BitLocker, [suspend BitLocker protection](/troubleshoot/windows-client/windows-security/suspend-bitlocker-protection-non-microsoft-updates) then turn on Secure Boot from your UEFI BIOS menu.
5. Restart the computer.

> [!NOTE]
> If your drive is protected by Bitlocker, you may need your Bitlocker recovery keys to perform steps 1-2 above.
