---
title: Hybrid Cloud Trust Deployment (Windows Hello for Business)
description: Learn the information you need to successfully deploy Windows Hello for Business in a hybrid cloud trust scenario.
keywords: identity, PIN, biometric, Hello, passport, WHFB, hybrid, cert-trust
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
audience: ITPro
author: mapalko
ms.author: mapalko
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 1/05/2022
ms.reviewer: 
---
# Hybrid Cloud Trust Deployment

Applies to

- Windows 10, version 21H2
- Windows 11 and later

Windows Hello for Business replaces username and password sign-in to Windows with strong user authentication based on asymmetric key pair. The following deployment guide provides the information needed to successfully deploy Windows Hello for Business in a hybrid cloud trust scenario.

## Introduction to Cloud Trust

The goal of the Windows Hello for Business cloud trust deployment model is to bring the benefits of the simplified deployment experience of [on-premises SSO with passwordless security keys](/azure/active-directory/authentication/howto-authentication-passwordless-security-key-on-premises) to Windows Hello for Business. This deployment model can be used for new Windows Hello for Business deployments or existing deployments can move to this model using policy controls.

Windows Hello for Business cloud trust uses Azure Active Directory (AD) Kerberos to address pain points of the key trust deployment model:

- Windows Hello for Business cloud trust provides a simpler deployment experience because it does not require the deployment of public key infrastructure (PKI) or changes to existing PKI.
- Cloud trust does not require syncing of public keys between Azure AD and on-premises domain controllers (DCs) for users to access on-premises resources and applications. This means there isn't a delay between the user provisioning and being able to authenticate.
- Deploying Windows Hello for Business cloud trust enables you to also deploy passwordless security keys with minimal additional setup.

Windows Hello for Business cloud trust is recommended instead of key trust if you meet the prerequisites to deploy cloud trust. Cloud trust is the preferred deployment model if you do not need to support certificate authentication scenarios.

## Azure Active Directory Kerberos and Cloud Trust Authentication

Key trust and certificate trust authentication use kerberos based smart card/certificate authentication for requesting kerberos ticket-granting-tickets (TGTs) from a domain controller for on-premises authentication. This type of authentication requires PKI for domain controller certificates, and requires end-user certificates for certificate trust. For single sign-on (SSO) to on-premises resources from Azure AD joined devices, additional PKI configuration is needed to publish a certificate revocation list (CRL) to a public endpoint. Cloud trust uses Azure AD Kerberos which does not require any of the above PKI to get the user a TGT.

With Azure AD Kerberos, Azure AD can issue TGTs for one or more of your AD domains. Using this functionality, Windows can request a TGT from Azure AD when authenticating with Windows Hello for Business and then use the returned TGT for logon or to access traditional AD-based resources. Kerberos service tickets and authorization continue to be controlled by your on-premises AD DCs.

When you enable Azure AD Kerberos in a domain, an Azure AD Kerberos Server object is created in your on-premises AD. This object will appear as a Read Only Domain Controller (RODC) object but is not associated with any physical servers. This resource is only used by Azure Active Directory to generate TGTs for your Active Directory Domain. The same rules and restrictions used for RODCs apply to the Azure AD Kerberos Server object.

More details on how Azure AD Kerberos enables access to on-premises resources are available in our documentation on [enabling passwordless security key sign-in to on-premises resources](/azure/active-directory/authentication/howto-authentication-passwordless-security-key-on-premises). There is also additional information on how this works with Windows Hello for Business cloud trust in the [Windows Hello for Business authentication technical deep dive](hello-how-it-works-authentication.md#hybrid-azure-ad-join-authentication-using-azure-ad-kerberos-cloud-trust).

## Prerequisites

| Requirement | Notes |
| --- | --- |
| Multi-factor Authentication | This requirement can be met using [Azure AD Multi-Factor Authentication](/azure/active-directory/authentication/howto-mfa-getstarted.md), multi-factor authentication provided through AD FS, or a comparable solution. |
| Windows 10 version 21H2 or Windows 11 and later | There is no Windows version support difference between Azure AD joined and Hybrid Azure AD joined devices. |
| Windows Server 2016 or later Domain Controllers | Domain controllers should be fully patched to support updates needed for Azure AD Kerberos. If you are using Windows Server 2016 make sure [KB3534307](https://support.microsoft.com/en-us/topic/january-23-2020-kb4534307-os-build-14393-3474-b181594e-2c6a-14ea-e75b-678efea9d27e) is installed. If you are using Server 2019 make sure [KB4534321](https://support.microsoft.com/en-us/topic/january-23-2020-kb4534321-os-build-17763-1012-023e84c3-f9aa-3b55-8aff-d512911c459f) is installed. |
| Azure AD Connect version 1.4.32.0 or later | This version packages the tools for setting up Azure AD Kerberos. Alternatively the required tools can be installed from powershell gallery. |
| Device management | Windows Hello for Business cloud trust can be managed with group policy or through Microsoft Intune. |

### Unsupported Scenarios

The following scenarios are not supported using Windows Hello for Business cloud trust.

- On-premises only deployments
- RDP using supplied credentials
- Scenarios that require a certificate for authentication
- Using cloud trust for "Run as"

## Deployment Instructions

Deploying Windows Hello for Business cloud trust consists of two steps:

1. Azure AD Kerberos in your hybrid environment.
1. Configure Windows Hello for Business policy and deploy it to devices you wish to use Windows Hello for Business.

### Deploy Azure AD Kerberos

NEEDS UPDATES
If you have already deployed [on-premises SSO for passwordless security key sign-in](/azure/active-directory/authentication/howto-authentication-passwordless-security-key-on-premises), then you have already deployed Azure AD Kerberos in your hybrid environment. You do not need to re-deploy or change your existing Azure AD Kerberos deployment to support Windows Hello for Business and you can skip this section.

If you have not deployed [on]

### Configure Windows Hello for Business

Windows Hello for business cloud trust must be enabled using policy. By default, cloud trust will not be used by Hybrid Azure AD joined or Azure AD joined devices.

- [Enable using Group Policy](####Configure-Using-Group-Policy)
- [Enable using Intune](####Configure-using-intune)

#### Configure Using Group Policy

Hybrid Azure AD joined organizations can use the Windows Hello for Business Group Policy object to delivers group policy settings to enable users to enroll and use Windows Hello for Business.

The Enable Windows Hello for Business Group Policy setting is the configuration needed for Windows to determine if a user should attempt to enroll for Windows Hello for Business. A user will only attempt enrollment if this policy setting is configured to enabled.  

You can configure the Enable Windows Hello for Business Group Policy setting for computer or users. Deploying this policy setting to computers results in all users that sign-in that computer to attempt a Windows Hello for Business enrollment. Deploying this policy setting to a user results in only that user attempting a Windows Hello for Business enrollment. Additionally, you can deploy the policy setting to a group of users so only those users attempt a Windows Hello for Business enrollment. If both user and computer policy settings are deployed, the user policy setting has precedence.

Cloud trust requires setting a dedicated policy for it to be enabled. This policy is only available as a computer configuration.

> [!NOTE]
> If you deployed Windows Hello for Business configuration using both Group Policy and Microsoft Intune, Group Policy settings will take precedence and Intune settings will be ignored. For more details about deploying Windows Hello for Business configuration using Microsoft Intune, see [Windows device settings to enable Windows Hello for Business in Intune](/mem/intune/protect/identity-protection-windows-settings) and [PassportForWork CSP](/windows/client-management/mdm/passportforwork-csp). For more details about policy conflicts, see [Policy conflicts from multiple policy sources](./hello-manage-in-organization.md#policy-conflicts-from-multiple-policy-sources)

##### Update Group Policy Objects

You may need to update your Group Policy definitions to be able to configure the cloud trust policy. You can copy the .ADMX and .ADML files from a Windows 10 21H2 or Windows 11 device that supports cloud trust to their respective language folder on your Group Policy management server. Windows Hello for Business settings are in the Passport.admx and Passport.adml files.

You can also create a Group Policy Central Store and copy them their respective language folder. See [How to create and manage the Central Store for Group Policy Administrative Templates in Windows](/troubleshoot/windows-client/group-policy/create-and-manage-central-store) for more information.

##### Create the Windows Hello for Business Group Policy object

Sign-in a domain controller or management workstations with *Domain Admin* equivalent credentials.

1. Start the **Group Policy Management Console** (gpmc.msc)
1. Expand the domain and select the **Group Policy Object** node in the navigation pane.
1. Right-click **Group Policy object** and select **New**.
1. Type *Enable Windows Hello for Business* in the name box and click **OK**.
1. In the content pane, right-click the **Enable Windows Hello for Business** Group Policy object and click **Edit**.
1. In the navigation pane, expand **Policies** under **Device Configuration**.
1. Expand **Administrative Templates > Windows Component**, and select **Windows Hello for Business**.
1. In the content pane, double-click **Use Windows Hello for Business**. Click **Enable** and click **OK**.
1. In the content pane, double-click **Use cloud trust for on-premises authentication**. Click **Enable** and click **OK**.
1. *Optional but recommended*: In the content pane, double-click **Use a hardware security device**. Click **Enable** and click **OK**.

This group policy should be targeted at the computer group that you have created for that you want to use Windows Hello for Business. 

If the Use certificate for on-premises authentication is enabled, we will always enforce certificate trust on the client. Please make sure that any machines that you want to use Windows Hello for Business cloud trust have this policy not configured or disabled.

#### Configure Using Intune

Windows Hello for Business can be enabled using device enrollment policy or device configuration policy. Device enrollment policy is only applied at device enrollment time and any modifications to the configuration in Intune will not apply to already enrolled devices. Device configuration policy is applied after device enrollment and changes made in Intune will be applied to devices that are already enrolled.

The cloud trust policy needs to be configured using a custom template and must be configured separately from enabling Windows Hello from Business.

##### Create a user Group that will be targeted for Windows Hello for Business

If you have an existing group that you plan to target for enabling Windows Hello for Business cloud trust, you can skip this step.

1. Sign in to the [Microsoft Endpoint Manager admin center](https://endpoint.microsoft.com/).
1. Browse to **Groups** and select **New group**
1. Configure the following group settings:
    1. Group type: "Security"
    1. Group name: "WHFBCloudTrustUsers" or a group name of your choosing
    1. Membership type: Assigned
1. Select **Members** and add users that you want to target with Windows Hello for Business cloud trust.

You can also create a group through the Azure portal instead of using the Microsoft Endpoint Manager admin center.

##### Enable Windows Hello for Business

If you have already enabled Windows Hello for Business for a target set of users or devices, you can skip below to configuring the cloud trust policy. Otherwise, follow the instructions at [Integrate Windows Hello for Business with Microsoft Intune](mem/intune/protect/windows-hello) to create a Windows Hello for Business device enrollment policy.

To create a device configuration policy instead of a device enrollment policy, you can follow these steps:

1. Sign in to the [Microsoft Endpoint Manager admin center](https://endpoint.microsoft.com/).
1. Browse to Devices > Windows > Configuration Profiles > Create profile.
1. For Platform, select Windows 10 and later.
1. For Profile Type, select **Templates** and select the **Identity Protection** Template.
1. Name the profile with a familiar name. For example, "Windows Hello for Business".
1. In **Configurations settings** set the **Configure Windows Hello for Business** option to **Enable**.
1. After setting Configure Windows Hello for Business to Enable, multiple policy options become available. These policies are optional to configure. More information on these policies are available in our documentation on managing [Windows Hello for Business in your organization](./hello-manage-in-organization#MDM-policy-settings-for-Windows-Hello-for-Business). We recommend setting **Use a Trusted Platform Module (TPM)** to **Enable**.

    ![Intune custom device configuration policy creation](./images/hello-intune-enable.png)

1. Select Next to move to **Assignments**.
1. Under Included groups, select **Add groups**.
1. Select the user group you would like to use Windows Hello for Business cloud trust. This may be WHFBCloudTrustUsers if you created it following the steps above or a group of your choosing.
1. Select Next to move to the Applicability Rules.
1. Select Next again to move to the **Review + create** tab and select the option to create the policy.

Windows Hello for Business settings are also available in the settings catalog. For more information see [Use the settings catalog to configure settings on Windows and macOS devices - preview](/mem/intune/configuration/settings-catalog).

##### Configure Cloud Trust policy

To configure the cloud trust policy, follow the steps below:

1. Sign in to the [Microsoft Endpoint Manager admin center](https://endpoint.microsoft.com/).
1. Browse to Devices > Windows > Configuration Profiles > Create profile.
1. For Platform, select Windows 10 and later.
1. For Profile Type, select **Templates** and select the **Custom** Template.
1. Name the profile with a familiar name. For example, "Windows Hello for Business cloud trust".
1. In Configuration Settings, add a new configuration with the following settings:

    - Name: "Windows Hello for Business cloud trust" or another familiar name
    - Description: Enable Windows Hello for Business cloud trust for sign in and on-premises SSO.
    - OMA-URI: ./Device/Vendor/MSFT/PassportForWork/*tenant ID*/Policies/UseCloudTrustForOnPremAuth

        >[!IMPORTANT]
        >*Tenant ID* in the OMA-URI must be replaced with the tenant ID for your Azure AD tenant. See [How to find your Azure AD tenant ID](/azure/active-directory/fundamentals/active-directory-how-to-find-tenant.md) for instructions on looking up your tenant ID.

    - Data type: Boolean
    - Value: True

    ![Intune custom device configuration policy creation](./images/hello-cloud-trust-intune.png)

1. Select Next to navigate to **Assignments**.
1. Under Included groups, select **Add groups**.
1. Select the user group you would like to use Windows Hello for Business cloud trust. This may be WHFBCloudTrustUsers if you created it following the steps above or a group of your choosing.
1. Select Next to move to the Applicability Rules.
1. Select Next again to move to the **Review + create** tab and select the option to create the policy.

## Windows Hello Provisioning

DSREG CMD and Event logs