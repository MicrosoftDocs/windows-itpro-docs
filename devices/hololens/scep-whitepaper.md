---
title: SCEP Whitepaper
description: A whitepaper that describes how Microsoft mitigates the vulnerabilities of SCEP.
ms.assetid: bd55ecd1-697a-4b09-8274-48d1499fcb0b
author: pawinfie
ms.author: pawinfie
ms.date: 02/12/2020
keywords: hololens, Windows Mixed Reality, security
ms.prod: hololens
ms.sitesec: library
ms.topic: article
audience: ITPro
ms.localizationpriority: high
appliesto:
- HoloLens 1 (1st gen)
- HoloLens 2
---

# SCEP Whitepaper

## High Level

### How the SCEP Challenge PW is secured

We work around the weakness of the SCEP protocol by generating custom challenges in Intune itself. The challenge string we create is signed/encrypted, and contains the information we’ve configured in Intune for certificate issuance into the challenge blob. This means the blob used as the challenge string contains the expected CSR information like the Subject Name, Subject Alternative Name, and other attributes.

We then pass that to the device and then the device generates it’s CSR and passes it, and the blob to the SCEP URL it received in the MDM profile. On NDES servers running the Intune SCEP module we perform a custom challenge validation that validates the signature on the blob, decrypts the challenge blob itself, compare it to the CSR received, and then determine if we should issue the cert.  If any portion of this check fails then the certificate request is rejected.

## Behind the scenes

### Intune Connector has a number of responsibilities

1. The connector is SCEP policy module which contains a "Certification Registration Point" component which interacts with the Intune service, and is responsible for validating, and securing the SCEP request coming into the NDES server.

1. The connector will install an App Pool on the NDES IIS server > Microsoft Intune CRP service Pool, and a CertificateRegistrationSvc under the "Default Web Site" on IIS.

1. **When the Intune NDES connector is first configured/setup on the NDES server, a certificate is issued from the Intune cloud service to the NDES server. This cert is used to securely communicate with the Intune cloud service - customer tenant. The cert is unique to the customers NDES server. Can be viewed in Certlm.msc issued by SC_Online_Issuing. This certs Public key is used by Intune in the cloud to encrypt the challenge blob. In addition, when the connector is configured, Intune's public key is sent to the NDES server.**
    >[!NOTE]
    >The connector communication with Intune is strictly outbound traffic.

1. The Intune cloud service combined with the Intune connector/policy module addresses the SCEP protocol challenge password weakness (in the SCEP protocol) by generating a custom challenge.  The challenge is generated in Intune itself.

    1. In the challenge blob, Intune puts information that we expect in the cert request (CSR - Certificate Signing Request) coming from a mobile device like the following: what we expect the Subject and SAN (validated against AAD attributes/properties of the user/device) to be, and specifics contained in the Intune SCEP profile that is created by an Intune admin, i.e., Request Handling, EKU, Renewal, validity period, key size, renewal period.
        >[!NOTE]
        >The Challenge blob is Encrypted with the Connectors Public Key, and Signed with Intune's (cloud service) Private Key.  The device cannot decrypt the challenge

    1. When an Intune admin creates a SCEP profile in their tenant, Intune will send the SCEP profile payload along with the Encrypted and Signed Challenge to the targeted device. The device generates a CSR, and reaches out to NDES URL (contained in the SCEP profile). The device cert request payload contains the CSR, and the encrypted, signed challenge blob.

        1. When the device reaches out to the NDES server (via the NDES/SCEP URL provided in the SCEP Profile payload), the SCEP cert request validation is performed by the policy module running on the NDES server. The challenge signature is verified using Intune's public key (which is on the NDES server, when the connector was installed and configured) and decrypted using the connectors private key. The policy module compares the CSR details against the decrypted challenge and determines if a cert should be issued. If the CSR passes validation, the NDES server requests a certificate from the CA on behalf of the user/device.
            >[!NOTE]
            >The above process takes place on the NDES server running the Policy Module.  No interaction with the Intune cloud service takes place.

    1. The NDES connector notification/reporting of cert delivery takes place after NDES sends the issued cert to the device.  This is performed as a separate operation outside the cert request flow. Meaning that once NDES sends the cert to the device via the AAD app proxy (or other publishing firewall/proxy, a log is written with the cert delivery details on the NDES server by the connector (file location \Program Files\Microsoft Intune\CertificateRequestStatus\Succeed\ folder. The connector will look here, and send updates to Intune.

    1. The mobile device must be enrolled in Intune. If not, we reject the request as well

    1. The Intune connector disables the standard NDES challenge password request URL on the NDES server.

    1. The NDES server SCEP URI in most customer deployments is made available to the internet via Azure App Proxy, or an on-prem reverse proxy, i.e. F5.  
        >[!NOTE]
        >The Azure App Proxy is an outbound-only connection over Port 443, from the customers onprem network where the App Proxy connector is running on a server. The AAD app proxy can also be hosted on the NDES server. No inbound ports required when using Azure App Proxy.

        1. The mobile device talks only to the NDES URI

        1. Side note: AAD app proxy's role is to make onprem resources (like NDES and other customer onprem web services) securely available to the internet.

    1. The Intune connector must communicate with the Intune cloud service. The connector communication will not go through the Azure App Proxy. The connector will talk with the Intune cloud service via whatever mechanism a customer has onprem to allow outbound traffic to the internet, i.e. Internal proxy service.
        >[!NOTE]
        > if a proxy is used by the customer, no SSL packet inspection can take place for the NDES/Connector server going out.

1. Connector traffic with Intune cloud service consists of the following operations:

    1. 1st time configuration of the connector: Authentication to AAD during the initial connector setup.

    1. Connector checks in with Intune, and will process and any cert revocation transactions (i.e, if the Intune tenant admin issues a remote wipe – full or partial,  also If a user unenrolls their device from Intune), reporting on issued certs, renewing the connectors’ SC_Online_Issuing  certificate from Intune.  Also note: the NDES Intune connector has shared PKCS cert functionality (if you decide to issue PKCS/PFX based certs) so the connector checks to Intune for PKCS cert requests even though there won’t be any requests to process.  We are splitting that functionality out, so this connector just handles SCEP, but no ETA yet.

1. [Here](https://docs.microsoft.com/intune/intune-endpoints#microsoft-intune-certificate-connector) is a reference for Intune NDES connector network communications.
