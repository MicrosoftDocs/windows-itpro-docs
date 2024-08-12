---
title: Deploying Windows Defender Application Control (WDAC) policies
description: Learn how to plan and implement a WDAC deployment.
ms.localizationpriority: medium
ms.date: 01/23/2023
ms.topic: overview
---

# Deploying Windows Defender Application Control (WDAC) policies

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](../feature-availability.md).

You should now have one or more Windows Defender Application Control (WDAC) policies ready to deploy. If you haven't yet completed the steps described in the [WDAC Design Guide](../design/wdac-design-guide.md), do so now before proceeding.

## Convert your WDAC policy XML to binary

Before you deploy your WDAC policies, you must first convert the XML to its binary form. You can do this using the following PowerShell example. You must set the $WDACPolicyXMLFile variable to point to your WDAC policy XML file.

   ```powershell
    ## Update the path to your WDAC policy XML
    $WDACPolicyXMLFile = $env:USERPROFILE + "\Desktop\MyWDACPolicy.xml"
    [xml]$WDACPolicy = Get-Content -Path $WDACPolicyXMLFile
    if (($WDACPolicy.SiPolicy.PolicyID) -ne $null) ## Multiple policy format (For Windows builds 1903+ only, including Server 2022)
    {
        $PolicyID = $WDACPolicy.SiPolicy.PolicyID
        $PolicyBinary = $PolicyID+".cip"
    }
    else ## Single policy format (Windows Server 2016 and 2019, and Windows 10 1809 LTSC)
    {
        $PolicyBinary = "SiPolicy.p7b"
    }

    ## Binary file will be written to your desktop
    ConvertFrom-CIPolicy -XmlFilePath $WDACPolicyXMLFile -BinaryFilePath $env:USERPROFILE\Desktop\$PolicyBinary
   ```

## Plan your deployment

As with any significant change to your environment, implementing application control can have unintended consequences. To ensure the best chance for success, you should follow safe deployment practices and plan your deployment carefully. Identify the devices you'll manage with WDAC and split them into deployment rings. This way, you can control the speed and scale of the deployment and respond if anything goes wrong. Define the success criteria that will determine when it's safe to continue from one ring to the next.

All Windows Defender Application Control policy changes should be deployed in audit mode before proceeding to enforcement. Carefully monitor events from devices where the policy has been deployed to ensure the block events you observe match your expectation before broadening the deployment to other deployment rings. If your organization uses Microsoft Defender for Endpoint, you can use the Advanced Hunting feature to centrally monitor WDAC-related events. Otherwise, we recommend using an event log forwarding solution to collect relevant events from your managed endpoints.

## Choose how to deploy WDAC policies

> [!IMPORTANT]
> Due to a known issue, you should always activate new **signed** WDAC Base policies with a reboot on systems with [**memory integrity**](../../../../hardware-security/enable-virtualization-based-protection-of-code-integrity.md) enabled. We recommend [deploying via script](deploy-wdac-policies-with-script.md) in this case.
>
> This issue does not affect updates to signed Base policies that are already active on the system, deployment of unsigned policies, or deployment of supplemental policies (signed or unsigned). It also does not affect deployments to systems that are not running memory integrity.

There are several options to deploy Windows Defender Application Control policies to managed endpoints, including:

- [Deploy using a Mobile Device Management (MDM) solution](deploy-wdac-policies-using-intune.md), such as Microsoft Intune
- [Deploy using Microsoft Configuration Manager](deploy-wdac-policies-with-memcm.md)
- [Deploy via script](deploy-wdac-policies-with-script.md)
- [Deploy via group policy](deploy-wdac-policies-using-group-policy.md)
