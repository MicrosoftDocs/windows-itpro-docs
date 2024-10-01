---
title: Deploy App Control policies using Mobile Device Management (MDM)
description: You can use an MDM like Microsoft Intune to configure App Control for Business. Learn how with this step-by-step guide.
ms.localizationpriority: medium
ms.date: 09/11/2024
ms.topic: how-to
---

# Deploy App Control policies using Mobile Device Management (MDM)

[!INCLUDE [Feature availability note](../includes/feature-availability-note.md)]

You can use a Mobile Device Management (MDM) solution, like Microsoft Intune, to configure App Control for Business on client machines. Intune includes native support for App Control, which can be a helpful starting point, but customers may find the available circle-of-trust options too limiting. To deploy a custom policy through Intune and define your own circle of trust, you can configure a profile using Custom OMA-URI. If your organization uses another MDM solution, check with your solution provider for App Control policy deployment steps.

> [!IMPORTANT]
> Due to a known issue, you should always activate new **signed** App Control Base policies *with a reboot* on systems with [**memory integrity**](../../../../hardware-security/enable-virtualization-based-protection-of-code-integrity.md) enabled. Instead of Mobile Device Management (MDM), deploy new signed App Control Base policies [via script](deploy-appcontrol-policies-with-script.md) and activate the policy with a system restart.
>
> This issue does not affect updates to signed Base policies that are already active on the system, deployment of unsigned policies, or deployment of supplemental policies (signed or unsigned). It also does not affect deployments to systems that are not running memory integrity.

## Use Intune's built-in policies

Intune's built-in App Control for Business support allows you to configure Windows client computers to only run:

- Windows components
- Third-party hardware and software kernel drivers
- Microsoft Store-signed apps
- [Optional] Reputable apps as defined by the Intelligent Security Graph (ISG)

> [!NOTE]
> Intune's built-in policies use the pre-1903 single-policy format version of the DefaultWindows policy. Use the [improved Intune App Control experience](/mem/intune/protect/endpoint-security-app-control-policy), currently in public preview, to create and deploy multiple-policy format files. Or, you can use Intune's custom OMA-URI feature to deploy your own multiple-policy format App Control policies and leverage features available on Windows 10 1903+ or Windows 11 as described later in this topic.

> [!NOTE]
> Intune currently uses the AppLocker CSP to deploy its built-in policies. The AppLocker CSP always requests a device restart when it applies App Control policies. Use the [improved Intune App Control experience](/mem/intune/protect/endpoint-security-app-control-policy), currently in public preview, to deploy your own App Control policies without a restart. Or, you can use Intune's custom OMA-URI feature with the ApplicationControl CSP.

To use Intune's built-in App Control policies, configure [Endpoint Protection for Windows 10 (and later)](/mem/intune/protect/endpoint-protection-windows-10?toc=/intune/configuration/toc.json&bc=/intune/configuration/breadcrumb/toc.json).

## Deploy App Control policies with custom OMA-URI

> [!NOTE]
> Policies deployed through Intune custom OMA-URI are subject to a 350,000 byte limit. Customers should create App Control for Business policies that use signature-based rules, the Intelligent Security Graph, and managed installers where practical. Customers whose devices are running 1903+ builds of Windows are also encouraged to use [multiple policies](../design/deploy-multiple-appcontrol-policies.md) which allow more granular policy.

You should now have one or more App Control policies converted into binary form. If not, follow the steps described in [Deploying App Control for Business policies](appcontrol-deployment-guide.md).

### Deploy custom App Control policies on Windows 10 1903+

Beginning with Windows 10 1903, custom OMA-URI policy deployment can use the [ApplicationControl CSP](/windows/client-management/mdm/applicationcontrol-csp), which has support for multiple policies and rebootless policies.

> [!NOTE]
> You must convert your custom policy XML to binary form before deploying with OMA-URI.

The steps to use Intune's custom OMA-URI functionality are:

1. Open the Microsoft Intune portal and [create a profile with custom settings](/mem/intune/configuration/custom-settings-windows-10).

2. Specify a **Name** and **Description** and use the following values for the remaining custom OMA-URI settings:
    - **OMA-URI**: `./Vendor/MSFT/ApplicationControl/Policies/_Policy GUID_/Policy`
    - **Data type**: Base64 (file)
    - **Certificate file**: Upload your binary format policy file. To do this, change your {GUID}.cip file to {GUID}.bin. You don't need to upload a Base64 file, as Intune converts the uploaded .bin file to Base64 on your behalf.

    :::image type="content" alt-text="Configure custom App Control." source="../images/appcontrol-intune-custom-oma-uri.png" lightbox="../images/appcontrol-intune-custom-oma-uri.png":::

> [!NOTE]
> For the _Policy GUID_ value, do not include the curly brackets.

### Remove App Control policies on Windows 10 1903+

Upon deletion, policies deployed through Intune via the ApplicationControl CSP are removed from the system but stay in effect until the next reboot. In order to disable App Control for Business enforcement, first replace the existing policy with a new version of the policy that will "Allow *", like the rules in the example  policy at %windir%\schemas\CodeIntegrity\ExamplePolicies\AllowAll.xml. Once the updated policy is deployed, you can then delete the policy from the Intune portal. This deletion will prevent anything from being blocked and fully remove the App Control policy on the next reboot.

### For pre-1903 systems

#### Deploying policies

The steps to use Intune's Custom OMA-URI functionality to apply the [AppLocker CSP](/windows/client-management/mdm/applocker-csp) and deploy a custom App Control policy to pre-1903 systems are:

1. Convert the policy XML to binary format using the [ConvertFrom-CIPolicy](/powershell/module/configci/convertfrom-cipolicy) cmdlet in order to be deployed. The binary policy may be signed or unsigned.

2. Open the Microsoft Intune portal and [create a profile with custom settings](/mem/intune/configuration/custom-settings-windows-10).

3. Specify a **Name** and **Description** and use the following values for the remaining custom OMA-URI settings:
    - **OMA-URI**: `./Vendor/MSFT/AppLocker/ApplicationLaunchRestrictions/_Grouping_/CodeIntegrity/Policy`
    - **Data type**: Base64 (file)
    - **Certificate file**: upload your binary format policy file

   > [!NOTE]
   > Deploying policies via the AppLocker CSP will force a reboot during OOBE.

#### Removing policies

Policies deployed through Intune via the AppLocker CSP can't be deleted through the Intune console. In order to disable App Control for Business policy enforcement, either deploy an audit-mode policy or use a script to delete the existing policy.
