---
title: Deploy certificates to cloud Kerberos trust and key trust users to enable RDP
description: Learn how to deploy certificates to a cloud Kerberos trust and key trust user to enable remote desktop with supplied credentials
ms.prod: windows-client
author: paolomatarazzo
ms.author: paoloma
manager: aaroncz
ms.reviewer: erikdau
ms.collection:
  - M365-identity-device-management
  - ContentEngagementFY23
ms.topic: how-to
localizationpriority: medium
ms.date: 11/15/2022
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10 and later</a>
ms.technology: itpro-security
---

# Deploy certificates to cloud Kerberos trust and key trust users for RDP authentication

This document describes Windows Hello for Business functionalities or scenarios that apply to:\
✅ **Deployment type:** [hybrid](hello-how-it-works-technology.md#hybrid-deployment)\
✅ **Trust type:** [cloud Kerberos trust](hello-hybrid-cloud-kerberos-trust.md), [ key trust](hello-how-it-works-technology.md#key-trust)\
✅ **Device registration type:** [Azure AD join](hello-how-it-works-technology.md#azure-active-directory-join), [Hybrid Azure AD join](hello-how-it-works-technology.md#hybrid-azure-ad-join)

<br>

---

Windows Hello for Business supports using a certificate as the supplied credential when establishing a remote desktop connection to a server or other device. This document discusses three approaches for *cloud Kerberos trust* and *key trust* deployments, where authentication certificates can be deployed to an existing Windows Hello for Business user:

- Deploy certificates to hybrid joined devices using an on-premises Active Directory certificate enrollment policy
- Deploy certificates to hybrid or Azure AD-joined devices using Simple Certificate Enrollment Protocol (SCEP) and Intune
- Work with non-Microsoft enterprise certificate authorities

## Deploy certificates to a hybrid joined devices using an on-premises Active Directory Certificate enrollment policy

To deploy certificates using an on-premises Active Directory Certificate Services enrollment policy, you must first create a certificate template and then deploy certificates based on the template.

Expand the following sections to learn more about the process.

<br>
<details>
<summary><b>Create a Windows Hello for Business certificate template</b></summary>

Follow these steps to create a certificate template:

1. Sign in to your issuing certificate authority (CA) and open *Server Manager*
1. Select **Tools > Certification Authority**. The Certification Authority Microsoft Management Console (MMC) opens
1. In the MMC, expand the CA name and right-click **Certificate Templates > Manage**
1. The Certificate Templates console opens. All of the certificate templates are displayed in the details pane
1. Right-click the **Smartcard Logon** template and select **Duplicate Template**

    ![Duplicating Smartcard Template.](images/rdpcert/duplicatetemplate.png)

1. On the **Compatibility** tab:
    1. Clear the **Show resulting changes** check box
    1. Select **Windows Server 2012 or Windows Server 2012 R2** from the Certification Authority list
    1. Select **Windows Server 2012 or Windows Server 2012 R2** from the Certification Recipient list
1. On the **General** tab:
    1. Specify a Template display name, for example *WHfB Certificate Authentication*
    1. Set the validity period to the desired value
    1. Take note of the Template name for later, which should be the same as the Template display name minus spaces (**WHfBCertificateAuthentication** in this example)
1. On the **Extensions** tab, verify the **Application Policies** extension includes **Smart Card Logon**
1. On the **Subject Name** tab:
    1. Select the **Build from this Active Directory** information button if it is not already selected
    1. Select **Fully distinguished name** from the **Subject name format** list if Fully distinguished name is not already selected
    1. Select the **User Principal Name (UPN)** check box under **Include this information in alternative subject name**
1. On the **Request Handling** tab:
    1. Set the Purpose to **Signature and smartcard logon** and select **Yes** when prompted to change the certificate purpose
    1. Select the **Renew with same key** check box
    1. Select **Prompt the user during enrollment**
1. On the **Cryptography** tab:
    1. Set the Provider Category to **Key Storage Provider**
    1. Set the Algorithm name to **RSA**
    1. Set the minimum key size to **2048**
    1. Select **Requests must use one of the following providers**
    1. Select **Microsoft Software Key Storage Provider**
    1. Set the Request hash to **SHA256**
1. On the **Security** tab, add the security group that you want to give **Enroll** access to. For example, if you want to give access to all users, select the **Authenticated** users group, and then select Enroll permissions for them
1. Select **OK** to finalize your changes and create the new template. Your new template should now appear in the list of Certificate Templates
1. Close the Certificate Templates console

1. Open an elevated command prompt and change to a temporary working directory
1. Execute the following command, replacing `<TemplateName>` with the Template name you took note of earlier in step 7c
    `certutil -dstemplate <TemplateName> > <TemplateName.txt>`
1. Open the text file created by the command above.
    1. Delete the last line of the output from the file that reads `CertUtil: -dsTemplate command completed successfully.`
    1. Modify the line that reads `pKIDefaultCSPs = "1,Microsoft Software Key Storage Provider"` to `pKIDefaultCSPs = "1,Microsoft Passport Key Storage Provider"`
1. Save the text file.
1. Update the certificate template by executing the following command:
    `certutil -dsaddtemplate \<TemplateName\>.txt`
1. In the Certificate Authority console, right-click **Certificate Templates**, select **New > Certificate Template to Issue**

    ![Selecting Certificate Template to Issue.](images/rdpcert/certificatetemplatetoissue.png)

1. From the list of templates, select the template you previously created (**WHFB Certificate Authentication**) and select **OK**. It can take some time for the template to replicate to all servers and become available in this list.
1. After the template replicates, in the MMC, right-click in the Certification Authority list, select **All Tasks > Stop Service**. Right-click the name of the CA again, select **All Tasks > Start Service**

</details>

<br>
<details>
<summary><b>Request a Certificate</b></summary>

1. Ensure the hybrid Azure AD joined device has network line of sight to Active Directory domain controllers and the issuing certificate authority. 
1. Start the **Certificates – Current User** console (%windir%\system32\certmgr.msc).
1. In the left pane of the MMC, right-click **Personal**, click **All Tasks**, and then click **Request New Certificate…**

    ![Request a new certificate.](images/rdpcert/requestnewcertificate.png)

1. On the Certificate Enrollment screen, click **Next**.
1. Under Select Certificate Enrollment Policy, ensure **Active Directory Enrollment Policy** is selected and then click **Next**.
1. Under Request Certificates, click the check-box next to the certificate template you created in the previous section (WHfB Certificate Authentication) and then click **Enroll**.
1. After a successful certificate request, click Finish on the Certificate Installation Results screen

</details>

## Deploying a certificate to Hybrid or Azure AD Joined Devices using Simple Certificate Enrollment Protocol (SCEP) via Intune

Deploying a certificate to Azure AD Joined Devices may be achieved with the Simple Certificate Enrollment Protocol (SCEP) via Intune. For guidance deploying the required infrastructure, refer to [Configure infrastructure to support SCEP certificate profiles with Microsoft Intune](/mem/intune/protect/certificates-scep-configure).

Next you should deploy the root CA certificate (and any other intermediate certificate authority certificates) to Azure AD Joined Devices using a Trusted root certificate profile with Intune. For guidance, refer to [Create trusted certificate profiles in Microsoft Intune](/mem/intune/protect/certificates-trusted-root).

Once these requirements have been met, a new device configuration profile may be configured from Intune that provisions a certificate for the user of the device. Proceed as follows:

1. Sign in to the Microsoft [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

1. Navigate to Devices \> Configuration Profiles \> Create profile.

1. Enter the following properties:
    1. For Platform, select **Windows 10 and later**.
    1. For Profile, select **SCEP Certificate**.
    1. Click **Create**.

1. In **Basics**, enter the following parameters:
    1. **Name**: Enter a descriptive name for the profile. Name your profiles so you can easily identify them later. For example, a good profile name is SCEP profile for entire company.
    1. **Description**: Enter a description for the profile. This setting is optional, but recommended.
    1. Select **Next**.

1. In the **Configuration settings**, complete the following:
    1. For Certificate Type, choose **User**.
    1. For Subject name format, set it to **CN={{UserPrincipalName}}**.
    1. Under Subject alternative name, select **User principal name (UPN)** from the drop-down menu and set the value to **CN={{UserPrincipalName}}**.
    1. For Certificate validity period, set a value of your choosing.
    1. For Key storage provider (KSP), choose **Enroll to Windows Hello for Business, otherwise fail (Windows 10 and later)**.
    1. For Key usage, choose **Digital Signature**.
    1. For Key size (bits), choose **2048**.
    1. For Hash algorithm, choose **SHA-2**.
    1. Under Root Certificate, click **+Root Certificate** and select the trusted certificate profile you created earlier for the Root CA Certificate.
    1. Under Extended key usage, add the following:

        | Name | Object Identifier | Predefined Values |
        |------|-------------------|-------------------|
        | Smart Card Logon | 1.3.6.1.4.1.311.20.2.2 | Smart Card Logon |
        | Client Authentication | 1.3.6.1.5.5.7.3.2 | Client Authentication |

    1. For Renewal threshold (%), set a value of your choosing.
    1. For SCEP Server URLs, provide the public endpoint that you configured during the deployment of your SCEP infrastructure.
    1. Click **Next**
1. In Assignments, target the devices or users who should receive a certificate and click **Next**

1. In Applicability Rules, provide additional issuance restrictions if required and click **Next**

1. In Review + create, click **Create**

Once the configuration profile has been created, targeted clients will receive the profile from Intune on their next refresh cycle. You should find a new certificate in the user store. To validate the certificate is present, do the following steps:

1. Open the Certificates - Current User console (%windir%\system32\certmgr.msc)

1. In the left pane of the MMC, expand **Personal** and select **Certificates**

1. In the right-hand pane of the MMC, check for the new certificate

> [!NOTE]
> This infrastructure may also deploy the same certificates to co-managed or modern-managed Hybrid Azure Active Directory-Joined devices using Intune Policies.

## Using non-Microsoft Enterprise Certificate Authorities

If you are using a Public Key Infrastructure that uses non-Microsoft services, the certificate templates published to the on-premises Active Directory may not be available. For guidance with integration of Intune/SCEP with non-Microsoft PKI deployments, refer to [Use third-party certification authorities (CA) with SCEP in Microsoft Intune](/mem/intune/protect/certificate-authority-add-scep-overview).

As an alternative to using SCEP or if none of the previously covered solutions will work in your environment, you can manually generate Certificate Signing Requests (CSR) for submission to your PKI. To assist with this approach, you can use the [Generate-CertificateRequest](https://www.powershellgallery.com/packages/Generate-CertificateRequest) PowerShell commandlet.

The Generate-CertificateRequest commandlet will generate an .inf file for a pre-existing Windows Hello for Business key. The .inf can be used to generate a certificate request manually using certreq.exe. The commandlet will also generate a .req file, which can be submitted to your PKI for a certificate.

## RDP Sign-in with Windows Hello for Business Certificate Authentication

After adding the certificate using an approach from any of the previous sections, you should be able to RDP to any Windows device or server in the same Forest as the user’s on-premises Active Directory account, provided the PKI certificate chain for the issuing certificate authority is deployed to that target server.

1. Open the Remote Desktop Client (%windir%\system32\mstsc.exe) on the Hybrid Azure Active Directory-Joined client where the authentication certificate has been deployed.
1. Attempt an RDP session to a target server.
1. Use the certificate credential protected by your Windows Hello for Business gesture.
