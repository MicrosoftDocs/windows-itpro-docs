---
title: VPN and conditional access (Windows 10)
description: The VPN client is now able to integrate with the cloud-based Conditional Access Platform to provide a device compliance option for remote clients. Conditional Access is a policy-based evaluation engine that lets you create access rules for any Azure Active Directory (Azure AD) connected application.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, networking
author: dulcemontemayor
ms.author: dansimp
manager: dansimp
ms.reviewer: 
ms.localizationpriority: medium
ms.date: 03/21/2019
---

# VPN and conditional access

>Applies to: Windows 10 and Windows 10 Mobile

The VPN client is now able to integrate with the cloud-based Conditional Access Platform to provide a device compliance option for remote clients. Conditional Access is a policy-based evaluation engine that lets you create access rules for any Azure Active Directory (Azure AD) connected application.  

>[!NOTE]
>Conditional Access is an Azure AD Premium feature. 

Conditional Access Platform components used for Device Compliance include the following cloud-based services:

- [Conditional Access Framework](https://blogs.technet.microsoft.com/tip_of_the_day/2016/03/12/tip-of-the-day-the-conditional-access-framework-and-device-compliance-for-vpn)

- [Azure AD Connect Health](https://docs.microsoft.com/azure/active-directory/connect-health/active-directory-aadconnect-health)

- [Windows Health Attestation Service](https://technet.microsoft.com/itpro/windows/keep-secure/protect-high-value-assets-by-controlling-the-health-of-windows-10-based-devices#device-health-attestation) (optional)

- Azure AD Certificate Authority - It is a requirement that the client certificate used for the cloud-based device compliance solution be issued by an Azure Active Directory-based Certificate Authority (CA). An Azure AD CA is essentially a mini-CA cloud tenant in Azure. The Azure AD CA cannot be configured as part of an on-premises Enterprise CA. 

- Azure AD-issued short-lived certificates - When a VPN connection attempt is made, the Azure AD Token Broker on the local device communicates with Azure Active Directory, which then checks for health based on compliance rules. If compliant, Azure AD sends back a short-lived certificate that is used to authenticate the VPN. Note that certificate authentication methods such as EAP-TLS can be used. When that certificate expires, the client will again check with Azure AD for health validation before a new certificate is issued.

- [Microsoft Intune device compliance policies](https://docs.microsoft.com/intune/deploy-use/introduction-to-device-compliance-policies-in-microsoft-intune) - Cloud-based device compliance leverages Microsoft Intune Compliance Policies, which are capable of querying the device state and define compliance rules for the following, among other things.

    - Antivirus status
    - Auto-update status and update compliance
    - Password policy compliance
    - Encryption compliance
    - Device health attestation state (validated against attestation service after query)

The following client-side components are also required:
- [HealthAttestation Configuration Service Provider (CSP)](https://msdn.microsoft.com/library/windows/hardware/dn934876.aspx)
- [VPNv2 CSP](https://msdn.microsoft.com/library/windows/hardware/dn914776.aspx) DeviceCompliance node settings
- Trusted Platform Module (TPM)

## VPN device compliance 
At this time, the Azure AD certificates issued to users do not contain a CRL Distribution Point (CDP) and are not suitable for Key Distribution Centers (KDCs) to issue Kerberos tokens. For users to gain access to on-premises resources such as files on a network share, client authentication certificates must be deployed to the Windows profiles of the users, and their VPNv2 profiles must contain the &lt;SSO&gt; section.

Server-side infrastructure requirements to support VPN device compliance include:

- The VPN server should be configured for certificate authentication
- The VPN server should trust the tenant-specific Azure AD CA
- For client access using Kerberos/NTLM, a domain-trusted certificate is deployed to the client device and is configured to be used for single sign-on (SSO)
   
After the server side is set up, VPN admins can add the policy settings for conditional access to the VPN profile using the VPNv2 DeviceCompliance node.

Two client-side configuration service providers are leveraged for VPN device compliance.

- VPNv2 CSP DeviceCompliance settings
   - **Enabled**: enables the Device Compliance flow from the client. If marked as **true**, the VPN client attempts to communicate with Azure AD to get a certificate to use for authentication. The VPN should be set up to use certificate authentication and the VPN server must trust the server returned by Azure AD.
   - **Sso**: entries under SSO should be used to direct the VPN client to use a certificate other than the VPN authentication certificate when accessing resources that require Kerberos authentication.
   - **Sso/Enabled**: if this field is set to **true**, the VPN client looks for a separate certificate for Kerberos authentication.
   - **Sso/IssuerHash**: hashes for the VPN client to look for the correct certificate for Kerberos authentication.
   - **Sso/Eku**: comma-separated list of Enhanced Key Usage (EKU) extensions for the VPN client to look for the correct certificate for Kerberos authentication.
- HealthAttestation CSP (not a requirement) - functions performed by the HealthAttestation CSP include:
   - Collects TPM data used to verify health states
   - Forwards the data to the Health Attestation Service (HAS)
   - Provisions the Health Attestation Certificate received from the HAS
   - Upon request, forwards the Health Attestation Certificate (received from HAS) and related runtime information to the MDM server for verification
   
>[!NOTE]
>Currently, it is required that certificates be issued from an on-premises CA, and that SSO be enabled in the user’s VPN profile. This will enable the user to obtain Kerberos tickets in order to access resources on-premises. Kerberos currently does not support the use of Azure AD certificates.

## Client connection flow
The VPN client side connection flow works as follows:

![Device compliance workflow when VPN client attempts to connect](images/vpn-device-compliance.png)
 
When a VPNv2 Profile is configured with \<DeviceCompliance> \<Enabled>true<\/Enabled> the VPN client uses this connection flow:

1.	 The VPN client calls into Windows 10’s Azure AD Token Broker, identifying itself as a VPN client.
2.	 The Azure AD Token Broker authenticates to Azure AD and provides it with information about the device trying to connect. The Azure AD Server checks if the device is in compliance with the policies.
3.	 If compliant, Azure AD requests a short-lived certificate
4.	 Azure AD pushes down a short-lived certificate to the Certificate Store via the Token Broker. The Token Broker then returns control back over to the VPN client for further connection  processing.
5. The VPN client uses the Azure AD-issued certificate to authenticate with the VPN server.

## Configure conditional access

See [VPN profile options](vpn-profile-options.md) and [VPNv2 CSP](https://msdn.microsoft.com/library/windows/hardware/dn914776.aspx) for XML configuration. 

## Learn more about Conditional Access and Azure AD Health

- [Azure Active Directory conditional access](https://azure.microsoft.com/documentation/articles/active-directory-conditional-access/)
- [Getting started with Azure Active Directory Conditional Access](https://azure.microsoft.com/documentation/articles/active-directory-conditional-access-azuread-connected-apps/)
- [Control the health of Windows 10-based devices](https://technet.microsoft.com/itpro/windows/keep-secure/protect-high-value-assets-by-controlling-the-health-of-windows-10-based-devices)
- [Tip of the Day: The Conditional Access Framework and Device Compliance for VPN (Part 1)](https://blogs.technet.microsoft.com/tip_of_the_day/2016/03/12/tip-of-the-day-the-conditional-access-framework-and-device-compliance-for-vpn/)
- [Tip of the Day: The Conditional Access Framework and Device Compliance for VPN (Part 2)](https://blogs.technet.microsoft.com/tip_of_the_day/2016/03/14/tip-of-the-day-the-conditional-access-framework-and-device-compliance-for-vpn-part-2/)
- [Tip of the Day: The Conditional Access Framework and Device Compliance for VPN (Part 3)](https://blogs.technet.microsoft.com/tip_of_the_day/2016/03/15/tip-of-the-day-the-conditional-access-framework-and-device-compliance-for-vpn-part-3/)
- [Tip of the Day: The Conditional Access Framework and Device Compliance for VPN (Part 4)](https://blogs.technet.microsoft.com/tip_of_the_day/2016/03/16/tip-of-the-day-the-conditional-access-framework-and-device-compliance-for-vpn-part-4/)


## Related topics
- [VPN technical guide](vpn-guide.md)
- [VPN connection types](vpn-connection-type.md)
- [VPN routing decisions](vpn-routing.md)
- [VPN authentication options](vpn-authentication.md)
- [VPN name resolution](vpn-name-resolution.md)
- [VPN auto-triggered profile options](vpn-auto-trigger-profile.md)
- [VPN security features](vpn-security-features.md)
- [VPN profile options](vpn-profile-options.md)
