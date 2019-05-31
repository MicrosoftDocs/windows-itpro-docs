---
title: Configuring Certificates to Support App-V Management Server or Streaming Server
description: Configuring Certificates to Support App-V Management Server or Streaming Server
author: dansimp
ms.assetid: 2f24e550-585e-4b7e-b486-22a3f181f543
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# Configuring Certificates to Support App-V Management Server or Streaming Server


After you complete the certificate provisioning process and change the private key permissions to support the App-V installation, you can launch the setup of the Management Server or the Streaming Server. During setup, if a certificate is provisioned before running the setup program, the wizard displays the certificate in the **Connection Security Mode** screen and, by default, the **Use enhanced security** check box is selected.

**Note**  
Select the certificate that was configured for App-V if there is more than one certificate provisioned for this server.

 

**Important**  
When upgrading from version  4.2 to version  4.5, the setup has an option for **Use enhanced security**; however, selecting this option will not disable streaming over RTSP. You must use the Management Console to disable RTSP after installation.

 

Select the TCP port that the service will use for client communications. The default port is TCP 322; however, you can change the port to a custom port for your environment.

The remaining steps of the wizard are the same as if you were deploying an App-V Management or Streaming Server without using the **Enhanced security** feature.

## Configuring Certificates for NLB Environments


To support large enterprises, often the Management Server is placed into a Network Load Balancing (NLB) cluster to support the large number of connections. This requires at least two Management Servers that appear to be a single Management Server. When your environment uses an NLB cluster with several Management Servers, you need an advanced configuration of the certificate used for the NLB cluster.

The App-V certificate is submitted to a certification authority (CA) that is configured on a computer running Windows Server 2003. The SAN lets you connect to a specific Management Server NLB cluster host name by using a Domain Name System (DNS) name that might differ from the actual computer names, because there can be up to 32 servers that comprise the NLB cluster.

This configuration is necessary only when using an NLB cluster. When the client connects to the server, it will connect using the fully qualified domain name (FQDN) of the NLB cluster and not the FQDN of an individual server. If you do not add the SAN property with the FQDN of the server nodes in the cluster, all client connections are refused because the common name of the certificate won’t match the server name.

For more detailed information about configuring certificates with the SAN attribute, see <https://go.microsoft.com/fwlink/?LinkId=133228>.

## Related topics


[Configuring Certificates to Support Secure Streaming](configuring-certificates-to-support-secure-streaming.md)

[How to Modify Private Key Permissions to Support Management Server or Streaming Server](how-to-modify-private-key-permissions-to-support-management-server-or-streaming-server.md)

 

 





