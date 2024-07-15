---
title: Configure Active Directory Federation Services in a hybrid certificate trust model
description: Learn how to configure Active Directory Federation Services (AD FS) to support the Windows Hello for Business hybrid certificate trust model.
ms.date: 06/23/2024
ms.topic: tutorial
---

# Configure Active Directory Federation Services in a hybrid certificate trust model

[!INCLUDE [apply-to-hybrid-cert-trust](includes/apply-to-hybrid-cert-trust.md)]

The Windows Hello for Business certificate-based deployments use AD FS as the certificate registration authority (CRA).
The CRA is responsible for issuing and revoking certificates to users. Once the registration authority verifies the certificate request, it signs the certificate request using its enrollment agent certificate and sends it to the certificate authority.\
The CRA enrolls for an *enrollment agent certificate*, and the Windows Hello for Business *authentication certificate template* is configured to only issue certificates to requests signed with an enrollment agent certificate.

> [!NOTE]
> In order for AD FS to verify user certificate requests for Windows Hello for Business, it needs to be able to access the `https://enterpriseregistration.windows.net` endpoint.

## Configure the certificate registration authority

Sign-in the AD FS server with *domain administrator* equivalent credentials.

Open a **Windows PowerShell** prompt and type the following command:

```PowerShell
Set-AdfsCertificateAuthority -EnrollmentAgent -EnrollmentAgentCertificateTemplate WHFBEnrollmentAgent -WindowsHelloCertificateTemplate WHFBAuthentication -WindowsHelloCertificateProxyEnabled $true
```

>[!NOTE]
> If you gave your Windows Hello for Business Enrollment Agent and Windows Hello for Business Authentication certificate templates different names, then replace *WHFBEnrollmentAgent* and *WHFBAuthentication* in the above command with the name of your certificate templates. It's important that you use the template name rather than the template display name.  You can view the template name on the **General** tab of the certificate template by using the **Certificate Template** management console (certtmpl.msc). Or, you can view the template name by using the `Get-CATemplate` PowerShell cmdlet on a CA.

## Enrollment agent certificate enrollment

AD FS performs its own certificate lifecycle management. Once the registration authority is configured with the proper certificate template, the AD FS server attempts to enroll the certificate on the first certificate request or when the service first starts.

Approximately 60 days prior to enrollment agent certificate's expiration, the AD FS service attempts to renew the certificate until it's successful. If the certificate fails to renew, and the certificate expires, the AD FS server requests a new enrollment agent certificate. You can view the AD FS event logs to determine the status of the enrollment agent certificate.

### Group Memberships for the AD FS service account

The AD FS service account must be member of the security group targeted by the authentication certificate template autoenrollment (for example, *Window Hello for Business Users*). The security group provides the AD FS service with the permissions needed to enroll a Windows Hello for Business authentication certificate on behalf of the provisioning user.

> [!TIP]
> The adfssvc account is the AD FS service account.

Sign-in a domain controller or management workstation with _Domain Admin_ equivalent credentials.

1. Open **Active Directory Users and Computers**
1. Search for the security group targeted by the authentication certificate template autoenrollment (for example, *Window Hello for Business Users*)
1. Select the **Members** tab and select **Add**
1. In the **Enter the object names to select** text box, type **adfssvc** or substitute the name of the AD FS service account in your AD FS deployment > **OK**
1. Select **OK** to return to **Active Directory Users and Computers**
1. Restart the AD FS server

> [!NOTE]
> For AD FS 2019 and later in a certificate trust model, a known PRT issue exists. You may encounter this error in AD FS Admin event logs: Received invalid Oauth request. The client 'NAME' is forbidden to access the resource with scope 'ugs'. For more information about the isse and its resolution, see [Certificate trust provisioning with AD FS broken on windows server 2019](../hello-deployment-issues.md#certificate-trust-provisioning-with-ad-fs-broken-on-windows-server-2019).

## Section review and next steps

Before moving to the next section, ensure the following steps are complete:

> [!div class="checklist"]
> - Configure the certificate registration authority
> - Update group memberships for the AD FS service account

> [!div class="nextstepaction"]
> [Next: configure policy settings >](hybrid-cert-trust-enroll.md)
