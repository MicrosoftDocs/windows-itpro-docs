---
title: Configuring Certificates to Support Secure Streaming
description: Configuring Certificates to Support Secure Streaming
author: dansimp
ms.assetid: 88dc76d8-7745-4729-92a1-af089c921244
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# Configuring Certificates to Support Secure Streaming


By default, the App-V service runs under the Network Service account. However, you can create a service account in Active Directory Domain Services and replace the Network Service account with the Active Directory Domain account.

The security context under which the service runs is important for configuring enhanced secure communications. This security context must have read permissions for the certificate private key. When a PKCS\#10 *Certificate Signing Request* (CSR) is generated for the App-V server, the Windows *Cryptographic Service Provider* is called and a private key is generated. The private key is secured with permissions given to the System and Administrator accounts only.

You must modify the access control lists (ACLs) on the private key to let the App-V Management or Streaming Server access the private key required for successful TLS secured communication.

## Obtaining and Installing a Certificate


The scenarios for obtaining and installing a certificate for App-V are as follows:

-   Internal public key infrastructure (PKI).

-   Third-party certificate issuing certification authority (CA).

    **Note**  
    If you need to obtain a certificate from a third-party CA, follow the documentation available on that CA’s Web site.

     

If a PKI infrastructure has been deployed, consult with the PKI administrators to acquire a certificate that complies with the requirements described in this topic. If a PKI infrastructure is not available, use a third-party CA to obtain a valid certificate.

For step-by-step guidance for obtaining and installing a certificate, see <https://go.microsoft.com/fwlink/?LinkId=151969>.

## Related topics


Configuring Certificates to Support Secure Streaming
[How to Modify Private Key Permissions to Support Management Server or Streaming Server](how-to-modify-private-key-permissions-to-support-management-server-or-streaming-server.md)

 

 





