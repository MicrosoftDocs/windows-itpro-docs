---
title: Install digital certificates on Windows 10 Mobile (Windows 10)
description: Digital certificates bind the identity of a user or computer to a pair of keys that can be used to encrypt and sign digital information.
ms.assetid: FF7B1BE9-41F4-44B0-A442-249B650CEE25
ms.reviewer: 
keywords: S/MIME, PFX, SCEP
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
audience: ITPro
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
ms.localizationpriority: medium
ms.date: 07/27/2017
---

# Install digital certificates on Windows 10 Mobile

**Applies to**
-   Windows 10 Mobile

Digital certificates bind the identity of a user or computer to a pair of keys that can be used to encrypt and sign digital information. Certificates are issued by a certification authority (CA) that vouches for the identity of the certificate holder, and they enable secure client communications with websites and services.

Certificates in Windows 10 Mobile are primarily used for the following purposes:
-   To create a secure channel using Secure Sockets Layer (SSL) between a phone and a web server or service.
-   To authenticate a user to a reverse proxy server that is used to enable Microsoft Exchange ActiveSync (EAS) for email.
-   For installation and licensing of applications (from the Windows Phone Store or a custom company distribution site).


>[!WARNING]  
>In Windows 10, Version 1607, if you have multiple certificates provisioned on the device and the Wi-Fi profile provisioned does not have a strict filtering criteria, you may see connection failures when connecting to Wi-Fi. [Learn more about this known issue in Version 1607](https://go.microsoft.com/fwlink/p/?LinkId=786764)

## Install certificates using Microsoft Edge

A certificate can be posted on a website and made available to users through a device-accessible URL that they can use to download the certificate. When a user accesses the page and taps the certificate, it opens on the device. The user can inspect the certificate, and if they choose to continue, the certificate is installed on the Windows 10 Mobile device.

## Install certificates using email

The Windows 10 Mobile certificate installer supports .cer, .p7b, .pem, and .pfx files. Some email programs block .cer files for security reasons. If this is the case in your organization, use an alternative method to deploy the certificate. Certificates that are sent via email appear as message attachments. When a certificate is received, a user can tap to review the contents and then tap to install the certificate. Typically, when an identity certificate is installed, the user is prompted for the password (or passphrase) that protects it.

## Install certificates using mobile device management (MDM)

Windows 10 Mobile supports root, CA, and client certificate to be configured via MDM. Using MDM, an administrator can directly add, delete, or query root and CA certificates, and configure the device to enroll a client certificate with a certificate enrollment server that supports Simple Certificate Enrollment Protocol (SCEP). SCEP enrolled client certificates are used by Wi-Fi, VPN, email, and browser for certificate-based client authentication. An MDM server can also query and delete SCEP enrolled client certificate (including user installed certificates), or trigger a new enrollment request before the current certificate is expired.
>[!WARNING]
>Do not use SCEP for encryption certificates for S/MIME. You must use a PFX certificate profile to support S/MIME on Windows 10 Mobile. For instructions on creating a PFX certificate profile in Microsoft Intune, see [Enable access to company resources using certificate profiles with Microsoft Intune](https://go.microsoft.com/fwlink/p/?LinkID=718216).
 
**Process of installing certificates using MDM**

1.  The MDM server generates the initial cert enroll request including challenge password, SCEP server URL, and other enrollment related parameters.
2.  The policy is converted to the OMA DM request and sent to the device.
3.  The trusted CA certificate is installed directly during MDM request.
4.  The device accepts certificate enrollment request.
5.  The device generates private/public key pair.
6.  The device connects to Internet-facing point exposed by MDM server.
7.  MDM server creates a certificate that is signed with proper CA certificate and returns it to device.

    >[!NOTE]
    >The device supports the pending function to allow server side to do additional verification before issuing the cert. In this case, a pending status is sent back to the device. The device will periodically contact the server, based on preconfigured retry count and retry period parameters. Retrying ends when either:
    >
    >- A certificate is successfully received from the server
    >- The server returns an error
    >- The number of retries reaches the preconfigured limit
     
8.  The cert is installed in the device. Browser, Wi-Fi, VPN, email, and other first party applications have access to this certificate.

    >[!NOTE]
    >If MDM requested private key stored in Trusted Process Module (TPM) (configured during enrollment request), the private key will be saved in TPM. Note that SCEP enrolled cert protected by TPM isn’t guarded by a PIN. However, if the certificate is imported to the Windows Hello for Business Key Storage Provider (KSP), it is guarded by the Hello PIN.
     
## Related topics

[Configure S/MIME](configure-s-mime.md)
 
