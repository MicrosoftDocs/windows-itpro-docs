---
title: Hybrid cloud Kerberos trust deployment (Windows Hello for Business)
description: Learn the information you need to successfully deploy Windows Hello for Business in a hybrid cloud Kerberos trust scenario.
ms.date: 11/1/2022
appliesto: 
- ✅ <a href=https: //learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10, version 21H2 and later</a>
ms.topic: article
---
# Hybrid cloud Kerberos trust deployment

This document describes Windows Hello for Business functionalities or scenarios that apply to:\
✅ **Deployment type:** [hybrid](hello-how-it-works-technology.md#hybrid-deployment)\
✅ **Trust type:** [cloud Kerberos trust](hello-hybrid-cloud-kerberos-trust.md)\
✅ **Device registration type:** [Azure AD join](hello-how-it-works-technology.md#azure-active-directory-join), [Hybrid Azure AD join](hello-how-it-works-technology.md#hybrid-azure-ad-join)

<br>

---

Windows Hello for Business replaces password sign-in with strong authentication, using an asymmetric key pair. This deployment guide provides the information to successfully deploy Windows Hello for Business in a hybrid cloud Kerberos trust scenario.

## Introduction to cloud Kerberos trust

The goal of **Windows Hello for Business cloud Kerberos trust** is to bring the simplified deployment experience of [*passwordless security key sign-in*][AZ-1] to Windows Hello for Business, and it can be used for new or existing Windows Hello for Business deployments.

*Windows Hello for Business cloud Kerberos trust* uses **Azure AD Kerberos**, which enables a simpler deployment when compared to the *key trust model*:

- No need to deploy a public key infrastructure (PKI) or to change an existing PKI
- No need to synchronize public keys between Azure AD and Active Directory for users to access on-premises resources. This means that there isn't delay between the user's WHFB provisioning and being able to authenticate to Active Directory
- [Passwordless security key sign-in][AZ-1] can be deployed with minimal extra setup

> [!NOTE]
> Windows Hello for Business cloud Kerberos trust is the recommended deployment model when compared to the *key trust model*. It is also the preferred deployment model if you do not need to support certificate authentication scenarios.

## Azure AD Kerberos and cloud Kerberos trust authentication

*Key trust* and *certificate trust* use certificate authentication-based Kerberos for requesting kerberos ticket-granting-tickets (TGTs) for on-premises authentication. This type of authentication requires a PKI for DC certificates, and requires end-user certificates for certificate trust.\
For *Azure AD joined devices* to have single sign-on (SSO) to on-premises resources protected by Active Directory, they must trust and validate the DC certificates. For this to happen, a certificate revocation list (CRL) must be published to an endpoint accessible by the Azure AD joined devices.

*Cloud Kerberos trust* uses *Azure AD Kerberos*, which doesn't require any of the above PKI to request TGTs.

With *Azure AD Kerberos*, Azure AD can issue TGTs for one or more AD domains. Windows can request a TGT from Azure AD when authenticating with Windows Hello for Business, and use the returned TGT for logon or to access traditional AD-based resources. Kerberos service tickets and authorization continue to be controlled by the on-premises Domain Controllers.

When *Azure AD Kerberos* is enabled in an Active Directory domain, an *Azure AD Kerberos server object* is created in the domain. This object:

- Appears as a Read Only Domain Controller (RODC) object, but isn't associated with any physical servers
- Is only used by Azure AD to generate TGTs for the Active Directory domain. The same rules and restrictions used for RODCs apply to the Azure AD Kerberos Server object

:::image type="content" source="images/azuread-kerberos-object.png" alt-text="Active Directory Users and Computers console, showing the computer object representing the Azure AD Kerberos server ":::

For more information about how Azure AD Kerberos enables access to on-premises resources, see [enabling passwordless security key sign-in to on-premises resources][AZ-1].\
For more information about how Azure AD Kerberos works with Windows Hello for Business cloud Kerberos trust, see [Windows Hello for Business authentication technical deep dive](hello-how-it-works-authentication.md#hybrid-azure-ad-join-authentication-using-azure-ad-kerberos-cloud-kerberos-trust).

> [!IMPORTANT]
> When implementing the *hybrid cloud Kerberos trust* deployment model, you *must* ensure that you have an adequate number of *read-write domain controllers* in each Active Directory site where users will be authenticating with Windows Hello for Business. For more information, see [Capacity planning for Active Directory][SERV-1].

## Prerequisites

| Requirement | Notes |
| --- | --- |
| Multi-factor Authentication | This requirement can be met using [Azure AD multi-factor authentication](/azure/active-directory/authentication/howto-mfa-getstarted), multi-factor authentication provided through AD FS, or a comparable solution. |
| Windows 10, version 21H2 or Windows 11 and later | If you're using Windows 10 21H2, KB5010415 must be installed. If you're using Windows 11 21H2, KB5010414 must be installed. There's no Windows version support difference between Azure AD joined and Hybrid Azure AD-joined devices. |
| Windows Server 2016 or later Domain Controllers | If you're using Windows Server 2016, [KB3534307][SUP-1] must be installed. If you're using Server 2019, [KB4534321][SUP-2] must be installed. |
| Azure AD Kerberos PowerShell module | This module is used for enabling and managing Azure AD Kerberos. It's available through the [PowerShell Gallery](https://www.powershellgallery.com/packages/AzureADHybridAuthenticationManagement).|
| Device management | Windows Hello for Business cloud Kerberos trust can be managed with group policy or through mobile device management (MDM) policy. This feature is disabled by default and must be enabled using policy. |

### Unsupported scenarios

The following scenarios aren't supported using Windows Hello for Business cloud Kerberos trust:

- On-premises only deployments
- RDP/VDI scenarios using supplied credentials (RDP/VDI can be used with Remote Credential Guard or if a certificate is enrolled into the Windows Hello for Business container)
- Using cloud Kerberos trust for "Run as"
- Signing in with cloud Kerberos trust on a Hybrid Azure AD joined device without previously signing in with DC connectivity

> [!NOTE]
> The default security policy for AD does not grant permission to sign high privilege accounts on to on-premises resources with cloud Kerberos trust or FIDO2 security keys.
>
> To unblock the accounts, use Active Directory Users and Computers to modify the msDS-NeverRevealGroup property of the Azure AD Kerberos Computer object `CN=AzureADKerberos,OU=Domain Controllers,<domain-DN>`.

## Deployment steps

Deploying *Windows Hello for Business cloud Kerberos trust* consists of two steps:

1. Set up *Azure AD Kerberos*
1. Configure a Windows Hello for Business policy and deploy it to the devices

### Deploy Azure AD Kerberos

If you've already deployed on-premises SSO for passwordless security key sign-in, then you've already deployed Azure AD Kerberos in your hybrid environment. You don't need to redeploy or change your existing Azure AD Kerberos deployment to support Windows Hello for Business and you can skip this section.

If you haven't deployed Azure AD Kerberos, follow the instructions in the [Enable passwordless security key sign-in to on-premises resources by using Azure AD][AZ-2] documentation. This page includes information on how to install and use the Azure AD Kerberos PowerShell module. Use the module to create an Azure AD Kerberos Server object for the domains where you want to use Windows Hello for Business cloud Kerberos trust.

### Configure Windows Hello for Business policy

After setting up the *Azure AD Kerberos object*, Windows Hello for business cloud Kerberos trust must be enabled on your Windows devices. Follow the instructions below to configure your devices using either Microsoft Intune or group policy (GPO).

#### [:::image type="icon" source="../../images/icons/intune.svg"::: **Intune**](#tab/intune)

Windows Hello for Business can be enabled using device enrollment or device configuration policy. Device enrollment policy is only applied at device enrollment time. Any modifications to the configuration in Intune won't apply to already enrolled devices. Device configuration policy is applied after device enrollment. Changes to this policy type in Intune are applied to already enrolled devices.

The cloud Kerberos trust policy needs to be configured using a custom template and is configured separately from enabling Windows Hello from Business.

### Enable Windows Hello for Business

If you already enabled Windows Hello for Business, you can skip to **configure the cloud Kerberos trust policy**. Otherwise, follow the instructions at [Integrate Windows Hello for Business with Microsoft Intune](/mem/intune/protect/windows-hello) to create a Windows Hello for Business device enrollment policy.

You can also follow these steps to create a device configuration policy instead of using the device enrollment policy:

1. Sign in to the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Select **Devices** > **Windows** > **Configuration Profiles** > **Create profile**.
1. For Platform, select **Windows 10 and later**.
1. For Profile Type, select **Templates** and select the **Identity Protection** Template.
1. Name the profile with a familiar name. For example, "Windows Hello for Business".
1. In **Configurations settings**, set the **Configure Windows Hello for Business** option to **Enable**.
1. After setting Configure Windows Hello for Business to Enable, multiple policy options become available. These policies are optional to configure. More information on these policies is available in our documentation on managing [Windows Hello for Business in your organization](hello-manage-in-organization.md#mdm-policy-settings-for-windows-hello-for-business). We recommend setting **Use a Trusted Platform Module (TPM)** to **Enable**.

    [![Intune custom device configuration policy creation](./images/hello-intune-enable.png)](./images/hello-intune-enable-large.png#lightbox)

Assign the policy to a security group that contains as members the devices or users that you want to configure.

Windows Hello for Business settings are also available in the settings catalog. For more information, see [Use the settings catalog to configure settings on Windows and macOS devices - preview](/mem/intune/configuration/settings-catalog).

### Configure cloud Kerberos trust policy

To configure the *cloud Kerberos trust* policy, follow the steps below:

1. Sign in to the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Select **Devices** > **Windows** > **Configuration Profiles** > **Create profile**.
1. For Profile Type, select **Templates** and select the **Custom** Template.
1. Name the profile with a familiar name. For example, "Windows Hello for Business cloud Kerberos trust".
1. In Configuration Settings, add a new configuration with the following settings:

    | Setting |
    |--------|
    | <ul><li>Name: **Windows Hello for Business cloud Kerberos trust** or another familiar name</li><li>Description (optional): *Enable Windows Hello for Business cloud Kerberos trust for sign-in and on-premises SSO*</li><li>OMA-URI: **`./Device/Vendor/MSFT/PassportForWork/`*\<tenant ID>*`/Policies/UseCloudTrustForOnPremAuth`** </li><li>Data type: **Boolean** </li><li>Value: **True**</li></ul>|

    >[!IMPORTANT]
    >*Tenant ID* in the OMA-URI must be replaced with the tenant ID for your Azure AD tenant. See [How to find your Azure AD tenant ID][AZ-3] for instructions on looking up your tenant ID.

    [![Intune custom-device configuration policy creation](./images/hello-cloud-trust-intune.png)](./images/hello-cloud-trust-intune-large.png#lightbox)

Assign the policy to a security group that contains as members the devices or users that you want to configure.

#### [:::image type="icon" source="../../images/icons/group-policy.svg"::: **GPO**](#tab/gpo)

Hybrid Azure AD joined organizations can use Windows Hello for Business Group Policy to manage the feature. Group Policy can be configured to enable users to enroll and use Windows Hello for Business.

The Enable Windows Hello for Business Group Policy setting is used by Windows to determine if a user should attempt to enroll a credential. A user will only attempt enrollment if this policy is configured to enabled.  

You can configure the Enable Windows Hello for Business Group Policy setting for computers or users. Deploying this policy setting to computers results in all users that sign-in that computer to attempt a Windows Hello for Business enrollment. Deploying this policy setting to a user results in only that user attempting a Windows Hello for Business enrollment. Additionally, you can deploy the policy setting to a group of users so only those users attempt a Windows Hello for Business enrollment. If both user and computer policy settings are deployed, the user policy setting has precedence.

cloud Kerberos trust requires setting a dedicated policy for it to be enabled. This policy is only available as a computer configuration.

> [!NOTE]
> If you deployed Windows Hello for Business configuration using both Group Policy and Microsoft Intune, Group Policy settings will take precedence and Intune settings will be ignored. For more information about deploying Windows Hello for Business configuration using Microsoft Intune, see [Windows device settings to enable Windows Hello for Business in Intune][MEM-1] and [PassportForWork CSP][WIN-1]. For more information about policy conflicts, see [Policy conflicts from multiple policy sources](hello-manage-in-organization.md#policy-conflicts-from-multiple-policy-sources).

#### Update administrative templates

You may need to update your Group Policy definitions to be able to configure the cloud Kerberos trust policy. You can copy the ADMX and ADML files from a Windows client that supports cloud Kerberos trust to their respective language folder on your Group Policy management server. Windows Hello for Business settings are in the *Passport.admx* and *Passport.adml* files.

You can also create a Group Policy Central Store and copy them their respective language folder. For more information, see [How to create and manage the Central Store for Group Policy Administrative Templates in Windows][TS-1].

#### Create the Windows Hello for Business group policy object

You can configure Windows devices to enable *Windows Hello for Business cloud Kerberos trust* using a Group Policy Object (GPO).

1. Using the Group Policy Management Console (GPMC), scope a domain-based Group Policy to computer objects in Active Directory
1. Edit the Group Policy object from Step 1
1. Expand **Computer Configuration > Administrative Templates > Windows Components > Windows Hello for Business**
1. Select **Use Windows Hello for Business** > **Enable** > **OK**
1. Select **Use cloud Kerberos trust for on-premises authentication** > **Enable** > **OK**
1. *Optional, but recommended*: select **Use a hardware security device** > **Enable** > **OK**

---

> [!IMPORTANT]
> If the *Use certificate for on-premises authentication* policy is enabled, *certificate trust* will take precedence over *cloud Kerberos trust*. Ensure that the machines that you want to enable *cloud Kerberos trust* have this policy *not configured* or *disabled*.

## Provision Windows Hello for Business

The Windows Hello for Business provisioning process begins immediately after a user has signed in if certain prerequisite checks are passed. Windows Hello for Business *cloud Kerberos trust* adds a prerequisite check for Hybrid Azure AD-joined devices when cloud Kerberos trust is enabled by policy.

You can determine the status of the prerequisite check by viewing the **User Device Registration** admin log under **Applications and Services Logs** > **Microsoft** > **Windows**.\
This information is also available using the `dsregcmd /status` command from a console. For more information, see [dsregcmd][AZ-4].

  ![Cloud Kerberos trust prerequisite check in the user device registration log](./images/cloud-trust-prereq-check.png)

The cloud Kerberos trust prerequisite check detects whether the user has a partial TGT before allowing provisioning to start. The purpose of this check is to validate whether Azure AD Kerberos is set up for the user's domain and tenant. If Azure AD Kerberos is set up, the user will receive a partial TGT during sign-in with one of their other unlock methods. This check has three states: Yes, No, and Not Tested. The *Not Tested* state is reported if cloud Kerberos trust isn't being enforced by policy or if the device is Azure AD joined.

> [!NOTE]
> The cloud Kerberos trust prerequisite check isn't done on Azure AD-joined devices. If Azure AD Kerberos isn't provisioned, a user on an Azure AD joined device will still be able to sign in, but won't have SSO to on-premises resources secured by Active Directory.

### PIN Setup

This is the process that occurs after a user signs in, to enroll in Windows Hello for Business:

1. The user is prompted with a full screen page to use Windows Hello with the organization account. The user selects **OK**
1. The provisioning flow proceeds to the multi-factor authentication portion of the enrollment.  Provisioning informs the user that it's actively attempting to contact the user through their configured form of MFA. The provisioning process doesn't proceed until authentication succeeds, fails or times out. A failed or timeout MFA results in an error and asks the user to retry
1. After a successful MFA, the provisioning flow asks the user to create and validate a PIN. This PIN must observe any PIN complexity policies configured on the device

:::image type="content" source="images/haadj-whfb-pin-provisioning.gif" alt-text="Animation showing a user logging on to an HAADJ device with a password, and being prompted to enroll in Windows Hello for Business.":::

### Sign-in

Once a user has set up a PIN with *cloud Kerberos trust*, it can be used **immediately** for sign-in. On a Hybrid Azure AD joined device, the first use of the PIN requires line of sight to a DC. Once the user has signed in or unlocked with the DC, cached sign-in can be used for subsequent unlocks without line of sight or network connectivity.

## Migrate from key trust deployment model to cloud Kerberos trust

If you deployed Windows Hello for Business using the *key trust model*, and want to migrate to the *cloud Kerberos trust model*, follow these steps:

1. [Set up Azure AD Kerberos in your hybrid environment](#deploy-azure-ad-kerberos)
1. [Enable cloud Kerberos trust via Group Policy or Intune](#configure-windows-hello-for-business-policy)
1. For hybrid Azure AD joined devices, sign out and sign in to the device using Windows Hello for Business

> [!NOTE]
> For hybrid Azure AD joined devices, users must perform the first sign in with new credentials while having line of sight to a DC.
>
> Without line of sight to a DC, even when the client is configured to use *cloud Kerberos trust*, the system will fall back to *key trust* if *cloud Kerberos trust* login fails.

## Migrate from certificate trust deployment model to cloud Kerberos trust

> [!IMPORTANT]
> There is no *direct* migration path from *certificate trust* deployment to *cloud Kerberos trust* deployment. The Windows Hello container must be deleted before you can migrate to cloud Kerberos trust.

If you deployed Windows Hello for Business using the *certificate trust model*, and want to use the *cloud Kerberos trust model*, you must redeploy Windows Hello for Business by following these steps:

1. Disable the certificate trust policy
1. [Enable cloud Kerberos trust via Group Policy or Intune](#configure-windows-hello-for-business-policy)
1. Remove the certificate trust credential using the command `certutil -deletehellocontainer` from the user context
1. Sign out and sign back in
1. Provision Windows Hello for Business using a method of your choice

> [!NOTE]
> For hybrid Azure AD joined devices, users must perform the first sign in with new credentials while having line of sight to a DC.

## Troubleshooting

If you encounter issues or want to share feedback about Windows Hello for Business cloud Kerberos trust, share via the *Windows Feedback Hub* app by following these steps:

1. Open **Feedback Hub**, and make sure that you're signed in
1. Submit feedback by selecting the following categories:
  - Category: Security and Privacy
  - Subcategory: Windows Hello PIN

## Frequently Asked Questions

### Does Windows Hello for Business cloud Kerberos trust work in my on-premises environment?

This feature doesn't work in a pure on-premises AD domain services environment.

### Does Windows Hello for Business cloud Kerberos trust work in a Windows sign-in with RODC present in the hybrid environment?

Windows Hello for Business cloud Kerberos trust looks for a writeable DC to exchange the partial TGT. As long as you have at least one writeable DC per site, login with cloud Kerberos trust will work.

### Do I need line of sight to a domain controller to use Windows Hello for Business cloud Kerberos trust?

Windows Hello for Business cloud Kerberos trust requires line of sight to a domain controller when:

- a user signs-in for the first time or unlocks with Windows Hello for Business after provisioning. 
- attempting to access on-premises resources secured by Active Directory. 

### Can I use RDP/VDI with Windows Hello for Business cloud Kerberos trust?

Windows Hello for Business cloud Kerberos trust can't be used as a supplied credential with RDP/VDI. Similar to key trust, cloud Kerberos trust can be used for RDP with [remote credential guard][WIN-2] or if a [certificate is enrolled into Windows Hello for Business](hello-deployment-rdp-certs.md) for this purpose.

### Do all my domain controllers need to be fully patched as per the prerequisites for me to use Windows Hello for Business cloud Kerberos trust?

No, only the number necessary to handle the load from all cloud Kerberos trust devices.

---

[AZ-1]: /azure/active-directory/authentication/howto-authentication-passwordless-security-key-on-premises
[AZ-2]: /azure/active-directory/authentication/howto-authentication-passwordless-security-key-on-premises#install-the-azure-ad-kerberos-powershell-module
[AZ-3]: /azure/active-directory/fundamentals/active-directory-how-to-find-tenant
[AZ-4]: /azure/active-directory/devices/troubleshoot-device-dsregcmd

[SERV-1]: /windows-server/administration/performance-tuning/role/active-directory-server/capacity-planning-for-active-directory-domain-services
[TS-1]: /troubleshoot/windows-client/group-policy/create-and-manage-central-store

[MEM-1]: /mem/intune/protect/identity-protection-windows-settings
[WIN-1]: /windows/client-management/mdm/passportforwork-csp
[WIN-2]: /windows/security/identity-protection/remote-credential-guard
[SUP-1]: https://support.microsoft.com/topic/january-23-2020-kb4534307-os-build-14393-3474-b181594e-2c6a-14ea-e75b-678efea9d27e
[SUP-2]: https://support.microsoft.com/topic/january-23-2020-kb4534321-os-build-17763-1012-023e84c3-f9aa-3b55-8aff-d512911c459f
