---
title: Configure Active Directory Federation Services in an on-premises certificate trust model
description: Learn how to configure Active Directory Federation Services (AD FS) to support the Windows Hello for Business on-premises certificate trust model.
ms.date: 06/23/2024
ms.topic: tutorial
---

# Prepare and deploy Active Directory Federation Services - on-premises certificate trust

[!INCLUDE [apply-to-on-premises-cert-trust-entra](includes/apply-to-on-premises-cert-trust.md)]

Windows Hello for Business works exclusively with the Active Directory Federation Service (AD FS) role included with Windows Server. The on-premises certificate trust deployment model uses AD FS for *certificate enrollment* (CRA) and *device registration*.

[!INCLUDE [adfs-validate](includes/adfs-validate.md)]

[!INCLUDE [adfs-deploy](includes/adfs-deploy.md)]

> [!NOTE]
> For AD FS 2019 and later in a certificate trust model, a known PRT issue exists. You may encounter this error in AD FS Admin event logs: Received invalid Oauth request. The client 'NAME' is forbidden to access the resource with scope 'ugs'. For more information about the isse and its resolution, see [Certificate trust provisioning with AD FS broken on windows server 2019](../hello-deployment-issues.md#certificate-trust-provisioning-with-ad-fs-broken-on-windows-server-2019).

## Review to validate the AD FS and Active Directory configuration

> [!div class="checklist"]
> Before you continue with the deployment, validate your deployment progress by reviewing the following items:
>
> - Record the information about the AD FS certificate, and set a renewal reminder at least six weeks before it expires. Relevant information includes: certificate serial number, thumbprint, common name, subject alternate name, name of the physical host server, the issued date, the expiration date, and issuing CA vendor (if a non-Microsoft certificate)
> - Confirm you added the AD FS service account to the KeyAdmins group
> - Confirm you enabled the Device Registration service

[!INCLUDE [enrollment-agent-certificate-template](includes/certificate-template-enrollment-agent.md)]

### Publish the certificate template to the CA

Sign in to the CA or management workstations with **Enterprise Admin** equivalent credentials.

1. Open the **Certification Authority** management console
1. Expand the parent node from the navigation pane
1. Select **Certificate Templates** in the navigation pane
1. Right-click the **Certificate Templates** node. Select **New > Certificate Template** to issue
1. In the **Enable Certificates Templates** window, select the *WHFB Enrollment Agent* template you created in the previous step. Select **OK** to publish the selected certificate templates to the certification authority
1. If you published the *Domain Controller Authentication (Kerberos)* certificate template, then unpublish the certificate templates you included in the superseded templates list
   - To unpublish a certificate template, right-click the certificate template you want to unpublish and select **Delete**. Select **Yes** to confirm the operation
1. Close the console

## Configure the certificate registration authority

The Windows Hello for Business on-premises certificate-based deployment uses AD FS as the certificate registration authority (CRA). The registration authority is responsible for issuing certificates to users and devices. The registration authority is also responsible for revoking certificates when users or devices are removed from the environment.

Sign-in the AD FS server with *domain administrator* equivalent credentials.

Open a **Windows PowerShell** prompt and type the following command:

```PowerShell
Set-AdfsCertificateAuthority -EnrollmentAgent -EnrollmentAgentCertificateTemplate WHFBEnrollmentAgent -WindowsHelloCertificateTemplate WHFBAuthentication
   ```

>[!NOTE]
> If you gave your Windows Hello for Business Enrollment Agent and Windows Hello for Business Authentication certificate templates different names, then replace *WHFBEnrollmentAgent* and *WHFBAuthentication* in the above command with the name of your certificate templates. It's important that you use the template name rather than the template display name.  You can view the template name on the **General** tab of the certificate template by using the **Certificate Template** management console (certtmpl.msc). Or, you can view the template name by using the `Get-CATemplate` PowerShell cmdlet on a CA.

### Enrollment agent certificate lifecycle management

AD FS performs its own certificate lifecycle management. Once the registration authority is configured with the proper certificate template, the AD FS server attempts to enroll the certificate on the first certificate request or when the service first starts.

Approximately 60 days prior to enrollment agent certificate's expiration, the AD FS service attempts to renew the certificate until it is successful. If the certificate fails to renew, and the certificate expires, the AD FS server will request a new enrollment agent certificate. You can view the AD FS event logs to determine the status of the enrollment agent certificate.

[!INCLUDE [adfs-additional-servers](includes/adfs-additional-servers.md)]

### Event Logs

Use the event logs on the AD FS service to confirm the service account enrolled for an enrollment agent certificate.  First, look for the AD FS event ID 443 that confirms certificate enrollment cycle has finished. Once confirmed the AD FS certificate enrollment cycle completed review the *CertificateLifecycle-User* event log. In this event log, look for event ID 1006, which indicates a new certificate was installed. Details of the event log should show:

- The account name under which the certificate was enrolled
- The action, which should read enroll
- The thumbprint of the certificate
- The certificate template used to issue the certificate

You cannot use the Certificate Manager to view enrolled certificates for group managed service accounts. Use the event log information to confirm the AD FS service account enrolled a certificate. Use `certutil.exe` to view the details of the certificate shown in the event log.

Group managed service accounts use user profiles to store user information, which included enrolled certificates. On the AD FS server, use a command prompt and navigate to `%systemdrive%\users\<adfsGMSA_name>\appdata\roaming\Microsoft\systemcertificates\my\certificates`.

Each file in this folder represents a certificate in the service account's Personal store (You may need to use `dir.exe /A` to view the files in the folder). Match the thumbprint of the certificate from the event log to one of the files in this folder. That file is the certificate. Use the `Certutil -q <certificateThumbprintFileName>` to view the basic information about the certificate.

For detailed information about the certificate, use `Certutil -q -v <certificateThumbprintFileName>`.

[!INCLUDE [adfs-mfa](includes/adfs-mfa.md)]

## Review to validate the configuration

> [!div class="checklist"]
> Before you continue with the deployment, validate your deployment progress by reviewing the following items:
>
> - Configure an enrollment agent certificate template
> - Confirm only the AD FS service account has the allow enroll permission for the enrollment agent certificate template
> - Consider using an HSM to protect the enrollment agent certificate; however, understand the frequency and quantity of signature operations the enrollment agent server makes and understand the impact it has on overall performance
> - Confirm you properly configured the Windows Hello for Business authentication certificate template
> - Confirm all certificate templates were properly published to the appropriate issuing certificate authorities
> - Confirm the AD FS service account has the allow enroll permission for the Windows Hello Business authentication certificate template
> - Confirm the AD FS certificate registration authority is properly configured using the `Get-AdfsCertificateAuthority` Windows PowerShell cmdlet
> Confirm you restarted the AD FS service
> - Confirm you properly configured load-balancing (hardware or software)
> - Confirm you created a DNS A Record for the federation service and the IP address used is the load-balanced IP address
> - Confirm you created and deployed the Intranet Zone settings to prevent double authentication to the federation server
> - Confirm you have deployed a MFA solution for AD FS

> [!div class="nextstepaction"]
> [Next: configure and enroll in Windows Hello for Business >](on-premises-cert-trust-enroll.md)
