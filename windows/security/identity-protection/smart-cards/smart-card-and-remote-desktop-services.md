---
title: Smart Card and Remote Desktop Services (Windows 10)
description: This topic for the IT professional describes the behavior of Remote Desktop Services when you implement smart card sign-in.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
audience: ITPro
author: dulcemontemayor
ms.author: dansimp
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
ms.localizationpriority: medium
ms.date: 04/19/2017
ms.reviewer: 
---

# Smart Card and Remote Desktop Services

Applies To: Windows 10, Windows Server 2016

This topic for the IT professional describes the behavior of Remote Desktop Services when you implement smart card sign-in.

The content in this topic applies to the versions of Windows that are designated in the **Applies To** list at the beginning of this topic. In these versions, smart card redirection logic and **WinSCard** API are combined to support multiple redirected sessions into a single process.

Smart card support is required to enable many Remote Desktop Services scenarios. These include:

-   Using Fast User Switching or Remote Desktop Services. A user is not able to establish a redirected smart card-based remote desktop connection. That is, the connect attempt is not successful in Fast User Switching or from a Remote Desktop Services session.

-   Enabling Encrypting File System (EFS) to locate the user's smart card reader from the Local Security Authority (LSA) process in Fast User Switching or in a Remote Desktop Services session. If EFS is not able to locate the smart card reader or certificate, EFS cannot decrypt user files.

## Remote Desktop Services redirection

In a Remote Desktop scenario, a user is using a remote server for running services, and the smart card is local to the computer that the user is using. In a smart card sign-in scenario, the smart card service on the remote server redirects to the smart card reader that is connected to the local computer where the user is trying to sign in.

![Smart card service redirects to smart card reader](images/sc-image101.png)

**Remote Desktop redirection**

Notes about the redirection model:

1.  This scenario is a remote sign-in session on a computer with Remote Desktop Services. In the remote session (labeled as "Client session"), the user runs **net use /smartcard**.

2.  Arrows represent the flow of the PIN after the user types the PIN at the command prompt until it reaches the user's smart card in a smart card reader that is connected to the Remote Desktop Connection (RDC) client computer.

3.  The authentication is performed by the LSA in session 0.

4.  The CryptoAPI processing is performed in the LSA (Lsass.exe). This is possible because RDP redirector (rdpdr.sys) allows per-session, rather than per-process, context.

5.  The WinScard and SCRedir components, which were separate modules in operating systems earlier than Windows Vista, are now included in one module. The ScHelper library is a CryptoAPI wrapper that is specific to the Kerberos protocol.

6.  The redirection decision is made on a per smart card context basis, based on the session of the thread that performs the SCardEstablishContext call.

7.  Changes to WinSCard.dll implementation were made in Windows Vista to improve smart card redirection.

## RD Session Host server single sign-in experience

As a part of the Common Criteria compliance, the RDC client must be configurable to use Credential Manager to acquire and save the user's password or smart card PIN. Common Criteria compliance requires that applications not have direct access to the user's password or PIN.

Common Criteria compliance requires specifically that the password or PIN never leave the LSA unencrypted. A distributed scenario should allow the password or PIN to travel between one trusted LSA and another, and it cannot be unencrypted during transit.

When smart card-enabled single sign-in (SSO) is used for Remote Desktop Services sessions, users still need to sign in for every new Remote Desktop Services session. However, the user is not prompted for a PIN more than once to establish a Remote Desktop Services session. For example, after the user double-clicks a Microsoft Word document icon that resides on a remote computer, the user is prompted to enter a PIN. This PIN is sent by using a secure channel that the credential SSP has established. The PIN is routed back to the RDC client over the secure channel and sent to Winlogon. The user does not receive any additional prompts for the PIN, unless the PIN is incorrect or there are smart card-related failures.

### Remote Desktop Services and smart card sign-in

Remote Desktop Services enable users to sign in with a smart card by entering a PIN on the RDC client computer and sending it to the RD Session Host server in a manner similar to authentication that is based on user name and password.

In addition, Group Policy settings that are specific to Remote Desktop Services need to be enabled for smart card-based sign-in.

To enable smart card sign-in to a Remote Desktop Session Host (RD Session Host) server, the Key Distribution Center (KDC) certificate must be present on the RDC client computer. If the computer is not in the same domain or workgroup, the following command can be used to deploy the certificate:

**certutil -dspublish NTAuthCA** "*DSCDPContainer*"

The *DSCDPContainer* Common Name (CN) is usually the name of the certification authority.

Example:

**certutil -dspublish NTAuthCA** &lt;*CertFile*&gt; **"CN=NTAuthCertificates,CN=Public Key Services,CN=Services,CN=Configuration,DC=engineering,DC=contoso,DC=com"**

For information about this option for the command-line tool, see [-dsPublish](https://technet.microsoft.com/library/cc732443(v=ws.11).aspx#BKMK_dsPublish).

### Remote Desktop Services and smart card sign-in across domains

To enable remote access to resources in an enterprise, the root certificate for the domain must be provisioned on the smart card. From a computer that is joined to a domain, run the following command at the command line:

**certutil -scroots update**

For information about this option for the command-line tool, see [-SCRoots](https://technet.microsoft.com/library/cc732443(v=ws.11).aspx#BKMK_SCRoots).

For Remote Desktop Services across domains, the KDC certificate of the RD Session Host server must also be present in the client computer's NTAUTH store. To add the store, run the following command at the command line:

**certutil -addstore -enterprise NTAUTH** &lt;*CertFile*&gt;

Where &lt;*CertFile*&gt; is the root certificate of the KDC certificate issuer.

For information about this option for the command-line tool, see [-addstore](https://technet.microsoft.com/library/cc732443(v=ws.11).aspx#BKMK_addstore).

> **Note**&nbsp;&nbsp;If you use the credential SSP on computers running the supported versions of the operating system that are designated in the **Applies To** list at the beginning of this topic: To sign in with a smart card from a computer that is not joined to a domain, the smart card must contain the root certification of the domain controller. A public key infrastructure (PKI) secure channel cannot be established without the root certification of the domain controller.

Sign-in to Remote Desktop Services across a domain works only if the UPN in the certificate uses the following form: <*ClientName*>@<*DomainDNSName*>

The UPN in the certificate must include a domain that can be resolved. Otherwise, the Kerberos protocol cannot determine which domain to contact. You can resolve this issue by enabling GPO X509 domain hints. For more information about this setting, see [Smart Card Group Policy and Registry Settings](smart-card-group-policy-and-registry-settings.md).

## See also

[How Smart Card Sign-in Works in Windows](smart-card-how-smart-card-sign-in-works-in-windows.md)
