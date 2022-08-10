---
title: Create a WDAC policy for Smart app Control
description: To create a Windows Defender Application Control (WDAC) policy to enforce Smart app Control within your organization, follow this guide.
ms.date: 08/08/2022
ms.technology: windows
ms.topic: article
ms.prod: w10
ms.localizationpriority: medium
author: vinaypamnani-msft
ms.author: vinpa
manager: aaroncz
ms.reviewer: jogeurte
ms.collection: highpri
---

# Create a WDAC policy for Smart App Control

**Applies to:**

- Windows 11, version 22H2 or later.

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](feature-availability.md).

Smart App Control adds significant protection from malware, including new and emerging threats, by blocking apps that are malicious or untrusted. To learn more, see [What is Smart App Control](https://support.microsoft.com/topic/what-is-smart-app-control-285ea03d-fa88-4d56-882e-6698afdb7003). This section outlines the process to create a Windows Defender Application Control (WDAC) policy for Smart App Control within an organization.

As described in [common Windows Defender Application Control deployment scenarios](types-of-devices.md#an-introduction-to-lamna-healthcare-company), we'll use the example of **Lamna Healthcare Company (Lamna)** to illustrate this scenario. Lamna is attempting to adopt stronger application policies, including the use of Smart App Control to prevent unwanted or unauthorized applications from running on their managed devices.

**Alice Pena** is the IT team lead tasked with the rollout of WDAC.

## Create a custom policy using an example WDAC policy

Alice previously created a policy for the organization's fully managed end-user devices. She now wants to use WDAC to implement Smart App Control. Alice follows these steps to create an Audit policy:

1. On a client device, run the following commands in an elevated Windows PowerShell session to initialize variables:

    ```powershell
    $PolicyPath = $env:userprofile+"\Desktop\"
    $PolicyName= "Lamna_SmartAppControl_Audit"
    $LamnaPolicy=Join-Path $PolicyPath "$PolicyName.xml"
    $ExamplePolicy=$env:windir+"\schemas\CodeIntegrity\ExamplePolicies\SmartAppControl.xml"
    ```

1. Copy the example policy to the desktop:

    ```powershell
    cp $ExamplePolicy $LamnaPolicy
    ```

1. Give the new policy a unique ID, descriptive name, and initial version number:

    ```powershell
    Set-CIPolicyIdInfo -FilePath $LamnaPolicy -PolicyName $PolicyName -ResetPolicyID
    Set-CIPolicyVersion -FilePath $LamnaPolicy -Version "1.0.0.0"
    ```

1. Modify the copied policy to set the Audit Mode rule:

    ```powershell
    Set-RuleOption -FilePath $LamnaPolicy -Option 3 # Audit Mode
    ```

1. If appropriate, add more signer or file rules to further customize the policy for your organization, or use [Merge-CIPolicy](/powershell/module/configci/merge-cipolicy) to merge this policy with your existing WDAC policy.

1. Use [ConvertFrom-CIPolicy](/powershell/module/configci/convertfrom-cipolicy) to convert the Windows Defender Application Control policy to a binary format:

    ```powershell
    [xml]$policyXML = Get-Content $LamnaPolicy
    $WDACPolicyBin = Join-Path $PolicyPath "$($PolicyName)_$($policyXML.SiPolicy.PolicyID).cip"
    ConvertFrom-CIPolicy $LamnaPolicy $WDACPolicyBin
    ```

1. Upload your base policy XML and the associated binary to a source control solution such as [GitHub](https://github.com/) or a document management solution such as [Office 365 SharePoint](https://products.office.com/sharepoint/collaboration).

At this point, Alice now has a policy that is ready to deploy in audit mode to the managed clients within Lamna.

## Turn off Smart App Control

Smart App Control is only available on clean installation of Windows 11 version 22H2 or later, and starts in evaluation mode. For managed devices, Windows automatically turns off Smart App Control but if you want to enforce this behavior, you can set the **VerifiedAndReputablePolicyState** (DWORD) registry value under `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\CI\Policy` to 0, then either restart the device or run [RefreshPolicy.exe](https://www.microsoft.com/download/details.aspx?id=102925). Once you turn Smart App Control off, it can't be turned on without resetting or reinstalling Windows.

| Value | Description |
|-------|-------------|
| 0     | Off         |
| 1     | Enforce     |
| 2     | Evaluation  |

```powershell
Set-ItemProperty `
    -Path "HKLM:\SYSTEM\CurrentControlSet\Control\CI\Policy" `
    -Name VerifiedAndReputablePolicyState `
    -Value 0 `
    -Type DWORD -Force
```

> [!IMPORTANT]
> You may choose to turn off Smart App Control feature using the registry or [Windows Security](https://support.microsoft.com/windows/device-protection-in-windows-security-afa11526-de57-b1c5-599f-3a4c6a61c5e2) and deploy a Smart App Control WDAC Policy that provides more granular control over the rules, but WDAC Policy does not allow modifying some settings. These settings can be identified in SmartAppControl.xml by searching for `WindowsLockdownPolicySettings`.

## More information

- [Merge Windows Defender Application Control policies](merge-windows-defender-application-control-policies.md)
- [Prepare to deploy Windows Defender Application Control policies](windows-defender-application-control-deployment-guide.md)
