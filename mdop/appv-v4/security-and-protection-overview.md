---
title: Security and Protection Overview
description: Security and Protection Overview
author: eavena
ms.assetid: a43e1c53-7936-4d48-a110-0be26c8e9d97
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Security and Protection Overview


Microsoft Application Virtualization 4.5 provides the following enhanced security features to help you plan and implement a more secure deployment strategy:

-   Application Virtualization now supports Transport Layer Security (TLS) using X.509 V3 certificates. Provided that a server certificate has been provisioned to the planned Application Virtualization Management or Streaming Server, the installation will default to secure, using the RTSPS protocol over port 322. Using RTSPS ensures that communication between the Application Virtualization Servers and the Application Virtualization Clients is signed and encrypted. If no certificate is assigned to the server during the Application Virtualization Server installation, the communication will be set to RTSP over port 554.

    **Security Note:  **

    To help provide a secure setup of the server, you must make sure that RTSP ports are disabled even if you have all packages configured to use RTSPS.

    If you add security certificates to the server after installing the server, the server might not detect the certificates. To help ensure security certificate detection, restart the server after adding the certificates.

-   The client must be configured to use the same protocol and port as the server, or it will not be able to communicate with the server. The client must also trust the issuer of the certificate and ships with several of the primary providers in its Trusted Root Store. You can use self-signed certificates, but you will need to update the clients.

-   When configuring IIS servers to use the HTTPS protocol for streaming, you will need to set up Secure Sockets Layer (SSL) on the IIS server and provision the certificate for the server. The clients will also need to be configured to trust the root certification authority that issued the server certificate.

-   Kerberos authentication has been added to Microsoft Application Virtualization as the default authentication mechanism. Earlier versions relied upon NTLM V2 for authentication. Using Kerberos Authentication strengthens the security of the communication between the client and the Application Virtualization server. When a connection has been initiated from the client, the Application Virtualization Server verifies the session ticket with the Key Distribution Center (KDC).

-   Because of the support for using server certificates and using the RTSPS or HTTPS protocols, you can now support clients outside of the corporate network. This can help eliminate the need for mobile users to set up a secure connection to the corporate network (VPN, RAS, and so on) prior to launching Application Virtualization provisioned applications.

Other important security considerations to consider include the following:

-   Always keep servers fully updated and protected.

-   To add a certificate to enable more secure communications to the Application Virtualization Management Server, the following criteria must be met:

    -   The user who will be adding the certificate must be an administrator on the server where the certificate store is located.

    -   The server service must be started.

    -   Port 139 on the Management Server must be open to the Web Service server’s IP.

-   Use access control lists (ACLs) to ensure that the application packages and all package files are protected and cannot be tampered. ACLs restrict access to the location or folder where you store the packages, allowing access only to certain accounts.

-   Make sure that the channel between the Application Virtualization Management Server and the database is secured—for example, by using IPsec.

-   If packages are stored on a SAN or NAS, ensure the connection between the central storage device and the Application Virtualization Servers is protected.

-   All communication channels to the client should be protected—including connections to the publishing server, the Application Virtualization Server, and the path to the OSD and ICO files—by using a protocol such as HTTPS or IPsec. 

-   Client permissions should be configured to help ensure that packages cannot be tampered with by users. It is especially important that you do not grant users permission to add or update packages on systems, such as Remote Desktop Session Host (RD Session Host) servers, that are shared with multiple users.

-   Kerberos authentication must be permitted across domain or forest environments for the Server Management Console to work correctly.

-   This release of the software does not support hosting a Kerberos-based RTSP server and a Microsoft NTLM-only-based IIS server on the same computer. To host an RTSP server and an IIS server on the same computer, remove the SPN from the IIS server and use NTLM authentication.

## Related topics


[Planning for Application Virtualization System Deployment](planning-for-application-virtualization-system-deployment.md)

 

 





