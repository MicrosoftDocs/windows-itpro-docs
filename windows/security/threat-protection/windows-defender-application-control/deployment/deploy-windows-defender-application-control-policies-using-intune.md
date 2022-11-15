---
title: Deploy WDAC policies using Mobile Device Management (MDM) (Windows)
description: You can use an MDM like Microsoft Intune to configure Windows Defender Application Control (WDAC). Learn how with this step-by-step guide.
ms.prod: windows-client
ms.technology: itpro-security
ms.localizationpriority: medium
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: jogeurte
ms.author: vinpa
manager: aaroncz
ms.date: 10/06/2022
ms.topic: how-to
---

# Deploy WDAC policies using Mobile Device Management (MDM)

**Applies to:**

- Windows 10
- Windows 11
- Windows Server 2016 and above

> [!NOTE]
> Some capabilities of Windows Defender Application Control (WDAC) are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](../feature-availability.md).

You can use a Mobile Device Management (MDM) solution, like Microsoft Intune, to configure Windows Defender Application Control (WDAC) on client machines. Intune includes native support for WDAC, which can be a helpful starting point, but customers may find the available circle-of-trust options too limiting. To deploy a custom policy through Intune and define your own circle of trust, you can configure a profile using Custom OMA-URI. If your organization uses another MDM solution, check with your solution provider for WDAC policy deployment steps.

## Use Intune's built-in policies

Intune's built-in Windows Defender Application Control support allows you to configure Windows client computers to only run:

- Windows components
- Third-party hardware and software kernel drivers
- Microsoft Store-signed apps
- [Optional] Reputable apps as defined by the Intelligent Security Graph (ISG)

> [!NOTE]
> Intune's built-in policies use the pre-1903 single-policy format version of the DefaultWindows policy. You can use Intune's custom OMA-URI feature to deploy your own multiple-policy format WDAC policies and leverage features available on Windows 10 1903+ or Windows 11 as described later in this topic.

> [!NOTE]
> Intune currently uses the AppLocker CSP to deploy its built-in policies. The AppLocker CSP will always request a reboot when applying WDAC policies. You can use Intune's custom OMA-URI feature with the ApplicationControl CSP to deploy your own WDAC policies rebootlessly.

To use Intune's built-in WDAC policies, configure [Endpoint Protection for Windows 10 (and later)](/mem/intune/protect/endpoint-protection-windows-10?toc=/intune/configuration/toc.json&bc=/intune/configuration/breadcrumb/toc.json).

## Deploy WDAC policies with custom OMA-URI

> [!NOTE]
> Policies deployed through Intune custom OMA-URI are subject to a 350,000 byte limit. Customers should create Windows Defender Application Control policies that use signature-based rules, the Intelligent Security Graph, and managed installers where practical. Customers whose devices are running 1903+ builds of Windows are also encouraged to use [multiple policies](../deploy-multiple-windows-defender-application-control-policies.md) which allow more granular policy.

You should now have one or more WDAC policies converted into binary form. If not, follow the steps described in [Deploying Windows Defender Application Control (WDAC) policies](/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control-deployment-guide).

### Deploy custom WDAC policies on Windows 10 1903+

Beginning with Windows 10 1903, custom OMA-URI policy deployment can use the [ApplicationControl CSP](/windows/client-management/mdm/applicationcontrol-csp), which has support for multiple policies and rebootless policies.

The steps to use Intune's custom OMA-URI functionality are:

1. Open the Microsoft Intune portal and [create a profile with custom settings](/mem/intune/configuration/custom-settings-windows-10).

2. Specify a **Name** and **Description** and use the following values for the remaining custom OMA-URI settings:
    - **OMA-URI**: `./Vendor/MSFT/ApplicationControl/Policies/_Policy GUID_/Policy`
    - **Data type**: Base64 (file)
    - **Certificate file**: upload your binary format policy file. You don't need to upload a Base64 file, as Intune will convert the uploaded .bin file to Base64 on your behalf.

    > [!div class="mx-imgBorder"]
    > ![Configure custom WDAC.](../images/wdac-intune-custom-oma-uri.png)

> [!NOTE]
> For the _Policy GUID_ value, do not include the curly brackets.

### Remove WDAC policies on Windows 10 1903+

Upon deletion, policies deployed through Intune via the ApplicationControl CSP are removed from the system but stay in effect until the next reboot. In order to disable Windows Defender Application Control enforcement, first replace the existing policy with a new version of the policy that will "Allow *", like the rules in the example  policy at %windir%\schemas\CodeIntegrity\ExamplePolicies\AllowAll.xml. Once the updated policy is deployed, you can then delete the policy from the Intune portal. This deletion will prevent anything from being blocked and fully remove the WDAC policy on the next reboot.

### For pre-1903 systems

#### Deploying policies

The steps to use Intune's Custom OMA-URI functionality to apply the [AppLocker CSP](/windows/client-management/mdm/applocker-csp) and deploy a custom WDAC policy to pre-1903 systems are:

1. Convert the policy XML to binary format using the [ConvertFrom-CIPolicy](/powershell/module/configci/convertfrom-cipolicy) cmdlet in order to be deployed. The binary policy may be signed or unsigned.

2. Open the Microsoft Intune portal and [create a profile with custom settings](/mem/intune/configuration/custom-settings-windows-10).

3. Specify a **Name** and **Description** and use the following values for the remaining custom OMA-URI settings:
    - **OMA-URI**: `./Vendor/MSFT/AppLocker/ApplicationLaunchRestrictions/_Grouping_/CodeIntegrity/Policy`
    - **Data type**: Base64 (file)
    - **Certificate file**: upload your binary format policy file

   > [!NOTE]
   > Deploying policies via the AppLocker CSP will force a reboot during OOBE.

#### Removing policies

Policies deployed through Intune via the AppLocker CSP can't be deleted through the Intune console. In order to disable Windows Defender Application Control policy enforcement, either deploy an audit-mode policy or use a script to delete the existing policy.
