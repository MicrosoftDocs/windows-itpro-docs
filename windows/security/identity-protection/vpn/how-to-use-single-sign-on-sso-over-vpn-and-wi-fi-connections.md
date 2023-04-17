---
title: How to use Single Sign-On (SSO) over VPN and Wi-Fi connections
description: Explains requirements to enable Single Sign-On (SSO) to on-premises domain resources over WiFi or VPN connections.
ms.date: 12/28/2022
ms.topic: how-to
---

# How to use Single Sign-On (SSO) over VPN and Wi-Fi connections

This article explains requirements to enable Single Sign-On (SSO) to on-premises domain resources over WiFi or VPN connections. The following scenarios are typically used:

- Connecting to a network using Wi-Fi or VPN
- Use credentials for Wi-Fi or VPN authentication to also authenticate requests to access domain resources, without being prompted for domain credentials

For example, you want to connect to a corporate network and access an internal website that requires Windows integrated authentication.

The credentials that are used for the connection authentication are placed in *Credential Manager* as the default credentials for the **logon session**. Credential Manager stores credentials that can be used for specific domain resources. These are based on the target name of the resource:

- For VPN, the VPN stack saves its credential as the **session default**
- For WiFi, Extensible Authentication Protocol (EAP) provides support

The credentials are placed in Credential Manager as a *session credential*:

- A *session credential* implies that it is valid for the current user session
- The credentials are cleaned up when the WiFi or VPN connection is disconnected

> [!NOTE]
> In Windows 10, version 21H2 and later, the *session credential* is not visible in Credential Manager.

For example, if someone using Microsoft Edge tries to access a domain resource, Microsoft Edge has the right Enterprise Authentication capability. This allows [WinInet](/windows/win32/wininet/wininet-reference) to release the credentials that it gets from Credential Manager to the SSP that is requesting it.
For more information about the Enterprise Authentication capability, see [App capability declarations](/windows/uwp/packaging/app-capability-declarations).

The local security authority will look at the device application to determine if it has the right capability. This includes items such as a Universal Windows Platform (UWP) application.
If the app isn't a UWP, it doesn't matter.
But, if the application is a UWP app, it will evaluate at the device capability for Enterprise Authentication.
If it does have that capability and if the resource that you're trying to access is in the Intranet zone in the Internet Options (ZoneMap), then the credential will be released.
This behavior helps prevent credentials from being misused by untrusted third parties.

## Intranet zone

For the Intranet zone, by default it only allows single-label names, such as *http://finance*.
If the resource that needs to be accessed has multiple domain labels, then the workaround is to use the [Registry CSP](/windows/client-management/mdm/registry-csp).

### Setting the ZoneMap

The ZoneMap is controlled using a registry that can be set through MDM.
By default, single-label names such as *http://finance* are already in the intranet zone.
For multi-label names, such as *http://finance.net*, the ZoneMap needs to be updated.

## MDM Policy

OMA URI example:

`./Vendor/MSFT/Registry/HKU/S-1-5-21-2702878673-795188819-444038987-2781/Software/Microsoft/Windows/CurrentVersion/Internet%20Settings/ZoneMap/Domains/<domain name>` as an `Integer` value of `1` for each of the domains that you want to SSO into from your device. This adds the specified domains to the Intranet Zone of the Microsoft Edge browser.

## Credential requirements

For VPN, the following types of credentials will be added to credential manager after authentication:

- Username and password
- Certificate-based authentication:
  - TPM Key Storage Provider (KSP) Certificate
  - Software Key Storage Provider (KSP) Certificates
  - Smart Card Certificate
  - Windows Hello for Business Certificate

The username should also include a domain that can be reached over the connection (VPN or WiFi).

## User certificate templates

If the credentials are certificate-based, then the elements in the following table need to be configured for the certificate templates to ensure they can also be used for Kerberos client authentication.

| Template element | Configuration |
|------------------|---------------|
| SubjectName | The user's distinguished name (DN) where the domain components of the distinguished name reflect the internal DNS namespace when the SubjectAlternativeName does not have the fully qualified UPN required to find the domain controller. </br>This requirement is relevant in multi-forest environments as it ensures a domain controller can be located. |
| SubjectAlternativeName | The user's fully qualified UPN where a domain name component of the user's UPN matches the organizations internal domain's DNS namespace. </br>This requirement is relevant in multi-forest environments as it ensures a domain controller can be located when the SubjectName does not have the DN required to find the domain controller. |
| Key Storage Provider (KSP) | If the device is joined to Azure AD, a discrete SSO certificate is used. |
| EnhancedKeyUsage | One or more of the following EKUs is required: </br><ul><li>Client Authentication (for the VPN)</li><li>EAP Filtering OID (for Windows Hello for Business)</li><li>SmartCardLogon (for Azure AD-joined devices)</li></ul>If the domain controllers require smart card EKU either:<ul><li>SmartCardLogon</li><li>id-pkinit-KPClientAuth (1.3.6.1.5.2.3.4) </li></ul>Otherwise:</br><ul><li>TLS/SSL Client Authentication (1.3.6.1.5.5.7.3.2)</li></ul> |

## NDES server configuration

The NDES server is required to be configured so that incoming SCEP requests can be mapped to the correct template to be used.
For more information, see [Configure certificate infrastructure for SCEP](/mem/intune/protect/certificates-scep-configure).

## Active Directory requirements

You need IP connectivity to a DNS server and domain controller over the network interface so that authentication can succeed as well.

Domain controllers must have appropriate KDC certificates for the client to trust them as domain controllers. Because phones are not domain-joined, the root CA of the KDC's certificate must be in the Third-Party Root CA or Smart Card Trusted Roots store.

Domain controllers must be using certificates based on the updated KDC certificate template Kerberos Authentication.
This requires that all authenticating domain controllers run Windows Server 2016, or you'll need to enable strict KDC validation on domain controllers that run previous versions of Windows Server.

For more information, see [Enabling Strict KDC Validation in Windows Kerberos](https://www.microsoft.com/download/details.aspx?id=6382).
