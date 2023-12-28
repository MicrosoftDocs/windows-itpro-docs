---
title: Windows Hello for Business cloud Kerberos trust deployment
description: Learn how to deploy Windows Hello for Business in a cloud Kerberos trust scenario.
ms.date: 02/24/2023
ms.topic: tutorial
---

# Cloud Kerberos trust deployment

[!INCLUDE [apply-to-hybrid-cloud-kerberos-trust](includes/apply-to-hybrid-cloud-kerberos-trust.md)]

[!INCLUDE [requirements](includes/requirements.md)]

> [!div class="checklist"]
>
> - [Authentication](index.md#authentication)
> - [Device configuration](index.md#device-configuration)
> - [Windows requirements](index.md#windows-requirements)
> - [Windows Server requirements](index.md#windows-server-requirements)
> - [Prepare users to use Windows Hello](index.md#prepare-users-to-use-windows-hello)

## Deployment steps

> [!div class="checklist"]
> Once the prerequisites are met, deploying Windows Hello for Business consists of the following steps:
>
> - [Deploy Microsoft Entra Kerberos](#deploy-microsoft-entra-kerberos)
> - [Configure Windows Hello for Business settings](#configure-windows-hello-for-business-policy)
> - [Provision Windows Hello for Business](#provision-windows-hello-for-business)

## Deploy Microsoft Entra Kerberos

If you've already deployed on-premises SSO for passwordless security key sign-in, then you've already deployed Microsoft Entra Kerberos in your organization. You don't need to redeploy or change your existing Microsoft Entra Kerberos deployment to support Windows Hello for Business and you can skip to the [Configure Windows Hello for Business settings](#configure-windows-hello-for-business-policy) section.

If you haven't deployed Microsoft Entra Kerberos, follow the instructions in the [Enable passwordless security key sign-in][ENTRA-1] documentation. This page includes information on how to install and use the Microsoft Entra Kerberos PowerShell module. Use the module to create a Microsoft Entra Kerberos server object for the domains where you want to use Windows Hello for Business cloud Kerberos trust.

### Microsoft Entra Kerberos and cloud Kerberos trust authentication

When Microsoft Entra Kerberos is enabled in an Active Directory domain, an *AzureADKerberos* computer object is created in the domain. This object:

- Appears as a Read Only Domain Controller (RODC) object, but isn't associated with any physical servers
- Is only used by Microsoft Entra ID to generate TGTs for the Active Directory domain

  > [!NOTE]
  > Similar rules and restrictions used for RODCs apply to the AzureADKerberos computer object. For example, users that are direct or indirect members of priviliged built-in security groups won't be able to use cloud Kerberos trust.

:::image type="content" source="images/azuread-kerberos-object.png" alt-text="Screenshot of the Active Directory Users and Computers console, showing the computer object representing the Microsoft Entra Kerberos server.":::

For more information about how Microsoft Entra Kerberos works with Windows Hello for Business cloud Kerberos trust, see [Windows Hello for Business authentication technical deep dive](../how-it-works-authentication.md#microsoft-entra-hybrid-join-authentication-using-cloud-kerberos-trust).

> [!NOTE]
> The default *Password Replication Policy* configured on the AzureADKerberos computer object doesn't allow to sign high privilege accounts on to on-premises resources with cloud Kerberos trust or FIDO2 security keys.
>
> Due to possible attack vectors from Microsoft Entra ID to Active Directory, it's not recommended to unblock these accounts by relaxing the Password Replication Policy of the computer object `CN=AzureADKerberos,OU=Domain Controllers,<domain-DN>`.

When implementing the cloud Kerberos trust deployment model, you *must* ensure that you have an adequate number of *read-write domain controllers* in each Active Directory site where users will be authenticating with Windows Hello for Business. For more information, see [Capacity planning for Active Directory][SERV-1].

## Configure Windows Hello for Business policy

After setting up the Microsoft Entra Kerberos object, Windows Hello for business cloud Kerberos trust must be enabled on your Windows devices. Follow the instructions below to configure your devices using either Microsoft Intune or group policy (GPO).

# [:::image type="icon" source="images/intune.svg"::: **Intune**](#tab/intune)

Review the article [Configure Windows Hello for Business using Microsoft Intune](../configure.md#configure-windows-hello-for-business-using-microsoft-intune) to learn about the different options offered by Microsoft Intune to configure Windows Hello for Business.

If the Intune tenant-wide policy is enabled and configured to your needs, you can skip to [Configure cloud Kerberos trust policy](#configure-the-cloud-kerberos-trust-policy). Otherwise, follow the instructions below to enable Windows Hello for Business a policy using an *account protection* policy.

### Enable Windows Hello for Business

To configure Windows Hello for Business using an account protection policy:

1. Sign in to the <a href="https://intune.microsoft.com" target="_blank"><b>Microsoft Intune admin center</b></a>
1. Select **Endpoint security** > **Account protection**
1. Select **+ Create Policy**
1. For **Platform**, select **Windows 10 and later** and for **Profile** select **Account protection**
1. Select **Create**
1. Specify a **Name** and, optionally, a **Description** > **Next**
1. Under **Block Windows Hello for Business**, select **Disabled** and multiple policies become available
    - These policies are optional to configure, but it's recommended to configure **Enable to use a Trusted Platform Module (TPM)** to **Yes**
    - For more information about these policies, see [Windows Hello for Business policy settings](../policy-settings)
1. Under **Enable to certificate for on-premises resources**, select **Not configured**
1. Select **Next**
1. Optionally, add **scope tags** and select **Next**
1. Assign the policy to a security group that contains as members the devices or users that you want to configure > **Next**
1. Review the policy configuration and select **Create**

> [!TIP]
> If you want to enforce the use of digits for your Windows Hello for Business PIN, use the settings catalog and choose **Digits** or **Digits (User)** instead of using the Account protection template.

:::image type="content" source="images/whfb-intune-account-protection-enable.png" alt-text="Screenshot of the enablement of Windows Hello for Business from Microsoft Intune admin center using an account protection policy." lightbox="images/whfb-intune-account-protection-enable.png":::

Assign the policy to a security group that contains as members the devices or users that you want to configure.

### Configure the cloud Kerberos trust policy

[!INCLUDE [intune-settings-catalog-1](../../../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| **Windows Hello for Business** | Use Cloud Trust For On Prem Auth | Enabled |

[!INCLUDE [intune-settings-catalog-2](../../../../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][MEM-3] with the [PassportForWork CSP][CSP-1].

| Setting |
|--------|
| - **OMA-URI:** `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/UseCloudTrustForOnPremAuth`<br>- **Data type:** `bool`<br>- **Value:** `True`|

For more information about the cloud Kerberos trust policy, see [Windows Hello for Business policy settings](../policy-settings.md#use-cloud-trust-for-on-prem-auth).

# [:::image type="icon" source="images/group-policy.svg"::: **GPO**](#tab/gpo)

Microsoft Entra hybrid joined organizations can use Windows Hello for Business Group Policy to manage the feature. Group Policy can be configured to enable users to enroll and use Windows Hello for Business.

The Enable Windows Hello for Business Group Policy setting is used by Windows to determine if a user should attempt to enroll a credential. A user will only attempt enrollment if this policy is configured to enabled.  

You can configure the Enable Windows Hello for Business Group Policy setting for computers or users. Deploying this policy setting to computers results in all users that sign-in that computer to attempt a Windows Hello for Business enrollment. Deploying this policy setting to a user results in only that user attempting a Windows Hello for Business enrollment. You can deploy the policy setting to a group of users so only those users attempt a Windows Hello for Business enrollment. If both user and computer policy settings are deployed, the user policy setting has precedence.

Cloud Kerberos trust requires setting a dedicated policy for it to be enabled. This policy is only available as a computer configuration.

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
> If the **Use certificate for on-premises authentication** policy is enabled, certificate trust takes precedence over cloud Kerberos trust. Ensure that the machines that you want to enable cloud Kerberos trust have this policy **not configured**.

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

1. [Set up Microsoft Entra Kerberos in your hybrid environment](#deploy-microsoft-entra-kerberos).
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

## Unsupported scenarios

The following scenarios aren't supported using Windows Hello for Business cloud Kerberos trust:

- RDP/VDI scenarios using supplied credentials (RDP/VDI can be used with Remote Credential Guard or if a certificate is enrolled into the Windows Hello for Business container)
- Using cloud Kerberos trust for *Run as*
- Signing in with cloud Kerberos trust on a Microsoft Entra hybrid joined device without previously signing in with DC connectivity

<!--Links-->

[ENTRA-1]: /entra/identity/authentication/howto-authentication-passwordless-security-key-on-premises#install-the-azureadhybridauthenticationmanagement-module
[AZ-3]: /azure/active-directory/fundamentals/how-to-find-tenant
[AZ-4]: /azure/active-directory/devices/troubleshoot-device-dsregcmd

[SERV-1]: /windows-server/administration/performance-tuning/role/active-directory-server/capacity-planning-for-active-directory-domain-services

[TS-1]: /troubleshoot/windows-client/group-policy/create-and-manage-central-store

[MEM-1]: /mem/intune/protect/identity-protection-windows-settings
[MEM-3]: /mem/intune/configuration/custom-settings-configure
[MEM-4]: /windows/client-management/mdm/passportforwork-csp
[MEM-5]: /mem/intune/protect/endpoint-security-account-protection-policy
[MEM-6]: /mem/intune/protect/identity-protection-configure

[CSP-1]: /windows/client-management/mdm/passportforwork-csp
