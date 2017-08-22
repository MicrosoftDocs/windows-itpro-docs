---
title:  Configuring Hybrid Windows Hello for Business - Active Directory Federation Services (ADFS)
description: Discussing the configuration of Active Directory Federation Services (ADFS) in a Hybrid deployment of Windows Hello for Business
keywords: identity, PIN, biometric, Hello, passport, WHFB, adfs
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
localizationpriority: high
author: mikestephens-MS
ms.author: mstephen
---
# Configure Windows Hello for Business: Active Directory Federation Services

**Applies to**
-   Windows10

## Federation Services

>[!IMPORTANT]
>This guide only applies to Hybrid deployments for Windows 10, version 1703 or higher.

The Windows Server 2016 Active Directory Fedeartion Server Certificate Registration Authority (AD FS RA) enrolls for an enrollment agent certificate. Once the registration authority verifies the certificate request, it signs the certificate request using its enrollment agent certificate and sends it to the certificate authority. 

The Windows Hello for Business Authentication certificate template is configured to only issue certificates to certificate requests that have been signed with an enrollment agent certificate.

### Configure the Registration Authority

Sign-in the AD FS server with *Domain Admin* equivalent credentials. 

1.	Open a **Windows PowerShell** prompt.
2.	Type the following command   
  
    ```PowerShell
    Set-AdfsCertificateAuthority -EnrollmentAgent -EnrollmentAgentCertificateTemplate WHFBEnrollmentAgent -WindowsHelloCertificateTemplate WHFBAuthentication
    ```


The `Set-AdfsCertificateAuthority` cmdlet should show the following warning:
>WARNING: PS0343: Issuing Windows Hello certificates requires enabling a permitted strong authentication provider, but no usable providers are currently configured.  These authentication providers are not supported for Windows Hello certificates: CertificateAuthentication,MicrosoftPassportAuthentication. Windows Hello certificates will not be issued until a permitted strong authentication provider is configured.

This warning indicates that you have not configured multi-factor authentication in AD FS and until it is configured, the AD FS server will not issue Windows Hello certificates.  Windows 10, version 1703 clients check this configuration during prerequisite checks.  If detected, the prerequisite check will not succeed and the user will not provision Windows Hello for Business on sign-in.

>[!NOTE]
> If you gave your Windows Hello for Business Enrollment Agent and Windows Hello for Business Authentication certificate templates different names, then replace **WHFBEnrollmentAgent** and WHFBAuthentication in the above command with the name of your certificate templates.  It�s important that you use the template name rather than the template display name.  You can view the template name on the **General** tab of the certificate template using the **Certificate Template** management console (certtmpl.msc).  Or, you can view the template name using the **Get-CATemplate** ADCS Administration Windows PowerShell cmdlet on a Windows Server 2012 or later certificate authority.


### Group Memberships for the AD FS Service Account

The KeyCredential Admins global group provides the AD FS service with the permissions needed to perform key registration.  The Windows Hello for Business group provides the AD FS service with the permissions needed to enroll a Windows Hello for Business authentication certificate on behalf of the provisioning user.

Sign-in a domain controller or management workstation with _Domain Admin_ equivalent credentials.

1. Open **Active Directory Users and Computers**.
2. Click the **Users** container in the navigation pane.
3. Right-click **KeyCredential Admins** in the details pane and click **Properties**.
4. Click the **Members** tab and click **Add�**
5. In the **Enter the object names to select** text box, type **adfssvc**.  Click **OK**.
6. Click **OK** to return to **Active Directory Users and Computers**.
7. Right-click **Windows Hello for Business Users** group
8. Click the **Members** tab and click **Add�**
9. In the **Enter the object names to select** text box, type **adfssvc**.  Click **OK**.
10.	Click **OK** to return to **Active Directory Users and Computers**.
11.	Change to server hosting the AD FS role and restart it.

### Section Review
- [x] Active Directory
- [x] Public Key Infrastructure
- [x] Azure Active Directory
- [x] Directory Synchronization
- [x] Active Directory Federation Services
- [x] Federation Services
  - [x]	Federation Proxy Servers
  - [x]	Multiple top-level domains
  - [x]	Azure Device Registration
  - [x]	Device Writeback
- [x] Multifactor Authentication
- [x] Windows Hello for Business
  - [x]Active Directory
  - [x] Directory Synchronization
  - [x] Public Key Infrastructure
  - [x] Federation Services
  - [ ] Group Policy
- [ ] Sign-in and Provision

