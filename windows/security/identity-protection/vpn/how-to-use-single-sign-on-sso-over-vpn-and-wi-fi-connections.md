---
title: How to use single sign on (SSO) over VPN and Wi-Fi connections (Windows 10)
description: Explains requirements to enable Single Sign-On (SSO) to on-premises domain resources over WiFi or VPN connections.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: dulcemontemayor
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: dolmont
---

# How to use single sign on (SSO) over VPN and Wi-Fi connections

This topic explains requirements to enable Single Sign-On (SSO) to on-premises domain resources over WiFi or VPN connections. The scenario is:

- You connect to a network using Wi-Fi or VPN. 
- You want to use the credentials that you use for the WiFi or VPN authentication to also authenticate requests to access a domain resource you are connecting to, without being prompted for your domain credentials separately. 

For example, you want to connect to a corporate network and access an internal website that requires Windows integrated authentication.

At a high level, the way this works is that the credentials that are used for the connection authentication are put in Credential Manager as the default credentials for the logon session. 
Credential Manager is a place where credentials in the OS are can be stored for specific domain resources based on the targetname of the resource. 
For VPN, the VPN stack saves its credential as the session default. 
For WiFi, EAP does it. 

The credentials are put in Credential Manager as a "\*Session" credential. 
A "\*Session" credential implies that it is valid for the current user session. 
The credentials are also cleaned up when the WiFi or VPN connection is disconnected. 

When the user tries to access a domain resource, using Edge for example, Edge has the right Enterprise Authentication capability so [WinInet](https://msdn.microsoft.com/library/windows/desktop/aa385483.aspx) can release the credentials that it gets from the Credential Manager to the SSP that is requesting it. 
For more information about the Enterprise Authentication capability, see [App capability declarations](https://msdn.microsoft.com/windows/uwp/packaging/app-capability-declarations). 

The local security authority will look at the device application, such as a Universal Windows Platform (UWP) application, to see if it has the right capability. 
If the app is not UWP, it does not matter. 
But if it is a UWP app, it will look at the device capability for Enterprise Authentication. 
If it does have that capability and if the resource that you are trying to access is in the Intranet zone in the Internet Options (ZoneMap), then the credential will be released.
This behavior helps prevent credentials from being misused by untrusted third parties.  

## Intranet zone

For the Intranet zone, by default it only allows single-label names, such as Http://finance. 
If the resource that needs to be accessed has multiple domain labels, then the workaround is to use the [Registry CSP](https://msdn.microsoft.com/library/windows/hardware/dn904964.aspx). 

### Setting the ZoneMap

The ZoneMap is controlled using a registry that can be set through MDM. 
By default, single-label names such as http://finance are already in the intranet zone. 
For multi-label names, such as http://finance.net, the ZoneMap needs to be updated.

## MDM Policy

OMA URI example:

./Vendor/MSFT/Registry/HKU/S-1-5-21-2702878673-795188819-444038987-2781/Software/Microsoft/Windows/CurrentVersion/Internet%20Settings/ZoneMap/Domains/`<domain name>`/* as an Integer Value of 1 for each of the domains that you want to SSO into from your device. This adds the specified domains to the Intranet Zone of the Edge browser.

## Credential requirements 

For VPN, the following types of credentials will be added to credential manager after authentication: 

- Username and password
- Certificate-based authentication:
    - TPM KSP Certificate
    - Software KSP Certificates
    - Smart Card Certificate
    - Windows Hello for Business Certificate

The username should also include a domain that can be reached over the connection (VPN or WiFi). 

## User certificate templates

If the credentials are certificate-based, then the elements in the following table need to be configured for the certificate templates to ensure they can also be used for Kerberos client authentication.

| Template element | Configuration |
|------------------|---------------|
| SubjectName | The user’s distinguished name (DN) where the domain components of the distinguished name reflects the internal DNS namespace when the SubjectAlternativeName does not have the fully qualified UPN required to find the domain controller. </br>This requirement is particularly relevant in multi-forest environments as it ensures a domain controller can be located. |
| SubjectAlternativeName | The user’s fully qualified UPN where a domain name component of the user’s UPN matches the organizations internal domain’s DNS namespace.</br>This requirement is particularly relevant in multi-forest environments as it ensures a domain controller can be located when the SubjectName does not have the DN required to find the domain controller. |
| Key Storage Provider (KSP) | If the device is joined to Azure AD, a discrete SSO certificate is used. |
| EnhancedKeyUsage | One or more of the following EKUs is required: </br>- Client Authentication (for the VPN) </br>- EAP Filtering OID (for Windows Hello for Business)</br>- SmartCardLogon (for Azure AD joined devices)</br>If the domain controllers require smart card EKU either:</br>- SmartCardLogon</br>- id-pkinit-KPClientAuth (1.3.6.1.5.2.3.4)</br>Otherwise:</br>- TLS/SSL Client Authentication (1.3.6.1.5.5.7.3.2) |

## NDES server configuration

The NDES server is required to be configured so that incoming SCEP requests can be mapped to the correct template to be used. 
For more information, see [Configure certificate infrastructure for SCEP](https://docs.microsoft.com/intune/deploy-use/Configure-certificate-infrastructure-for-scep). 

## Active Directory requirements

You need IP connectivity to a DNS server and domain controller over the network interface so that authentication can succeed as well. 

The domain controllers will need to have appropriate KDC certificates for the client to trust them as domain controllers, and since phones are not domain-joined, the root CA of the KDC’s certificate must be in the Third-Party Root CA or Smart Card Trusted Roots store.

The domain controllers must be using certificates based on the updated KDC certificate template Kerberos Authentication. 
This is because Windows 10 Mobile requires strict KDC validation to be enabled. 
This requires that all authenticating domain controllers run Windows Server 2016, or you'll need to enable strict KDC validation on domain controllers that run previous versions of Windows Server. 
For more information, see [Enabling Strict KDC Validation in Windows Kerberos](https://www.microsoft.com/download/details.aspx?id=6382). 

