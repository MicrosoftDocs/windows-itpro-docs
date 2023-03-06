---
title: Sign and deploy policies for applications
description: Learn how to sign and deploy the policies for applications.
ms.date: 03/03/2023
ms.topic: tutorial
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11 SE, version 22H2 and later</a>
---

# Deploy policies for applications

This tutorial shows you how to deploy policies for applications.

## Sign and deploy WDAC supplemental policies

### Sign WDAC policies

Follow the instructions below when you want to sign and deploy your WDAC supplemental policy.

- Create a supplemental policy with the instructions found above
- Sign the policy
- Deploy the signed policy file via Intune

### Deploy WDAC policies

Policies can be deployed via Intune using a custom OMA-URI.

> [!TIP]
> To prevent these policies from being applied to non-Windows SE devices, you can create and target a group with only Windows 11 SE devices in it, or use assignment filters.

[Deploy WDAC policies using Mobile Device Management][WIN-4]

### Troubleshoot WDAC policies

For information how to troubleshoot WDAC supplemental policies, see [WDAC supplemental policy validation](./troubleshoot.md#wdac-supplemental-policy-validation)


### Deploy AppLocker policies

Intune doesn't currently offer the option to modify AppLocker policies. The deployment of AppLocker policies can be done using PowerShell scripts deployed via Intune.

You can create a PowerShell script that stores the contents of the policy in a variable, then use the Set-AppLockerPolicy command to merge it in. Here's a sample function that does that:

```PowerShell
function MergeAppLockerPolicy([string]$policyXml)
{
  $policyFile = '.\AppLockerPolicy.xml'
  $policyXml | Out-File $policyFile
  Write-Host "Merging and setting AppLocker policy"
  Set-AppLockerPolicy -XmlPolicy $policyFile -Merge -ErrorAction SilentlyContinue
  Remove-Item $policyFile
}
```

> **Warning**
>
> Intune deploys a script with the AppLocker policy to set Intune Management Extension as a managed installer on all Windows 11 SE devices enrolled into an Intune EDU tenant. If an EDU customer wishes to deploy their own AppLocker policy to set another Managed Installer (in addition to Intune), please be sure to ensure the `-Merge` parameter is used with `Set-AppLockerPolicy`. This will ensure that it plays well with Intune's AppLocker policy. Without using the `-Merge` parameter when deploying to Windows 11 SE devices, it will result in issues with apps getting tagged properly and their ability to run on impacted devices. Learn more about AppLocker Merge policy: Merge AppLocker policies by using [Set-ApplockerPolicy (Windows) | Microsoft Learn][WIN-7]

Once finished, you can deploy the script via Intune. For more information, see [Add PowerShell scripts to Windows devices in Microsoft Intune][MEM-1].

### Troubleshoot AppLocker policies

For information how to troubleshoot AppLocker policies, see [WDAC supplemental policy validation](./troubleshoot.md#applocker---msi-and-script)


## Next steps

Before moving on to the next section, ensure that you've completed the following tasks.

For a WDAC supplemental policy:

> [!div class="checklist"]
> - Signed .cip .p7b file with Device Guard
> - Targets Base policy: `82443e1e-8a39-4b4a-96a8-f40ddc00b9f3`
> - Policy created in Intune and assigned to the correct groups
> - Policy applied in Event Viewer

For an AppLocker policy

> [!div class="checklist"]
> - Only applied to an updater or installer
> - Merge option used
> - Policy created in Intune and assigned to the correct groups

Advance to the next article to learn how to troubleshoot common errors when deploying apps with managed installer.


> [!div class="nextstepaction"]
> [Next: deploy policies >](deploy-policies.md)