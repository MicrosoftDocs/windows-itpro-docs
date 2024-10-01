---
title: Deploying App Control for Business policies
description: Learn how to plan and implement an App Control deployment.
ms.localizationpriority: medium
ms.date: 09/11/2024
ms.topic: overview
---

# Deploying App Control for Business policies

[!INCLUDE [Feature availability note](../includes/feature-availability-note.md)]

You should now have one or more App Control for Business policies ready to deploy. If you haven't yet completed the steps described in the [App Control Design Guide](../design/appcontrol-design-guide.md), do so now before proceeding.

## Convert your App Control policy XML to binary

Before you deploy your App Control policies, you must first convert the XML to its binary form. You can do this using the following PowerShell example. You must set the $AppControlPolicyXMLFile variable to point to your App Control policy XML file.

```powershell
## Update the path to your App Control policy XML
$AppControlPolicyXMLFile = $env:USERPROFILE + "\Desktop\MyAppControlPolicy.xml"
[xml]$AppControlPolicy = Get-Content -Path $AppControlPolicyXMLFile
if (($AppControlPolicy.SiPolicy.PolicyID) -ne $null) ## Multiple policy format (For Windows builds 1903+ only, including Server 2022)
{
    $PolicyID = $AppControlPolicy.SiPolicy.PolicyID
    $PolicyBinary = $PolicyID+".cip"
}
else ## Single policy format (Windows Server 2016 and 2019, and Windows 10 1809 LTSC)
{
    $PolicyBinary = "SiPolicy.p7b"
}

## Binary file will be written to your desktop
ConvertFrom-CIPolicy -XmlFilePath $AppControlPolicyXMLFile -BinaryFilePath $env:USERPROFILE\Desktop\$PolicyBinary
```

## Plan your deployment

As with any significant change to your environment, implementing App Control can have unintended consequences. To ensure the best chance for success, you should follow safe deployment practices and plan your deployment carefully. Identify the devices you'll manage with App Control and split them into deployment rings. This way, you can control the speed and scale of the deployment and respond if anything goes wrong. Define the success criteria that will determine when it's safe to continue from one ring to the next.

All App Control for Business policy changes should be deployed in audit mode before proceeding to enforcement. Carefully monitor events from devices where the policy has been deployed to ensure the block events you observe match your expectation before broadening the deployment to other deployment rings. If your organization uses Microsoft Defender for Endpoint, you can use the Advanced Hunting feature to centrally monitor App Control-related events. Otherwise, we recommend using an event log forwarding solution to collect relevant events from your managed endpoints.

## Choose how to deploy App Control policies

> [!IMPORTANT]
> Due to a known issue, you should always activate new **signed** App Control Base policies with a reboot on systems with [**memory integrity**](../../../../hardware-security/enable-virtualization-based-protection-of-code-integrity.md) enabled. We recommend [deploying via script](deploy-appcontrol-policies-with-script.md) in this case.
>
> This issue does not affect updates to signed Base policies that are already active on the system, deployment of unsigned policies, or deployment of supplemental policies (signed or unsigned). It also does not affect deployments to systems that are not running memory integrity.

There are several options to deploy App Control for Business policies to managed endpoints, including:

- [Deploy using a Mobile Device Management (MDM) solution](deploy-appcontrol-policies-using-intune.md), such as Microsoft Intune
- [Deploy using Microsoft Configuration Manager](deploy-appcontrol-policies-with-memcm.md)
- [Deploy via script](deploy-appcontrol-policies-with-script.md)
- [Deploy via group policy](deploy-appcontrol-policies-using-group-policy.md)
