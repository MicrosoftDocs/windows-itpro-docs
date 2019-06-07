---
title: Planning for Client Security
description: Planning for Client Security
author: eavena
ms.assetid: 4840a60f-4c91-489c-ad0b-6671882abf9b
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# Planning for Client Security


The App-V Client provides several security enhancements that were not present in previous versions of the product. These changes provide improved security after installation and through later configuration of the client settings. This topic describes some of those enhancements and identifies several important security-related configuration settings that you should consider during your planning process. It is important to remember that virtual applications are still executables, so you must ensure that these assets cannot be tampered with by unauthorized people. For this reason, the Open Software Descriptor (OSD) file cache is protected as described later in this topic, and we strongly recommend that you use RTSPS, HTTPS, and IPsec to protect publishing and streaming.

## App-V Client Security


By default, at installation the App-V client is configured with the minimum permissions required to allow a user to perform a publishing refresh and to start applications. Other security enhancements provided in the App-V client include the following:

-   By default, the OSD file cache can be updated only by administrators and by using the publishing refresh process.

-   The log file (sftlog.txt) is accessible only by accounts with local administrative access to the client.

-   The log file now has a maximum size.

### File Type Associations

By default, the installation of the client registers file type associations (FTAs) for OSD files, which enables users to start applications directly from OSD files instead of the published shortcuts. If a user with local administrator rights receives an OSD file containing malicious code, either in e-mail or downloaded from a Web site, the user can open the OSD file and start the application even if the client has been set to restrict the **Add Application** permission. You can unregister the FTAs for the OSD to reduce this risk. Also, consider blocking this extension in the e-mail system and at the firewall. For more information about configuring Outlook to block extensions, see <https://go.microsoft.com/fwlink/?LinkId=133278>.

**Security Note:  **

Starting with App-V version 4.6, the file type association is no longer created for OSD files during a new installation of the client, although the existing settings will be maintained during an upgrade from version 4.2 or 4.5 of the App-V client. If for any reason it is essential to create the file type association, you can create the following registry keys and set their values as shown:

    Create HKEY\_CLASSES\_ROOT\\.osd with a default value of SoftGrid.osd.File

    Under HKEY\_LOCAL\_MACHINE\\software\\classes\\Softgrid.osd.file, create a string value named AppUserModelID with a data value of Microsoft.AppV.Client.Tray

### Authorization

During installation, you can use the **RequireAuthorizationIfCached** parameter to configure the client to require authorization from the server when the user tries to start an application. You should consider carefully how to set this parameter. If the App-V server is unavailable for any reason, the application will use the most recent stored state of this parameter to control user access to the application. If the user has not launched the application successfully before the App-V server becomes unavailable, they will not be able to launch the application until they can communicate with the server and receive authorization. However, if you set the parameter so that the client does not require authorization and if the server is unavailable, all previously cached applications can be started whether authorized or not. Also, if the user has permission to change the client to Work Offline mode through permissions or if the user is a local administrator, the user would be able to open all cached packages as if the App-V infrastructure was unavailable.

### Antivirus Scanning

Antivirus software running on an App-V Client computer can detect and report an infected file in the virtual environment. However, it cannot disinfect the file. If a virus is detected in the virtual environment, the antivirus software would perform the configured quarantine or repair operation in the cache, not in the actual package. Configure the antivirus software with an exception for the sftfs.fsd file. This file is the cache file that stores packages on the App-V Client.

**Security Note:  **

If a virus is detected in an application or package deployed in the production environment, replace the application or package with a virus-free version.

## Communication Between Client and Server


Publishing refreshes and package streaming are also areas where security considerations relating to client-server communication are important.

### Publishing Refresh

When the client communicates with the server to perform a publishing refresh, it uses the credentials of the logged on user to request information about the application packages. You should secure the communication that occurs between the App-V client and App-V Management Server to ensure that none of the publishing information can be tampered with in transit. This is done by using the Enhanced Security option, which will use RTSPS/HTTPS. Communication between the Client and the location where the ICO and OSD files are stored should use IPsec for SMB/CIFS shares and HTTPS for an IIS server.

**Note**  
If you are using IIS to publish the ICO and OSD files, configure a MIME type for OSD=TXT; otherwise, IIS will refuse to serve the ICO and OSD files to clients.

 

### Package Streaming

When a user launches an application for the first time, or if auto-loading parameters have been set on the client, the application package is streamed from a server to the client cache. This process supports the RTSP/RTSPS, HTTP/HTTPS, and SMB/CIFS protocols. The OSD files control which protocols are used, unless the **ApplicationSourceRoot** or **OverrideURL** setting has been configured on the clients. You should configure communication to occur over RTSPS, HTTPS, or IPsec for SMB/CIFS to achieve higher levels of security. For more information about choosing which communication method to use, see the App-V Planning and Deployment Guide at <https://go.microsoft.com/fwlink/?LinkId=122063>.

**Note**  
If you are using IIS to publish packages (SFT files), configure a MIME type for SFT=Binary; otherwise, IIS will refuse to serve the SFT files to clients.

 

### Roaming Profiles and Folder Redirection

The App-V system stores user-specific changes to packages in the usrvol\_sftfs\_v1.pkg file. This file is located in the Application Data folder of a user’s profile. Because the profile or a redirected Application Data folder is transferred between the client and the server, use IPsec to secure the communication.

## Considerations for Internet-Facing Clients


For Internet-facing clients, it is important to consider whether the client is domain joined or non-domain joined.

### Domain Joined Client

By default, App-V Clients use Kerberos tickets that were issued by Active Directory Domain Services for authentication and authorization on the intranet. These Kerberos tickets are valid for 10 hours by default. The client will use this ticket to access the App-V server for as long as the ticket is valid, even if the computer is unable to connect to the domain controller to refresh the ticket. If the Kerberos ticket expires, the App-V client will revert to NTLM authentication and use the user’s cached credentials.

### Non-Domain Joined Client

If a user is home-based and the computer is not joined to the company domain, App-V can still support delivering applications. To authenticate and authorize a user to perform a publishing refresh and to start applications, configure the user account on the client computer to store the user name and password that has access to the App-V environment and to provide appropriate permissions to the applications.

## Related topics


[Planning for Security and Protection](planning-for-security-and-protection.md)

 

 





