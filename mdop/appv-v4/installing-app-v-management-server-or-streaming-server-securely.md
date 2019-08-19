---
title: Installing App-V Management Server or Streaming Server Securely
description: Installing App-V Management Server or Streaming Server Securely
author: eavena
ms.assetid: d2a51a81-a80f-427c-a727-611e1eb74f02
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Installing App-V Management Server or Streaming Server Securely


The topics in this section provide information for installing an enhanced security version of the App-V Management Server or the App-V Streaming Server.

**Note**  
Installing or configuring an App-V Management or Streaming Server to use enhanced security (for example, Transport Layer Security, or TLS) requires that an X.509 V3 certificate has been provisioned to the App-V server.

 

When you prepare to install or configure a secure Management or Streaming Server, consider the following technical requirements:

-   The certificate must be valid. If the certificate is not valid, the client ends the connection.

-   The certificate must contain the correct *Enhanced Key Usage* (EKU)—Server Authentication (OID 1.3.6.1.5.5.7.3.1). If the certificate does not contain this EKU, the client ends the connection.

-   The certificate fully qualified domain name (FQDN) must match the server on which it is installed. For example, if the client is calling `RTSPS://Myserver.mycompany.com/content/MyApp.sft` and the certificate **Issued To** field is set to `Server1.mycompany.com`, the client will not connect to the server and the session ends. The failure is reported to the user.

    **Note**  
    If you are using App-V in a Network Load Balancing cluster, you must configure the certificate with Subject Alternate Names (SANs) to support RTSPS. For information about configuring the certification authority (CA) and creating certificates with SANs, see <https://go.microsoft.com/fwlink/?LinkId=133228>.

     

-   The client and the server need to trust the root CA—The CA issuing the certificate to the App-V server must by trusted by the client connecting to the server. If not, the client ends the connection.

-   The certificate’s private key must have permissions changed to allow the App-V Service account to access the certificate. By default, App-V uses the Network Service account, and by default, the Network Service account does not have permission to access the private key, which will prevent secure connections.

## In This Section


<a href="" id="configuring-certificates-to-support-secure-streaming"></a>[Configuring Certificates to Support Secure Streaming](configuring-certificates-to-support-secure-streaming.md)  
Provides information about obtaining, configuring, and installing certificates to support secure streaming.

<a href="" id="how-to-modify-private-key-permissions-to-support-management-server-or-streaming-server"></a>[How to Modify Private Key Permissions to Support Management Server or Streaming Server](how-to-modify-private-key-permissions-to-support-management-server-or-streaming-server.md)  
Provides procedures you can use to modify keys in Windows Server 2003 and Windows Server 2008.

<a href="" id="configuring-certificates-to-support-app-v-management-server-or-streaming-server"></a>[Configuring Certificates to Support App-V Management Server or Streaming Server](configuring-certificates-to-support-app-v-management-server-or-streaming-server.md)  
Provides information about configuring certificates for the App-V Management or Streaming Servers, including information about configuring certificates for Network Load Balancing environments.

 

 





