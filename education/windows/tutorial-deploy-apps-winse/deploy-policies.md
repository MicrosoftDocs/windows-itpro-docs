---
title: Deploy policies to enable applications
description: Learn how to deploy AppLocker policies to enable apps execution on Windows SE devices.
ms.date: 05/23/2023
ms.topic: tutorial
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11 SE, version 22H2 and later</a>
---

<!--description: Learn how to sign WDAC policies and how to deploy WDAC and AppLocker policies to enable apps execution on Windows SE devices.-->

# Deploy policies to enable applications

Once the policies are created, you must deploy them to the Windows SE devices.\
AppLocker policies can be deployed via Intune. This article describes how to deploy AppLocker policies to enable apps execution on Windows SE devices.

<!--
WDAC and AppLocker policies can be deployed via Intune, but WDAC policies must be signed before they can be deployed.

This article describes how to sign WDAC policies and how to deploy WDAC and AppLocker policies to enable apps execution on Windows SE devices.

## Sign WDAC supplemental policies

> [!IMPORTANT]
> *This section will be updated when the process using Azure CodeSigning for CI policy is released in April.*

## Deploy WDAC supplemental policies

Policies can be deployed via Intune using a custom OMA-URI.

> [!TIP]
> To prevent these policies from being applied to non-Windows SE devices, you can create and target a group with only Windows 11 SE devices in it, or use assignment filters.

[Deploy WDAC policies using Mobile Device Management][WIN-4]

### Troubleshoot WDAC policies

For information how to validate and troubleshoot WDAC supplemental policies, see [WDAC supplemental policy validation](./troubleshoot.md#wdac-supplemental-policy-validation)

-->

## Deploy AppLocker policies

Intune doesn't currently offer the option to modify AppLocker policies. The deployment of AppLocker policies can be done using PowerShell scripts deployed via Intune.

You can create a PowerShell script that stores the contents of the policy in a variable, then use the `Set-AppLockerPolicy` PowerShell command to merge it. Here's a sample function for the task:

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

> [!WARNING]
> Intune deploys a script with the AppLocker policy to set **Intune Management Extension as a managed installer** on all Windows 11 SE devices enrolled into an Intune EDU tenant. If you want to deploy your own AppLocker policy to set another Managed Installer (in addition to Intune), be sure to use the `-Merge` parameter with `Set-AppLockerPolicy`. The `-Merge` parameter ensures that your policy plays well with Intune's AppLocker policy. Without using the `-Merge` parameter, it will result in issues with apps not getting tagged properly and their ability to run on impacted devices. To learn more about AppLocker Merge policy, see [Merge AppLocker policies][WIN-7].

Once finished, you can deploy the script via Intune. For more information, see [Add PowerShell scripts to Windows devices in Microsoft Intune][MEM-1].

### Troubleshoot AppLocker policies

For information how to validate and troubleshoot AppLocker policies, see [AppLocker policy validation](./troubleshoot.md#applocker-policy-validation)

## Next steps

<!--
Before moving on to the next section, ensure that you've completed the following tasks.

For a WDAC supplemental policy:

> [!div class="checklist"]
>
> - Signed .cip .p7b file with Device Guard
> - Policy created in Intune and assigned to the correct groups
> - Policy applied in Event Viewer

For an AppLocker policy:

> [!div class="checklist"]
>
> - Policy created in Intune and assigned to the correct groups
-->

Advance to the next article to learn about important considerations when deploying apps and policies to Windows SE devices.

> [!div class="nextstepaction"]
>
> [Next: important deployment considerations >](considerations.md)

[MEM-1]: /mem/intune/apps/intune-management-extension
[WIN-4]: /windows/security/threat-protection/windows-defender-application-control/deployment/deploy-windows-defender-application-control-policies-using-intune
[WIN-7]: /windows/security/threat-protection/windows-defender-application-control/applocker/merge-applocker-policies-by-using-set-applockerpolicy
