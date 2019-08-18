---
title: How to Modify Private Key Permissions to Support Management Server or Streaming Server
description: How to Modify Private Key Permissions to Support Management Server or Streaming Server
author: eavena
ms.assetid: 1ebe86fa-0fbc-4512-aebc-0a5da991cd43
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# How to Modify Private Key Permissions to Support Management Server or Streaming Server


To support a more secure App-V installation, you can use the following procedures to modify private keys in either Windows Server 2003 or Windows Server 2008. To modify the permissions of the private key, you can use the Windows Server 2003 Resource Kit tool `WinHttpCertCfg.exe`.

For Windows Server 2003, the procedure requires that a certificate that meets the prerequisites listed in this document is installed on the computer or computers on which you will install the App-V Management or Streaming Server. Additional information about using the `WinHttpCertCfg.exe` tool is available at <https://go.microsoft.com/fwlink/?LinkId=151981>.

In Windows Server 2008, the process of changing the ACLs on the private key is much simpler. The certificate’s user interface can be used to manage private key permissions.

**Note**  
The default security context is Network Service; however, a domain account can be used instead.

 

**To manage private keys in Windows Server 2003**

1.  On the computer that will become the App-V Management or Streaming Server, type the following command in a command prompt to list the current permissions assigned to a specific certificate:

    `winhttpcertcfg -l -c LOCAL_MACHINE\My -s Name_of_cert`

2.  If necessary, modify the permissions of the certificate to provide read access to the security context that will be used for Management or Streaming Service:

    `winhttpcertcfg -g -c LOCAL_MACHINE\My -s Name_of_cert -a NetworkService`

3.  Verify that the security context was properly added by listing the permissions on the certificate:

    `winhttpcertcfg –l –c LOCAL_MACHINE\My –s Name_of_cert`

**To manage private keys in Windows Server 2008**

1.  Create a Microsoft Management Console (MMC) with the *Certificates* snap-in that targets the *Local Machine* certificate store.

2.  Expand the MMC and select **Manage Private Keys**.

3.  On the **Security** tab, add the **Network Service** account with **Read** access.

## Related topics


[Configuring Certificates to Support App-V Management Server or Streaming Server](configuring-certificates-to-support-app-v-management-server-or-streaming-server.md)

[Configuring Certificates to Support Secure Streaming](configuring-certificates-to-support-secure-streaming.md)

 

 





