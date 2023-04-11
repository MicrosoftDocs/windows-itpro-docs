---
title: Support for mobile application management on Windows
description: Learn about implementing the Windows version of mobile application management (MAM), which is a lightweight solution for managing company data access and security on personal devices.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 04/05/2023
ms.reviewer:
manager: aaroncz
appliesto:
- ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
- ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Support for mobile application management on Windows

The Windows version of mobile application management (MAM) is a lightweight solution for managing company data access and security on personal devices. MAM support is built into Windows on top of Windows Information Protection (WIP).

[!INCLUDE [Deprecate Windows Information Protection](../security/information-protection/windows-information-protection/includes/wip-deprecation.md)]

## Integration with Azure AD

MAM on Windows is integrated with Azure Active Directory (Azure AD) identity service. The MAM service supports Azure AD-integrated authentication for the user and the device during enrollment and the downloading of MAM policies. MAM integration with Azure AD is similar to mobile device management (MDM) integration. See [Azure Active Directory integration with MDM](azure-active-directory-integration-with-mdm.md).

MAM enrollment is integrated with adding a work account flow to a personal device. If both MAM and Azure AD-integrated MDM services are provided in an organization, a user's personal devices will be enrolled to MAM or MDM, depending on the user's actions. If a user adds their work or school Azure AD account as a secondary account to the machine, their device will be enrolled to MAM. If a user joins their device to Azure AD, it will be enrolled to MDM. In general, a device that has a personal account as its primary account is considered a personal device and should be enrolled to MAM. An Azure AD join, and enrollment to MDM, should be used to manage corporate devices.

On personal devices, users can add an Azure AD account as a secondary account to the device while keeping their personal account as primary. Users can add an Azure AD account to the device from a supported Azure AD-integrated application, such as the next update of Microsoft 365 apps. Alternatively, users can add an Azure AD account from **Settings > Accounts > Access work or school**.

Regular non-admin users can enroll to MAM.

## Integration with Windows Information Protection

MAM on Windows takes advantage of [built-in Windows Information Protection (WIP) policies](/windows/security/information-protection/windows-information-protection/protect-enterprise-data-using-wip) to protect company data on the device. To protect user-owned applications on personal devices, MAM limits enforcement of WIP policies to [enlightened apps](/windows/security/information-protection/windows-information-protection/enlightened-microsoft-apps-and-wip) and WIP-aware apps. Enlightened apps can differentiate between corporate and personal data, correctly determining which to protect based on WIP policies. WIP-aware apps indicate to Windows that they don't handle personal data, and therefore, it's safe for Windows to protect data on their behalf.

To make applications WIP-aware, app developers need to include the following data in the app resource file.

``` syntax
// Mark this binary as Allowed for WIP (EDP) purpose
MICROSOFTEDPAUTOPROTECTIONALLOWEDAPPINFO EDPAUTOPROTECTIONALLOWEDAPPINFOID
  BEGIN
      0x0001
  END
```

## Configuring an Azure AD tenant for MAM enrollment

MAM enrollment requires integration with Azure AD. The MAM service provider needs to publish the Management MDM app to the Azure AD app gallery. The same cloud-based Management MDM app in Azure AD will support both MDM and MAM enrollments. If you've already published your MDM app, it needs to be updated to include MAM Enrollment and Terms of use URLs. The screenshot below illustrates the management app for an IT admin configuration.

:::image type="content" alt-text="Mobile application management app." source="images/implement-server-side-mobile-application-management.png":::

MAM and MDM services in an organization could be provided by different vendors. Depending on the company configuration, IT admin typically needs to add one or two Azure AD Management apps to configure MAM and MDM policies. For example, if both MAM and MDM are provided by the same vendor, then an IT Admin needs to add one Management app from this vendor that will contain both MAM and MDM policies for the organization. Alternatively, if the MAM and MDM services in an organization are provided by two different vendors, then two Management apps from the two vendors need to be configured for the company in Azure AD: one for MAM and one for MDM.

> [!NOTE]
> If the MDM service in an organization isn't integrated with Azure AD and uses auto-discovery, only one Management app for MAM needs to be configured.

## MAM enrollment

MAM enrollment is based on the MAM extension of [[MS-MDE2] protocol](/openspecs/windows_protocols/ms-mde2/4d7eadd5-3951-4f1c-8159-c39e07cbe692). MAM enrollment supports Azure AD [federated authentication](federated-authentication-device-enrollment.md) as the only authentication method.

Below are protocol changes for MAM enrollment:

- MDM discovery isn't supported.
- APPAUTH node in [DMAcc CSP](mdm/dmacc-csp.md) is optional.
- MAM enrollment variation of [MS-MDE2] protocol doesn't support the client authentication certificate, and therefore doesn't support the [MS-XCEP] protocol. Servers must use an Azure AD token for client authentication during policy syncs. Policy sync sessions must be performed over one-way SSL using server certificate authentication.

Here's an example provisioning XML for MAM enrollment.

```xml
<wap-provisioningdoc version="1.1">
  <characteristic type="APPLICATION">
    <parm name="APPID" value="w7"/>
    <parm name="PROVIDER-ID" value="MAM SyncML Server"/>
    <parm name="NAME" value="mddprov account"/>
    <parm name="ADDR" value="http://localhost:88"/>
    <parm name="DEFAULTENCODING" value="application/vnd.syncml.dm+xml" />
  </characteristic>
</wap-provisioningdoc>
```

Since the [Poll](mdm/dmclient-csp.md#deviceproviderprovideridpoll) node isn't provided above, the device would default to once every 24 hours.

## Supported CSPs

MAM on Windows supports the following configuration service providers (CSPs). All other CSPs will be blocked. Note the list may change later based on customer feedback:

- [AppLocker CSP](mdm/applocker-csp.md) for configuration of Windows Information Protection enterprise allowed apps.
- [ClientCertificateInstall CSP](mdm/clientcertificateinstall-csp.md) for installing VPN and Wi-Fi certs.
- [DeviceStatus CSP](mdm/devicestatus-csp.md) required for Conditional Access support.
- [DevInfo CSP](mdm/devinfo-csp.md).
- [DMAcc CSP](mdm/dmacc-csp.md).
- [DMClient CSP](mdm/dmclient-csp.md) for polling schedules configuration and MDM discovery URL.
- [EnterpriseDataProtection CSP](mdm/enterprisedataprotection-csp.md) has Windows Information Protection policies.
- [Health Attestation CSP](mdm/healthattestation-csp.md) required for Conditional Access support.
- [PassportForWork CSP](mdm/passportforwork-csp.md) for Windows Hello for Business PIN management.
- [Policy CSP](mdm/policy-configuration-service-provider.md) specifically for NetworkIsolation and DeviceLock areas.
- [Reporting CSP](mdm/reporting-csp.md) for retrieving Windows Information Protection logs.
- [RootCaTrustedCertificates CSP](mdm/rootcacertificates-csp.md).
- [VPNv2 CSP](mdm/vpnv2-csp.md) should be omitted for deployments where IT is planning to allow access and protect cloud-only resources with MAM.
- [WiFi CSP](mdm/wifi-csp.md) should be omitted for deployments where IT is planning to allow access and protect cloud-only resources with MAM.

## Device lock policies and EAS

MAM supports device lock policies similar to MDM. The policies are configured by DeviceLock area of Policy CSP and PassportForWork CSP.

We don't recommend configuring both Exchange ActiveSync (EAS) and MAM policies for the same device. However, if both are configured, the client will behave as follows:

- When EAS policies are sent to a device that already has MAM policies, Windows evaluates whether the existing MAM policies are compliant with the configured EAS policies, and reports compliance with EAS.
- If the device is found to be compliant, EAS will report compliance with the server to allow mail to sync. MAM supports mandatory EAS policies only. Checking EAS compliance doesn't require device admin rights.
- If the device is found to be non-compliant, EAS will enforce its own policies to the device and the resultant set of policies will be a superset of both. Applying EAS policies to the device requires admin rights.
- If a device that already has EAS policies is enrolled to MAM, the device will have both sets of policies: MAM and EAS, and the resultant set of policies will be a superset of both.

## Policy sync

MAM policy syncs are modeled after MDM. The MAM client uses an Azure AD token to authenticate to the service for policy syncs.

## Change MAM enrollment to MDM

Windows doesn't support applying both MAM and MDM policies to the same devices. If configured by the admin, users can change their MAM enrollment to MDM.

> [!NOTE]
> When users upgrade from MAM to MDM on Windows Home edition, they lose access to Windows Information Protection. On Windows Home edition, we don't recommend pushing MDM policies to enable users to upgrade.

To configure MAM device for MDM enrollment, the admin needs to configure the MDM Discovery URL in the DMClient CSP. This URL will be used for MDM enrollment.

In the process of changing MAM enrollment to MDM, MAM policies will be removed from the device after MDM policies have been successfully applied. Normally when Windows Information Protection policies are removed from the device, the user's access to WIP-protected documents is revoked (selective wipe) unless EDP CSP RevokeOnUnenroll is set to false. To prevent selective wipe on enrollment change from MAM to MDM, the admin needs to ensure that:

- Both MAM and MDM policies for the organization support Windows Information Protection.
- EDP CSP Enterprise ID is the same for both MAM and MDM.
- EDP CSP RevokeOnMDMHandoff is set to false.

If the MAM device is properly configured for MDM enrollment, then the Enroll only to device management link will be displayed in **Settings > Accounts > Access work or school**. The user can select this link, provide their credentials, and the enrollment will be changed to MDM. Their Azure AD account won't be affected.
