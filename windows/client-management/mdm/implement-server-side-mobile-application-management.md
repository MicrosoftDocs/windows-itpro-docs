---
title: Implement server-side support for mobile application management on Windows 
description: The Windows version of mobile application management (MAM) is a lightweight solution for managing company data access and security on personal devices. MAM support is built into Windows on top of Windows Information Protection (WIP).
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 06/26/2017
ms.reviewer: 
manager: dansimp
---


# Implement server-side support for mobile application management on Windows 

The Windows version of mobile application management (MAM) is a lightweight solution for managing company data access and security on personal devices. MAM support is built into Windows on top of Windows Information Protection (WIP), starting in Windows 10, version 1703.

## Integration with Azure Active Directory

MAM on Windows is integrated with Azure Active Directory (Azure AD) identity service. The MAM service supports Azure AD integrated authentication for the user and the device during enrollment and the downloading of MAM policies. MAM integration with Azure AD is similar to mobile device management (MDM) integration. See [Azure Active Directory integration with MDM](azure-active-directory-integration-with-mdm.md).  

MAM enrollment is integrated with adding a work account flow to a personal device. If both MAM and Azure AD integrated MDM services are provided in an organization, a users’ personal devices will be enrolled to MAM or MDM depending on the user’s actions. If a user adds their work or school Azure AD account as a secondary account to the machine, their device will be enrolled to MAM. If a user joins their device to Azure AD, it will be enrolled to MDM.  In general, a device that has a personal account as its primary account is considered a personal device and should be enrolled to MAM. An Azure AD join, and enrollment to MDM, should be used to manage corporate devices.  

On personal devices, users can add an Azure AD account as a secondary account to the device while keeping their personal account as primary. Users can add an Azure AD account to the device from a supported Azure AD integrated application, such as the next update of Microsoft Office 365 or Microsoft Office Mobile. Alternatively, users can add an Azure AD account from **Settings>Accounts>Access work or school**.  

Regular non-admin users can enroll to MAM.  

## Integration with Windows Information Protection 

MAM on Windows takes advantage of [built-in Windows Information Protection (WIP) policies](https://technet.microsoft.com/itpro/windows/keep-secure/protect-enterprise-data-using-wip) to protect company data on the device. To protect user-owned applications on personal devices, MAM limits enforcement of WIP policies to [enlightened apps](https://technet.microsoft.com/itpro/windows/keep-secure/enlightened-microsoft-apps-and-wip) and WIP-aware applications. Enlightened apps can differentiate between corporate and personal data, correctly determining which to protect based on WIP policies. WIP-aware apps indicate to Windows that they do not handle personal data, and therefore it is safe for Windows to protect data on their behalf.  

To make applications WIP-aware, app developers need to include the following data in the app resource file:  

``` syntax
// Mark this binary as Allowed for WIP (EDP) purpose  
    MICROSOFTEDPAUTOPROTECTIONALLOWEDAPPINFO EDPAUTOPROTECTIONALLOWEDAPPINFOID 
     BEGIN 
         0x0001 
     END  
```

## Configuring an Azure AD tenant for MAM enrollment

MAM enrollment requires integration with Azure AD. The MAM service provider needs to publish the Management MDM app to the Azure AD app gallery. Starting with Azure AD in Windows 10, version 1703, the same cloud-based Management MDM app will support both MDM and MAM enrollments. If you have already published your MDM app, it needs to be updated to include MAM Enrollment and Terms of use URLs. The screenshot below illustrates the Management app for an IT admin configuration.  

![Mobile application management app](images/implement-server-side-mobile-application-management.png)

MAM and MDM services in an organization could be provided by different vendors. Depending on the company configuration, IT admin typically needs to add one or two Azure AD Management apps to configure MAM and MDM policies. For example, if both MAM and MDM are provided by the same vendor, then an IT Admin needs to add one Management app from this vendor that will contain both MAM and MDM policies for the organization. Alternatively, if the MAM and MDM services in an organization are provided by two different vendors, then two Management apps from the two vendors need to be configured for the company in Azure AD: one for MAM and one for MDM. Please note: if the MDM service in an organization is not integrated with Azure AD and uses auto-discovery, only one Management app for MAM needs to be configured.  

## MAM enrollment 

MAM enrollment is based on the MAM extension of [[MS-MDE2] protocol](https://msdn.microsoft.com/library/mt221945.aspx). MAM enrollment supports Azure AD [federated authentication](federated-authentication-device-enrollment.md) as the only authentication method.  

Below are protocol changes for MAM enrollment:  
- MDM discovery is not supported  
- APPAUTH node in [DMAcc CSP](dmacc-csp.md) is optional
- MAM enrollment variation of [MS-MDE2] protocol does not support the client authentication certificate, and therefore, does not support the [MS-XCEP] protocol. Servers must use an Azure AD token for client authentication during policy syncs. Policy sync sessions must be performed over one-way SSL using server certificate authentication. 

Here is an example provisioning XML for MAM enrollment.  

``` syntax
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

Since the [Poll](dmclient-csp.md#provider-providerid-poll) node isn’t provided above, the device would default to once every 24 hours.

## Supported Configuration Service Providers (CSPs)

MAM on Windows support the following CSPs. All other CSPs will be blocked. Note the list may change later based on customer feedback.

- [AppLocker CSP](applocker-csp.md) for configuration of WIP enterprise allowed apps
- [ClientCertificateInstall CSP](clientcertificateinstall-csp.md) for installing  VPN and Wi-Fi certs
- [DeviceStatus CSP](devicestatus-csp.md) required for Conditional Access support (starting with Windows 10, version 1703)
- [DevInfo CSP](devinfo-csp.md)
- [DMAcc CSP](dmacc-csp.md)
- [DMClient CSP](dmclient-csp.md) for polling schedules configuration and MDM discovery URL
- [EnterpriseDataProtection CSP](enterprisedataprotection-csp.md) has WIP policies
- [Health Attestation CSP](healthattestation-csp.md) required for Conditional Access support (starting with Windows 10, version 1703)
- [PassportForWork CSP](passportforwork-csp.md) for Windows Hello for Business PIN management
- [Policy CSP](policy-configuration-service-provider.md) specifically for NetworkIsolation and DeviceLock areas
- [Reporting CSP](reporting-csp.md) for retrieving WIP logs
- [RootCaTrustedCertificates CSP](rootcacertificates-csp.md)
- [VPNv2 CSP](vpnv2-csp.md) should be omitted for deployments where IT is planning to allow access and protect cloud-only resources with MAM
- [WiFi CSP](wifi-csp.md) should be omitted for deployments where IT is planning to allow access and protect cloud-only resources with MAM 


## Device lock policies and EAS

MAM supports device lock policies similar to MDM. The policies are configured by DeviceLock area of Policy CSP and PassportForWork CSP. 

We do not recommend configuring both Exchange Active Sync (EAS) and MAM policies for the same device. However, if both are configured, the client will behave as follows: 

<ol>
<li>When EAS policies are sent to a device that already has MAM policies, Windows evaluates whether the existing MAM policies are compliant with the configured EAS policies and reports compliance to EAS:</li><ul>
<li>If the device is found to be compliant, EAS will report compliance to the server to allow mail to sync. MAM supports mandatory EAS policies only. Checking EAS compliance does not require device admin rights.</li>
<li>If the device is found to be non-compliant, EAS will enforce its own policies to the device and the resultant set of policies will be a superset of both. Applying EAS policies to the device requires admin rights.</li>
</ul>
<li>If a device that already has EAS policies is enrolled to MAM, the device will have both sets of policies: MAM, EAS, and the resultant set of policies will be a superset of both.</li>
</ol>

## Policy sync

MAM policy syncs are modeled after MDM. The MAM client uses an Azure AD token to authenticate to the service for policy syncs.

## Change MAM enrollment to MDM

Windows does not support applying both MAM and MDM policies to the same devices. If configured by the admin, a user can change his MAM enrollment to MDM.

> [!Note]
> When users upgrade from MAM to MDM on Windows Home edition, they lose access to WIP. On the Home edition, we do not recommend pushing MDM policies to enable users to upgrade.

To configure MAM device for MDM enrollment, the admin needs to configure the MDM Discovery URL in the DMClient CSP. This URL will be used for MDM enrollment.

In the process of changing MAM enrollment to MDM, MAM policies will be removed from the device after MDM policies have been successfully applied. Normally when WIP policies are removed from the device, the user’s access to WIP-protected documents is revoked (selective wipe) unless EDP CSP RevokeOnUnenroll is set to false. To prevent selective wipe on enrollment change from MAM to MDM, the admin needs to ensure that:

<ol>
<li>Both MAM and MDM policies for the organization support WIP</li>
<li>EDP CSP Enterprise ID is the same for both MAM and MDM</li>
<li>EDP CSP RevokeOnMDMHandoff is set to FALSE</li>
</ol>

If the MAM device is properly configured for MDM enrollment, then the Enroll only to device management link will be displayed in **Settings>Accounts>Access work or school**. The user can click on this link, provide their credentials, and the enrollment will be changed to MDM. Their Azure AD account will not be affected.

## Skype for Business compliance with MAM

We have updated Skype for Business to work with MAM. The following table explains Office release channels and release dates for Skype for Business compliance with the MAM feature.

<table>
<colgroup>
<col width="15%" />
<col width="35%" />
<col width="15%" />
<col width="35%" />
</colgroup>
<thead>
<tr class="header">
<th>Update channel</th>
<th>Primary purpose</th>
<th>LOB Tattoo availability</th>
<th>Default update channel for the products</th>
</tr>
</thead>
<tbody>
<tr>
<td>[Current channel](https://technet.microsoft.com/library/mt455210.aspx#BKMK_CB)</td>
<td>Provide pilot users and application compatibility testers the opportunity to test the next Deferred Channel. </td>
<td>March 9 2017</td>
<td><p>Visio Pro for Office 365</p>
<p>Project Desktop Client</p>
<p>Office 365 Business (the version of Office that comes with some Office 365 plans, such as Business Premium.)</p></td>
</tr>
<tr>
<td>[Deferred channel](https://technet.microsoft.com/library/mt455210.aspx#BKMK_CBB)</td>
<td>Provide users with new features of Office only a few times a year.</td>
<td>October 10 2017</td>
<td>Office 365 ProPlus</td>
</tr><tr>
<td>[First release for deferred channel](https://technet.microsoft.com/library/mt455210.aspx#BKMK_FRCBB)</td>
<td>Provide pilot users and application compatibility testers the opportunity to test the next Deferred Channel. </td>
<td>June 13 2017</td>
<td></td>
</tr>
</tbody>
</table>
