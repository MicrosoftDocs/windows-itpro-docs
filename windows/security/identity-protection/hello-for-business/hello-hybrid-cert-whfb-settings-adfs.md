---
title:  Configuring Hybrid Azure AD joined Windows Hello for Business - Active Directory Federation Services (ADFS)
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
ms.date: 4/30/2021
ms.reviewer: 
---
# Configure Hybrid Azure AD joined Windows Hello for Business: Active Directory Federation Services

**Applies to**

- Windows 10, version 1703 or later
- Windows 11
- Hybrid deployment
- Certificate trust

## Federation Services

The Windows Server 2016 Active Directory Federation Server Certificate Registration Authority (AD FS RA) enrolls for an enrollment agent certificate. Once the registration authority verifies the certificate request, it signs the certificate request using its enrollment agent certificate and sends it to the certificate authority.

The Windows Hello for Business Authentication certificate template is configured to only issue certificates to certificate requests that have been signed with an enrollment agent certificate.

> [!NOTE]
> In order for AD FS to verify user certificate requests for Windows Hello for Business, it needs to be able to access the https://enterpriseregistration.windows.net endpoint.

### Configure the Registration Authority

Sign-in the AD FS server with *Domain Admin* equivalent credentials. 

1. Open a **Windows PowerShell** prompt.
2. Enter the following command:
  
    ```PowerShell
    Set-AdfsCertificateAuthority -EnrollmentAgent -EnrollmentAgentCertificateTemplate WHFBEnrollmentAgent -WindowsHelloCertificateTemplate WHFBAuthentication -WindowsHelloCertificateProxyEnabled $true
    ```

    >[!NOTE]
    > If you gave your Windows Hello for Business Enrollment Agent and Windows Hello for Business Authentication certificate templates different names, then replace **WHFBEnrollmentAgent** and WHFBAuthentication in the preceding command with the name of your certificate templates.  It's important that you use the template name rather than the template display name.  You can view the template name on the **General** tab of the certificate template by using the **Certificate Template** management console (certtmpl.msc).  Or, you can view the template name by using the **Get-CATemplate** ADCS Administration Windows PowerShell cmdlet on a Windows Server 2012 or later certificate authority.

### Group Memberships for the AD FS Service Account

The Windows Hello for Business group provides the AD FS service with the permissions needed to enroll a Windows Hello for Business authentication certificate on behalf of the provisioning user.

> [!TIP]
> The adfssvc account is the AD FS service account.

Sign-in a domain controller or management workstation with _Domain Admin_ equivalent credentials.

1. Open **Active Directory Users and Computers**.
2. Click the **Users** container in the navigation pane.
3. Right-click **Windows Hello for Business Users** group.
4. Click the **Members** tab and click **Add**.
5. In the **Enter the object names to select** text box, type **adfssvc** or substitute the name of the AD FS service account in your AD FS deployment.  Click **OK**.
6. Click **OK** to return to **Active Directory Users and Computers**.
7. Restart the AD FS server.

> [!NOTE] 
> For AD FS 2019, if Windows Hello for Business with a Hybrid Certificate trust is performed, a known PRT issue exists. You may encounter this error in ADFS Admin event logs: Received invalid Oauth request. The client 'NAME' is forbidden to access the resource with scope 'ugs'. To remediate this error:
>
> 1. Launch AD FS management console. Browse to "Services > Scope Descriptions".
> 2. Right click "Scope Descriptions" and select "Add Scope Description".
> 3. Under name type "ugs" and Click Apply > OK.
> 4. Launch PowerShell as an administrator.
> 5. Get the ObjectIdentifier of the application permission with the ClientRoleIdentifier parameter equal to "38aa3b87-a06d-4817-b275-7a316988d93b":
> ```PowerShell
> (Get-AdfsApplicationPermission -ServerRoleIdentifiers 'http://schemas.microsoft.com/ws/2009/12/identityserver/selfscope' | ?{ $_.ClientRoleIdentifier -eq '38aa3b87-a06d-4817-b275-7a316988d93b' }).ObjectIdentifier
> ```
> 6. Execute the command `Set-AdfsApplicationPermission -TargetIdentifier <ObjectIdentifier from step 5> -AddScope 'ugs'`.
> 7. Restart the AD FS service.
> 8. On the client: Restart the client. User should be prompted to provision Windows Hello for Business.

### Section Review

> [!div class="checklist"]
> * Configure the registration authority.
> * Update group memberships for the AD FS service account.
> 
> 
> [!div class="step-by-step"]
> [< Configure PKI >](hello-hybrid-cert-whfb-settings-pki.md)
> [Configure policy settings >](hello-hybrid-cert-whfb-settings-policy.md)

<br><br>

<hr>

## Follow the Windows Hello for Business hybrid certificate trust deployment guide
1. [Overview](hello-hybrid-cert-trust.md)
2. [Prerequisites](hello-hybrid-cert-trust-prereqs.md)
3. [New Installation Baseline](hello-hybrid-cert-new-install.md)
4. [Configure Azure Device Registration](hello-hybrid-cert-trust-devreg.md)
5. Configure Windows Hello for Business settings: AD FS (*You are here*)
6. [Sign-in and Provision](hello-hybrid-cert-whfb-provision.md)

