---
title: Planning Certificate-based Authentication (Windows 10)
description: Planning Certificate-based Authentication
ms.assetid: a55344e6-d0df-4ad5-a6f5-67ccb6397dec
author: brianlic-msft
---

# Planning Certificate-based Authentication


Sometimes a computer cannot join an Active Directory domain, and therefore cannot use Kerberos V5 authentication with domain credentials. However, the computer can still participate in the isolated domain by using certificate-based authentication.

The non-domain member server, and the clients that must be able to communicate with it, must be configured to use cryptographic certificates based on the X.509 standard. These certificates can be used as an alternate set of credentials. During IKE negotiation, each computer sends a copy of its certificate to the other computer. Each computer examines the received certificate, and then validates its authenticity. To be considered authentic, the received certificate must be validated by a certification authority certificate in the recipient's Trusted Root Certification Authorities store on the local computer.

Certificates can be acquired from commercial firms, or by an internal certificate server set up as part of the organization's public key infrastructure (PKI). Microsoft provides a complete PKI and certification authority solution with Windows Server 2012, Windows Server 2008 R2, and Windows Server 2008 Active Directory Certificate Services (AD CS). For more information about creating and maintaining a PKI in your organization, see [Active Directory Certificate Services Overview](http://technet.microsoft.com/library/hh831740.aspx) at http://technet.microsoft.com/library/hh831740.aspx.

## Deploying certificates


No matter how you acquire your certificates, you must deploy them to clients and servers that require them in order to communicate.

### Using Active Directory Certificate Services

If you use AD CS to create your own user and computer certificates in-house, then the servers designated as certification authorities (CAs) create the certificates based on administrator-designed templates. AD CS then uses Group Policy to deploy the certificates to domain member computers. Computer certificates are deployed when a domain member computer starts. User certificates are deployed when a user logs on.

If you want non-domain member computers to be part of a server isolation zone that requires access by only authorized users, make sure to include certificate mapping to associate the certificates with specific user accounts. When certificate mapping is enabled, the certificate issued to each computer or user includes enough identification information to enable IPsec to match the certificate to both user and computer accounts.

AD CS automatically ensures that certificates issued by the CAs are trusted by the client computers by putting the CA certificates in the correct store on each domain member computer.

### Using a commercially purchased certificate for computers running Windows

You can import the certificates manually onto each computer if the number of computers is relatively small. For a deployment to more than a handful of computers, use Group Policy.

You must first download the vendor's root CA certificate, and then import it to a GPO that deploys it to the Local Computer\\Trusted Root Certification Authorities store on each computer that applies the GPO.

You must also import the purchased certificate into a GPO that deploys it to the Local Computer\\Personal store on each computer that applies the GPO.

### Using a commercially purchased certificate for computers running a non-Windows operating system

If you are installing the certificates on an operating system other than Windows, see the documentation for that operating system.

## Configuring IPsec to use the certificates


When the clients and servers have the certificates available, you can configure the IPsec and connection security rules to include those certificates as a valid authentication method. The authentication method requires the subject name of the certificate, for example: **DC=com,DC=woodgrovebank,CN=CorporateCertServer**. Optionally, select **Enable certificate to account mapping** to support using these credentials for restricting access to users or computers that are members of authorized groups in a server isolation solution.

Starting in Windows Server 2012, the Administrator can configure certificate selection criteria so the desired certificate is selected and/or validated. Enhanced Key Usage (EKU) criteria can be configured, as well as name restrictions and certificate thumbprints. This is configured using the **Advanced** button when choosing certificates for the authentication method in the user interface, or through Windows PowerShell.

**Next: **[Documenting the Zones](documenting-the-zones.md)

 

 





