---
title: Planning for Server Security
description: Planning for Server Security
author: eavena
ms.assetid: c7cd8227-b359-41e7-a8ae-d0d5718a76a2
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# Planning for Server Security


To enhance the security of an environment, you must look at the exposure to any potential threats in the environment. Providing security for an App-V infrastructure requires you to use the specific App-V security features as well as the security practices and features for the underlying infrastructure. Securing the underlying infrastructure for services such as Internet Information Services (IIS), Active Directory Domain Services, and SQL Server will improve the overall security for your App-V system.

The default settings for the server installation provide the highest levels of security. However, some of the components rely on underlying infrastructure that is not configured as part of the installation. Following up with post-installation steps will enhance the security of the App-V infrastructure.

The content directory contains all of the packages that are to be streamed to clients. These resources need to be as secure as possible to eliminate many possible security threats. The following list offers some additional guidance:

-   UNC-based publishing and/or streaming—The permissions for this item should be the most restrictive in the environment. Use NTFS permissions to implement the most restrictive access control lists (ACLs) for the content directory (Users=Read, Administrators=Read and Write).

-   IIS used for publishing and/or streaming—Configure IIS to support only Windows Integrated authentication. Remove anonymous access to the IIS server, and restrict access to the directory with NTFS permissions.

-   RTSP/RTSPS to stream application packages—Configure the App-V Provider Policy to require authentication, enforce access permissions, and enable only required groups to have access to the provider policy. Configure applications with the appropriate permissions in the database.

Keep the number of users with administrative privileges to a minimum to reduce possible threats to the data in the data store and to avoid publishing malicious applications into the infrastructure.

##  Application Virtualization Security


App-V uses several methods of communication between the various components of the infrastructure. When you plan your App-V infrastructure, securing the communications between servers can reduce the security risks that might already be present on the existing network.

### Data Store

The Application Virtualization Management Server and Application Virtualization Management Service communicate with the data store by using an SQL connection over TCP port 1433. The Management Server uses the data store to retrieve application and configuration data, and it writes usage information to the database. The Management Service communicates with the data store on behalf of an administrator who is configuring the App-V infrastructure. Because the data store contains critical information, it is important to minimize threats to this data.

It is recommended that communications between App-V Management Server, Management Service and the data store be secured with Internet Protocol Security (IPsec). Specifically, create policies that secure the communication channel between the data store (SQL) and the Management Server and the data store and the Management Service. You can also deploy server and domain isolation with IPsec, ensuring all App-V infrastructure components communicate only with secure channels. For information about implementing IPsec, refer to the following documentation:

-   For Windows Server 2003, see <https://go.microsoft.com/fwlink/?LinkId=133226> (https://go.microsoft.com/fwlink/?LinkId=133226).

-   For Windows Server 2008, see <https://go.microsoft.com/fwlink/?LinkId=133227> (https://go.microsoft.com/fwlink/?LinkId=133227).

### Content Directory

The App-V Management Server installation configures a location for the content directory. This directory is the storage location for virtualized application packages. This location can be local to the server, or it can be placed on a remote network share. Therefore, implement IPsec to help secure the communication with a remote location for the content directory.

You can also use a virtual directory on an IIS server to stream packages to the clients. If the virtual directory that is created for content is located on a remote source, use IPsec to help secure the communication between the IIS server and the remote storage location.

The content directory contains all of the packages that are streamed to clients. These resources need to be as secure as possible to eliminate many possible security threats.

### Security Protocols

You can use RTSPS or HTTPS for enhanced secure communications. RTSPS is the protocol used by App-V servers, and HTTPS is the protocol used by IIS servers. These protocols are used when publishing applications from the server to the Application Virtualization Desktop Client. After you determine the desired protocol, add a publishing server that uses that protocol.

### <a href="" id="configuring-app-v-servers-for-rtsps-"></a>Configuring App-V Servers for RTSPS

Installing or configuring an App-V Management Server or Streaming Server to use Enhanced Security (for example, TLS) requires that an X.509 V3 certificate be provisioned to the App-V server. When you prepare to install or configure security for a server, you must fulfill some specific requirements. Technical requirements for deploying and configuring certificates for a more secure App-V Management Server or Streaming Server include the following:

-   Certificate must be valid. Otherwise, the client terminates the connection.

-   Certificate must contain the correct Enhanced Key Usage (EKU) - Server Authentication (OID 1.3.6.1.5.5.7.3.1). Otherwise, the client terminates the connection.

-   Certificate fully qualified domain name (FQDN) must match the server on which it is installed. For example, if the client is calling `RTSPS://Myserver.mycompany.com/content/MyApp.sft`, but the certificate **Issued To** field contains `Myserver1.mycompany.com`, the client will not connect to the server and the session is terminated, even if `Myserver.mycompany.com` and `Myserver1.mycompany.com` resolve to the same IP address.

    **Note**  
    If you use App-V in a network load balanced cluster, the certificate must be configured with *Subject Alternate Names* (SANs) to support RTSPS. For information about configuring the certification authority (CA) and creating certificates with SANs, see <https://go.microsoft.com/fwlink/?LinkId=133228> (https://go.microsoft.com/fwlink/?LinkId=133228).

     

-   The CA issuing the certificate to the App-V server must be trusted by the client connecting to the server. Otherwise, the client terminates the connection.

-   You must change the permissions for the *Certificate Private Key* to enable access by the Server App-V Service. By default, the App-V Management Server and Streaming Server services run under the Network Service account. When a PKCS\#10 is generated on the server, a private key is created. Only the Local System and Administrators groups have access to this key. These default ACLs prevent the App-V server from accepting secure connections.

    **Note**  
    For information about configuring a public key infrastructure (PKI), see <https://go.microsoft.com/fwlink/?LinkId=133229> (https://go.microsoft.com/fwlink/?LinkId=133229).

     

### Configuring IIS Servers with HTTPS

App-V might use IIS servers in certain infrastructure configurations. For more information about configuring IIS servers, see <https://go.microsoft.com/fwlink/?LinkId=133230> (https://go.microsoft.com/fwlink/?LinkId=133230).

**Note**  
If you are using IIS to publish the ICO and OSD files, configure a MIME type for OSD=TXT; otherwise, IIS will refuse to serve the ICO and OSD files to clients.

 

### Application-Level Security

You can configure the servers to stream specific applications to a user’s desktop. However, access permission actually is granted at the package level, not at the application level. Although a specific application might not be published to the user’s desktop, if the user has permission to add applications or is an administrator on the client computer, the user can create and use a shortcut on the client to run all the applications in a package.

## Configuring App-V Administration for a Distributed Environment


When designing the infrastructure for your specific organization, you can install the App-V Management Web Service on a computer other than the computer where you install the App-V Management Server. Common reasons for separating these App-V components include the following:

-   Performance

-   Reliability

-   Availability

-   Scalability

For the infrastructure to operate correctly, separating the App-V Management Console, Management Server and Management Web Service requires additional configuration. For detailed information about how to configure the server, see [How to Configure the Server to be Trusted for Delegation](how-to-configure-the-server-to-be-trusted-for-delegation.md).

## Related topics


[Planning for Security and Protection](planning-for-security-and-protection.md)

 

 





