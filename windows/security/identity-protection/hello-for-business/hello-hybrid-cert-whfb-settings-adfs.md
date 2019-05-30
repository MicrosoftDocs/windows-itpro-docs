---
title:  Configuring Hybrid Windows Hello for Business - Active Directory Federation Services (ADFS)
description: Discussing the configuration of Active Directory Federation Services (ADFS) in a Hybrid deployment of Windows Hello for Business
keywords: identity, PIN, biometric, Hello, passport, WHFB, adfs
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
audience: ITPro
author: mapalko
ms.author: mapalko
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 08/20/2018
---
# Configure Windows Hello for Business: Active Directory Federation Services

**Applies to**
-   Windows10, version 1703 or later
-   Hybrid deployment
-   Certificate trust

## Federation Services
The Windows Server 2016 Active Directory Federation Server Certificate Registration Authority (AD FS RA) enrolls for an enrollment agent certificate. Once the registration authority verifies the certificate request, it signs the certificate request using its enrollment agent certificate and sends it to the certificate authority. 

The Windows Hello for Business Authentication certificate template is configured to only issue certificates to certificate requests that have been signed with an enrollment agent certificate.

### Configure the Registration Authority

Sign-in the AD FS server with *Domain Admin* equivalent credentials. 

1.	Open a **Windows PowerShell** prompt.
2.	Type the following command   
  
    ```PowerShell
    Set-AdfsCertificateAuthority -EnrollmentAgent -EnrollmentAgentCertificateTemplate WHFBEnrollmentAgent -WindowsHelloCertificateTemplate WHFBAuthentication
    ```


>[!NOTE]
> If you gave your Windows Hello for Business Enrollment Agent and Windows Hello for Business Authentication certificate templates different names, then replace **WHFBEnrollmentAgent** and WHFBAuthentication in the above command with the name of your certificate templates.  It's important that you use the template name rather than the template display name.  You can view the template name on the **General** tab of the certificate template using the **Certificate Template** management console (certtmpl.msc).  Or, you can view the template name using the **Get-CATemplate** ADCS Administration Windows PowerShell cmdlet on a Windows Server 2012 or later certificate authority.


### Group Memberships for the AD FS Service Account

The Windows Hello for Business group provides the AD FS service with the permissions needed to enroll a Windows Hello for Business authentication certificate on behalf of the provisioning user.

Sign-in a domain controller or management workstation with _Domain Admin_ equivalent credentials.

1. Open **Active Directory Users and Computers**.
2. Click the **Users** container in the navigation pane.
3. Right-click **Windows Hello for Business Users** group
4. Click the **Members** tab and click **Add**
5. In the **Enter the object names to select** text box, type **adfssvc**.  Click **OK**.
6.	Click **OK** to return to **Active Directory Users and Computers**.
7.	Restart the AD FS server.

### Section Review
> [!div class="checklist"]
> * Configure the registration authority
> * Update group memberships for the AD FS service account


>[!div class="step-by-step"]
[< Configure PKI >](hello-hybrid-cert-whfb-settings-pki.md)
[Configure policy settings >](hello-hybrid-cert-whfb-settings-policy.md)

<br><br>

<hr>

## Follow the Windows Hello for Business hybrid certificate trust deployment guide
1. [Overview](hello-hybrid-cert-trust.md)
2. [Prerequisites](hello-hybrid-cert-trust-prereqs.md)
3. [New Installation Baseline](hello-hybrid-cert-new-install.md)
4. [Configure Azure Device Registration](hello-hybrid-cert-trust-devreg.md)
5. Configure Windows Hello for Business settings: AD FS (*You are here*)
6. [Sign-in and Provision](hello-hybrid-cert-whfb-provision.md)

