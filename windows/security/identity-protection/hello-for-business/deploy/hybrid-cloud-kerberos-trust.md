---
title: Windows Hello for Business cloud Kerberos trust deployment guide
description: Learn how to deploy Windows Hello for Business in a cloud Kerberos trust scenario.
ms.date: 03/12/2024
ms.topic: tutorial
---

# Cloud Kerberos trust deployment guide

[!INCLUDE [apply-to-hybrid-cloud-kerberos-trust](includes/apply-to-hybrid-cloud-kerberos-trust.md)]

[!INCLUDE [requirements](includes/requirements.md)]

> [!div class="checklist"]
>
> - [Authentication](index.md#authentication-to-microsoft-entra-id)
> - [Device configuration](index.md#device-configuration-options)
> - [Windows requirements](index.md#windows-requirements)
> - [Windows Server requirements](index.md#windows-server-requirements)
> - [Prepare users to use Windows Hello](prepare-users.md)

> [!IMPORTANT]
> When implementing the cloud Kerberos trust deployment model, you *must* ensure that you have an adequate number of *read-write domain controllers* in each Active Directory site where users will be authenticating with Windows Hello for Business. For more information, see [Capacity planning for Active Directory][SERV-1].

## Deployment steps

> [!div class="checklist"]
> Once the prerequisites are met, deploying Windows Hello for Business consists of the following steps:
>
> - [Deploy Microsoft Entra Kerberos](#deploy-microsoft-entra-kerberos)
> - [Configure Windows Hello for Business policy settings](#configure-windows-hello-for-business-policy-settings)
> - [Enroll in Windows Hello for Business](#enroll-in-windows-hello-for-business)

## Deploy Microsoft Entra Kerberos

If you've already deployed on-premises SSO for passwordless security key sign-in, then Microsoft Entra Kerberos is already deployed in your organization. You don't need to redeploy or change your existing Microsoft Entra Kerberos deployment to support Windows Hello for Business, and you can skip to the [Configure Windows Hello for Business policy settings](#configure-windows-hello-for-business-policy-settings) section.

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

## Configure Windows Hello for Business policy settings

After setting up the Microsoft Entra Kerberos object, Windows Hello for business must be enabled and configured to use cloud Kerberos trust. There are two policy settings required to configure Windows Hello for Business in a cloud Kerberos trust model:

- [Use Windows Hello for Business](../policy-settings.md#use-windows-hello-for-business)
- [Use cloud trust for on-premises authentication](../policy-settings.md#use-cloud-trust-for-on-premises-authentication)

Another optional, but recommended, policy setting is:

- [Use a hardware security device](../policy-settings.md#use-a-hardware-security-device)

> [!IMPORTANT]
> If the **Use certificate for on-premises authentication** policy is enabled, certificate trust takes precedence over cloud Kerberos trust. Ensure that the machines that you want to enable cloud Kerberos trust have this policy **not configured**.

The following instructions explain how to configure your devices using either Microsoft Intune or group policy (GPO).

# [:::image type="icon" source="images/intune.svg"::: **Intune/CSP**](#tab/intune)

> [!NOTE]
> Review the article [Configure Windows Hello for Business using Microsoft Intune](../configure.md#configure-windows-hello-for-business-using-microsoft-intune) to learn about the different options offered by Microsoft Intune to configure Windows Hello for Business.

If the Intune tenant-wide policy is enabled and configured to your needs, you only need to enable the policy setting **Use Cloud Trust For On Prem Auth**. Otherwise, both settings must be configured.

[!INCLUDE [intune-settings-catalog-1](../../../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| **Windows Hello for Business** | Use Windows Hello For Business | true |
| **Windows Hello for Business** | Use Cloud Trust For On Prem Auth | Enabled |
| **Windows Hello for Business** | Require Security Device | true |

[!INCLUDE [intune-settings-catalog-2](../../../../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][MEM-1] with the [PassportForWork CSP][CSP-1].

| Setting |
|--------|
| - **OMA-URI:** `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/UsePassportForWork`<br>- **Data type:** `bool`<br>- **Value:** `True`|
| - **OMA-URI:** `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/UseCloudTrustForOnPremAuth`<br>- **Data type:** `bool`<br>- **Value:** `True`|
| - **OMA-URI:** `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/RequireSecurityDevice`<br>- **Data type:** `bool`<br>- **Value:** `True`|

# [:::image type="icon" source="images/group-policy.svg"::: **GPO**](#tab/gpo)

[!INCLUDE [gpo-enable-whfb](includes/gpo-enable-whfb.md)]

> [!NOTE]
> Cloud Kerberos trust requires setting a dedicated policy for it to be enabled. This policy setting is only available as a computer configuration.
>
>You may need to update your Group Policy definitions to be able to configure the cloud Kerberos trust policy. You can copy the ADMX and ADML files from a Windows client that supports cloud Kerberos trust to their respective language folder on your Group Policy management server. Windows Hello for Business settings are in the *Passport.admx* and *Passport.adml* files.
>
>You can also create a Group Policy Central Store and copy them their respective language folder. For more information, see [How to create and manage the Central Store for Group Policy Administrative Templates in Windows][TS-1].

[!INCLUDE [gpo-settings-1](../../../../../includes/configure/gpo-settings-1.md)]

| Group policy path | Group policy setting | Value |
| - | - | - |
| **Computer Configuration\Administrative Templates\Windows Components\Windows Hello for Business**<br>or<br> **User Configuration\Administrative Templates\Windows Components\Windows Hello for Business**|Use Windows Hello for Business| **Enabled**|
| **Computer Configuration\Administrative Templates\Windows Components\Windows Hello for Business** |Use cloud Kerberos trust for on-premises authentication| **Enabled**|
| **Computer Configuration\Administrative Templates\Windows Components\Windows Hello for Business** |Use a hardware security device| **Enabled**|

[!INCLUDE [gpo-settings-2](../../../../../includes/configure/gpo-settings-2.md)]

> [!TIP]
> The best way to deploy the Windows Hello for Business GPO is to use security group filtering. Only members of the targeted security group will provision Windows Hello for Business, enabling a phased rollout. This solution allows linking the GPO to the domain, ensuring the GPO is scoped to all security principals. The security group filtering ensures that only the members of the global group receive and apply the GPO, which results in the provisioning of Windows Hello for Business.

---

If you deploy Windows Hello for Business configuration using both Group Policy and Intune, Group Policy settings take precedence, and Intune settings are ignored. For more information about policy conflicts, see [Policy conflicts from multiple policy sources](../configure.md#policy-conflicts-from-multiple-policy-sources).

More policy settings can be configured to control the behavior of Windows Hello for Business. For more information, see [Windows Hello for Business policy settings](../policy-settings.md).

## Enroll in Windows Hello for Business

The Windows Hello for Business provisioning process begins immediately after a user signs in, if the prerequisite checks pass. Windows Hello for Business *cloud Kerberos trust* adds a prerequisite check for Microsoft Entra hybrid joined devices when cloud Kerberos trust is enabled by policy.

You can determine the status of the prerequisite check by viewing the **User Device Registration** admin log under **Applications and Services Logs** > **Microsoft** > **Windows**.\
This information is also available using the `dsregcmd.exe /status` command from a console. For more information, see [dsregcmd][AZ-4].

The cloud Kerberos trust prerequisite check detects whether the user has a partial TGT before allowing provisioning to start. The purpose of this check is to validate whether Microsoft Entra Kerberos is set up for the user's domain and tenant. If Microsoft Entra Kerberos is set up, the user receives a partial TGT during sign-in with one of their other unlock methods. This check has three states: Yes, No, and Not Tested. The *Not Tested* state is reported if cloud Kerberos trust isn't enforced by policy or if the device is Microsoft Entra joined.

> [!NOTE]
> The cloud Kerberos trust prerequisite check isn't done on Microsoft Entra joined devices. If Microsoft Entra Kerberos isn't provisioned, a user on a Microsoft Entra joined device will still be able to sign in, but won't have SSO to on-premises resources secured by Active Directory.

### User experience

[!INCLUDE [user-experience](includes/user-experience.md)]

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=36dc8679-0fcc-4abf-868d-97ec8b749da7 alt-text="Video showing the Windows Hello for Business enrollment steps after signing in with a password."]

Once a user completes enrollment with cloud Kerberos trust, the Windows Hello gesture can be used **immediately** for sign-in. On a Microsoft Entra hybrid joined device, the first use of the PIN requires line of sight to a DC. Once the user signs in or unlocks with the DC, cached sign-in can be used for subsequent unlocks without line of sight or network connectivity.

After enrollment, Microsoft Entra Connect synchronizes the user's key from Microsoft Entra ID to Active Directory.

### Sequence diagrams

To better understand the provisioning flows, review the following sequence diagrams based on the device join and authentication type:

- [Provisioning for Microsoft Entra joined devices with managed authentication](../how-it-works-provisioning.md#provisioning-for-microsoft-entra-joined-devices-with-managed-authentication)
- [Provisioning for Microsoft Entra joined devices with federated authentication](../how-it-works-provisioning.md#provisioning-for-microsoft-entra-joined-devices-with-federated-authentication)
- [Provisioning in a cloud Kerberos trust deployment model with managed authentication](../how-it-works-provisioning.md#provisioning-in-a-cloud-kerberos-trust-deployment-model-with-managed-authentication)

To better understand the authentication flows, review the following sequence diagram:

- [Microsoft Entra join authentication to Active Directory using cloud Kerberos trust](../how-it-works-authentication.md#microsoft-entra-join-authentication-to-active-directory-using-cloud-kerberos-trust)

## Migrate from key trust deployment model to cloud Kerberos trust

If you deployed Windows Hello for Business using the key trust model, and want to migrate to the cloud Kerberos trust model, follow these steps:

1. [Set up Microsoft Entra Kerberos in your hybrid environment](#deploy-microsoft-entra-kerberos)
1. [Enable cloud Kerberos trust via Group Policy or Intune](#configure-windows-hello-for-business-policy-settings)
1. For Microsoft Entra joined devices, sign out and sign in to the device using Windows Hello for Business

> [!NOTE]
> For Microsoft Entra hybrid joined devices, users must perform the first sign in with new credentials while having line of sight to a DC.

## Migrate from certificate trust deployment model to cloud Kerberos trust

> [!IMPORTANT]
> There is no *direct* migration path from a certificate trust deployment to a cloud Kerberos trust deployment. The Windows Hello container must be deleted before you can migrate to cloud Kerberos trust.

If you deployed Windows Hello for Business using the certificate trust model, and want to use the cloud Kerberos trust model, you must redeploy Windows Hello for Business by following these steps:

1. Disable the certificate trust policy
1. [Enable cloud Kerberos trust via Group Policy or Intune](#configure-windows-hello-for-business-policy-settings)
1. Remove the certificate trust credential using the command `certutil.exe -deletehellocontainer` from the user context
1. Sign out and sign back in
1. Provision Windows Hello for Business using a method of your choice

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

[AZ-4]: /entra/identity/devices/troubleshoot-device-dsregcmd
[CSP-1]: /windows/client-management/mdm/passportforwork-csp
[ENTRA-1]: /entra/identity/authentication/howto-authentication-passwordless-security-key-on-premises#install-the-azureadhybridauthenticationmanagement-module
[MEM-1]: /mem/intune/configuration/custom-settings-configure
[SERV-1]: /windows-server/administration/performance-tuning/role/active-directory-server/capacity-planning-for-active-directory-domain-services
[TS-1]: /troubleshoot/windows-client/group-policy/create-and-manage-central-store
