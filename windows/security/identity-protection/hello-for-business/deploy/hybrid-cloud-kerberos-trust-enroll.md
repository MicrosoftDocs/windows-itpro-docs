---
title: Windows Hello for Business cloud Kerberos trust clients configuration and enrollment
description: Learn how to configure devices and enroll them in Windows Hello for Business in a cloud Kerberos trust scenario.
ms.date: 02/24/2023
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10, version 21H2 and later</a>
ms.topic: tutorial
---
# Configure and provision Windows Hello for Business - cloud Kerberos trust

[!INCLUDE [apply-to-hybrid-cloud-kerberos-trust](includes/apply-to-hybrid-cloud-kerberos-trust.md)]

## Deployment steps

Deploying Windows Hello for Business cloud Kerberos trust consists of two steps:

1. Set up Microsoft Entra Kerberos.
1. Configure a Windows Hello for Business policy and deploy it to the devices.

<a name='deploy-azure-ad-kerberos'></a>

### Deploy Microsoft Entra Kerberos

If you've already deployed on-premises SSO for passwordless security key sign-in, then you've already deployed Microsoft Entra Kerberos in your hybrid environment. You don't need to redeploy or change your existing Microsoft Entra Kerberos deployment to support Windows Hello for Business and you can skip this section.

If you haven't deployed Microsoft Entra Kerberos, follow the instructions in the [Enable passwordless security key sign-in to on-premises resources by using Microsoft Entra ID][AZ-2] documentation. This page includes information on how to install and use the Microsoft Entra Kerberos PowerShell module. Use the module to create a Microsoft Entra Kerberos server object for the domains where you want to use Windows Hello for Business cloud Kerberos trust.

### Configure Windows Hello for Business policy

After setting up the Microsoft Entra Kerberos object, Windows Hello for business cloud Kerberos trust must be enabled on your Windows devices. Follow the instructions below to configure your devices using either Microsoft Intune or group policy (GPO).

#### [:::image type="icon" source="images/intune.svg"::: **Intune**](#tab/intune)

For devices managed by Intune, you can use Intune policies to configure Windows Hello for Business.

There are different ways to enable and configure Windows Hello for Business in Intune:

- When the device is enrolled in Intune, a tenant-wide policy is applied to the device. This policy is applied at enrollment time only, and any changes to its configuration won't apply to devices already enrolled in Intune. For this reason, this policy is usually disabled, and Windows Hello for Business can be enabled using a policy targeted to a security group.
- After the device is enrolled in Intune, you can apply a device configuration policy. Any changes to the policy will be applied to the devices during regular policy refresh intervals. There are different policy types to choose from:
  - [Settings catalog][MEM-7]
  - [Security baselines][MEM-2]
  - [Custom policy][MEM-3], via the [PassportForWork CSP][MEM-4]
  - [Account protection policy][MEM-5]
  - [Identity protection policy template][MEM-6]

### Verify the tenant-wide policy

To check the Windows Hello for Business policy applied at enrollment time:

1. Sign in to the <a href="https://intune.microsoft.com" target="_blank"><b>Microsoft Intune admin center</b></a>.
1. Select **Devices** > **Windows** > **Windows Enrollment**.
1. Select **Windows Hello for Business**.
1. Verify the status of **Configure Windows Hello for Business** and any settings that may be configured.

:::image type="content" source="images/whfb-intune-disable.png" alt-text="Disablement of Windows Hello for Business from Microsoft Intune admin center." border="true" lightbox="images/whfb-intune-disable.png":::

If the tenant-wide policy is enabled and configured to your needs, you can skip to [Configure cloud Kerberos trust policy](#configure-the-cloud-kerberos-trust-policy). Otherwise, follow the instructions below to create a policy using an *account protection* policy.

### Enable Windows Hello for Business

To configure Windows Hello for Business using an account protection policy:

1. Sign in to the <a href="https://intune.microsoft.com" target="_blank"><b>Microsoft Intune admin center</b></a>.
1. Select **Endpoint security** > **Account protection**.
1. Select **+ Create Policy**.
1. For **Platform**, select **Windows 10 and later** and for **Profile** select **Account protection**.
1. Select **Create**.
1. Specify a **Name** and, optionally, a **Description** > **Next**.
1. Under **Block Windows Hello for Business**, select **Disabled** and multiple policies become available.
    - These policies are optional to configure, but it's recommended to configure **Enable to use a Trusted Platform Module (TPM)** to **Yes**.
    - For more information about these policies, see [MDM policy settings for Windows Hello for Business](../hello-manage-in-organization.md#mdm-policy-settings-for-windows-hello-for-business).
1. Under **Enable to certificate for on-premises resources**, select **Not configured**
1. Select **Next**.
1. Optionally, add **scope tags** and select **Next**.
1. Assign the policy to a security group that contains as members the devices or users that you want to configure > **Next**.
1. Review the policy configuration and select **Create**.

> [!TIP]
> If you want to enforce the use of digits for your Windows Hello for Business PIN, use the settings catalog and choose **Digits** or **Digits (User)** instead of using the Account protection template.

:::image type="content" source="images/whfb-intune-account-protection-enable.png" alt-text="This image shows the enablement of Windows Hello for Business from Microsoft Intune admin center using an account protection policy." lightbox="images/whfb-intune-account-protection-enable.png":::

Assign the policy to a security group that contains as members the devices or users that you want to configure.

### Configure the cloud Kerberos trust policy

The cloud Kerberos trust policy can be configured using a custom template, and it's configured separately from enabling Windows Hello for Business.

To configure the cloud Kerberos trust policy:

1. Sign in to the <a href="https://intune.microsoft.com" target="_blank"><b>Microsoft Intune admin center</b></a>.
1. Select **Devices** > **Windows** > **Configuration Profiles** > **Create profile**.
1. For Profile Type, select **Templates** and select the **Custom** Template.
1. Name the profile with a familiar name, for example, "Windows Hello for Business cloud Kerberos trust".
1. In Configuration Settings, add a new configuration with the following settings:

   - Name: **Windows Hello for Business cloud Kerberos trust** or another familiar name
   - Description (optional): *Enable Windows Hello for Business cloud Kerberos trust for sign-in and on-premises SSO* 
   - OMA-URI: **`./Device/Vendor/MSFT/PassportForWork/`*\<tenant ID>*`/Policies/UseCloudTrustForOnPremAuth`**
   - Data type: **Boolean**
   - Value: **True**

    > [!IMPORTANT]
    > *Tenant ID* in the OMA-URI must be replaced with the tenant ID for your Microsoft Entra tenant. See [How to find your Microsoft Entra tenant ID][AZ-3] for instructions on looking up your tenant ID.

    :::image type="content" alt-text ="Intune custom-device configuration policy creation" source="images/hello-cloud-trust-intune.png" lightbox="images/hello-cloud-trust-intune-large.png":::

1. Assign the policy to a security group that contains as members the devices or users that you want to configure.

#### [:::image type="icon" source="images/group-policy.svg"::: **GPO**](#tab/gpo)

Microsoft Entra hybrid joined organizations can use Windows Hello for Business Group Policy to manage the feature. Group Policy can be configured to enable users to enroll and use Windows Hello for Business.

The Enable Windows Hello for Business Group Policy setting is used by Windows to determine if a user should attempt to enroll a credential. A user will only attempt enrollment if this policy is configured to enabled.  

You can configure the Enable Windows Hello for Business Group Policy setting for computers or users. Deploying this policy setting to computers results in all users that sign-in that computer to attempt a Windows Hello for Business enrollment. Deploying this policy setting to a user results in only that user attempting a Windows Hello for Business enrollment. Additionally, you can deploy the policy setting to a group of users so only those users attempt a Windows Hello for Business enrollment. If both user and computer policy settings are deployed, the user policy setting has precedence.

Cloud Kerberos trust requires setting a dedicated policy for it to be enabled. This policy is only available as a computer configuration.

> [!NOTE]
> If you deployed Windows Hello for Business configuration using both Group Policy and Microsoft Intune, Group Policy settings will take precedence and Intune settings will be ignored. For more information about deploying Windows Hello for Business configuration using Microsoft Intune, see [Windows device settings to enable Windows Hello for Business in Intune][MEM-1] and [PassportForWork CSP](/windows/client-management/mdm/passportforwork-csp). For more information about policy conflicts, see [Policy conflicts from multiple policy sources](../hello-manage-in-organization.md#policy-conflicts-from-multiple-policy-sources).

#### Update administrative templates

You may need to update your Group Policy definitions to be able to configure the cloud Kerberos trust policy. You can copy the ADMX and ADML files from a Windows client that supports cloud Kerberos trust to their respective language folder on your Group Policy management server. Windows Hello for Business settings are in the *Passport.admx* and *Passport.adml* files.

You can also create a Group Policy Central Store and copy them their respective language folder. For more information, see [How to create and manage the Central Store for Group Policy Administrative Templates in Windows][TS-1].

#### Create the Windows Hello for Business group policy object

You can configure Windows Hello for Business cloud Kerberos trust using a Group Policy Object (GPO).

1. Using the Group Policy Management Console (GPMC), scope a domain-based Group Policy to computer objects in Active Directory.
1. Edit the Group Policy object from Step 1.
1. Expand **Computer Configuration > Administrative Templates > Windows Components > Windows Hello for Business**.
1. Select **Use Windows Hello for Business** > **Enable** > **OK**.
1. Select **Use cloud Kerberos trust for on-premises authentication** > **Enable** > **OK**.
1. Optional, but recommended: select **Use a hardware security device** > **Enable** > **OK**.

---

> [!IMPORTANT]
> If the **Use certificate for on-premises authentication** policy is enabled, certificate trust will take precedence over cloud Kerberos trust. Ensure that the machines that you want to enable cloud Kerberos trust have this policy **not configured**.

## Provision Windows Hello for Business

The Windows Hello for Business provisioning process begins immediately after a user has signed in if certain prerequisite checks are passed. Windows Hello for Business *cloud Kerberos trust* adds a prerequisite check for Microsoft Entra hybrid joined devices when cloud Kerberos trust is enabled by policy.

You can determine the status of the prerequisite check by viewing the **User Device Registration** admin log under **Applications and Services Logs** > **Microsoft** > **Windows**.\
This information is also available using the `dsregcmd /status` command from a console. For more information, see [dsregcmd][AZ-4].

:::image type="content" alt-text="Cloud Kerberos trust prerequisite check in the user device registration log" source="images/cloud-trust-prereq-check.png" lightbox="images/cloud-trust-prereq-check.png":::

The cloud Kerberos trust prerequisite check detects whether the user has a partial TGT before allowing provisioning to start. The purpose of this check is to validate whether Microsoft Entra Kerberos is set up for the user's domain and tenant. If Microsoft Entra Kerberos is set up, the user will receive a partial TGT during sign-in with one of their other unlock methods. This check has three states: Yes, No, and Not Tested. The *Not Tested* state is reported if cloud Kerberos trust isn't being enforced by policy or if the device is Microsoft Entra joined.

> [!NOTE]
> The cloud Kerberos trust prerequisite check isn't done on Microsoft Entra joined devices. If Microsoft Entra Kerberos isn't provisioned, a user on a Microsoft Entra joined device will still be able to sign in, but won't have SSO to on-premises resources secured by Active Directory.

### PIN Setup

After a user signs in, this is the process that occurs to enroll in Windows Hello for Business:

1. The user is prompted with a full screen page to use Windows Hello with the organization account. The user selects **OK**.
1. The provisioning flow proceeds to the multi-factor authentication portion of the enrollment. Provisioning informs the user that it's actively attempting to contact the user through their configured form of MFA. The provisioning process doesn't proceed until authentication succeeds, fails or times out. A failed or timeout MFA results in an error and asks the user to retry.
1. After a successful MFA, the provisioning flow asks the user to create and validate a PIN. This PIN must observe any PIN complexity policies configured on the device.

:::image type="content" source="images/haadj-whfb-pin-provisioning.gif" alt-text="Animation showing a user logging on to an HAADJ device with a password, and being prompted to enroll in Windows Hello for Business.":::

### Sign-in

Once a user has set up a PIN with cloud Kerberos trust, it can be used **immediately** for sign-in. On a Microsoft Entra hybrid joined device, the first use of the PIN requires line of sight to a DC. Once the user has signed in or unlocked with the DC, cached sign-in can be used for subsequent unlocks without line of sight or network connectivity.

## Migrate from key trust deployment model to cloud Kerberos trust

If you deployed Windows Hello for Business using the key trust model, and want to migrate to the cloud Kerberos trust model, follow these steps:

1. [Set up Microsoft Entra Kerberos in your hybrid environment](#deploy-azure-ad-kerberos).
1. [Enable cloud Kerberos trust via Group Policy or Intune](#configure-windows-hello-for-business-policy).
1. For Microsoft Entra joined devices, sign out and sign in to the device using Windows Hello for Business.

> [!NOTE]
> For Microsoft Entra hybrid joined devices, users must perform the first sign in with new credentials while having line of sight to a DC.

## Migrate from certificate trust deployment model to cloud Kerberos trust

> [!IMPORTANT]
> There is no *direct* migration path from a certificate trust deployment to a cloud Kerberos trust deployment. The Windows Hello container must be deleted before you can migrate to cloud Kerberos trust.

If you deployed Windows Hello for Business using the certificate trust model, and want to use the cloud Kerberos trust model, you must redeploy Windows Hello for Business by following these steps:

1. Disable the certificate trust policy.
1. [Enable cloud Kerberos trust via Group Policy or Intune](#configure-windows-hello-for-business-policy).
1. Remove the certificate trust credential using the command `certutil -deletehellocontainer` from the user context.
1. Sign out and sign back in.
1. Provision Windows Hello for Business using a method of your choice.

> [!NOTE]
> For Microsoft Entra hybrid joined devices, users must perform the first sign-in with new credentials while having line of sight to a DC.

## Frequently Asked Questions

For a list of frequently asked questions about Windows Hello for Business cloud Kerberos trust, see [Windows Hello for Business Frequently Asked Questions](../hello-faq.yml#cloud-kerberos-trust).

<!--Links-->

[AZ-2]: /azure/active-directory/authentication/howto-authentication-passwordless-security-key-on-premises#install-the-azure-ad-kerberos-powershell-module
[AZ-3]: /azure/active-directory/fundamentals/how-to-find-tenant
[AZ-4]: /azure/active-directory/devices/troubleshoot-device-dsregcmd

[MEM-1]: /mem/intune/protect/identity-protection-windows-settings
[MEM-2]: /mem/intune/protect/security-baselines
[MEM-3]: /mem/intune/configuration/custom-settings-configure
[MEM-4]: /windows/client-management/mdm/passportforwork-csp
[MEM-5]: /mem/intune/protect/endpoint-security-account-protection-policy
[MEM-6]: /mem/intune/protect/identity-protection-configure
[MEM-7]: /mem/intune/configuration/settings-catalog

[TS-1]: /troubleshoot/windows-client/group-policy/create-and-manage-central-store
